Return-Path: <devicetree+bounces-221982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB22BA4C0F
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 19:14:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11CBC1BC83BF
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 17:14:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA7CF30CDBB;
	Fri, 26 Sep 2025 17:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S0miWAJG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D048130C609
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 17:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758906819; cv=none; b=cnF5CBpbMrBOHvkGaCLhRu6qW0Q/X7bz0rxJH82xv00IVmRfHfV3VHemnpm22M/VM/EOw377URA5xEgOjX3aknwg2lXQbaz8KYDPhnqMxZ3iVEQVtprGqSQlXMgVxvFCiebtNvKq/VcduVsjIDxi7YfYetsh/C/D/WlYwpaR23U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758906819; c=relaxed/simple;
	bh=91ey4D4RscHiUop7uDzAjLKjyDW5NbuR+aCcWKWDgO4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VMCxhcOAf0m8/6QtjQfmzPFWgiVhRUWBliS0EthBZ2Rr2Ez7r+IaVpDQmsWh+Cb4pJZd80lxgu49mUS58ZfkkehVj5GzjYIqX6tms0z8l847/JpJcJ6VWERGciHY4krFuacoaNLSA50V6M5wxA/OUvaaqkbKR+6X+wdiKTg9lPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S0miWAJG; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-62fa99bcfcdso4603180a12.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 10:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758906815; x=1759511615; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GRWrg4uLTX0GBtHqvOnBTTd6fOpgFs97cg5Sl1bCRLc=;
        b=S0miWAJGQ546MOn6P0ofsHkw5D0i56eKwwdFeN+A0CMWxftdJTlThL1XeeOU0K7dm/
         JenUNqNij8KCfCxFHLxmSPrf4t9AFtfjcbgKtaiWoegk0H0To+Ge/tfL8h9ON8LekvfJ
         fP22yHWtIoXxjHAS2SX7Vlo4EqjxRf8dru/LH+VCNLKaYFsT5YyTsXAEMxJhb53NytYd
         E1Hu1yCy06dOyf+Pm2inkbX0kOSJqtqD+P0wCfeTJaqWkmrbs/Dx+S0xQMuAykrKeoP5
         t9fSWmtgbkTvInTcFVuUrYRvkjgdZon35HGDg5Z08g6hczu94+gEGWflW13WobmfvX4b
         YRXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758906815; x=1759511615;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GRWrg4uLTX0GBtHqvOnBTTd6fOpgFs97cg5Sl1bCRLc=;
        b=l2AmwNyHALATcvP3kjW7Qp9e9SkuGFkmpmDOQAx3ORhfv6GApgHes7725nq4C2L0Vg
         sfqk4tEdr7LhBB82gD5G8E4Yfw8oblKHX1nUqJFrhNnL7K+lVmkCdrfjcqhXk4o1oH5x
         SX49mjn1gqmqCYtTA49BaBtlo4n16LBPIwkbQX5DKG8ihcSExqpWVn//Nl9ZQzu7gTNE
         56waEyxJMxKenjmxQ2VvyCvONIkoYFxtxvCETBqwqiCVl2WzO6orWouuA9FyzN5lmc/3
         G73DAO+S41UVezwsMPxjTOjFkYgNYrVZ6exXVGaCj7gV7ke+FSRzy0t0oHSKYvZAsuLs
         Rulg==
X-Forwarded-Encrypted: i=1; AJvYcCXEiq1k5LuuIOkRaoD1P6DSNAVZlw/Wpem8qJm6XnHmU2sCJIkdfIjOP43IsiogOdUhqZIaPJgf7QA5@vger.kernel.org
X-Gm-Message-State: AOJu0YyZZF7mun8w9ztrtRJ4A+TvPbSEuwJ8WavKDGII1NrUFUz5PHHG
	f3SFKL5J3iUL9SXwRN4SmG4+IVV9yRQizq98ky2Us4JiCRA4wuXrBdhFiqnwaA==
X-Gm-Gg: ASbGncuSoyj3PrOobY3jXuGKzO23fLPC7ix0n64b9Jy17ZRW7yGLVf+Ca57ksf2iDKj
	qaDv/uoYi2SOoU3B9V5Y6iAn3ya2XJEvwwwjgyqoJQsmmMges+bM72kh8SrenjHp9tvR6bNeIht
	BusvwCxeOjJFcIM7maaQofmarmBjXOkeeKV8KGK2qkcpBOqOx13IjYevjfGlLIOWQZ4/BZCfjI0
	MqGA6QH/NgHaegO23wm4E9gP3HT/Q86SFL3GAUsCtVocR06XK8MrzuxKmuaXMuxiCn7xsoncHn1
	quq7MSCaabXHUS/J2h97ikK0BQRuYsAiT0xf8H7Jpe+Jl/1wjQQ3vYPO/wG4AfvKJ/JdVdiubwH
	D8ZH+2BM+KvtZCXlfrzbL
X-Google-Smtp-Source: AGHT+IF2fQ5BiZMnQgigSk9bQwDFvXDilYuLTRYlFcSL85YTbz8PJY3/svIikRxIAKdIw43rzklQbg==
X-Received: by 2002:a17:907:7296:b0:ae3:b2b7:7f2f with SMTP id a640c23a62f3a-b34bad2854emr1008213766b.40.1758906814999;
        Fri, 26 Sep 2025 10:13:34 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b353fa65be9sm397211166b.48.2025.09.26.10.13.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 10:13:34 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Fri, 26 Sep 2025 20:13:27 +0300
Subject: [PATCH v5 2/3] arch: arm64: dts: qcom: sdm845-starqltechn: fix
 max77705 interrupts
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-starqltechn-correct_max77705_nodes-v5-2-c6ab35165534@gmail.com>
References: <20250926-starqltechn-correct_max77705_nodes-v5-0-c6ab35165534@gmail.com>
In-Reply-To: <20250926-starqltechn-correct_max77705_nodes-v5-0-c6ab35165534@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dzmitry Sankouski <dsankouski@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758906810; l=2258;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=91ey4D4RscHiUop7uDzAjLKjyDW5NbuR+aCcWKWDgO4=;
 b=2U/nuqSlPTKe8L1FhhwHJLSB8akD3pymeUuvoK/el6+mN0UWF2b5cjlMxT654CudZIg0YRAMQ
 cY/qtM60JRWABqJk/gokkOi+ZoXlrBZeHkBKtppWOdskxb5LDPZDnP7
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

Since max77705 has a register, which indicates interrupt source, it acts
as an interrupt controller.

Direct MAX77705's subdevices to use the IC's internal interrupt
controller, instead of listening to every interrupt fired by the
chip towards the host device.

Fixes: 7a88a931d095 ("arm64: dts: qcom: sdm845-starqltechn: add max77705 PMIC")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
Changes for v5:
- group interrupt properties together, including #interrupt-cells

Changes for v2:
- fix commit message to be more clear

Changes for v2:
- fix commit msg header prefix to 'arm64: dts: qcom: sdm845-starqltechn:'
- remove binding header for interrupt numbers
- make interrupt-cells 1, because irq trigger type is not used
---
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index 45c7aa0f602d..215e1491f3e9 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -599,11 +599,13 @@ &uart9 {
 &i2c14 {
 	status = "okay";
 
-	pmic@66 {
+	max77705: pmic@66 {
 		compatible = "maxim,max77705";
 		reg = <0x66>;
+		#interrupt-cells = <1>;
 		interrupt-parent = <&pm8998_gpios>;
 		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-controller;
 		pinctrl-0 = <&pmic_int_default>;
 		pinctrl-names = "default";
 
@@ -644,8 +646,8 @@ max77705_charger: charger@69 {
 		reg = <0x69>;
 		compatible = "maxim,max77705-charger";
 		monitored-battery = <&battery>;
-		interrupt-parent = <&pm8998_gpios>;
-		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-parent = <&max77705>;
+		interrupts = <0>;
 	};
 
 	fuel-gauge@36 {
@@ -653,8 +655,8 @@ fuel-gauge@36 {
 		compatible = "maxim,max77705-battery";
 		power-supplies = <&max77705_charger>;
 		maxim,rsns-microohm = <5000>;
-		interrupt-parent = <&pm8998_gpios>;
-		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-parent = <&max77705>;
+		interrupts = <2>;
 	};
 };
 

-- 
2.39.5


