Return-Path: <devicetree+bounces-262892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGy3KrBZhGl92gMAu9opvQ
	(envelope-from <devicetree+bounces-262892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:49:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B707F0061
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:49:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96E53300B134
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 08:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7033469E7;
	Thu,  5 Feb 2026 08:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="e8SCd2iq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86F263195FB
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 08:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281375; cv=none; b=sLpWSQrP4cmvHb6DyJChYPOkM7CP6nlNQoyu1sS8dBZMBaHyxp96Oj9v6M35dubGcUzdXbJFzd37RXNyMWy98VTNm3iYHdl1AExhq76LTilmBS7RLFF2wu090zU0KH58fgn4ifoRhhwMCoBjBCoLPr1c+y3LesghwrinEE29WgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281375; c=relaxed/simple;
	bh=po4UAkraHWGvqZqdkIJY6+FrcvN9WjcFH/zqJLSWoR8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=BfWYwTcOsMIWgZPukA0O3XQq5oK0ugQwZIo+mXFutkwMVykYQPcDdGv3627c7clyrRTAWxIvbYK+VbrBopAv+CFFCjGR+I6QyA5dY2JuUHPeCBiYFz4xBqPPmnyV5zvKRCQUry83yb9EzxaMlCqnqZtey4GItBXWstegAYVhsjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=e8SCd2iq; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id D49091A2C14;
	Thu,  5 Feb 2026 08:49:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A9527606FD;
	Thu,  5 Feb 2026 08:49:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 263B5119A865B;
	Thu,  5 Feb 2026 09:49:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770281371; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ah96poweooP39XHipocL11TDAyJJlEOaH2JSHKLFb3g=;
	b=e8SCd2iq+TafgZsnMRv1dDAFDbNxcYWS4reV/gXRxs5niK9nBASXfKtq8Aujo2KeEZ9hpK
	+2unjWnkgk1UfnRVlTWATb51Zo5XVaks6lbUeTKD9IonZKzjl1XSVHLeZDJoLQ3r4p8DRa
	v/VIA+WrV22IwVVJ8Kc6f09qdssqHDLOU8JsO+B7HV4ZJo5UXypXtusr98fqdS25y+cmNw
	rdE9RcfUAmD8wehhFWWWySg/m35LDPaKmH100LGu3v2AScV6p3I4CMaWMEJEkGFIevNuZp
	NL8xJyz/FylwEWyhpPttwMWMNNfYVfwckeCKrHrIJxdnNxIImcd34ejHdt1oSw==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: William Zhang <william.zhang@broadcom.com>,  Hauke Mehrtens
 <hauke@hauke-m.de>,  zajec5@gmail.com,
  bcm-kernel-feedback-list@broadcom.com,  Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  linux-arm-kernel@lists.infradead.org,
  devicetree@vger.kernel.org,  Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH -next] ARM: dts: BCM5301X: Drop extra NAND controller
 compatible
In-Reply-To: <8ee13309-537e-4a63-a402-289fd119118f@broadcom.com> (Florian
	Fainelli's message of "Wed, 4 Feb 2026 13:21:46 -0800")
References: <20260204091530.624230-1-miquel.raynal@bootlin.com>
	<CAHi4H7EVLsgVL5KCERTX5XBNTMvZDNxePzo48Zp5dsfDdoCV1Q@mail.gmail.com>
	<87ldh8fdqm.fsf@bootlin.com>
	<8ee13309-537e-4a63-a402-289fd119118f@broadcom.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 05 Feb 2026 09:49:27 +0100
Message-ID: <87fr7ffuco.fsf@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,bootlin.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TAGGED_FROM(0.00)[bounces-262892-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 0B707F0061
X-Rspamd-Action: no action

Hi Florian,

On 04/02/2026 at 13:21:46 -08, Florian Fainelli <florian.fainelli@broadcom.=
com> wrote:

> On 2/4/26 12:36, Miquel Raynal wrote:
>> Hello William,
>>=20
>>>> diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dt=
s/broadcom/bcm-ns.dtsi
>>>> index d0d5f7e52a91..46b650abdb90 100644
>>>> --- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
>>>> +++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
>>>> @@ -479,7 +479,7 @@ thermal: thermal@2c0 {
>>>>          };
>>>>
>>>>          nand_controller: nand-controller@18028000 {
>>>> -               compatible =3D "brcm,nand-iproc", "brcm,brcmnand-v6.1"=
, "brcm,brcmnand";
>>>> +               compatible =3D "brcm,nand-iproc", "brcm,brcmnand-v6.1";
>>>>                  reg =3D <0x18028000 0x600>, <0x1811a408 0x600>, <0x18=
028f00 0x20>;
>>>>                  reg-names =3D "nand", "iproc-idm", "iproc-ext";
>>>>                  interrupts =3D <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
>>>
>>> Acked-by: William Zhang <william.zhang@broadcom.com>
>> Do you mind if I take it on top of the commit it fixes?
>
> I already applied this change to the Broadcom ARM SoC tree. I don't
> expect conflicts so if you prefer to take it, I can drop it.

It's okay, this will just generate a dtbs_check warning if it reaches
Linus' tree before my branch, but honestly I don't think it matters
much.

Please keep it.

Thanks!
Miqu=C3=A8l

