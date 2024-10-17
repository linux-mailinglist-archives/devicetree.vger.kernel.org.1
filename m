Return-Path: <devicetree+bounces-112413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 314FB9A20CE
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 13:20:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 548291C20961
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59BA71DA636;
	Thu, 17 Oct 2024 11:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="CQAHaUw0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F8C1D89E2
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729164041; cv=none; b=a7p8wJLuQiiiF5Wns3sRbkkJoOXD/vX3E8qPaubCSZtIHqPUf9Ulr5N+pOqlMhMqYHK2h4qT+Ue4zePjWYowuFB7aJWLzxysg68zrnD6+hIkiBcipWe1G7KW9Q+30WDe7SSYWy/iigD/HfrpLNB15+Dill8SudYUYdYHXDXY4sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729164041; c=relaxed/simple;
	bh=HN1HR+UdC4N01QHsndbtKIvSOhSW3ezQeIacLjlunp4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tpXfjZhJ0QAJRNz4OLGdZ3c6XMRJjymX2QRb2vLe0yFWHpeMrit60HJIpAvGv9LxjBHvXwUucIplmnlTFQseZekvY0j4Yf/6BQOU6oUQbi2zAf6ajDwrUSFtwSdVl2gxENrpB+B6yFfOgui6C029f14WlmGk3aYj4f/FZ4l1ei0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=CQAHaUw0; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1A0F83F2A0
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1729164036;
	bh=M4YjcEVV7tGGHQM4SLZ+Rw0/aoFPAr1zOE/e6IcC6g4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=CQAHaUw0GdSeLkCoARag73bfg/PDgMJWIiJzUvisFthX810nNEHwtSRiZzN3Omwsb
	 00He6eUXtQ5cacv6sw2t31mcO8Hxi1CL/ppYFPWCfuUybZgKvhzUDNf9+zHWbCav7N
	 VDOi5ucSD2aq8v2K8zgOMOVTGxeSYiL7BsHCHc1E6cuct3avoffexJAJuDl4ZtvXgz
	 cAQkdjifAiH6OnevNVv2j4CkyKSWVqWr510tXmcDBliqhAcct8Z6cq693GCjnCay0N
	 Q6NsakbSNzAEyVHFz8yeeUyGuZqbg4fupZtQLYwmz2gtLbQvutl2INIeRxk/iU5rr9
	 jWhUzkOsl5MrA==
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5eb60cc6d66so790323eaf.0
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 04:20:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729164035; x=1729768835;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M4YjcEVV7tGGHQM4SLZ+Rw0/aoFPAr1zOE/e6IcC6g4=;
        b=lv4bLd98j5pE6RBM01UzEN5TbNQxXPARPH3eToDKyBtyCJ0vaCrXPL2WvpwfZf3s5b
         eeDRhWjX1gNMVGDMNzYq0qQNvUQL4muO5m6x3T457Oag7zvrEAw9zQIOOOASwSyU+umV
         sBlhWBlq7hr+/rfPYgPvRorEUknJlrV09QiK/wJtvh0loyON3TEYrZKvqRYO11yf9MaU
         +H+1f+VAzw9SZSmMgY0Z39cKXn/l3zWskGgH5Pmiat+CmqZ2ofkXI13u+TJsqio8WM2a
         2HDpgoL6hubbaJ7AE4kVVH9dimUHCfUrVV9vOHkTdJc/itN1WRig5Ee4uukjyc8+p0aK
         fSeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTMCmQhnBbYFoL3HuX1ny/wgDAoayQwfOOK3ttqqzUb6lsyxanZFCBdy3Qjs7NJjTpVx8NCPvHpkSF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3+wauOLGx/tQ7ZT1MSTuEFUyYKAiR8RJbSGRFL8prSul9FqFh
	LhwJ7m3c/MPT5xMkpVH042GIypbbCaz5nPdvUsFM3MtlpJlK3k03EcchMb0C+ugG/AnPjUmrfYN
	w4yjkr2zwh798crID3udsS0/5F36C9/uy5K+4N54s1HP0osj8wgKl/lMys3qPuG9isCmVkL2za4
	ZGaN3e6HCQpRNz0sAUrxQAB1kArat3Y4e1Bege8aBF6o6s3fEVEg==
X-Received: by 2002:a05:6871:b0c:b0:277:fbac:1f71 with SMTP id 586e51a60fabf-288eddb2c9bmr5430264fac.3.1729164034980;
        Thu, 17 Oct 2024 04:20:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfU2Lplv8hxPRM8N7voJy7lh3n9cW1UVrwgOb9RsD0H7yH3H0NpoWnlE93REmfGdPNvgkvNlDe3u07LYOkoSo=
X-Received: by 2002:a05:6871:b0c:b0:277:fbac:1f71 with SMTP id
 586e51a60fabf-288eddb2c9bmr5430251fac.3.1729164034683; Thu, 17 Oct 2024
 04:20:34 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 17 Oct 2024 04:20:34 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <4825037e-08e6-4946-9aee-a19512fb2346@samsung.com>
References: <20241014123314.1231517-1-m.wilczynski@samsung.com>
 <CGME20241014123412eucas1p2144768f373a2e2de7f6d00e7b67f9328@eucas1p2.samsung.com>
 <20241014123314.1231517-4-m.wilczynski@samsung.com> <CAJM55Z-bzivMZWUsHiii+2tw2-kdRe7kqtVa+MvPEAVTmOvChg@mail.gmail.com>
 <4825037e-08e6-4946-9aee-a19512fb2346@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 17 Oct 2024 04:20:34 -0700
Message-ID: <CAJM55Z913WhGUVHR8e2GhS=x56hqrAMzGmRgLLNMFEWTguxgYA@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] riscv: dts: thead: Add mailbox node
To: Michal Wilczynski <m.wilczynski@samsung.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, drew@pdp7.com, guoren@kernel.org, 
	wefu@redhat.com, jassisinghbrar@gmail.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, m.szyprowski@samsung.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Michal Wilczynski wrote:
>
>
> On 10/14/24 16:57, Emil Renner Berthing wrote:
> > Michal Wilczynski wrote:
> >> Add mailbox device tree node. This work is based on the vendor kernel =
[1].
> >>
> >> Link: https://protect2.fireeye.com/v1/url?k=3D0bc95f25-545267d8-0bc8d4=
6a-000babff317b-85a52eab21db9d22&q=3D1&e=3D63a49acd-e343-43d2-a57d-b4f6fcd2=
3b61&u=3Dhttps%3A%2F%2Fgithub.com%2Frevyos%2Fthead-kernel.git [1]
> >>
> >> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> >> ---
> >>  arch/riscv/boot/dts/thead/th1520.dtsi | 12 ++++++++++++
> >>  1 file changed, 12 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/d=
ts/thead/th1520.dtsi
> >> index 6992060e6a54..435f0ab0174d 100644
> >> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> >> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> >> @@ -555,5 +555,17 @@ portf: gpio-controller@0 {
> >>  				interrupts =3D <55 IRQ_TYPE_LEVEL_HIGH>;
> >>  			};
> >>  		};
> >> +
> >> +		mbox_910t: mailbox@ffffc38000 {
> >
> > Hi Michal,
> >
> > Thanks for your patch! Please sort this by address similar to the other=
 nodes.
>
> Thank you for your review. Will do.

Thanks!

> >
> >> +		       compatible =3D "thead,th1520-mbox";
> >> +		       reg =3D <0xff 0xffc38000 0x0 0x4000>,
> >
> > The documentation[1] calls this area MBOX0_T, but it says it's 24kB lon=
g.
> >
> > [1]: https://protect2.fireeye.com/v1/url?k=3D182b68d6-47b0502b-182ae399=
-000babff317b-d2b05f97b85a09ff&q=3D1&e=3D63a49acd-e343-43d2-a57d-b4f6fcd23b=
61&u=3Dhttps%3A%2F%2Fgit.beagleboard.org%2Fbeaglev-ahead%2Fbeaglev-ahead%2F=
-%2Fblob%2Fmain%2Fdocs%2FTH1520%2520System%2520User%2520Manual.pdf
> >
> >> +			     <0xff 0xffc44000 0x0 0x1000>,
> >
> > According to the documentation this is inside the 24kB MBOX1_T area.
> >
> >> +			     <0xff 0xffc4c000 0x0 0x1000>,
> >
> > This is callod MBOX2_T, but is 8kB long.
> >
> >> +			     <0xff 0xffc54000 0x0 0x1000>;
> >
> > This is callod MBOX3_T, but is 8kB long.
> >
> >> +		       reg-names =3D "local", "remote-icu0", "remote-icu1", "remote=
-icu2";
> >
> > Maybe these should match the MBOXn_T names in the documentation?
>
> Indeed, those are excellent points. I wondered about this today, trying
> to understand why the mapping was done this way.
>
> For the MBOX0_T mapping, the mailbox driver needs to map the M0_*
> registers, including the M0_Cn registers, where other cores write their
> messages. This setup requires a total of 16KB, with an additional 8KB
> that remains unused.
>
> Regarding MBOX1_T, MBOX2_T, and MBOX3_T, only one set of registers is
> necessary - specifically, Mn_C0 since the kernel always sends messages
> from the 910t core with CPU_IDX=3D0.
>
> The MBOX1_T mapping is particularly confusing, as the relevant
> registers, M1_C0*, start with an offset of 0x4000 relative to the
> beginning of the mapping.
>
> For MBOX2_T and MBOX3_T, the necessary register sets, M2_C0 and M3_C0,
> each occupy 4KB of address space, leaving extra 4kB unused.
>
> I assume the hardware designers found these mappings more
> straightforward to implement this way. I=E2=80=99m fairly confident that =
these
> numbers are accurate, as I have tested them and confirmed they work.

I don't doubt these mappings work, but usually the device tree should descr=
ibe
the hardware and not the driver. So unless you think the documentation is
wrong, I'd still suggest you do the bindings and device tree so they descri=
be
the hardware, and then let the driver handle the irregular register offsets=
.

/Emil

