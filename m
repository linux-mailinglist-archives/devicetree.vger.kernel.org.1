Return-Path: <devicetree+bounces-277122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOPkHjyBumldXQIAu9opvQ
	(envelope-from <devicetree+bounces-277122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:41:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CE41C2BA126
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D3B243013852
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99D67396D12;
	Wed, 18 Mar 2026 10:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Xl8kAqor"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA7937CD27
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830446; cv=none; b=ElHBLvYwAgnxbawkDRqN+en6s0TvLNh1s+SCW6XdChsyi4VsliGVVK2GCrPWTW5qibdrx01CqgVnON8Ff3B8oZueDYjaStiMOVV7AR2CR8c3OV7YLos7cVzcVwwSNneV20dT9/4IdKGT6iWLDLBKB9OXcGjqetQCITguDVH7glE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830446; c=relaxed/simple;
	bh=Yq4NW2A5bHU2Y5yi98k+HQqdCscIVT014jd+PVCM62s=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Eo8o7R1vRtk66AG7dtDR1w1yH9wO/n6fd74tFkKHfnCRAc4CuPonaFa4uLNloudg0Qpx/97LeST7WivZOWU2eJOqIsU//jDq3uQ5NtXwFhB5AT1TKWBxA8UjeTJWOpxpmdmIKmKXhmp9HGKhSzKk3Z4P4W7UUfXXGFkZG5oKJeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Xl8kAqor; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id F04911A2E94;
	Wed, 18 Mar 2026 10:40:41 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id B8AD86004F;
	Wed, 18 Mar 2026 10:40:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 76FE710450640;
	Wed, 18 Mar 2026 11:40:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773830441; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=MTpDYX+upBLp9SRW+OziKTrzB+mfPMcb5cpom+85poA=;
	b=Xl8kAqorr9x26xPNdldYAncL7sNq+jQvTPr/yiNg5ZUPkUOs2+PKu2dX/uagdKQfulmjN/
	2+MhpkqlwGI9vR86BRpHp10uLJJlWNQ+ylat5Djjw10mG2zP4PjBi95CS2oX+T5gGn57jG
	DttZzB3s6kjF99hmQ+LWweczKSJs02TzIMSGpvWModpi7mcbvFaAYxtJ/1+NMvIlqQOo2C
	cxW3iCiA6vwYeWCkzePysalM7tCv5Y2X61Gedku3xnN1glWj1lZ6xZqCATgYkwu5G+zkPs
	aVtGbiP/Tib1oluIGzRklUcYePBpnX3YC1cq69W4L+1EOnDdr6Sjj9tMed523A==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Gabor Juhos <j4g8y7@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?utf-8?Q?Miqu=C3=A8l?= Raynal
 <miquel.raynal@bootlin.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' from USB host nodes
In-Reply-To: <20260317-armada-37xx-drop-usb-misc-reg-v2-1-ddff72114414@gmail.com>
References: <20260317-armada-37xx-drop-usb-misc-reg-v2-1-ddff72114414@gmail.com>
Date: Wed, 18 Mar 2026 11:40:37 +0100
Message-ID: <875x6t5ska.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-277122-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lunn.ch,kernel.org,bootlin.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_PROHIBIT(0.00)[0.0.226.144:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:url,5e000:email]
X-Rspamd-Queue-Id: CE41C2BA126
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

+Miqu=C3=A8l

Hello Gabor,

Thanks it is better,

> The 'marvell,usb-misc-reg' property is present both in the EHCI and
> in the XHCI USB host device nodes, however it is not documented. Thus
> 'make dtbs_check' produces warnings like these:
>
>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@58000 (marvell,arm=
ada3700-xhci): Unevaluated properties are not allowed ('marvell,usb-misc-re=
g' was unexpected)
>           from schema $id: http://devicetree.org/schemas/usb/generic-xhci=
.yaml
>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,arm=
ada-3700-ehci): Unevaluated properties are not allowed ('marvell,usb-misc-r=
eg' was unexpected)
>           from schema $id: http://devicetree.org/schemas/usb/generic-ehci=
.yaml
>
> Apart from the fact that the properties are not documented, those are
> not even used by any USB host drivers. Due to this, drop the properties
> in order to get rid of the warnings.
>
> Note:
>
> With the same name, there is a property used for the Armada 3700 USB
> UTMI PHYs of which dt-bindings documentation has been added in commit
> e60958699afa ("dt-bindings: phy: mvebu-utmi: add UTMI PHY bindings").
>
> Additionally, the property is handled by the 'phy-mvebu-a3700-utmi'
> driver since commit cc8b7a0ae866 ("phy: add A3700 UTMI PHY driver").
>
> When the nodes of the UTMI PHYs has been added to the SoC dtsi by
> commit 05d168a56fae ("arm64: dts: marvell: armada-37xx: declare USB2
> UTMI PHYs"), the properties has been added to the USB host controller
> nodes also. According to the commit message this was intentional,

Miquel will confirm that, after speaking with him, it appears to be a
mistake rather than an intentional act.

Gr=C3=A9gory

> however in regard to the USB hosts, neither the respective documentation,
> nor driver support has been added into the tree since that.
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
> ---
> Changes in v2:
>   - add Reviewed-by tag from Andrew
>   - change subject and reword commit message
>   - Link to v1: https://lore.kernel.org/r/20260304-armada-37xx-drop-usb-m=
isc-reg-v1-1-800c1b746b7a@gmail.com
> ---
>  arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/bo=
ot/dts/marvell/armada-37xx.dtsi
> index ea1824f5321fbb32fc4373c08a0d94bca1dc793b..44c47409f8793ae1266303607=
812ef481edbfbc5 100644
> --- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
> @@ -369,7 +369,6 @@ usb3: usb@58000 {
>  				compatible =3D "marvell,armada3700-xhci",
>  				"generic-xhci";
>  				reg =3D <0x58000 0x4000>;
> -				marvell,usb-misc-reg =3D <&usb32_syscon>;
>  				interrupts =3D <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
>  				clocks =3D <&sb_periph_clk 12>;
>  				phys =3D <&comphy0 0>, <&usb2_utmi_otg_phy>;
> @@ -393,7 +392,6 @@ usb32_syscon: system-controller@5d800 {
>  			usb2: usb@5e000 {
>  				compatible =3D "marvell,armada-3700-ehci";
>  				reg =3D <0x5e000 0x1000>;
> -				marvell,usb-misc-reg =3D <&usb2_syscon>;
>  				interrupts =3D <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
>  				phys =3D <&usb2_utmi_host_phy>;
>  				phy-names =3D "usb";
>
> ---
> base-commit: 98226a594f313442fcba38cefc1df0b6c1691c7e
> change-id: 20260304-armada-37xx-drop-usb-misc-reg-e9635498cae6
>
> Best regards,
> --=20
> Gabor Juhos <j4g8y7@gmail.com>
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

