Return-Path: <devicetree+bounces-22922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14477809781
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 01:44:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C580E2820E8
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 00:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5681B1C02;
	Fri,  8 Dec 2023 00:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G55mQKy3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 393EF1729
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 16:44:25 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c9c18e7990so20425961fa.2
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 16:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701996263; x=1702601063; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uwm1Y1yKYRC2h+rKhVRBCueR16O0EXSdEm7pH6xao2g=;
        b=G55mQKy3UBjZmpOuxIMW1qs/CAb3Z4m7pvDMTahJ8MTLFrtQ4DE/oR7ge+s8b78OGP
         w/xMX5yzINAv3oPxsyXLEuMgsjnSuffYoT2bwow6chfSgecEW9PaKhHD52QEFIgaQRzU
         CbCFNBVKCFqkpl0xBDoke801M5mP6OAVD4pAkcrTcyFUeE8QYh4OXRiu1tec/e+09nbh
         ptyOo16/QbYY+i8BSR/XZFM0tG+i/DZixrzf2JECy2zIcvX8iihnmkuNslIEiKX62rIc
         15tPyOdk/8VloDzcBGc0tcB89u97deQiJMDx86SmD0++g3oYtjiuvQIPTTznP39U4v6o
         KIfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701996263; x=1702601063;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uwm1Y1yKYRC2h+rKhVRBCueR16O0EXSdEm7pH6xao2g=;
        b=IpmOVlzsWjwVaTC9nzg357EBkLNnyw+1etso3BqTjdTgcN3yAcjcocmznC68pzSa9U
         jr8PEwszNFylugKze3H6gyF5FcMUDA3EkARHXGxoa4mP99DCb+ahOtYv4y9ZJNUYEgEB
         OrcsOTRq2gs9puf+xhFGjYIMjoiFEmuZQAMjFwhxf1LsCHZLlHWmh+t7jFZ8oBDKiub6
         KQLwOHyox2LZ9drK+owTWnK02PswBXICm1u7oNMvxcvKmGX9nblyEuRv6kC2XjEOuuML
         XBFpdJ5SbaHA26VZg5bNSnyozDXx/kehLWEV/QEe/hAP6s8DmmS+8r8JRyJAIAF6sAPl
         15Sw==
X-Gm-Message-State: AOJu0YyBGnm7X2mqUiAfJWmdm3pDrk3IXsxF2y5iRShbSnt6a6de2TZD
	sxHMm1EbSFuqVLbda/1pb5pSdQ==
X-Google-Smtp-Source: AGHT+IHUefP4Jrg94iDnLS0stHHgDvD4HNy/qj0dUGqx4NW4/IAk1u/17g711mCa/ZXkgaoWRe+MzQ==
X-Received: by 2002:a2e:9847:0:b0:2c9:f71f:c00f with SMTP id e7-20020a2e9847000000b002c9f71fc00fmr1738750ljj.30.1701996263530;
        Thu, 07 Dec 2023 16:44:23 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d1-20020a2eb041000000b002c9f2c7cdecsm82645ljl.22.2023.12.07.16.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 16:44:23 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v6 08/11] ARM: dts: qcom: apq8084: drop 'regulator' property from SAW2 device
Date: Fri,  8 Dec 2023 03:44:14 +0300
Message-Id: <20231208004417.3393299-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231208004417.3393299-1-dmitry.baryshkov@linaro.org>
References: <20231208004417.3393299-1-dmitry.baryshkov@linaro.org>
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
implemented for this platform, proper regulator node show be added
instead.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8084.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8084.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8084.dtsi
index 2b1f9d0fb510..24bc2cbfbd96 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8084.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8084.dtsi
@@ -652,7 +652,6 @@ saw3: power-controller@f90b9000 {
 		saw_l2: power-controller@f9012000 {
 			compatible = "qcom,saw2";
 			reg = <0xf9012000 0x1000>;
-			regulator;
 		};
 
 		acc0: power-manager@f9088000 {
-- 
2.39.2


