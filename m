Return-Path: <devicetree+bounces-138807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7CEA12534
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36E83166B60
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 13:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B35246A3E;
	Wed, 15 Jan 2025 13:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KrIShCsT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2223242247
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736948653; cv=none; b=SSvrB1f1oh1evVAPzRGIaC5X+1KqbmxrXta38uP5s/tHOa2XdZkaEgMK0ZXJgQ1arhGRx47iLDgTC18qEoF5ym4Bju+4pT5yP66eqzM8cDiWdM8gbWGIDWXz3R32SMhBP6fWzPN66ZEn0YSjJSRjiCzjY4/aWRwmNf5fowhwntk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736948653; c=relaxed/simple;
	bh=OKPEX6F08gGO+sg+Hn4Zg0EioH1BaTQhpuoQgCo1/fI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=euwlPtrKe3SZgaRbGIl5xXEP59GKn2DMW3rVutjNNJPI7z+tL+OK5ROT7lRucmAYOmrw8NoP4VaNOt3M9E+fVtjUZtyN79F02QLgMi23AL2IPqa4bxvm6zeEfLioynIKvaaTXi1J15gtXps7HJzz/qSGRnv8xiYO+V0RHoJ+JLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KrIShCsT; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4361b0ec57aso64998835e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 05:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736948648; x=1737553448; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YgLlAgF2PRcTKZUIpBxB2EmyP4+IJ+IKtdR/GQJ7xPg=;
        b=KrIShCsTkeEICDY58WfXnbM2lBBNaE+udKO63Id/j6Bfs7WjGu580K17KkJwifK9h3
         yfcXjK2eM+I2SyhZUuyDhYeDX4ToYXkonDoPNb/+FpuwxjENHKxOkIMO16JoY3ZHtgFV
         XHDuUwsoetwHDS+CrfSSLKse9+NCxP05CqXS54xJ1eISZ50KYi1y1og3yVEtJVFrQdCB
         XXUAgkYorxisQ3pFeOCQPc+qrgf7UwlKOVlApEPDY42ay0yfhHizrjG4JKip7CC10mch
         p83w+FXhDBeKKf44mQ/ROCdnhvFz4aftlkT/twtVj8D63biekE0NhnQ4Ag6ZBDyI2A1b
         sWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736948648; x=1737553448;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YgLlAgF2PRcTKZUIpBxB2EmyP4+IJ+IKtdR/GQJ7xPg=;
        b=Yuu24H0WrY/+PVT5cEuJlA+p/Sv8+rrByI+aMPrfA38IFZMmEvJMicjmrsUGf0Vlcp
         5qfH65ZCqX2xbAb9IOHlBD4WD+LpwDtuGbdh3F0MBrcFeh70NUCPZnnwkNGJ+KMq/NF0
         4wMX4K89pygbdFS90qrM/WDJ83jZtaFPpr7grMb8gppoRVlD3xN/F4ide+TZLPu3B7zA
         bNy3a5whmQocgFJez+Epj2AmEZ8wUDGeZbzpDpjir4DnPLwLwNiwa8uIw4dp3fBz1PwC
         Y/bjruwykStCfzsaKSp8m15Y50OHZJI2ptXaMuIOLvxQPgdTabvg0ALFQtuKFmRKIhK2
         nh2Q==
X-Forwarded-Encrypted: i=1; AJvYcCVlkEeVyTJWm3GKLutOdaAZQR5IBCoBKw8JRNv+VxEqUTubEh5U5hpBSo8UdIyWWgUNpqHGECnrmkfs@vger.kernel.org
X-Gm-Message-State: AOJu0YyJdGrU6n8joCSc55THeKkjZMgfFsPxFsBzUPh2vOKfDqAUJy9W
	1M1LXLK5jurzNcR1iN9010kjX3ekVRobHX52BXRJ5Q+pijkIRV15BQJuOD/gaM8=
X-Gm-Gg: ASbGnctO+bp6EEpRfgLl4Sx37yuxlnyP6zz0Wji0PmlJzhTCDQIZJGMr3TNltFrnv81
	S6H3LzJiWXCRmKcMJmtDZ/Ww1HQgtK+El6UZ5TwlD01aHZw5JTRpoi4Dmjo/BckfGLRxhH1UmA5
	EsgX9PD5Ra789lfJcS/XMvMoE2DJV1pNgobhF1dKKqKUNEcgYoQ3F+o8vi3pU1zh/gHTN9HJ2jv
	9k7DQaklAwpJmZfCpbOBD3LjJ1iAQoST3YtTicOQ5NZHrjsPwU/2T1gYf00uq1h1FDX5JMY/w98
	QA==
X-Google-Smtp-Source: AGHT+IGJqoll7b+R1avMGFrwApifltMBukNAB0i9MMZus9GlLq29zGFa3ZySoeOTtl+DsWvWOS25tw==
X-Received: by 2002:a05:600c:5246:b0:434:feb1:adbb with SMTP id 5b1f17b1804b1-436e271d5d6mr274321295e9.31.1736948647778;
        Wed, 15 Jan 2025 05:44:07 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c7540ae7sm23454655e9.33.2025.01.15.05.44.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 05:44:07 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 15 Jan 2025 14:44:01 +0100
Subject: [PATCH 09/10] arm64: dts: qcom: sm8650: add QUP serial engines OPP
 tables
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-9-eaa8b10e2af7@linaro.org>
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=15660;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=OKPEX6F08gGO+sg+Hn4Zg0EioH1BaTQhpuoQgCo1/fI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnh7uewyVfACvk7kUBkRivpF6UEfyRHEp824Rvyv4R
 74pVfjCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ4e7ngAKCRB33NvayMhJ0XZEEA
 C87HnZ6EIqwVn16w2yGdgiRLBXGgERrziZ5UFrI1RjlsLtYjOxYXeF0TKIXiViQGm/HPJKxfx7piZk
 vaef34XaE9EJnMOQ0kFJ9v3RcvvKTVWSjt/PUUqtuJiON7NibXdmtOKvM426ZMV59Jgti7MLlDtIsN
 +QkEdvEJW58QFz1WKw7+aUMWFPPbxqBCNJv5C6ZaHK+Wj1h9olaVkFSVhh4GPFhRfystgmXRfKnDWa
 uAofPmycv97YtTtC7lKaF4TmeK/+VMfSkDphtKWZigjtq8H3kOO67HqmzTINNEAc6NBX8ZsJS58BOi
 KYyLJruGth8NQc4JtISNYrF9d/2mN+v35SmyPbM0k73rAQp0WEaB7WTpuub+fKJJTmTnOkjdSx2nOf
 +WQmouCuiblxNfwVBkCFCcoURUZZ7sR5xY79FrCbJ3FgRWyviQjUiDU/KV8TmTCAsbCCZln2mgkZ3A
 FSRTScAUT+jdJvDscaDeZ35vvl6oRO/Puvv48lsJ2XzHaNMZ51gznEfG88s1QyNOzMpIfJpGsKp3x3
 tEH2Lv2pj0PoBX3FJvpy2Uy3XgETGfwhNH7eGefa0GToC1cZoFNP93jyxqDmsMldYeq9oCmUY5qLi2
 IujDDXmrTFs/xCEuhh9zO3fpa0x0y289kr0MAVKjD8iXcelCvElcM0+rtAHA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The QUP Serial Engines requires different power domain level
depending on their working frequency, add the required OPP
table with the level associated with all possible frequencies.

For the "I2C Hub" serial engines, sinse they only support a
single Operating Point, only add a single power domain level
property.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 216 +++++++++++++++++++++++++++++++++++
 1 file changed, 216 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 737d1901ca10fe0a49ae4685d0363be74cc0668d..82be3f9051705507767023d7e195489852223ce3 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -420,6 +420,62 @@ mc_virt: interconnect-1 {
 		qcom,bcm-voters = <&apps_bcm_voter>;
 	};
 
+	qup_opp_table_100mhz: opp-table-qup100mhz {
+		compatible = "operating-points-v2";
+
+		opp-75000000 {
+			opp-hz = /bits/ 64 <75000000>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+		};
+
+		opp-100000000 {
+			opp-hz = /bits/ 64 <100000000>;
+			required-opps = <&rpmhpd_opp_svs>;
+		};
+	};
+
+	qup_opp_table_120mhz: opp-table-qup120mhz {
+		compatible = "operating-points-v2";
+
+		opp-75000000 {
+			opp-hz = /bits/ 64 <75000000>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+		};
+
+		opp-120000000 {
+			opp-hz = /bits/ 64 <120000000>;
+			required-opps = <&rpmhpd_opp_svs>;
+		};
+	};
+
+	qup_opp_table_128mhz: opp-table-qup128mhz {
+		compatible = "operating-points-v2";
+
+		opp-75000000 {
+			opp-hz = /bits/ 64 <75000000>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+		};
+
+		opp-128000000 {
+			opp-hz = /bits/ 64 <128000000>;
+			required-opps = <&rpmhpd_opp_svs>;
+		};
+	};
+
+	qup_opp_table_240mhz: opp-table-qup240mhz {
+		compatible = "operating-points-v2";
+
+		opp-150000000 {
+			opp-hz = /bits/ 64 <150000000>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+		};
+
+		opp-240000000 {
+			opp-hz = /bits/ 64 <240000000>;
+			required-opps = <&rpmhpd_opp_svs>;
+		};
+	};
+
 	memory@a0000000 {
 		device_type = "memory";
 		/* We expect the bootloader to fill in the size */
@@ -889,6 +945,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma2 0 0 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 0 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -922,6 +982,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma2 0 0 QCOM_GPI_SPI>,
 				       <&gpi_dma2 1 0 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -955,6 +1019,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma2 0 1 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 1 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -988,6 +1056,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma2 0 1 QCOM_GPI_SPI>,
 				       <&gpi_dma2 1 1 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -1021,6 +1093,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma2 0 2 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 2 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -1054,6 +1130,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma2 0 2 QCOM_GPI_SPI>,
 				       <&gpi_dma2 1 2 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -1087,6 +1167,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma2 0 3 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 3 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -1120,6 +1204,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma2 0 3 QCOM_GPI_SPI>,
 				       <&gpi_dma2 1 3 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -1153,6 +1241,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma2 0 4 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 4 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -1186,6 +1278,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma2 0 4 QCOM_GPI_SPI>,
 				       <&gpi_dma2 1 4 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -1219,6 +1315,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma2 0 5 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 5 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -1252,6 +1352,10 @@ &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma2 0 5 QCOM_GPI_SPI>,
 				       <&gpi_dma2 1 5 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -1282,6 +1386,10 @@ &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_128mhz>;
+
 				pinctrl-0 = <&qup_uart14_default>, <&qup_uart14_cts_rts>;
 				pinctrl-names = "default";
 
@@ -1304,6 +1412,10 @@ &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				pinctrl-0 = <&qup_uart15_default>;
 				pinctrl-names = "default";
 
@@ -1342,6 +1454,10 @@ &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				required-opps = <&rpmhpd_opp_low_svs>;
+
 				pinctrl-0 = <&hub_i2c0_data_clk>;
 				pinctrl-names = "default";
 
@@ -1369,6 +1485,10 @@ &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				required-opps = <&rpmhpd_opp_low_svs>;
+
 				pinctrl-0 = <&hub_i2c1_data_clk>;
 				pinctrl-names = "default";
 
@@ -1396,6 +1516,10 @@ &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				required-opps = <&rpmhpd_opp_low_svs>;
+
 				pinctrl-0 = <&hub_i2c2_data_clk>;
 				pinctrl-names = "default";
 
@@ -1423,6 +1547,10 @@ &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				required-opps = <&rpmhpd_opp_low_svs>;
+
 				pinctrl-0 = <&hub_i2c3_data_clk>;
 				pinctrl-names = "default";
 
@@ -1450,6 +1578,10 @@ &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				required-opps = <&rpmhpd_opp_low_svs>;
+
 				pinctrl-0 = <&hub_i2c4_data_clk>;
 				pinctrl-names = "default";
 
@@ -1477,6 +1609,10 @@ &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				required-opps = <&rpmhpd_opp_low_svs>;
+
 				pinctrl-0 = <&hub_i2c5_data_clk>;
 				pinctrl-names = "default";
 
@@ -1504,6 +1640,10 @@ &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				required-opps = <&rpmhpd_opp_low_svs>;
+
 				pinctrl-0 = <&hub_i2c6_data_clk>;
 				pinctrl-names = "default";
 
@@ -1531,6 +1671,10 @@ &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				required-opps = <&rpmhpd_opp_low_svs>;
+
 				pinctrl-0 = <&hub_i2c7_data_clk>;
 				pinctrl-names = "default";
 
@@ -1558,6 +1702,10 @@ &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				required-opps = <&rpmhpd_opp_low_svs>;
+
 				pinctrl-0 = <&hub_i2c8_data_clk>;
 				pinctrl-names = "default";
 
@@ -1585,6 +1733,10 @@ &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 				interconnect-names = "qup-core",
 						     "qup-config";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				required-opps = <&rpmhpd_opp_low_svs>;
+
 				pinctrl-0 = <&hub_i2c9_data_clk>;
 				pinctrl-names = "default";
 
@@ -1664,6 +1816,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma1 0 0 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 0 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -1697,6 +1853,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma1 0 0 QCOM_GPI_SPI>,
 				       <&gpi_dma1 1 0 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -1730,6 +1890,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma1 0 1 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 1 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -1763,6 +1927,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma1 0 1 QCOM_GPI_SPI>,
 				       <&gpi_dma1 1 1 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -1796,6 +1964,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_240mhz>;
+
 				dmas = <&gpi_dma1 0 2 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 2 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -1829,6 +2001,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_240mhz>;
+
 				dmas = <&gpi_dma1 0 2 QCOM_GPI_SPI>,
 				       <&gpi_dma1 1 2 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -1862,6 +2038,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma1 0 3 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 3 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -1895,6 +2075,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma1 0 3 QCOM_GPI_SPI>,
 				       <&gpi_dma1 1 3 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -1928,6 +2112,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma1 0 4 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 4 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -1961,6 +2149,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma1 0 4 QCOM_GPI_SPI>,
 				       <&gpi_dma1 1 4 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -1994,6 +2186,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma1 0 5 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 5 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -2027,6 +2223,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma1 0 5 QCOM_GPI_SPI>,
 				       <&gpi_dma1 1 5 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -2060,6 +2260,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma1 0 6 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 6 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -2093,6 +2297,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_120mhz>;
+
 				dmas = <&gpi_dma1 0 6 QCOM_GPI_SPI>,
 				       <&gpi_dma1 1 6 QCOM_GPI_SPI>;
 				dma-names = "tx",
@@ -2126,6 +2334,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma1 0 7 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 7 QCOM_GPI_I2C>;
 				dma-names = "tx",
@@ -2159,6 +2371,10 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ACTIVE_ONLY>,
 						     "qup-config",
 						     "qup-memory";
 
+				power-domains = <&rpmhpd RPMHPD_CX>;
+
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
 				dmas = <&gpi_dma1 0 7 QCOM_GPI_SPI>,
 				       <&gpi_dma1 1 7 QCOM_GPI_SPI>;
 				dma-names = "tx",

-- 
2.34.1


