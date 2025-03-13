Return-Path: <devicetree+bounces-157337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5CDA60135
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 20:29:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FC041764F2
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 19:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A04F1F1908;
	Thu, 13 Mar 2025 19:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D0/PuTvB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C331F1303
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741894195; cv=none; b=hHoQmA7Ljaoeu12yUGoTRw1rrGgrCBHa2qBUZnFFaCUk+iJ7GKLHBCzQs1WFiDGPTIvrP5eM33qIfxaDU0G7JqD+19qt7sMya9QXC3CdtynSz8vXv+EAzJP9tv/AhgVjgBzRNIQIYsqy91KwB18F7bKFrZF0z9KxgW8zgH06KSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741894195; c=relaxed/simple;
	bh=gZVA/ypvasbyiURH+Kk+KTnpt3Vo8JKDV/Q6iO6bCX4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=aGUb+Y/7n8Bv247MTjlwSjtCfXpG5O1PselROLwd9uQIQ9hSUSeoEubaIt+IYLLmgf8vpW3mR8/yYa8gx15pljUmpDovuFjx2/nnd3p18hV13UcDBsR8bRBkNf70uB+DpUR5yCqCvqD7FPd4XIvnEvbfUKpAK7jnYdHMBKuOyA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D0/PuTvB; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-224341bbc1dso29175765ad.3
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 12:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741894193; x=1742498993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5WzYhFz75MYyGJKrN0oKx4Q271RmkLAfslHRzunJQ/g=;
        b=D0/PuTvBbjdn1JtfOZ0M4JSjC9FCKLere2Cm0+SiDwWh/GKBoagrX/WE/ApooCwjh+
         zptsM7pKRzBNMJKSgC4DpjsDe9JzDCeWSXX8AJjmBFSjqL0L4MosRyYVjmWbUVunQhS6
         zyLT6pDTijZD+usemY7RhxQPmwzXZZwbm88xFeV0GZIyq1FfCkZASMbiPi7hQ59T7jF7
         YM30pzIhCXYRNfJso1WxwbKlDYDVzY0OvTxdbUXK3V/8ReSHJNqLhzIRmf3wpvvRWxDb
         Zv0tWHZ7Gg5w/tzOqmrR04rt3nFzOdPaujfDnWB9Nkskh3OA3jd1d5oxBA/bx4f7XvfY
         ZDCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741894193; x=1742498993;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5WzYhFz75MYyGJKrN0oKx4Q271RmkLAfslHRzunJQ/g=;
        b=uHc+QQfBWzKGr+gVciGWGO/1ubX4CyJshItSKUGTChLfkD9Kkx9FITlJov9RPLAxuE
         mx03k1lW2ybypfejz5JZbhIH7Kgg+Fq6EfeNS8WJC3yRqLeixuTt7LUVDu+z/76Cie05
         ajHbjsD/p1+gvZr41nUS6Jgt4ThkLmxZcrNvsQATkHM6rG8whErCoBXQdIgEBc7XVFBz
         /PQ8gj/dcc/Xz2C+BnTXm5ZVtAOZwEogIeWwrjIyYM3GAVKcLno/SCQaBm3jQS7Wltn8
         eMbVOm6w4oAmbO5SjXPvuEJlR7LbQudbagwFs5AYv0HLuYpN8LSmj9+qkIf67cmAGqe6
         4JUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWexXynCp4rsw8g14XuEdSMeqdjbSaNIgWaW6IkYQgJo8uDPLvLvIVRvh85x7f695m28hDS25Ta7RpL@vger.kernel.org
X-Gm-Message-State: AOJu0YzUyCfV03a0ryUS4sOQHq4LrbGm1TPZL3/YIFFKOYuZ1z4NO8or
	X2iUN/CJ1sYEYArVSLNUQwShYsYOGqUim1pB/5rvpVduzHr8yTBs
X-Gm-Gg: ASbGncvZq7j5jpNpAwuErXMzNuMpa5rp9F2dv7jZzXFEQ8Xjl0LYCAkWejsYePZDO0P
	1G2Mjsl6sm9y97P0begYwHwZtP99py+fSy4qSxivKi4/G/jnXn36vqQXCqJ3GMP2giPQghkRFMD
	yes4d+3T3qE2wc0KcUIAWuqnMWml1x6RSb4J4gvYLuSqL3QbjbvIitIynHJAqMwrYXjODepG8xA
	ixgrRw5d0JKKFMpvCE6hgQHuV9mmM9szfauNpo+yYZUjToEwpjrZUKeNnCyMMu9JDpkuVX6hN+q
	3/ePRh9+4wXbnkdCPZGTmLV44XM1JF3/4odEZoxUcn+EOYWZXVeY00w8YadAI9OXVCoEsQ==
X-Google-Smtp-Source: AGHT+IEUgx2DVCYAAUuPSgRmUlBxQLiJVMReq3nG/oUsNMMokeDSasYT0i+P+p+CCrzyfd2fGdnh4A==
X-Received: by 2002:a17:903:32d2:b0:220:ea90:191e with SMTP id d9443c01a7336-22592e2016fmr189900155ad.4.1741894193056;
        Thu, 13 Mar 2025 12:29:53 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:abab:f7ee:5b0a:8554])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6ba7280sm17114245ad.147.2025.03.13.12.29.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 12:29:52 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: dts: imx: Fix the iim compatible string
Date: Thu, 13 Mar 2025 16:29:43 -0300
Message-Id: <20250313192943.1547330-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Per imx-iim.yaml, the compatible string should only contain a single
entry.

Change it accordingly to fix the following dt-schema warnings:

efuse@83f98000: compatible: ['fsl,imx51-iim', 'fsl,imx27-iim', 'syscon'] is too long

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/nxp/imx/imx31.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx51.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx53.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx31.dtsi b/arch/arm/boot/dts/nxp/imx/imx31.dtsi
index 00006c90d9a7..637415564c64 100644
--- a/arch/arm/boot/dts/nxp/imx/imx31.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx31.dtsi
@@ -218,7 +218,7 @@ spi2: spi@50010000 {
 			};
 
 			iim: efuse@5001c000 {
-				compatible = "fsl,imx31-iim", "fsl,imx27-iim";
+				compatible = "fsl,imx31-iim";
 				reg = <0x5001c000 0x1000>;
 				interrupts = <19>;
 				clocks = <&clks 25>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx51.dtsi b/arch/arm/boot/dts/nxp/imx/imx51.dtsi
index cc88da4d7785..5627c5a925ee 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx51.dtsi
@@ -476,7 +476,7 @@ aipstz2: bridge@83f00000 {
 			};
 
 			iim: efuse@83f98000 {
-				compatible = "fsl,imx51-iim", "fsl,imx27-iim", "syscon";
+				compatible = "fsl,imx51-iim";
 				reg = <0x83f98000 0x4000>;
 				interrupts = <69>;
 				clocks = <&clks IMX5_CLK_IIM_GATE>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx53.dtsi b/arch/arm/boot/dts/nxp/imx/imx53.dtsi
index 845e2bf8460a..4829861ab488 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx53.dtsi
@@ -668,7 +668,7 @@ aipstz2: bridge@63f00000 {
 			};
 
 			iim: efuse@63f98000 {
-				compatible = "fsl,imx53-iim", "fsl,imx27-iim", "syscon";
+				compatible = "fsl,imx53-iim";
 				reg = <0x63f98000 0x4000>;
 				interrupts = <69>;
 				clocks = <&clks IMX5_CLK_IIM_GATE>;
-- 
2.34.1


