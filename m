Return-Path: <devicetree+bounces-239457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 401B9C650BB
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D951A4EBC10
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 288412C21DB;
	Mon, 17 Nov 2025 16:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WolEC22l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044282C032E
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 16:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763395603; cv=none; b=YGUnXb3PW8KcjOSTMZjtWm3fIjzqa1035h6atnWKBLZMzitFzViEOC8ZbQ/nvcT+yZrLzGg+ogB0ggfwyHsLODtwUV1ybkA5iZ9PD6wvCVQ+gdwcvMKjjgx2QQXVfLSVICxSI+iq2x1kKKxm/J2piOudv/vn/VdMJq9saw9AvqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763395603; c=relaxed/simple;
	bh=ZHV0mE7tJCp4/ka1dZaQ1bLnq3xNryKpXQpZOdPOCTM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PDxMKpISdFCCdvfjr5SFc2JnUvZrG4+sBfGt3OTLv3kg2EfxoyYfmTHKR60AWyaIz5O1Y8hbMxbunVxesSYdFIBanVFGVo+WU/WCASN7dxaGGOY+sak9CXX2yw/add3QY288j9peKWKLSseeq7eq0rYcrrVDaOnVMsWXqQi5Qi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WolEC22l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81666C113D0
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 16:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763395602;
	bh=ZHV0mE7tJCp4/ka1dZaQ1bLnq3xNryKpXQpZOdPOCTM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=WolEC22lLpezRJc51FMbmDIaiYkXkUFpBcfHF/mvJvfPpkfQBt74KCxBHdUqSeqEZ
	 Dp3W2MgMsByoqg+I9TzqaXmOQZuTHgz1yxEF+5Z/I17t1CqMp5kznuD8usFU/tNY6G
	 d+kh5yyNvAfELDR1gU8zGjGep/+IALjNN+rfawZ4hDbD+/p5zcEPmwINZh7snCE4wx
	 pStmG8SKScZ6dCyBzFTY/XQEiLHoxfHr/7IlU64MecqMWy1oKpcGGeBKNb3XV8qb/a
	 rr0aZa+/apU0R3RtfSsxqXrcGQidg3v3COzpI+VcNd4O7njrk0xGEVtsrQtcr+vAlX
	 aMXtbWSr076tg==
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b736cd741c1so496685766b.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 08:06:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXE8C4HKnIHarniXc3PTw7tOFNG3SPS5aw+oOF67Z4FtVYKv3T2sTQV9mrTDSIp4lA571vo3wiSg74Q@vger.kernel.org
X-Gm-Message-State: AOJu0YwmoeDrxgc4g5B0mQJThcvTFCiYzwAw19g/JWbFQ5k+I4NSg92B
	zZN3nl1jBLwdyGXivPoqQOqdf+tNpEoGkHcsMOC9EVs7hCrJaUMg8Y9A0Qd6UtSa78xhugkktTL
	aeZWdBprg6oL/AfFe6DVsK3VtfFavtQ==
X-Google-Smtp-Source: AGHT+IHQF8K79mZ4P4bnbSysFknDwMV6mGUBiCbCSNF1KLvGofsqqaiTXzHgasP6+N8axEwBORn0CapAYCRec2+xv10=
X-Received: by 2002:a17:907:8dcd:b0:b73:79e9:7d3b with SMTP id
 a640c23a62f3a-b7379e9837cmr1043723066b.25.1763395601132; Mon, 17 Nov 2025
 08:06:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ebc08400-c16d-4ed0-b487-9aabe13bbf0f@pengutronix.de>
 <58816b68-3b09-4320-9a4e-09f2c2b2d0fa@kernel.org> <aRrcRZvdrbAmsCm_@pengutronix.de>
 <8ce701c9-6c8d-4b3e-8706-760b8aba89fc@kernel.org> <aRr6JLMplFVeHcjj@pengutronix.de>
 <e5502ec8-0c55-47ce-a9e5-62e137c9808b@kernel.org> <20251117-smooth-spiked-loon-52df28-mkl@pengutronix.de>
 <de1739a8-4677-4cc8-b501-2568b7513467@kernel.org> <aRs2y3w854vnHAzg@pengutronix.de>
 <576a9eae-7dba-47d0-ad66-0a81d1893271@kernel.org> <aRs-DaayhtQTtFXj@pengutronix.de>
 <9e14fb8e-af84-4072-b0ac-9ead882782be@kernel.org>
In-Reply-To: <9e14fb8e-af84-4072-b0ac-9ead882782be@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 17 Nov 2025 10:06:29 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+=v96eP6V+5Ehi9EQT3iKKU7=t7kvJ-WSA+1WCHDuHEA@mail.gmail.com>
X-Gm-Features: AWmQ_bkHp09PIpomgFemmdcjbomSIaZ9lBJJMCSTwYC-dA0iLqOM8VuivQjCSgA
Message-ID: <CAL_Jsq+=v96eP6V+5Ehi9EQT3iKKU7=t7kvJ-WSA+1WCHDuHEA@mail.gmail.com>
Subject: Re: SoC-specific device tree aliases?
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ahmad Fatoum <a.fatoum@pengutronix.de>, devicetree-spec@vger.kernel.org, 
	quentin.schulz@cherry.de, Marc Kleine-Budde <mkl@pengutronix.de>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 17, 2025 at 9:44=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 17/11/2025 16:23, Sascha Hauer wrote:
> >>
> >> You read from registers booted device MMC 1 (out of MMC 0-2), so inste=
ad
> >> of relying on register value that "1" always means MMC1, not MMC0 for
> >> example or whatever else changed in hardware, you can just sort the
> >> nodes by unit address and choose the second device.
> >
> > The instance numbers do not always match the unit address sorting.
> >
> > For example K3 SoCs have:
> >
> > dts/src/arm64/ti/k3-am62-main.dtsi:548: sdhci0: mmc@fa10000 {
> > dts/src/arm64/ti/k3-am62-main.dtsi:566: sdhci1: mmc@fa00000 {
> > dts/src/arm64/ti/k3-am62-main.dtsi:589: sdhci2: mmc@fa20000 {
>
> That's label which is not yet proof that boot source registers have the
> same... I can git grep as well, but wanted actual confirmation, because
> people put to DTS many wonderful mistakes.
>
>
> >
> > Rockchip:
> >
> > dts/src/arm64/rockchip/rk356x-base.dtsi:619:    sdmmc2: mmc@fe000000 {
> > dts/src/arm64/rockchip/rk356x-base.dtsi:994:    sdmmc0: mmc@fe2b0000 {
> > dts/src/arm64/rockchip/rk356x-base.dtsi:1008:   sdmmc1: mmc@fe2c0000 {
> >
> > There are some examples for i.MX as well. To my own surprise not with
> > the mmc nodes, but some SPI instances are not sorted by unit address.
> >
> >>
> >>
> >>>
> >>> Also I don't get whether you are suggesting
> >>>
> >>> A is as fragile as B, so you could equally well do B
> >>
> >> Both are fragile, so I would be happy to see arguments why A is better
> >> than B. Why? Because with B you don't need any binding because all the
> >> information is already in DTS.
> >
> > What do you consider fragile with it?
>
> Only that you rely on a specific register values and their meaning.
>
> Anyway, I would just go with standard aliases, but add a schema for each
> of such cases (SoCs or vendors), so you will define this as an ABI.
>
> One of the reasons why Barebox was affected by all node renames and
> alias reshuffling was that it was never documented that anyone treats
> this as an ABI.
>
> So you want it to be an ABI for barebox, sure, just make it a binding.

What do you have in mind? Other than standard names for the aliases,
what can we check here? That a specific alias points to a specific
path? That would be a bit too much IMO. That would be equivalent to
specifying possible values in 'reg' for all devices.

Documenting standard names was something I started but gave up on with
the mess we had already. And that was several years ago, so it
probably only got worse.

Rob

