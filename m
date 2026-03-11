Return-Path: <devicetree+bounces-274132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFzQG25ysWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:47:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7057C264CF9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:47:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A46DB3047294
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E122E331A5B;
	Wed, 11 Mar 2026 13:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EhVrLDv5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BE132E6BC
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773236653; cv=pass; b=qOc05NeKesMju+2OCMbcGNanknfyQU9yEbh2yx5Vw4UThtUg77L/wYplQothEDh8Un8ixPjd4k4DiFU4pwh9Wsx+KxxgIFU1VQfX/m2I4Cpfr9Igw30f5qBCHhawOVIlWZKv5sVnw276Pp35kMD9olcF6XpyYWHQfN/U5C+qEPc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773236653; c=relaxed/simple;
	bh=W3R2FC2TgRc2LnSZX7EqtEOJ9hedg0EMSXWHS6cz1kE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P8OR/MvmHHRDTYiYtgHA+XZWQqsu2bk+JnRXoCvk92I2FM60BSw8TXx9pPpgtG7XaxNJDx6iHdZ5FJBffwtYQhKFvA7GcY9A/X0iXRxSPwGBpjxK8N5U+V6yxkG0lCDkjg8Ox8ydHLuO9oDil1XdERi/sVVAX4zDa304QUqJznA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EhVrLDv5; arc=pass smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b96d784828bso584482066b.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:44:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773236650; cv=none;
        d=google.com; s=arc-20240605;
        b=Ff1a8XDMD0NeJoFmrVXHqoz7cLkEv+MQnxuwRwhs5EVfpnTm2qoqwaePXehXXpigvZ
         YUteXbA2AoU/VY2UvdD24BOOdSnrU8vL0LfyUZhFFyxYGe9tHlZQSJeZaPQDiGU7m840
         NUo4sYjeXiFyXT54PjNSoRpnRl0kLmpsxM3hMrgpBABevy8e6566xpu8Umgxj1XxUPBv
         UmYEMpM0bcrTfQF5OqUnewGhBTyM6ON6neRWbyMJdUG0gpMsveYBHH1e9G197K6ZpLCc
         YuPPqo8xOyedZ8HTt0wrwmDo+pyo++SZsEJJgG9NN0bJ9NIQd/6tzJCNX+K0VpPtmzZY
         ZOGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SeNXMDsnLCsfb/ggcSYfMHVBDtE5HCipWU9ndEZGSf8=;
        fh=rgMa7OqNUK+pv8Mzb7VqF+Hp+m4vpBbvh7gPtYgLMh0=;
        b=BcdTe17YDagZ40j6+G1RxZdUnZbKb3AgHkjvO8NU32lmJFzXU3QmwPrp9hlTWc+0Dr
         v6cGUAxDBd9aDXAX1kCf9NyH2WLNIpGoziFNdxdYxuYi+ipcFYUrk63k8Bj+WZmadKpg
         6IiLFE/p64eyIGCfLddQjwYSolMpY+E8wh0Yit4k2ZrDyEMIJgl2628P+HEUh5Xrp5fZ
         8GkXALawDRVcaaXFil+WhXrZW7/T1p2Rg5zlC/ccQaPisDLvBe431vfNj0NcqbgyxAzq
         meaolly2QutwFUBiMfuctDhPCEqAZIP1GrcpOt1pGtL1T5pBva1CsNmMqAUXXPucueGQ
         9ZZw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773236650; x=1773841450; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SeNXMDsnLCsfb/ggcSYfMHVBDtE5HCipWU9ndEZGSf8=;
        b=EhVrLDv5bEFNlaoGtNf4hMHYkKUdDBaH+Eagxc6CzHNM1ZSTxxzcmdpBmdFHg+ymXW
         mhubahJqYWY4xJPVT9X5I/nvwBR1smESu9rrIy6nKI/59ehUUiaMwBpDko554OXWXNV9
         PmJOqaTRRO2kb31FlQ/lL4btGrxc8F+WkLhy68NfcKqt35ruWvN/UQkCReE2mOMa6v3B
         nhgQSPiRnPoZ2fYuPtsABYCKrTMbODUJDIGidHDbSZtqhioYgMuUJYJ6wHZ6DM0eMBXn
         g1k1nxeLIqHfmwaOEqe+TVIM1DNcqUfv34XeNmY6MA6Gv3mwGa4GF/H5YnEolnBYttWB
         ArIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773236650; x=1773841450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SeNXMDsnLCsfb/ggcSYfMHVBDtE5HCipWU9ndEZGSf8=;
        b=j8glzM2Yxzco2IL12fsSR82GH1UKn9d3lHfSm8Ht3vEL+FO8REQs/u1CfW+ux9lorg
         pk2Tt8bVjRn2nl7DuxcbqTNs7pjXUWZ+NHx5zS+wKFp1Xlkg7bYfHMBe8tcHv2Arsjd6
         n/5WmXHoipHF9jn3EP1aDb4zMRIzGNNOeV9uRWQs2CIOu2TfJsuIlnDd7uaxDJ8T+gx2
         DTc1XRVlW7jR20dsIClstjCgQQeKvS0d1QPJ6oQjJMPnkS7NY5EAtfKtYRbq4Ha9HA1T
         DcbUfQbD8FOqrskg8QMIkUrjtEUgQWS+28tB0gfM9XIE924OGo5+DcZvuhg9+H0gxQUb
         CIQg==
X-Forwarded-Encrypted: i=1; AJvYcCXyO+aFzsIoTY9vuAJ6/cHE/7+bCpoqHP5MHBAhF/72JRT0BVm0KtP0n+ib1fHixAIRjyA5HJVlVUG1@vger.kernel.org
X-Gm-Message-State: AOJu0YxTKalr9EPWNEZDFWETfaeQvQPZPPUK2cnuNJ7e1r8dnvYqv92h
	EMcCeos0aY/r/y07r/7PeCCRmuXLM80FLmwSneBJalrvavGP0IDqiWg6opl1LIkru4LYhWu0E2N
	Yk55ZyHilqgpTIuBDMh5ioheSP+caKDs=
X-Gm-Gg: ATEYQzxu3vGtnjnv+uJtC54eCStSEkAo8lqkDJ034JRkKPu3aWogZfqHwy+XmYaH99Z
	Z3UGeJ0wiJFcidm36LopkNFtfsQEEs1Gh820XK4UELaq1lkkp9qmQqfjJF0Tz/XKsjMbzuIFksd
	vUBA9NHVlsgs0ZbQwb0UzNLR3pk07JrUHaAy2ISV55X5268sTwxcP+1uzDx8X/QZY1AsVf9ujzx
	WN/uVcXk5eWvEe34w36uuY1p8LhL/hPIuv2tz2y9tUgvUm48RbRjBWCTR7BIRM4GO2uMK3qs0ix
	0XN1gg==
X-Received: by 2002:a17:906:fd8c:b0:b90:8016:cfe4 with SMTP id
 a640c23a62f3a-b972e1b0254mr130356766b.10.1773236649325; Wed, 11 Mar 2026
 06:44:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311115502.7353-1-linux.amoon@gmail.com> <cc922ebf-9221-00f8-e951-903c97d24f20@rock-chips.com>
In-Reply-To: <cc922ebf-9221-00f8-e951-903c97d24f20@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 11 Mar 2026 19:13:52 +0530
X-Gm-Features: AaiRm50TsCWew8aW0KhsUlFFh00uwvfJ5vuvS56VWFIF0mdSLhpfi6uwbavR56E
Message-ID: <CANAwSgT_Qb+Xoqg4ezZaYDBu81--=yhdvQ+cskumoMMh=J2ing@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588
 on Rock 5b-5bp-5t series
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Diederik de Haas <didi.debian@cknow.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 7057C264CF9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-274132-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linuxamoon@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,radxa.com:url,rock-chips.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Shawn,

Thanks for your review comments.

On Wed, 11 Mar 2026 at 17:57, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> =E5=9C=A8 2026/03/11 =E6=98=9F=E6=9C=9F=E4=B8=89 19:54, Anand Moon =E5=86=
=99=E9=81=93:
> > Add supports-clkreq and the corresponding pinmux configurations for PCI=
e
> > ASPM L1 substates on the Rock 5B, 5B+, and 5T.
> > The supports-clkreq flag informs the PCIe controller that the hardware
> > routing for the CLKREQ# sideband signal is present. This enables suppor=
t
> > for PCIe ASPM (Active State Power Management) L1 substates, allowing fo=
r
> > better power efficiency.
> >
> > Cc: Shawn Lin <shawn.lin@rock-chips.com>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
I verified the change by comparing the lspci -vvv output from before
and after the modification.
>
> It would be better if you could put the link to the schematic here(under
> "---") for folks easy to review. I paste it here for reference=EF=BC=9A
>
> https://dl.radxa.com/rock5/5b+/docs/hw/radxa_rock5bp_v1.2_schematic.pdf
Ok, I will follow this advice next time,
>
> >   arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 9 ++++++---
> >   1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/=
arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> > index b3e76ad2d869..668b19c05f7e 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
> > @@ -468,7 +468,8 @@ map1 {
> >
> >   &pcie2x1l0 {
> >       pinctrl-names =3D "default";
> > -     pinctrl-0 =3D <&pcie2_0_rst>;
> > +     pinctrl-0 =3D <&pcie2_0_rst>, <&pcie30x1m1_0_clkreqn>;
> > +     supports-clkreq;
> >       reset-gpios =3D <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
> >       vpcie3v3-supply =3D <&vcc3v3_pcie2x1l0>;
> >       status =3D "okay";
> > @@ -476,7 +477,8 @@ &pcie2x1l0 {
> >
> >   &pcie2x1l2 {
> >       pinctrl-names =3D "default";
> > -     pinctrl-0 =3D <&pcie2_2_rst>;
> > +     pinctrl-0 =3D <&pcie2_2_rst>, <&pcie20x1m0_clkreqn>;
>
> Isn't it m1(PCIE20_1_2_CLKREQn_M1_L in the schematic)?

I just used the pinctrl label GPIO3_C7_u as a reference to select this
one. see below.

[1] https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/rockc=
hip/rk3588-base-pinctrl.dtsi#L1613-L1662

The RK3588 Technical Reference Manual (TRM) Part 2 provides the
following details regarding the clkreq# signal
pcie_clkreq_in/out_n    M0 PCIE20X1_2_CLKREQN_M0 GPIO3_C7_u
pcie_clkreq_in/out_n    M1 PCIE20X1_2_CLKREQN_M1 GPIO4_B7_u

>
> > +     supports-clkreq;
> >       reset-gpios =3D <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
> >       vpcie3v3-supply =3D <&vcc3v3_pcie2x1l2>;
> >       status =3D "okay";
> > @@ -488,7 +490,8 @@ &pcie30phy {
> >
> >   &pcie3x4 {
> >       pinctrl-names =3D "default";
> > -     pinctrl-0 =3D <&pcie3_rst>;
> > +     pinctrl-0 =3D <&pcie3_rst>, <&pcie30x4m1_clkreqn>;
>
> The pin is correct but I don't think it would support
> L1 substates because the refclk is out of control. For
> any refclk coming from external clock generator, clkreq#
> should connect to the enable pin of the clock generator.
>
I did not find the external clkreq# signal for this #clkreq signal in
the schematics.

PCIE30X4_CLKREQn_M1_L  (GPIO4_B4_u) .

> > +     supports-clkreq;
> >       reset-gpios =3D <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
> >       vpcie3v3-supply =3D <&vcc3v3_pcie30>;
> >       status =3D "okay";
> >
> > base-commit: b29fb8829bff243512bb8c8908fd39406f9fd4c3
> >

Thanks
-Anand

