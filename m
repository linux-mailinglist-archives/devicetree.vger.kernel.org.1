Return-Path: <devicetree+bounces-136631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF7FA05AFF
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:05:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96CC47A0357
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E1C1F8AE0;
	Wed,  8 Jan 2025 12:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="knp0r22q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93AE919D8A9
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 12:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337936; cv=none; b=sd3yFhL5J5NEZfRrZr0HbgdYEh6pbZlWFMJSmoy9w1cOp8oitiNtFqD3GTKP+rQ40LVemfws3sOZdjj4rreF0BtGoc715+WyvCh5oYDF/TYmiFeR7j8lw1vw9Qi1RJG72zBSP3j6062ZhQSDjgIcdHPCmFsqufmOZ/3ccsqdy7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337936; c=relaxed/simple;
	bh=O/ipbfUJ+i6XxrL+DK3a6ndmvpYfRjXuPQImjQMFwY4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ia3YOoDF36IjpQnJmRlauFJbYpk9C2nxigKfBQHvK6ZihGjjphxyqWWALVYHbPnF7t/+oh3jf+vgRuHT545iq9eHlln7Gz54b2f9NedGOgNAkuZ8RRlvsMOVbAi7S6LrwfRoTGLrKF2/Iu5wok9Lvs294QgVJpY70XweoKRkFVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=knp0r22q; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-aa6965ad2a5so189520666b.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 04:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736337933; x=1736942733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ydCNg6jT36E12xsOeua+Sa7IGX974RGk3urRyUbAQcg=;
        b=knp0r22qSano6GySAuO8bJkxWKa3dAnvtvoqqYJfekwX9xf4GiE64RVOqYlKiLj5ap
         IebIzAOTYZ9V9zicnDOLQzR8UqiPORTl6EjpRsmGNHMxMvtBZ1FC/+Lc7tg4orJ9x649
         BUMic65ls+RTVlgnTeWXssQ8z8oO0uk+Hte1Lculm6ePV1MpD8LQbgdGCjZGLoxUSmLz
         xdJAAbhkTWzHwtURexV+1jvGO8lo7hHP1R573v8Ls781T81yko9LRmhXXNli67uynGg3
         3L0znN7F4Jwu1yrDRhh01kNRQEQ31817nfiILJDW32c6fIQWqS28O44jgNS94yy8HPQS
         H6cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736337933; x=1736942733;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ydCNg6jT36E12xsOeua+Sa7IGX974RGk3urRyUbAQcg=;
        b=ePBBQUIhWK2mtp56e68brusSUnIPaoDfMBLiBOU2iegiQPR+uiXR9vzhNqUX5P9++K
         wIywpo9ctfBPdjeXoTRfeJ+CGfoo/9fxRzVAlMrdCBVvlq2Ol+vDgF39YHwBdCvI6LHb
         u0Wifmwv1DQWIll1IZkcmIcTf1MYZTvaC+0BU0fU39JEBoi7WrNG6uTw/i0whG4NVizG
         hJ+CdxNDqvSiq5P++1Q1dZRBkvva3z8zJz+zPSQidSD0u/Rnc2gpY+g6Xu/pgmDZq1xL
         MlxZiU+JJOFD7yMfM6HvgeSROZqs+2rdc0C+mtacmg/HJlr5VEuFgW2oMrtfUO9EEUGn
         siCQ==
X-Forwarded-Encrypted: i=1; AJvYcCU91GWMPZR1DtWJLsjhUbuuT5apZjFjj73OmjDc8d499ZxrcyTVeJ0/J1STdt3upecnxTQQQHaga7Cb@vger.kernel.org
X-Gm-Message-State: AOJu0Yy07HQt2RGmNThJIamMTm8DBuQssvKxLsy6UYDKZxwgbqNJQif3
	KLNN9UnnjAVY8bk999+JSWhV7wRqp2+wAl1fh4q3VowxpFS+jtkfWZIAP7TSGSo=
X-Gm-Gg: ASbGnctO0nokgD5bafN7G1h5iLJ/WtL8LyDtuR1ox+Id97L8zdZYwXOszKF56kCfI5D
	tDcAEOjqYWkbmCXrE/PaAQPm9jnCFJyPAwflzcVjrS1dNrR7hXPlg8PC0VG+1zuB3drlm1VjPbO
	6mWorYxEgPOhTvGI320o6wL4P9RenUXZ+55aoFKADijM8Sf6VEytvK1JoPkPh1tTU6x+JB7CX0B
	ZjLCztAOyZxLv2gFY10FMmMLQ7NOd9S9ZQr/2dGh32FTM83KnoOjvYafpyovhWWeWWNN48=
X-Google-Smtp-Source: AGHT+IFK1TbD0Uf1FgK7ziNEnOG9YYy0/1HJ7Ai3OvVZgi26v6PEQj7rnDX7uvM6M1rlaGSscM2GKQ==
X-Received: by 2002:a17:907:c586:b0:a9e:80ed:5cc6 with SMTP id a640c23a62f3a-ab2abcb0cd1mr71382666b.13.1736337933040;
        Wed, 08 Jan 2025 04:05:33 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e830b10sm2479699866b.37.2025.01.08.04.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 04:05:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: Use recommended MBN firmware format in DTS example
Date: Wed,  8 Jan 2025 13:05:30 +0100
Message-ID: <20250108120530.156928-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All Qualcomm firmwares uploaded to linux-firmware are in MBN format,
instead of split MDT.  Firmware for boards here is not yet in
linux-firmware, but if it gets accepted it will be MBN, not MDT.

Change might affect users of DTS which rely on manually placed firmware
files, not coming from linux-firmware package.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts             |  4 ++--
 .../arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi |  2 +-
 .../boot/dts/qcom/sm8150-microsoft-surface-duo.dts   |  8 ++++----
 arch/arm64/boot/dts/qcom/sm8150-mtp.dts              |  8 ++++----
 arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts      | 12 ++++++------
 5 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
index 9e9c7f81096b..4dfd66076629 100644
--- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
@@ -383,12 +383,12 @@ &qupv3_id_1 {
 
 &remoteproc_adsp {
 	status = "okay";
-	firmware-name = "qcom/sa8155p/adsp.mdt";
+	firmware-name = "qcom/sa8155p/adsp.mbn";
 };
 
 &remoteproc_cdsp {
 	status = "okay";
-	firmware-name = "qcom/sa8155p/cdsp.mdt";
+	firmware-name = "qcom/sa8155p/cdsp.mbn";
 };
 
 &sdhc_2 {
diff --git a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
index a4b722e0fc1e..40522e237eac 100644
--- a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
@@ -157,7 +157,7 @@ extcon_usb: extcon-usb {
 };
 
 &adsp_pil {
-	firmware-name = "qcom/sdm630/Sony/nile/adsp.mdt";
+	firmware-name = "qcom/sdm630/Sony/nile/adsp.mbn";
 };
 
 &blsp_i2c1 {
diff --git a/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts b/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
index 9a3d0ac6c423..835ef929ff2d 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts
@@ -453,22 +453,22 @@ &qupv3_id_2 {
 
 &remoteproc_adsp {
 	status = "okay";
-	firmware-name = "qcom/sm8150/microsoft/adsp.mdt";
+	firmware-name = "qcom/sm8150/microsoft/adsp.mbn";
 };
 
 &remoteproc_cdsp {
 	status = "okay";
-	firmware-name = "qcom/sm8150/microsoft/cdsp.mdt";
+	firmware-name = "qcom/sm8150/microsoft/cdsp.mbn";
 };
 
 &remoteproc_mpss {
 	status = "okay";
-	firmware-name = "qcom/sm8150/microsoft/modem.mdt";
+	firmware-name = "qcom/sm8150/microsoft/modem.mbn";
 };
 
 &remoteproc_slpi {
 	status = "okay";
-	firmware-name = "qcom/sm8150/microsoft/slpi.mdt";
+	firmware-name = "qcom/sm8150/microsoft/slpi.mbn";
 };
 
 &pon_resin {
diff --git a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
index 2e1c7afe0aa7..12e8e1ada6d8 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
@@ -379,22 +379,22 @@ &qupv3_id_1 {
 
 &remoteproc_adsp {
 	status = "okay";
-	firmware-name = "qcom/sm8150/adsp.mdt";
+	firmware-name = "qcom/sm8150/adsp.mbn";
 };
 
 &remoteproc_cdsp {
 	status = "okay";
-	firmware-name = "qcom/sm8150/cdsp.mdt";
+	firmware-name = "qcom/sm8150/cdsp.mbn";
 };
 
 &remoteproc_mpss {
 	status = "okay";
-	firmware-name = "qcom/sm8150/modem.mdt";
+	firmware-name = "qcom/sm8150/modem.mbn";
 };
 
 &remoteproc_slpi {
 	status = "okay";
-	firmware-name = "qcom/sm8150/slpi.mdt";
+	firmware-name = "qcom/sm8150/slpi.mbn";
 };
 
 &tlmm {
diff --git a/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts b/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
index e8383faac576..7d29a57a2b54 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts
@@ -547,20 +547,20 @@ &qupv3_id_0 {
 };
 
 &remoteproc_adsp {
-	firmware-name = "qcom/sm8550/adsp.mdt",
-			"qcom/sm8550/adsp_dtb.mdt";
+	firmware-name = "qcom/sm8550/adsp.mbn",
+			"qcom/sm8550/adsp_dtb.mbn";
 	status = "okay";
 };
 
 &remoteproc_cdsp {
-	firmware-name = "qcom/sm8550/cdsp.mdt",
-			"qcom/sm8550/cdsp_dtb.mdt";
+	firmware-name = "qcom/sm8550/cdsp.mbn",
+			"qcom/sm8550/cdsp_dtb.mbn";
 	status = "okay";
 };
 
 &remoteproc_mpss {
-	firmware-name = "qcom/sm8550/modem.mdt",
-			"qcom/sm8550/modem_dtb.mdt";
+	firmware-name = "qcom/sm8550/modem.mbn",
+			"qcom/sm8550/modem_dtb.mbn";
 	status = "okay";
 };
 
-- 
2.43.0


