Return-Path: <devicetree+bounces-231367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B2EC0CA9E
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:32:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7102C189AE63
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E9202F39CE;
	Mon, 27 Oct 2025 09:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MEfWoQFg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD732F1FE7
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761557550; cv=none; b=EmUrWAOzBe7S6UnoPChWhRR6kXidscvqQN5tBP2Yv8gZ3pF+/BypT4GYXeu6ZpR7LY058z0mNouIAUy6z6svefD+lLOgVflehaQvjAtZ+WGIU6gO23gQrrgoVouAz9P9w2Yj5WEU28vLKAjxJUCJXqbjLJNsBEfIEMod5KHiwq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761557550; c=relaxed/simple;
	bh=72/KDI0ED0WOuGQa9wsAl7If0x4o4qq3O0o6SEkbMDk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LW6WNu2tnbLIkfUIfM5d/R+fvRD4P2akAEDSASjAkPAYxd/O0Fn0zgseQAWnaArlEg9VkGdZ/eeaIi1D2PZve7AhIG1pkzUsF1JxW17iuY0GauZtkceAs45q+qCCl/HfLnxGXLMEArzBe87eQN2m3f/8OXAahKZbjcqjJs24A7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MEfWoQFg; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b403bb7843eso964660366b.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761557546; x=1762162346; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TCQDnPWqowHG59QXmb0jLVkKI2rjRu35406X3JQiDVY=;
        b=MEfWoQFgX4dqQWoaBIY3Ty8zpZMxOTF2QyNzGnBERQV+ZbMRA83qL/ACG8TRMCBwKH
         k/N/O4LHT51b/b0sGOi6e4eSRGx26+haznX0h64EPArqRdfl/34gKoJthfn1hOUDJ9z7
         L2jOWw2SkJHDZBvmFIXZBv7L7C/bPHsb7QhNZ+t8w0kziYxqFuWEc8ujrrC+oGyOOdGv
         RMzq3nXuCy851TPe9mxZQlm2BDkccj1go05B4aoiahzrCE3Hqg5my0DsRMwAWZTgXW7R
         7fIVEYY/HPkAMxEPK+kzZO7koItgo3hj9//P/tgD9dPFVr7PMhmuJS1ZUFMvuhxkzxcD
         wr+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761557546; x=1762162346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TCQDnPWqowHG59QXmb0jLVkKI2rjRu35406X3JQiDVY=;
        b=uynSkIImAGUVpwS5+o0f5xM+zKmc1XcN8qQxhoyPH7WaZFIs9DRxwWUpSY050zO8cU
         Y+lxEZbk6rg+IFA844nyLf1NBIMGHvG0tGnhPuoeSb4NszCEUNyilkiaL5F1xzkIk6J2
         74Y4QnGMxUpoq9Zz/Fx3G86bd6dGDI5/nW7owIKbdpPNpolff9lHkm2ehA/t4n0EjGix
         opfsan5NXbJtirS4NnvuV1ciumcQhghX1IH6fcoQRlJlEL5W98ZnCakoWdEmCHLqQDsl
         weRus9fomS+Tb6od3TfZj3sic8Kbo9jOT6jYhplUQ8wUM9lCYUCTV1Cd+TrKeqnKFu0n
         Vd7w==
X-Forwarded-Encrypted: i=1; AJvYcCXiLcKdqdo2Kns22bOd7b5iL94D14sIIbyYrdZSUw1rY9Oi9hTWxT6WtsdZTHDtjxarOZmfLkALlWGc@vger.kernel.org
X-Gm-Message-State: AOJu0YzBRUxta275/HF2wa3TJ/nAMIDb7KsDMr9A2BAIIgmzaum7GXGA
	ss/PanhGQ55Blqq0SMrqi5xk3z0LUUTBURfjKOuhyJrMCnaZPtZ2NR8/
X-Gm-Gg: ASbGncvMv5zcd+TMOqREAw4DbWZm7AwD2tuDTb5idBfRiq3E1zq4NTjRAC4ErozK/0m
	bLq0owwlQE3te2AYUsaTWnAaIt0YUs3aEUWCU87UOBJKIvDyHT4bmGb10sXICNdRo7LUHCM9HrA
	KvLSxN1AS5qRPfHuuDv6nk/fqn/1EI2v9V7XfmFdhuLpSuejEU3MsWjMELuvzcLoPFXyQszIryL
	FnAsX07bpIgE/nAVQloP5/CPNgDbP7SIo5EiGsKHCF+rNtcoAZox8A7xJHme1J3Zjz95V7A8yvQ
	luakJ+7YeedyKp6Akk474/X0Jody72Gus0eeHBBnfReWlDnA5tOVTxmrogvG1VvdramVRGQZHrC
	u53CpU7vJgMLYiiVTzJrRS7UMYnYjJRiEMBqsXES7fZSPefshqcRdWf0YUN9Y0L95/eYu0pu/Kw
	VSibAw4aqKODtNrJ6ZkMorUCGdfO8fSfszWxHpMBxIVnHff2uV8YmNkM5B0ys/KHBBxLvk4tH9D
	8lgGg==
X-Google-Smtp-Source: AGHT+IGjcZLCWHusJQ+RRTOnS62EVI4AzVgjShANu+qiEsSh8iA493hRxBFjM7nRHQfw9gIc6kKZYg==
X-Received: by 2002:a17:906:4fc4:b0:b3a:b22e:dd35 with SMTP id a640c23a62f3a-b6471d45a69mr4222583766b.2.1761557545758;
        Mon, 27 Oct 2025 02:32:25 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef6be28sm5681014a12.2.2025.10.27.02.32.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 02:32:25 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/5] arm64: dts: imx8-apalis: add thermal nodes
Date: Mon, 27 Oct 2025 10:30:08 +0100
Message-ID: <20251027093133.2344267-3-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20251027093133.2344267-1-max.oss.09@gmail.com>
References: <20251027093133.2344267-1-max.oss.09@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Max Krummenacher <max.krummenacher@toradex.com>

Add the thermal-zones and cooling-maps nodes for the PMIC device.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---

 .../boot/dts/freescale/imx8-apalis-v1.1.dtsi  | 30 +++++++++++++++++--
 .../dts/freescale/imx8qm-apalis-v1.1.dtsi     | 10 ++++++-
 2 files changed, 37 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index 6ebeade2ce72..686fce7443bb 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -226,6 +226,34 @@ sound-spdif {
 		spdif-out;
 	};
 
+	thermal-zones {
+		pmic-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <2000>;
+			thermal-sensors = <&tsens IMX_SC_R_PMIC_0>;
+
+			cooling-maps {
+				cooling_maps_map0: map0 {
+					trip = <&pmic_alert0>;
+				};
+			};
+
+			trips {
+				pmic_alert0: trip0 {
+					hysteresis = <2000>;
+					temperature = <110000>;
+					type = "passive";
+				};
+
+				pmic_crit0: trip1 {
+					hysteresis = <2000>;
+					temperature = <125000>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
 	touchscreen: touchscreen {
 		compatible = "toradex,vf50-touchscreen";
 		interrupt-parent = <&lsio_gpio3>;
@@ -833,8 +861,6 @@ &spdif0 {
 	status = "okay";
 };
 
-/* TODO: Thermal Zones */
-
 /* TODO: Apalis USBH2, Apalis USBH3 and on-module Wi-Fi via on-module HSIC Hub */
 
 /* Apalis USBH4 */
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1.dtsi
index b1c3f331c4ed..8a37cbe922ac 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-apalis-v1.1.dtsi
@@ -11,4 +11,12 @@ / {
 	model = "Toradex Apalis iMX8QM V1.1";
 };
 
-/* TODO: Cooling Maps */
+&cooling_maps_map0 {
+	cooling-device =
+		<&A53_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+		<&A53_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+		<&A53_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+		<&A53_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+		<&A72_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+		<&A72_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+};
-- 
2.42.0


