Return-Path: <devicetree+bounces-257548-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YO5LJPrPb2mgMQAAu9opvQ
	(envelope-from <devicetree+bounces-257548-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:56:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF7849E2D
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 19:56:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DA8357E11CA
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95EDE44BCBA;
	Tue, 20 Jan 2026 18:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Eadyysqy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86E11449ED2
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 18:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768932076; cv=none; b=d9h23twemxNAcfZH80DGS6WFBgokENsGP5tQSEFiZbt+qW7ReLpch3CApBORRL0lLHx6rjD07NU1yX6P9/uED1mWAM3QATzro7Q+Dq6fkRWZJtszI/fnqm9NfD3H66dW5x/PezD8q6KyXfjP9YpOHEkPrvhjsPoU8NT2xUgyr1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768932076; c=relaxed/simple;
	bh=RRFr0s3h67aeWrsqyfTBr0cjbL/dLggQ/RzMrfxX1O0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L700GGRmPOZa4kaUdQFjQFShOnPvtoj2yjBsgUpoz4q7IWTorqdRGTquZTI8OG8n1pTr2FYW3gduR2Q8OHqWaci83CwGNK6en6usSnF+RPjROmFV6N7AIiQ2c5gTCMEyhNDKUSHL0FvFh+TpgOCxXikV0mX+jewlf4K/EPFvStU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Eadyysqy; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso800405e9.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768932073; x=1769536873; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WY/yEu59nUefrkGJmBAthiZgz7EKiY+FHwtG9ydqOHE=;
        b=Eadyysqy9ULWKNQS7Bla7Y6kLHeel5NVVc2JuEmhV1g6X3/YGNNPKR3tP+3sj4se75
         UFmUn432hUVNgJzwbt57RpelxBAcgc4Xzb6zUamyF9QfKXmBzlTtP8Ye2AHW9zGTOPX3
         bebsLxZA0lUALB1RLOxZAfS2kcOZZdvGC9HEkD4FJpiktE3MWV8g1th2edH93Mb7/7l4
         UGuRWmTefyfyfZKjZqKHrfrrDbuRQjIh4EJFMaC02BKjXMNmJpUfitIHUsFWgymOqqnd
         Mzj13Tf9UeEdZjOg/jUc+yS7rNwMf8c7C1/+Qx86h012Sow8oILVWZTnmDeA6Sx6f+u0
         ZRRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768932073; x=1769536873;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WY/yEu59nUefrkGJmBAthiZgz7EKiY+FHwtG9ydqOHE=;
        b=b9YzxKStvg8FJUyeLZirbVpTcr4awfJaQxXvB0I7Xi0AVBnKr8SjHAp7mYp0DCrf0x
         P7o0knl5uE02SStUUWHk4DrsL7TLBUqYow/T0aR1ZL9boDfq3cEwsWC1K+6vvVL4d16V
         ycmnNsCNYfaojRTp8mHtBNHZShc6aWm1SPoO4uf/JBsEElJzzouaHaF0WGzio+Ey5oUd
         rozH02R4QCPF/WExHP8qyhLjcpxjrFFGqYZSb2S9WWFoCd6edrFZwO27aPggc5xCH0sD
         3EjGyFulN/hQsLYg1XDy2tl7RuponWCSqodglEx0D3+QU5G363/bwLkEDpWvgDPSj3y1
         cATQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLtQdUonFcrJUDCRT8noNYjBph1BhJOTXG//3k2szGtzCPP8WI1I0oAowiMLTzXCq1P/DWcM5q0op8@vger.kernel.org
X-Gm-Message-State: AOJu0YwbvK64jSK8v+UQtb1szNQ/0UqAOMHB9XC9wjBQw90rW6lMwVti
	Q/xYb7gvCAxfY1AIVV3ET9QKvM3mpjC94Veuq4191ThK53Z6Q/P7GUqB
X-Gm-Gg: AY/fxX4c7QDn6qyytZ0UoQlaedKhmEoNIeoJwl6KuLILs+9+5NrBjjWmU5SWSEIiUaJ
	mnSeNsid19TKaIynIOHSAFm5mshKqJxKk3ADO2nCuLLa9KHP0eNYh5vTmDfx0EHg95xxEqJ1Nn3
	x1ciFZSO5I3Gd+a6K95CL4OaikbIXFgG7Xy1euoP8M0L+RxSGir8GRAlnmv+pIKaC3EDTOaVLIY
	99bqg0RtSA9l93rer2b3Na64QmxU3VvE1DupYTP9OLBfwejeAhs5tepH7ehc60VC7FVY8iTpwpA
	50P+W3ue57TPUnR8kFsPSdd/mfeUyw4weOg35WDKO4OMarJ8HAJsKAPldAa807SLzHlxPc+Hc58
	0262G3wYBRy8AVTUp4f935UvvBFMBvIzc1LF4BPVC2dwr7R9OaPTWfP+iXKA0SCauVkVVG4ejMg
	GDbuDANsRgyykQuFYAXXl4
X-Received: by 2002:a05:600c:3e8e:b0:47b:deb9:163d with SMTP id 5b1f17b1804b1-4801e53c118mr177499455e9.7.1768932072455;
        Tue, 20 Jan 2026 10:01:12 -0800 (PST)
Received: from unknown.zextras.com ([78.208.157.140])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47f429071a2sm312013015e9.11.2026.01.20.10.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 10:01:12 -0800 (PST)
From: Gianluca Boiano <morf3089@gmail.com>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: andersson@kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	david@ixit.cz,
	Gianluca Boiano <morf3089@gmail.com>
Subject: [PATCH 4/7] arm64: dts: qcom: add device tree for Xiaomi Redmi Note 6 Pro (tulip)
Date: Tue, 20 Jan 2026 19:00:49 +0100
Message-ID: <20260120180052.1031231-5-morf3089@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260120180052.1031231-1-morf3089@gmail.com>
References: <20260120180052.1031231-1-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257548-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,ixit.cz,gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[morf3089@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,a0000000:email,0.0.0.3:email]
X-Rspamd-Queue-Id: 1BF7849E2D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add initial device tree support for the Xiaomi Redmi Note 6 Pro
(codename: tulip), a smartphone based on Qualcomm SDM636 SoC with
4GB RAM and a 6.26" 1080x2280 display.

This enables:
- Booting to a framebuffer console
- USB support
- Hall effect sensor
- Battery monitoring
- Charging (pm660_charger)
- Status LED (pm660l_lpg)

Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
---
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/sdm636-xiaomi-tulip.dts     | 333 ++++++++++++++++++
 2 files changed, 334 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sdm636-xiaomi-tulip.dts

diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
index 6f34d5ed331c..6168d204ca91 100644
--- a/arch/arm64/boot/dts/qcom/Makefile
+++ b/arch/arm64/boot/dts/qcom/Makefile
@@ -243,6 +243,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm630-sony-xperia-nile-voyager.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm632-fairphone-fp3.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm632-motorola-ocean.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm636-sony-xperia-ganges-mermaid.dtb
+dtb-$(CONFIG_ARCH_QCOM)	+= sdm636-xiaomi-tulip.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm660-xiaomi-lavender.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm670-google-sargo.dtb
 dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c.dtb
diff --git a/arch/arm64/boot/dts/qcom/sdm636-xiaomi-tulip.dts b/arch/arm64/boot/dts/qcom/sdm636-xiaomi-tulip.dts
new file mode 100644
index 000000000000..44ffc1e31401
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/sdm636-xiaomi-tulip.dts
@@ -0,0 +1,333 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2022, Gianluca Boiano <morf3089@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "sdm636.dtsi"
+#include "sdm660-xiaomi-common.dtsi"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
+/ {
+	model = "Xiaomi Redmi Note 6 Pro";
+	compatible = "xiaomi,tulip", "qcom,sdm636";
+	chassis-type = "handset";
+
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <4000000>;
+		voltage-min-design-microvolt = <3400000>;
+		voltage-max-design-microvolt = <4408000>;
+	};
+
+	reserved-memory {
+		ramoops@a0000000 {
+			compatible = "ramoops";
+			reg = <0x0 0xa0000000 0x0 0x400000>;
+			console-size = <0x20000>;
+			record-size = <0x20000>;
+			ftrace-size = <0x0>;
+			pmsg-size = <0x20000>;
+		};
+	};
+};
+
+&framebuffer0 {
+	width = <1080>;
+	height = <2280>;
+	stride = <(1080 * 4)>;
+
+	status = "okay";
+};
+
+&gpio_hall_sensor {
+	status = "okay";
+};
+
+&pm660_charger {
+	monitored-battery = <&battery>;
+
+	status = "okay";
+};
+
+&pm660l_lpg {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	qcom,power-source = <1>;
+
+	status = "okay";
+
+	led@3 {
+		reg = <3>;
+		color = <LED_COLOR_ID_WHITE>;
+		function = LED_FUNCTION_STATUS;
+	};
+};
+
+&pm660l_wled {
+	status = "okay";
+};
+
+&rpm_requests {
+	regulators-0 {
+		compatible = "qcom,rpm-pm660l-regulators";
+
+		vdd_s1-supply = <&vph_pwr>;
+		vdd_s2-supply = <&vph_pwr>;
+		vdd_s3_s4-supply = <&vph_pwr>;
+		vdd_s5-supply = <&vph_pwr>;
+		vdd_s6-supply = <&vph_pwr>;
+
+		vdd_l1_l9_l10-supply = <&vreg_s2b_1p05>;
+		vdd_l2-supply = <&vreg_bob>;
+		vdd_l3_l5_l7_l8-supply = <&vreg_bob>;
+		vdd_l4_l6-supply = <&vreg_bob>;
+		vdd_bob-supply = <&vph_pwr>;
+
+		vreg_s1b_1p125: s1 {
+			regulator-min-microvolt = <1125000>;
+			regulator-max-microvolt = <1125000>;
+			regulator-enable-ramp-delay = <200>;
+		};
+
+		vreg_s2b_1p05: s2 {
+			regulator-min-microvolt = <1050000>;
+			regulator-max-microvolt = <1050000>;
+			regulator-enable-ramp-delay = <200>;
+		};
+
+		/* LDOs */
+		vreg_l1b_0p925: l1 {
+			regulator-min-microvolt = <800000>;
+			regulator-max-microvolt = <925000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-allow-set-load;
+		};
+
+		/* SDHCI 3.3V signal doesn't seem to be supported. */
+		vreg_l2b_2p95: l2 {
+			regulator-min-microvolt = <1648000>;
+			regulator-max-microvolt = <3100000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-allow-set-load;
+		};
+
+		vreg_l3b_3p3: l3 {
+			regulator-min-microvolt = <1710000>;
+			regulator-max-microvolt = <3600000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-allow-set-load;
+			regulator-always-on;
+		};
+
+		vreg_l4b_2p95: l4 {
+			regulator-min-microvolt = <1700000>;
+			regulator-max-microvolt = <2950000>;
+			regulator-enable-ramp-delay = <250>;
+
+			regulator-min-microamp = <200>;
+			regulator-max-microamp = <600000>;
+			regulator-system-load = <570000>;
+			regulator-allow-set-load;
+		};
+
+		/*
+		 * Downstream specifies a range of 1721-3600mV,
+		 * but the only assigned consumers are SDHCI2 VMMC
+		 * and Coresight QPDI that both request pinned 2.95V.
+		 * Tighten the range to 1.8-3.328 (closest to 3.3) to
+		 * make the mmc driver happy.
+		 */
+		vreg_l5b_2p95: l5 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <3328000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-allow-set-load;
+		};
+
+		vreg_l7b_3p125: l7 {
+			regulator-min-microvolt = <2700000>;
+			regulator-max-microvolt = <3125000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_l8b_3p3: l8 {
+			regulator-min-microvolt = <3200000>;
+			regulator-max-microvolt = <3400000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_bob: bob {
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3600000>;
+			regulator-enable-ramp-delay = <500>;
+		};
+	};
+
+	regulators-1 {
+		compatible = "qcom,rpm-pm660-regulators";
+
+		vdd_s1-supply = <&vph_pwr>;
+		vdd_s2-supply = <&vph_pwr>;
+		vdd_s3-supply = <&vph_pwr>;
+		vdd_s4-supply = <&vph_pwr>;
+		vdd_s5-supply = <&vph_pwr>;
+		vdd_s6-supply = <&vph_pwr>;
+
+		vdd_l1_l6_l7-supply = <&vreg_s5a_1p35>;
+		vdd_l2_l3-supply = <&vreg_s2b_1p05>;
+		vdd_l5-supply = <&vreg_s2b_1p05>;
+		vdd_l8_l9_l10_l11_l12_l13_l14-supply = <&vreg_s4a_2p04>;
+		vdd_l15_l16_l17_l18_l19-supply = <&vreg_bob>;
+
+		/*
+		 * S1A (FTAPC0), S2A (FTAPC1), S3A (HFAPC1) are managed
+		 * by the Core Power Reduction hardened (CPRh) and the
+		 * Operating State Manager (OSM) HW automatically.
+		 */
+
+		vreg_s4a_2p04: s4 {
+			regulator-min-microvolt = <1805000>;
+			regulator-max-microvolt = <2040000>;
+			regulator-enable-ramp-delay = <200>;
+			regulator-always-on;
+		};
+
+		vreg_s5a_1p35: s5 {
+			regulator-min-microvolt = <1224000>;
+			regulator-max-microvolt = <1350000>;
+			regulator-enable-ramp-delay = <200>;
+		};
+
+		vreg_s6a_0p87: s6 {
+			regulator-min-microvolt = <504000>;
+			regulator-max-microvolt = <992000>;
+			regulator-enable-ramp-delay = <150>;
+		};
+
+		/* LDOs */
+		vreg_l1a_1p225: l1 {
+			regulator-min-microvolt = <1150000>;
+			regulator-max-microvolt = <1250000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-allow-set-load;
+		};
+
+		vreg_l2a_1p0: l2 {
+			regulator-min-microvolt = <950000>;
+			regulator-max-microvolt = <1010000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_l3a_1p0: l3 {
+			regulator-min-microvolt = <950000>;
+			regulator-max-microvolt = <1010000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_l5a_0p848: l5 {
+			regulator-min-microvolt = <525000>;
+			regulator-max-microvolt = <950000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_l6a_1p3: l6 {
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1370000>;
+			regulator-allow-set-load;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_l7a_1p2: l7 {
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_l8a_1p8: l8 {
+			regulator-min-microvolt = <1750000>;
+			regulator-max-microvolt = <1900000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-system-load = <325000>;
+			regulator-allow-set-load;
+		};
+
+		vreg_l9a_1p8: l9 {
+			regulator-min-microvolt = <1750000>;
+			regulator-max-microvolt = <1900000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-allow-set-load;
+		};
+
+		vreg_l10a_1p8: l10 {
+			regulator-min-microvolt = <1780000>;
+			regulator-max-microvolt = <1950000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-allow-set-load;
+			regulator-system-load = <14000>;
+		};
+
+		vreg_l11a_1p8: l11 {
+			regulator-min-microvolt = <1780000>;
+			regulator-max-microvolt = <1950000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_l12a_1p8: l12 {
+			regulator-min-microvolt = <1780000>;
+			regulator-max-microvolt = <1950000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		/* This gives power to the LPDDR4: never turn it off! */
+		vreg_l13a_1p8: l13 {
+			regulator-min-microvolt = <1780000>;
+			regulator-max-microvolt = <1950000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-boot-on;
+			regulator-always-on;
+		};
+
+		vreg_l14a_1p8: l14 {
+			regulator-min-microvolt = <1710000>;
+			regulator-max-microvolt = <1900000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_l15a_1p8: l15 {
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <2950000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_l16a_2p7: l16 {
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-always-on;
+		};
+
+		vreg_l17a_1p8: l17 {
+			regulator-min-microvolt = <1650000>;
+			regulator-max-microvolt = <2950000>;
+			regulator-enable-ramp-delay = <250>;
+		};
+
+		vreg_l19a_3p3: l19 {
+			regulator-min-microvolt = <3200000>;
+			regulator-max-microvolt = <3400000>;
+			regulator-enable-ramp-delay = <250>;
+			regulator-allow-set-load;
+		};
+	};
+};
+
+&sdhc_2 {
+	status = "okay";
+};
+
+&tlmm {
+	gpio-reserved-ranges = <8 4>; /* Fingerprint SPI */
+};
-- 
2.52.0


