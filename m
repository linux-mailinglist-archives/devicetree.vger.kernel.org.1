Return-Path: <devicetree+bounces-25551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE678139A5
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 19:14:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8895E281085
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 18:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AEB968B87;
	Thu, 14 Dec 2023 18:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BtMVHhqC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55BE9114
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:13:59 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50be9e6427dso9033519e87.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702577637; x=1703182437; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o3r1bVN6/4LrrGw5N6lGME8swP3TVIC1FuDgOiCIYg4=;
        b=BtMVHhqCysRUHwWJ73akUFQC1nfiyOUsguAex6zNmRQeXlCLD/IUc3laFaacULo3HQ
         Jt3y9AyACu4vfVd/Dm882cElZAwNCYIIcDIU0Ok7o0t/cAA5p4HRT4DCbl2bW8lgtslR
         WNWCIC7jKs7CRH0tyOyz6OD0yR+rUzjcHLkr5zJuvlYdk6GAi4zSnKb/11NVlbQbntrO
         TLrodUfm0fFfvPrqb5KuSFuHV3vdGGNe+pTI1rlihKB3MD/IAuhKS/uGjfccDZIG01zo
         6dqg5r6bAjA4gRCbWjUs12LtAmGXeWf3G7hRNJSvoYc9nzyjU1X9KB42atIq0GWWADBc
         h+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702577637; x=1703182437;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o3r1bVN6/4LrrGw5N6lGME8swP3TVIC1FuDgOiCIYg4=;
        b=bVqvUB9YaQ2BAqrV2RCx7UvFRQ8MhombE6ChmY+xFE0hhdx+8nujsaC+GxUwn0C9F5
         fjH/Ui+XB0JWCS1zqEvu4uMYNmbVhYuPpgBK3p2Is9loSSRqypXKavhfUfQh8fZjxEaM
         /SjNqLCeg4wUDyXOXdmyh1wIJUdvV8YQ/oj+aLEufOy61zt9bjjQU2hWnAKr2SULGK6l
         wraecWYXyFEMJ+BTwmikUdmifo6I29I1lTC3UAjZb5J8p695JPrSGxbgh1KNfxlNcW2m
         anfCdoh6VkxjKdIyHlcaP2acYQCVT0W9mTIjaJ0ZawAaUSfBdn/C+/DOTpBHJlb87/+r
         ENdg==
X-Gm-Message-State: AOJu0YydLDz/9CilN4tEUhdoE6klD//dxHaULTPKUVOcC5JJ9akS3QgI
	MBrCwUq+mU7uBm/J94OuR1n8ig==
X-Google-Smtp-Source: AGHT+IFPIcdi3YU4QH0WRzX5cow7BNQovSiBGe4ipKRLZtpdKnnMSnIkKUjU+kYaS1ZwHlP7i4J8Xg==
X-Received: by 2002:a05:6512:2192:b0:50b:e9df:b7d6 with SMTP id b18-20020a056512219200b0050be9dfb7d6mr4039069lft.72.1702577637523;
        Thu, 14 Dec 2023 10:13:57 -0800 (PST)
Received: from [127.0.1.1] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n11-20020a0565120acb00b0050be6038170sm1928838lfu.48.2023.12.14.10.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 10:13:57 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Thu, 14 Dec 2023 19:13:42 +0100
Subject: [PATCH 5/6] arm64: dts: qcom: sc8180x: Describe the GIC
 redistributor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231214-topic-sc8180_fixes-v1-5-421904863006@linaro.org>
References: <20231214-topic-sc8180_fixes-v1-0-421904863006@linaro.org>
In-Reply-To: <20231214-topic-sc8180_fixes-v1-0-421904863006@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Georgi Djakov <djakov@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Maximilian Luz <luzmaximilian@gmail.com>, 
 Gustave Monce <gustave.monce@outlook.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c
X-Spam-Level: *

The redistributor properties were absent in the initial submission,
add them.

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 98fc3ec881a3..a2287ce14fc5 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3425,6 +3425,8 @@ intc: interrupt-controller@17a00000 {
 			reg = <0x0 0x17a00000 0x0 0x10000>,	/* GICD */
 			      <0x0 0x17a60000 0x0 0x100000>;	/* GICR * 8 */
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			#redistributor-regions = <1>;
+			redistributor-stride = <0 0x20000>;
 		};
 
 		apss_shared: mailbox@17c00000 {

-- 
2.40.1


