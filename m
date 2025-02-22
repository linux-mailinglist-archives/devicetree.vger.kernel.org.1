Return-Path: <devicetree+bounces-149896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F20A40B92
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 21:31:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B2402189F64A
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 20:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B33C1F4289;
	Sat, 22 Feb 2025 20:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.de header.i=xypron.glpk@gmx.de header.b="Dj0n9cDc"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B12E18EB0
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 20:31:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740256309; cv=none; b=ZplhFJ91KPIuUPVgvis4xMxYCreuvFuF8mNO4n9D9HO7mKMwJNs0KjbvDZZhbFIv089kOGYCPIDj3udUgIeiuHvvlarXw81V13GXswmnQMMkdYxANgQr6jvoJB6JVJ9OfLBV1IZN840h1Ghg4CbpEWPkGjjPytT0HZDNtY59dqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740256309; c=relaxed/simple;
	bh=qbP6ARrQvZa7twzrzaKyxh1Rp4Q53ChomPYabHe6Kp0=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=MjC8zNz0hH5Hd3Y0EEOUlP3J6nH4uLGxbEM+aUJ41C6ZJ+mnYimbS4s02d+FliZgDUBiEewllsHtKaa/Sl+ZJR7Ixas0bTPFrSpYaBpf0LpemY3AEvJHPQB48YR0rtckWLxInQxjfAUZx5KJ4j7CinRnTVNsKTsyVGGXKuMH98Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de; spf=pass smtp.mailfrom=gmx.de; dkim=pass (2048-bit key) header.d=gmx.de header.i=xypron.glpk@gmx.de header.b=Dj0n9cDc; arc=none smtp.client-ip=212.227.15.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1740256303; x=1740861103; i=xypron.glpk@gmx.de;
	bh=qbP6ARrQvZa7twzrzaKyxh1Rp4Q53ChomPYabHe6Kp0=;
	h=X-UI-Sender-Class:Date:From:To:CC:Subject:In-Reply-To:References:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=Dj0n9cDcqrqUwTaiECbHruE7gN/Dqmcb6dId3CTxZpFk2i42jMS/Z63PdVBJMrVV
	 Kgib7tKxradrPyHrlzqJGEXkcZH/amC3AmAruWhA13UF/x40fLym+uIozse0uSt3h
	 lps2fHesvWURz4QI2GRcVngjrYcNpFvTL66cHNcPk78fSd0EOnYQa381bNyT+eMIS
	 M6Vso5WSoxekDWWLULt+3EXpiE+qKLcJcqSJIuWbnWryfEGGrTQyPQmdDAtX2U7JF
	 np6d8vPHAxfb1QD3wts/n+si2nTY5XkVpSlUYhhNXmeuF4LHFQqbrTlrm36lWsQ6T
	 CAuIGdCzpEOZ6Ze/JQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [127.0.0.1] ([46.114.105.158]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MkHMZ-1t280c07pp-00nQ8U; Sat, 22
 Feb 2025 21:31:43 +0100
Date: Sat, 22 Feb 2025 21:31:40 +0100
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
To: Ayush Singh <ayush@beagleboard.org>, Jason Kridner <jkridner@beagleboard.org>,
 Deepak Khatri <lorforlinux@beagleboard.org>, d-gole@ti.com,
 Robert Nelson <robertcnelson@beagleboard.org>, Andrew Davis <afd@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Gibson <david@gibson.dropbear.id.au>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>
CC: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: Re: [Question] Status of user-space dynamic overlays API
User-Agent: Thunderbird for Android
In-Reply-To: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
References: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
Message-ID: <2FB1BF12-E30C-4D99-8F71-2B28CEB16478@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:b4/wua6F1mlRqSOfxA+yhPuGWPMXI8Yu3hV25dL6xtYcahveXsk
 kvNlWcl4SkCLax0InZjzdOZwg2r7iV56rhmfD6itbY85c+VSBF8KKK+sVjB8U94TmdHBcsX
 jWRxl8CNg+g8UWendjQsPagvy0TUA75NiV+PS9spPC7armCjE14Wq+nH+x6UfVhgil7bMnB
 8QOqoTtIrMEt5fy/QkVFw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:KgLjmSOJGUw=;rkaGyV3muxK654si1vT4bgbF2oa
 fAjsJheJVY3LM7EDxh63+gi1nejW98PPgs0KEpGp2AWOZ42ar3y7PiFwnl+aRot0JV0C7s+H/
 KCp7l+NsmFF/dBotcIjpQKKEIzjvvemIZ/kXA6GWD9429Vx8ToQjIiqDGRSpX1CSdZ5St5CHV
 5QJK1aXnYX6OjCdGGa8A94YRzwlWerlTHCwGa7pTks+Jz0snK0zWxN2Yh9cVMHjRVF3GXfemO
 T9Vx7YaQn53D2UxsI5+kI78VZdQ1LC6TKi63Q7Yg8fHep85B9HMWn5L0v3rb9E3Pyl0/UKMc/
 RWkqE3cL2pNSuT2iFTPtvkqqsHAy3QdeVoBQHwp0m795jMHswlh81R++Q8DYHfNHi9ZP+LJhi
 FzM50KK3BxprqCwgBi9ZK9XhF0p46F2HDqM/rcB4dK1RxMcNuENEmB8VSbzQAD72BXKb05uxK
 13YndfrF2/G0i16YHCPAusD5ZghUb9Ll0HhlNxKMihsHmgGqzSBVOdozvKzoe5WyS3xmgUUcl
 zjvnByCILdI+8wyDJ1eMZa8aINTrL0N6RVkey5weCcFCMJ2I1VrDJ7YMrOw8iYBBbYrpwSXX7
 Z4OL2IsCyfw/pxmgMxj7lb5G1MQWV5LvgLggSWGIAw/kH9tUZhI2z9kgeO+XlTwpgGwSgrihH
 kDYyxtvfVs8GNexF6NAknX8lsgFXk13QRDIsYDqaypp8R5EqygUIPnD/c8eLK8R1iMWnQz5j9
 IDGrne57C/Ro6tSRbEOHo9WV7e5j+VVntWOkTEGQ89DHaHtLWE4oP5NJf2ppYI/7L1BP1RKND
 n0Uut1xyHnKpHpsEgZNOo4iV8igY8BW4066ABfjl8ShpIPdaX4XiupNY6/F7vGFJ32Jc//h0D
 I5fYfithZalcVRbWQZs4Xm7YlRDrgK+TvHC2fRcOEnt3uXqjMMMbDNVmhTF3UbcuIVpLCZ+fa
 AFCgEZbf73mQGAGxteheDu8zQUP3xo8Vuclp2xpUOb9ukhSsidLoIdxhXyeDDjkodApA1+5M4
 uiNUuc/5Dg4eXSdBj1ZMDCm1fUVDldEnE72A1FVtAS+QvcNaw/tgMp8dCfX/1sFGFSW6Oomsd
 6PSNSfq5xzZCEg+2y1KQIOnklPPO52sd7QJtUv1xPtaYFGTVj5yq/c+JnMOarRzIsKlbU0PlD
 rfvBoGEIvwobYzdJ/34JVEY9mwk/CrqnKAakf5rzPZO+LX1pp/5covbv3ukXJaADVXFuN3YKH
 XL+XxVhIO/yQyc5I0NDLeUR3qaO3uVSOtMsvbFqP4DeudWgyPvB8P/HOP2MJvIRJWs08ZqOJn
 shM1Lqyr3yvA+iZklTXuTjm1Vm2UVnAOzZSZrUBiIOd9MJebyQ9p0vn1YEyPsqWm58O1TLiX5
 gi09wnHH6nHHWzYom1YR1Sbp75keep5bYPH2CmvpktmhMP8XwBQWzI9KqYY7P8Yi7zolGAu65
 iJhYsgA==

Am 22=2E Februar 2025 21:13:56 MEZ schrieb Ayush Singh <ayush@beagleboard=
=2Eorg>:
>Hello everyone=2E
>
>I have been looking at ways to do runtime devicetree overlay application,=
 and was just wondering what the current status of the different proposals =
[0], [1] were=2E They seem to be quite old and I think they were already re=
jected, but due to all the broken links, I am not really sure about the exa=
ct reasons=2E Also, maybe we now have the solutions to some the blockers at=
 the time=2E
>
>
>Let me fist go over some of the use cases where I think dynamic devicetre=
e overlays can be useful=2E I am mostly interested in their use in single b=
oard computers like PocketBeagle 2 [2], Raspberry Pi [3], etc=2E
>
>
># Uses
>
>## Dynamic Pin muxing
>
>A lot of SBC's aimed for creating hardware projects expose headers, where=
 each pin can be used for multiple things like GPIO, I2C, PWM, etc, dependi=
ng on the pinmux=2E I think Raspberry Pi has it's own solution to do usersp=
ace pinmux, but if userspace devicetree application was a thing, it could p=
robably be used for this=2E Additionally, being able to use dynamic devicet=
ree overlays for pin muxing would allow much easier transition to use prope=
r device trees during production=2E
>
>
>## Dynamic Sensors/Devices
>
>Using devices such as sensors, external ADCs, EEPROMs, etc are also a com=
mon usecase in SBC's=2E A lot of current solutions seem to be designed arou=
nd using user-space drivers in such cases=2E This is a bit of a shame since=
 Linux kernel already has drivers for a lot of these drivers, and they are =
probably going to be of higher quality than most user space drivers=2E
>
>
># Challenges
>
>## Security
>
>The concerns regarding security seemed to show up in the other proposals=
=2E There was a proposal to have a devicetree property to allow/deny the ap=
plication of overlays in some nodes, with default being deny=2E Was it insu=
fficient?
>
>
>## Memory Leaks
>
>Currently, updating/removing properties leaks memory=2E Was it one of the=
 reasons for the rejection of previous proposals?
>
>
>Maybe kernel already has some solutions more suited to my usecase that I =
am unware of?
>
>
>[0]: https://lore=2Ekernel=2Eorg/all/1417605808-23327-1-git-send-email-pa=
ntelis=2Eantoniou@konsulko=2Ecom/#t
>
>[1]: https://lore=2Ekernel=2Eorg/all/20161220190455=2E25115-1-xypron=2Egl=
pk@gmx=2Ede/
>
>[2]: https://www=2Ebeagleboard=2Eorg/boards/pocketbeagle-2
>
>[3]: https://www=2Eraspberrypi=2Ecom/
>
>
>Best Regards,
>
>Ayush Singh
>

Hello Ayush,

On [1] I gave up when I got the impression that the maintainers only wante=
d to further their own companies interest and did not show openness for a g=
lobally usable functionality=2E

Best regards

Heinrich


