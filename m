Return-Path: <devicetree+bounces-66123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C14D58C1543
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 21:16:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30AAE1F22C17
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 19:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90F427F7C7;
	Thu,  9 May 2024 19:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="p6BR47fZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009947EEE7
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 19:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715282196; cv=none; b=JCyEyXfEPPi0QiiU5IBWt1jzG06pqPbTCuV6LdGyoi0EOYVpQM6gPA01tR5PTGOZ3GUdR5JuDPwVbnDWG2wbSjhi0nRHzC2ruMYh5/viWGJTBdg1resIy4r7fbWuW8uCt/wQNU3sh4N5tA2mVvO46FBsj8yh01fO4bRjeRdG23w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715282196; c=relaxed/simple;
	bh=uCzgFU7wXjy37E1QSOA4C4Ah2huDwMghRUAkC14wOZE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XuDlZiBujaoTLVU7uieICn6K13X3eV6+E+pr9DpZYBNgm8BvXG7qeZXZEf8AfRWmtyvo39c9e8Z38v80xB84bqbmWG3u792ujcF6JdB8eZy3VrCmlLNNDniBn0OmxYGLDJZs1mobPYp1IE4ETHAuyHZWNAThe/rXwKoYgN5Y4io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=p6BR47fZ; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1eeb1a4c10aso8342855ad.3
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 12:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715282194; x=1715886994; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WRd0Lx0MMpPCEzZHJ+gP+MBiwgoDsG5pFDJFXbEvS5E=;
        b=p6BR47fZUkBd+uEdgLV91HLP/3f8tz9FUAZcMX1txl2WZCfGJTdp+7ji7eQ0HJsIou
         7oDP3spbl6HXwjHBby8bB/D4x6YAMaqRKzXJBlD4nR67TSGhm7SCE647B6SSEUJ8cTnW
         fXcRNJvRz0Uplw5AzETVF11LV3u0ZPVCdmAn5TnXS5lS4B6G/sQxncQ3DUCtaLGdH6hY
         0/wmfs5EFIvkcZ8CMM8N9L9EDURm/c51QsQOAne3xTpfu1cKo7jKfC/FSo2cxUBkurQZ
         kqrKu2kLpo8YPfyXBwxJOGyMy0Bnu8hLZtJ2xHu1VEHHRIaNOdIHaPeK381vB82/GWxY
         tZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715282194; x=1715886994;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WRd0Lx0MMpPCEzZHJ+gP+MBiwgoDsG5pFDJFXbEvS5E=;
        b=YmMwsE7hrr66LfKwL42nWlw4Erq/d3NMRxJEBgpK56cEk15C+osEkfx9iFUEp87G+W
         55KTtaXHno5b7kFe67Rtzh/sph/UulOl5bYgy22cWWmPzh8hRQdYlHSE+vRTnq98kpw3
         y6GvZdW49ckJNvuCqdYFuKRO1r6ji+CIbVRtShpNHas0wknK5k8Veto0SH6pPHSwL4kq
         p5AKWCg53dbYwmzxUdsvGO0yoAvOGPk/CtoYDObCezuFB1haJ5aq6y8nzl3foC2pkol9
         5n0xcIZAiJajInhEurSjHStLiHqF2vtHs6ygyBlYB1S1u6pgypvMJPnlw8Y/rtnz6p2X
         OqAw==
X-Forwarded-Encrypted: i=1; AJvYcCUDxX7mLs+u6hMgrZwq2r1kSjuXKFU0KVnfpCh5NCSUljPWulZ8XKYxSvxVjOL69/eCfMLtvZVdBOOa2AvW3gWp3LI4YB9plUKnkQ==
X-Gm-Message-State: AOJu0Yw8iqwzx2fAeTNQw0Mnxks2Q+Dgd3i7EbmlIdxcT9ZluSNQtXwU
	Ap29QocUJoyPcMrgwjuWb2xCQOYKUotXuKiZqcIOoMZ/jsPeEqBRQOOqEkRKY2M=
X-Google-Smtp-Source: AGHT+IGVLZ1hk7FPNudPJKafIIo2jYjbH8+I3TnNil7Sy8OT8DfcbS5dMB3RJTTTCW5vQbF2H1ruBQ==
X-Received: by 2002:a17:903:191:b0:1dc:de65:623b with SMTP id d9443c01a7336-1ef4404b8cdmr7695675ad.60.1715282194292;
        Thu, 09 May 2024 12:16:34 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0c13692asm17812885ad.252.2024.05.09.12.16.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 12:16:33 -0700 (PDT)
Date: Thu, 9 May 2024 12:16:29 -0700
From: Deepak Gupta <debug@rivosinc.com>
To: Charlie Jenkins <charlie@rivosinc.com>
Cc: paul.walmsley@sifive.com, rick.p.edgecombe@intel.com,
	broonie@kernel.org, Szabolcs.Nagy@arm.com, kito.cheng@sifive.com,
	keescook@chromium.org, ajones@ventanamicro.com,
	conor.dooley@microchip.com, cleger@rivosinc.com,
	atishp@atishpatra.org, alex@ghiti.fr, bjorn@rivosinc.com,
	alexghiti@rivosinc.com, samuel.holland@sifive.com, conor@kernel.org,
	linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mm@kvack.org, linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org, corbet@lwn.net, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, oleg@redhat.com,
	akpm@linux-foundation.org, arnd@arndb.de, ebiederm@xmission.com,
	Liam.Howlett@oracle.com, vbabka@suse.cz, lstoakes@gmail.com,
	shuah@kernel.org, brauner@kernel.org, andy.chiu@sifive.com,
	jerry.shih@sifive.com, hankuan.chen@sifive.com,
	greentime.hu@sifive.com, evan@rivosinc.com, xiao.w.wang@intel.com,
	apatel@ventanamicro.com, mchitale@ventanamicro.com,
	dbarboza@ventanamicro.com, sameo@rivosinc.com,
	shikemeng@huaweicloud.com, willy@infradead.org,
	vincent.chen@sifive.com, guoren@kernel.org, samitolvanen@google.com,
	songshuaishuai@tinylab.org, gerg@kernel.org, heiko@sntech.de,
	bhe@redhat.com, jeeheng.sia@starfivetech.com, cyy@cyyself.name,
	maskray@google.com, ancientmodern4@gmail.com,
	mathis.salmen@matsal.de, cuiyunhui@bytedance.com,
	bgray@linux.ibm.com, mpe@ellerman.id.au, baruch@tkos.co.il,
	alx@kernel.org, david@redhat.com, catalin.marinas@arm.com,
	revest@chromium.org, josh@joshtriplett.org, shr@devkernel.io,
	deller@gmx.de, omosnace@redhat.com, ojeda@kernel.org,
	jhubbard@nvidia.com
Subject: Re: [PATCH v3 29/29] kselftest/riscv: kselftest for user mode cfi
Message-ID: <Zj0hDT1EZmOaEkCj@debug.ba.rivosinc.com>
References: <20240403234054.2020347-1-debug@rivosinc.com>
 <20240403234054.2020347-30-debug@rivosinc.com>
 <Zj0UGweLoRD1U9Po@ghost>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <Zj0UGweLoRD1U9Po@ghost>

On Thu, May 09, 2024 at 11:21:15AM -0700, Charlie Jenkins wrote:
>On Wed, Apr 03, 2024 at 04:35:17PM -0700, Deepak Gupta wrote:
>> +
>> +int main(int argc, char *argv[])
>> +{
>> +	int ret = 0;
>> +	unsigned long lpad_status = 0, ss_status = 0;
>> +
>> +	ksft_print_header();
>> +
>> +	ksft_set_plan(RISCV_CFI_SELFTEST_COUNT);
>> +
>> +	ksft_print_msg("starting risc-v tests\n");
>> +
>> +	/*
>> +	 * Landing pad test. Not a lot of kernel changes to support landing
>> +	 * pad for user mode except lighting up a bit in senvcfg via a prctl
>> +	 * Enable landing pad through out the execution of test binary
>> +	 */
>> +	ret = my_syscall5(__NR_prctl, PR_GET_INDIR_BR_LP_STATUS, &lpad_status, 0, 0, 0);
>
>There is an assumption here that the libc supports setting
>INDIR_BR_LP_STATUS but does not support the standard prctl interface
>defined in <sys/prctl.h>. my_syscall5() is defined to fill in gaps in
>the libc, so this test case should also set the status manually rather
>than relying on the libc.
>
>I don't think it's necessary to define my_syscall5() since every libc
>should have a prctl() definition. However, these CFI prctls are very new
>and glibc does not yet support (correct me if I am wrong) it so these
>prctls should be enabled by the test cases.

In one of my previous patches, it was setting landing pad and shadow stack enabling
directly via handcrafted prctl macro. I changed it to check for status for following reasons

- If this binary is compiled with landing pad and shadow stack option then toolchain being used
   already has libc with shadow stack and landing pad enabling

- Currently upstream glibc toolchain dont have support but libc with toolchain has the support.

In case of shadow stack enabling, macro is needed and `prctl` function can't be used.
Because you enter `prctl` function with no shadow stack but exit with shadow stack and will lead to
fault in its epilog.

Due to all these reasons, kselftests have to be compiled with toolchain with cfi codegen and thus libc
should have support to light them up. Here tests only checks if they are already lit up, If not it fails.

Although you're spot on one thing here, since this test is assuming libc already lit-up landing pad and
shadow stack. It doesn't need macro here for status check of feature and can simply use `prctl` syscall
interface.

>
>- Charlie
>
>> +	if (ret)

