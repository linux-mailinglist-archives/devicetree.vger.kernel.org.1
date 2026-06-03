Return-Path: <devicetree+bounces-306370-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RBB+IKlIIGqb0AAAu9opvQ
	(envelope-from <devicetree+bounces-306370-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:30:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 148AB639352
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:30:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gWqMOU14;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306370-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306370-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2A6CB304553D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 15:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 284483B6BEC;
	Wed,  3 Jun 2026 15:20:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD25396D2E;
	Wed,  3 Jun 2026 15:20:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780500026; cv=none; b=NTvlLMjwge1zluMwrhbzQDKzfh+DrRdoy5yB+NWKydAdZFRDq1rA8HljNSsSfWE238qARr25+ksuUVKDpC2394GXD8eL3AtQih9lFmCp/29t7oAa7A9fQShKqsNMVVDdfOVDHI9XBrU87xa3PWk8FoScdzYAlZjIuafXBOsa3R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780500026; c=relaxed/simple;
	bh=T94aojp7Y1magEVlWMSVQW54PGqV3z7MrayC13iNTXE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PJfsIOzFt/rVlqhaQhQaxGOxhNa2JUn5L9QwZCg3UMXzwHeetViAXwB38dgDXjmOIrprNOlTWT4A4J90Ac3Av7UCnm0KqmZtsUYxEtwcaJg/prC5JmugTZEDhre11gc5MmRdp7c00Vbs+Vf4JDRNZx0hogLm8Vu3rlM+WJcMDsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWqMOU14; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5ED4F1F00893;
	Wed,  3 Jun 2026 15:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780500024;
	bh=d9IEQjYBPa0mRjM+hhCeDTonCZfy0dp3TeDAxyQL43k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gWqMOU142LNUQ0+t8nhkK6fGVltmUlUCGnICo0rSn4MSd4IgfdhcQPq+paUgZ79mu
	 lxEL3Feot4oYCAQ9c4gN9luyhtrsyK3k/azVYNpEwVU0yUNcXn9+W+bk+IMZs1Hu++
	 hRxw2lOwCLKGezWfqp69eMdO11O0/aIwMysmBOpNkQTcR1cMn1rKQOz2ihQlSgAY3w
	 RyMxqrEz5VmBi1CRfUTr2UHyXmwQaS5jJ/nILiQw3kGTgQuy3tZto6NQJIIa8plD5r
	 V3sx4xyRr+hytXAWlPRc3vXUL5PWddYm5TLDTtBEgkWNlop/fpeZ5Ius3l1Nh028Pq
	 bytIpFR3am6Qg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 07/14] arm64: dts: imx8mp-var-som-symphony: add HDMI
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: Frank.Li@kernel.org, imx@lists.linux.dev, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <24154af5fc04cf4b355dbebc33566f83d85b222e.1780497188.git.stefano.r@variscite.com>
References: <24154af5fc04cf4b355dbebc33566f83d85b222e.1780497188.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 15:20:23 +0000
Message-Id: <20260603152024.5ED4F1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306370-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,variscite.com:email,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 148AB639352

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The HDMI Hot Plug Detect (HPD) pin configuration is missing from=
 the pinctrl group, breaking HDMI display detection.
--

commit f9812a899ecb88eea9dc09a1da7735f389e9686c
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx8mp-var-som-symphony: add HDMI support

Enable the HDMI display pipeline and HDMI audio support on the Symphony
carrier board.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> index db0ae706f6487..f7eebf265fab2 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts

[ ... ]

> @@ -253,6 +306,14 @@ &usdhc2 {
>  };
> =20
>  &iomuxc {
> +	pinctrl_hdmi: hdmigrp {
> +		fsl,pins =3D <
> +			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL			0x1c2
> +			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA			0x1c2
> +			MX8MP_IOMUXC_HDMI_CEC__HDMIMIX_HDMI_CEC				0x10

[Severity: Medium]
Will this configuration allow the driver to reliably detect monitor hotplug
events?

It appears the Hot Plug Detect (HPD) pin configuration (such as
MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD) is missing from this pinctrl group,
and there is no hpd-gpios property specified for the HDMI node. Without a
configured HPD pin, the display driver may fail to detect when a monitor is
connected, potentially leaving the display undetected or blank.

> +		>;
> +	};
> +
>  	pinctrl_i2c3: i2c3grp {
>  		fsl,pins =3D <
>  			MX8MP_IOMUXC_I2C3_SCL__I2C3_SCL                                 0x400=
001c2

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780497188.gi=
t.stefano.r@variscite.com?part=3D7

