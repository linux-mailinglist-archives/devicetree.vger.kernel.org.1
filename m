Return-Path: <devicetree+bounces-273168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKFsG9djr2mHWwIAu9opvQ
	(envelope-from <devicetree+bounces-273168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:20:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CFE242FAA
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:20:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7252D30233D9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30BF41F0991;
	Tue, 10 Mar 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A1Z/L2Lp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15C618DB1A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773102034; cv=none; b=Sj3CgiGEQnMBocjjba0lzNiuvFyTjznFkFJj3nsakFR2AOOh9W2m0Qho4NIYEURMd0j+rZR2HJA9JMTO9ff295hK2usy4TYRK6USp0sdTEhzbA6PgFZH0RhEvs1Q7vhL+rzQ9clW4JFVKttz90kSZc/MjhJ7SuW3B/NjQ4d9SCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773102034; c=relaxed/simple;
	bh=2pd8Vm2fvNHI+WLPgH3sh2ESxRMefttqaiG2BrZfGlM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Z9wHBHkpKh4ePk0MAF7uXaOq9t43RPnSeyg2NZjt+xIHpEQM7mkt0aRCI90xehOycde1IpBiX0R1t9fWcoqlKbCPI/OHR+8vFSMtqiEDA0k2Ri19glCehO+ZLVC42qyBA0Y2XfHYH58otwKE7kYzs60aAqL4t7UyX8i+mc8QWKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A1Z/L2Lp; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-899f5d337f7so98027876d6.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773102032; x=1773706832; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QmmUazx3AfX4mhvmy0IUuslY9cKk4f/4Bqzoh4IFGkA=;
        b=A1Z/L2LpXfZ5HoYfUKblcUC5Ya89XQWA0mE1b227X6fFSBd3RY1kH/1vseEQVPiKN2
         01mCboYnADhq0FufMN+XXixDmcfiYI0ZIj/fZbglprvlKqAfhhXr5CzK/Xi3llD050gF
         g5elDFp+gIv4ihxR9z6WPEg5zSRyWkClLuZgsi61gLER7dtMs9y53IY7pC2Cj4h3G5+1
         PPLbI7/lxmOnDi40oIqONebcqhya12QjE2Kvd3b8smClv4gS2dMMsWQh1jZdfGieVIsy
         UjAuG5BnNsCwSuPc8qsLJkIj03odbMNFW/5Kb5e11vFN1gYs7LYbEn52HmdpbPbDWY94
         h3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773102032; x=1773706832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QmmUazx3AfX4mhvmy0IUuslY9cKk4f/4Bqzoh4IFGkA=;
        b=DFRGAkIlGdhCM/R4/QbdfiA36wtlK513dYg+bWLG2y1gwRm61+pXqYF6iHhXB0HFo+
         fIieB13W4KuxfIc/GOY5G3lzgvamyemmCPQdpIvegE8Z4tX/lXc6E25j+1IIPyDuu/Ns
         PPbaOYqsEWLRy5xLjnn8Rujk9zQfUFc1vk1/zPJf1nEGQmEsaRQpz/crCQOePIhlGzfJ
         Z6eGbsaoTRlHShz0dgOKyOQ4Gxi+ccN7r6n4CE8m5JaeJFr8kxrioQnyHB+rDOXMX3N8
         +PC96lSmEUNBWcvZt9rFcJVU2l/8D3PPVEkzTuhspsHDtYYZie2kqKfZs0Ggy+dY84/c
         Q7Dw==
X-Forwarded-Encrypted: i=1; AJvYcCU8gL85VJ0mPKV6xKSU7wdca2xw9wOP97VV7kF2ndMrJUcX65i8K+5B00UNfV0lQcrBjRC4zuahPWWr@vger.kernel.org
X-Gm-Message-State: AOJu0YyhrrprokxurbiJ0uH40r4Erv434kXHEcEFLIQtPf/aNnGCGGTd
	iOKxZy8XiQPG6Y6xTZmQpw24a1gPCFUaGDkIB58uWBT7ByII17kGZOFl
X-Gm-Gg: ATEYQzwWH3U3pElAqHCAQbM0iROY2Eim8gFQE4dKSj+8T3ajfW6jN/gKaUXZTtXxkYJ
	9ZZUxkjRyBwtMavMZ+bvUAAU/HiML0LgkFsk9nJAJr1PPaa+qq8kVB2kX7OKDVXBfkobggSJZT5
	iFaWI3UDQZT/DVo+1zUTrbL8Cr1Es3q0CEoztEOfstYafZ12uPbip9pJr8Qs0AIAgLP6mtGNjl4
	ig0aC7vT6S1m1Eykn9evRUrJgnAy8UhZY+ZRlqcgHXeWYAY4W+gbYppx6fHcVYYZjtA1yc6fxUL
	OngXyZRBqseKPqC+zdKxUlzdWmTaswkUE0Z98NXSvwq71xWhTgMEllKLaYvdzPPF+R2QgF+sJaa
	S3lLxEJ+8nM1gdGmnjt5XplhmLdCAHMp0aftsutJc1K/KqhmLhuEnfYfEbjmNInsAwJNZv33Ikf
	rtyQgTUGAZW+twU86bLk23GY3INA==
X-Received: by 2002:a05:6214:300a:b0:894:5d38:2e38 with SMTP id 6a1803df08f44-89a57c8d65fmr20000736d6.18.1773102031658;
        Mon, 09 Mar 2026 17:20:31 -0700 (PDT)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a57a2f55dsm9142016d6.12.2026.03.09.17.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 17:20:31 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 3/3] arm64: dts: qcom: sdm670: add thermal zones and thermal devices
Date: Mon,  9 Mar 2026 20:20:37 -0400
Message-ID: <20260310002037.1863-4-mailingradian@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310002037.1863-1-mailingradian@gmail.com>
References: <20260310002037.1863-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A1CFE242FAA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273168-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,arm.com,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Add thermal zones to safeguard from overheating to high temperatures,
along with the thermal sensors (TSENS) and CPU frequency limits (LMh).
The temperatures are very high, but should still be safeguard for
devices that do not specify their own thermal zones.

Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 400 +++++++++++++++++++++++++++
 1 file changed, 400 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index f115bc6e64f3..4879d29d63c2 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -20,6 +20,7 @@
 #include <dt-bindings/phy/phy-qcom-qusb2.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&intc>;
@@ -62,6 +63,7 @@ cpu0: cpu@0 {
 					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 			power-domains = <&cpu_pd0>;
 			power-domain-names = "psci";
+			#cooling-cells = <2>;
 			next-level-cache = <&l2_0>;
 			l2_0: l2-cache {
 				compatible = "cache";
@@ -89,6 +91,7 @@ cpu1: cpu@100 {
 					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 			power-domains = <&cpu_pd1>;
 			power-domain-names = "psci";
+			#cooling-cells = <2>;
 			next-level-cache = <&l2_100>;
 			l2_100: l2-cache {
 				compatible = "cache";
@@ -111,6 +114,7 @@ cpu2: cpu@200 {
 					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 			power-domains = <&cpu_pd2>;
 			power-domain-names = "psci";
+			#cooling-cells = <2>;
 			next-level-cache = <&l2_200>;
 			l2_200: l2-cache {
 				compatible = "cache";
@@ -133,6 +137,7 @@ cpu3: cpu@300 {
 					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 			power-domains = <&cpu_pd3>;
 			power-domain-names = "psci";
+			#cooling-cells = <2>;
 			next-level-cache = <&l2_300>;
 			l2_300: l2-cache {
 				compatible = "cache";
@@ -155,6 +160,7 @@ cpu4: cpu@400 {
 					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 			power-domains = <&cpu_pd4>;
 			power-domain-names = "psci";
+			#cooling-cells = <2>;
 			next-level-cache = <&l2_400>;
 			l2_400: l2-cache {
 				compatible = "cache";
@@ -177,6 +183,7 @@ cpu5: cpu@500 {
 					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 			power-domains = <&cpu_pd5>;
 			power-domain-names = "psci";
+			#cooling-cells = <2>;
 			next-level-cache = <&l2_500>;
 			l2_500: l2-cache {
 				compatible = "cache";
@@ -199,6 +206,7 @@ cpu6: cpu@600 {
 					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 			power-domains = <&cpu_pd6>;
 			power-domain-names = "psci";
+			#cooling-cells = <2>;
 			next-level-cache = <&l2_600>;
 			l2_600: l2-cache {
 				compatible = "cache";
@@ -221,6 +229,7 @@ cpu7: cpu@700 {
 					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 			power-domains = <&cpu_pd7>;
 			power-domain-names = "psci";
+			#cooling-cells = <2>;
 			next-level-cache = <&l2_700>;
 			l2_700: l2-cache {
 				compatible = "cache";
@@ -1408,6 +1417,8 @@ gpu: gpu@5000000 {
 			nvmem-cells = <&gpu_speed_bin>;
 			nvmem-cell-names = "speed_bin";
 
+			#cooling-cells = <2>;
+
 			status = "disabled";
 
 			gpu_zap_shader: zap-shader {
@@ -2100,6 +2111,28 @@ dispcc: clock-controller@af00000 {
 			#power-domain-cells = <1>;
 		};
 
+		tsens0: thermal-sensor@c263000 {
+			compatible = "qcom,sdm670-tsens", "qcom,tsens-v2";
+			reg = <0 0x0c263000 0 0x1ff>,
+			      <0 0x0c222000 0 0x4>;
+			interrupts-extended = <&pdc 26 IRQ_TYPE_EDGE_RISING>,
+					      <&pdc 28 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "uplow", "critical";
+			#thermal-sensor-cells = <1>;
+			#qcom,sensors = <13>;
+		};
+
+		tsens1: thermal-sensor@c265000 {
+			compatible = "qcom,sdm670-tsens", "qcom,tsens-v2";
+			reg = <0 0x0c265000 0 0x1ff>,
+			      <0 0x0c223000 0 0x4>;
+			interrupts-extended = <&pdc 27 IRQ_TYPE_EDGE_RISING>,
+					      <&pdc 29 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "uplow", "critical";
+			#thermal-sensor-cells = <1>;
+			#qcom,sensors = <8>;
+		};
+
 		apps_smmu: iommu@15000000 {
 			compatible = "qcom,sdm670-smmu-500", "qcom,smmu-500", "arm,mmu-500";
 			reg = <0 0x15000000 0 0x80000>;
@@ -2289,5 +2322,372 @@ cpufreq_hw: cpufreq@17d43000 {
 
 			#freq-domain-cells = <1>;
 		};
+
+		lmh_cluster1: lmh@17d70800 {
+			compatible = "qcom,sdm670-lmh", "qcom,sdm845-lmh";
+			reg = <0 0x17d70800 0 0x400>;
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			cpus = <&cpu6>;
+			qcom,lmh-temp-arm-millicelsius = <65000>;
+			qcom,lmh-temp-low-millicelsius = <94500>;
+			qcom,lmh-temp-high-millicelsius = <95000>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+
+		lmh_cluster0: lmh@17d78800 {
+			compatible = "qcom,sdm670-lmh", "qcom,sdm845-lmh";
+			reg = <0 0x17d78800 0 0x400>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			cpus = <&cpu0>;
+			qcom,lmh-temp-arm-millicelsius = <65000>;
+			qcom,lmh-temp-low-millicelsius = <94500>;
+			qcom,lmh-temp-high-millicelsius = <95000>;
+			interrupt-controller;
+			#interrupt-cells = <1>;
+		};
+	};
+
+	thermal-zones {
+		aoss0-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 0>;
+
+			trips {
+				aoss0_crit: trip-point0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu0-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 1>;
+
+			trips {
+				cpu0_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu1-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 2>;
+
+			trips {
+				cpu1_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu2-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 3>;
+
+			trips {
+				cpu2_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu3-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 4>;
+
+			trips {
+				cpu3_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cluster0-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 5>;
+
+			trips {
+				cluster0_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cluster1-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 6>;
+
+			trips {
+				cluster1_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu4-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 7>;
+
+			trips {
+				cpu4_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu5-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 8>;
+
+			trips {
+				cpu5_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu6-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 9>;
+
+			trips {
+				cpu6_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		cpu7-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 10>;
+
+			trips {
+				cpu7_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu0-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 11>;
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu0_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
+			trips {
+				gpu0_alert0: trip-point0 {
+					temperature = <95000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				gpu0_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu1-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens0 12>;
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu1_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+
+			trips {
+				gpu1_alert0: trip-point0 {
+					temperature = <95000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				gpu1_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		aoss1-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens1 0>;
+
+			trips {
+				aoss1_crit: trip-point0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		q6-modem-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens1 1>;
+
+			trips {
+				q6_modem_crit: trip-point0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		mem-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens1 2>;
+
+			trips {
+				mem_crit: trip-point1 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		wlan-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens1 3>;
+
+			trips {
+				wlan_crit: trip-point0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		q6-hvx-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens1 4>;
+
+			trips {
+				q6_hvx_crit: trip-point0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		camera-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens1 5>;
+
+			trips {
+				camera_crit: trip-point0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		video-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens1 6>;
+
+			trips {
+				video_crit: trip-point0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		modem-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+
+			thermal-sensors = <&tsens1 7>;
+
+			trips {
+				modem_crit: trip-point0 {
+					temperature = <125000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
 	};
 };
-- 
2.53.0


