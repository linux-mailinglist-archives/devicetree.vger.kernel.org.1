Return-Path: <devicetree+bounces-150004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E43CA40F11
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 13:58:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F0F83B9491
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 12:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B6B820765E;
	Sun, 23 Feb 2025 12:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="a5zNDwgS"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2071C84CA
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 12:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740315470; cv=none; b=TZBoa4oRETDNF7f0miLFcctjTe6swNjdUZtS7q2KQUt0+nAo15yPPS2cagkjkH/hny535huI8lFNHPR8iAWAmyVcgrgLoVoWbA2r2RppjQ1PnPJaDZYjbsYBe63HUion8AJsL5OUF19vfRmVPEhxQmL7DvARE55EZOC6OLUMsO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740315470; c=relaxed/simple;
	bh=YyiyW9CLP7JCzGjiTRbb8mzYI0N0e/he15/GIVwyxOE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=joUqVX+b9mx9MppTVs9nY9wenOZgTwqPTvhL263KPykrfZJUYPxB6vHi5chI8IyqQMKiKPJydxOM7OTv+muCXx5jTXa4fW5snfOGLYCfYGD+zK/qGf9GIuj0r0uwG1AZUE1BI1V2rHEi3/1MZQkyvEPE9sQnDf35L1zShUlQHLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=a5zNDwgS; arc=none smtp.client-ip=212.227.15.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1740315458; x=1740920258; i=wahrenst@gmx.net;
	bh=fOAmXLgFxWZ+ulX7KAiIBOK6edcQA4gcgth7a0IxJXQ=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=a5zNDwgSdiH9Xy5GP5f5p3dc+kxcUXKfevPR0EjMSqimbkQQlGpQ1hmGba3V2DDn
	 DjdTIr3iO1gsFUyaf4aYEuoGWHovl1xlZdrxZsIL87Wh56BruOyzqWlJBTNCRkcJu
	 62HS8NJG/I90koyN0YR8nQwEmx5m0fsUQQvcrwD2RcBpkFzUQ0AETobj9EgBSHYgE
	 aDWrsTB4OPm4xlRh0BgzxrSCJz1p6knF1vc7Km/jfvt5NeYokrx5AKRvmpW3gLJGM
	 RjK+lpIqPw3+0aQXnf3zjrKn4MDqQZozshUeAUvY07bAgmVc6QcT2htFNiIwEHSJG
	 aipjBKAQVSCS2J6A0Q==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.251.153]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mel3n-1tDxC84AlR-00hs2w; Sun, 23
 Feb 2025 13:57:38 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>,
	linux-arm-kernel@lists.infradead.org,
	bcm-kernel-feedback-list@broadcom.com,
	devicetree@vger.kernel.org,
	Andrea della Porta <andrea.porta@suse.com>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 0/2] ARM: dts: bcm271x: Adjust PL011 primecell-periphid
Date: Sun, 23 Feb 2025 13:56:12 +0100
Message-Id: <20250223125614.3592-1-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:5hVBDRw1GpkiLmHAzwcsX/ABqcqVS33Z/ILCNuN+T3Mylbvytnu
 VcEI8FQ2RlfLy0Iv7Oq8OXRlJwRAMBtelpklzok96aPHGTiLaLth8N6lYM54Eo3XMC73wb2
 qdNltJI6tJSMmbwU2/5bwbdhNijJqdbQGuVDh8NzKVY8mx6fEqDhG7t4nRoAYl2VrBrDkHq
 brbfuTaX2rloBS9Hy1IwQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:g7GFx7o6EPs=;ikqmq2U+l61LaW7FF0Lx97feNLK
 qEetAqPlgu/4G6jmyFsS5hjIKXqA4i1bC4avXH0YXZm4e+t6zeBqSkk18Ze3X6Gk/exLy0G67
 kWNGAgrErZZT10s7+DprO3WvcGh0PLSBjRgFzwL3gByP6V86k5+nze7x7qiiUl3OQbKUpopAW
 ksKEVvAyq90EHjzmpqZ8yY2SzJe+vdlvirQSrVSBbl/RhyBPp9qlh4stANSMbTHAL0eGBSZ4F
 rOBabopxG89Wh++sAVyo060/cpbYeRcr9rLcCneeVVu47+/FH5/2WleHrIPndPdwOhgLzDe8h
 3zvg/+7t/sRuviR8nOu1wJhFuFyRGjNYhEZmtYCbnwhwGjBszkCGfU8YlwdUNCfgtvwHvEFL+
 MxSEdSCZoicaum3BkhPB6oj3pFGJ76DbVWJp4VVB/PEa5K6ER6lYigGe4stF8yEsOwGr888/o
 o/yN3S9ojAKMnyG0ZYajO7dnTQNrCgwso3kaZdyhMR5MSqdfz7mkGVyILrF0e/JMsR++NXa6F
 7W7TDzrRxbGlG31rcwDb8jgu+2czzk0POJXAaJrusiymTzgWrKEgL/qLJJc/C64wcQRdgbJ3U
 Kbw28mtNczNEDVCmcG2UUCdi5qTDzCDZfJVsdlfkBHyHrFIydUxYx9CCWfht/1uGU8A8c9LL8
 /l4YLUZtR+wWBLzGn0pLbp/QdQ8rckytpg48wKJqAQ5lIlG6IRsI++fF4hH9hDIuUnv8sErSN
 yyeoMNayhzF3lzDIGs2XOhrFDro3LVXhHvNPWXCFOCL/qxS1tyqLN1iYgO4n8a5EiqC09VcdD
 oSvOQi2vGGdSZ6OQ1MIJzeuRv+6WLy8I0+wwvb+7l8111GZfgTGTQg08VWZkGaJdWASpbOvux
 jNH4ody4bOsR5+IO+bVy+rpneA8FCHFryMQ+nBDkBfqkGZWkH0B79HgCLbR1sqxl3Kg43/C2P
 fyYpvhwNfsSrReRzSmhETX4ykmTVKGF5H5unm3cCqmWdBhrNN0vRVY0H2CDJyhHXG95d11Y9Y
 giu8DhDZYcNqcvTwDwrOCE+qSWW2VNbOfNL13oFOUvc2K4epdKgMqZqXtOQp0Xz4aaPsvWR2/
 HgFWblID83wVpnmWEVK4zRUKmJfK1D5tXToYShFXH6GO3QX5l0nSyPjwl+Zodo1uix9F2Sqtv
 DulgympQ/+7ZJww9DfRKcOdZaqYITEVhw7RQ+Xx6bfJlWa4dCdOMOv9P1YWtGlgcjveOETBWO
 4+TET/uM2x4SnHN98ugSwgyA//9hCYPQC7HCeDzuHy6Tz0SjwdkRHaMFthdlSx0tUw/8DDACe
 UgPguX3mGLj0hP45jeWc8IJ+iYOvFBOZguZKPVq/MJNhv35kXwdiAQ84Lj/lTrUgAlBNo+Q+i
 lYmphBAYY4APe9V6ndjAxtkSCufGEF0WAwuDFREUcmRb0O9QDe4OgKX1iQ

This small patch series adjust the PL011 UARTs primecell-periphid for
BCM2711 and BCM2712. This has just been taken from the vendor tree.

Phil Elwell (2):
  ARM: dts: bcm2711: PL011 UARTs are actually r1p5
  arm64: dts: bcm2712: PL011 UARTs are actually r1p5

 arch/arm/boot/dts/broadcom/bcm2711.dtsi   | 9 +++++----
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 2 +-
 2 files changed, 6 insertions(+), 5 deletions(-)

=2D-
2.34.1


