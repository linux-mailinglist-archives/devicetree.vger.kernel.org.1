Return-Path: <devicetree+bounces-159443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAB1A6AEC6
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 20:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1657486267
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 19:45:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74CA822AE75;
	Thu, 20 Mar 2025 19:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="nBvKIsma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36704229B0B
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 19:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742499899; cv=none; b=J2TTFDedWESCklcX6ib5GQKCqOJZ70vZdqehnRvbgHcKZZ+dflupFnoGJVxWMNSllz7G4XAZ7t0+B0qxYnOutmPzYxexmAKrUnHsk4G2D88JPofz6N0uqS7Dx0fG2ze0GPSgqu0n9IASXKst+gmkQ+XA4myDWARC7PFl3NGoQ6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742499899; c=relaxed/simple;
	bh=geLdGDfDppztif7o0rQLveIfzRTCzSWPOzmxcCRsJxg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j8CR4e5ZoZfTD1I4oOvoIxZTYPcYrcQNGNImYIgDmU9hM6HZZ66qvymTtuoB2YYwZvG6k6Oi8zU+W6bYvdkXbH34jc4ev/Z8Ky327/lFRYQBYDiQbbTwwxcWQuc5+Xcu9j9zFu3DHeRxUjSQNNnt5a+O5mdYsEtMG0VgTZOTW9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=nBvKIsma; arc=none smtp.client-ip=209.85.166.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f49.google.com with SMTP id ca18e2360f4ac-85db7a3da71so84683439f.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 12:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742499895; x=1743104695; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbvEkFGBoxFLcT+B9yfnDSBEgyYVKDqcuGRDBtDVFkg=;
        b=nBvKIsmanmUZVG5pq2lu3UeBtwPnzwpyhm54ifAq0dvdkUqTw5rKkir3ev9+hjOYwk
         H2R33pReXUmJCQiimK29FBb5S81fTReHI799PSYEJjDSeFhosS7IpUNsHZaoDFNBhjWY
         W/KyyFOuCCQCypHxeDj6OwkEo3pgJ3RICF/HAFRzqS0W4E0xEQAKw5NY4b3ckMjqiSoF
         VYKC7YmjEHsVe/HOklLnI2m6r8w/ip1wTCEzfsBWVblKcB4RY1Ca7tUud8571PyLuTC9
         1cL7jXsHp+xwwhwVGwwLu2Ygtk8n1ZtRnPk3+CwZ6egEKnKLNwHJI0eBTq2ZmIRfNWBd
         RruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742499895; x=1743104695;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BbvEkFGBoxFLcT+B9yfnDSBEgyYVKDqcuGRDBtDVFkg=;
        b=ChjEELnx+LSTHrJz+4CDAprimOATgKa0UdzXBZViJmHzZ1CrDcZMKp8+1nhFmD4H8J
         KjKKgC2myY4L3EClO6UiNuV/VGpo6WHc+jFq3V/MR4T2TMtUcXtghNK+jZfn3MkxYxQF
         pZmcdalLzZkJhOUkUJ1C39kcDds3Wol46wbaKrgTI9v8riVwfmpdGeQIpQxtoCpwnrs3
         4D6HCVw21abriKTeT8ExQKl4sOoSiYjhXVz6ZihAC0cXOpHXodcW6VywsCg0fuvRpcUD
         ROyrIHTM41R5LdWs7DRUoq4BvhI+gQj4fkMHjVPOIll1LocQKzn1sHHJPomX6yH6Bbuj
         2sAA==
X-Forwarded-Encrypted: i=1; AJvYcCUkA1begMkMa639rTCd+RrirlT+bel4gTeEFi+WQQeVA8BSfP6WgKnMWEjI+X152w2BXg+FcXY+9MsI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2x90JqoRXv6d4XWOk2x2mbYzGYR3BFyGiB552PwFnSTW0hh2W
	AuKJAx9hggaaFkp8jtwqlgdKhDXOvSNEdzfgSKXBer1yS5SfBWIdKR4sf9a+FQUBUBGRmYeboxX
	zjjrWUw==
X-Gm-Gg: ASbGncupFPBMGYRP8Zebl0huqENzng1vd1HrKUwpQoNZ2AGrUr8nCOzkl96kQR/4Xay
	afSFoM1e56FOpjA3D+0K6pGBnC0D5VL54EATmjDmx6smNaV7ElwAxB/ppw0n2+vPCI/HUw1Fz36
	1f0WOrr1Cz8Y9eOaDBm8s8u7r4wxgiLQWPV7mGT9S8ZTd143cID+tCT4G2E2QCmQv8C2KJhMRLP
	GNjG3VQIsm545vd+CmfSaK5QpNkFPA3hiweiMZoAX8VwDbhGNJnlHWC3Yj/vfZOxQszd+4nO/Ed
	imaj1E32jjbrWnLHpKt0i7EPsDzYxRvo12k3sQUESXfKxYVo5CM9cezH17Fc5vzzPTdgft43Z+Y
	EPDN4XARVhMbfkrUcJh47q/Fo
X-Google-Smtp-Source: AGHT+IGXXzCTsTYwrGMy/HMGyjbx5SoB+leLTzRU46Xkm9tGDSuRbtdCaZzESNwVAKlnXLoxpwPdHw==
X-Received: by 2002:a05:6602:36c4:b0:85b:5494:5519 with SMTP id ca18e2360f4ac-85e2ca6fff3mr65491239f.5.1742499895269;
        Thu, 20 Mar 2025 12:44:55 -0700 (PDT)
Received: from zoltan.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-85e2bd8c40fsm8341439f.32.2025.03.20.12.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 12:44:54 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dlan@gentoo.org
Cc: heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: soc: spacemit: define spacemit,k1-ccu resets
Date: Thu, 20 Mar 2025 14:44:42 -0500
Message-ID: <20250320194449.510569-2-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250320194449.510569-1-elder@riscstar.com>
References: <20250320194449.510569-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are additional SpacemiT syscon CCUs whose registers control both
clocks and resets:  RCPU, RCPU2, and APBC2. Unlike those defined
previously, these will initially support only resets.  They do not
incorporate power domain functionality.

Define the index values for resets associated with all SpacemiT K1
syscon nodes, including those with clocks already defined, as well as
the new ones (without clocks).

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../soc/spacemit/spacemit,k1-syscon.yaml      |  13 +-
 include/dt-bindings/clock/spacemit,k1-ccu.h   | 134 ++++++++++++++++++
 2 files changed, 143 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml b/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
index 07a6728e6f864..333c28e075b6c 100644
--- a/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
+++ b/Documentation/devicetree/bindings/soc/spacemit/spacemit,k1-syscon.yaml
@@ -19,6 +19,9 @@ properties:
       - spacemit,k1-syscon-apbc
       - spacemit,k1-syscon-apmu
       - spacemit,k1-syscon-mpmu
+      - spacemit,k1-syscon-rcpu
+      - spacemit,k1-syscon-rcpu2
+      - spacemit,k1-syscon-apbc2
 
   reg:
     maxItems: 1
@@ -57,13 +60,15 @@ allOf:
       properties:
         compatible:
           contains:
-            const: spacemit,k1-syscon-apbc
+            enum:
+              - spacemit,k1-syscon-apmu
+              - spacemit,k1-syscon-mpmu
     then:
-      properties:
-        "#power-domain-cells": false
-    else:
       required:
         - "#power-domain-cells"
+    else:
+      properties:
+        "#power-domain-cells": false
 
 additionalProperties: false
 
diff --git a/include/dt-bindings/clock/spacemit,k1-ccu.h b/include/dt-bindings/clock/spacemit,k1-ccu.h
index 4a0c7163257e3..a1e1b1fe714ce 100644
--- a/include/dt-bindings/clock/spacemit,k1-ccu.h
+++ b/include/dt-bindings/clock/spacemit,k1-ccu.h
@@ -78,6 +78,9 @@
 #define CLK_APB			31
 #define CLK_WDT_BUS		32
 
+/*	MPMU resets	*/
+#define RST_WDT			0
+
 /*	APBC clocks	*/
 #define CLK_UART0		0
 #define CLK_UART2		1
@@ -109,6 +112,7 @@
 #define CLK_PWM17		27
 #define CLK_PWM18		28
 #define CLK_PWM19		29
+
 #define CLK_SSP3		30
 #define CLK_RTC			31
 #define CLK_TWSI0		32
@@ -180,6 +184,60 @@
 #define CLK_TSEN_BUS		98
 #define CLK_IPC_AP2AUD_BUS	99
 
+/*	APBC resets	*/
+
+#define RST_UART0		0
+#define RST_UART2		1
+#define RST_UART3		2
+#define RST_UART4		3
+#define RST_UART5		4
+#define RST_UART6		5
+#define RST_UART7		6
+#define RST_UART8		7
+#define RST_UART9		8
+#define RST_GPIO		9
+#define RST_PWM0		10
+#define RST_PWM1		11
+#define RST_PWM2		12
+#define RST_PWM3		13
+#define RST_PWM4		14
+#define RST_PWM5		15
+#define RST_PWM6		16
+#define RST_PWM7		17
+#define RST_PWM8		18
+#define RST_PWM9		19
+#define RST_PWM10		20
+#define RST_PWM11		21
+#define RST_PWM12		22
+#define RST_PWM13		23
+#define RST_PWM14		24
+#define RST_PWM15		25
+#define RST_PWM16		26
+#define RST_PWM17		27
+#define RST_PWM18		28
+#define RST_PWM19		29
+#define RST_SSP3		30
+#define RST_RTC			31
+#define RST_TWSI0		32
+#define RST_TWSI1		33
+#define RST_TWSI2		34
+#define RST_TWSI4		35
+#define RST_TWSI5		36
+#define RST_TWSI6		37
+#define RST_TWSI7		38
+#define RST_TWSI8		39
+#define RST_TIMERS1		40
+#define RST_TIMERS2		41
+#define RST_AIB			42
+#define RST_ONEWIRE		43
+#define RST_SSPA0		44
+#define RST_SSPA1		45
+#define RST_DRO			46
+#define RST_IR			47
+#define RST_TSEN		48
+#define RST_IPC_AP2AUD		49
+#define RST_CAN0		50
+
 /*	APMU clocks	*/
 #define CLK_CCI550		0
 #define CLK_CPU_C0_HI		1
@@ -244,4 +302,80 @@
 #define CLK_V2D			60
 #define CLK_EMMC_BUS		61
 
+/*	APMU resets	*/
+
+#define RST_CCIC_4X		0
+#define RST_CCIC1_PHY		1
+#define RST_SDH_AXI		2
+#define RST_SDH0		3
+#define RST_SDH1		4
+#define RST_SDH2		5
+#define RST_USBP1_AXI		6
+#define RST_USB_AXI		7
+#define RST_USB3_0		8
+#define RST_QSPI		9
+#define RST_QSPI_BUS		10
+#define RST_DMA			11
+#define RST_AES			12
+#define RST_VPU			13
+#define RST_GPU			14
+#define RST_EMMC		15
+#define RST_EMMC_X		16
+#define RST_AUDIO		17
+#define RST_HDMI		18
+#define RST_PCIE0		19
+#define RST_PCIE1		20
+#define RST_PCIE2		21
+#define RST_EMAC0		22
+#define RST_EMAC1		23
+#define RST_JPG			24
+#define RST_CCIC2PHY		25
+#define RST_CCIC3PHY		26
+#define RST_CSI			27
+#define RST_ISP_CPP		28
+#define RST_ISP_BUS		29
+#define RST_ISP			30
+#define RST_ISP_CI		31
+#define RST_DPU_MCLK		32
+#define RST_DPU_ESC		33
+#define RST_DPU_HCLK		34
+#define RST_DPU_SPIBUS		35
+#define RST_DPU_SPI_HBUS	36
+#define RST_V2D			37
+#define RST_MIPI		38
+#define RST_MC			39
+
+/*	RCPU resets	*/
+
+#define RST_RCPU_SSP0		0
+#define RST_RCPU_I2C0		1
+#define RST_RCPU_UART1		2
+#define RST_RCPU_IR		3
+#define RST_RCPU_CAN		4
+#define RST_RCPU_UART0		5
+#define RST_RCPU_HDMI_AUDIO	6
+
+/*	RCPU2 resets	*/
+
+#define RST_RCPU2_PWM0		0
+#define RST_RCPU2_PWM1		1
+#define RST_RCPU2_PWM2		2
+#define RST_RCPU2_PWM3		3
+#define RST_RCPU2_PWM4		4
+#define RST_RCPU2_PWM5		5
+#define RST_RCPU2_PWM6		6
+#define RST_RCPU2_PWM7		7
+#define RST_RCPU2_PWM8		8
+#define RST_RCPU2_PWM9		9
+
+/*	APBC2 resets	*/
+
+#define RST_APBC2_UART1		0
+#define RST_APBC2_SSP2		1
+#define RST_APBC2_TWSI3		2
+#define RST_APBC2_RTC		3
+#define RST_APBC2_TIMERS0	4
+#define RST_APBC2_KPC		5
+#define RST_APBC2_GPIO		6
+
 #endif /* _DT_BINDINGS_SPACEMIT_CCU_H_ */
-- 
2.43.0


