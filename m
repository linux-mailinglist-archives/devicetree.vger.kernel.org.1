Return-Path: <devicetree+bounces-22725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 205E68088DF
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:07:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE05E2820B5
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 13:07:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE21C3FB04;
	Thu,  7 Dec 2023 13:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pi5ARIsM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3297A10F7
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 05:07:13 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50bfd3a5b54so763748e87.3
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 05:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701954431; x=1702559231; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/WTwDERDtHj3CTZ7wFbbvBEJPnjqFeRCht0k5iEHuFc=;
        b=Pi5ARIsM3UkDSjgJWOh2kvpM57oVHYJipbRN9Ce6qmE7De71ObSAa3PCx6rvm1LIH4
         Tf38po6ByKmxuHz4obSiIgJ2t95YSSERFgb0CQ21+TNZYoFoZwmrRZWVL0A7T1Cl9cRE
         CAf213lgSt1QjOlKsjM6Tp8SoRID54lhrVACjDh+1UqVF5FN8z9wISFZzNMDGAUqvzJ/
         WRZIacH+szut0ehfDbrhIG91hUmNtkwXSsvaSfGZOQ/wZJPgcjprn7vVeNReq1bFZUsT
         QnXadsIEt6YEOde3W87WDKjS/EedIc+7FLOaA/NjIGRjqqz+A7xQTDdks8JpJWa4BkSG
         owqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701954431; x=1702559231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/WTwDERDtHj3CTZ7wFbbvBEJPnjqFeRCht0k5iEHuFc=;
        b=srhH7KyC9qQ5y2GTHaVNd0MtVXD+V3TZh+5BINzINYi24hdL37fEnNM/0dUAygjdWA
         nLuSefgmJCtALJ8A/aAFBFL26kaopReAn5Pw024fYe4JZSVICA0ceE44FWxUJLgZQja/
         fH3JJRafLKM2QDOhSm0xYQQqnxkCipEKngUtAz4U4Xl0rqyTmBqNCgS/mC2BBGQP5IU1
         vgwjFsYc6fLsaaKuhUlvmWudpXHhOZyVDuA/yhKXQKtUH/xEcB8HmlF3zOjdlFTrFGuW
         ss6BmJEGXUPAMThnWco3rzmKMLb+5BkKIK91rhNo2cZhCcTKNkcrTiCHsGljLmMs5dHY
         nmzg==
X-Gm-Message-State: AOJu0YydW7rqRFjaTGatFnhJBBpqaaAeA2rbK1OvnaEbcOXYacOR+nn4
	s4axqGgoj4JtQrMRni8B1VHs0g==
X-Google-Smtp-Source: AGHT+IHOIZ9j27aLRK+jjbUI7G9WNE2L10iADsVDwJ3vqq6MZW86RKXsYdI7ekQMtRkRCBnxzh0fUQ==
X-Received: by 2002:a05:6512:40c:b0:50c:7:ee96 with SMTP id u12-20020a056512040c00b0050c0007ee96mr1529725lfk.139.1701954431377;
        Thu, 07 Dec 2023 05:07:11 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j21-20020a056512109500b0050bc41caf04sm167685lfg.304.2023.12.07.05.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 05:07:10 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 09/10] ARM: dts: qcom: ipq4019: drop 'regulator' property from SAW2 devices
Date: Thu,  7 Dec 2023 16:07:02 +0300
Message-Id: <20231207130703.3322321-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231207130703.3322321-1-dmitry.baryshkov@linaro.org>
References: <20231207130703.3322321-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SAW2 device should describe the regulator constraints rather than
just declaring that it has the regulator.

Drop the 'regulator' property. If/when CPU voltage scaling is
implemented for this platform, proper regulator nodes show be added
instead.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
index 9844e0b7cff9..d7bd97997ff9 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
@@ -353,31 +353,26 @@ acc3: power-manager@b0b8000 {
 		saw0: regulator@b089000 {
 			compatible = "qcom,saw2";
 			reg = <0x0b089000 0x1000>, <0x0b009000 0x1000>;
-			regulator;
 		};
 
 		saw1: regulator@b099000 {
 			compatible = "qcom,saw2";
 			reg = <0x0b099000 0x1000>, <0x0b009000 0x1000>;
-			regulator;
 		};
 
 		saw2: regulator@b0a9000 {
 			compatible = "qcom,saw2";
 			reg = <0x0b0a9000 0x1000>, <0x0b009000 0x1000>;
-			regulator;
 		};
 
 		saw3: regulator@b0b9000 {
 			compatible = "qcom,saw2";
 			reg = <0x0b0b9000 0x1000>, <0x0b009000 0x1000>;
-			regulator;
 		};
 
 		saw_l2: regulator@b012000 {
 			compatible = "qcom,saw2";
 			reg = <0xb012000 0x1000>;
-			regulator;
 		};
 
 		blsp1_uart1: serial@78af000 {
-- 
2.39.2


