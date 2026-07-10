Return-Path: <devicetree+bounces-324500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xPjwHPH+UGrw9gIAu9opvQ
	(envelope-from <devicetree+bounces-324500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:17:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF4773BADE
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:17:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arndb.de header.s=fm1 header.b=ZGXnd8Pi;
	dkim=pass header.d=messagingengine.com header.s=fm2 header.b="L PfOkad";
	dmarc=pass (policy=none) header.from=arndb.de;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324500-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324500-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2DEEB300A49E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 14:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B8D0341AB8;
	Fri, 10 Jul 2026 14:17:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fout-a5-smtp.messagingengine.com (fout-a5-smtp.messagingengine.com [103.168.172.148])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD60340281;
	Fri, 10 Jul 2026 14:17:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783693039; cv=none; b=rOPEjHeQQ3xuqWAETqzjvyx7H13gX9qPho9OELlqVK8rtw7+hYOX4jZMWxl8I3x2+0koB9mzN6RrsXyDnCNW1GaUZ3OtIAcLaLK3ijN+TaLRjWhZsSA0iTrQH5HOZ8a+YH6IZQHu537UTuvK+CNvazxNrOrQSzoqRyAyJ8Py3h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783693039; c=relaxed/simple;
	bh=sa98XhkxWSb0LeqJWkHTtyOw8q0+ZKKpwNSalj4TTkE=;
	h=MIME-Version:Date:From:To:Cc:Message-Id:In-Reply-To:References:
	 Subject:Content-Type; b=pYVuWGFGeLil93vYfYjXKKowctvFD23Wb9eRbW+xHmljMPfif3cGFAFYdPX+02cMiszc9QME04JhLzbauoxK6RgPPYQzq8ZkKhKctetvoR5h1hM6LGTeAb3vx3O+t2VehJMnpWJ/fkWTuimVC9Wwrk2umUBvTXn6ZkqQ34ZICnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arndb.de; spf=pass smtp.mailfrom=arndb.de; dkim=pass (2048-bit key) header.d=arndb.de header.i=@arndb.de header.b=ZGXnd8Pi; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=LPfOkad6; arc=none smtp.client-ip=103.168.172.148
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfout.phl.internal (Postfix) with ESMTP id C0F5BEC01AE;
	Fri, 10 Jul 2026 10:17:16 -0400 (EDT)
Received: from phl-imap-05 ([10.202.2.95])
  by phl-compute-04.internal (MEProxy); Fri, 10 Jul 2026 10:17:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1783693036;
	 x=1783779436; bh=/Pm6YjVPTn66E175rLBZQYOV6tuo0Tyec/7ISEHA5r0=; b=
	ZGXnd8Pi59/LlTc2LG27zo/SicfS0oRRwDSZyIPFtp7dN6Q9U5zTEdJU4yxFJDF7
	Ygl6dDAlye/yAMOSkV2cc18oGcfgsHz4g2ev/LjPNKwGtYHbpxRByVssBM1z7Xz8
	ye+E03ywUv73k9viTgIbiB4+gb64r53+RYne1SpK+YbjuT+gflEfjBOeIklNRfDb
	0ju+ulq0LzpdVGzCi3h4jDOVflhIbF9NKeLqaf8xOj/sZRXtudB3GF0fBqLz2fsU
	LSNHaiycaPS0QgMdC/0BVAwSpge1JXCrwf0twMshFwPYhM4jaFUOPhfk++X9JZ4U
	9wA1OXR4FYvmHhSKraQPYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1783693036; x=
	1783779436; bh=/Pm6YjVPTn66E175rLBZQYOV6tuo0Tyec/7ISEHA5r0=; b=L
	PfOkad6DKsgoqekGgh5N8vib0ODDalz/2FiPfQdkBOyWYns6AhM9BiqtWTXd9JzS
	0J9ztURUmaLRHTAj9Zra+qq6yxkAjqehvX6kFsSRjh7BkxDkpTPpxuv2Q7c0QiXE
	9worAagS5gDre1SL7zckgPd1qnK9gUg0RI+cIwE6NU2/9PZzJzNaUxoLUv9ci4jb
	hNljeyWtG+jpgzj+fsaoGIW7zVxV8BbvliDAnzugDUXCVW3oWputWH87v5QddNfo
	SD9w0x5u54dVugzc20v75jJI32SKHpT3UVT6pYrPKVJHeYk+jnA0y5S5Qfk02wLK
	fylKd7qY+TwOCmR2UBfNw==
X-ME-Sender: <xms:6_5Qar4QGDvj3vQzFs_WDJTKmQbqznB91egj8n6tMznBxpJALetoGw>
    <xme:6_5QaruoANe28olDeO-rLPdBh5N7gVXube6tnPiF6NnBP3x-OdB80a8ZUnCuMs7Fn
    y3regZxu8j5FUu49oTiDEa-DBaIQg2QDAlJqeCZBCr-72F7cWx4R4Q>
X-ME-Proxy-Cause: dmFkZTEtICzMuIfiBuDNE7cd8mZ+0Rq9QDzaIvGcbw6GT5FEBB6x3ZrMUbqJCGQTT0mK9M
    OGw1i2dN09a8qyFf7tgrfim9F+r99hNqMGCm/hNe52E+Ouidfu77eaHT74/+cyOMjZZxsS
    UeXObk1CSaJEg8CnUGxh8aWtqoqMoJZSc40nW/l/Z8RGBYMDWe+azDRFCoq2TtlMYX/I+f
    JdhL7gX+oD37ISvAWda2aKnXUAuyrer/H0v0dh7Di8E3/ZmIyEewctv6qJRny6nkb0PBb4
    /rQzXilfz7bs2NPC8FHmlrUdV2Rjk7kzEN28Eyr8v4ciTOx4bzUcpJgo8Tn82DJ6QWVfoG
    n/WvbYshFr9AN5V5rbfiIgFtXCFfV2d6vtjfVy9BdJRp4EzM1I8IFIAL7mj4b0iG5rL0mu
    pjSC+CJbYBlH8Bg04UM3BAKQDh3RB0BTrweCkk8XwJ7DWOmNJ99mgeQXRfLUVQzNWE1K+s
    0E506931Llr/MJBa5mBIHwwlWeJG337aBNyVpLmXyI/m8ZijyNBytQBEVyR5FFgMPomuZI
    3sNtuu8mbZ80uMeYV5YPORgDSsJxmyl6zUoHEqWAlPmzuRO1h1FUTKaNhQxAE7Pfz3BHKm
    UjG/S2veFn3D1qYWKuZS5GULleHsagQnmcQY/OBxHoeTAvUxFtN+W1oicZPg
X-ME-Proxy: <xmx:6_5QaivKAzR7v5lsVARuzembA89SKAntJpZaB0-Y7nyFmOI7hSd-Qw>
    <xmx:6_5QakICjkQ88MEOvR87A8TzQ01cWfJphkBb5E4U3P51kk5TYNUhEA>
    <xmx:6_5QaholRJF7W8-3fS8DDAxOoIN88AZKg0l7yB-mr_AoiECY7H75HA>
    <xmx:6_5QanUbF3HCrthZaVQG8JS3Rn2I-9YZD8yhMVCuaBOLp59Kpv-dXA>
    <xmx:7P5Qai-HNID-NT-yBw_ZZYdUMyB1-OOpErNqL09Oh0gZHfHsyZYP4HsA>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 8FFA91820082; Fri, 10 Jul 2026 10:17:15 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-ThreadId: AdFLe7-IZaaF
Date: Fri, 10 Jul 2026 16:16:35 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Zi-Yu Chen" <zychennvt@gmail.com>, "Olof Johansson" <olof@lixom.net>
Cc: soc@lists.linux.dev, "Jacky Huang" <ychuang3@nuvoton.com>,
 schung@nuvoton.com, "Rob Herring" <robh@kernel.org>, krzk+dt@kernel.org,
 "Conor Dooley" <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Andrew Jeffery" <andrew@codeconstruct.com.au>
Message-Id: <5f2954e4-2e0c-40d0-b67f-933446c83cc1@app.fastmail.com>
In-Reply-To: <20260708082457.460710-1-zychennvt@gmail.com>
References: <20260708082457.460710-1-zychennvt@gmail.com>
Subject: Re: [PATCH v2 RESEND] arm64: dts: nuvoton: ma35d1: add CAN nodes
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.65 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arndb.de,none];
	R_DKIM_ALLOW(-0.20)[arndb.de:s=fm1,messagingengine.com:s=fm2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lixom.net];
	FORGED_SENDER(0.00)[arnd@arndb.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:zychennvt@gmail.com,m:olof@lixom.net,m:soc@lists.linux.dev,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@codeconstruct.com.au,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-324500-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[arndb.de:+,messagingengine.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arnd@arndb.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linux.dev:email,vger.kernel.org:from_smtp,arndb.de:from_mime,arndb.de:dkim,app.fastmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ABF4773BADE

On Wed, Jul 8, 2026, at 10:24, Zi-Yu Chen wrote:
> Add controller nodes for the four Bosch M_CAN blocks found on the
> Nuvoton MA35D1 SoC.
>
> Additionally, configure pinctrl and enable CAN1 and CAN3 on the
> MA35D1 SOM board. Also, update the APLL frequency to 200MHz to ensure
> the CAN controllers receive the required input clock for 50MHz operation.
>
> Signed-off-by: Zi-Yu Chen <zychennvt@gmail.com>
> ---
> Resend note:
>  - resend with the complete Cc list; no patch changes

Hi,

I don't see anything wrong with the patch contents, but I think you still
have the wrong Cc list. You have sent the patch Cc: soc@lists.linux.dev,
which is where maintainers should send the patch when it is ready for
inclusion in the SoC tree, and you have sent it To Olof and me.
Olof retired as SoC tree maintainer a while ago, and I'm not going to
apply this because it should go through the Nuvoton tree maintained
by Jacky Huang and Shan-Chun Hung.

Please send future patches to the maintainers that are in charge of
applying the patches, without adding soc@lists.linux.dev yourself.
The maintainers will then forward it when they are happy with the
changes.

I just noticed that we have two conflicting maintainers entries
for ma35:

 - Jacky and Shan-Chun are listed for the ma35 SoC, but have
   not sent any updates after the initial merge in 2024 and
   don't currently have a git tree in linux-next

 - Andrew Jeffery and his team are listed for npcm with
   arch/arm64/boot/dts/nuvoton/ listed as one of the file
   locations, though that contains both ma35 and npcm.
   Andrew has the bmc tree in linux-next and has recently
   picked up patches for both npcm and ma35.

I see there is a lot of activity at the moment working on
ma35 drivers, so it would be good if the maintainers could
figure this out together and provide better guidance to
individual developers. I don't mind pulling from one
team or the other, but I would definitely prefer the MAINTAINERS
file to reflect the actual state here.

If Jacky and Shan-Chun are planning to do the merges going
forward, they should add their git tree to linux-next and
update the MAINTAINERS file to list the git URL.

      Arnd

