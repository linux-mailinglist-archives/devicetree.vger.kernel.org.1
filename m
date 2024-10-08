Return-Path: <devicetree+bounces-108914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 333DB99443A
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 11:28:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B0A81C233FD
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 09:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A982176FA7;
	Tue,  8 Oct 2024 09:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="pyJfvswL"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A620E16C854
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 09:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728379674; cv=none; b=l0PvYrvf4uub2SLCDkJFcxNYGjGv0cRNGtrWKZbc78Tauyzpt8pNRzHNasSEblSTTeLvIxeneEpS9oQJcS8zot92QzofbqMlTXHQxpDHLKAc6ogJCiRE4QghzNzc4mZi1Tj20CSBnAeolk3POlh5c/iCtbfs1BvPUB3yJ1DjnNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728379674; c=relaxed/simple;
	bh=RTylzWO0f7AgsLiIL3tJvlvA49O22v3qoJcAFWtddDY=;
	h=From:To:References:In-Reply-To:Subject:Date:Message-ID:
	 MIME-Version:Content-Type; b=rgUdNtdWPHKdSDyiYTYnTVc40l2w+46OKFXwCxOIqsiGoxoww6X2QvXZ78R1CK2Gc0FRd6fvTmMKGObyRvQB3Ohi30pyTRUEO3SQEsjTzrmHDpLsLSJYAjL6khZxp2ncPKSIjEGqCsZiOm+oTjAFXqYqilQQYqhBdnoLm7j7WJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=pyJfvswL; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728379637; x=1728984437;
	i=markus.stockhausen@gmx.de;
	bh=RTylzWO0f7AgsLiIL3tJvlvA49O22v3qoJcAFWtddDY=;
	h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=pyJfvswLMQGvrSmtLfPFJXwq7k7RyHD+RwpJ/gBqttKBiOc3b4kJkCqBLSsokKWJ
	 Fca25Eeei54747oxe6F/lpaxBW9rP9172r5kFPI6BSKhOC41tGhdDkVd2CifkWcKq
	 4Sk9bgKx6wluAWyaSHPZ+JyK1m462Y0I/MHzI/g/H88+8xryZXAneuXoAJKNVhRQ/
	 DU1Tgw8OmjjCsoRDUb19rZcBTZolhLb6Oi9SjZOMAhOXgMKsk4xzPxRSem6yyUgsr
	 6yhwX4WFa/6WgQGAqpf6Hj2AUYcNLVF5NxGvsP9jbbBG/yjbkhlrUNfrG53SaFgpD
	 WHXd3ARrFr5FG9HYNw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.45]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M4JmN-1syNc42IaH-005Pnb; Tue, 08
 Oct 2024 11:27:17 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>,
	<devicetree@vger.kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-2-markus.stockhausen@gmx.de> <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org> <000b01db1944$5bd444b0$137cce10$@gmx.de> <d23ba989-2ada-4033-a890-928bf4e746b3@kernel.org> <000f01db194f$2d140880$873c1980$@gmx.de> <30a71840-75ee-44d6-af6e-fca27af88750@kernel.org>
In-Reply-To: <30a71840-75ee-44d6-af6e-fca27af88750@kernel.org>
Subject: AW: AW: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Tue, 8 Oct 2024 11:27:15 +0200
Message-ID: <001401db1964$44f0b010$ced21030$@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwFdE8X8Ac4j3w8Bo7K4gQFrn2WmAl9/+/kBd/naN7MUxdeA
X-Provags-ID: V03:K1:h1SdJmszbde4k0pq6JyhtbLWcCW4JuJAycn0DV04BZLHn8IeO1x
 j/4KQ4oKv8cv8Aj1WGcA3mU6oD4ZgYF9MAbQnJKzr7E88CIdrro8rvc9led1nuAcPpFGorB
 GlY+JKGKf8Obw4M4SZKPjLodzMpiPwtCxGs0ZwsdPToGXSb/1u3WDFyx13sSrZbjGvIGMsf
 SOW60MZBLDajuYlj/y9zw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:l8O+JBtHtTw=;AHVyiKdiIHq+ISkc20K52rWeN1y
 4kv4xhSdcM2aVr43Jvl/fmYEe5aYteYdRP6m9Tj5aGuq8Cz5aHri1g404CjI6cq2perJElDEa
 opWQWTUDPei3297+0BdMWgt5ptunZBrzQIn0gqY+VAyuMxyGJC2kW78CUzabri7lCctdWnuaq
 wuxs8LQELYAMt/wDVfORTPDMz2wgnPMvN5HfFnA7udds/xQT0mxRI/jIfbrQ8U7YeT2oESHWH
 jqzuVejnnBEqgWog6Y9VMxPoJ7fVSHJU5A1gXpOJozmFBeUmnZmbgxWbmL9LVRREf+HkeOpOu
 Kj1gOj9GwEoczDrTWcp/2wCZLEmxkASessvPHhkb2HZ/suyN1gwf96gESct7AEUTgX4BVboY5
 jv/g6yRwDZHanvcdvjxw/gERcPoXF90RUz4FMA3TxBRGsxqgWyeI/P7JRaS6Mkva219Y7xdOR
 hOYo4p/aV5JoxZhuEfvK4kasgPTg80BPZFx+jY5gAW28eMDydU0pmHXkStQPVKkP/8AgnoPbY
 sh21SUqI3192Unr2OowJpiu12ppeauQE5EPmXxnsiHWpJRZ+Ux9oPIQdnkeJO52nxN6Qq7Qo/
 Lnj3skTt6lRI8zTMW+Ee/Dvsimt1tS7eRvpNzWU8kmDJALX8XfuGmbCSkcmLukHaC5Bh0EEpY
 fBdhw5e9wikHDukmOtbPcua9u5mHs/cg5GH+Fh/2U0ywvPiCUdCTKAw0E0XZmlTW3BXK/fNZF
 9Q2hEiKutY1eq9Lx5X4Slc6IsLGiMqYJ7JBTfCx1jzQM/8t5PnbcvLXDWfV1dAK+aXvUvQ3QI
 IjBMrHZ57BGEEIjVKKzIcp2g==

> -----Urspr=C3=BCngliche Nachricht-----
> Von: Krzysztof Kozlowski <krzk@kernel.org>=20
> Gesendet: Dienstag, 8. Oktober 2024 10:32
> An: markus.stockhausen@gmx.de; linux-phy@lists.infradead.org; =
chris.packham@alliedtelesis.co.nz; devicetree@vger.kernel.org
> Betreff: Re: AW: AW: [PATCH v2 1/3] dt-bindings: phy: add =
realtek,otto-serdes PHY binding
>
> On 08/10/2024 08:56, markus.stockhausen@gmx.de wrote:
> >>
> >>> E.g. st,invert-ext. Something like this will be needed in the =
future=20
> >>> because the SerDes allow to swap polarity which must be changed=20
> >>> depending on the switch design. How to do this?
> >>
> >> I do not understand the hardware aspect discussed in the property =
description... probably because there is no hardware description at all, =
but instead you speak about driver.
> >>
> >> I do not understand how polarity has anything to do with U-Boot =
configuring serdes.
> >=20
> > Maybe my lack of knowledge in platform driver programming or the=20
> > naming conventions leads to confusion. I'm searching for knobs to=20
> > control the behaviour of the SerDes depending on the hardware. Two =
examples are (more may come):
> >=20
> > - "ignore SerDes X": because the provided patch sequence confuses =
the=20
> > SerDes and overwrites registers with wrong values that vendor =
patched=20
> > U-Boot has setup correctly before.
>
> And if someone updates the bootloader to a bit different one, the DTS=20
> becomes wrong? How do you handle then same board with two different=20
> bootloaders requiring two different DTS? DTS is software-independent
> description of the hardware, so this does not look like DTS property.

Good point. So the initial idea to provide dynamic patch sequences was
the right direction but storing in devicetree is wrong. Like Chris =
mentioned
I would change the code to make use of a dynamically loaded firmware =
file.

- if exist: run sequences from there
- if not exist: keep registers as is.

Reasonable idea?

Best regards.

Markus




