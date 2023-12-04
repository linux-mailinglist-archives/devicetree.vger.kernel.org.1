Return-Path: <devicetree+bounces-21337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92528803387
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 13:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C43F31C20A96
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 12:55:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1208249FA;
	Mon,  4 Dec 2023 12:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lif6SYGr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A92F0114
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 04:55:45 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a196f84d217so438079466b.3
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 04:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701694544; x=1702299344; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QF1YIXWEgPxBBuUeInrydPVHlwVtxwvmFaOgA3MM5Cg=;
        b=Lif6SYGrAzi9cM1Bgc9FyBptt9DwOw/R/pq+LCDTzybitf+k8pNa74XyMq8cKiLaym
         jsCxr4QJFEUzWQKm1XezNyPp5Ad42VEmqvwZvGtAXcd/KR7Chl5X2D9peSRAonISBUr4
         5vcE/7CRtwKUahQ5y+FiQvHfHkP3W/XZ6+YHTkHTxYp4tqZCzrN9nwVTfSh2RS6PP0ag
         77TQoloUHInbEPVegpcH6YFa/7IEnQcGI3B6qkcecUjBwMCVI2fvuyygrp/KV/EmGUi3
         /TvV2gau7Hb9tSQbvVc5vcFRoQgZxNJwhWIjG795C8C836ComV4PZh8vgdlxx3ftyhra
         FkWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701694544; x=1702299344;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QF1YIXWEgPxBBuUeInrydPVHlwVtxwvmFaOgA3MM5Cg=;
        b=ekdDEI/dYnxENltd83zrBOvQO/bKpNYkeqSkhl1Xuj8V4hSplLLWycnydWGguCS2N2
         p1odQb0lmmBhopZhU4WVxPoZcTZTv0UC50qWt3BVX1rZvZegCzbuZoCn+WH3zqTrykdf
         itHuawVgGWP3dol2rGCZMy5L/Y2aKK/dVytdA4Ipg1wFJH9bmNJj6Th3I2G6AvWIsC9i
         MnoKfZUuMxJ2656DyqE8oTnnrDEHcoUM04glr4a4ZHcHRLjf+SXr2YP9RVBbEThJjluN
         xio80VHBNy06xELaeYbkbzaqT0DJehqVBPHx5BVs/nnwSB25GYLjqaLLot2JHBmERF5O
         HSTg==
X-Gm-Message-State: AOJu0YytbJs8SWw9KfQP6yTrGj0b2CmV6tTGIgPxLy4b6lkpt7cvkULl
	RoetHV8MnKW6aZzBns++vl9rnQ==
X-Google-Smtp-Source: AGHT+IFeIYz1iO3KsYQ3qcBtBpS+Vd4YXm0h7XwncIOh9jeVwFbwFlOur3jXmcXfiTKrzIuS0d+soA==
X-Received: by 2002:a17:906:748c:b0:a1a:4813:e833 with SMTP id e12-20020a170906748c00b00a1a4813e833mr3118246ejl.67.1701694544222;
        Mon, 04 Dec 2023 04:55:44 -0800 (PST)
Received: from [10.167.154.1] (178235179097.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.97])
        by smtp.gmail.com with ESMTPSA id ay22-20020a170906d29600b009efe6fdf615sm5241373ejb.150.2023.12.04.04.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 04:55:43 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Mon, 04 Dec 2023 13:55:23 +0100
Subject: [PATCH v2 4/6] arm64: dts: qcom: sm8550-qrd: Enable the A740 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231127-topic-a7xx_dt-v2-4-2a437588e563@linaro.org>
References: <20231127-topic-a7xx_dt-v2-0-2a437588e563@linaro.org>
In-Reply-To: <20231127-topic-a7xx_dt-v2-0-2a437588e563@linaro.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701694533; l=794;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=ijt3beGGSYLGoF3RtudvbmIRYSlskid0fUlPyla+S1o=;
 b=P8Y1u7ibWzTnMEQ9WLFkXk3Kn7plZq3rCoAPCAWZDO5x0/PeBqpACFWtPPlp84QwwtRGPBU0A
 7DzHQ4qB8fDA9YJfk7dZm7zWziRoe9UMMtcZqfPkUhEnKIhNS8b4onq
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Enable the GPU and provide a path for the ZAP blob.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index eef811def39b..9fe51d308675 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -596,6 +596,14 @@ &gcc {
 		 <&usb_dp_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 };
 
+&gpu {
+	status = "okay";
+
+	zap-shader {
+		firmware-name = "qcom/sm8550/a740_zap.mbn";
+	};
+};
+
 &lpass_tlmm {
 	spkr_1_sd_n_active: spkr-1-sd-n-active-state {
 		pins = "gpio17";

-- 
2.43.0


