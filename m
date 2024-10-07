Return-Path: <devicetree+bounces-108682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3297F9935FC
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 20:23:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFDD2286B72
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 18:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6351F1DE2A7;
	Mon,  7 Oct 2024 18:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hwKNY+Mk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4E01DDC1E
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 18:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728325386; cv=none; b=LGD1bcA3b8LGALedRcV8CGOf4C2cLZ7NlP2UOptUC0Z+tnUQyo5KoBudlzuFY7QfXW7FJuyufzU2jhM8/SfWIszFPfvXYSx41yhTJfYKT05oQAckaD/Tfyz4ljkMbFK+aCpQJ/NtbfHElvMAqVtdsQ2x8Sp81FCLnLBbjteYZs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728325386; c=relaxed/simple;
	bh=U3MoflWSS4X7ojpD9s6AHdoJKHKG92yadksJttRFSWc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Bkx1U3XxhdJD9XZFavcwhVgPytlohD1zDb8EjhEMgXM5T8a2cjGas16ATAKJmgZU/e0AZYjggBQPqs8JXNQF5YFyF69m2v8Y4mLl1hclG3Ic5GVMhG65iek5aqoW0Xd8VYqD0Z/pZXSiuDwL64XJAvs+grgf5wCMWV4AwVtUlPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hwKNY+Mk; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a99415adecaso346122666b.0
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 11:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728325383; x=1728930183; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TV6+Hn2cOZip0zLKLF+j4ubTHiIZhcY3cY83jYd7n5I=;
        b=hwKNY+Mkz+mJvfO68KHlcbfKsOO4xsz2gJ95BPmCquQ85Q+r8go2F10w/4kWclvBdc
         46ondUzPmW7N2PweDZc/CISwmowfYVuetBARq9n9vQm44uMlWuRuvoxXTiqPq2FMWzDs
         5HVRci7y8AB5ElFwtyfovN6r0Oc5UQRVvxkVDyuHdETW8QrDIkMX1YKpMCdqgGyMeAGj
         rPK2D22vFprd3v0TtlvsqHPCpMklOmx71Wp8qzwr1Pbgn0bA/f9g14/HA/zjHYZ26qjf
         1DGM3GmZH0gXBpAVIUaifBosBRAXG+b0gzLKxki1L1sILU76MOmCWOhRyPxtlrzctrNL
         z+RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728325383; x=1728930183;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TV6+Hn2cOZip0zLKLF+j4ubTHiIZhcY3cY83jYd7n5I=;
        b=cefmDSXUSoLsNeZ7/Pz+hLOF53fIZuzFj5WMaOQhiPWe4dB7ATgenLJM/4x/tZ9pw3
         wkuj8bLPckD859io2LtNpCmBguxVjklgwFxnpBxd/kfB+Cd2gafbP8cHJrGb8EQRjQAU
         7Vcv3JoP0MuI0cl7om44wVu5W7U80Fq31Ay6ftC5l6Y+RVcxYwdEgmM5OgKkhexqM0Uv
         nH144Gy21WzwvMVAWQFATz8MZ5Hk1KN82xaPbVKrkLs4ZZoj+19Ub+6o5t6ggAHbabbm
         8cRqoD1MNppcWfylJ7nrbjFNqdn9G8Cs0gaNY5bu91hUWAiXkVrm7T5y3lZbBc/5IZeJ
         guQg==
X-Forwarded-Encrypted: i=1; AJvYcCVT2goVg7sxa6HPPkHyDlSUAN0qCiOefGgvmfyVh9LET0FjbAPeGrCJ6nYxJQGKyXwCpJhSg20j92+F@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh/Lwe/PLOKnpJ8IYCz3DMqvJ0V7rSqnvhT9jG9l9ByvoDnRwA
	mySf3IVVVWru77Rn+dYjILKX2KsiTuXklb/rd+46Tnyqji0vzLymI4xJ5UXIKuQ=
X-Google-Smtp-Source: AGHT+IHeeQ8fqyML5vW9K4B8EifeafJ+qeRRkbLMNV6XhNuUaFFWRAutmIl5tcg/2wYLm2oHU1Fn1Q==
X-Received: by 2002:a17:906:f5a4:b0:a77:ab9e:9202 with SMTP id a640c23a62f3a-a9967856408mr51484766b.4.1728325382797;
        Mon, 07 Oct 2024 11:23:02 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef40:4109:b8c2:873b:4a28])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c8e05eb34csm3452963a12.59.2024.10.07.11.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 11:23:02 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 07 Oct 2024 20:22:26 +0200
Subject: [PATCH 2/3] arm64: dts: qcom: x1e80100: Add uart14
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241007-x1e80100-pwrseq-qcp-v1-2-f7166510ab17@linaro.org>
References: <20241007-x1e80100-pwrseq-qcp-v1-0-f7166510ab17@linaro.org>
In-Reply-To: <20241007-x1e80100-pwrseq-qcp-v1-0-f7166510ab17@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.13.0

Add the uart14 instance for X1E80100 (typically used for Bluetooth).

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 53 ++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 06d27c65dc11..185bb15c2945 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -1991,6 +1991,31 @@ &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
 				status = "disabled";
 			};
 
+			uart14: serial@a98000 {
+				compatible = "qcom,geni-uart";
+				reg = <0 0x00a98000 0 0x4000>;
+
+				interrupts = <GIC_SPI 806 IRQ_TYPE_LEVEL_HIGH>;
+
+				clocks = <&gcc GCC_QUPV3_WRAP1_S6_CLK>;
+				clock-names = "se";
+
+				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
+						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
+						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>;
+				interconnect-names = "qup-core",
+						     "qup-config";
+
+				power-domains = <&rpmhpd RPMHPD_CX>;
+				operating-points-v2 = <&qup_opp_table_100mhz>;
+
+				pinctrl-0 = <&qup_uart14_default>;
+				pinctrl-names = "default";
+
+				status = "disabled";
+			};
+
 			i2c15: i2c@a9c000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0 0x00a9c000 0 0x4000>;
@@ -5802,6 +5827,34 @@ rx-pins {
 				};
 			};
 
+			qup_uart14_default: qup-uart14-default-state {
+				cts-pins {
+					pins = "gpio56";
+					function = "qup1_se6";
+					bias-bus-hold;
+				};
+
+				rts-pins {
+					pins = "gpio57";
+					function = "qup1_se6";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				tx-pins {
+					pins = "gpio58";
+					function = "qup1_se6";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				rx-pins {
+					pins = "gpio59";
+					function = "qup1_se6";
+					bias-pull-up;
+				};
+			};
+
 			qup_uart21_default: qup-uart21-default-state {
 				tx-pins {
 					pins = "gpio86";

-- 
2.46.0


