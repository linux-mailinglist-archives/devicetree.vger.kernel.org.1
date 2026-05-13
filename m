Return-Path: <devicetree+bounces-297215-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJv1MrgMBWqBRwIAu9opvQ
	(envelope-from <devicetree+bounces-297215-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 01:43:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6028753C1A6
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 01:43:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 10B22301E552
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 23:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A473B9618;
	Wed, 13 May 2026 23:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1klvFJS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8492E39C645
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 23:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778715828; cv=none; b=VrC5OdhEqqaxyiB/+x4A+2wrmUWmH2erheTFGfwqnA6ULsZLKuJwwLP5aQAlRD7dh9cO3hCzmrXVw36YUMgepjjG4vGp6TRES7jtYEcwB9U3+aorMjmCsg9IYRbxuCIiTIjwzqvefXFw7m4ptbsbM46UHI/yDdx9la081rg/mDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778715828; c=relaxed/simple;
	bh=kjXafoNyC6xXrbwTzAWBdWNO+WjvdZh5yjzepPX80Fs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gQIdaFtsgz02lDJJde5Nfr68pYF3lqqOQBqFZy+kPtk8u4pfjHSLOr9pt/D4zXWS3Xe63Bv0hpnn8kecVjleq77gwIVvII/HCz8ZtGTK5msRLWwO34jmFU4tMh2W+Ll0IFgoIkwL2bVJSxfN8v2KVCdeQxyOFrKEaPYjRvraUfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1klvFJS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4A11C19425;
	Wed, 13 May 2026 23:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778715828;
	bh=kjXafoNyC6xXrbwTzAWBdWNO+WjvdZh5yjzepPX80Fs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=t1klvFJSc6g8Ih1n5Dw3urb9uJiT+cIaoGVE6zsc5qQf4XOws74fe8Qs6iLCRTX9l
	 XJhHyvhfSPg/+WkqXI6JzPave1U2LZgwuWv5+uHofH8jdQAHLYLmCMb8Dom0TqaXbt
	 msEbAk+2+XqXxgpWDvBJ4PKal44HSSVYFs0x3znOHOFgWrdMLPWwCdnHQ6SkAH44Bq
	 MCLW0HOSX/wTEwZg7mz8/5fU+gDQZKiRboH1jF+A468ouc0ZK45KctkzNVsHjv36RF
	 BaprgXWK2w15co5tlcDC/R4MfCFZHrCdpPnRE2CadKZ21brayDrbeTuj/T5aBe6+oG
	 x0wZhqfU/QACw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] Enable wifi on the BeagleV-Ahead
Reply-To: sashiko-reviews@lists.linux.dev
To: "Thomas Gerner" <thomas.gerner@muenchen-mail.de>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260512173440.163179-1-thomas.gerner@muenchen-mail.de>
References: <20260512173440.163179-1-thomas.gerner@muenchen-mail.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 23:43:47 +0000
Message-Id: <20260513234347.D4A11C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 6028753C1A6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297215-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.1:email,lists.linux.dev:replyto,sashiko.dev:url,muenchen-mail.de:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing mandatory fallback compatible string `brcm,bcm4329-fmac` s=
ilently breaks driver interrupt parsing.
- [Low] Pinctrl node names violate the `thead,th1520-pinctrl` schema constr=
aints.
--

commit 36b13556394c8110c85a42dc09295453444c2a36
Author: Thomas Gerner <thomas.gerner@muenchen-mail.de>

Enable wifi on the BeagleV-Ahead
   =20
The BeagleV-Ahead board uses an AP6203BM WiFi chip from AMPAK Technology
Inc. connected to SDIO1.

> diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/ri=
scv/boot/dts/thead/th1520-beaglev-ahead.dts
> index 91f3f9b987bc3..86da4bd8ceaf9 100644
> --- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
> +++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
[ ... ]
> @@ -239,6 +244,28 @@ rx-pins {
>  			slew-rate =3D <0>;
>  		};
>  	};
> +
> +	wifi_pins: wifi-pins {
> +		host-wake-wl {

Does this naming follow the thead,th1520-pinctrl schema constraints?

The schema requires pad group nodes to match the regex -[0-9]+$ (for
example, wifi-0) and inner pin-mux child nodes to match -pins$ (for
example, host-wake-pins).

Using wifi-pins and host-wake-wl / reg-on-wl will trigger dtbs_check
validation errors.

> +			pins =3D "GPIO2_25";
> +			function =3D "gpio";
> +			bias-disable;
> +			drive-strength =3D <1>;
> +			input-enable;
> +			input-schmitt-disable;
> +			slew-rate =3D <0>;
> +		};
> +
> +		reg-on-wl {
[ ... ]
> +	wifi@1 {
> +		compatible =3D "cypress,cyw43012-fmac";

Does this compatible string need the brcm,bcm4329-fmac fallback?

In drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c, brcmf_of_probe()
explicitly checks for this fallback:

	if (!of_device_is_compatible(np, "brcm,bcm4329-fmac"))
		return;

Without the fallback string, the driver skips parsing the interrupts
property, which breaks the wake-on-WLAN functionality intended by
configuring the host-wake pin.

> +		reg =3D <1>;
> +		interrupt-parent =3D <&gpio2>;
> +		interrupts =3D <25 IRQ_TYPE_EDGE_RISING>;
> +		interrupt-names =3D "host-wake";
> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512173440.1631=
79-1-thomas.gerner@muenchen-mail.de?part=3D1

