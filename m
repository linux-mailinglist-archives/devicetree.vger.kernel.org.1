Return-Path: <devicetree+bounces-124998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D839DA7F9
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:38:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F0CEB240DF
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BC8B1FC7CD;
	Wed, 27 Nov 2024 12:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W0+rGztM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17BB1FC111
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 12:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732710602; cv=none; b=mv85pHas4BJ4D9Bvx0EBo45WjFNJSv87cszNR8DmoKrT5vhay7srtNAfWygpKOm+MBdtDDVc5PWKoZ7l6ZP7ofv7z4gEuNro1EdaX3PEb/1pO3juQT0byg3oTnE+FdmyhUd0l9nDa1fKx4JDkK2P4lTr/z9HC0V2dU5IvU0zGEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732710602; c=relaxed/simple;
	bh=9p/jyFvJvxTgMMbHLD2yI1raRNWAtu7jp4tx6zRjySA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fdmAi0jBrUkrNCMxSPHtgwmR+ZrRvff+S0R+q5CswSW01EiMgzqnrzRG9pQ+8/BMJ1/iryyg8gWgBMFnNkO/YPQ2YExyU234ao2B7L0EYdUVLV/4uOQa/CTYlk2htxbPXaewDeoUdO4BrjNQmRTZAhYMSelCAaqa0yDejcmIJCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W0+rGztM; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53ddf9abc5dso539352e87.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 04:30:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732710599; x=1733315399; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r8zgSfvfKIphPp8nFZAGLP3oTDza+8F+XqLeI7oYefM=;
        b=W0+rGztMSXI4v+X/Jz103wMOi/b9iEjvbcbjPm1vZ2UVdZnLSdTD0rJKTl71slhqWb
         9eOjEOhQ4YXbdByoCnMhXk0vcfc7/OjMEFDz9oX+c67R8HR4IgdZ8S0l3Id7LfD5Uicp
         io0hS5drdPyOEAlJsFArvCYDIL537ObbMkp3rrcyuRk2/9c1/scr9qLlDQxiULpZ2QVP
         h9OOLgQ04w5EJgx7m60gqs7qqXaxU4RlwzfS7LxM7zlkpIyRWbvfOodIfvcddOoPbf3N
         /ybf8LskMk8XWPhrBIhrcSSyvbeRIhJ0P5J8zB0lOyJkZ10HvlSbB7uXemNjitn11PsD
         K9vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732710599; x=1733315399;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r8zgSfvfKIphPp8nFZAGLP3oTDza+8F+XqLeI7oYefM=;
        b=OMwCN7qfkcNx8VBGbJJFlEHdkJymPknxeWotUUzmC2RaiqsXj0BBeo/bfNnffmJLzp
         hOT2+TYUQszRlF8ZBgntCrHRlTOWFWWEIY7jk6JGCYandxIfF8F8ZjmRNPfP1EfzGCEP
         PaOtNVlb0xZxLYVUxW9xSRXd8ODDJbK8kOa8dAAMQ4SGh+8Q07Np+EbRXvqxOzn+p6Gr
         XqfPK77FkkSzVxz3y+qwkub+uNr6UVt83/XF/LZF1htpgaXxUatMcej8zuh4SqWITCgX
         /ODlHSR97AY4uWhqKrUJnt+XXSIeNsjB1OAfgvBRE6zyeFGwcWMEH/1mbeJCb12MlHKK
         Z58Q==
X-Forwarded-Encrypted: i=1; AJvYcCVGYF6xUNuR2nH7NxWgiuGtk2x2+Vr4PK2co0uMmgQxcR5KA8GSP+yCkkL/PIETho0FGKM4yCHT0UVz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2hi3KkTI4GmijEJdoJ0BpBVVTQ85HMxYP7Wf3lzsYesQKMw8Z
	NAJEZxJxZp/yhxLVYDwa8HPUKPQgc6DCehMSbF7hdCMScG36igxeEhfNRkuLT1o=
X-Gm-Gg: ASbGncueKwb67xsmDptmLrDCrmRxIuH5ew/uVswbKl67CRZwBdhwcDpY+vQyn86TrTx
	VmwoXeuTuakZoimuSUiEc0omDY3iBD6rGrABKDPAVR3qMt4a20CC+sXNXtE0j9DOXXsXxK42mGR
	/iXnOTbqlKPHZ9HRIYqu2vtubMV7NehNjE2DSZo8ijrV1amIA8wz2DWVo2vYHT8NZyxKgpE7oGA
	qmMaryyYsVsAa76jaW+5tnribTndgDG8LcYiqbLL7g4FhndpkDQYVfhfdIg+i5DNWN8z5TaObql
	LBKWoKmIe7I1dZHRSKmFoD5Op7zSJoIZovUYe+4=
X-Google-Smtp-Source: AGHT+IG7i7jYJ2wHxo+R3RMZH8XtvIAgLEudwz3gXtA9tAxpAaehlC7idqe4lC4o47Tq7+3rVDOXQA==
X-Received: by 2002:a05:6512:3188:b0:53d:a07e:8957 with SMTP id 2adb3069b0e04-53df00de15amr273734e87.6.1732710598925;
        Wed, 27 Nov 2024 04:29:58 -0800 (PST)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd24953a1sm2276621e87.228.2024.11.27.04.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 04:29:58 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/6] dt-bindings: media: qcom,sdm845-camss: Fix interrupt types
Date: Wed, 27 Nov 2024 14:29:46 +0200
Message-ID: <20241127122950.885982-3-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
References: <20241127122950.885982-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm IP catalog says that all CAMSS interrupts are edge rising,
fix it in the documented example from CAMSS device tree bindings for
sdm845 SoC.

Fixes: d1d5ce260165 ("media: dt-bindings: media: camss: Add qcom,sdm845-camss binding")
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/qcom,sdm845-camss.yaml     | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
index ec4380a0a03f..d32daaef1b50 100644
--- a/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sdm845-camss.yaml
@@ -296,16 +296,16 @@ examples:
           "vfe_lite_cphy_rx",
           "vfe_lite_src";
 
-        interrupts = <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
-          <GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
-          <GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
-          <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
-          <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
-          <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
-          <GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
-          <GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
-          <GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
-          <GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>;
+        interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+          <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+          <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+          <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+          <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+          <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+          <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
+          <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+          <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+          <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>;
 
         interrupt-names = "csid0",
           "csid1",
-- 
2.45.2


