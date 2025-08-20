Return-Path: <devicetree+bounces-206801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E367B2D956
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:55:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D367E684D79
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 09:49:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58F732DEA71;
	Wed, 20 Aug 2025 09:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vmtVp9kz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B832DAFC1
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755683371; cv=none; b=lKVCG0pNaY984koOpaE/xgsRVeY+23zojj0ilG/2nlqA66yLtBn2/skHmpFHzEnV24tFQapQtiz4PrIKqLtzyOypeMG33JEXSkXKPSuTuNNPH/H6bOlZ7R/FRUfOCPWRLLQiejifj57arb2wYc5+x4bZ4KOM+BGiWGks8p8DMWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755683371; c=relaxed/simple;
	bh=L1WblGj94ZaDL048pCEw1KwCIcqYN2hMDRmKDSs9uaA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JSgUmqoIhq/1ENNaJFDE8lmscwtGHI9Xv3Qrg8/Qq/Zqpv/b1Kt9lV40qxjE3BukfClsdQNh8mkFdb0zQedTiDvUpG7rCnQh5KcE+AVHXofNS1CsYpS1z3vWfRQ3c2ZmAZO2RPTEt+i5MoernbMeBhIY1vqJjS3KMn+w0WlqJCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vmtVp9kz; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3b9ba300cb9so507853f8f.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 02:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755683367; x=1756288167; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RTn5jI7F0FHyPpe98WRNj88qeA6Ryn7e0IBMDqMkQDs=;
        b=vmtVp9kz9XDtGzVMq7CVnCvoAWpV+XruOALc9KWvkrfcQWSuelpb90ib578kBXThRM
         R9+ooNf9tTRErusN07nRJfANUyj0BA3fEaqKTKV3cUToaWRPnRMTrTHOagLKxUFjrZCg
         vM+UPWThTvvzxFYNyNst3T+LFnOP/CRZvuIl0cIkVeGMDeNr3+KZKK0rX4hcSvUrXZxT
         K3/+Eah3M+rnyeneEobVV7/nqLJwGzH68q5E0XLrqFtdTYBHglkHQJaYfe2wtaxWslFo
         rshdBU4PWuU2bT2JW4w3F8Sj0jAUffETF4jQ4Q81jKX5jUMIn0sc8cC6837SWnKvJU8g
         DeDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755683367; x=1756288167;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RTn5jI7F0FHyPpe98WRNj88qeA6Ryn7e0IBMDqMkQDs=;
        b=XMCprMryFNNatujoxmiDTErXbXrNb6u9W3P2LxUvFYOtLpjOEkzhh0ZLUXdrNmGwXI
         A5YCo1l/brDVfI5Rn5vmKE9bgM19bwqtXe2Bf9FI+EuYsT+I/QHEJyhcHXlRRVgPDfNu
         /3cJ1ysH5J6Jm1kxXiXZgjmUq/h/w9lF8VQqlKc6ItwtPIjooUt+GlxKq0S33EeqW611
         iAxO+miPgt5GNn7R5XuTxwdRszM7SBrR2vd6jY0JeaPdJG9pvoPXyswCrW30wM7LuvEX
         1JSRoMAe6VrMjQq2r35iQsvv/yadRMguGiMGx1dqbrmaYmdht8OSR2jOuQHxmo0rOz29
         ysaA==
X-Forwarded-Encrypted: i=1; AJvYcCW+wUNLf2kZRsH9fmvI1AnYpIGLnQrpwoiDyzl7sUu7TNCCwfwIvEq/aOOUCCvJlgenRmbAvJD91v8S@vger.kernel.org
X-Gm-Message-State: AOJu0YxfGVaUpXxHFSFDKP7HjecJiswABojRC2RR0li4BRfob2URw7ZJ
	uVukjORwsuFEy1A5AYgWkUV3Chm1/qA/IXQuAN60zGvJwRd/DFwI8HpFJqIDLkf2u9g=
X-Gm-Gg: ASbGnctOoj5a8hJJOWjANsDUu7tvF8REh3YXg/sUa0dCHsc/qk0IhL/O4K2Q3v7Uv/8
	LT0fyOSZnPD7eDCrQE565M+qZDh4B1wu/dflVVn5JgENjnprWNp+gPpLmL4fdN4bKLkEVe5A6+X
	teVu4PL9MiQc9V4teHpa0/Dc+K3M9hF+KuLIqntEJwDrVJPdZIP8yw314IwmDVxl/rNCv8hOtCf
	JXRI5O3SNnIMOnuVaYd+e+H4LJbAc9twWiDUiMzzgxhqSzFewbZnqE/9HM/Kqk6L4d2+ULqTVh7
	EDaVBaXb5L3nO/YAW5+C+QyD6yAP9Nq1Q+v4uN72eZvD5vsiHwnaLtD/f1HAgPtthoMxWF6JNfF
	dpTLozshV81o1fAbFbO915cXHg2/IT2YNTTtBPfHFoX0=
X-Google-Smtp-Source: AGHT+IFg5Ji4BYP9JKWjNupPFl93tYsMVzai0VfaG4aFr1zwAmtsu/Ny4WGlrKBByhP8RI6boi9rnQ==
X-Received: by 2002:a5d:5d0d:0:b0:3c2:9d64:125f with SMTP id ffacd0b85a97d-3c31553b888mr2106541f8f.28.1755683367034;
        Wed, 20 Aug 2025 02:49:27 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c0754f3b7esm6721228f8f.30.2025.08.20.02.49.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:49:26 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 20 Aug 2025 11:49:23 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: sm8550: add PPI interrupt partitions
 for the ARM PMUs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-topic-sm8550-upstream-pmu-ppi-4-cells-v1-2-a8915672e996@linaro.org>
References: <20250820-topic-sm8550-upstream-pmu-ppi-4-cells-v1-0-a8915672e996@linaro.org>
In-Reply-To: <20250820-topic-sm8550-upstream-pmu-ppi-4-cells-v1-0-a8915672e996@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2039;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=L1WblGj94ZaDL048pCEw1KwCIcqYN2hMDRmKDSs9uaA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopZokNOHPgcU0D7Yz5C5q4aRb7SJAE+S5eG8rUQcn
 yFsEMOGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKWaJAAKCRB33NvayMhJ0Xn6D/
 91kZOwE5btJsTTYQ4qDmCrLyi1kNVTqNJplHa4kwdQ+0mme1jGwNhJ3tmlWOPETbitIjg7sfTBT0Mk
 FMnSVC6mAqrvQW7FYSFgCFOz0YOy+9yN12AvXSDQtlcMlVrRJX89k8NxsZyn7Wot2FWZKWUOwEq+eJ
 uy5SqMYua6gKu/52nahWBPteOZjUdElHblLlEkuvdmpE6lfGqdbpHf/ES3Ru+nODsw+KRPWTL3Dfp1
 3WMj7t4cxejrYPI+d3Ht8Oku9+WEYPMwnv6hO3Z+sVMn4GmuUjxW7ixujELz3wFN6P1j/JDQVuggqe
 vTaDslrVHlJ/igHWs5kBx5k3W2aAz7RenYKgrGfXm9581dHbz5lBrDkBja2DfPlIroxrGv1iVT015L
 Y174UF3gVub7K7dLWLDNHL1p6xO5viw7U5UYmIv3Zm3uYwaA0+IUYd2Mu/rE4YY7rCxT06LVaPskSo
 bC93YpMlw1vHh/jOFVO6WZQPuPLjJT49nW0/2iUeetPeRkfg1ILVzIyTwnPzxDBhAiiq6dUS92g4qp
 wNq83YoI5q9poFePIQpgGMv+I/VNtmQ3U5BkH9YoWF/QfMkxYDG0VOe/QNG7J5KX6Rvajujm+lmZz9
 1+zfsP/ZT9+SOzT942R7jhy6c1US7qWa3m+9dmIfPkth6nFFSZcK175wyhNw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PMUs shares the same per-cpu (PPI) interrupt, so declare the proper
interrupt partition maps and use the 4th interrupt cell to pass the
partition phandle for each ARM PMU node.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 2ebe02e2ca8c03ac9b987af720c7ebe1cd63afec..1b7fbbdba2df986e1efca5dbfa36c01eb1be0836 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -399,22 +399,22 @@ memory@a0000000 {
 
 	pmu-a510 {
 		compatible = "arm,cortex-a510-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW 0>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &ppi_cluster0>;
 	};
 
 	pmu-a710 {
 		compatible = "arm,cortex-a710-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW 0>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &ppi_cluster1>;
 	};
 
 	pmu-a715 {
 		compatible = "arm,cortex-a715-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW 0>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &ppi_cluster2>;
 	};
 
 	pmu-x3 {
 		compatible = "arm,cortex-x3-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW 0>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW &ppi_cluster3>;
 	};
 
 	psci {
@@ -5066,6 +5066,24 @@ intc: interrupt-controller@17100000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 
+			ppi-partitions {
+				ppi_cluster0: interrupt-partition-0 {
+					affinity = <&cpu0 &cpu1 &cpu2>;
+				};
+
+				ppi_cluster1: interrupt-partition-1 {
+					affinity = <&cpu3 &cpu4>;
+				};
+
+				ppi_cluster2: interrupt-partition-2 {
+					affinity = <&cpu5 &cpu6>;
+				};
+
+				ppi_cluster3: interrupt-partition-3 {
+					affinity = <&cpu7>;
+				};
+			};
+
 			gic_its: msi-controller@17140000 {
 				compatible = "arm,gic-v3-its";
 				reg = <0 0x17140000 0 0x20000>;

-- 
2.34.1


