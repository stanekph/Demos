#ifndef __MOCKS_H
#define __MOCKS_H

extern void cppth_dr_pragma_start(void);

#pragma qas cantata ci instr all off
#pragma qas cantata ci instr all hide
#pragma qas cantata sm access off
#pragma qas cantata sm wrap off
#pragma qas cantata sm wrappable off

extern void cppth_log_script_error (const char*);

static void cppth_resolver_struct_log_script_error(const char * cr_name_pc) {
   cppth_log_script_error ("An automatically generated stub has been called:");
   cppth_log_script_error (cr_name_pc);
}

int enable_watchdog(int param){
   cppth_resolver_struct_log_script_error("   enable_watchdog(int)");
   return 0;
}

#pragma qas cantata ci instr all default
#pragma qas cantata sm access default
#pragma qas cantata sm wrap default
#pragma qas cantata sm wrappable default

extern void cppth_dr_pragma_end(void);

#endif /* __MOCKS_H */
