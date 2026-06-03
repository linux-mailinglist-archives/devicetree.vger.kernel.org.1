Return-Path: <devicetree+bounces-306342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XFs6GeNCIGqhzQAAu9opvQ
	(envelope-from <devicetree+bounces-306342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:06:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C32DA638EE9
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 17:06:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Yji2CAmJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306342-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306342-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6BF91322C8BA
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 14:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E093ADBA5;
	Wed,  3 Jun 2026 14:50:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97B239DBE0;
	Wed,  3 Jun 2026 14:50:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780498221; cv=none; b=unULKLrnCOcfmQ95B7aTFyNNQZpcjvi+WbtGkBUV0sqh2uxSeL6i2eLyFeAzGjb5vfc1EJwRtPchwRxrwu4dmAo0bJhqqAmORkZ33QawEAHkSo2WAShKeu8t4pWnq4m+clyU44JA1Uzd8+YZMtm/tbinqiQzjFWpxonz4NpfPEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780498221; c=relaxed/simple;
	bh=//SjiivSc5FGk4dhHS1iw1C9vc2WPOgAESB5n1LQIkM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lOVgsoIyc0R9gIdwQMmEU5qL5zFZp6/yq3atLpf5GiFTgbwlL/6lydRmCRfh3xE6zDo9D8RXPwPTNYnXcpr/5KX4eh++x0KbecKd/QaDstOpJX6Hcx0EVNLXdgVsK7SwzPfwQ6F/wfoOIokZHllGo3FDWGNA/2iVX/0SXmDANig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yji2CAmJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C62B11F00893;
	Wed,  3 Jun 2026 14:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780498220;
	bh=TQx1VCiUhpyPhtw0hDNCgM1tvDyNho2naFvoOm0MHFY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Yji2CAmJkAxdk0uuI6dWHyn2RwXIToQPtT4pNSvXDP6nR+UaAfHmGGEDd4O2zyqiL
	 Ec0P2fpb2xPUjAJS8TJNQpFXuNorzdnmAcoe5FLJVfZucwli7LxLCRlXOYzZygz3Pj
	 Gyun07i3PAZRAKShvCeAggz96/DTI13Ed7n/NGV+05yX3Wct76iYExcpmVCCq7FzTI
	 tHPBnpfIBxdGcOx6nEzECY0vTPVgeqPSsUUhFCYPvZKQorLz09u3fXATcuO+72w4Al
	 Jq4jWhq1MeuUPD92kRmpGORQFmktbiIfPKa7WVdAsmu/tWKpKiocjnzr/yqUrIkO5x
	 saU7zlAUSWzGg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 02/14] arm64: dts: imx8mp-var-som-symphony: enable
 USB support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <7d8b29b9a29b1976cafc3d279482012efae1a994.1780497188.git.stefano.r@variscite.com>
References: <7d8b29b9a29b1976cafc3d279482012efae1a994.1780497188.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 14:50:18 +0000
Message-Id: <20260603145019.C62B11F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-306342-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,variscite.com:email];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: C32DA638EE9

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Invalid interrupt trigger type (IRQ_TYPE_NONE) specified for the PT=
N5150 Type-C controller.
--

commit 5a2bed0fe2fb89d900dd21def4f8d915e89c7039
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx8mp-var-som-symphony: enable USB support

This commit enables USB support on the Symphony carrier board. It configures
the PTN5150 Type-C controller, enables the USB3 controllers and PHYs, and s=
ets
up the appropriate I2C and GPIO bindings.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> index 25f707012f62c..76928b0058265 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts

[ ... ]

> @@ -95,6 +98,22 @@ usb3-sata-sel-hog {
>  			line-name =3D "usb3_sata_sel";
>  		};
>  	};
> +
> +	/* USB Type-C Controller */
> +	typec@3d {
> +		compatible =3D "nxp,ptn5150";
> +		reg =3D <0x3d>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_ptn5150>;
> +		interrupt-parent =3D <&gpio1>;
> +		interrupts =3D <5 IRQ_TYPE_NONE>;

[Severity: Low]
Is IRQ_TYPE_NONE the correct trigger type to describe this hardware?

While the extcon-ptn5150 driver hardcodes IRQF_TRIGGER_FALLING when request=
ing
the interrupt (which mitigates this on Linux), device trees should accurate=
ly
describe the hardware independently of driver defaults.=20

Would it be better to explicitly specify the active-low or falling-edge
interrupt trigger (e.g., IRQ_TYPE_LEVEL_LOW or IRQ_TYPE_EDGE_FALLING) in
the typec@3d node instead of leaving it unconfigured?

> +
> +		port {
> +			typec_dr_sw: endpoint {
> +				remote-endpoint =3D <&usb3_drd_sw>;
> +			};
> +		};
> +	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780497188.gi=
t.stefano.r@variscite.com?part=3D2

