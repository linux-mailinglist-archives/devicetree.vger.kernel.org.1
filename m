Return-Path: <devicetree+bounces-148276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AEAA3B6C0
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:10:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE88C1897947
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 09:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B161DE3BC;
	Wed, 19 Feb 2025 08:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hkOJBkMg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1A51DDC3A
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739955456; cv=none; b=fjexRVCZi16eKT5hfhap6UBvMgutHI3HXJfHqvPhQKvxeZHItOG50lzbWl/a5Wm7rwGvJP9+BYBxsBLjurkf5ErltE60/5RgyQS3E7nXPIir+1s6ezYH4y9dOt1RPI7P92hrtuDquIcu6AtLLkwPBj0/CvUupb3oYI3RlzmrnDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739955456; c=relaxed/simple;
	bh=XGZ6u2IRBOTO0vTt4hFrZXu+pM/Ns3vHyH1GrUC+VEg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ea0cLVJYq7/fmGEE3UZdV6U8FQE5QOXoLpBRAmBbHaxl6fPJjk09Npacn1SnAcwRrNSsqxy2uIu5jsSFb6MX4CAZJMBqhuP4WSit03E18/NmkhPsQYOh/vt1JO1MYW8qyoADh2Bgf3cZFO4JMn18fuAHTaLuoav+huT0OoY2IaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hkOJBkMg; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38f31b65058so454204f8f.1
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 00:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739955452; x=1740560252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mmpBa7eMuH+mFF2ncMukFi4gUmii0gteNirg9Prls7g=;
        b=hkOJBkMgFmfntpkqClpP8e4K1k1SznYq2FpNObMcSx7gQerVqoNWxTxIZUcN7D5Eym
         tRggyJe51kU1b/LtO8HBxmkG8YLazKBFOMbwsA+8pA2arfdYL1SNbwzt/aUeHXNdaFq7
         0mLJCzBa109hQGAKKipKV27kQ2lN/cl63PeUd1YtSZEV4OUzF9O6UgN0PWih3WD2X+GU
         1Bwuqvr6tQf3S8NbvXGY7q7U7Wy9Rmosp/ZBkOZXUInX8TD7winXJcvZ6quQ09TfeOGc
         xjUbgYhYf8BtoWHNT30Mm+wqZWTz+kMD8JRirD96oRWJ6gHJ0KSexWD+QAN2uFrswPpk
         ppjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739955452; x=1740560252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mmpBa7eMuH+mFF2ncMukFi4gUmii0gteNirg9Prls7g=;
        b=X/5WnLJH/t0IQYaw39b8k6rbpRjyZZfOLKfqIXKZkKZfMEg+qzHh2foIm8/bh2wmst
         VYEMG4ThA5YHLnaY8osglkM7X1GVM4kgkaK0DCmd9689aUaIHFqi9FaskGaYEYQTXuJq
         4nFeqisPLxHXPXAY3tC5IpQzboz1lOSwfLQC/eEewOc9xkltJl0P6KRXR/B68N+YC+7D
         KCQzqDbEKHjYMJ+fz2vp57eR/pn9Q1yS+SZEM15tioors6E1Pw7eFNmHrpYlH8JWBlwy
         NrGIYJxmuF+H10sSQCufyFW1U8MFv9PIyyBPQWyDCOrjiT2nFYwmwza224JIlS6D4nx2
         A2hw==
X-Forwarded-Encrypted: i=1; AJvYcCU6QhgGV3hEULvyZZjXfJJKaQkmK2cfMc78FuwncNwd43/947JdJ8J3OEM81suJfy8R67PFQutczxI5@vger.kernel.org
X-Gm-Message-State: AOJu0YzLyjlB6VJYa9+y+BqjA201/o4jxfZhjQFsetyAYsAcMm0kDylG
	oNydIju5MoQrMCvPQTatdosTRT03hEBROIiY9tJzA/oHLUGHgAxYgsdO9ZH61Zo=
X-Gm-Gg: ASbGncsxVos+fz7nysnQKFw6ZWR8tu4odGXxxwlB+cLnAq5cfSUAFkSdG5SOT4waLxt
	H2YiRyRi5LdomZd0jOkEoV1i2hU5Drifm7zKfV0vUqZIVGDkG9dGTsV8JkPMyFMqLaJzk2CTRgG
	FBTV2skVovQg+Y8TXrwwCI2pkINnednnaSWspJKyDv6hXyZTuuw4rz+LHjmAgm1NoHe32e3P77C
	RI6CKnWP8My5LsOCANIjoivr/mk5vMeThc9TzYH/0HpeewuLWt4zHXMJXfu3d4eq8X70Ii5Nk21
	bPG4G2Ae8qWTpGM/wSD6hjRWspMc+g==
X-Google-Smtp-Source: AGHT+IHMgGpLmNZh2KOBXIVt5Xtg6SHJM16bLaqEQLg+J9+rGOfQPsKNJHHPFxgxlEla7/c81KlrTA==
X-Received: by 2002:a5d:5850:0:b0:385:edd4:1242 with SMTP id ffacd0b85a97d-38f33f50c0fmr6700963f8f.10.1739955452455;
        Wed, 19 Feb 2025 00:57:32 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4399beadf31sm10007375e9.0.2025.02.19.00.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 00:57:31 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-fsd@tesla.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: tesla: Change labels to lower-case
Date: Wed, 19 Feb 2025 09:57:26 +0100
Message-ID: <20250219085726.70824-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250219085726.70824-1-krzysztof.kozlowski@linaro.org>
References: <20250219085726.70824-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS coding style expects labels to be lowercase.  No functional impact.
Verified with comparing decompiled DTB (dtx_diff and fdtdump+diff).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/tesla/fsd.dtsi | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/tesla/fsd.dtsi b/arch/arm64/boot/dts/tesla/fsd.dtsi
index 690b4ed9c29b..9951eef9507c 100644
--- a/arch/arm64/boot/dts/tesla/fsd.dtsi
+++ b/arch/arm64/boot/dts/tesla/fsd.dtsi
@@ -92,7 +92,7 @@ cpucl0_0: cpu@0 {
 				reg = <0x0 0x000>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -108,7 +108,7 @@ cpucl0_1: cpu@1 {
 				reg = <0x0 0x001>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -124,7 +124,7 @@ cpucl0_2: cpu@2 {
 				reg = <0x0 0x002>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -139,7 +139,7 @@ cpucl0_3: cpu@3 {
 				compatible = "arm,cortex-a72";
 				reg = <0x0 0x003>;
 				enable-method = "psci";
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -156,7 +156,7 @@ cpucl1_0: cpu@100 {
 				reg = <0x0 0x100>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -172,7 +172,7 @@ cpucl1_1: cpu@101 {
 				reg = <0x0 0x101>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -188,7 +188,7 @@ cpucl1_2: cpu@102 {
 				reg = <0x0 0x102>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -204,7 +204,7 @@ cpucl1_3: cpu@103 {
 				reg = <0x0 0x103>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -221,7 +221,7 @@ cpucl2_0: cpu@200 {
 				reg = <0x0 0x200>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -237,7 +237,7 @@ cpucl2_1: cpu@201 {
 				reg = <0x0 0x201>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -253,7 +253,7 @@ cpucl2_2: cpu@202 {
 				reg = <0x0 0x202>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -269,7 +269,7 @@ cpucl2_3: cpu@203 {
 				reg = <0x0 0x203>;
 				enable-method = "psci";
 				clock-frequency = <2400000000>;
-				cpu-idle-states = <&CPU_SLEEP>;
+				cpu-idle-states = <&cpu_sleep>;
 				i-cache-size = <0xc000>;
 				i-cache-line-size = <64>;
 				i-cache-sets = <256>;
@@ -291,7 +291,7 @@ cpucl_l2: l2-cache0 {
 		idle-states {
 			entry-method = "psci";
 
-			CPU_SLEEP: cpu-sleep {
+			cpu_sleep: cpu-sleep {
 				idle-state-name = "c2";
 				compatible = "arm,idle-state";
 				local-timer-stop;
-- 
2.43.0


