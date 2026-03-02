Return-Path: <devicetree+bounces-270104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uN2nCMOspWmpDgAAu9opvQ
	(envelope-from <devicetree+bounces-270104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:29:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1E81DBD72
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:29:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E865B3027966
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5009140758B;
	Mon,  2 Mar 2026 15:27:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="fv7lIBiF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A834E407596;
	Mon,  2 Mar 2026 15:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772465262; cv=none; b=KplwohiACb1dbKevDlzYEPfn9nO2mWVD7ZJxEUEKF0HpS402pa3s3wu5k2tn/Mu1S1Qs85NGa3J34Mc6bRCnHLtKVChfnA9NYi5ovMifKpvjK3DREq3KHYQMKbbMoGYAdK76VT7axAkJ8/OgF2Zw7bjyxbSROr7GKlJw49Hl/wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772465262; c=relaxed/simple;
	bh=NOAMNSjFrK0juGBFYHnkLOx/HhdaydTkGsvVrMbhW1Q=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=UgcX4ZbP6H8Yhe+TTxdK9nzWNjuBN1W3PHQC/AoOPKWuP8rHZTtKqBVZYos+O/ngc1QBXZAL1B2M848Sa7NrKh+A4xGe602gC1hV36teb02Me7GVAZtSsr+q1E1bheyRbW6pfMd/5zGKUC7fIrVSVEou6nDpeaZZb9R3wD1GMCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=fv7lIBiF; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 3A2641A20E0;
	Mon,  2 Mar 2026 15:27:39 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0E0195FE89;
	Mon,  2 Mar 2026 15:27:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9F2D11036959A;
	Mon,  2 Mar 2026 16:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772465258; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=1GjRcmd2N1iD/j57hFFXaD6th41deMj02/OYvYpEwHs=;
	b=fv7lIBiFrbCktvUOwf0ivICHAgDzgwIDfQeP757nQejg6+Oi+oTMmiUHB/mPzORVQNrfzM
	GffOoQ/G3MYr75aTxULWg2uDqjhZ4p6Wy/TJMexkbIjF5oa18xFnSQMqTrxdFeZRaHrcNA
	sE4A1FvGAtBunq2H8+SGHJOmcExH90p3WUcRRiioHXlJLFiLoNf5HuUibgHg/7I/v/mbtr
	xZDgYKIUMArYToMFD+5eqaboW71UakSKKaWk1xfWE0yL8lJCAGLbWjXfhBukAtXpEKWQte
	ZTSB/pqW4NXm99JykrWfYSqymqSRRXuEwSE4+JN2d/RGzYUShLq+mgam0fWurw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Gabor Juhos <j4g8y7@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
Subject: Re: [PATCH] arm64: dts: marvell: armada-3720: drop
 'marvell,xenon-emmc' properties
In-Reply-To: <20260221-armada-37xx-drop-xenon-emmc-v1-1-3110e83091b8@gmail.com>
References: <20260221-armada-37xx-drop-xenon-emmc-v1-1-3110e83091b8@gmail.com>
Date: Mon, 02 Mar 2026 16:27:36 +0100
Message-ID: <87pl5mfdzr.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: BB1E81DBD72
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-270104-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lunn.ch,kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:url]
X-Rspamd-Action: no action

Gabor Juhos <j4g8y7@gmail.com> writes:

> The 'marvell,xenon-emmc' property used in some device trees of Armada 3720
> based boards is not documented. Due to this dtbs_check throws warnings:
>
>   .../armada-3720-atlas-v5.dtb: mmc@d8000 (marvell,armada-3700-sdhci): Un=
evaluated properties are not allowed ('marvell,xenon-emmc' was unexpected)
>   .../armada-3720-espressobin-emmc.dtb: mmc@d8000 (marvell,armada-3700-sd=
hci): Unevaluated properties are not allowed ('marvell,xenon-emmc' was unex=
pected)
>
> Apart from the warnings, 'git grep' says that the property is used in
> device trees only:
>
>   $ git grep -n 'marvell,xenon-emmc'
>   arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts:85:        marvell=
,xenon-emmc;
>   arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi:81:    marvell=
,xenon-emmc;
>
> Although handling of the property was there in an early version of
> the 'sdhci-xenon' driver during the initial submission [1], but that
> part has been removed in later versions.
>
> Drop the property from the affected device trees due to the reasons
> mentioned above.
>
> No functional changes intended, compile tested only.
>
> Link: https://lore.kernel.org/r/0390e7a05b6163deabb545f93729ea615eeaaee2.=
1477911954.git-series.gregory.clement@free-electrons.com # [1]
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>

Applied on mvebu/dt64

Thanks,

Gregory
> ---
>  arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts     | 1 -
>  arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi | 1 -
>  2 files changed, 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts b/arch/=
arm64/boot/dts/marvell/armada-3720-atlas-v5.dts
> index 070d10a705bbdf74cd63f6229f214b945fc78699..a313d5687789e349a1a25d69a=
b4bfbd0927dd060 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts
> @@ -82,7 +82,6 @@ &sdhci0 {
>  	mmc-ddr-1_8v;
>  	mmc-hs400-1_8v;
>  	sd-uhs-sdr104;
> -	marvell,xenon-emmc;
>  	marvell,xenon-tun-count =3D <9>;
>  	marvell,pad-type =3D "fixed-1-8v";
>  	vqmmc-supply =3D <&vsdc_reg>;
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi b/a=
rch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
> index fed2dcecb323f0541d076988164f12e68ed37fcc..37e16fb3a3832292484d602c3=
86ec7ffec1f55bd 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
> @@ -78,7 +78,6 @@ &sdhci0 {
>  	bus-width =3D <8>;
>  	mmc-ddr-1_8v;
>  	mmc-hs400-1_8v;
> -	marvell,xenon-emmc;
>  	marvell,xenon-tun-count =3D <9>;
>  	marvell,pad-type =3D "fixed-1-8v";
>=20=20
>
> ---
> base-commit: fcaf733ca526b69595ed1d227e2cc59ddd24eff7
> change-id: 20260221-armada-37xx-drop-xenon-emmc-9514c385e766
>
> Best regards,
> --=20
> Gabor Juhos <j4g8y7@gmail.com>
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

