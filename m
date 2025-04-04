Return-Path: <devicetree+bounces-163296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A814A7C3AB
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 21:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79E143B75E2
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 19:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 736C01F193D;
	Fri,  4 Apr 2025 19:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b="I9WM4FUQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790B41531F0
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 19:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743793913; cv=none; b=Mhd8P/KFfIuKmjtJrFkimsbR5kA4n1Nh5IPICiw04j9EZwHDGUOjzG9UPRez9PcA0jFHNWkhbtDgqvnzRUsPL9RfLG5z/8rnovM7cHPju12Nu6SGsbKpwrkjQ9KH2K9iKCJIjOp8FO43asieDeeIi/Qaqg1MowIujwFoi8MPsmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743793913; c=relaxed/simple;
	bh=xi19atCPonx7ikyWbXZW2dlKdhfpRJYt1yc54MrA1E8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=S+xux9gdx2c+yTgyJt+k8s7evnwt+lL+2pL0gjBmWyyb+RmmNU/y9e8p3y3xCzl3yWQXXxiYSUZeJJsr3CM+fuoc4Zw7QkpH37PCr4QjHieeE+f0kRkJcG2r4aMD4e0iWxOX1GjhXIUM6uXnTTkvzactRxaYpyPed+g1BiXRCTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com; spf=none smtp.mailfrom=wkennington.com; dkim=pass (2048-bit key) header.d=wkennington-com.20230601.gappssmtp.com header.i=@wkennington-com.20230601.gappssmtp.com header.b=I9WM4FUQ; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wkennington.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=wkennington.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2279915e06eso24712435ad.1
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 12:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wkennington-com.20230601.gappssmtp.com; s=20230601; t=1743793911; x=1744398711; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P2Rxwu2W6v3oVYS31v0sGvc4FOg7imKPmmcVRwTmg0c=;
        b=I9WM4FUQE2YS8rqE9cWKA7dC1EGNG6c7Jn7osTv2Mrj1wJ0wkw4lRdfB/J9Jf7bVav
         5kW1TBC9gQJ7SSgo2H+ialXjRtrSJ2y0qCzBjH9tDZq4xhHWNXRAmFBTXS5R47uDW9HI
         nKaxMbL6Vkz96Y5xcvkE0LXiOXaIOTtDUk+KvX/+JldhDsnS36Ijm9CVs5AQZzvE1Rgo
         qMQd42uEAiDsCEzkXj5RUFeUHohcP6IzTqDg3LP84AXLurAlbq4r8wZNtoRYQEzTxBkp
         fQWXCVsQeIfma7N0+fDx8ivb1neK3XAHOiqVAHgtUwqVR5uS+wFK+/vihfhQgvqQrKy6
         JrAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743793911; x=1744398711;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P2Rxwu2W6v3oVYS31v0sGvc4FOg7imKPmmcVRwTmg0c=;
        b=caEyqJMk0tHKEY6tqKiYy2Mg1iN99BA4g56ToVR0DRzyplkfVBJvi1ex71Z3vaOwzm
         vi+g9hVhcSgLiuIV9v9haEDSUtpr3LVmGU4Hc9jNNnJe81gHjgaCd8HjsE07AEuiXmd6
         BGgITKF6zVeIIyyX8q62xF70xcN2hTIQku+3wNJeNnleJFJ7/MWGkhBh6n3YGd6DpTSY
         4eQf2zDsTsTbpLelXIpGE7P1f8STkpeJCQJDSxjyLJ4xDhre2gOYzylxmohh0KexleXd
         7niOqlILDiwIhu2cW/LRBH85mlDoK607bgRMueFc/yixI9X5bN9T8SLO69bpkxSAiOBB
         gMNA==
X-Gm-Message-State: AOJu0YxQH0FFMQGl5SHI0mffiDALey3rrpRU6y5G3lg8xFgfQcvTJgFu
	5gJScLS9qQ0+40511r+emK3KcObv/0hG15gut3D/yZa2HCE8YdkyiO9Utx1jn+O2ZOYM3UINsQL
	P3MY=
X-Gm-Gg: ASbGnctBojGeR73tXc6dd0Y3sAulzc7zLUjDZqMpNTq7Fa+V5ubzjPfS0di7onlsm3i
	1+2yv+WX20b85mHhU5B1TghZYZ63CbiCh0yeObfSLRA3ctYthMMEe1LZy/fyOmVgdERHUPe3BMY
	MRN9yMb7VnPmkycCifgpBALXaz2oU7b3H1eO6QJBKDEQ8EASRqJLS3k2ac/h8VqwdjGIkDf/ywj
	86zuz56O+yCX+urItZ4fUi7ROZFvCHL3T54apemPVH3Xqb0EGgeronbBEB1HWL9/iBhBPwRXOom
	jBV8QnMoVvi8ebDlp6KuqIDJMXXVEtQbONbEKxXyJMtgLI6qLsDwlJl4FuPUVQFKsGnhC2o5e9F
	aO2jvOGRJKTSemERhHgmqYBB/yDeQaNEg
X-Google-Smtp-Source: AGHT+IEeaWCRdJ1SjZlMdTv0mv60UblHOMQY35gjKkojH5fDMz6tEXAoQmV0/K8Q81Wh61GvPwgWpg==
X-Received: by 2002:a17:902:ef03:b0:21f:6fb9:9299 with SMTP id d9443c01a7336-22a8a06cc5dmr54287345ad.27.1743793910520;
        Fri, 04 Apr 2025 12:11:50 -0700 (PDT)
Received: from wak-linux.svl.corp.google.com ([2a00:79e0:2e5b:9:2c9e:1e72:3ae7:b81c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2297866e1bfsm36105765ad.168.2025.04.04.12.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 12:11:50 -0700 (PDT)
From: "William A. Kennington III" <william@wkennington.com>
To: Tomer Maimon <tmaimon77@gmail.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	"William A. Kennington III" <william@wkennington.com>
Subject: [PATCH] ARM: dts: nuvoton: Add MMC Nodes
Date: Fri,  4 Apr 2025 12:11:44 -0700
Message-ID: <20250404191144.4111788-1-william@wkennington.com>
X-Mailer: git-send-email 2.49.0.504.g3bcea36a83-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We have the driver support code, now we just need to expose the device
node which can export the SDHCI and SDMMC properties for the 2 MMC
controllers in the npcm7xx. Tested on real hardware to verify that the
MMC controller is functional with filesystem access.

Signed-off-by: William A. Kennington III <william@wkennington.com>
---
 .../dts/nuvoton/nuvoton-common-npcm7xx.dtsi   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
index e337f40ae0f2..791090f54d8b 100644
--- a/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
+++ b/arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi
@@ -149,6 +149,29 @@ gmac0: eth@f0802000 {
 			status = "disabled";
 		};
 
+		sdmmc: mmc@f0842000 {
+			compatible = "nuvoton,npcm750-sdhci";
+			status = "disabled";
+			reg = <0xf0842000 0x200>;
+			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
+			clocks =  <&clk NPCM7XX_CLK_AHB>;
+			clock-names = "clk_mmc";
+			pinctrl-names = "default";
+			pinctrl-0 = <&mmc8_pins
+					&mmc_pins>;
+		};
+
+		sdhci: mmc@f0840000 {
+			compatible = "nuvoton,npcm750-sdhci";
+			status = "disabled";
+			reg = <0xf0840000 0x200>;
+			interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>;
+			clocks =  <&clk NPCM7XX_CLK_AHB>;
+			clock-names = "clk_sdhc";
+			pinctrl-names = "default";
+			pinctrl-0 = <&sd1_pins>;
+		};
+
 		ehci1: usb@f0806000 {
 			compatible = "nuvoton,npcm750-ehci";
 			reg = <0xf0806000 0x1000>;
-- 
2.49.0.504.g3bcea36a83-goog


