Return-Path: <devicetree+bounces-299125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDNVC/WzCmpx5wQAu9opvQ
	(envelope-from <devicetree+bounces-299125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 08:38:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3103B566CB8
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 08:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 129B8302944B
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 06:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68C533C4B85;
	Mon, 18 May 2026 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqZ62jGE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A37389460;
	Mon, 18 May 2026 06:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779085942; cv=none; b=tQYC6DsWeoKtOjIhbzudE9QhPMdoTkWaWkqmWcbMYHCR+6uHyZPz+zBKw1jPteHYKBFnu2MgYIZjrUQhen5/CB0nE4DzmyEokG7XQGutfCkk1IqJbXWrdnuT67YvLNKhOISOxaBL+8WLlEHOSPtWbRBqy0MwG8GB2nINZrnHTHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779085942; c=relaxed/simple;
	bh=0D59t6CjDv8lPZhBPra8aK4GgZlN83YWo4X2cORBpx4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=A9ECVTrCSvB2ELm0ukuu7Hc4Q8vCcGeoF05ZtieEesRQq1lbrgYqfAdQpIYIGnLhTm8+sEPVPO+pxJv+wob29Cf/pNNRTlW7C87SQbUlvG/PpulI2aFKZWAXFutqo4+ihVL7GFdies1PPrnxfNBbWKb/hCEXBiO1bid5GBl3uHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqZ62jGE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5730CC2BCB7;
	Mon, 18 May 2026 06:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779085941;
	bh=0D59t6CjDv8lPZhBPra8aK4GgZlN83YWo4X2cORBpx4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=iqZ62jGEnUyWlfUzv7npRhgxx9nPLrZWoA+yz36rxHydidvdniCofKikaiSoiGx/K
	 GYZOuoe8M/5NLmuxv4edp/lbB56JcNs+fjMDZVRmdCrrerSGo6LmM4jbUNMmoKhm9u
	 gz7lrDCS/BRqZgtIdRYorOOvei9RSdu+s//ZUUAxKNQ9Dl89gT27t6dP3i7MI00jgD
	 L/A6wD4a13oj79HEUmyaB7zWoSb0xpC2HuBuEjX8U9wgpvGOnSWPk3RQ5ZHZpq2flU
	 P4WcCyykw5YFhu9l6qJQoKCN0aQZzLd5ykpe83jdpszMImfYm5AzOd2iiLGGOhZXP1
	 8dIpTEkzQIPTg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: Add usbphynop and usbotg pinctrl for
 S32G platforms
Reply-To: sashiko-reviews@lists.linux.dev
To: "Khristine Andreea Barbulescu" <khristineandreea.barbulescu@oss.nxp.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org
In-Reply-To: <20260518061522.2884441-2-khristineandreea.barbulescu@oss.nxp.com>
References: <20260518061522.2884441-2-khristineandreea.barbulescu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 06:32:20 +0000
Message-Id: <20260518063221.5730CC2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 3103B566CB8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299125-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,nxp.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `&usbotg` node uses the undocumented `fsl,usbphy` property, =
which will cause `dtbs_check` validation to fail.
- [Low] Device tree node names use underscores instead of hyphens and do no=
t follow generic naming conventions.
--

commit 009a8765a0c4d65ac0ce298f231d2203b966088a
Author: Khristine Andreea Barbulescu <khristineandreea.barbulescu@oss.nxp.c=
om>
arm64: dts: Add usbphynop and usbotg pinctrl for S32G platforms

This commit adds a usb-nop-xceiv node and pinctrl configurations for the
usbotg interface on S32G2 and S32G3 platforms. It enables the USB controller
to reference the generic PHY and configures pin multiplexing.

> diff --git a/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi b/arch/arm64=
/boot/dts/freescale/s32gxxxa-evb.dtsi
> --- a/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi
> +++ b/arch/arm64/boot/dts/freescale/s32gxxxa-evb.dtsi

[ ... ]

> +/ {
> +	usbphynop: usbphynop {

This isn't a bug, but does the usbphynop node name follow the devicetree
specification's generic names recommendation? Would a standard class name l=
ike
phy or usb-phy be more appropriate?

> +		compatible =3D "usb-nop-xceiv";
> +		#phy-cells =3D <0>;
> +	};
> +};
> +

[ ... ]

> +
> +	usbotg_pins: usbotg_pins {
> +		usbotg_grp0 {

Are these underscores in the node names intentional?=20

The devicetree specification mandates using hyphens instead of underscores
for node names, and compiling with dtc warnings enabled will produce warnin=
gs
here. Should these be named usbotg-pins and usbotg-grp0, along with the
other usbotg_grp nodes?

> +			pinmux =3D <0x3802>, <0x3812>,
> +				<0x3822>, <0x3832>,

[ ... ]

> +&usbotg {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&usbotg_pins>;
> +	fsl,usbphy =3D <&usbphynop>;

Will this fsl,usbphy property cause dtbs_check validation to fail?

The S32G platforms use the nxp,s32g2-usb compatible string, which is valida=
ted
by Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml. That schema
specifies unevaluatedProperties: false and does not define the legacy
fsl,usbphy property.

Would using the standard phys property (phys =3D <&usbphynop>;) work instea=
d,
as it is automatically parsed as a fallback by the ci_hdrc_imx driver?

> +	status =3D "okay";
> +};

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518061522.2884=
441-2-khristineandreea.barbulescu@oss.nxp.com?part=3D1

