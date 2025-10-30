Return-Path: <devicetree+bounces-233122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2D8C1F3FB
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:21:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA6BC1897ADA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BED634027E;
	Thu, 30 Oct 2025 09:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OdX1LBb3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A493168F2
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761815946; cv=none; b=fnyW/UwzJ5liZ4NffUWuGkJdA0ikahhLMzJYFO/oDWEBEMWepUdqUOYq2KJMUoF/dkWjJLeiHPNfYXz2nw074TqlfgVvpgRyTg3N/YmHfPpdNvA4+UDaLAmc2vxKXRpPYW6o08ckzK3Jbzdk4IGY8sfnzqNTnzT2CqfF32udL1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761815946; c=relaxed/simple;
	bh=CD8jS3mi5l0ptE5mloshmhyPStp+3Ujo5r6yvkMZV70=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pd8cIRz4rNM/B34ex9IEdUCVMhc6YBvwgEHK/ZUH8Zif+F4oZbB986iLnox+WvDt+AG1qbvm8Q7FLxF4ZsY0k+oHmLcEY2hbgwruDJdxBx+N0qQ/7IvevGgCneZUIo5vIfzVv9tJ6Gx8IjXIQEOiExMrkThcwIdpscCPJqb6gtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OdX1LBb3; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-471191ac79dso8863715e9.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1761815943; x=1762420743; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qKLAYC4j9KDlgpKElsaQCZMFHUJovZT20hAAdQtCFec=;
        b=OdX1LBb3lA+jY1zgep3ugHjX3+AqmCRh3ei1O6FLRZQLstQ4UGbTdxnqIf9XgheRDP
         FPPop7/UR7jsk2JN6eRx7IuDEQ2KfWhTTKrzAfds/M8cppT8Dd9npfiYo+Ee9SE76Tsr
         CBBGQraWlXmpoeNVnu4rCN3PO0uVBFA81KOHyi97Jn6ONRkKvCw9QKjfr3RsHa/tXv0c
         bP5qxGybpBIGjDiXTDmmE1rgNSlp6juYbYgYM2c09QfEwVW0CUZEexDYrhyTJMVWZJnQ
         +SzOZ3jnhONipFQHwRI7PFCudwoNkxzLmNkIQ99O+YBJISFpQFROKaJm9eFn8XelexHW
         /eTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761815943; x=1762420743;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qKLAYC4j9KDlgpKElsaQCZMFHUJovZT20hAAdQtCFec=;
        b=AZKiMN7oNu6E3s+pP/muSz0c4L7KwehxHDUirgsM6/U/TUZ6WkiyH5ONmVxt3NY5ht
         YSKdaDJe61+PU88KyrUqyF5Gp5Uu+VKi3WlnlFTW25ahJqwpG5dQiiFHl2Li+iid09bI
         GLPI+tjJDYlLRwYhpBZEAnDmvVz+TIwppzUXXi0pDjpuLdoQDtxh6E4tMPA+vkCGrc8C
         uj0oHv2wLbqIeJMGKU74kThs5R/8aehMU4XLJrEeOJ0qYhBEq/rCC9SMUOA8FNdKJTHA
         JZj8JsLQ1tqUpfbl51SqnkSJCjhUzeqqxo7uNjQt7rSRwjX85nbneAeCCX5pn59F0jzc
         8IXA==
X-Forwarded-Encrypted: i=1; AJvYcCWdbD58tUFzxvLuQsaPRqS4+3j+RgAgWaZeva23cQen7IRf49GVNoqOeRolbPZ8sv+HSzL/3/dl6ARc@vger.kernel.org
X-Gm-Message-State: AOJu0YxmjrT64SR5io1GuNKq3CgeXRBNEkplkGSVFtXDCPlPX3CJ6spx
	zLzhqpR+dzCiahIsQXOJuOWU5JaRwG/aUER8Y9LQUTnimxK8wwj0TSdKuI5n3v65iiA=
X-Gm-Gg: ASbGncuYPwDI0shCrXVt2VMnU9XI9kTMzLblzhbmG7yoSbecjplvB6sMqaGNAASIMya
	B0n6VHSPKL6Ybv+z3Zc3cZ7fG1kM305HW2ifc55l849VgxhHclnfQ/YsAlgyJfc3ESj8bZcfFST
	RxNKIv7z2h8r8EQKj0+NfOQQZUwVdTvsscFALBM09UvZ/dvdy2s7JOraFoFuC5EjLx6GxMReMZa
	s8OfY9R8gazopEmxKo1tQhNVrzTkDH86H5gQERbo9MqBwB0CzxhaGpmP+tNODp/64fCyCN6pgrK
	pPEMV8TEyI17hakq62r8NjMu1wCGCpIlsTZrichopjVWTuJwwtuLpuxhj/WO8jRuezgn/Scat5N
	oS+o6pnsyi1pryOpeAPjN2B4Vv4EcRwvi3nSAM+3X5HhnWESfgDS7UeHs5wSXj/5XHbOwFcy1XQ
	==
X-Google-Smtp-Source: AGHT+IHztpojphTrK7hZm2oje3psepYoKf66hj0yoiU6QXzl2hG676l4YpdtXTbxbphCE6chpMgWXA==
X-Received: by 2002:a05:600c:c16f:b0:477:c71:1fc7 with SMTP id 5b1f17b1804b1-4771e1d9248mr46322525e9.26.1761815942698;
        Thu, 30 Oct 2025 02:19:02 -0700 (PDT)
Received: from localhost ([2001:4090:a245:8496:49da:2c07:5e9a:7fb9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4771900dad7sm64230725e9.6.2025.10.30.02.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 02:19:02 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Date: Thu, 30 Oct 2025 10:17:23 +0100
Subject: [PATCH v4 1/6] arm64: dts: ti: k3-am62: Define possible system
 states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251030-topic-am62-dt-partialio-v6-15-v4-1-6b520dfa8591@baylibre.com>
References: <20251030-topic-am62-dt-partialio-v6-15-v4-0-6b520dfa8591@baylibre.com>
In-Reply-To: <20251030-topic-am62-dt-partialio-v6-15-v4-0-6b520dfa8591@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1217; i=msp@baylibre.com;
 h=from:subject:message-id; bh=CD8jS3mi5l0ptE5mloshmhyPStp+3Ujo5r6yvkMZV70=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhkxm3YjSC1lFYsIRXHW1IbGyxxzaVD2iDZ5ycbnwvZtic
 dm4yKejlIVBjItBVkyRpTMxNO2//M5jyYuWbYaZw8oEMoSBi1MAJvJuDyPD8rXW7UzBFTKBrkt2
 XV2TtuveP+OHDM/vFHbOE79l8G7iJUaG1S1HrqSqzzM4czBtya37zDs4rvdMr4u98Gpq0noF449
 2zAA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Add the system states that are available on TI AM62 SoCs.

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62.dtsi b/arch/arm64/boot/dts/ti/k3-am62.dtsi
index 59f6dff552ed40e4ac0f9c7077aa25d68d3b5283..b08b7062060ca12ecae83917a831ee779f1a288f 100644
--- a/arch/arm64/boot/dts/ti/k3-am62.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62.dtsi
@@ -46,6 +46,28 @@ pmu: pmu {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
 	};
 
+	system-idle-states {
+		system_partial_io: system-partial-io {
+			compatible = "system-idle-state";
+			idle-state-name = "off-wake";
+		};
+
+		system_deep_sleep: system-deep-sleep {
+			compatible = "system-idle-state";
+			idle-state-name = "mem";
+		};
+
+		system_mcu_only: system-mcu-only {
+			compatible = "system-idle-state";
+			idle-state-name = "mem-mcu-active";
+		};
+
+		system_standby: system-standby {
+			compatible = "system-idle-state";
+			idle-state-name = "standby";
+		};
+	};
+
 	cbass_main: bus@f0000 {
 		bootph-all;
 		compatible = "simple-bus";

-- 
2.51.0


