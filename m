Return-Path: <devicetree+bounces-246206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 54097CB9E0C
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 22:22:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 346513001FC3
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 21:22:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5A3C2BCF43;
	Fri, 12 Dec 2025 21:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="Vr6uJPHc"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E2D2749C9;
	Fri, 12 Dec 2025 21:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765574556; cv=none; b=gI/5dV8ksVNo+IZJMPaBh48sWxV1dIJ9fyQYDudcYSbKtZzvv8hTMsuyNsPWThETNEF1xlxq03CkNdFIpUEUY/2gYrjaJvuaHb5koA1hNHmYNMa6dcwaxFRXPGO3J7baUuUZytc/6PMTQ0/xUfdgwAotScaNBiYMwr2FDXdY7ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765574556; c=relaxed/simple;
	bh=TSPNRQBf4k5sXExI/xycT3Sj2lLf/Gt4Dd2aN4cImPM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c4VMlzjRgL+LDJPj+CKiMogOSD8ouBtGdIVzqIEtGxIFq5ddtiVAaKtjVn10MtJuS4OvSjvKTXh7asuyE3zGLE+5gzHNwQGn+XE9Ksodn1/uayGu+pmr8xuhddbu34knMBo//Va2h21FKGI4NeKEX4AugROuQeAq+y0SHvD2tWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=Vr6uJPHc; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1765574436;
	bh=5MdfPukJ3hoONSmZ87YbV4TFIzjtXUGofKnYalLysac=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Vr6uJPHcV2uyHic5JqWEU3dcYtBTqdM4OyKM4abqfFWYen1c0l1B3Qp/aGSe47aC+
	 I2F6hIF0J8jWEPi2D76kCUIgcDz/1w6FB4Mcs2/N+p7RuNHWYISpju426Ti6PVdL4u
	 t3ySdOhKjRtIar4R0bw6/gt3U5YjG2w5s7bISUFerrEjAzF6FHbrUAX2dnCu0J+7wP
	 hM7rQJPNHJe7Xu4WpyfMYGV6lchqtd/NN/GE9eHyIKpdXs5jaXovlMuvD0GAY3NF0i
	 yMNCU1mUBGkux5pQhhr1ZcOCgW28bJs5g1Z56vDAefqqB1TjyYbCL+HbppsYT57YeO
	 a9MhS4rTgnPdw==
Received: from hay.lan (unknown [IPv6:2605:59c0:2078:cf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id C3970B221428;
	Fri, 12 Dec 2025 22:20:32 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Hal Feng <hal.feng@starfivetech.com>
Cc: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	E Shattow <e@freeshell.de>,
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 3/3] riscv: dts: starfive: Append JH-7110 SoC compatible to VisionFive 2 Lite eMMC board
Date: Fri, 12 Dec 2025 13:19:20 -0800
Message-ID: <20251212211934.135602-4-e@freeshell.de>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20251212211934.135602-1-e@freeshell.de>
References: <20251212211934.135602-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Append "starfive,jh7110" compatible to VisionFive 2 Lite eMMC board in the
least-compatible end of the list.

Appending "starfive,jh7110" reduces the number of compatible strings to
check in the OpenSBI platform driver. JH-7110S SoC on this board is the
same as JH-7110 SoC however rated for thermal, voltage, and frequency
characteristics for a maximum of 1.25GHz operation.

Link to previous discussion suggesting this change:
https://lore.kernel.org/lkml/1f96a267-f5c6-498e-a2c4-7a47a73ea7e7@canonical.com/

Fixes: ae264ae12442 ("riscv: dts: starfive: Add VisionFive 2 Lite eMMC board device tree")
Suggested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Signed-off-by: E Shattow <e@freeshell.de>
---
 .../dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts
index e27a662d4022..7544efa95de4 100644
--- a/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts
+++ b/arch/riscv/boot/dts/starfive/jh7110-starfive-visionfive-2-lite-emmc.dts
@@ -9,7 +9,7 @@
 
 / {
 	model = "StarFive VisionFive 2 Lite eMMC";
-	compatible = "starfive,visionfive-2-lite-emmc", "starfive,jh7110s";
+	compatible = "starfive,visionfive-2-lite-emmc", "starfive,jh7110s", "starfive,jh7110";
 };
 
 &mmc0 {
-- 
2.50.0


