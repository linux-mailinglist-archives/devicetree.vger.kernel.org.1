Return-Path: <devicetree+bounces-253515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B6657D0DD1B
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 21:05:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 471AC3043930
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 20:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89DEF2BE629;
	Sat, 10 Jan 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="ARm+BL8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FDF29BDAB
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 20:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768075493; cv=none; b=Ukpq47gFoIyDySLqpwzRgbnkHmCKAP9ZWXULDwslBYAuR+rGJrleLRSBKiXe7wnw88QIRbbKkFcMZkPV0mGCWFP5H7oIevGgRN8zzcjR6ohseDZPlnMbmk10/DlYmo7wpdsVDUjy9DFprtXJaszB6Q8/GzIVCyBsu2lXYBJtGSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768075493; c=relaxed/simple;
	bh=19nfBG6NkU4FJnhYMXxYyIKBHM4g10ZpscdkJYW1h1U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Icok7z8NsUIT66gyt2N0rp8evmw+48HJh9rb1w5wIvf3mkaX6e/JDAxWWdxyeRYtJF82Q4xFnTyTYqohnJfbV50SHzKVcrJkkmO2oQzRyGHWgdzt6ZqPuEq3LDcbH4qMje8HROp0yuUKiuW9DgBTEVWi9G1l5+qABfH3FRJtQUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=ARm+BL8V; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-64b4b35c812so8466303a12.0
        for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 12:04:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1768075490; x=1768680290; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AZp/4UqxgVJEKQTMowPFSKPPKs3A6A+N3Xt0eLrI87c=;
        b=ARm+BL8VxTcVrTqLl2ZD2Zqd6MMnB5ldTXn5usghoOOunbTkfnOVBjPQeFKaJlSMB8
         dRUfRkCdU6zHG3g9aEnlcT6RZGNHthdhBKqPeqqrLRkTvibeS7bSMFbnYaH+UhlGbsMR
         boSSL6+A7IAiqOTOxFgeBpLYsjwWfi0TNxfOTMEuFQdaPzMyX8KuJxTuvtAWA9D26zrC
         co7YNGzMVWGGHJ4nIkn4nwHHoJ3m2Dn9uqk+7dpBwxnfb6BfbnvVKU0pS3cqgM1e/fAV
         cnwPx6TLwqMs6YPddOOaX+AbT+JyiZUiXdTqeuoInIVZ8w9DbN1EbScE1gRhbvzSb0mN
         fIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768075490; x=1768680290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AZp/4UqxgVJEKQTMowPFSKPPKs3A6A+N3Xt0eLrI87c=;
        b=bNo1m3xWvHbgVoeUFQkHxXx/so4Kj1uUv5lM+hNWm9UrUzhepSVtX/QJG9E2ILrZn9
         zhr2XtWtim9vIVYMISnJAbmqGugLjPEQEJIX0Ks82Uto3xDl1P9nZF9LA2tg3S+wij54
         h0Fg6zlE1sVeUVudwmmEj+Ru/4tHgss45PFjx3pLsXrOAeyHsBmr5zurDEMgfhVN5GSC
         NRK2Ns6Bo/aVhEyHA0gwBgCFqTzbID8qAfNQmU962przGLISdABof7/i1HeQ7fhLhToq
         wjPtdePExGvhlL3lRiKYa4xCPV1bxEKfwoSlGyh1JU3WA1NrUPb7QRPfLK94X28e3tCa
         Fojg==
X-Forwarded-Encrypted: i=1; AJvYcCXYvsAOdAehvnAIoLjS42uoKhkyS+6zbEWs0pNoqu0cnVyP9S0YQIqjohT06R+b/kXOUtAFfkGTMbC1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1Abup6+Y0Hx7rDU9DbXi093v6ZGHmXAPOCY9084HSKiMsiIHv
	FngtqFMH/iZdQqhep2kyvLueX6I00n4Eh1JyegIk1n5Wi3/YX6gVLbPA
X-Gm-Gg: AY/fxX6e67AGlDHfDHixDODWoX/fKmQt/3je/KiX5+Uo0TovDy9jkhHceHUHtErxVXx
	ljNQiTYV+dLvbT7HeOebGRFj0Siklte9aSvtmyWhubx1mQz5NWtNrIq5DawLorNIb79rUSI9XpP
	T1txxOmVsBsjAcoLF+2waCiJaAcjzOvx+ymzUmllrNP7ZIFHQwXlt0qudHZA22XnBSxZd3xXqvB
	URPRnD2GrNFz/e6Ty7y1hAqi+PycWWAFbCQFChiMUSkRf2QG8sIdUwchM1/zLaCMhHYOcm3mAJk
	EMmLb81KpI014wrna5Y4+/b6HAqSv3vzijHjLLiRYwdR7PCNrz3jyrgqvcHkFh0fpy2PTHzTHdv
	gtMsk6rUJpZWVNIEPGOa+yzZuwNCFWajQLJJa4LPrxV6OEnVh38OTYPsFrEk1qSrKApslQJfO0A
	jTGnxPsQtmgQoQUJCCIeEhy7bp+5XXwXaRCyvriTg5V3D7gRx6QLTcNjr0yjJQanCJwEtfk5U7X
	sYSQrlJ9oo6hx05y9JtHcKk6pn53MELZzmaOye74tU=
X-Google-Smtp-Source: AGHT+IGvuE3mHQEPZbwg7WpapEXPLdH/efnHZhaaOVZWj4l0e/xQBTMgKbiWHc1unEZSi4FRGpH6qw==
X-Received: by 2002:a17:907:7283:b0:b83:1327:5f88 with SMTP id a640c23a62f3a-b84451da312mr1328889366b.16.1768075489920;
        Sat, 10 Jan 2026 12:04:49 -0800 (PST)
Received: from blackbox (dynamic-2a02-3100-af95-6f00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:af95:6f00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b842a56c552sm1483591066b.68.2026.01.10.12.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jan 2026 12:04:49 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	adrian.larumbe@collabora.com,
	steven.price@arm.com,
	boris.brezillon@collabora.com,
	robh@kernel.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 3/3] arm64: dts: amlogic: S4: Add the Mali-G31 GPU
Date: Sat, 10 Jan 2026 21:04:26 +0100
Message-ID: <20260110200426.1461575-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260110200426.1461575-1-martin.blumenstingl@googlemail.com>
References: <20260110200426.1461575-1-martin.blumenstingl@googlemail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The vendor BSP indicates that the Mali-G31 GPU on Meson S4 SoCs is
similar to the setup on G12A SoCs. The OPP table and resets are the
same, but the clocks (G12A only has one, S4 has two) and interrupt
numbers are different.

Describe the Mali-G31 GPU with it's resources and enable it by default
since all frequencies are using the same voltage (as the GPU is supplied
by VDDEE changes to the VDDEE voltage are not needed at runtime).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi | 49 +++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
index 9d99ed2994df..efd3dda7d2c1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-s4.dtsi
@@ -66,6 +66,39 @@ xtal: xtal-clk {
 		#clock-cells = <0>;
 	};
 
+	gpu_opp_table: opp-table-gpu {
+		compatible = "operating-points-v2";
+
+		opp-124999998 {
+			opp-hz = /bits/ 64 <124999998>;
+			opp-microvolt = <800000>;
+		};
+		opp-249999996 {
+			opp-hz = /bits/ 64 <249999996>;
+			opp-microvolt = <800000>;
+		};
+		opp-285714281 {
+			opp-hz = /bits/ 64 <285714281>;
+			opp-microvolt = <800000>;
+		};
+		opp-399999994 {
+			opp-hz = /bits/ 64 <399999994>;
+			opp-microvolt = <800000>;
+		};
+		opp-499999992 {
+			opp-hz = /bits/ 64 <499999992>;
+			opp-microvolt = <800000>;
+		};
+		opp-666666656 {
+			opp-hz = /bits/ 64 <666666656>;
+			opp-microvolt = <800000>;
+		};
+		opp-799999988 {
+			opp-hz = /bits/ 64 <799999988>;
+			opp-microvolt = <800000>;
+		};
+	};
+
 	firmware {
 		sm: secure-monitor {
 			compatible = "amlogic,meson-gxbb-sm";
@@ -783,6 +816,22 @@ ir: ir@84040 {
 				status = "disabled";
 			};
 
+			gpu: gpu@400000 {
+				compatible = "amlogic,meson-s4-mali", "arm,mali-bifrost";
+				reg = <0x00 0xfe400000 0x00 0x40000>;
+				interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "job", "mmu", "gpu";
+				clocks = <&clkc_periphs CLKID_MALI_SEL>,
+					 <&clkc_periphs CLKID_MALI>;
+				clock-names = "gpu", "bus";
+				resets = <&reset RESET_MALI>,
+					 <&reset RESET_MALI_APB>;
+				operating-points-v2 = <&gpu_opp_table>;
+				#cooling-cells = <2>;
+			};
+
 			hwrng: rng@440788 {
 				compatible = "amlogic,meson-s4-rng";
 				reg = <0x0 0x440788 0x0 0x0c>;
-- 
2.52.0


