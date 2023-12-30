Return-Path: <devicetree+bounces-28970-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2B08202F7
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 01:05:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40C691C217D6
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 00:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8049C33E2;
	Sat, 30 Dec 2023 00:05:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kdFb1RfS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23F91FC5
	for <devicetree@vger.kernel.org>; Sat, 30 Dec 2023 00:05:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a27c0a91a77so3909566b.3
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 16:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703894710; x=1704499510; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L8sA4ChLD75pHX/4Yq1MBHLIl2gZnbIbFBalQ5XunNo=;
        b=kdFb1RfSQV3LBbeb5jGxw27iD36TJq960nuA15nUE/Ax432nKNIvuXfw0g8BahySRa
         Ayr6ISCVZ0oYmWZevkGlskr2RvMzGf+S4T86v57V1h/HHBY/fNsjiAxdBH1HB/vRomq+
         KzifagurxtwkbxL0tBvcCFzTC86rEB3J+ov2FvkOOXPgdg+rkZaVUS564rOFt5Yjk4HN
         FfBcGH/9pr+gG1uy6zlGxHv+fVpazrIyhAlKi/QUOhpKyY0kbnVYPXYoiJWJxlTVXu7R
         C50lypET56HrrDbuJpUXc3CUSqV1CmjM1R+EWVGVQlM0ihZfoXu9rZUtEFY5VHHxCjzL
         ml0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703894710; x=1704499510;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L8sA4ChLD75pHX/4Yq1MBHLIl2gZnbIbFBalQ5XunNo=;
        b=f0W8IcWp5HbM2tlEbHXs4yBwUwKIdguNDmt1zyALPI+oQ23+peawL459Xtv8R3EXY1
         irK3h0/GSYtg4aBNdhwrfsGhFBhV0/b0hIWTtg8n933LVOV5jWMlxjcBKjak+057QFPp
         /sxqFl77IzgrIOF7NWKTegV6ZDCSewkFk3ncr7PjQ2WFlXT5FdIv+4ORqM6IQqQj0p+9
         kSpEeHwuWRhw8dH/3odGuKNBbH4q5po8IJ2V7/wOLgpImpgA7fbPCpnieHjwkA4t1f7/
         U2E8BYhgdYnOst35ZeVMtqQOk8fWYdzj5MzJCNRICgV0ptgU7lLJjGz+OzN832andXwZ
         JKBg==
X-Gm-Message-State: AOJu0Yxud1oWrZVAxm2YC/SzS7CeaRiQJzsbUEu48cVCBtq6LrkeXiDU
	rDvTt7rMkgMYWtRSUBjeK3ujWzzmO0U/ig==
X-Google-Smtp-Source: AGHT+IE8VFpmWHmMmHDfb+A3q8/H8yoxRyoe+6GjRHXpeEZ/YA0aDNMNl9Fcvy/2XylTPC9tX2yhVA==
X-Received: by 2002:a17:906:b0d8:b0:9fe:81a:c258 with SMTP id bk24-20020a170906b0d800b009fe081ac258mr7213863ejb.26.1703894710156;
        Fri, 29 Dec 2023 16:05:10 -0800 (PST)
Received: from [10.167.154.1] (178235179036.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.36])
        by smtp.gmail.com with ESMTPSA id wj6-20020a170907050600b00a26a0145c5esm8609623ejb.116.2023.12.29.16.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 16:05:09 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Sat, 30 Dec 2023 01:05:04 +0100
Subject: [PATCH 03/10] arm64: dts: qcom: sc8180x: Fix up big CPU idle state
 entry latency
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231230-topic-8180_more_fixes-v1-3-93b5c107ed43@linaro.org>
References: <20231230-topic-8180_more_fixes-v1-0-93b5c107ed43@linaro.org>
In-Reply-To: <20231230-topic-8180_more_fixes-v1-0-93b5c107ed43@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1703894704; l=894;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=6wrG2Jpoj6eZT8p2XPAWwfQxOC1DOIB+2+k+9dXgcP0=;
 b=HzNY925Wz10b8M/4cxMAZfm3u+hhvvZ0QaYmr/D+rfV/3Rr6hgBR9zXt+t2H0XJa4iTlR5T9T
 G+t+se02dfACQy2pga8XU7qzCyWZFpMR75WLRo2F0l5xOAU2s1TxxIb
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The entry latency was oddly low.. Turns out somebody forgot about a
second '1'! Fix it.

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 91fd805f17a1..b84fe5f3b41c 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -290,7 +290,7 @@ LITTLE_CPU_SLEEP_0: cpu-sleep-0-0 {
 			BIG_CPU_SLEEP_0: cpu-sleep-1-0 {
 				compatible = "arm,idle-state";
 				arm,psci-suspend-param = <0x40000004>;
-				entry-latency-us = <241>;
+				entry-latency-us = <2411>;
 				exit-latency-us = <1461>;
 				min-residency-us = <4488>;
 				local-timer-stop;

-- 
2.43.0


