Return-Path: <devicetree+bounces-70099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 033B88D263B
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 22:45:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFAB61F2A2EA
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 20:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B96A71802A7;
	Tue, 28 May 2024 20:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MOV5GQeQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDAD717DE3B
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 20:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716929025; cv=none; b=XIKM6xBqjrVF8NquJ2Dn+GkUxoB6X195qWysZPQ1vbs7+TZlpdWql5ESEET6yq0TC+xJYetdbCmMGFt/8k9O4+8Mbq4iGqtKrJzqWL0RIBE5wLnwfzgYGzVSZfyqUHFRvx0W+Ds6wGprSOBrKTnIzj/WxVNTftIFmbSRFT2OCYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716929025; c=relaxed/simple;
	bh=XSG2io/KT2M4j/vkBu34/bvT+NFOKJLYvm/1exVCbms=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W2ITHxLtYKH9mjZIUlnPR9MZ4fCL3COsBDU+bkkygQbBa7/bETSLMrP3X/VfytvNDz7VT+4qsT+sVht1J2IC8iGTLANknvXKRKzT88k8j9Jn72c3RZ9rneFPVVtLWxo/HMUhHylYqCigr1w9sKuxng2an2m382tYZLAHz4My19o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MOV5GQeQ; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e95abc7259so14578221fa.3
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716929022; x=1717533822; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kvfgkm5LLEnmSpnWtVy++FJezRV6uw2fSY4Upd5a0NE=;
        b=MOV5GQeQMHMD57Qtn835QEGoFSrKxfjllWc84FnACvhKC5wfIFCXR2cm1sELvBts+Z
         dKSZ6L8L1KZNDebDAp6AOmCqSFxfu4nkAlCPfOtwRX64c5ri+4j69MBUL9nbGuruKTPf
         vVmOZw7/J+Cgfu6DdQmp/rQTtfVcSvxla51iRYX1tWgLFsfeHumLu992XvLYwfZT0zZH
         7d+KCwbAasTbeDwN9kAYjg3oM0QXgbHcTKj6nFsbEhNlOjCKczcoYiFzhu6mgJnLzVkF
         viJR1LlTSB96jQ/7pdp+DjL00baAtJsmhXCKB20yT/ZXgXGvVJ3fzERWBSn4bCoNSaAj
         g09Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716929022; x=1717533822;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kvfgkm5LLEnmSpnWtVy++FJezRV6uw2fSY4Upd5a0NE=;
        b=wD5p/6NXF28INDf3EXAxba5MMjAgISWpkeRY7cx/FmSKN9mx+iiWhVxYR6TDKjgVam
         PXAlxBWyKnDaDHqjdwALRFIReYZ6y9MSXnRsmHUE2ROmXOrDwi+7Pqx7nngi+LpSx5Tf
         atz7dqE44nk0COwwFvR5PjhrLACuAj7zNyJUOgBeqgBiQJv7SwlybLPGWWUByqtM3R4p
         S6x4PCNe+wDaumVQl7BX9iPFU4GJ4UFnP3mc5yLPhaBmf1i2+taxIW/520///Ba1k1x2
         RFJ2BhaQ96giIs7r0RT0VDe/KvvS5QVNlWCdnbQCTSnZHM0zJdQi4um/aAiQVPsUrXf3
         AQOQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8ASqsm58/vGcA7Y/+OX7mUC3V+XrljoBC/ArSX9n/ZK6VVJ9dFH03r1aHASU6lI9ry4RYgblZx9xjp92UKgD8GMMYs2wb9QRS7w==
X-Gm-Message-State: AOJu0YwoEJixGbSt5DHh+MQE0ydxIzh8PB1/TxM1DVe+3orIPuSUPVEE
	PhHM003AHpirIUUUc2pVKdGv8UTaAWThCIuoZwQ+bz663NQR9w7r+1qQBm1cQ5M=
X-Google-Smtp-Source: AGHT+IETmTHBz8HtPYt/cOihJwSi8rcYOYxe1knVTXCnN1qASM/xTMpXkm7XVIZOYzunAg/bFmn8WQ==
X-Received: by 2002:a19:6912:0:b0:51d:998e:e0c1 with SMTP id 2adb3069b0e04-5296410ad52mr8992609e87.13.1716929022202;
        Tue, 28 May 2024 13:43:42 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066b885sm1095493e87.127.2024.05.28.13.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 13:43:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 28 May 2024 23:43:26 +0300
Subject: [PATCH 08/10] ARM: dts: qcom: msm8960: drop #power-domain-cells
 property of GCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240528-qcom-gdscs-v1-8-03cf1b102a4f@linaro.org>
References: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
In-Reply-To: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=813;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=XSG2io/KT2M4j/vkBu34/bvT+NFOKJLYvm/1exVCbms=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVkH1XArvlpg4b/kJs9RG6pgSYkOJa4eqVmX2k
 4wGdJ8nOIaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlZB9QAKCRCLPIo+Aiko
 1VQxCACYFdpR2hQQY3OnHxc3pqyqcSGDjMzzArhx2Z+t2aG12ZM4wWlSn+RX/5a2zV+9LKWERey
 mbz5khKFKZwQNbL/pjxhv+22zQsT2gEGzho14Gh0jEFlxBDDRa47D8aNMoT1q+DXb5Etsh3Hsgf
 WVlT0BDj32Zn6Os+CVOPKV21hlt4qwoJ2yvf8mXXrJ6SknpapBYU5kMrEouRQsdDXP6+Kofoydp
 iA3KrzITYs53bDeWCYfv4OmNTqQlHOCKnexljjJy8TfmBFdPq3xjpfMQn5jSqUA128ky52JZYuD
 u9+K2yAMwmXMHhvnMYG8+u9JVaQBBlOJP2DttzZbonsqyg2i
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On MSM8960 the Global Clock Controller (GCC) doesn't provide power
domains. Drop the #power-domain-cells property from the controller
device node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
index 922f9e49468a..a9c6d2dbb460 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960.dtsi
@@ -129,7 +129,6 @@ msmgpio: pinctrl@800000 {
 		gcc: clock-controller@900000 {
 			compatible = "qcom,gcc-msm8960";
 			#clock-cells = <1>;
-			#power-domain-cells = <1>;
 			#reset-cells = <1>;
 			reg = <0x900000 0x4000>;
 			clocks = <&cxo_board>,

-- 
2.39.2


