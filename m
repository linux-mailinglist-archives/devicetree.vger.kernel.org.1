Return-Path: <devicetree+bounces-32753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B80830781
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 15:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03E811F258D4
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 14:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED4682032A;
	Wed, 17 Jan 2024 14:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HHUbgYuR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAC120320
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 14:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705500270; cv=none; b=fKWVMLy7yrTMQUtbL0MXkjafBnn7zJEURSjaO51S8Cq7eD65z4nNqtXS21iPpzk070v8PMztgwarWSh1JWdecFC/8nzjStNUwwR2WXc65vkSNSzF7dvtAzIa1jYxqAldsPxoNREaLvA8WNq71Ub6DG13MOtLxcIUD8Z8qLzKLEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705500270; c=relaxed/simple;
	bh=PIb4wJZB4VPlU9DjKkOwyEjMvVPp21zzloRzfQ9S7E8=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:From:
	 Date:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key; b=W+eAC1StSc7T4AVLGHe3x7f0aCKMwWdBnTTYml25HtmrCO1Ojk3YmIW1BFBj7EGjZ1VJksyWtVI69oZSFf4dORaKpvHq9NtJJp7KrcWvnmz5e92P0IwDUDR2iDGltK//TwBpejJExp92UIwzC0ez/rq2/XgugztnPqGhNd5KUAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HHUbgYuR; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50eaa8b447bso12558882e87.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 06:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500267; x=1706105067; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UVMtrjYxxS8jU9P9HQIcKp62CJkYBOMDQz6j5+KpHA4=;
        b=HHUbgYuR/l4dQ704nWAHTkuMWuGO+nvjTD2qO65x/M0SgVhP2So2Jbw2oLELNIt290
         CVFc0nrAVcOTxfR4J0u7wLLynT2vSiKG26kk7jwNjF3xkNq5I6MBr1NnvXGIIa+3zn/c
         1ugYdoLJqjkkU3GCKjJwm30j5atHV8iYJKRMDmx7qbLjuIv4PZdyYr7C60aVizgNN79I
         fe2Jqpt4r14TubKYYdEr5PbiVh9pCNimJKpfhd5cdy6sp7zWxhlYORrSn9PueD/xiO2C
         aljJZ2mAMezNYhq+QZRLg+Y0wHW9gZMl5a8AWGnJQTQMGAKXq1j3vDPzV8p4QFkEUM2A
         3t/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500267; x=1706105067;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVMtrjYxxS8jU9P9HQIcKp62CJkYBOMDQz6j5+KpHA4=;
        b=XHvB3Vy0nVm1BqRR5dExvvfad/YV+6uCg+dbvn+p7jSLKL7aNl0m6nDAk0wA7wCrFk
         SuG+b3mADC23A0VWUKK/1fJhZDI0dF2gQB9aP2kuF31c6Gzgbw0KM358aI6qYKlhDAHN
         +2TTAhCKoUtzcbG2+o++Wuzk3ClSN+DaoMTByWku1oT7481T/Qxht1BJfChSJVn9lSJ+
         HqfAW87Y7qSGb43kCpM+PnVdLPsEJ/O53R8vJSyB5UCn7KtNJAsHwNAINibCLqz1puFx
         q1924MFdzIjVBNt4Ap2DeUA6Y2bbsIkWZVQpvd0VbqAI8nGJypeVqlbkNmCJL+LvaSuo
         aYow==
X-Gm-Message-State: AOJu0YyeUdA+8NZWXA3aQzLn3lBiT/G3f413InIxnCvTClF0XP5WDW8C
	3YKLTRz3XDJu4I6jQPWL41oWBSne6YeDHQ==
X-Google-Smtp-Source: AGHT+IGnKfW/zKJEKLJ57VfOhgD4hwJXRAAE7C1938RtE1q8aYT02DJ+oHYYF8UDbye1cQopCmc5qg==
X-Received: by 2002:a19:6455:0:b0:50e:ac2a:6b5b with SMTP id b21-20020a196455000000b0050eac2a6b5bmr2074559lfj.95.1705500267343;
        Wed, 17 Jan 2024 06:04:27 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:26 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 16:04:25 +0200
Subject: [PATCH v2 4/6] arm64: dts: qcom: msm8998: declare VLS CLAMP
 register for USB3 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240117-usbc-phy-vls-clamp-v2-4-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1222;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=PIb4wJZB4VPlU9DjKkOwyEjMvVPp21zzloRzfQ9S7E8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlp95nHnrAdiE2GmvCls+EigE0xuWR5GY7+JU01
 Af/HfcBhoeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZafeZwAKCRCLPIo+Aiko
 1WJ9B/9cRMVbhIbRZHH2bVMJlbRMpNAkNqBgxawM6doivzRBHH5vgI66vUToizJLw901etSNeuO
 zrwWdqqvLNU4auJhXTCl2lwLdqFfKpv2e4nJEzp55cJ6Djcjf5U5/JxD9gVf60FrdDso92OI2Fl
 WdA+lwvrYrC12gZwYGsHAmYyZs8Ce5YABZ8fAz4P+NnAvApYc/Lpp3cWBKrfAMapHFQlyoeaU1H
 viVvv73LppXB+nKK+glygLd/uUiZCKQ5ooaTkXUXdGEBxP15Y53qH5aoy2GCw9WLGpOX6R7n2ox
 2xpyf2IZBF5pA2dN9jUqmFK8VlJTAGRR63eUuUl2mfiH+I1A
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The USB3 PHY on the MSM8998 platform doesn't have built-in
PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
via the register in the TCSR space. Declare corresponding register.

Fixes: 026dad8f5873 ("arm64: dts: qcom: msm8998: Add USB-related nodes")
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 2793cc22d381..317a91d669f8 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1072,6 +1072,11 @@ tcsr_regs_1: syscon@1f60000 {
 			reg = <0x01f60000 0x20000>;
 		};
 
+		tcsr_regs_2: syscon@1fc0000 {
+			compatible = "qcom,msm8998-tcsr", "syscon";
+			reg = <0x01fc0000 0x26000>;
+		};
+
 		tlmm: pinctrl@3400000 {
 			compatible = "qcom,msm8998-pinctrl";
 			reg = <0x03400000 0xc00000>;
@@ -2174,6 +2179,8 @@ usb3phy: phy@c010000 {
 			reset-names = "phy",
 				      "phy_phy";
 
+			qcom,tcsr-reg = <&tcsr_regs_2 0xb244>;
+
 			status = "disabled";
 		};
 

-- 
2.39.2


