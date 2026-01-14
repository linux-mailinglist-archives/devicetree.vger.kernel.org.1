Return-Path: <devicetree+bounces-255278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C97EFD21CE7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 00:57:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D9F4302517F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 23:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E7E738170C;
	Wed, 14 Jan 2026 23:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="mw+XGQ96"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7AE337111
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 23:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768435029; cv=none; b=jp7JbKTN7WvJPIhXoEIUInKHMBlm4Q55vmW2TwibUPyO3NR0zOBu9BHgcb2CGWILMOI/Btafe3+Bef/FjcGISjIPrm5BPN9ryzxVioy8X2dtE47pJBticXJtSpn0gus1Qt0KVG/FZW7AHp/TBA0A1g67mDhvjXRfcSrWuAWW58k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768435029; c=relaxed/simple;
	bh=HDziqQp0ZHq73qfDA8T8c1LSXjVu6KKuZcSbqhyXZsk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e7z+YqTah0pB24rt6IwdL6p4zT/8h8eMuxk09C5RL3Blaxybns0iNvRibgu1FrAIdFad/PLFsjs/fXZoniZPzSK4ccQqFnRSMaUy3em3fXNZSSyaFekJHNN62xeTAH65Jv5L5pnQ5SM+oHISA7WAGHvBtil2GxBFNKttqVEtqww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=mw+XGQ96; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-4041c73ab4dso125917fac.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:57:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1768435026; x=1769039826; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lrZ0xz6rtJrpX2gJTATZXWCSjCkVy/ptUp7g0PyWV/k=;
        b=mw+XGQ96V1W6i5Fis6GP34a5P2UqxfwqhEWpw16B9pk3SHGCTfbZwAM8msON/4NyRy
         27wIuSu+IbN1RMsQrEI0Znanp2UXOjYLlTXWv6KEhvpqQ1eKrbazy8Jpb9uE7gMBc8a4
         c5Ylk48ZSPOA/l08LUhuxdviCAKe/nTYXUcvV3feBt2ubTeaFKVG6Dub7vIUWp0f7rx7
         1KCIT0wNJWKHXOg+khCTe0XXSUk1/A/NguVFTuk2PZYU7at3v7EaSMSgZRGREyb3GIu8
         562RVx3o2WDTqaf+YImfijvtZPFZuKW+gK646lD1f/6+4X2bw4hKznMIeWTHH56BgdL1
         XJFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768435026; x=1769039826;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lrZ0xz6rtJrpX2gJTATZXWCSjCkVy/ptUp7g0PyWV/k=;
        b=w62Eb0B+cvVKDRfKOSWn8rhulbGt7r2RS3jqmJ55gPT7ApAeTn+CIk8OOE+sNwNIcD
         6CwbWev+QbUfaQ8ohYxMVXrSxTK5RGQxH3AHTSVdgsOi/uHrMDbsuIyB81tCw2gTSEmy
         8KsZps2PxGzoNSHuIWo+eHK94VM0SVHxhfnXuV8/Unxpl4Ot3+l8rI7XuBJF0lCJ6HQE
         UKZh8QL09H10q0DMuyEP5qrfsp0ECbO/qictc38MrlRkdh5D6XhrrAbM4pIMXmlQxfMi
         rL6uqLwH6lKYVQqvcQRg8vR3s8cf0sqqaV6/on0PazsJnphkB/wHFfL4NbuYlRvEZMPt
         y9DA==
X-Forwarded-Encrypted: i=1; AJvYcCUG55jEqPC2j3bib7XkyrIs/iCy4YAsWK6RWPI3GsbIgDmnIrTlKZUIONZVAOZXQUCP0IJ41KtZjaZv@vger.kernel.org
X-Gm-Message-State: AOJu0YyeEgYwYVh/gVLfKtmpAwXjUkmetMHno/aBMpfswIgCdmfbHV2s
	Z+5n0eGKVc4D6N89B7ZxQ/rLEU36cygtt1/sWH209FCgQqEPTFZQWbP1zG6h2rASfBk=
X-Gm-Gg: AY/fxX46RsK20qZGgnw3rlB5haC42Ab/ep/XFOgIfDvn/s3FC91xsTnTpniOyiZQmIL
	ig9mzLTYOAAN5Xv08AqJ4w/0TkcVnJTPScrUsXMTtg0mHabTqgNO4t4KTtm1c7uulJAFZHGWuWI
	VTZpOaoW/g/QrRwUugHW8SQ5Cdu5g6FD1Uo+Zaw9RXfYp8Zhy788JdtyhI/vqdRSdjGNtnc0Ji7
	+4qeX8Uk0CzxtR7pmfnKK4a2U5GLCt7xc5phiDxSXeyUw5OBn1xO6MT9hm8SMH9cNj54/a/Mrwx
	BuiPEvPtMDwHplDYmVWAo//Ira8H+ogp8JKAnzlC9P7SMyQ3/U5o5QcjRXKp186oC0eLp9XPoco
	3BaGrecDSub2LdPE8LaWKVzCngBUwdVYAcbhHphiIQqyQHTl0SvvoilLWKx8K8uEouKNCIFsgcm
	VZFZ5Ym9Ugmram2hk7Pe5eXtsnSFW0
X-Received: by 2002:a05:6871:3393:b0:404:2fe7:e184 with SMTP id 586e51a60fabf-4042fe7e4b3mr317528fac.43.1768435026295;
        Wed, 14 Jan 2026 15:57:06 -0800 (PST)
Received: from [100.64.0.1] ([170.85.11.118])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa515f4dasm17826541fac.21.2026.01.14.15.57.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 15:57:05 -0800 (PST)
Message-ID: <fd95c2f2-9292-483c-9613-4adf3c65c500@sifive.com>
Date: Wed, 14 Jan 2026 17:57:04 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/11] riscv: dts: spacemit: add initial device tree of
 SpacemiT K3 SoC
To: Guodong Xu <guodong@riscstar.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley
 <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, linux-serial@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Anup Patel <anup@brainfault.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Yangyu Chen <cyy@cyyself.name>
References: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
 <20260108-k3-basic-dt-v3-10-ed99eb4c3ad3@riscstar.com>
 <77f9a001-7f0a-4c29-abcb-501e875da117@sifive.com>
 <CAH1PCMZ5rKbG8xEbB9jt6TqyB28T5aLgRtf3iJ8Gt6Fk+3XFhQ@mail.gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <CAH1PCMZ5rKbG8xEbB9jt6TqyB28T5aLgRtf3iJ8Gt6Fk+3XFhQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Guodong,

On 2026-01-09 3:58 AM, Guodong Xu wrote:
> Hi, Samuel
> 
> On Fri, Jan 9, 2026 at 2:19 AM Samuel Holland <samuel.holland@sifive.com> wrote:
>>
>> On 2026-01-08 6:26 AM, Guodong Xu wrote:
>>> SpacemiT K3 is equipped with 8 X100 cores, which are RVA23 compliant.
>>> Add nodes of uarts, timer and interrupt-controllers.
>>>
>>> Signed-off-by: Guodong Xu <guodong@riscstar.com>
>>> ---
>>> v3: Remove "supm" from the riscv,isa-extensions list.
>>> v2: Remove aliases from k3.dtsi, they should be in board DTS.
>>>     Updated riscv,isa-extensions with new extensions from the extensions.yaml
>>> ---
>>>  arch/riscv/boot/dts/spacemit/k3.dtsi | 548 +++++++++++++++++++++++++++++++++++
>>>  1 file changed, 548 insertions(+)
>>>
>>> diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/spacemit/k3.dtsi
>>> new file mode 100644
>>> index 0000000000000000000000000000000000000000..be9335fba32cb9e81915b2b91cf08c55a5e96809
>>> --- /dev/null
>>> +++ b/arch/riscv/boot/dts/spacemit/k3.dtsi
>>> [...]
>>> +                     reg = <0x0 0xe0400000 0x0 0x00200000>;
>>> +                     interrupt-controller;
>>> +                     #interrupt-cells = <0>;
>>> +                     msi-controller;
>>> +                     #msi-cells = <0>;
>>> +                     interrupts-extended = <&cpu0_intc 9>, <&cpu1_intc 9>,
>>> +                                           <&cpu2_intc 9>, <&cpu3_intc 9>,
>>> +                                           <&cpu4_intc 9>, <&cpu5_intc 9>,
>>> +                                           <&cpu6_intc 9>, <&cpu7_intc 9>;
>>> +                     riscv,num-ids = <511>;
>>> +                     riscv,num-guest-ids = <511>;
>>> +                     riscv,hart-index-bits = <4>;
>>> +                     riscv,guest-index-bits = <6>;
>>> +             };
>>> +
>>> +             saplic: interrupt-controller@e0804000 {
>>> +                     compatible = "spacemit,k3-aplic", "riscv,aplic";
>>> +                     reg = <0x0 0xe0804000 0x0 0x4000>;
>>> +                     msi-parent = <&simsic>;
>>> +                     #interrupt-cells = <2>;
>>> +                     interrupt-controller;
>>> +                     riscv,num-sources = <512>;
>>> +             };
>>
>> Does the chip also have M-mode IMSIC and APLIC instances? Those need to be
>> represented in the devicetree as well, for M-mode firmware to access them, just
>> like the CLINT below.
> 
> Yes, the K3 chip does have M-mode IMSIC and APLIC instances. Currently, the
> boot firmware (U-Boot) transfers information about these nodes to OpenSBI.
> However, you are correct that they should be properly described in the DT.
> 
> In the next version, I will add the M-mode APLIC (maplic) and IMSIC (mimsic)
> nodes to k3.dtsi, for topology representation and potential firmware usage.
> I will set their status to "disabled" because exposing them as "okay" to Linux
> causes access faults during driver probing.
> 
> Please let me know if this approach (adding them but keeping them disabled)
> looks okay to you.

I think this is a reasonable compromise.

Personally, I think of the DTS files in the Linux repository as the "static"
devicetree, which should describe a "complete" view of the hardware--that is, as
seen from the highest privilege level. Then it is the responsibility of that
highly-privileged software to modify the FDT as needed to provide a limited view
of the hardware to lower-privileged software. And this modification is exactly
what OpenSBI does before it passes the FDT to U-Boot. So the "static" devicetree
would not disable these M-mode-only devices.

However, I recognize that people want to use the DTB files generated by the
Linux build process with Linux directly, ignoring the firmware-provided FDT. In
that cases the M-mode-only devices need to be disabled. And then you need a
-u-boot.dtsi file to set `status = "okay"` for the firmware build. I think
that's a reasonable compromise to make the "static" devicetree as complete as
possible while still being usable directly in S-mode in some cases. (It still
breaks if some peripheral is assigned to a different supervisor domain, or some
DRAM is reserved by M-mode, etc., which is why I really recommend using the
firmware FDT and not a file.)

Regards,
Samuel


