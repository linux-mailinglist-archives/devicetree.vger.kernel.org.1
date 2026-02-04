Return-Path: <devicetree+bounces-262798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEucGMKtg2lvsgMAu9opvQ
	(envelope-from <devicetree+bounces-262798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 21:36:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5A3EC7EF
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 21:36:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1789630054EC
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 20:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154A742DFF0;
	Wed,  4 Feb 2026 20:36:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="oCnokV3Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C726F37F11A
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 20:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770237376; cv=none; b=nmpdJnhLqR+9GlylotQpYz01WxMoHbf6jOi2wb8IZR9K0Hz4mQ4xB4cPFL4gPEDcRISk/YZ7XAh1zAqlNRsLFHSt61g9CuzVHhO1YMWsQvUZEAWMzJAWH40mT+5nVdylWNJ//uJXJCYWRx5IPdNCvNDwSHQ8OddCaF0t7qIwokM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770237376; c=relaxed/simple;
	bh=IKACEZGuwbGNKW7vAuVmxuZmO4bN2+Y34W/66VHEgnA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=h5wJGnOdoCfOta8kcBqdF+IhT9uKDK6eDLdg+FTzsslxCm50DYJte8yHCvbvt7KM0nlQtST7Y+4b7uGN7x8Afmp/rrErF3As9h+6W4BiHfp4wXwIg34TdmdAgfI56DJl6+o24wqd3DxB5LWkxR5LDFWPzoZkVGFCHAHXmo/THSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=oCnokV3Z; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 380CD1A2BF8;
	Wed,  4 Feb 2026 20:36:07 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EDEA360705;
	Wed,  4 Feb 2026 20:36:06 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 024F7119A865B;
	Wed,  4 Feb 2026 21:36:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770237365; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=3HSdgK9Ht2fP7rByPNvPOtQygotTmOr97BiUZ61bEe4=;
	b=oCnokV3ZbWAGL9oCVSJV4cMxSsxKwSeY05TG5vUCyfP02P9BEa7K/w/d8cn1BtWvtFJX6S
	ustJvJKVYUGqxNctEkGiFPTcHTVB4hV3/6yclCW7E3dS4ZoqsAZ40qe8/niAUgVQVuocrf
	z4vWapYW53zngYsiwncm44wVBFCffz/8TibcXTfYzeyIQ88MBrmhkxzktuQn8OxYlHdZgw
	krfEfsPHQGVAfwnc2BkWPEQrXze289OdgyvQSZdj2O51PLm5+ayH9klxhjhc7xZhAz+aux
	HBOOFh6yHkhCuQ2fISbt2UZQSeNC41lgzPWKIEtQ10lNL6FM9/jCH07benltnw==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: William Zhang <william.zhang@broadcom.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,  Hauke Mehrtens
 <hauke@hauke-m.de>,  zajec5@gmail.com,
  bcm-kernel-feedback-list@broadcom.com,  Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  linux-arm-kernel@lists.infradead.org,
  devicetree@vger.kernel.org,  Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH -next] ARM: dts: BCM5301X: Drop extra NAND controller
 compatible
In-Reply-To: <CAHi4H7EVLsgVL5KCERTX5XBNTMvZDNxePzo48Zp5dsfDdoCV1Q@mail.gmail.com>
	(William Zhang's message of "Wed, 4 Feb 2026 09:36:51 -0800")
References: <20260204091530.624230-1-miquel.raynal@bootlin.com>
	<CAHi4H7EVLsgVL5KCERTX5XBNTMvZDNxePzo48Zp5dsfDdoCV1Q@mail.gmail.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Wed, 04 Feb 2026 21:36:01 +0100
Message-ID: <87ldh8fdqm.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,bootlin.com];
	TAGGED_FROM(0.00)[bounces-262798-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	DBL_PROHIBIT(0.00)[1.19.21.224:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,2c0:email,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Queue-Id: BA5A3EC7EF
X-Rspamd-Action: no action

Hello William,

>> diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/=
broadcom/bcm-ns.dtsi
>> index d0d5f7e52a91..46b650abdb90 100644
>> --- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
>> +++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
>> @@ -479,7 +479,7 @@ thermal: thermal@2c0 {
>>         };
>>
>>         nand_controller: nand-controller@18028000 {
>> -               compatible =3D "brcm,nand-iproc", "brcm,brcmnand-v6.1", =
"brcm,brcmnand";
>> +               compatible =3D "brcm,nand-iproc", "brcm,brcmnand-v6.1";
>>                 reg =3D <0x18028000 0x600>, <0x1811a408 0x600>, <0x18028=
f00 0x20>;
>>                 reg-names =3D "nand", "iproc-idm", "iproc-ext";
>>                 interrupts =3D <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
>
> Acked-by: William Zhang <william.zhang@broadcom.com>

Do you mind if I take it on top of the commit it fixes?

Thanks,
Miqu=C3=A8l


