Return-Path: <devicetree+bounces-82508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BCC924B8F
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 00:23:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 773731C2260F
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 22:23:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C0E51DA31C;
	Tue,  2 Jul 2024 22:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="rGzJiUgW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091061DA30C
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 22:22:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719958970; cv=none; b=L2UaZwuu90wL07W2LzbcCVQr1vCtJtmWrLxE53fIzX5OVr1n6EsRpd1dInQIUHFEfuAoanxOFphp0Cig2bPRHrA5yeR0qTdesYi5KcPlM1lzRTx4+4JTHqu9sKfprZf2p4uadboj8IxaMad3n5YmPti5qvZ6s7kE6xUvmMRmFEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719958970; c=relaxed/simple;
	bh=NHOWiWOwWkWjt43c2sZEwV67bQhm4bQuKR/fXOr1FYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b0mzDgkPHBMKCWPqBtx6/l9iHiiLyL4CguVCMSs0jzdz1IwU1YFkXOwtZ/nI/ljBF/gwa9yoO7Vn3HBIWmUHAmJJQGNueMMeyrTPwCJAjh6cZ8UXwWruSUrI5V8U+u5ClJCvm+k5Rg1HIjSoy+LSWoFIAAMfkGH0iWJ4NKS7Dco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=rGzJiUgW; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7082dd9bbf8so3492905b3a.1
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 15:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719958967; x=1720563767; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2HAreNgSKd2flbDmhZ9kzCgXWhr/5FjsTCmFlTvboqE=;
        b=rGzJiUgWmcbborbR8rbq3iBOf89vBv3y0fIil/UVC0mPXVHoYeqB009ZsXHsZRjwIj
         18JufHnzW0SPgnJCvafudPURzHW+hXsTvNxEekbgsmRnEW2wynOewuS5Kyfup1SCdWqG
         NEu4KP711XXsT0Woy1V8UBlzwZczZZOPAYGGG9BOHdtftPEf4RyRGzom1uBFpX7eQ6t3
         9k/oCjaNPaYtySwct7uctZenPd07FFruVDv5I/xHPzrmaPI5eXV4p8A6GuXhmsITeAB3
         SCxmikJmTK6K8bZbuqzmCIVoRCq5QBSvBaa/YQFK4uwIByi9Fn7aCeEbDKrsNRGIL7KG
         Fd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719958967; x=1720563767;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2HAreNgSKd2flbDmhZ9kzCgXWhr/5FjsTCmFlTvboqE=;
        b=K5b073tCsc8HHZWWbK8mi8LX5JlNWMEjcGWFJIvAE7FVZMLixvgRyP5kgiGAHAlZik
         T95hzfyQvIj+T8iGabGOwLiCqWRn/E35PQLRrWGHZFzcO5X2OY8uCCICMhDcqDCA/20O
         Fj3KtyXPUNFoddSGq7t1BYPpYNfd6VsmpNelhDTsdsTeTLW6Jzeer09u+OwqNhEMXFyi
         lCUaNx/fta/ODFRql0wb9JyfLwG8zudHfoFNvuv9Jj2yQ3qhR5rH+euFZS5fzrXa6G8R
         ZpyVBqbly+WJKwX9mpv7NeIM/49nEwF+TGJJJFcFB+rDLwmVv0+L6+DAUICT3ruk/gwT
         XEFQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+vIGtbdnlWUGECcG1PMh/x/TnsIj3VpGbWKqgFwteNMdr5cR/ddV985fGQGXnwJNXWKIMyBaAjSCruXEGWnYHK/PrDjMxEsNA8w==
X-Gm-Message-State: AOJu0YzDcZc6PcMWUTZ01BQ239m7gCjb7KrCp08GKBYWOOXznLlhqXuE
	Lz9wCYjMQjDPTJzlkW77Af1cPB2peKYFLlqGAiNxfOaApe0opv2QvYBzmeg4ua0=
X-Google-Smtp-Source: AGHT+IFv/UktdfqfVi4xgaaycbPb7pdL54C2mZHYwO0zrmNP80hR83Y1Fy2VM2Z6FDn1I046+MIzxQ==
X-Received: by 2002:a05:6a20:1586:b0:1be:cb97:a918 with SMTP id adf61e73a8af0-1bef610bf3dmr9638155637.29.1719958967187;
        Tue, 02 Jul 2024 15:22:47 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70803ecf97csm9053071b3a.127.2024.07.02.15.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 15:22:46 -0700 (PDT)
Date: Tue, 2 Jul 2024 15:22:43 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>
Cc: Conor Dooley <conor@kernel.org>, Jesse Taube <jesse@rivosinc.com>,
	linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Xiao Wang <xiao.w.wang@intel.com>, Andy Chiu <andy.chiu@sifive.com>,
	Eric Biggers <ebiggers@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	=?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Costa Shulyupin <costa.shul@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>, Anup Patel <apatel@ventanamicro.com>,
	Zong Li <zong.li@sifive.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ben Dooks <ben.dooks@codethink.co.uk>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Erick Archer <erick.archer@gmx.com>,
	Joel Granados <j.granados@samsung.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/8] RISC-V: Check Zicclsm to set unaligned access
 speed
Message-ID: <ZoR9swwgsGuGbsTG@ghost>
References: <20240625005001.37901-1-jesse@rivosinc.com>
 <20240625005001.37901-5-jesse@rivosinc.com>
 <20240626-march-abreast-83414e844250@spud>
 <Zn3XrLRl/yazsoZe@ghost>
 <43941f48-9905-4b25-89ef-6ad75bf1a123@rivosinc.com>
 <20240701-ajar-italicize-9e3d9b8a0264@spud>
 <ef639748-3979-4236-b48d-c0c44e2d5ad2@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ef639748-3979-4236-b48d-c0c44e2d5ad2@rivosinc.com>

On Mon, Jul 01, 2024 at 04:20:15PM +0200, Cl�ment L�ger wrote:
> 
> 
> On 01/07/2024 15:58, Conor Dooley wrote:
> > On Mon, Jul 01, 2024 at 09:15:09AM +0200, Cl�ment L�ger wrote:
> >>
> >>
> >> On 27/06/2024 23:20, Charlie Jenkins wrote:
> >>> On Wed, Jun 26, 2024 at 03:39:14PM +0100, Conor Dooley wrote:
> >>>> On Mon, Jun 24, 2024 at 08:49:57PM -0400, Jesse Taube wrote:
> >>>>> Check for Zicclsm before checking for unaligned access speed. This will
> >>>>> greatly reduce the boot up time as finding the access speed is no longer
> >>>>> necessary.
> >>>>>
> >>>>> Signed-off-by: Jesse Taube <jesse@rivosinc.com>
> >>>>> ---
> >>>>> V2 -> V3:
> >>>>>  - New patch split from previous patch
> >>>>> ---
> >>>>>  arch/riscv/kernel/unaligned_access_speed.c | 26 ++++++++++++++--------
> >>>>>  1 file changed, 17 insertions(+), 9 deletions(-)
> >>>>>
> >>>>> diff --git a/arch/riscv/kernel/unaligned_access_speed.c b/arch/riscv/kernel/unaligned_access_speed.c
> >>>>> index a9a6bcb02acf..329fd289b5c8 100644
> >>>>> --- a/arch/riscv/kernel/unaligned_access_speed.c
> >>>>> +++ b/arch/riscv/kernel/unaligned_access_speed.c
> >>>>> @@ -259,23 +259,31 @@ static int check_unaligned_access_speed_all_cpus(void)
> >>>>>  	kfree(bufs);
> >>>>>  	return 0;
> >>>>>  }
> >>>>> +#else /* CONFIG_RISCV_PROBE_UNALIGNED_ACCESS */
> >>>>> +static int check_unaligned_access_speed_all_cpus(void)
> >>>>> +{
> >>>>> +	return 0;
> >>>>> +}
> >>>>> +#endif
> >>>>>  
> >>>>>  static int check_unaligned_access_all_cpus(void)
> >>>>>  {
> >>>>> -	bool all_cpus_emulated = check_unaligned_access_emulated_all_cpus();
> >>>>> +	bool all_cpus_emulated;
> >>>>> +	int cpu;
> >>>>> +
> >>>>> +	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_ZICCLSM)) {
> >>>>> +		for_each_online_cpu(cpu) {
> >>>>> +			per_cpu(misaligned_access_speed, cpu) = RISCV_HWPROBE_MISALIGNED_FAST;
> >>>>
> >>>> - const: zicclsm
> >>>>   description:
> >>>>     The standard Zicclsm extension for misaligned support for all regular
> >>>>     load and store instructions (including scalar and vector) but not AMOs
> >>>>     or other specialized forms of memory access. Defined in the
> >>>>     RISC-V RVA Profiles Specification. 
> >>>>
> >>>> Doesn't, unfortunately, say anywhere there that they're actually fast :(
> >>>
> >>> Oh no! That is unfortunate that the ISA does not explicitly call that
> >>> out, but I think that acceptable.
> >>>
> >>> If a vendor puts Zicclsm in their isa string, they should expect
> >>> software to take advantage of misaligned accesses. FAST is our signal to
> >>> tell software that they should emit misaligned accesses.
> >>
> >> AFAIK, Zicclsm is not even an ISA extension, simply a profile
> >> specification which means that only the execution environment which
> >> provides the profile support misaligned accesses (cf
> >> https://lists.riscv.org/g/tech-profiles/message/56).
> > 
> > I dunno, the specification status page used to describe it as an
> > extension:
> > https://wiki.riscv.org/display/HOME/Specification+Status+-+Historical
> > My understanding was that these could be considered extensions, just
> > like we are considering svade to be one.
> > 
> >> . I don't think we
> >> can extrapolate that the misaligned accesses will be fast at all.
> > 
> > That is my opinion on it too. If it doesn't say "fast" and give a
> > definition for what that means in the binding, then we can't assume that
> > it is fast. I'm also wary of extending definitions of extensions in the
> > binding, because a) I am 90% sure that people writing devicetrees don't
> > care and b) it'd be a potential difference between DT and ACPI without a
> > real justification (unlike the zkr or svade/svadu situations).
> 
> BTW, the profile spec [1] has a note that states the following for Zicclsm:
> 
> "Even though mandated, misaligned loads and stores might execute
> extremely slowly. Standard software distributions should assume their
> existence only for correctness, not for performance."
> 
> Which was also quoted in patch 1, so I guess that settles it.

The intention here was to allow vendors to configure an option to skip
the probing. This extension does not seem useful as it is written! A way
around this would be to add a kernel arg to set the access speed but
maybe it doesn't matter. For the sake of this patch, it looks like we
should get rid of this Zicclsm check.

- Charlie

> 
> Thanks,
> 
> Cl�ment
> 
> Link:
> https://github.com/riscv/riscv-profiles/blob/main/src/profiles.adoc?plain=1#L524
> [1]
> 
> > 
> >>> This allows for a generic kernel, like the one a distro would compile, to
> >>> skip the probing when booting on a system that explicitly called out
> >>> that the hardware supports misaligned accesses.

