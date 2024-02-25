Return-Path: <devicetree+bounces-45712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 96041862D33
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 22:35:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C75251C2095E
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 21:34:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CC861BC43;
	Sun, 25 Feb 2024 21:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="mm+T4MLb"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D817A17BC2
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 21:34:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708896887; cv=none; b=mF2aa+YKL3UTbKguHZBEyTTlsu2QeUntqEfU2WfKvSGdYkMleBVJusKiTJ8k/TVq54C5om/w78kzETVEbxhKtsEBx0+wLG0HWOhTb3nwWFFDCeb8El6H9ExvGS13BcDfDjkiAAeDJcKp/5yEI6h6DCmzP/enLGnEq7CU6RnCQdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708896887; c=relaxed/simple;
	bh=QQsvhwDj8VEU6K1KjI/knaY7wpikZJpWMS+4htoOu/A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W4jrqECiOh5SBslBsPxr9EqA51CtL1F9iaX6H4IqebMqB3pJHln1ljvzQakfeC9K6I6NYxyqBnwdllPlB/RjAw/Kw8IfBGyXOqZFZMIbtM/BYzapOd7TDL35VtUdSNe4e7xAAeot6j7sh6G4oRhlixVLfgwWpGVa1/qdUVRstoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=mm+T4MLb; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id EE0AD2C07CB;
	Mon, 26 Feb 2024 10:34:35 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1708896875;
	bh=mOUZ+TwkiAjRh9ZNzvyYfCdGmY+q2Lr2Qp5dtz9LG/w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mm+T4MLbSCX7nTfRotXb1RXaplysCTOGH3rL1HjPxD2PGcZ6/hE0horowEWSgXa7a
	 wu5JPrKxRnSUhXY93xTmAyCdqu7yFtTKNzIGBkAm1YLENk7GPuTAtcOsjpTzqJpLyK
	 ljr84ELkDdTYImvtfKb4jkkTETWlc4WVZWit2/SMr3GSinY69zbnsnMfn6d5oxu78M
	 gC7qMI+ex5pZ4hO3803hTUeARaXyMRYXFwcXjaXuwbw2UhYlwaqO0IbP08PvJYD/V8
	 FiHOaIPHQHg9nTTAI2//EE+6bOEumuy/TsCM8xh5vGByCgqQxkR0aLKSTsZq54eVQK
	 Q2EgyJj0jL9YA==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B65dbb26b0003>; Mon, 26 Feb 2024 10:34:35 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id A29B413EE8E;
	Mon, 26 Feb 2024 10:34:35 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 9FFD3280808; Mon, 26 Feb 2024 10:34:35 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: ojeda@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	andrew@lunn.ch,
	gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com,
	andy.shevchenko@gmail.com,
	geert@linux-m68k.org,
	pavel@ucw.cz,
	lee@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-leds@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [PATCH 3/3] ARM: dts: marvell: Add 7 segment LED display on x530
Date: Mon, 26 Feb 2024 10:34:23 +1300
Message-ID: <20240225213423.690561-4-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240225213423.690561-1-chris.packham@alliedtelesis.co.nz>
References: <20240225213423.690561-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=BKkQr0QG c=1 sm=1 tr=0 ts=65dbb26b a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=k7vzHIieQBIA:10 a=75wrGpN2Od3tzqupbDsA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

The Allied Telesis x530 products have a 7 segment LED display which is
used for node identification when the devices are stacked. Represent
this as a gpio-7seg device.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/arm/boot/dts/marvell/armada-385-atl-x530.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/marvell/armada-385-atl-x530.dts b/arch/arm=
/boot/dts/marvell/armada-385-atl-x530.dts
index 5a9ab8410b7b..088b77987081 100644
--- a/arch/arm/boot/dts/marvell/armada-385-atl-x530.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-atl-x530.dts
@@ -43,6 +43,17 @@ uart0: serial@12000 {
 			};
 		};
 	};
+
+	led-7seg {
+		compatible =3D "generic,gpio-7seg";
+		segment-gpios =3D <&led_7seg_gpio 0 GPIO_ACTIVE_LOW
+				 &led_7seg_gpio 1 GPIO_ACTIVE_LOW
+				 &led_7seg_gpio 2 GPIO_ACTIVE_LOW
+				 &led_7seg_gpio 3 GPIO_ACTIVE_LOW
+				 &led_7seg_gpio 4 GPIO_ACTIVE_LOW
+				 &led_7seg_gpio 5 GPIO_ACTIVE_LOW
+				 &led_7seg_gpio 6 GPIO_ACTIVE_LOW>;
+	};
 };
=20
 &pciec {
@@ -149,7 +160,7 @@ i2c@3 {
 			#size-cells =3D <0>;
 			reg =3D <3>;
=20
-			gpio@20 {
+			led_7seg_gpio: gpio@20 {
 				compatible =3D "nxp,pca9554";
 				gpio-controller;
 				#gpio-cells =3D <2>;
--=20
2.43.2


