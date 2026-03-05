Return-Path: <devicetree+bounces-271400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCKoE8Q2qWlk3AAAu9opvQ
	(envelope-from <devicetree+bounces-271400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 08:54:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E255920CFCC
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 08:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1F4DF3007482
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 07:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31BA5331A4C;
	Thu,  5 Mar 2026 07:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="lhxI5l8/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BA13346A0
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 07:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772697282; cv=none; b=FTxm6nzRysFBwFiVuqT7oxgSJCB3ZBEQEtP0haEw5dJKwVjol8etYYE2sodVw13MCzx7Zaq4zdf/GPfVB5KUbH/uWXjOklMRRpxXdUqHDb6J/7JBLUS/1qrSk+zD0BfGDPCNAM91HyjuBY0EV4bknHxZO/FaNLxtYyOfPIrbYSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772697282; c=relaxed/simple;
	bh=X6OTzh3WYoi0bidWZYMLL81kQKeHK2GJN9E/O37+9IY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Nmx4InkNk89iKJb0OmeFcqbgxRTrO5rzvR4b3gGrHYTgtWFXGgD14GltIQK/rHaI4s8RGyW3umIsvqJ4f3jcCQ2sJjaSNYOiokA7ezCk14AWlpmVYLAewSrwvfU2sRWKfoP19utqcPcPhz83ZbaI1qWlpCIBeAlw9uM1Ik1tJ9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=lhxI5l8/; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 5BEE94E42559;
	Thu,  5 Mar 2026 07:54:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 28BF15FDEB;
	Thu,  5 Mar 2026 07:54:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4AFD51036981A;
	Thu,  5 Mar 2026 08:54:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772697277; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=INGbhC1k38Jrr8kD8M8GCyeZ7uJijtC0Me4SABhYQmg=;
	b=lhxI5l8/VONdMAIwqs/2IElcJc+GoI3Y+SJON2PZaZFs8Vq54FxfiqMoB6j58Jg4LyKxoN
	XKzzVE8KbVMV50C0QbPLInENombI2kH+esU68DR4+uaQtUHcDAPboa/g0SYlU05D8ksXPa
	92ZE8P+kEg4icw/xhHb9nMq9aSoZeWUd/G2Jg/8NnvpISdvG5eyTACg6K2NDkFUVShQoGL
	IL15RxAr7cENNulbAT+OwLAQow3ue423grgkoHNFKM2dvmBZEGx2iYBwedZcSNs3U9KayG
	wmHaw0WmPC5rK+yHhIqK7ZWxb49/mFveEM5pq5+esQE7Ppvv+9Io0/SGeTniow==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>, Gabor Juhos <j4g8y7@gmail.com>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' properties
In-Reply-To: <db997887-2431-4baa-8e96-04f53ea59060@lunn.ch>
References: <20260304-armada-37xx-drop-usb-misc-reg-v1-1-800c1b746b7a@gmail.com>
 <db997887-2431-4baa-8e96-04f53ea59060@lunn.ch>
Date: Thu, 05 Mar 2026 08:54:34 +0100
Message-ID: <874imug18l.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: E255920CFCC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-271400-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,gmail.com];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregory.clement@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lunn.ch:email,5e000:email,0.0.226.144:email]
X-Rspamd-Action: no action

Hello Andrew,

> On Wed, Mar 04, 2026 at 08:12:43PM +0100, Gabor Juhos wrote:
>> The 'marvell,usb-misc-reg' property is present both in the EHCI and
>> in the XHCI USB host device nodes, however it is not documented. Thus
>> 'make dtbs_check' produces warnings like these:
>>=20
>>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@58000 (marvell,ar=
mada3700-xhci): Unevaluated properties are not allowed ('marvell,usb-misc-r=
eg' was unexpected)
>>           from schema $id: http://devicetree.org/schemas/usb/generic-xhc=
i.yaml
>>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,ar=
mada-3700-ehci): Unevaluated properties are not allowed ('marvell,usb-misc-=
reg' was unexpected)
>>           from schema $id: http://devicetree.org/schemas/usb/generic-ehc=
i.yaml
>>=20
>> Apart from the fact that the properties are not documented, those are
>> not even used by any USB host drivers. At least 'git grep' says this:
>>=20
>>   $ git grep -n 'marvell.usb-misc-reg' v7.0-rc2
>>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utm=
i-phy.yaml:30:  marvell,usb-misc-reg:
>>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utm=
i-phy.yaml:41:  - marvell,usb-misc-reg
>>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-utm=
i-phy.yaml:50:      marvell,usb-misc-reg =3D <&usb2_syscon>;
>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:372:            =
                  marvell,usb-misc-reg =3D <&usb32_syscon>;
>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:383:            =
                  marvell,usb-misc-reg =3D <&usb32_syscon>;
>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:396:            =
                  marvell,usb-misc-reg =3D <&usb2_syscon>;
>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:406:            =
                  marvell,usb-misc-reg =3D <&usb2_syscon>;
>>   v7.0-rc2:drivers/phy/marvell/phy-mvebu-a3700-utmi.c:231:              =
                                           "marvell,usb-misc-reg");
>

I don't follow:

> The phy-mvebu-a3700-utmi.c does use it, and does document it:
>
>   marvell,usb-misc-reg:
>     description:
>       Phandle on the "USB miscellaneous registers" shared region
>       covering registers related to both the host controller and
>       the PHY.
>     $ref: /schemas/types.yaml#/definitions/phandle
>
> And the patch which added the property to the USB nodes also added the
> PHY nodes.
>
> commit 05d168a56fae8ff50432d5dfe6e7423b989455a8
> Author: Miquel Raynal <miquel.raynal@bootlin.com>
> Date:   Tue Jan 29 10:36:34 2019 +0100
>
>     arm64: dts: marvell: armada-37xx: declare USB2 UTMI PHYs
>

You stated that the property is used and was properly added.

> So this change does lookcorrect.

But here you agree with removing it.

I am lost :)

Gregory

>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>
>     Andrew

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

