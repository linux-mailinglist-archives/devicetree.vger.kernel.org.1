Return-Path: <devicetree+bounces-325476-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LhMRL8zQVGrifAAAu9opvQ
	(envelope-from <devicetree+bounces-325476-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:49:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 532E174A873
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:49:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nvGLZvxs;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325476-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325476-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6156302FB7F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18A5D3EC2F6;
	Mon, 13 Jul 2026 11:47:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5004C3ECBCF;
	Mon, 13 Jul 2026 11:47:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783943243; cv=none; b=nWIfEGkmZnkO1L1QLvKuDMcV3rtQkXEZf8AOifAlYJcqLUhWhfZRwUoOPQt3F0+HEVII4r6ITgKuf4Ovsm2iy3xP5T3+liTClUlblNQNpy1iFDVLV0kqYimprfMjPdZqRsgqvZ6BeUnaLK72akNUA6SpkXtMxl+NOcFITiO/M9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783943243; c=relaxed/simple;
	bh=Omg7OV/HOAIfxETJHYSyrLPMJBbdoEDaKNUm+5l7iwQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SiZSNMQoTYFE0D6wPdKTn3cFXRxzPTTg9XK3DkfnhrBCdIJEd++qE7PCRpFT4vKoZVgOUAS8mx2LzLATk5n4S10XaUhS2zJlJuY2dAA5v8hms7mOeRA9KehgzoYPCpBVd3mZmzQvugiPmvhqEbMQVwZVRTuGzg2/VeK9Rzqb9j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvGLZvxs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D7191F000E9;
	Mon, 13 Jul 2026 11:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783943240;
	bh=RqJCvDNf+cv4mF5ixAcmDkjRxbZXLHVwRp4EQOxnfjw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nvGLZvxsM/kZqmVpoqzreUTnJpSH/w4VLpVZzvdnimX62rHA2kXf6QviyWz7FAcYm
	 OsfwWCrWM1TK8DVXIdsrFQ6iuDnrr/jihKaXhsKFPUTvaw8pt1u3Q4Ztkd254d3ATN
	 KuSomhU469IL/ng4wfnvF8PCSdwAJnFD2xdFZ43Ge/4+eqoSY5uDSGII8bzferrcJ8
	 eAnvww4FpPxI1W3qXe0OIoknOHmvJuJauNkRyNps+kqLEqoodAHnCGR/YWkcsDNhtj
	 et9Q3ZEh0ettwl0uC5FkRGhbpquB5EFxxc/YesTCdScj3zscSSRdWo121li2rdq+C6
	 JcRHG/VjVOJvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 14/18] arm64: dts: ti: k3-j722s-evm: Add overlay for
 J7EXPA01EVM Fusion2
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yemike Abhilash Chandra" <y-abhilashchandra@ti.com>
Cc: Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260713113423.2310443-15-y-abhilashchandra@ti.com>
References: <20260713113423.2310443-1-y-abhilashchandra@ti.com>
 <20260713113423.2310443-15-y-abhilashchandra@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 11:47:19 +0000
Message-Id: <20260713114720.5D7191F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-325476-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,ti.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:y-abhilashchandra@ti.com,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 532E174A873

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Incomplete fix of whitespace and styling inconsistencies despite co=
mmit message claims.
- [Low] Assigning `pinctrl-0` directly to the shared `&main_gpio0` controll=
er makes the overlay fragile and prone to silent conflicts.
--

--- Patch [14]: [PATCH v2 14/18] arm64: dts: ti: k3-j722s-evm: Add overlay =
for J7EXPA01EVM Fusion2 ---
commit f6225e8592b3763543d75d2b7569bdc1e8dfb921
Author: Yemike Abhilash Chandra <y-abhilashchandra@ti.com>

arm64: dts: ti: k3-j722s-evm: Add overlay for J7EXPA01EVM Fusion2

This commit adds a device tree overlay to support the J7EXPA01EVM Fusion2
serial capture expansion board on the J722S-EVM. It defines configurations
for 3 UB9702 deserializers aggregating data over the FPDLink-IV interface.

> diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm-fpdlink-iv-fusion.dtso b=
/arch/arm64/boot/dts/ti/k3-j722s-evm-fpdlink-iv-fusion.dtso
> new file mode 100644
> index 0000000000000..ed8fdfa65005e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j722s-evm-fpdlink-iv-fusion.dtso
[ ... ]
> +&main_gpio0 {
> +        pinctrl-names =3D "default";
> +        pinctrl-0 =3D <&csi_expansion_interface_reset>;

[Severity: Low]
Is it safe to assign pinctrl-0 directly to the shared &main_gpio0 controller
in an overlay?

Since DT overlays overwrite target properties, if another overlay also
relies on main_gpio0 and sets pinctrl-0, wouldn't they unconditionally
clobber each other's pinmux configurations? Should this be scoped strictly
to the localized line68-hog node instead?

Also, this isn't a bug, but there appear to be 8 spaces used for indentation
here rather than tabs. The v2 changelog mentioned fixing whitespace
inconsistencies, was this one missed?

> +
> +	line68-hog{

[Severity: Low]
This isn't a bug, but there is a missing space before the brace here.

> +		gpio-hog;
> +		gpios =3D <68 GPIO_ACTIVE_HIGH>;
[ ... ]
> +		deser@3d {
> +			compatible =3D "ti,ds90ub9702-q1";
> +			reg =3D <0x3d>;
> +			clocks =3D <&clk_fusion_25M_fixed>;
> +			clock-names =3D "refclk";
> +			i2c-alias-pool =3D <0x4a 0x4b 0x4c 0x4d 0x4e 0x4f>;
> +
> +			deserializer_0_ports: ports {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +
> +				port@0{
> +					reg=3D <0>;
> +					status =3D "disabled";
> +				};

[Severity: Low]
This isn't a bug, but the v2 changelog claims to fix DTS styling and
whitespace inconsistencies in port definitions.

It looks like there are still missing spaces before the braces and
after the equal sign for reg in the deser@3d port definitions.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713113423.2310=
443-1-y-abhilashchandra@ti.com?part=3D14

