import 'models/Contacts.dart';
import 'models/PhoneBook.dart';

void main() {
  List<Contacts> contact = <Contacts>[];

  contact.add(Contacts('Junhui', 'Wen', 09610444444, 'Shenzhen'));
  contact.add(Contacts('Soonyoung', 'Kwon', 09615555555, 'Namyangju'));
  contact.add(Contacts('Wonwoo', 'Jeon', 09717666666, 'Changwon'));

  PhoneBook book = PhoneBook(contact);
  book.display_contacts();

  /* TEST CASE: 2 */
  book.add_contact();
  book.display_contacts();

  /* TEST CASE: 3 */
  book.remove_contact(09610444444);
  book.display_contacts();

  /* TEST CASE: 4 */
  book.search_contact(09717666666);
}
