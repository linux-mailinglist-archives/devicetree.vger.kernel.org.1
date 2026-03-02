Return-Path: <devicetree+bounces-270110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AL2UK5uwpWkiEgAAu9opvQ
	(envelope-from <devicetree+bounces-270110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:45:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4E81DC19F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 16:45:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 76B3230059B9
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 15:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8167B41B35A;
	Mon,  2 Mar 2026 15:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="mzKnAyth"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7613B413231
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 15:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772466324; cv=none; b=HEDjshR++u1U0jtLIhwzrXWJxeCkBUk0G9QqfMy/9SaN7iWLtA6wwvL5GSL7OEehPcdztvENaixPhoIF/x1MBgOTj4d2Wm2LoCswYsPJCyDMPvtqnr0nwfhmvwrb6YR/+pTbI+VV1czMRMR6WSYFTtgoEWygPn4qABYDTeuQSvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772466324; c=relaxed/simple;
	bh=YZWwdlC9tnWkiECBWT3z3qgV2ylbsjE7vfaiz9liT/0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=c8krMkbx9lCnutFAJBj4DxHV1/oLrglcIQI+254xPwv2lhh8G7EAmYkVLmK9ISDfoWe4BE96boUDF7mUbxde+Q0/kIFENSTJRZ3vl7QHXsSZkFv30zQ72jyJdRd/Etpht3YZjFBqbu8l3RE9PNpG+0ggzmMbrXElLwGSYmcZZr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=mzKnAyth; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id E1BA61A1F34;
	Mon,  2 Mar 2026 15:45:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id B63885FE89;
	Mon,  2 Mar 2026 15:45:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6756F1036959D;
	Mon,  2 Mar 2026 16:45:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772466319; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=FYAWwVXpESUSi/WobVHvguowQxIxeIjbkgDoK4X/Hz4=;
	b=mzKnAythfuXX+WDnpsNLgQVAAYTlL8oXpMwt6iPjxdCgXscB9QcXL2ZKovd+VIFWuWoRyT
	AUAZj3dV1Y2KCOpxL1LHOH324mvVz5I/zTOtaN+TD8IwwpQuyeq7PZBx03WXBO6ygxpwRk
	kP9okf0lbAlhyonKkJzoO1lfu1uDvLv9G+uy4VsgIYaBHZydQAE3v5zYkgp4k5fqa8/NQ0
	ugyr5SzBWWjti4vZUDwpB3KgbQPdpEwg2D0vO444JzO87ucA4IPCin6WNAEuTvOhfF6qGy
	T3LMYm+wd8lw+UYVuhOfUXP2hyNgAQ6I5tYlr61SBrPh+HlRwFiz0vJQCP0xdg==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Gabor Juhos <j4g8y7@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
Subject: Re: [PATCH] arm64: dts: marvell: armada-37xx: align 'phy-names' of
 EHCI node with DT schema
In-Reply-To: <20260220-armada-37xx-fix-ehci-phy-name-v1-1-27c9907aab8e@gmail.com>
References: <20260220-armada-37xx-fix-ehci-phy-name-v1-1-27c9907aab8e@gmail.com>
Date: Mon, 02 Mar 2026 16:45:18 +0100
Message-ID: <87jyvufd69.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 9E4E81DC19F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-270110-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lunn.ch,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	MSBL_EBL_FAIL(0.00)[usb@5e000:query timed out];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:url,devicetree.org:url,BLaptop.bootlin.com:mid,5e000:email]
X-Rspamd-Action: no action

Gabor Juhos <j4g8y7@gmail.com> writes:

> According to the 'generic-ehci.yaml' schema, the name of the first phy
> in an EHCI node must be "usb", however the 'usb@5e000' node in the
> 'armada-37xx.dtsi' uses "usb2-utmi-host-phy" instead.
>
> This causes dtbs_check warnings like the following ones:
>
>   arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dtb: usb@5e000 (marvel=
l,armada-3700-ehci): phy-names:0: 'usb' was expected
>       from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml
>   arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,arma=
da-3700-ehci): phy-names:0: 'usb' was expected
>       from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml
>   arch/arm64/boot/dts/marvell/armada-3720-eDPU.dtb: usb@5e000 (marvell,ar=
mada-3700-ehci): phy-names:0: 'usb' was expected
>       from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml
>   ...
>
> Use "usb" as a name for the phy to avoid the warnings.
>
> No functional change, the USB interface works after the change:
>
>     [    1.472393] orion-ehci d005e000.usb: EHCI Host Controller
>     [    1.477847] orion-ehci d005e000.usb: new USB bus registered, assig=
ned bus number 1
>     [    1.487127] orion-ehci d005e000.usb: irq 40, io mem 0xd005e000
>     [    1.505759] orion-ehci d005e000.usb: USB 2.0 started, EHCI 1.00
>     [    1.512493] hub 1-0:1.0: USB hub found
>     [    1.516434] hub 1-0:1.0: 1 port detected
>     ...
>     [    4.175746] usb 1-1: new high-speed USB device number 2 using orio=
n-ehci
>     [    4.347643] usb-storage 1-1:1.0: USB Mass Storage device detected
>     [    4.359972] scsi host0: usb-storage 1-1:1.0
>     [    5.367100] scsi 0:0:0:0: Direct-Access     ADATA    USB Flash Dri=
ve  1.00 PQ: 0 ANSI: 6
>     [    5.387091] sd 0:0:0:0: [sda] 30869504 512-byte logical blocks: (1=
5.8 GB/14.7 GiB)
>     [    5.398420] sd 0:0:0:0: [sda] Write Protect is off
>     [    5.408108] sd 0:0:0:0: [sda] Write cache: disabled, read cache: d=
isabled, doesn't support DPO or FUA
>     [    5.477359]  sda: sda1
>     [    5.480037] sd 0:0:0:0: [sda] Attached SCSI removable disk
>
> Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>

Applied on mvebu/dt

Thanks,

Gregory
> ---
>  arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/bo=
ot/dts/marvell/armada-37xx.dtsi
> index 87f9367aec1227c2c6de52f358d51bcff758c147..a8d10e4de81619c44ccbe0f08=
e69707dc28005a3 100644
> --- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
> @@ -396,7 +396,7 @@ usb2: usb@5e000 {
>  				marvell,usb-misc-reg =3D <&usb2_syscon>;
>  				interrupts =3D <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
>  				phys =3D <&usb2_utmi_host_phy>;
> -				phy-names =3D "usb2-utmi-host-phy";
> +				phy-names =3D "usb";
>  				status =3D "disabled";
>  			};
>=20=20
>
> ---
> base-commit: fcaf733ca526b69595ed1d227e2cc59ddd24eff7
> change-id: 20260217-armada-37xx-fix-ehci-phy-name-cdfc108b2473
>
> Best regards,
> --=20
> Gabor Juhos <j4g8y7@gmail.com>
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

