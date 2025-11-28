Return-Path: <devicetree+bounces-242958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C79FFC91B42
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:47:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 76200349F23
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 10:47:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1C1030C631;
	Fri, 28 Nov 2025 10:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="1mRLhoqV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1EA307AE3;
	Fri, 28 Nov 2025 10:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764326845; cv=none; b=a8AJ6kvqAWfMbLIz9xyo4ar0BRdg+o2Xl+uywKtfEj7vnoAVgRGu1sL5dqjAvBlvx23MAa0427pBcgCwm3Q6V6HfhMk3y8zo3WlENG/G1mSNUFR5qFShD6dNZRTQC9RZTOdJSMHIKXP+47wK3nkFLU0Wy0E1tEhqrbc5j9wmQrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764326845; c=relaxed/simple;
	bh=0s6JiidnsJPWPUQtKM9RFUOadvrids/iy6kL5Zok+ko=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Rx3WuxQu7AhVRF4PmZhwmQHSt5BTIxECn5cf8VIFCM7hsyel/nwnWvew0D09VkvsSO+8m3PdP4bHZl1HLRAktt3NB43LQDkk2wvXf9cbXcYljU5dvQcVnoyqebVpWMaR8CQ1s0H606VEs1JpXamQvZiJw/aOwBNeBzvEBNEVJuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=1mRLhoqV; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 5660C1A1DF7;
	Fri, 28 Nov 2025 10:47:22 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1CEDD60706;
	Fri, 28 Nov 2025 10:47:22 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 22555102F2B42;
	Fri, 28 Nov 2025 11:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764326840; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=QA+O9E/+I7l1Y72IuTGVRJzfPf9fHh+D5XTk2DIfFDc=;
	b=1mRLhoqVZFvqNGnQ4a0o1QQ3P5eDIGHSy0vaLvoOBaUpWkTcDdlSQZseeid+m/Ht4EQO87
	vjFf779BQjETm4MrhO3/en9XdklVFLxD70x/VuQHzveBdAxveP8un/eb0urBxkuDmIsrYE
	bGhigu8dreddzvkxiS5VMeI/Y1mJnGuYpIxiHP+qUVx5vTxFEst41q0jqyz1JuVUvTLeQL
	btuVBsMtSn1d1MNd7EOEaQyFM8SoZlIXOUxQZjYByxJGJSIq5tRl3RZlP1UVXyqKlv5/Q5
	kcXUbd/AJlT75ZLFhv1MUXIw2QQjLvmqhSDAIuh9iejJAjjxAT8qu1cy8tx1Yw==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: =?utf-8?Q?Th=C3=A9o?= Lebrun <theo.lebrun@bootlin.com>, Vladimir
 Kondratiev
 <vladimir.kondratiev@mobileye.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, =?utf-8?Q?Beno=C3=AEt?= Monin
 <benoit.monin@bootlin.com>, Maxime
 Chevallier <maxime.chevallier@bootlin.com>, Tawfik Bayouk
 <tawfik.bayouk@mobileye.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4 6/7] MIPS: mobileye: eyeq5: add two Cadence GEM
 Ethernet controllers
In-Reply-To: <aSlxGFPP-oURLpPq@alpha.franken.de>
References: <20251124-macb-phy-v4-0-955c625a81a7@bootlin.com>
 <20251124-macb-phy-v4-6-955c625a81a7@bootlin.com>
 <87y0nq4hd2.fsf@BLaptop.bootlin.com> <aSlxGFPP-oURLpPq@alpha.franken.de>
Date: Fri, 28 Nov 2025 11:47:16 +0100
Message-ID: <87v7iu4eob.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Thomas Bogendoerfer <tsbogend@alpha.franken.de> writes:

> On Fri, Nov 28, 2025 at 10:49:13AM +0100, Gregory CLEMENT wrote:
>> Hello Thomas,
>>=20
>> > Add both MACB/GEM instances found in the Mobileye EyeQ5 SoC.
>> >
>> > Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
>>=20
>> Can you confirm that you will include this patch and the following one
>> in your mips-next branch?
>
> I haven't planned doing this.
>
>> As you gave your Acked-by on it, I believe this will be the case, but I
>> want to be sure they aren't forgotten.
>
> the  Acked-by is meant for including the patches into the tree, where the
> rest of this series is going in.

However, according to the cover letter, there are no build dependencies
between these patches and the driver-related patch. Furthermore, since
it introduces a new compatible string, even if the driver part is not
yet merged, we won=E2=80=99t experience any regression. Therefore, I believ=
e it
is safe to merge these two patches unless you have any concerns about
them.

Gregory

>
> Thomas.
>
> --=20
> Crap can work. Given enough thrust pigs will fly, but it's not necessaril=
y a
> good idea.                                                [ RFC1925, 2.3 ]

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

