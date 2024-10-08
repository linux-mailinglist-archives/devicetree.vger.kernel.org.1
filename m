Return-Path: <devicetree+bounces-108816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0A6993F85
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 09:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C6A71F21595
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 07:35:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B28181CFEB9;
	Tue,  8 Oct 2024 06:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b="QvH+gI52"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F60718FDB7
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 06:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.17.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728370617; cv=none; b=JJ6K/57tduQLxDY8hb5JCvM9T1JLV3gdVHs0VBUgMHC+qyzLFLE8RvVnGmGweh7JTjKmNrl9D6wTvGHQs2X/9yMOerVBpXwG4jfZR9EEaQtCVHsrsQv1rO+bFpnEh2anaYZj2cLc7MwDisv2gS2jVpDJBgVU1K0FTL8oDNPMI8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728370617; c=relaxed/simple;
	bh=BdnwrYMQ8q458IvbO/00srYuvUdkTsJq5XLIp4S+PzI=;
	h=From:To:References:In-Reply-To:Subject:Date:Message-ID:
	 MIME-Version:Content-Type; b=VyOHgGm0SeWDhnaHIDG/K1j5Tp6rWhF51H26BS1KTviLcmUsYptSMPX6KSaQVXoAVKPqA+nObEEgYtAnJ8e3dc+WYC0SbLzPiEQaYB6aCTK/T8mUeRrUshiyG9S+TMYCH4enAVioGq8LwYLMsI/T6SIAlWOiPiDbAukr/nq9rik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=markus.stockhausen@gmx.de header.b=QvH+gI52; arc=none smtp.client-ip=212.227.17.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728370578; x=1728975378;
	i=markus.stockhausen@gmx.de;
	bh=BdnwrYMQ8q458IvbO/00srYuvUdkTsJq5XLIp4S+PzI=;
	h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=QvH+gI52YS3b51PSOOjubuYDRTqKbVWeWndVp8tIzFS29+aUzu3/QMBWOylt54pA
	 E/9Ebdo4cTYdnZoTM9RSotT5lbYoEH989jnXztc4KXiCz/V7Fz8ap2dqdEKHvsxZe
	 /0lYgMA9SIV80tst1eQbDv0JVEghYnsGcsSwLRpxvUM7VRQSFKZF5NJB8ZRaB722e
	 3Zp/66vjPvjs1tgZx/qwexVg97mG1VniFUzjFWWM11w1Ld3wefbbttGFOdl2HK2eg
	 PmJ+K1lIBN6G1d+0t6QjvqhkHk3vWSRdBY+DHnknqCkju5pdtfII3mzkPFPIqYKr4
	 nF+yHJy770IBHsV9Wg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.45]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M9Wuq-1t1LOQ068C-00283K; Tue, 08
 Oct 2024 08:56:18 +0200
From: <markus.stockhausen@gmx.de>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<chris.packham@alliedtelesis.co.nz>,
	<devicetree@vger.kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de> <20241007163623.3274510-2-markus.stockhausen@gmx.de> <e0355f2b-9d77-4792-9405-14b0bf79ac32@kernel.org> <000b01db1944$5bd444b0$137cce10$@gmx.de> <d23ba989-2ada-4033-a890-928bf4e746b3@kernel.org>
In-Reply-To: <d23ba989-2ada-4033-a890-928bf4e746b3@kernel.org>
Subject: AW: AW: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY binding
Date: Tue, 8 Oct 2024 08:56:17 +0200
Message-ID: <000f01db194f$2d140880$873c1980$@gmx.de>
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
Thread-Index: AQFmt424TDky7oOEBHAYnHfWLjuWPwFdE8X8Ac4j3w8Bo7K4gQFrn2WmszNTdnA=
X-Provags-ID: V03:K1:kx5QxXM+bnda0qZUBDVjwGEJCajFlRP/tha8QxLEIUkn87t7Yjl
 PWQ43ROQ3D/zPJIic2Y3rgb1fGq6Ht1ddO9rEVl80HrzneGUQGoYGFVCbsvJVkqq6InS5S8
 //F7TsmuihPVbBM1SOvvYG6oKhmvHhI+wHgyb7cQFFNl7f9skJ1VkTVU3e78xYwdt4UJOek
 yT48ZVxEwxBBfRwYG80pA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:QB9Evo4yD6M=;nbyYBQOdvnArSwe/rJprbQqv3uf
 Hkw4XeBiBj3VcdehbUj0RaGA4Dz9NAESHoRFbtx+5VRbDmQ3QHNUPmilb9ILP3GJwdi7aEkFh
 6ZXMNAUbsCXyjR5KdYgGzAwXrhJoJEiPoyH0oKoe7MBH7VPNICqOLbFjZ/QPy0HRKndHrJ1D4
 T/QL4toWcb8hEHAPSD5XnKsa6XQePL8erSc7F+7f2nV27Puu9EipqihQ8121bo/YzkFYgtNIe
 IZf+CGQxn6Rp1d6pvhM9iM4ZGsTX5CkZa5IPsWNjhaGIzfbEhnSucDaovhyGO7JvoaMUDttSp
 XIQlWM+hjPEYg1LvC1LmwdUGzaWDf2ok2mfipRM7aP5671QfSaHnEulxUwPtyDA92PlX9KF6m
 x65rq/s1HRyxPN4g7Lk2PbiHTB25Qg66ebE8j4bm8LUppfQSa89mQegGP1eUGgqB7jkQDBT8B
 t0pCYQJDYQg1tnQmo8gjcSEXVhbdJdUOA1AeJFYs7rALXT/hTACsDsgBX9jbrGxFpFLPL9921
 8S4zdrziY8dM30GKJdn1vjMAgtsYmAcysvev3wCvwkqbUtGPYm4tIs4VjlrW6gj6V0Rsz1mIY
 G8gY+mAIj5AHs4cdH3AJWmE0JQQmdhXVPnIAc2jmK0e0zstX2ZDPcR7T/73stXicDS/xJj3qE
 /YVlUSFE9tV05ItP0KrCPeEqwfVqLx2izaSGQH+N1CduCHEm0/O36bpuMQ7po4q7EanADfF+z
 YvtZxwRHW5TjOvIHA0rxrVDxs1sfBWUUaAAm4Kit/IEzI9ZXYHT5RE5lHexu+nJmLG7JGVkzC
 snpcPaY9wakgpsRVkpK5myBw==

> -----Urspr=C3=BCngliche Nachricht-----
> Von: Krzysztof Kozlowski <krzk@kernel.org>=20
> Gesendet: Dienstag, 8. Oktober 2024 08:17
> An: markus.stockhausen@gmx.de; linux-phy@lists.infradead.org; =
chris.packham@alliedtelesis.co.nz; devicetree@vger.kernel.org
> Betreff: Re: AW: [PATCH v2 1/3] dt-bindings: phy: add =
realtek,otto-serdes PHY binding
>
> On 08/10/2024 07:38, markus.stockhausen@gmx.de wrote:
> >> -----Urspr=C3=BCngliche Nachricht-----
> >> Von: Krzysztof Kozlowski <krzk@kernel.org>
> >> Gesendet: Montag, 7. Oktober 2024 21:26
> >> An: Markus Stockhausen <markus.stockhausen@gmx.de>;=20
> >> linux-phy@lists.infradead.org; chris.packham@alliedtelesis.co.nz;=20
> >> devicetree@vger.kernel.org
> >> Betreff: Re: [PATCH v2 1/3] dt-bindings: phy: add =
realtek,otto-serdes=20
> >> PHY binding
> >>
> >> ... and still not tested. Sending untested code is waste of our =
time.
> >=20
> > Hi Krzysztof,
> >=20
> > appreciate your feedback and I do not want to waste your time. My=20
> > fixes where a mix of your feedback and some half-baked "make=20
> > dt_binding_check" feedbacks (because packages where missing). My =
fault and sorry fort he noise.
> >=20
> > To get next version in better shape two questions regarding your =
feedback:
> >=20
> > 1. "Messed wrapping": According to checkpatch 100 chars/line are =
accepted.=20
> > So I designed the comments in the driver. Does devicetree differ =
from that?
>
> checkpatch is not a coding style. I asked to follow coding style, =
please read entire document in Documentation/process.

Understood.

> >=20
> > 2 "Bindings vs drivers". The idea about controlled ports came from =
other bindings.
>
> Entire property description speaks about driver, not bindings.
>
> > =
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tre
> > =
e/Documentation/devicetree/bindings/interrupt-controller/st,stih407-ir
> > q-syscfg.yaml?h=3Dv6.12-rc2
>
> stih is rather poor example to use. The property was added in 2015 (!) =
without review (!!!).
>
>
> > E.g. st,invert-ext. Something like this will be needed in the future =

> > because the SerDes allow to swap polarity which must be changed=20
> > depending on the switch design. How to do this?
>
> I do not understand the hardware aspect discussed in the property =
description... probably because there is no hardware description at all, =
but instead you speak about driver.
>
> I do not understand how polarity has anything to do with U-Boot =
configuring serdes.

Maybe my lack of knowledge in platform driver programming or the naming
conventions leads to confusion. I'm searching for knobs to control the =
behaviour=20
of the SerDes depending on the hardware. Two examples are (more may =
come):

- "ignore SerDes X": because the provided patch sequence confuses the =
SerDes
and overwrites registers with wrong values that vendor patched U-Boot =
has setup
correctly before.=20

- "reverse polarity of SerDes X": same goes here. Some boards need =
inverted
signalling on some of the SerDes to work properly. This must be =
configurable
somehow.

Looking at some more modern implementation/documentation I need =
soemthing=20
like in realtek,usb2phy.yaml - e.g. realtek,driving-level-compensate.

Should I just leave "driver" out of the description?

Best regards.

Markus




