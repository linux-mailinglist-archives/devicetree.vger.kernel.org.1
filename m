Return-Path: <devicetree+bounces-87406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 732C8939651
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 00:14:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E406282124
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 22:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6D2B44C9B;
	Mon, 22 Jul 2024 22:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="q5QD+5Sm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E7945025
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 22:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721686470; cv=none; b=JCmH+8JAu8AsdqC3jFt3nBtYPHNWYtgHSy69ISfC1fgqigD2C42LVeQa9plQcg6S/h1nFclD4LBesBQjHEXiqnNRiTgFTom9n+GsMvzmXMFlDdAfMIFuMooLx1Qj2p13DorSYQfmp6NbtBj1WT/pjS4jZqQ71uDjPRDx0PMgtP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721686470; c=relaxed/simple;
	bh=dhQAkBGjBezAxdphX9peoUeOYqVnNFKTd3jL3rug1no=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=thXIRVBGVSJHa/jgvkuxD2LS9eNxstRPTsbAl1sR3BK3jCyv/NeI8BAj4du23G4xNlbolyaZU4mEnU9ZHtzUR0Nx2cg4k02OORtJi+VUFxGbyGZgQpyAb7tUEOa066TCwR+43ihyLU18xyqEmkOQ/yqBMl2MuXcxKBU1Gs3lx1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=q5QD+5Sm; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2cb585375f6so2825682a91.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 15:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721686468; x=1722291268; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rnI7oybV/HUbAbtJY8v1K+OhuBn76sevmv9uupEuIgE=;
        b=q5QD+5SmrEf8+4qizPpmS7qKwCaHQXkwj3GTip7raoiKgrZmnxZ2275UrN5q1QMHkl
         pMJNNwHugx/qfswTeB0mYKPXD9ziSx7i1ZV8pyKFXg0r5YQgjBXpBplXowAD7CQ6wy12
         2t7/P6XR8VejSmy1yeDkn/njcm37CRI2hDnSkgjHOVaI+T1t9BV7/YeSHuLy105ImSm4
         1da39fKTudOjBxt3MceLHhtDuWiuC3FtyJvsNZRMVZSJP6Upj8rmEeiAybNg4mkmpgFr
         yjob8FfU5GWfU6QyKwJEr0YRAapQmjXTRti91+r/ZHjO4Wtb9syovFPmGqIFqHO+eVih
         S/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721686468; x=1722291268;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rnI7oybV/HUbAbtJY8v1K+OhuBn76sevmv9uupEuIgE=;
        b=S+Ceuht4SMvpaRvTTCYTZleHaqH6scE/TeDIsSQyxRFXNkwpSCEc8QXO2YnwkbYCF8
         tt9ibaILM10rFDInlSaksEIpQuyeOHiOiB/w6lsS7nP9zlgbJBPuE9Ioj2l5x2d0Hoav
         cviIlMTolWmOFNSk3aFTjDH/QK0EezTgLGSPACQxmf0Zj4AMFNIXWIgseUGMOzpPHlID
         NEPUkg6ACSY6sQH33RGAJAvI0aR3B95bmmUYjbn8Fv/TZh7Pdmo+PlkOb0bP2Lmzp+yu
         CL3a4aWZniZgLM+0AJ++AvQrDlVnHDdU63l5luAYEbYM24laEV3wz2tXmXvmvXkOHF95
         nBHA==
X-Forwarded-Encrypted: i=1; AJvYcCUSThzyrfeSQO01/xPMKEd+RMlVI7EptzVsbio43ZNLcMQw/0u0HDOnXWCMQ/1DK3NR0/cwYuQI1UKK16HxaPD8qVMlbLmloDrtLA==
X-Gm-Message-State: AOJu0Yx4xWCoGzA4Om0dznbCudEMCmjRUKy8mfkK/lG1YM9pMmxtSPOR
	Gbb/5m30mp/Ugt0LrV6DLZyNqcuX0jt+N3XMhda1iNjKY5u50fb+M6xs0pQ3ZYE=
X-Google-Smtp-Source: AGHT+IGbj7DZDu9xdtM7I7b4ely54D1XMYZd7nuHar0IVRmTLnQwyoFRYH9nBIDP0Zw2wpAFGDB+eA==
X-Received: by 2002:a17:90a:d584:b0:2c9:8189:9cc1 with SMTP id 98e67ed59e1d1-2cd85d19266mr971305a91.21.1721686468300;
        Mon, 22 Jul 2024 15:14:28 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f31bb49sm60018365ad.131.2024.07.22.15.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 15:14:27 -0700 (PDT)
Date: Mon, 22 Jul 2024 15:14:24 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>,
	Andy Chiu <andy.chiu@sifive.com>,
	Jessica Clarke <jrtc27@jrtc27.com>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-doc@vger.kernel.org,
	linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v5 12/13] selftests: riscv: Fix vector tests
Message-ID: <Zp7ZwDzpFt7iJ6iT@ghost>
References: <20240719-xtheadvector-v5-0-4b485fc7d55f@rivosinc.com>
 <20240719-xtheadvector-v5-12-4b485fc7d55f@rivosinc.com>
 <20240722-0940cd64c0d8bb03f2427022@orel>
 <Zp7LxAWkDQMQhVLq@ghost>
 <20240722-86a2b1fa474d71c4dbc557c7@orel>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240722-86a2b1fa474d71c4dbc557c7@orel>

On Mon, Jul 22, 2024 at 05:08:22PM -0500, Andrew Jones wrote:
> On Mon, Jul 22, 2024 at 02:14:44PM GMT, Charlie Jenkins wrote:
> > On Mon, Jul 22, 2024 at 01:47:29PM -0500, Andrew Jones wrote:
> > > On Fri, Jul 19, 2024 at 09:19:07AM GMT, Charlie Jenkins wrote:
> > > > Overhaul the riscv vector tests to use kselftest_harness to help the
> > > > test cases correctly report the results and decouple the individual test
> > > > cases from each other. With this refactoring, only run the test cases is
> > > > vector is reported and properly report the test case as skipped
> > > > otherwise. The v_initval_nolibc test was previously not checking if
> > > > vector was supported and used a function (malloc) which invalidates
> > > > the state of the vector registers.
> > > > 
> > > > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > > > ---
> > > >  tools/testing/selftests/riscv/abi/ptrace           | Bin 0 -> 759368 bytes
> > > >  tools/testing/selftests/riscv/vector/.gitignore    |   3 +-
> > > >  tools/testing/selftests/riscv/vector/Makefile      |  17 +-
> > > >  .../selftests/riscv/vector/v_exec_initval_nolibc.c |  84 +++++++
> > > >  tools/testing/selftests/riscv/vector/v_helpers.c   |  56 +++++
> > > >  tools/testing/selftests/riscv/vector/v_helpers.h   |   5 +
> > > >  tools/testing/selftests/riscv/vector/v_initval.c   |  16 ++
> > > >  .../selftests/riscv/vector/v_initval_nolibc.c      |  68 ------
> > > >  .../testing/selftests/riscv/vector/vstate_prctl.c  | 266 ++++++++++++---------
> > > >  9 files changed, 324 insertions(+), 191 deletions(-)
> > > > 
> > > > diff --git a/tools/testing/selftests/riscv/abi/ptrace b/tools/testing/selftests/riscv/abi/ptrace
> > > > new file mode 100755
> > > > index 000000000000..2b03e77b4dcf
> > > > Binary files /dev/null and b/tools/testing/selftests/riscv/abi/ptrace differ
> > > > diff --git a/tools/testing/selftests/riscv/vector/.gitignore b/tools/testing/selftests/riscv/vector/.gitignore
> > > > index 9ae7964491d5..7d9c87cd0649 100644
> > > > --- a/tools/testing/selftests/riscv/vector/.gitignore
> > > > +++ b/tools/testing/selftests/riscv/vector/.gitignore
> > > > @@ -1,3 +1,4 @@
> > > >  vstate_exec_nolibc
> > > >  vstate_prctl
> > > > -v_initval_nolibc
> > > > +v_initval
> > > > +v_exec_initval_nolibc
> > > > diff --git a/tools/testing/selftests/riscv/vector/Makefile b/tools/testing/selftests/riscv/vector/Makefile
> > > > index bfff0ff4f3be..995746359477 100644
> > > > --- a/tools/testing/selftests/riscv/vector/Makefile
> > > > +++ b/tools/testing/selftests/riscv/vector/Makefile
> > > > @@ -2,18 +2,27 @@
> > > >  # Copyright (C) 2021 ARM Limited
> > > >  # Originally tools/testing/arm64/abi/Makefile
> > > >  
> > > > -TEST_GEN_PROGS := vstate_prctl v_initval_nolibc
> > > > -TEST_GEN_PROGS_EXTENDED := vstate_exec_nolibc
> > > > +TEST_GEN_PROGS := v_initval vstate_prctl
> > > > +TEST_GEN_PROGS_EXTENDED := vstate_exec_nolibc v_exec_initval_nolibc sys_hwprobe.o v_helpers.o
> > > >  
> > > >  include ../../lib.mk
> > > >  
> > > > -$(OUTPUT)/vstate_prctl: vstate_prctl.c ../hwprobe/sys_hwprobe.S
> > > > +$(OUTPUT)/sys_hwprobe.o: ../hwprobe/sys_hwprobe.S
> > > > +	$(CC) -static -c -o$@ $(CFLAGS) $^
> > > > +
> > > > +$(OUTPUT)/v_helpers.o: v_helpers.c
> > > > +	$(CC) -static -c -o$@ $(CFLAGS) $^
> > > > +
> > > > +$(OUTPUT)/vstate_prctl: vstate_prctl.c $(OUTPUT)/sys_hwprobe.o $(OUTPUT)/v_helpers.o
> > > >  	$(CC) -static -o$@ $(CFLAGS) $(LDFLAGS) $^
> > > >  
> > > >  $(OUTPUT)/vstate_exec_nolibc: vstate_exec_nolibc.c
> > > >  	$(CC) -nostdlib -static -include ../../../../include/nolibc/nolibc.h \
> > > >  		-Wall $(CFLAGS) $(LDFLAGS) $^ -o $@ -lgcc
> > > >  
> > > > -$(OUTPUT)/v_initval_nolibc: v_initval_nolibc.c
> > > > +$(OUTPUT)/v_initval: v_initval.c $(OUTPUT)/sys_hwprobe.o $(OUTPUT)/v_helpers.o
> > > > +	$(CC) -static -o$@ $(CFLAGS) $(LDFLAGS) $^
> > > > +
> > > > +$(OUTPUT)/v_exec_initval_nolibc: v_exec_initval_nolibc.c
> > > >  	$(CC) -nostdlib -static -include ../../../../include/nolibc/nolibc.h \
> > > >  		-Wall $(CFLAGS) $(LDFLAGS) $^ -o $@ -lgcc
> > > > diff --git a/tools/testing/selftests/riscv/vector/v_exec_initval_nolibc.c b/tools/testing/selftests/riscv/vector/v_exec_initval_nolibc.c
> > > > new file mode 100644
> > > > index 000000000000..74b13806baf0
> > > > --- /dev/null
> > > > +++ b/tools/testing/selftests/riscv/vector/v_exec_initval_nolibc.c
> > > > @@ -0,0 +1,84 @@
> > > > +// SPDX-License-Identifier: GPL-2.0-only
> > > > +/*
> > > > + * Get values of vector registers as soon as the program starts to test if
> > > > + * is properly cleaning the values before starting a new program. Vector
> > > > + * registers are caller saved, so no function calls may happen before reading
> > > > + * the values. To further ensure consistency, this file is compiled without
> > > > + * libc and without auto-vectorization.
> > > > + *
> > > > + * To be "clean" all values must be either all ones or all zeroes.
> > > > + */
> > > > +
> > > > +#define __stringify_1(x...)	#x
> > > > +#define __stringify(x...)	__stringify_1(x)
> > > > +
> > > > +int main(int argc, char **argv)
> > > > +{
> > > > +	char prev_value = 0, value;
> > > > +	unsigned long vl;
> > > > +	int first = 1;
> > > > +
> > > > +	asm volatile (
> > > > +		".option push\n\t"
> > > > +		".option arch, +v\n\t"
> > > > +		"vsetvli	%[vl], x0, e8, m1, ta, ma\n\t"
> > > > +		".option pop\n\t"
> > > > +		: [vl] "=r" (vl)
> > > > +	);
> > > > +
> > > > +#define CHECK_VECTOR_REGISTER(register) ({					\
> > > > +	for (int i = 0; i < vl; i++) {						\
> > > > +		asm volatile (							\
> > > > +			".option push\n\t"					\
> > > > +			".option arch, +v\n\t"					\
> > > > +			"vmv.x.s %0, " __stringify(register) "\n\t"		\
> > > > +			"vsrl.vi " __stringify(register) ", " __stringify(register) ", 8\n\t" \
> > > > +			".option pop\n\t"					\
> > > > +			: "=r" (value));					\
> > > > +		if (first) {							\
> > > > +			first = 0;						\
> > > > +		} else if (value != prev_value || !(value == 0x00 || value == 0xff)) { \
> > > > +			printf("Register " __stringify(register) " values not clean! value: %u\n", value);	\
> > > > +			exit(-1);						\
> > > 
> > > I think we should ensure all tests in tools/testing/selftests/riscv/ use
> > > TAP output, exiting with ksft_finished(), or at least exit with 0 for
> > > success. For example, vstate_exec_nolibc exits with 2 for success since
> > > it exits with the return value of prctl(PR_RISCV_V_GET_CONTROL). And
> > > vstate_prctl.c exits with several different negative values, which means
> > > it'll exit with several different values around 255. To figure what went
> > > wrong, one will have to convert those exit codes to the original negative
> > > values in order to look them up. Having these types of inconsistent exit
> > > values complicates QA.
> > > 
> > > Thanks,
> > > drew
> > 
> > I do not follow. I am using the kselftest_harness
> > (tools/testing/selftests/kselftest_harness.h) that does output using the
> > TAP format. vstate_exec_nolibc is not a test in itself but is a helper.
> 
> Ah, this was my misunderstanding, as I'm used to all files with main()
> being independent tests and I only grepped exit codes. I'll have to look
> to see how this all fits together.
> 
> > The Makefile for the vector tests describes this as:
> > 
> > TEST_GEN_PROGS := v_initval vstate_prctl
> > 
> > If you run the riscv collection of tests with:
> > 
> > $ ./run_kselftest.sh --collection riscv
> 
> I'll look later, but I hope those tests can also be run standalone and
> still get TAP output.
> 
> Thanks,
> drew

Yes, running v_initval and vstate_prctl standalone does provide TAP
output.

- Charlie

> 
> > 
> > You will see that the only vector test cases are v_initval and
> > vstate_prctl, which both output as expected in TAP format.
> > 
> > I do see that I messed up the return type of the is_vector_supported()
> > function, I had meant to change that to a bool from an int since
> > RISCV_HWPROBE_EXT_ZVE32X is greater than 32 bits. I will send a new
> > version.
> > 
> > - Charlie
> > 

