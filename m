Return-Path: <devicetree+bounces-306260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vf4qM2IuIGoOyQAAu9opvQ
	(envelope-from <devicetree+bounces-306260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 15:38:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D80638240
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 15:38:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iD0jlQ0c;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306260-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306260-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A0374317ADDA
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 13:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8026C3148CF;
	Wed,  3 Jun 2026 13:23:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B26310651;
	Wed,  3 Jun 2026 13:23:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780492989; cv=none; b=JIPWoiZ5OtRHgCG/O7mxs9JI+in29lFoc+tZMign2V9udb4H30jC8gfg/cTz9YiKAG9S1g/qv5vLSsnmoZSdRn8PT880iUAW1HUPncbyCZjAp0n7Kump63a8nygISOF5t61JG+aqF0QAx6/jOOfRiZaIirVOelcwY52TrMdTJjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780492989; c=relaxed/simple;
	bh=+yF+tHbRfxzgu5n+5xF1YEHJp/6nbh+4/qITnXQIvd8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=S+kIfx4Ug20d2oLSjnixWrf3wt18YSwHtPoW1JojMlP1LpHlZSqdS6YKicDe5ImfApAQDkW7TCc5wbIaHVYBehA18pcg7vSxOgQdhsqU1mzeH30nSGEfu1zNrhgctEZEsVN6z19L1v+LhihLMhfpDHLzuySeTHepp2vf7tWo3/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iD0jlQ0c; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAF7C1F00893;
	Wed,  3 Jun 2026 13:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780492988;
	bh=vEiDIIK40s/ysumqK6J++thBI87bU8a9yEVddcam5c4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iD0jlQ0cAQ7BVrAP/zrtHYk2DWJtyvMigquUvZcxahKtH5s2JdM/3I9uRVdVEmFsX
	 65CwbksyHHzqoA1LdUU/8PZEzY5JnImlJ3r0qBGCAGHkHCg7+Ibb6hOrnR4jttZHOA
	 NzNn2iI2h6g0VYcsZjHl9INZFJ7OX1oNNB2hj/LUVYqmUuC53zEjajVS4g07/evOqI
	 MJfo9hTftgk2QhQLdjm6I5XJIzkU6znmV4tCej64WvccFGVWekUG9RBLA83Ro1rJZ6
	 CCMaQKfMa35AzyOWakWicDNGS9V6ZnNPRzfACFDPq+AezH/C+0vBok0knCtHVWW1Am
	 bYEdcczvIRh1A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/12] arm64: dts: imx8mp-var-som-symphony: enable
 PCIe
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: imx@lists.linux.dev, devicetree@vger.kernel.org, Frank.Li@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <9a937fa5f65dd23515d4e32f8a9cdbe5a674c9a7.1780492180.git.stefano.r@variscite.com>
References: <9a937fa5f65dd23515d4e32f8a9cdbe5a674c9a7.1780492180.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 13:23:06 +0000
Message-Id: <20260603132307.AAF7C1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306260-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,variscite.com:email,sashiko.dev:url,lists.linux.dev:replyto];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 56D80638240

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing PERST# reset signal configuration for the PCIe slot.
--

commit 2705091bb2c968ad6e44f8cd4b794c2f5e63b41c
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx8mp-var-som-symphony: enable PCIe
   =20
This commit adds the PCIe reference clock and enables the PCIe controller
and PHY nodes on the i.MX8MP Symphony carrier board.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> index 9500c9bf0f421..a928dc2d9adce 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts

[ ... ]

> @@ -146,6 +152,17 @@ rtc@68 {
>  	};
>  };
> =20
> +&pcie {
> +	status =3D "okay";
> +};

[Severity: High]
Will this configuration successfully enumerate PCIe endpoints on the Sympho=
ny
carrier board without the reset-gpios property?

The Symphony baseboard typically routes the PCIe slot's PERST# signal to pin
1 of the pcal6408 I2C GPIO expander (as seen on the shared imx8mm symphony
board layout). Without configuring reset-gpios =3D <&pcal6408 1 GPIO_ACTIVE=
_LOW>;
here, the host driver in drivers/pci/controller/dwc/pci-imx6.c might not be
able to fetch and de-assert the reset signal.

Could this leave connected PCIe endpoint devices held in hardware reset?

> +
> +&pcie_phy {
> +	clocks =3D <&pcie0_refclk>;
> +	clock-names =3D "ref";
> +	fsl,refclk-pad-mode =3D <IMX8_PCIE_REFCLK_PAD_INPUT>;
> +	status =3D "okay";
> +};

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780492180.gi=
t.stefano.r@variscite.com?part=3D6

