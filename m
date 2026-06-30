Return-Path: <devicetree+bounces-317661-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MJITNqarQ2rIegoAu9opvQ
	(envelope-from <devicetree+bounces-317661-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:42:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 316256E3BE2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:42:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XzgWMl+0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317661-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317661-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD42E32763F1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5B183CBE84;
	Tue, 30 Jun 2026 11:03:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934BC388E51;
	Tue, 30 Jun 2026 11:03:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782817425; cv=none; b=IZHXsJh8uf6Sr6+07LVExSmh+EN+70HsKxjmhUQJ8gq/7Rqyl2hXR07N6wvzt+K2/J4gnKfYKCtKmGcRwpUEUk4fl/UPGrgVE7nifFj2VjGLGD9TlaE1pbeXdDI78liwAL8IaJk1axqzPB7YRo+8C7DhQuUcV0ZFesPgCdLHQUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782817425; c=relaxed/simple;
	bh=mW3ef+ks4U/CQkN0QFqGkrFCCpCO+1oMFP//obbWpfw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bzcKG4qOJ7Pp5cNn+Szi+yHSuQSw9uJSnXvsDTueuZ8IJgPZlj7bM0k5D1nu1iTVlar9OaBarQ/YbjrHGqBc/yLESz5MUrVjMAYrSR59ahL31JTJmL5wvdPjLfYgMThcVVHJLFqG0zuqgOMHMu3oml0FlcKor2FB8jEYPp98ELs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzgWMl+0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9F501F000E9;
	Tue, 30 Jun 2026 11:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782817424;
	bh=OiWv7FK3uef9FWIdlJX8EOaHiXMMluLiE6zQVqNbR3I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XzgWMl+0bDAzpPXuEbXruFnBoqu+rQRAWrhdNWvHu5Z2HI2Ayh20QgyMb3/q5DSVv
	 hNtFbkzCi2IqhHkom9AtJ9sQK0T0PC+2LGc/PSH550K/ia8Ib5plA+aBMPL4RE/6ZU
	 MxkKR6T3pmNW0BjP+CHYW8D+z01tmqm65W2eW/vcgPHHMmllP4ZaMfY6fynHh6u1Bd
	 8/kDAQ1Rot1j+V4Bxdf5dRpJYqhVe55jnKI4LRZABr7rfDQR39a71/2yFzpfh8DkTU
	 wGSfZFtP0g0Tem6G8F75sK8PzoM8NCGOIxKbmokqaaJ7wGfoi4JKA/oYesBFk82TmL
	 q3F3XH8iJuc1g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/4] arm64: dts: imx95: switch usb3 controller to
 flattened model
Reply-To: sashiko-reviews@lists.linux.dev
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: Frank.Li@kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev
In-Reply-To: <20260630103629.76604-3-xu.yang_2@oss.nxp.com>
References: <20260630103629.76604-1-xu.yang_2@oss.nxp.com>
 <20260630103629.76604-3-xu.yang_2@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 11:03:43 +0000
Message-Id: <20260630110343.E9F501F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-317661-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,nxp.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:xu.yang_2@oss.nxp.com,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 316256E3BE2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added wrapper node `bus@4c100000` contains a unit address=
 but lacks a `reg` property, violating the Devicetree Specification and tri=
ggering a DTC warning.
--

commit a2bcbb6922581174c083a123854fd752994b591f
Author: Xu Yang <xu.yang_2@nxp.com>

arm64: dts: imx95: switch usb3 controller to flattened model

This commit switches the USB3 controller to use a flattened model. It adds
a simple-bus wrapper to constrain the DMA address range so the controller
can access memory correctly.

> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/d=
ts/freescale/imx95.dtsi
> index 71394871d8dd0..80f935af5b49c 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
[ ... ]
> @@ -1772,45 +1772,45 @@ smmu: iommu@490d0000 {
[ ... ]
> +		bus@4c100000 {
> +			compatible =3D "simple-bus";
>  			#address-cells =3D <2>;
>  			#size-cells =3D <2>;
> -			ranges;
> -			power-domains =3D <&scmi_devpd IMX95_PD_HSIO_TOP>;
>  			dma-ranges =3D <0x0 0x0 0x0 0x0 0x10 0x0>;
> -			status =3D "disabled";
> +			ranges;

[Severity: Low]
Does this new wrapper node trigger a DTC unit_address_vs_reg warning?

Because the node has a unit address (@4c100000) but lacks a reg property,
it violates the devicetree specification. Empty ranges properties are
ignored by DTC for this check, which will result in a build warning when
compiling with W=3D1.

> =20
> -			usb3_dwc3: usb@4c100000 {
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630103629.7660=
4-1-xu.yang_2@oss.nxp.com?part=3D3

