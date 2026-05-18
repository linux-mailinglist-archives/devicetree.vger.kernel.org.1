Return-Path: <devicetree+bounces-299638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMQQHAqHC2p1IwUAu9opvQ
	(envelope-from <devicetree+bounces-299638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 23:39:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AD7573FBE
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 23:39:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1C13C302974B
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 21:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F357339B96B;
	Mon, 18 May 2026 21:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nu9/JrHK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D052E39A050
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 21:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779140204; cv=none; b=Fz20kyj8+wrA2emJZKVbqLdoHi5BF9YDuAjaS12mCysePHkOECON+qXdtlpdofUz1xpJUv6DD3t/PYeTA8NYVCkyNGl79V/nFt3wiT6bYzxPyNk0nuyDaRYXvJIM+8OcZPZ0V0aX6Lva9a0LfC6KvwUdQAxNSEPpc5QS4Q6jT7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779140204; c=relaxed/simple;
	bh=JsIsX/CcXeuS71ShkufEV8LTaUP4qMvdBeuiASpj99E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=A4ri3dCRRiN3qRTxUd3TZHWW5uoT7xRlmO546JbMPAPM3AUQ+qaW8RI1n3465/5G20awVmWXELOJseLksVsmjZQ/hnYAmefZtm6C21U5NlDrLc1K1Kp5n7pena4uCEwwP5Ln6UOHq9f3hUwgufiHRsdnRviwqHrOCTJpB3D/zws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nu9/JrHK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50880C2BCB7;
	Mon, 18 May 2026 21:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779140204;
	bh=JsIsX/CcXeuS71ShkufEV8LTaUP4qMvdBeuiASpj99E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=nu9/JrHKIBlRlkKSTZK9Sl+oibs3nDAmZLDYA1MPtDGO65jHDcTFnggvESaKsA+m4
	 2FMVKd3Rt/NF3qpK0IVY5Phfa3ppgsoH+tq7RJ67OMeRUSFJ+5akbKat2P4HwaOfT6
	 P/Za3GjEN5GxC/OrghRyfOphZemiNH4afNWfkAidN8mkJ1n4JEf5RZgrFi6pUWtQ7u
	 sfGyWU/tVJurAp67L7G11YIUeq2ihKZkR2D95dYjcIZ2URwYZSBzsZzmQ4BQsXwF+8
	 4PISpeKbF9+BxZNE6R5C2urvbQYs9MExL+UUxlRyOJAaeCRIdAvlB3UjUQOF43WcUQ
	 Xrb3N3Zz9TJYw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/6] arm64: dts: qcom: sdm845-oneplus-common: enable USB
 Type-C role switching
Reply-To: sashiko-reviews@lists.linux.dev
To: taygoth <taygoth@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <ba3804796cc651aa281deab49234ca52cfdd3696.1779127507.git.taygoth@gmail.com>
References: <ba3804796cc651aa281deab49234ca52cfdd3696.1779127507.git.taygoth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 21:36:43 +0000
Message-Id: <20260518213644.50880C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299638-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 77AD7573FBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Removing `maximum-speed =3D "high-speed"` misconfigures the DWC3 c=
ontroller to default to SuperSpeed on a physically High-Speed-only board, l=
eading to false capabilities advertisement and potential AXI bus hangs.
- [High] The `vdd-vbus-supply` property is missing from the `&pmi8998_typec=
` node, which completely breaks VBUS power delivery in USB host mode.
--

commit fd2e287ee85d01cae64bd27f78d0a7b1a4d6ea65
Author: taygoth <taygoth@gmail.com>

arm64: dts: qcom: sdm845-oneplus-common: enable USB Type-C role switching

This commit enables the PMI8998 Type-C controller and configures the dwc3
controller for OTG mode on the OnePlus 6/6T. It removes the maximum-speed
property and maps the USB endpoints for role switching.

> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/a=
rm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
[ ... ]
> +&pmi8998_vbus {
> +	regulator-min-microamp =3D <500000>;
> +	regulator-max-microamp =3D <1500000>;
> +	status =3D "okay";
> +};
> +
> +&pmi8998_typec {
> +	status =3D "okay";

Does this node need a vdd-vbus-supply property?

The qcom,pmi8998-typec driver looks up the VBUS regulator using
devm_regulator_get_optional(dev, "vdd-vbus"). Without a vdd-vbus-supply
property pointing to &pmi8998_vbus, the lookup returns -ENODEV and the
driver proceeds with a NULL vbus.

Will this result in the driver silently skipping the VBUS regulator
enablement during USB_ROLE_HOST transitions, leaving bus-powered downstream
peripherals without power?

> +
> +	connector {
> +		compatible =3D "usb-c-connector";
[ ... ]
> @@ -890,19 +920,18 @@ &usb_1 {
>  };
> =20
>  &usb_1_dwc3 {
> -	/*
> -	 * We don't have the capability to switch modes yet.
> -	 */
> -	dr_mode =3D "peripheral";
> -
> -	/* fastest mode for USB 2 */
> -	maximum-speed =3D "high-speed";
> +	dr_mode =3D "otg";
> +	usb-role-switch;

Is it safe to remove the maximum-speed property here?

The commit message notes that the role switching infrastructure handles spe=
ed
negotiation through the usb-c-connector. However, Type-C CC pins typically
only negotiate power delivery and data roles, not the underlying USB protoc=
ol
speed limits.

If maximum-speed is omitted, the DWC3 core driver falls back to reading the
controller's internal hardware parameters (GHWPARAMS3). Since the SDM845 IP
is SuperSpeed-capable, it will default to USB_SPEED_SUPER.

Because the board only wires High-Speed lines and drops the SuperSpeed PHY
(phys =3D <&usb_1_hsphy>), will the xHCI driver register a SuperSpeed root =
hub
and attempt Rx.Detect polling? Could attempting to access the PIPE interface
of an unclocked QMP PHY trigger an AXI bus hang?

> =20
>  	/* Remove USB3 phy as it's unused on this device. */
>  	phys =3D <&usb_1_hsphy>;
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1779127507.gi=
t.taygoth@gmail.com?part=3D5

