Return-Path: <devicetree+bounces-320222-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7qSINazPR2qJfgAAu9opvQ
	(envelope-from <devicetree+bounces-320222-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 17:05:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C35703B25
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 17:05:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=C5xE219E;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320222-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320222-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3ECFB3009F94
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 15:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F7213D3305;
	Fri,  3 Jul 2026 15:00:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6231CD1E4;
	Fri,  3 Jul 2026 15:00:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783090847; cv=none; b=hlNRwt2Cvei7Wqf4ATmlQsCj8FyRnzUJoEz44nmHDeCxPvX6eSxFiD4ehozDiOf11M8Mvje5ydq9GrAn9tNJAhFXs+pIH/SoLUFpQVAe3m6dxoGSyN2UpctaJ4Yc13+5TTkZQpQpM401DM1c/6H9ZxS/KFxjt8q0i+Sl8iNz2cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783090847; c=relaxed/simple;
	bh=sNrXTrOlExO1YdFrGnDjUpRBIy/Zo5hygxKbO575b1A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ju8fn0D/L2IQNclktcafNBG7j66HziGrYXy6PnWsU996rwPN3+sAQ2V0HtihKp7V9uQrcS3Co4hbPl4mLhE90BzoF29W6DxHk1gdNvTDApJg52Mw0CzEBhosCntCUPJTYFKGCLvlYpv83DHMFe1Qco+pV9MRFCSNHQY5YypllHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5xE219E; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 971DB1F000E9;
	Fri,  3 Jul 2026 15:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783090846;
	bh=TfcbdupBAy3B/BO8CtatzQ/bunBeI+zhBkmksX3kLSs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=C5xE219EAA5v8yXvL8HFv2lx3YP4pKKLLFIOJhjjwfKG7zzfwPmg82K0JecJIDuTd
	 SZdnn4UcVpnWG95fnQpCKwtlAfjyjJnezLRLns9HIskgvKGCmRZ7eVY145C7CjHUN5
	 sC8W7hZoQbpheW/nXx/uoEVFajAQ/b0lqdg6IFuJc3jMe88SOFgK5SSFh3yzdkfjok
	 gTyYC7N2iNR/jF/9XUU3HO+2tt6nIS4IyYTJ0dD3zzinWvSsGVs56RY33dqUPbCbzy
	 BVNIqOizERq219y1X3RglyF3TBj0FAspP5TWn7LetSkFO/XuXB4lREC7ez4VK8VH/U
	 pA4r64Hfw6Ucg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/1] arm64: dts: freescale: imx95-var-dart: enable
 NETC block control
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260703144922.231608-1-stefano.r@variscite.com>
References: <20260703144922.231608-1-stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 15:00:45 +0000
Message-Id: <20260703150045.971DB1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320222-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:robh@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,variscite.com:email];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24C35703B25

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing dependency for `netc_blk_ctrl` causing a potential system =
hang on boot.
--

commit 14e353bd1da7516058662c0b4b79b720409b4211
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: freescale: imx95-var-dart: enable NETC block control

This commit enables the NETC block control node on the DART-MX95 SoM,
which is necessary for the NETC Ethernet ports to function.

> diff --git a/arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi b/arch/arm=
64/boot/dts/freescale/imx95-var-dart.dtsi
> index a20fadacaa6d8..7c29082a40c5b 100644
> --- a/arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95-var-dart.dtsi
> @@ -176,6 +176,10 @@ &mu7 {
>  	status =3D "okay";
>  };
> =20
> +&netc_blk_ctrl {
> +	status =3D "okay";
> +};
> +

[Severity: High]
Does missing the netcmix_blk_ctrl dependency here risk a system hang on boo=
t?

The nxp,imx95-netc-blk-ctrl driver maps the netcmix memory block and writes
to it unconditionally during probe. Accessing this region safely requires
the IMX95_CLK_BUSNETCMIX bus clock to be enabled.

Since that clock is exclusively requested and managed by the
nxp,imx95-netcmix-blk-ctrl clock controller driver, leaving netcmix_blk_ctrl
disabled means the kernel won't enable the required bus clock.

If the bootloader leaves the clock off, this will crash with an SError /
asynchronous external abort during netc_blk_ctrl_probe(). Even if the
bootloader leaves it on, clk_disable_unused() might turn it off later,
crashing the system on any subsequent accesses.

Should netcmix_blk_ctrl be enabled alongside netc_blk_ctrl to satisfy this
hardware dependency?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703144922.2316=
08-1-stefano.r@variscite.com?part=3D1

