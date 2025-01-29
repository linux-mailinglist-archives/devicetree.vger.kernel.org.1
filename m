Return-Path: <devicetree+bounces-141618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4E5A21A30
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 10:45:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 767927A3504
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 09:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7357D1AE876;
	Wed, 29 Jan 2025 09:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G55Jq52z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6035C1ACEC8
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738143835; cv=none; b=W/SmQJYgH2aetyk/Fy2raZaDj9INOSRFuGjvmseGyBFo+hssoCmKFkyUe5K5P786a+Z6cBCC9KxTQiJdBNwQaHewYGOcRjJaqd0984l8fmBycFZ+1sQqWmpQ/xBUxHDeDmCepmXR4hVfEZWTRnB1ZSicI414hRlMcZHbYhTapFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738143835; c=relaxed/simple;
	bh=ksZqVVWZ+PXeyE/WmXqMiQwQwvesvKOWalvs07xCLEc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=baDVKCAfyY8G3NkaThu7Lj7TWz6ft7ut0+Mz4oFlqGjtuYsdCBw477rCAZCx1DeJY2mMQSy67BQoARWdknN5dyFD453J6AA7HsAmPLeIGLZo3oWvTYb+4oYgiI4POtyM5Eb4JNBzaNRSZ1+CslnEZ+ZkRdLOcBHVQIewVLuCd+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G55Jq52z; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385e27c75f4so5749912f8f.2
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 01:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738143831; x=1738748631; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6Xvw2fuwtxpucq2thDNCyLyQjhPYOuUtnvNRZsFhY3g=;
        b=G55Jq52z68Z4T/VXI3PfTyiUd2HGLYA9Xdoz0i63CnSN7PsoupfghjdXS58Db4oYWU
         g3YG2nzBeKlUwV7fL2nbyJdkC3gdjYs/F7O5Th8LYH1LzYrumr07GsWxr80e40roSjIF
         AR2JvXDwgFiCQoCQuB/AMuWdCtXT44IWMg7abnBv6v7CcAO5NxZnxA824kLXTW33tfxM
         MGAXy7OPp7S9fv9007mEAuC+IUPh/YdPOzCJNrsb2CJj1CgBlV5W4yPkOKEFUIyNAqiw
         4A6YGJWeGeLJb2MZR2bzGoy9DeloVs2IxHxWf+nTcATH9RRFPqbUnUVArGJoxHxarRgC
         5kww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738143831; x=1738748631;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Xvw2fuwtxpucq2thDNCyLyQjhPYOuUtnvNRZsFhY3g=;
        b=I8/lenbg/UHUgCm3t2HJIqF+xDcxwH2WLShGQSxwhUkmZbtXlgVjEpWtfiR1a5u6eP
         njPRCWpxvaf5QrMr77HBaDDulG4MCSe5giv0gCjRyahVD4uXR/ps+4tYzwK1F/z5+zjD
         R9esgAm0Kl3rrdT6fnWEx0gO1Heb75W9XfQ9uiVYCwYkDcBNjDH864oQtO5H99t0bYdZ
         zEEGiuM9bMTg0gW6TvtntvF/0vnJHFTt01lmME8weH/fNGcvEcjqbteIDzC8lwo+bSWZ
         dukVnJp8zRFvMvqu1ZVAkaZFXVMonr4kutY2q7+mhTSBb+W0A1fhHysZjmp0iKQFzHAQ
         tq6g==
X-Forwarded-Encrypted: i=1; AJvYcCVmw4Yowja6+VJdyzukpxxsySDRmH9I739Y56yKewLXyECkYturrVQEzTaE16xlNaXYqYfF89bbqfno@vger.kernel.org
X-Gm-Message-State: AOJu0YxlLO/7Q2NnkHrtHdVkVZMtPU2lmN3KbBG4HRx+4u/JPbfZ3Uqk
	A3aRz+0NPOljG7eWUkaDqn3T5T/7Rt7zE5ns8LKN5lWtI0Zde5WO9+jTKCXJbEo=
X-Gm-Gg: ASbGnctDuwJ36n/J1AFPZy6iuhAHCBvQKILYaLc0R5pf785FJOHIdKr896ZglfK7cRa
	xc6caS5FaU42YVVzh4Vfs42VeBK9cPfbolKSb2icyPbcz2CkY3f6kDvYUpx25p4DK7vMuGmlypt
	YOzhfBvvv9qDThq2LjHR4uluOaIm+sctN6xmpyI8VB7ubw+AVO5fY0Cyah9OhASSc2dhyUopwyu
	ZcfY0jr/44kScqzFz9llrK3TLD/4XLH3ZbhMkUGiQeCDFfO3T8h6b+U3ikoXlWeAYeDHsrBy4n7
	XJ9QEY0ccfi8fqCCAxbOw4x9VzdM5J51ZBUa
X-Google-Smtp-Source: AGHT+IFfAuZaKL4N6rhTvqCDQvxYZslbCF6HL09uYy0B4ru/anjijmlhPdX6FOB+/tFddIo/nxY75Q==
X-Received: by 2002:a05:6000:1ac9:b0:38b:d8e0:a862 with SMTP id ffacd0b85a97d-38c52096d91mr1704667f8f.43.1738143831507;
        Wed, 29 Jan 2025 01:43:51 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc81589sm16035205e9.33.2025.01.29.01.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 01:43:51 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 29 Jan 2025 10:43:46 +0100
Subject: [PATCH v3 2/2] arm64: dts: qcom: sm8650: setup gpu thermal with
 higher temperatures
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250129-topic-sm8650-thermal-cpu-idle-v3-2-62ab1a64098d@linaro.org>
References: <20250129-topic-sm8650-thermal-cpu-idle-v3-0-62ab1a64098d@linaro.org>
In-Reply-To: <20250129-topic-sm8650-thermal-cpu-idle-v3-0-62ab1a64098d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5019;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ksZqVVWZ+PXeyE/WmXqMiQwQwvesvKOWalvs07xCLEc=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnmfhV+wZw5NRkXJg1R+ekK4Gtloxz6iy3TVdvL8Ik
 R8IEgdWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ5n4VQAKCRB33NvayMhJ0RUVD/
 9iK4QUsqg4UA+wkGqi1FNt6ChfbVafBaahle2a1GXUS0h00c/I0ZwRi71dBFYWOwOCh/vT9FnZxOTe
 RKrlBAfccHouiabtv8iIDLhC4dxAwEN1LBD+xe9QPQGJ+WnzB6nUiPRDbpr+voNyqECtOEuRJfFRPM
 7tgQccmL0rnYw0v4T1f0qDlCbNmmGUmxLc9plrBcr/A9tspEh9SQTQWNqs192/YHVPDU6/6Z4ivyHA
 BlAsc3UKjqhxV64hFQkGX6im8ct6CwC2/xSUdM6GdNAkGGquwmbvPBYRmpKzxWaupRvhSe3YUtiRZS
 l27cxxlXDb9oXul2YwVwiIaC9bLEOqbMjtxADLAgsroAv/zXwzaSHmEk4sYGRoZM+2cBE3vE3Xw+UJ
 l/LO9Uusl5bf11fj5mVm2WE0m6QJUXHxs4jCV6BKoGp13G98qnkm7t6rjv9hioDm1UCje+9h9MwtUF
 CXFaiIRfExVf1KZ+WVfJucbzRUMM+nM1JmxbpifGYrg7jpfaw7A95jywJPkkHskgeTpGbVkXsVVa/s
 pfLWgTGOJP6M/+hYZA5IZPNyxOTuP69P3de9NYCrQP1cpK8MUrp0+WiD4C3GlA/HINVEGzeDJZk4Qv
 bLYxjhQrhL0TD6oBGUt1zZm7P4xBWHAJkwLO0EyuktIWuxC9XkUmhpGx1ocg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

On the SM8650, the dynamic clock and voltage scaling (DCVS) for the GPU
is done from the HLOS, but the GPU can achieve a much higher temperature
before failing according the the reference downstream implementation.

Set higher temperatures in the GPU trip points corresponding to
the temperatures provided by Qualcomm in the dowstream source, much
closer to the junction temperature and with a higher critical
temperature trip in the case the HLOS DCVS cannot handle the
temperature surge.

Fixes: 497624ed5506 ("arm64: dts: qcom: sm8650: Throttle the GPU when overheating")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 48 ++++++++++++++++++------------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 95509ce2713d4fcc3dbe0c5cd5827312d5681af4..e9fcf05cb084b7979ecf0f4712fed332e9f4b07a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -6173,19 +6173,19 @@ map0 {
 
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
@@ -6206,19 +6206,19 @@ map0 {
 
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
@@ -6239,19 +6239,19 @@ map0 {
 
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
@@ -6272,19 +6272,19 @@ map0 {
 
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
@@ -6305,19 +6305,19 @@ map0 {
 
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
@@ -6338,19 +6338,19 @@ map0 {
 
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
@@ -6371,19 +6371,19 @@ map0 {
 
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
@@ -6404,19 +6404,19 @@ map0 {
 
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


