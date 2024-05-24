Return-Path: <devicetree+bounces-68958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 172348CE2EC
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 11:05:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39D731C20E97
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 09:05:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E86512BEAC;
	Fri, 24 May 2024 09:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ierLmpXJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BD9129A7C
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 09:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716541494; cv=none; b=n5VbWv2LcF/mHidesKXGnzNjKts0zm+YiIQd42urhR3wXKX+H7xpgrqYGWU/ce7lDY7caJRly4B6HzPw5sCabPsp9hMkIW8AP3AFlT6IjMG+qCoHlKCj4bpDjf312U52J//ln2p4QMAYY/spVy/EAlx7F9JPlggZVPNQUCIKexk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716541494; c=relaxed/simple;
	bh=a3KSQk0QjrMowRJps3c/VMw7Rsw51+L1udfOQ253okM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kqv1J4Z6tudI721vfHnav+V+00Ef0DqmHIOgkdFROcXOovFq2ZsuIRIJy0KR4tCscd6vDnrqYdM9Ao2dAF4+nunIuh+SOb4W8WbqNg3mCxGjK+utr9p9kIXeztxs/d8l8ATAFxmmQvcoDQPVacgFDJjBAOldKj/WGEAtf2p8bpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ierLmpXJ; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2e95a7622cfso7101691fa.2
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 02:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716541490; x=1717146290; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kQYjDJKjiuUGN1IdrBorFo2itihiB9FUhURZkClhppI=;
        b=ierLmpXJudo/yy0lyzny5kbZ9MYlYzhGEzF9A+3PW341P+CElaSqeeTWDjW8vNTx8W
         HCaEM8E+oes41CgXWOGNPmrTYkqAVWBuSWpaHhYUfyM9aMpuMLzLCECZgFapR2lQRZ/v
         st+4zzWiRhVVkWkhNCS5MrIzAfyEEAMrD+Vm53v2/nszwg+iilkUg9g09eBmWacoUtYd
         ScbFG2PAhINTpkJZgn3qEF5YMOz2RR/cxW7LQxIp6RTXbhkGt77Coy0Q1p7Iavug0lDq
         GAdXwALiH221zmXYXbzZnYEVwM5YYZW0Opln+RujG4gIKdao+2G4acXXSdNnK+T9sauv
         a5+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716541490; x=1717146290;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kQYjDJKjiuUGN1IdrBorFo2itihiB9FUhURZkClhppI=;
        b=oeYLO9mWs+UgdPU33aamJ51Y80yHSzN1cL6e2D1vevkJw46i1vmvbdK5bmlMSP4sg7
         Y4tUX1RzD5GGbMJ4WzGyPTzqiBwGrcdKWK79mLRkAdc/afdGw9yqdRCdJpMvUV7SIQ6f
         Px7Dv1qpyhCBKU5mARcjjEbZ9Vl8F3RSopYxZYFNypF98kchbbzaRyiUfNul4gdY8T4h
         6BgWXKKvYQA/ArYVNPZ8+5gRQ3imjQSUPdRWgVHV8kxUoJUumwS2zgJwUNCMHvNpxMXO
         qo3+LFsmsW+/JPAD4ZX55f9mJluiEXcRs/AfHTe1AxIs3hlI3ABg6bZHzfqAgy+0mu1J
         zhnQ==
X-Gm-Message-State: AOJu0YwEsVIpthdOHMMHzIDRlS4pT2hzOHWuKMg10pQ+5OojX7UXBk7J
	3yZaplg8VE5QUGuM1Rh4hm7gRzk9nBB4KO2/c9kzaO75PsFwEuG8TdsZVZBvp3cS2B+FD7d5wr8
	9
X-Google-Smtp-Source: AGHT+IEWY1785xuP9/i8yXEbOXfKA5w6okdNZnyRXoBfWq0mc5JIkHLzCk4rRKy1BU/1uAAubYUrjw==
X-Received: by 2002:a2e:7c16:0:b0:2e0:1a40:6ff1 with SMTP id 38308e7fff4ca-2e95b03f295mr9859161fa.6.1716541489839;
        Fri, 24 May 2024 02:04:49 -0700 (PDT)
Received: from [127.0.1.1] ([84.102.31.250])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f163a8sm47273045e9.13.2024.05.24.02.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 02:04:49 -0700 (PDT)
From: Julien Panis <jpanis@baylibre.com>
Date: Fri, 24 May 2024 11:04:37 +0200
Subject: [PATCH v5 4/6] arm64: dts: mediatek: mt8186: add default thermal
 zones
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240524-mtk-thermal-mt818x-dtsi-v5-4-56f8579820e7@baylibre.com>
References: <20240524-mtk-thermal-mt818x-dtsi-v5-0-56f8579820e7@baylibre.com>
In-Reply-To: <20240524-mtk-thermal-mt818x-dtsi-v5-0-56f8579820e7@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Nicolas Pitre <npitre@baylibre.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-pm@vger.kernel.org, Julien Panis <jpanis@baylibre.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1716541478; l=7777;
 i=jpanis@baylibre.com; s=20230526; h=from:subject:message-id;
 bh=sG5Ze//7RlqRD8XfjGttbCgM09mHkLhEkzGoVC5Po1o=;
 b=ddNwZyGkYMLsHlw5K9GzjhQ54XMaZybiMes1Coyl8cdtyfFhljpTtyM5BCoNKOSSV0WfIoWT9
 PBJ0KjMjVK5A7zZuoqIIomOpVAf651JUJmljzXKEPTQtQXYfuLXdlQT
X-Developer-Key: i=jpanis@baylibre.com; a=ed25519;
 pk=8eSM4/xkiHWz2M1Cw1U3m2/YfPbsUdEJPCWY3Mh9ekQ=

From: Nicolas Pitre <npitre@baylibre.com>

Inspired by the vendor kernel but adapted to the upstream thermal
driver version.

Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
Signed-off-by: Julien Panis <jpanis@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 297 +++++++++++++++++++++++++++++++
 1 file changed, 297 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index caec83f5eece..95fe5a05f0d7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -13,6 +13,8 @@
 #include <dt-bindings/power/mt8186-power.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/reset/mt8186-resets.h>
+#include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/thermal/mediatek,lvts-thermal.h>
 
 / {
 	compatible = "mediatek,mt8186";
@@ -2197,4 +2199,299 @@ larb19: smi@1c10f000 {
 			power-domains = <&spm MT8186_POWER_DOMAIN_IPE>;
 		};
 	};
+
+	thermal_zones: thermal-zones {
+		cpu-little0-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <150>;
+			thermal-sensors = <&lvts MT8186_LITTLE_CPU0>;
+
+			trips {
+				cpu_little0_alert0: trip-alert0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_little0_alert1: trip-alert1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpu_little0_crit: trip-crit {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_little0_alert0>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		cpu-little1-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <150>;
+			thermal-sensors = <&lvts MT8186_LITTLE_CPU1>;
+
+			trips {
+				cpu_little1_alert0: trip-alert0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_little1_alert1: trip-alert1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpu_little1_crit: trip-crit {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_little1_alert0>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		cpu-little2-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <150>;
+			thermal-sensors = <&lvts MT8186_LITTLE_CPU2>;
+
+			trips {
+				cpu_little2_alert0: trip-alert0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_little2_alert1: trip-alert1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpu_little2_crit: trip-crit {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_little2_alert0>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		cam-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <250>;
+			thermal-sensors = <&lvts MT8186_CAM>;
+
+			trips {
+				cam_alert0: trip-alert0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cam_alert1: trip-alert1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cam_crit: trip-crit {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		nna-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <250>;
+			thermal-sensors = <&lvts MT8186_NNA>;
+
+			trips {
+				nna_alert0: trip-alert0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				nna_alert1: trip-alert1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				nna_crit: trip-crit {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		adsp-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <250>;
+			thermal-sensors = <&lvts MT8186_ADSP>;
+
+			trips {
+				adsp_alert0: trip-alert0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				adsp_alert1: trip-alert1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				adsp_crit: trip-crit {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <250>;
+			thermal-sensors = <&lvts MT8186_GPU>;
+
+			trips {
+				gpu_alert0: trip-alert0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				gpu_alert1: trip-alert1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				gpu_crit: trip-crit {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		cpu-big0-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&lvts MT8186_BIG_CPU0>;
+
+			trips {
+				cpu_big0_alert0: trip-alert0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_big0_alert1: trip-alert1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpu_big0_crit: trip-crit {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_big0_alert0>;
+					cooling-device = <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		cpu-big1-thermal {
+			polling-delay = <1000>;
+			polling-delay-passive = <100>;
+			thermal-sensors = <&lvts MT8186_BIG_CPU1>;
+
+			trips {
+				cpu_big1_alert0: trip-alert0 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_big1_alert1: trip-alert1 {
+					temperature = <95000>;
+					hysteresis = <2000>;
+					type = "hot";
+				};
+
+				cpu_big1_crit: trip-crit {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_big1_alert0>;
+					cooling-device = <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
 };

-- 
2.37.3


