Return-Path: <devicetree+bounces-29117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F6682175C
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 06:23:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C12071F23C11
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 05:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B69914AB2;
	Tue,  2 Jan 2024 05:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sEzUY8rC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D4414F7A
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 05:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50e759ece35so6773572e87.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jan 2024 21:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704172662; x=1704777462; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/67mFt+DQzgEgVk8LHksOClPhmMVu3rW/7JJmw5wVxs=;
        b=sEzUY8rCQQ4PaXALh1TmB/xdW7x1od0H66hLKTSUJMKBZ7jj/KyjIFuEZKnu5ri9lW
         Oy5H4PxXygRe1YjeAh9zGMYJUYG7CNJ/2JIvYs9uACD5DXj/qywTI+XtoaFJ3v9MUVry
         03Ky61lLalxKPndPIs/0tIcE8PervkF2NU1Sy2CXCvMxtvLYoLKG2tcwHUBwoKaytjbd
         8uUOEfsdbkFJiC+jKJhtXvBzNF5Y8fTw3mjJRt8s1mj2tTvJUdTp9eAnNglK/0cDp6hp
         Yhca8pUBYDEb1ZtljUF/YKeDTLWemItvaZgWyWpi7NLGTa6jjGpUq+L2DDPWcA2hcYl0
         +QUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704172662; x=1704777462;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/67mFt+DQzgEgVk8LHksOClPhmMVu3rW/7JJmw5wVxs=;
        b=uD+FhIoVbne8oEXqxutgxf0ZCe/e3EKFL4NGwR1rYZdrUKybjgJQdvZE5k8TwWTQjp
         NZtveZAlQqXbTAMvMGNn/l1npqjZOjmTlDL+KUGbFMvt/zWgj6VQKHLhUiAe/Q618CDE
         whloQsZu0JmDYbya53QDTEqoV83oKVuRE9tzufK00byUJ7DRYrXiMmmgB6rfIuAs5+NV
         LyrvOOdPERCt0fKslRApXEl8bWXzSetrACHQw4y9MuL6EV7vttxg8lJIPaDNnHRU+tpV
         L5e2XBrfVYqVTmh3M6+nIeyi8y9nfh05O0doXjSxS8wFMUYg3fiHFel0C6nmgzdwdomW
         ihJQ==
X-Gm-Message-State: AOJu0YzZIkSZ8ye+RVjIaKpB7vhrYBHHWzaVw4EAhat4ghJr4U5d0gGP
	xaoDXiyPu2b5CRnvJ02qaWviyhhNPvv8Ng==
X-Google-Smtp-Source: AGHT+IGgbBWBd+EXVLRU/DWSnbndkP5M0hjw4NyoNwWY0H6TVt6qsoSl+YVyYN5o47a8/UnCC7OkZA==
X-Received: by 2002:a05:6512:2205:b0:50e:8d02:72d3 with SMTP id h5-20020a056512220500b0050e8d0272d3mr3103621lfu.79.1704172661836;
        Mon, 01 Jan 2024 21:17:41 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r25-20020ac252b9000000b0050e810689e5sm2081827lfm.33.2024.01.01.21.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 21:17:41 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 02 Jan 2024 07:17:42 +0200
Subject: [PATCH v7 22/22] ARM: dts: qcom: ipq8064: drop 'regulator'
 property from SAW2 devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240102-saw2-spm-regulator-v7-22-0472ec237f49@linaro.org>
References: <20240102-saw2-spm-regulator-v7-0-0472ec237f49@linaro.org>
In-Reply-To: <20240102-saw2-spm-regulator-v7-0-0472ec237f49@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1234;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=YpeawRcLYR7ZI5q4HIcJ9e0JzMmiL7QMmrYvpwUTlT4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlk5xme/VAvuNw1xhSCUPMgP9oj/zqqecQbieKP
 1t/8scUZbeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZZOcZgAKCRCLPIo+Aiko
 1U4nB/kBMKPAQEDflvTBkWlR0RBvC0//as913ErvRA0/FL1iYlwKM6yYcKO91fVsngq6qWUBm/b
 yFKMa480fvrZu0f/1CHBWRYGC8FxG3JeRSRmompdJsJCLkSff8R19x54VaqXmymu1SzC+cqLtBS
 xDtPcAngwbzMLWEV+L1HinNyPgaNQ8Wznaz7Kv++ZFMDEpHS0K7qYN/aJwvAW+b6S8PrDzyfHux
 HYTPHW0kW1F0XTREy8zwL1WYus9+7exJYpt9fA6GYSaByr6NnIVzEEJu5oIOKM/f3z8u5z+FRA4
 4CBhJUJhtQaAl4alKXGqnV/YF3LEdA5KwLlwvcHMM812FGJ0
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SAW2 device should describe the regulator constraints rather than
just declaring that it has the regulator.

Drop the 'regulator' property. If/when CPU voltage scaling is
implemented for this platform, proper regulator nodes show be added
instead.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index 4b35b1fd4b58..eb0eb2af6041 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -589,7 +589,6 @@ acc0: clock-controller@2088000 {
 		saw0: power-manager@2089000 {
 			compatible = "qcom,ipq8064-saw2-cpu", "qcom,saw2";
 			reg = <0x02089000 0x1000>, <0x02009000 0x1000>;
-			regulator;
 		};
 
 		acc1: clock-controller@2098000 {
@@ -604,7 +603,6 @@ acc1: clock-controller@2098000 {
 		saw1: power-manager@2099000 {
 			compatible = "qcom,ipq8064-saw2-cpu", "qcom,saw2";
 			reg = <0x02099000 0x1000>, <0x02009000 0x1000>;
-			regulator;
 		};
 
 		nss_common: syscon@3000000 {

-- 
2.39.2


