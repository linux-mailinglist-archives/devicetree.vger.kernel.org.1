Return-Path: <devicetree+bounces-275401-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDBPHSs1tGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275401-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:02:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8252868E2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:02:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9E63330977C9
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B630362130;
	Fri, 13 Mar 2026 15:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="huDnKXF9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5D33644A6;
	Fri, 13 Mar 2026 15:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773417465; cv=none; b=D6oxJZEkc//ugpY9W450aqNkRcpMktfny1JQW6bxZPocN8MZgAZyJnaPwOFxx7r3NqOWJRss611oP+X54lv3qqSYJciyna825esVt2f6+PmV+wgWTVMFgx1AbwG8Zu3P/y3lnuGIjW4sWKhDeZs4ou9vOhBcnH9JzyuIc3YBWFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773417465; c=relaxed/simple;
	bh=dPU6JG22UJWiTVhknEf68PqiWswnwhZbUdi04bRW30c=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=NuoQmczEP+t6N/nTEsUIHtqOdLadoBG8UZXUAUkN+IRD84fpBm6AHMKZ0oJhs3ysyo0n04tADiqTz3lCQY/t0oNsPqH6+shIJ49pSzDbYYtBr6hmtcraIhRBdxIgPJhtcnUhUvegU4uAZaeLKQ2jGxc8UupJrPaGJFkaOqpAj/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=huDnKXF9; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 9FAA3C4270D;
	Fri, 13 Mar 2026 15:58:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5833C60027;
	Fri, 13 Mar 2026 15:57:40 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7738210369F3A;
	Fri, 13 Mar 2026 16:57:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773417459; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=MoF3QQCgUBtPBs0REwD2E8i1ubx1T9i27G2lzB3OK88=;
	b=huDnKXF9EG1bHiZ4YXebhCBw0dPf2W6er7dNNtRkaArdHgRrT8jEh127IBB19MiXk81bF5
	OnVrgKgctALyS1COGZZe2ARL6jGIa11GP1jHUE20n6xNrDVwTpQ+B6t/YUAitT8vfZACi5
	cGPE//aGd9FeAdsanFvOXqPTnvvWNI0USqJsZOPVsPR9UkMqmy/773aoVxIIh04ADLWZyk
	VW/h9DwzmypPj88h6SxQJBhHipdrH1VQzWPkkqaHNLjAp4P9E2ELF+FRudAM4lVS8R+u3v
	blynlo2Bbv3phdOWEtDoRgjcKilox3E/nxGZwlG8QpHx4PCt9OJfKco0GBRgRw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Gabor Juhos <j4g8y7@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' properties
In-Reply-To: <41a42087-dc36-41de-a8f2-0c8b39425ffd@gmail.com>
References: <20260304-armada-37xx-drop-usb-misc-reg-v1-1-800c1b746b7a@gmail.com>
 <db997887-2431-4baa-8e96-04f53ea59060@lunn.ch>
 <874imug18l.fsf@BLaptop.bootlin.com>
 <cacefc69-dba3-4ff6-a039-85fe35a91e0b@lunn.ch>
 <41a42087-dc36-41de-a8f2-0c8b39425ffd@gmail.com>
Date: Fri, 13 Mar 2026 16:57:37 +0100
Message-ID: <87pl5767ta.fsf@BLaptop.bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-275401-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lunn.ch];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,BLaptop.bootlin.com:mid,0.0.226.144:email]
X-Rspamd-Queue-Id: CD8252868E2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Gabor Juhos <j4g8y7@gmail.com> writes:

> Hi Andrew,
>
> 2026. 03. 05. 14:28 keltez=C3=A9ssel, Andrew Lunn =C3=ADrta:
>> On Thu, Mar 05, 2026 at 08:54:34AM +0100, Gregory CLEMENT wrote:
>>> Hello Andrew,
>>>
>>>> On Wed, Mar 04, 2026 at 08:12:43PM +0100, Gabor Juhos wrote:
>>>>> The 'marvell,usb-misc-reg' property is present both in the EHCI and
>>>>> in the XHCI USB host device nodes, however it is not documented. Thus
>>>>> 'make dtbs_check' produces warnings like these:
>>>>>
>>>>>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@58000 (marvell=
,armada3700-xhci): Unevaluated properties are not allowed ('marvell,usb-mis=
c-reg' was unexpected)
>>>>>           from schema $id: http://devicetree.org/schemas/usb/generic-=
xhci.yaml
>>>>>   /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell=
,armada-3700-ehci): Unevaluated properties are not allowed ('marvell,usb-mi=
sc-reg' was unexpected)
>>>>>           from schema $id: http://devicetree.org/schemas/usb/generic-=
ehci.yaml
>>>>>
>>>>> Apart from the fact that the properties are not documented, those are
>>>>> not even used by any USB host drivers. At least 'git grep' says this:
>>>>>
>>>>>   $ git grep -n 'marvell.usb-misc-reg' v7.0-rc2
>>>>>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-=
utmi-phy.yaml:30:  marvell,usb-misc-reg:
>>>>>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-=
utmi-phy.yaml:41:  - marvell,usb-misc-reg
>>>>>   v7.0-rc2:Documentation/devicetree/bindings/phy/marvell,armada-3700-=
utmi-phy.yaml:50:      marvell,usb-misc-reg =3D <&usb2_syscon>;
>>>>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:372:         =
                     marvell,usb-misc-reg =3D <&usb32_syscon>;
>>>>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:383:         =
                     marvell,usb-misc-reg =3D <&usb32_syscon>;
>>>>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:396:         =
                     marvell,usb-misc-reg =3D <&usb2_syscon>;
>>>>>   v7.0-rc2:arch/arm64/boot/dts/marvell/armada-37xx.dtsi:406:         =
                     marvell,usb-misc-reg =3D <&usb2_syscon>;
>>>>>   v7.0-rc2:drivers/phy/marvell/phy-mvebu-a3700-utmi.c:231:           =
                                              "marvell,usb-misc-reg");
>>>>
>>>
>>> I don't follow:
>>>
>>>> The phy-mvebu-a3700-utmi.c does use it, and does document it:
>>>>
>>>>   marvell,usb-misc-reg:
>>>>     description:
>>>>       Phandle on the "USB miscellaneous registers" shared region
>>>>       covering registers related to both the host controller and
>>>>       the PHY.
>>>>     $ref: /schemas/types.yaml#/definitions/phandle
>>>>
>>>> And the patch which added the property to the USB nodes also added the
>>>> PHY nodes.
>>>>
>>>> commit 05d168a56fae8ff50432d5dfe6e7423b989455a8
>>>> Author: Miquel Raynal <miquel.raynal@bootlin.com>
>>>> Date:   Tue Jan 29 10:36:34 2019 +0100
>>>>
>>>>     arm64: dts: marvell: armada-37xx: declare USB2 UTMI PHYs
>>>>
>>>
>>> You stated that the property is used and was properly added.
>>=20
>> I can understand your confusion. The commit message is not great. I
>> had to read quite a bit of code to convince myself the change is
>> correct.
>
>> The property is used and documented in the Generic PHY driver,
>> phy-mvebu-a3700-utmi.c. And the properties being removed are in USB
>> nodes. The properties in the PHY node are not removed.
>>=20
>> The properties in the USB node have never been used, as far as i can
>> see.
>
> Thank you for the review, and sorry about the confusing commit message. P=
erhaps
> I should have skipped the 'git grep' part.
>
> @Gregory: Shall I send a v2 with a reworded the commit message?

Yes please it would be nice if you can do it.

Gregory

>
> Regards,
> Gabor
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

