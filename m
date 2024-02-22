Return-Path: <devicetree+bounces-44962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EC486042B
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 21:58:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 286B2B28AF4
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 20:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F28997175C;
	Thu, 22 Feb 2024 20:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="j90nl2wi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F114107B4
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 20:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708635484; cv=none; b=brXVREjOR2ILC1dZRi+Eem6VH+2sBctdDkImMDTTq84xGpLt+m3pswizeILUjjExTQt69Z4vD8o17zR6RcZSTsB/9al02zCcsMgSWD1DAzNe9uESXi+cuqUKgSbEIETbUMZFFdEASMHUUdvyO9cANIDQzxVk5C+zhnNOpdcKx6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708635484; c=relaxed/simple;
	bh=oo8hXXOsRZpFdbwH1oQe9YLEy7wMWlFsaDKNC37/KpE=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=oblq234D0Ii7QtB6YxuW/rdEoak7eRJoZz8j/qc1o2+gakiSY5HybYEFJavgtLFz3dERaDSOo+A6pTrddoKYel7zgGDMXUQhnRGGYtQRr1U7kX4/Y8z3iMIENb6+kUHo2cGkAb/AQSfItiPDlj52wgHusAACjtQ8yuv7g2qAygA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=j90nl2wi; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-21e7c3e3cf3so124120fac.0
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 12:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1708635481; x=1709240281; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F/JstmNsXGrATrdQJrqYAdriIsItVvYWhgpEZTS+OEc=;
        b=j90nl2wi4lQdjX4IXjpvaESIlQ/+0vWIpWSrUkoJ/hyAfQKAzrbykU/v3k689RKMis
         He4eA6wRRBl9zDt0TMQJVQ5MVjOOese1VVFBnLGBWIvzSgyl6t0e9aT7WnQvx39xR1ug
         BVv96pwRtNtANoPIjE4G+07uIeLj8X16wMLEKs7B/c1Dtsp3Jm0A6ceNn3ppCD/dM/d2
         96FJpsxDwyC1wi3nurX0E6n1O6bLRsEJeuo7vIWQ8OtKHXAob58EUIAPi13HYbGOW+fM
         IstEgw32rXRhQywiBQu7JrVHiuGYEqAZ0OfafFAxfW5h+128SeC9DiCtJAE2klgKPl0q
         pnyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708635481; x=1709240281;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F/JstmNsXGrATrdQJrqYAdriIsItVvYWhgpEZTS+OEc=;
        b=GPTurPJP5A7gJRCrVUvIl7oOWqY57j6q2p1g1EF4o5dDBZH1BdPWZr4Ml8++N3yS4n
         R7HuisYaoPgHuo8HhmMsqt4miiyXpX7K/UPbNnd6YnwI/beg15WsDBCIyFfxOzNny+Wb
         QvH3auT/hY910a7/KIoMCwae91VWowZ4arLi9O8W7UVamQswdDwyo0MsN8l/RUU9mZD0
         cs840jgWH0geGG1w4X1qGU7XMpmanDodboDn8UjNHUP429vhF1JCloz+TrYt/66r28Gd
         VVrzFB7yrJttc+XqckBqkisDndXSXNkIBh7IvQPEpw/j8njErKxY5dF6G/uTmuSgzatq
         krGg==
X-Forwarded-Encrypted: i=1; AJvYcCUomc9T/6CA8xLvh80t8FLLbcGlJUhJ9+1kHn7sZWxKhlg/xfMkSRDm9lxhT54QnPE+P+7cBbs7Wh/OVBtZmEqPojit1r2dETc37A==
X-Gm-Message-State: AOJu0YzRSeR3oltmNk20IjwhmjyYWrBsaF6aBOOcQ5WNgJLmnng4dtvf
	8bfHbCHOnl3WXaLLQt0M61aqqNgcdmLL0L9xdt0iAHUOdGA7dHQeF2tkWeiVVPo=
X-Google-Smtp-Source: AGHT+IFzHbOMj9bR4XwoTV78+XQQDpkce4tWRSTpsF1S4rvhPsRaNJYaAkOqP1nVzW664TOOaBFWYA==
X-Received: by 2002:a05:6870:3306:b0:219:48a9:2d08 with SMTP id x6-20020a056870330600b0021948a92d08mr84346oae.12.1708635481161;
        Thu, 22 Feb 2024 12:58:01 -0800 (PST)
Received: from localhost ([50.213.54.97])
        by smtp.gmail.com with ESMTPSA id u2-20020a656702000000b005dc26144d96sm9549017pgf.75.2024.02.22.12.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 12:58:00 -0800 (PST)
Date: Thu, 22 Feb 2024 12:58:00 -0800 (PST)
X-Google-Original-Date: Thu, 22 Feb 2024 12:57:58 PST (-0800)
Subject:     Re: [RFC PATCH 0/1] riscv: dts: Allow BUILTIN_DTB for all socs
In-Reply-To: <ac11967c-3ab4-42be-86ca-0d40c35eee04@ghiti.fr>
CC: cyy@cyyself.name, linux-riscv@lists.infradead.org,
  Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu, Conor Dooley <conor@kernel.org>,
  linux-kernel@vger.kernel.org, masahiroy@kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: alex@ghiti.fr
Message-ID: <mhng-a0b00545-1522-4045-a4fe-97c3fbb8b082@palmer-ri-x1c9a>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Tue, 20 Feb 2024 12:46:57 PST (-0800), alex@ghiti.fr wrote:
> Hi Yangyu,
>
> On 20/02/2024 20:01, Yangyu Chen wrote:
>> The BUILTIN_DTB kernel feature on RISC-V only works on K210 SoC only. This
>> patch moved this configuration to entire riscv.
>>
>> Although BUILTIN_DTB is not a good choice for most platforms, it is likely
>> to be a debug feature when some bootloader will always override something
>> like the memory node in the device tree to adjust the memory size from SPD
>> or configuration resistor, which makes it hard to do some debugging. As an
>> example, some platforms with numa like sg2042 only support sv39 will fail
>> to boot when there is no ZONE_HIGHMEM patch with 128G memory. If we want

I guess that's a surprising one, but there's always some Kconfig entries 
that are necessary to set in order to get platforms to boot -- at a bare 
minimum errata and drivers, for example.

> Orthogonal to this patch, but if needs be, we can fix this issue with
> 128G on sv39 by changing the sv39 address space layout, we still have
> room to gain the 4G you miss, at that time I was pretty sure that amount
> of memory would come with sv48 :)

That seems like a reasonable way to go, as long as it's not overly 
complex.

>
> Thanks,
>
> Alex
>
>
>> a kernel without this patch to boot, we need to write the memory nodes
>> in the DT manually.
>>
>> Also, changing DT on some platforms is not easy. For Milk-V Pioneer, the
>> boot procedure is ZSBL -> OpenSBI -> LinuxBoot -> Linux. If DT gets
>> changed, OpenSBI or LinuxBoot may refuse to boot. And there is some bug on
>> LinuxBoot now which does not consume --dtb argument on kexec and always
>> uses DT from memory. So I would like to do debugging on DT using

I'd argue those are bootloader/firmware bugs.

>> BUILTIN_DTB, which makes it very simple, I can even install the kernel in
>> the distro's way and provide a kernel package for other users to test.
>>
>> Yangyu Chen (1):
>>    riscv: dts: Allow BUILTIN_DTB for all socs
>>
>>   arch/riscv/Kconfig                  | 16 ++++++++++++++-
>>   arch/riscv/Kconfig.socs             | 32 -----------------------------
>>   arch/riscv/boot/dts/Makefile        |  2 +-
>>   arch/riscv/boot/dts/canaan/Makefile |  2 --
>>   4 files changed, 16 insertions(+), 36 deletions(-)
>>

