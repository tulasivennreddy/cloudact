trigger student on Account (before insert,before update) {
student st = new student();
st.getstudentinfo();
}