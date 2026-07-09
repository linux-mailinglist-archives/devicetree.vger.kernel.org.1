Return-Path: <devicetree+bounces-323294-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Yd3xDUwiT2obbAIAu9opvQ
	(envelope-from <devicetree+bounces-323294-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 06:23:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9338972C8CA
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 06:23:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JbOnGPr+;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323294-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323294-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9E3CE30088A3
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 04:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3B643976BC;
	Thu,  9 Jul 2026 04:23:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8BC733554F
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 04:23:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783571017; cv=none; b=JzY7XSr2349AVeb1KywlVvRw2jzYQFLsuuALMAq1xyNp68J9d4r9x3ZaCoQFHUBlW3dw/JhXAUI01vo4mu3UVroO6e3t8cUoYJOh9JBQoAawbCKwjeHcfK/HXsXUbLSIDbbz72jnL68nAeeD0Aiisaa2UPb/xUuCIuGONS4Wp1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783571017; c=relaxed/simple;
	bh=YQgrMHAlLQWABb4LMNWv+lg2whg0R9RrLb+UKpSWDnA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MdkahF3QnZEFFoSeofpfsFCsuYsmfQCn3uRtTJ95sI8NW/s8xNUaKEKDo1sPzEsYi9+dK7QVe42BnHuf3FbKR9UqaE7L7tFRzOf5dn6F8h6K46PltvwqN+KJVQr96fL0pXykImXk/GZWt0x/O6wbR24hpI1g1eCumm92R77nS44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbOnGPr+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C46A1F000E9;
	Thu,  9 Jul 2026 04:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783571016;
	bh=mfjwcpaKHtjrkI6DdUhEK1AbhcxRXwViLI+Wvv2hcY0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JbOnGPr+iktx147Q1vQKnHSFIna5KQckYvkJZ0ZLMnOwII7Z6WLLdY66XYQ9dMyfE
	 Offjda7Zo/nJPSc3hBD6erw1CLzydBduVJb/qwkKM9Q9ZKBVG4a2jtr5sjqJ+vFUSl
	 B79ih7ujDrzzGMsEuioedsClblTYRWX7qpgBhXky8oMJotI1CL8TB7PCuoprIGVONj
	 s6wyNyVWdffRycm1GT0QxHcmkeLxyY1sOd9HUVGlu8LwU6QR/srzWuqod/5QO84GyR
	 QrI/MBvtyPmbH0rluvSkwwLBZgn4/af7EXWeUCOb8umRZ8JEjdCvizmselQT2s0AAI
	 dGJMMVhZo79HQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] riscv: dts: spacemit: k3: add USB controller and
 USB phy support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Inochi Amaoto" <inochiama@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709040415.977784-2-inochiama@gmail.com>
References: <20260709040415.977784-1-inochiama@gmail.com>
 <20260709040415.977784-2-inochiama@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 04:23:35 +0000
Message-Id: <20260709042336.0C46A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323294-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:inochiama@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9338972C8CA

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The `spacemit,apmu` property for `combophy` uses an unaligned regi=
ster offset (`0x11`) and is misplaced in the board file.
- [High] Missing driver for `spacemit,k3-combo-phy` causes the USB3 control=
ler probe to defer indefinitely.
- [Medium] The `combophy` node specifies an abnormally large 6MB register s=
pace (`0x600000`), which is highly likely a typo.
- [Medium] The `combophy` node introduces undocumented custom properties an=
d an invalid syscon reference, while lacking standard required properties.
--

--- Patch [1]: [PATCH 1/2] riscv: dts: spacemit: k3: add USB controller and=
 USB phy support ---
commit d2902167c4edb4e87ae123e61df4d877f88a5943
Author: Inochi Amaoto <inochiama@gmail.com>

riscv: dts: spacemit: k3: add USB controller and USB phy support

This commit adds USB device nodes and combo PHY support to the Spacemit K3
device tree and the K3 Pico-ITX board.

> diff --git a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts b/arch/riscv/bo=
ot/dts/spacemit/k3-pico-itx.dts
> index b89c1521e6649..2a6d35a64d5ce 100644
> --- a/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts
> +++ b/arch/riscv/boot/dts/spacemit/k3-pico-itx.dts

[ ... ]

> @@ -182,6 +182,11 @@ dldo7: dldo7 {
>  	};
>  };
> =20
> +&combophy {
> +	spacemit,apmu =3D <&syscon_apmu 0x11>;

[Severity: High]
Does this offset cause unaligned access faults? The offset 0x11 (17 decimal)
is not 4-byte aligned, which can result in -EINVAL stride violations when t=
he
underlying driver attempts regmap_read or regmap_update_bits.

Additionally, should SoC-level APMU offsets be placed in the main k3.dtsi
instead of the board-specific k3-pico-itx.dts?

> +	status =3D "okay";
> +};
> +

[ ... ]

> diff --git a/arch/riscv/boot/dts/spacemit/k3.dtsi b/arch/riscv/boot/dts/s=
pacemit/k3.dtsi
> index 19fc9b49668ed..82c9e2da82e9f 100644
> --- a/arch/riscv/boot/dts/spacemit/k3.dtsi
> +++ b/arch/riscv/boot/dts/spacemit/k3.dtsi

[ ... ]

> @@ -438,6 +439,47 @@ soc: soc {
>  		dma-noncoherent;
>  		ranges;
> =20
> +		usb3d: usb@81a00000 {
> +			compatible =3D "spacemit,k3-dwc3";

[ ... ]

> +			reset-names =3D "ahb", "vcc", "phy";
> +			phys =3D <&usb3d_u2phy>,
> +			       <&combophy 4 PHY_TYPE_USB3>;

[Severity: High]
Is there a corresponding driver for the spacemit,k3-combo-phy compatible
string currently available in the tree?

Because the usb3d node depends on this PHY, the DWC3 core may continuously
fail to acquire the usb3-phy dependency and return -EPROBE_DEFER, leaving
the USB3 port uninitialized.

> +			phy-names =3D "usb2-phy", "usb3-phy";

[ ... ]

> +		combophy: phy@81d00000 {
> +			compatible =3D "spacemit,k3-combo-phy";
> +			reg =3D <0x0 0x81d00000 0x0 0x600000>;

[Severity: Medium]
Is this register map size intentional? Mapping 6MB of physical address space
for a PHY controller seems abnormally large and might be a typo.

> +			#phy-cells =3D <2>;
> +			spacemit,apb-spare =3D <&pll>;

[Severity: Medium]
Will this syscon reference work properly? The pll node being referenced is a
clock controller that lacks the syscon compatible string, meaning standard
syscon_regmap_lookup_by_phandle operations could fail.

Are the standard clocks and resets properties missing from this node as wel=
l?

> +			status =3D "disabled";
> +		};
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709040415.9777=
84-1-inochiama@gmail.com?part=3D1

