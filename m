Return-Path: <devicetree+bounces-23744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7968C80C3C3
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:58:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 33F05280C29
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 08:58:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFD71210FE;
	Mon, 11 Dec 2023 08:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KbrmN7tx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73413F1
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:58:36 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-40c317723a8so33048205e9.3
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 00:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702285115; x=1702889915; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SpisxyZzihYTPjv1pLEPT2hNSCW6cuMEDfk4Wh6CC1M=;
        b=KbrmN7txLD2ni/RCZeCED2KnhwXa9IWEWm8Ptj091i32+RWlwEUOpeIbuoZxvLUMrW
         tQkC27erMw66BOEpB01nXKn7EVWr6qs1RUeSn1TjqcXYnTUV5iGrHXPGPwiIz7E7kFYd
         unejKLbt3uPRl/cvR87WxJ983QCPjduIBnynO9VEIBdj6RdaRBIwnlNDz4xIOooxKHGp
         CWVKTmRnm0bRV32iGkjq9q0kNdsfwnlnJA4qDekSZ5kM01j6jJCIO/1a5zmHQUBktBEd
         TjG/dkmViv7kj3hOXRTZKjcRypz5Ne20dyS29dIxzREhAIrlopmeu0z+DXQ26UfkIHrL
         ZmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702285115; x=1702889915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SpisxyZzihYTPjv1pLEPT2hNSCW6cuMEDfk4Wh6CC1M=;
        b=Agbk1YJoiWkp+s8R7fsATycju6beuUhOtMfCqYoUtXTszX37+dcT8kF5BLWc4IOhAE
         haQSaNPCRZFePGd/jakf9CKPuqqxqS1IUS5DO4hK3U+5yRRKr/Wd1Ub0Phl0bwTQk+yr
         FvXstRprYFl29EtjceJ6eb/3pSH4mMtE1T8LLG2mDIH6O0wybpQRAsz3VjsEq6ltdf0u
         +wohaQUVgRP3ozsNLesFYC+jdtbdsXxDoXnTigCTneZmgP0mTpfDVzC8Y4oZhuOpwwy6
         8dMBCchBsQUXc4C8QejHStLyeYoEH75WLOuUAY5ZT7YQ9swkkGAXG2qYfXW7d//2w5nZ
         prmg==
X-Gm-Message-State: AOJu0Ywm9d43Cb/1T1qgtcgYm1FOmnw5PNhziHRUOJb2n6jyqZDUTRIN
	D214xsmsq+X6hCUq7tfIi4+kHw==
X-Google-Smtp-Source: AGHT+IGV2CHR6ZiBuBPqMgS2ZcQxIppt7M0SysKy6s7Vo9oy6kyPIHprH07uyYWbFvJ0nkZtxIK0UA==
X-Received: by 2002:a05:600c:3ca5:b0:40c:4b3b:f2ac with SMTP id bg37-20020a05600c3ca500b0040c4b3bf2acmr187901wmb.127.1702285114830;
        Mon, 11 Dec 2023 00:58:34 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id fl9-20020a05600c0b8900b0040b43da0bbasm12315067wmb.30.2023.12.11.00.58.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 00:58:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] ARM: dts: qcom: ipq4019: add dedicated SDHCI compatible
Date: Mon, 11 Dec 2023 09:58:29 +0100
Message-Id: <20231211085830.25380-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211085830.25380-1-krzysztof.kozlowski@linaro.org>
References: <20231211085830.25380-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dedicated compatible for the SDHCI MMC controller, because usage of
generic qcom,sdhci-msm-v4 compatible alone is deprecated.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
index 114c92b4d8d4..e838f2c1678d 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
@@ -224,7 +224,7 @@ vqmmc: regulator@1948000 {
 		};
 
 		sdhci: mmc@7824900 {
-			compatible = "qcom,sdhci-msm-v4";
+			compatible = "qcom,ipq4019-sdhci", "qcom,sdhci-msm-v4";
 			reg = <0x7824900 0x11c>, <0x7824000 0x800>;
 			reg-names = "hc", "core";
 			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 138 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


