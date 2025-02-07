Return-Path: <devicetree+bounces-143924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF55A2C2BE
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 13:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 09AC87A66E7
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 12:30:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25A221E7C37;
	Fri,  7 Feb 2025 12:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="RLHsM9A9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542171E5B9F
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 12:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738931335; cv=none; b=TpHtzt88ivF1B+b1+mWT3lIb84PfLZm/wQFoUoBGlrR6yDqldN7sQOOFRYidMrvUGi3hux4G+NQVClZhlmQtLg5+r2oXFpfuD/WQQ+k53gY4yiFT7cz+Dj5Xc56hO05n9FUMDpIbhhQmiF1dlsxsTEtgbGdP5D9MZQMJ1lIzREM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738931335; c=relaxed/simple;
	bh=xU+NxQu+ZdmfxjIGD+6cTjdfN+ULA51LsJozITCFWVs=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CD0AOmraMnJM1hBYj2d/gHKpTYkoUoSx+AobmZwZweCL6nUnqmjjFA5TSEQVAtLj1ySkDhCdm6bJnKQpII6FSs3BwPzUiBNreKNtoLQAkDMbAQXVci4TR3lXjcAZyntNFneyuDtkQUqSD/0je5v/fPblhmeeY2OORSDM+qkjyOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=RLHsM9A9; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 891BA3F16B
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 12:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1738931331;
	bh=smgbTMbeu8icVrnu9cfoEB2Q5GHev6Hr1t62+cNN3e0=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=RLHsM9A9AfWL1E8AJf0rM3VQ9cFIoZSKwk5LCsuOD+apQoxzcjNI8YG9gs6HqnA2f
	 y1eNsXWTLqz+U5t26lOcK2kaJ8A/MuQPa7Zotrn6t1VFI/DpX/B7mmogll3/JhcmwT
	 70DYMmHjRUnIyFKNxTkhtJAgJNoSxNJsL3EII4hrEfSTxJcqmEk8LePjTEk/lSl3Uv
	 6D6jMHMy+WK4G/1Cm3F4hNujJD9bI48h57bi/Bl4wFyLRI3DzRf+sv1VdMoiJK5o5k
	 1+iNk7huMcn6TheYPvnpmXDVdqi8pjIyVTxG2ERJexpfTvY245F396ueD6XAFywRMO
	 St1LM9sFEmzVw==
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-2b8459bc1a3so566216fac.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 04:28:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738931330; x=1739536130;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=smgbTMbeu8icVrnu9cfoEB2Q5GHev6Hr1t62+cNN3e0=;
        b=cThDSFF3TnHuSQRVleFDPJ+pV2kGRuznReWXqcAnQVaPw6G1DvDFZO+4fK3nYSzG5A
         2ENRqXK8fvhORhB1R1F0yzXF0/WkLJFRDLF+9ClyeudlHs9YCPRZR8j41m0rM+W3Cuth
         ktWc7VJddCHnvwqSS3d/NhKN1FcolvB4thB18+sYqRCPObvyrIEPJSUFIK9ISyyXkDBa
         gJr4E/wVhvAtjBextXEYKMiNbPRq9vxmUlmD5Mwbj56yyL5VqAaAUjZzm7orSv3gP3pT
         E6buI9AKQ3h3SfsZ2XMbQqR4j05CG/1TsYmhEe1pU+w0mfKVp9ztn+whUwXXoCMGX1FX
         VauQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1QvU+7DgoU7YwrQVT5nn9TbqgVMEZXm+pBwYVW0KWQeb9AYP7m4+/au7XCMJFNUt0yUutZmdI9y4K@vger.kernel.org
X-Gm-Message-State: AOJu0YwM9qEwhPGrU/SFW61hD+hHx2PkyFIHg/hPCiL21C+ciJAJjteP
	TUw1fqz4z0+A2Pd8m69Hlrv9oGtFSvYHGFgP6Tv269uYIzhb6Oqs3qjxCFBvk5VYBWfOV0ltbRB
	pdFY0/1YuXm27bbuuqSQS44ArdmuVc+Xsxupng3pIL+VGkTRgI/BC/zHD8U6RGFv+zDmL3jrASQ
	ERLywWXLLa1FlUiQ7/TfEC0V4QhSyRguEisE4fqkWTs1AO2jV/VdY1YyQLYg==
X-Gm-Gg: ASbGnct515jO0WRcY4ush7U5ixYRT65f/YtqQl6KNfzCMl/XWZgFCX6SypRCb3DE/ct
	QoCQ5zaXH/Qzynj/9tyLyXeyOvhx1enHEQ2wv/f1c2BuOlA1YsD6IOS7uooP2YQ==
X-Received: by 2002:a05:6870:63a5:b0:29e:5297:a2a7 with SMTP id 586e51a60fabf-2b83eed5ac7mr1921837fac.30.1738931330259;
        Fri, 07 Feb 2025 04:28:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGoWtq8QvHTFwUXCNlAOzdK6vr0/WNVnEmu1/clVLO6yPv833r20851aMa64CXNcis26sE03zc6C9b//9W3WHY=
X-Received: by 2002:a05:6808:158d:b0:3e8:1f5d:b804 with SMTP id
 5614622812f47-3f392227aa1mr2106085b6e.15.1738930999827; Fri, 07 Feb 2025
 04:23:19 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 7 Feb 2025 07:23:19 -0500
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 7 Feb 2025 07:23:19 -0500
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <33b971dc-1266-4d13-b9b7-620c58e5a804@freeshell.de>
References: <20250203013730.269558-1-e@freeshell.de> <20250203013730.269558-3-e@freeshell.de>
 <CAJM55Z9s4FMCmGaGPGBdcJWxoTNO1gupMLAq2a1fExiho5W1jw@mail.gmail.com> <33b971dc-1266-4d13-b9b7-620c58e5a804@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 7 Feb 2025 07:23:19 -0500
X-Gm-Features: AWEUYZmFMLw_yZeW-AzXd8sVPQD1bUtN_FeA79ISlCbVkryjsD8gUyr6HkVDrCs
Message-ID: <CAJM55Z-fvjUiKEnOAnT_HLt0JHYooSgDWW+MpSq0nCTFoxPv3w@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] riscv: dts: starfive: jh7110-common: qspi flash
 setting read-delay 2 cycles max 100MHz
To: E Shattow <e@freeshell.de>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Hal Feng <hal.feng@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Hi Emil,
>
> On 2/5/25 02:18, Emil Renner Berthing wrote:
> > E Shattow wrote:
> >> Sync qspi flash setting to read-delay=2 and spi-max-frequency 100MHz for
> >> better compatibility with operating system and downstream boot loader SPL
> >> secondary program loader.
> >
> > Here you should be explaining why these values better describe the hardware. To
> > me this just reads as "u-boot does this, so let's do the same" whith doesn't
> > really explain anything.
> >
> > /Emil
> >
> >>
> >> Signed-off-by: E Shattow <e@freeshell.de>
> >> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
> >> ---
> >>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> >> index a5661b677687..8a59c3001339 100644
> >> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> >> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> >> @@ -317,8 +317,8 @@ &qspi {
> >>  	nor_flash: flash@0 {
> >>  		compatible = "jedec,spi-nor";
> >>  		reg = <0>;
> >> -		cdns,read-delay = <5>;
> >> -		spi-max-frequency = <12000000>;
> >> +		cdns,read-delay = <2>;
> >> +		spi-max-frequency = <100000000>;
> >>  		cdns,tshsl-ns = <1>;
> >>  		cdns,tsd2d-ns = <1>;
> >>  		cdns,tchsh-ns = <1>;
> >> --
> >> 2.47.2
> >>
>
> That is true, there's not much to explain. It works at delay 2 and
> 100MHz max. I tried many delay values with the pre-existing 12MHz max,
> they did not work. I don't have more information than that except what I
> wrote about on the U-Boot mailing list [1]
>
> [1]
> https://lore.kernel.org/u-boot/ZQ2PR01MB13072E932737DD9D65E3A250E637A@ZQ2PR01MB1307.CHNPR01.prod.partner.outlook.cn/
>
> The parameter training code in U-Boot when given max 100MHz has this at
> somewhere between delay 2 and delay 3, where delay 3 almost appears to
> work but there's data corruption, and delay 1 is totally non-functional.
> With all testing so far the delay 2 and max frequency 100MHz is reliable
> and also is a common occurrence in the Linux code base for similar qspi
> access.
>
> My testing methodology was pretty extensive and I wrote about the result
> on the U-Boot mailing list, however here we're taking the success of
> that in U-Boot and literally just applying it to Linux where it also
> happens to align with some common similar assignments for other boards
> in the devicetree code base. It works and there's no deeper insight here.

This explanation is fine, but it should be in the commit message so we can go
back and check why those numbers were chosen.

/Emil

