Return-Path: <devicetree+bounces-25547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB4C813996
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 19:14:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DFEA8B218CA
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 18:14:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3432A68B60;
	Thu, 14 Dec 2023 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VrUyXg1C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73E13114
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:13:50 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50bffb64178so9932550e87.2
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702577629; x=1703182429; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yVQf3dbyT14ng4SO14NJqgagpvGCqqxla+LEC+UJVYU=;
        b=VrUyXg1Ck0uRtmA0qq+4EHsgo06J0qHEDi8kRxD//82wtPzVbR1+ztIlaWs9qpByyE
         aBuNjeq3u6waNuCgZmUpclJw66mSH6iAV/QNEqUynxqahaIDXPAnTwNyyW76HmrhPid6
         LyBXTid3qAQQ0c2Uge1nc1/hsXUiycRrauKwSDgWrlheOMUjs9PsIrsZqWDt7v8Bv/Jc
         S4hjlmzOo3hHL5uHOpflVy/zuIt4tAdf3uzxNae8jeMWz4kjolD8d63lPW7jE5qIlvAK
         +lz9eIqPXmPwMwcI86EErV09yrSEat8yX23lb68xLKzDqqUpIiuAA2jA1fYnyNwVvN9y
         +xVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702577629; x=1703182429;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yVQf3dbyT14ng4SO14NJqgagpvGCqqxla+LEC+UJVYU=;
        b=hrYBoBGIICaS4ONqs3Qbv9DRTVOnsGw6vRhVDPqnxyy0+KcZxwHVec8yb5NWwQltkl
         gTP3Wlvcxy1LAZr3GmW7pyyzF2aa7b0OMkNCibpg7gEN27SjvMt1rwqCJ2eJFVABLbbR
         aCBVuf2P7hRfzRkstshu+akH7Z9IGTPftJuGov/xweL4v9N9FQQJy/1Ng6GVa9H+1vhx
         S1S02nBrA744ZoHBUujcKBdC6KQlD2qVYhiMdmcQKVS/5SPMgiMIMz1+gnNgiTQPvJPc
         C/2U/hX9JGowta5Wx0PoLfr9X9XQqOmZ4qW0Cz2eT5qf8+kAEQVXwzYUezrBgam4FAZd
         wyMg==
X-Gm-Message-State: AOJu0YxpH0wd6nWmWuUvggmV/kMQ03bB3qrH8xeMsKQfJ/N5isTW33sY
	Z9rf7YDe3VarY2+lNoJwpuBRZ8RfmAznS7er72fPspiL
X-Google-Smtp-Source: AGHT+IE6Y+zGN2MX4oNmeEjKqUQAvJwmAAdCFaira+2M3Z3fMM7AKCqXMPs7r9pionVuu9nbZZXonQ==
X-Received: by 2002:a05:6512:48d9:b0:50b:ecae:d8b with SMTP id er25-20020a05651248d900b0050becae0d8bmr4821204lfb.105.1702577628609;
        Thu, 14 Dec 2023 10:13:48 -0800 (PST)
Received: from [127.0.1.1] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n11-20020a0565120acb00b0050be6038170sm1928838lfu.48.2023.12.14.10.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 10:13:48 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Thu, 14 Dec 2023 19:13:38 +0100
Subject: [PATCH 1/6] interconnect: qcom: sc8180x: Mark CO0 BCM keepalive
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231214-topic-sc8180_fixes-v1-1-421904863006@linaro.org>
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

The CO0 BCM needs to be up at all times, otherwise some hardware (like
the UFS controller) loses its connection to the rest of the SoC,
resulting in a hang of the platform, accompanied by a spectacular
logspam.

Mark it as keepalive to prevent such cases.

Fixes: 9c8c6bac1ae8 ("interconnect: qcom: Add SC8180x providers")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/interconnect/qcom/sc8180x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/interconnect/qcom/sc8180x.c b/drivers/interconnect/qcom/sc8180x.c
index 20331e119beb..03d626776ba1 100644
--- a/drivers/interconnect/qcom/sc8180x.c
+++ b/drivers/interconnect/qcom/sc8180x.c
@@ -1372,6 +1372,7 @@ static struct qcom_icc_bcm bcm_mm0 = {
 
 static struct qcom_icc_bcm bcm_co0 = {
 	.name = "CO0",
+	.keepalive = true,
 	.num_nodes = 1,
 	.nodes = { &slv_qns_cdsp_mem_noc }
 };

-- 
2.40.1


