Return-Path: <devicetree+bounces-302277-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 77htIC86E2pV9QYAu9opvQ
	(envelope-from <devicetree+bounces-302277-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 19:49:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D605C3514
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 19:49:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C19303008516
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 17:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D9A2F60B2;
	Sun, 24 May 2026 17:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrAwh2rw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE352ED870
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 17:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779644970; cv=none; b=JyxarWqTW8suR1qB7Q5RtMmNZ6cJKZkl70l36CKJ36k2CdNN8H2Dy8GdLdvyxET81lio9RZsykz0TGvKdqiHtn+nOlmv6cA1bvgIRsTLFDUT2o8Cfr8X0+mMAdJ/BgaTXPG4xwNWUPGOUCvDRZuBC7vGhwD6q5MwpgbZornS76g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779644970; c=relaxed/simple;
	bh=GgLqjq5uyJ6JdznXMeX3loFgq4JSiUpZCEz+KxNckMY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IDugCiWaQ5P9Oygv7L8huIrNNVJEpys+L9/nLHgL5y40u2K1+u/9LM4vPa01YORTIvjzPn+KeLakHUaO/2cR/I4rxdyqUvSPDubnV5WNSXiSMtzINPMtJhzp3Q8DtkXebOhdZR6BfYvXb7iZkx+JD9KB0+TQd1RUQXJOBkuEZCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrAwh2rw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 399B21F00A3E
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 17:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779644969;
	bh=lhGzJQmR6uNVwUmY+v4cPRTlTkpIcDMQ2Qkuuz17AAE=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=VrAwh2rwRps/J88pF/cS157e08lApVV+wufWf1ufFhvNEN4izhlmEygFZZF167/wZ
	 ijENvczQTwOUOaykHhpdxZQG4AfZgvnR5Cs/ecEuorjhrXGcww7QYW1583cEIAs7ML
	 +MUEclFbeYl/NlVM2icb/DspD0jM2Pd20btYrChCmCZUJijWAPu9jCGipL6Lr/Kmtk
	 ncK1igr8WsKKpvpUg8veqwTpXPjchPHtM5hDA1UgiOu3ZyXujC1/Zhp/c/ZttC9uvC
	 GKOe5rGt42fHk/+cvxOR79i5IYwMzOLtz+3p0/+LtgxIe0ZhkTldmHkHykgT8fXz/L
	 VWaqbKXgA0f0w==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-38e7d983f79so82894881fa.0
        for <devicetree@vger.kernel.org>; Sun, 24 May 2026 10:49:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9DNF2egxMtJcepNvT02rqkTAOtZulsW9kOdjpbqavlkkYPHnF2V/1Xw0boJCfIxxaqeHPFxv4vjiWS@vger.kernel.org
X-Gm-Message-State: AOJu0YyEVoSSBmm9ndUdNgwo38XPzOa5lIcubaNQxLf/RDnnzSFvD+66
	ZIPkMyDLZ5nyxWUMEj5LTYZKodBSvuoHy6mhW+LARizls1A3EOdSHOuP8sBd6z9ccA87k9e/UXg
	GmRVBWn1WPiO30cvMFTH8GrluNvBq6lw=
X-Received: by 2002:a05:651c:888:b0:395:b670:71ce with SMTP id
 38308e7fff4ca-395d8c35bd9mr36823261fa.2.1779644967660; Sun, 24 May 2026
 10:49:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260518153339.619947-6-paulk@sys-base.io> <20260518161130.F0A4CC2BCB7@smtp.kernel.org>
In-Reply-To: <20260518161130.F0A4CC2BCB7@smtp.kernel.org>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sun, 24 May 2026 20:49:13 +0300
X-Gmail-Original-Message-ID: <CAGb2v65+JwwU2p5TQ6hrqonYNUgVgZQMPY6D=ROqWJu=xy=drQ@mail.gmail.com>
X-Gm-Features: AVHnY4LvDPQc5oZnnG8mo8yYec158_H8XNlRXKMcaKU8ihVkc70ZfNJAsAQoHnQ
Message-ID: <CAGb2v65+JwwU2p5TQ6hrqonYNUgVgZQMPY6D=ROqWJu=xy=drQ@mail.gmail.com>
Subject: Re: [PATCH v9 5/9] ARM: dts: sun8i: v3s: Add nodes for MIPI CSI-2 support
To: Paul Kocialkowski <paulk@sys-base.io>
Cc: linux-sunxi@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, 
	devicetree@vger.kernel.org, sashiko-reviews@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_FROM(0.00)[bounces-302277-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sashiko.dev:url];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	HAS_REPLYTO(0.00)[wens@kernel.org]
X-Rspamd-Queue-Id: D1D605C3514
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, May 18, 2026 at 6:12=E2=80=AFPM <sashiko-bot@kernel.org> wrote:
>
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Medium] The `dphy` node is missing the required `interrupts` property =
and a SoC-specific compatible string.
> --
>
> commit ceae1b5da24380c4a30d9a8b480a23eaee3c0814
> Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>
> ARM: dts: sun8i: v3s: Add nodes for MIPI CSI-2 support
>
> This commit adds MIPI CSI-2 support to the Allwinner V3s SoC. It introduc=
es
> the device tree nodes for the CSI0 controller, the MIPI CSI-2 bridge, and
> the D-PHY block.
>
> > diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot=
/dts/allwinner/sun8i-v3s.dtsi
> > --- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> > +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> [ ... ]
> > +             dphy: d-phy@1cb2000 {
> > +                     compatible =3D "allwinner,sun6i-a31-mipi-dphy";
>
> Should a SoC-specific compatible string like "allwinner,sun8i-v3s-mipi-dp=
hy"
> be included here alongside the generic a31 fallback?

Following our general guideline, I believe it should.

> > +                     reg =3D <0x01cb2000 0x1000>;
> > +                     clocks =3D <&ccu CLK_BUS_CSI>,
> > +                              <&ccu CLK_MIPI_CSI>;
> > +                     clock-names =3D "bus", "mod";
> > +                     resets =3D <&ccu RST_BUS_CSI>;
>
> Will this node fail dtbs_check schema validation? The existing device tre=
e
> binding schema for "allwinner,sun6i-a31-mipi-dphy" requires an interrupts
> property, which appears to be missing here.

Yeah, this is definitely going to fail validation.

> If the V3s hardware physically lacks a D-PHY interrupt, would it be bette=
r
> to add the V3s-specific compatible string and update the binding schema
> to make the interrupts property conditionally optional for the V3s?

FWIW the vendor kernel has some code for the D-PHY's interrupt bits [1].
Could you add the interrupt (I'm guessing the MIPI-CSI interrupt?) and
give it a quick test?


Thanks
ChenYu

[1] https://github.com/gediz/v3s-linux-sdk/blob/master/linux-3.4/drivers/me=
dia/video/sunxi-vfe/mipi_csi/dphy/dphy_reg.c


> > +                     allwinner,direction =3D "rx";
> > +                     status =3D "disabled";
> > +                     #phy-cells =3D <0>;
> > +             };
> > +
>
> --
> Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518153339.61=
9947-1-paulk@sys-base.io?part=3D5
>

