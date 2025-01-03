Return-Path: <devicetree+bounces-135356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CD041A00AA9
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 15:38:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 410FF7A1B44
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 14:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F1A1FA8DF;
	Fri,  3 Jan 2025 14:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ymf5idym"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CB21FA158
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735915116; cv=none; b=f7jzKYYYBmc7asaN7Igcfyxn3dFBAWoEbbGJug29g0Y8hQhYHDLmHAedNI3GLb/Dw76WJ0cWNXMfxCC0EBIDr78gbf16iVl/19t6+yXKL+0jStbhLY9BzLJYXeH0fJsVxZHnaXctUBU4hg3vOVnJ94erVG5M07ltNDumiKv+nng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735915116; c=relaxed/simple;
	bh=6MYAyJNiKjIJRjZP+kRmtZAtfqVcLkXfnhiloyCSICI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JwWz+4g2/FTHZMu3mZoRMFkTodbDcBSlNvHZt5AChcwaHyffb/QL6hHfNc37m158JprdF3H6jftg9FXqzlF6mA0iqUFVdF6ERjNtCIU1PcRynwFmFyU0RJT3YXr3ihVbEuoUqiWjkg+kSTZX2r5l2GKBn/YSb3b0T6oFVWf+AJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ymf5idym; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-38634c35129so9364287f8f.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 06:38:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735915113; x=1736519913; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KvFk6EK6W/VRxWdLvZU9XD5Dh65CwZ2VlJ4c/jgx6xY=;
        b=Ymf5idymuzicDiW02UuBaZWIAbDvibb78DPoW3ylp439HCoftLbQTRSToEYBbmIhDm
         6DX9fcTpM3jo71U6EEcxYSe4RSFaTIOtrXgJ+XRUMpOFC2Kb30yj9+myHJ+WH5OxSv8Q
         qiks/2pfGFsaRzYK2MaB0Ji4b5fM1B2sjDJDkvl/TcOOmiLky8uZGcI0M2jspEr+jKn/
         js4+qlCk4IoBIY3kZNcuagay3KH0UOwGYsF50n7Cs+006GQBtT4ljkJpeo9HPopDGMr+
         RohbxMJ7LGzoQVOrEsBNI7+OBCzwq/x+8eA9Vvgx+Hv4UnkILqCclRDXm8yWbAIIWkRL
         CZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735915113; x=1736519913;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KvFk6EK6W/VRxWdLvZU9XD5Dh65CwZ2VlJ4c/jgx6xY=;
        b=a2SArU/7Wp+jrICHSLGn0mug5csuW3G1WyhaLIgoSpLF6n2789U+0fXeuD4KiXAqzl
         UHvuGrmemOQBSv+FMCgxTxe2hyPO7oLevdyfLAWfy6bEnAh4QPU2UNjc5a/OIdNwdR7v
         s7yhKiA+Y2InPSVQuwjiSzt1YfVvBPUEMdAso6SMkaqxVHHP2yCZc9pkDE2jglAES7sB
         3Rfq7sH2OnuXzDuNIfQ9/e97riqfmGCAqvvEspptkhikeOhwNpBPMIcZr0g+2VaaHErV
         0+kj/dojLeG0QZEEkvcmorghp41FMVPXI9ez5SdTlsJxRbr7y6L505vjUZTIQotFpIyO
         8RgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJ6XcGsExnoJ212SlrDke8LqS1oGKo7l3Nm72+2sDYCFgFFb28hXkRca3dAy+XLdWzYCIDX8YJUW8W@vger.kernel.org
X-Gm-Message-State: AOJu0YwUi/WRDFNz2jWk5mFqKm28WftA6U6DpwHztR65DMuQbwzR4H1U
	Vu0xEK/4gmJljxcND+b63iCHmPS4ipVIdJyU26LcQu91u68N8zRHCHCoDlRWPi6Ug9THFtFQWfB
	i
X-Gm-Gg: ASbGnctz7pUbKD064Cd0XeKrjOzKjOWseeq49yDsJjSzq7eUJTk4tZPBCrIYYERcAov
	CAw46qsEqo9fMCVpdNHtgIgrAAKrVY2Fcet/I3h5eQCaJyhQ0S5EdDFNzfcOCub3L/sWlqdS1Qs
	PaWR8rutcxofq3a/jmxKrIrh4pkhPTRPBd3lqzYnxHTlceif1KIycwcMcK2vZF+UnhKU2Qt8V2E
	zm/YBC6LHZRdFAAzthkMG5xJEb5UqCOFw1lAwM4tmHsi/vtqKSO/KaQ1KmDVWm8VtWupFROSEJj
	mA==
X-Google-Smtp-Source: AGHT+IEXFOZ+0uZp/4l43sA+IegSsxHw2PJ6o4TvVY4/FxpHANnNWTFPHdMmzUntC1G9T6ixXRt4qw==
X-Received: by 2002:a05:6000:186b:b0:386:3835:9fec with SMTP id ffacd0b85a97d-38a223f76aemr49024142f8f.44.1735915113174;
        Fri, 03 Jan 2025 06:38:33 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c846ca4sm41558404f8f.43.2025.01.03.06.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 06:38:32 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 03 Jan 2025 15:38:27 +0100
Subject: [PATCH 2/2] arm64: dts: qcom: sm8650: setup gpu thermal with
 higher temperatures
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-topic-sm8650-thermal-cpu-idle-v1-2-faa1f011ecd9@linaro.org>
References: <20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org>
In-Reply-To: <20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5322;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=6MYAyJNiKjIJRjZP+kRmtZAtfqVcLkXfnhiloyCSICI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnd/ZmZONkGPkWRBeHrOF+YcppWKlIJtf6T1DNYzq9
 Uu+bV+KJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ3f2ZgAKCRB33NvayMhJ0fCGD/
 0UKMFH58M5axg9yTfUD9YC54sXBCnEAy/fHTxLa2H6OAPNZ924D66SJU9kK15RLLQ9QHM/y9YHHY9E
 IP6PJoahgFyKEgl13gBvMyOylkKprMYsRI8AAaYZobZdazRfp+rvyOV78FgRnxXcj59MmL45qzqxNE
 U/Xqu3AccEGT2quRNFXDLvm4B8W4qElSXZuD4ynvYFeCQw94g1nliDaUq6zOjssMct2mHspj/2cM5P
 nG1YgBuS+USVvAhgjtG45rCQDreRyj0S8L9NiXfnJ7L38l6tU66dS5Wz+bDTGevc7p3ngeLjtdI5ap
 U1e0OyEwzakT747w6m9BdlyISFibDWZIQm1TmPFRK8UUTV8Ju66L0D/h8YeizFRS8Hdt/jLHM8dN4a
 b5lXcGIv2jWAH7nN3Uznx3Qisnnx5cULozFetICL094eGOadxtdXinWXKoNvFaJ7H1qEfvAU6j8VMO
 XoP5QeOCeBMzoXxbqnaU1KJpFiGZ4Ne0Vh7rYtkAdrs7148/X7n3plrKO/NrRMx3L00rvOiyW+TCRI
 YAle8CDDzSdowg+psfbbzj0+PhB9wR0bifjZq4RLGd9srzvXSFx1RLek6LjG9Od2WxnZ/+6Gsyypha
 b3StsmKFdYlO0EsZRgKS5HHNFnLlFhgEtSVsDcirj6mkB1HbKrweylDx1QVw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

On the SM8650, the dynamic clock and voltage scaling (DCVS) for the GPU
is done in an hardware controlled loop by the GPU Management Unit (GMU).

Since the GMU does a better job at maintaining the GPUs temperature in an
acceptable range by taking in account more parameters like the die
characteristics or other internal sensors, it makes no sense to try
and reproduce a similar set of constraints with the Linux devfreq thermal
core.

Instead, set higher temperatures in the GPU trip points corresponding to
the temperatures provided by Qualcomm in the dowstream source, which will
trigger the devfreq thermal core if the GMU cannot handle the temperature
surge, and try our best to avoid reaching the critical temperature trip
point which should trigger an inevitable thermal shutdown.

Fixes: 497624ed5506 ("arm64: dts: qcom: sm8650: Throttle the GPU when overheating")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 48 ++++++++++++++++++------------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 448374a32e07151e35727d92fab77356769aea8a..ddcb57886eb5eac2a70d28e6ad68fc6820b5dcf1 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -6507,19 +6507,19 @@ map0 {
 
 			trips {
 				gpu0_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6540,19 +6540,19 @@ map0 {
 
 			trips {
 				gpu1_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6573,19 +6573,19 @@ map0 {
 
 			trips {
 				gpu2_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6606,19 +6606,19 @@ map0 {
 
 			trips {
 				gpu3_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6639,19 +6639,19 @@ map0 {
 
 			trips {
 				gpu4_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6672,19 +6672,19 @@ map0 {
 
 			trips {
 				gpu5_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6705,19 +6705,19 @@ map0 {
 
 			trips {
 				gpu6_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
@@ -6738,19 +6738,19 @@ map0 {
 
 			trips {
 				gpu7_alert0: trip-point0 {
-					temperature = <85000>;
+					temperature = <95000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
 
 				trip-point1 {
-					temperature = <90000>;
+					temperature = <115000>;
 					hysteresis = <1000>;
 					type = "hot";
 				};
 
 				trip-point2 {
-					temperature = <110000>;
+					temperature = <125000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};

-- 
2.34.1


