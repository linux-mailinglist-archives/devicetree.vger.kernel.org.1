Return-Path: <devicetree+bounces-217456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C13B57D2B
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 15:32:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 82745206B96
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79D2314A70;
	Mon, 15 Sep 2025 13:28:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aOnKUDbF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB254313283
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:28:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757942938; cv=none; b=Ob+RMM7rdZMTcbaLc1DXCGoM6tXKeoGrGJhrQ/UAEOcHT5ChIGAGt/jZCblzsYOaXlOubL62+oE+s8nXrUFV3hg9mOf91fQx7+wkC20/2xIKEHp6NwnR5GFlzEQHOEW7E36THW05VU7NZgf44S3g4UqDr+CVpg9sC9HD9ZUb8YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757942938; c=relaxed/simple;
	bh=8SarEJ16dSlZ9x1yrNhQOTftvxArDoGFQxpONMxdWhg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k9LiW24vrUT7d96aV+SUtyR9MrSl3Ozgr7woaNT7Li6coIPBAb7EiaFCDpVW1VBB2kULvnKBc/KZ/ATtYDW2BTsPrC//S7J51BnN2XpdLf72WH/XaWYZ3aHC6c8CgCdy/yc6SMVFYDLhlPtPjcLPc2XxEbbHCqExxJ+D8IUcD7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aOnKUDbF; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45f2fbdacd2so3786225e9.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757942935; x=1758547735; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TVHbhdFlZbCxCpedbs0oq4d1TdjX8kTA2AdsFzOlTX4=;
        b=aOnKUDbFR1raxqstrrMnLs5ypmeW7+AMEVklnkECqgrc4fy2fRdI+Lmn0VOvRx7jZD
         oCfji401BjVk/5MoU1xNP16B/dDiFORlmLOkHebSxIA+oIGO/LlIlZreER9qle+vMhkc
         OICEZfNCkWcx6LdmZc5h10XtNy6EArBCUz1f8Nka7vanhDeNYmOcMIILAl0fqgNT/MZ7
         /hnpLgmOdgDp19jyf10cFEU+uVn8PNRHfD9hSUuroHGDX1TEIXaD79WSZZzvBH70BTst
         d3q8EdV3wWiIKSSfoLYD2BZkmvKaSodY3Yhco6S5nqFm3q8hwFPaUtzoE2+NjA7cEPOk
         9UzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757942935; x=1758547735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TVHbhdFlZbCxCpedbs0oq4d1TdjX8kTA2AdsFzOlTX4=;
        b=YtI2h5ph9l/v91ds8r64lW//x9gzrgNI20rDfdhV8z9NW/fhVGk4SjTJthXpGeMrv5
         m+d9rY4mJsUzhze/Sw6ir3vF2xoZv+EEucZHgt+IV+ORvpiWp2OWzawmbYveW63BrStT
         0IBk09k5RUq93KxLCdMnA2kecmIpH5Dii8pGykRBBqgaxbx8TIDT0Qy2rVuoG/nce6tJ
         0FXH61cBthil/KRd9OgDmWs+OGlSbTe7B6U6wgNwchTD7QEI1FxpaKsaTq3Fze8W3Hoa
         S5wJvile7DpEM8vRMMHnSnEAHpj2JV+CmP6mPLgcjYbl35RA3LjwuYt3klTsSFNQs8US
         RWtA==
X-Forwarded-Encrypted: i=1; AJvYcCUWlS3+KXuDQUYhLM9Q5nRHeYEvqoeMGZlD7kJv/AhkKETl7T9owgn70lgv+vxcmqzQ6CtNXsKmZOEc@vger.kernel.org
X-Gm-Message-State: AOJu0YysUk065ZXYJwDib2CgxM+D+0vjnScnS++xOnlV8TYmH6zldruR
	uaq5VIQQHFhybIQnsmGFAFoswd/gsv29hmxfDfjRFBfKk9Zr/+Cit+2le5PpwEljEn5BdHdwMBY
	hIi9UtZA=
X-Gm-Gg: ASbGncuorZxMHf+ZvlNy+Cpm4KMhyaOXnL3AkluqRl5kwhBRRkj4mKCt7e6gA2pMswH
	AKfT6stKEgCif1Tez0LgpvTRQ4YedDyezqxyJ00+y/gJmDD/yPHI6sAoi4tmlMDwc5i+Ue81qz5
	yDVCGm9Os3qJfHH8MxWh34HQ0or4XtNiLC7T9KMC1a+itkhQ+yBDAmMVEERJegZHqwsfAriF9n5
	33xopJrM3i0yXBM0bt5YPZ4Tgu/hl0HjEuF6ssn+9b15Kt8HcRXB1NARQgdza6re+XrO6GONrcV
	jzgLfsfItVbqQk0beaym7BwDKucBPLSlp3hG0CzYwWL++Gi8VPvYa9Dyc/S5UK4E6MsN4u+rtsW
	m6iGlumjSVRE7JI3ggi1kiui2JBcnTO1NaX8=
X-Google-Smtp-Source: AGHT+IGJnCCPqoXVoOCe6Ybp+0WcFTMjegCGCm0f9UTm2uDhPrB0URHDEtkSoTR5+vGjmhJzeUElrA==
X-Received: by 2002:a05:600c:2317:b0:45d:d9ca:9f8a with SMTP id 5b1f17b1804b1-45f211ff8c7mr80370585e9.27.1757942934909;
        Mon, 15 Sep 2025 06:28:54 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e9fd89af70sm5978874f8f.43.2025.09.15.06.28.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 06:28:54 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 15:28:32 +0200
Subject: [PATCH 3/3] arm64: dts: qcom: msm8916: Add SDCC resets
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-msm8916-resets-v1-3-a5c705df0c45@linaro.org>
References: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
In-Reply-To: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Vincent Knecht <vincent.knecht@mailoo.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2

Add the missing resets for the two SDCC controllers to allow fully
resetting previous hardware state from the bootloader.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Unlike the previous two commits with the MDSS resets, this is more
"cleanup" than "fix", so I omitted the Fixes tag and Cc stable here.
There are no reported issues with the reset omitted.
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index de0c10b54c86c7795b7a0d1ecd80652e60e117b6..d3a25a837488c940f7f9dd08d0aa4054aeed014c 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -2127,6 +2127,7 @@ sdhc_1: mmc@7824900 {
 				 <&gcc GCC_SDCC1_APPS_CLK>,
 				 <&xo_board>;
 			clock-names = "iface", "core", "xo";
+			resets = <&gcc GCC_SDCC1_BCR>;
 			pinctrl-0 = <&sdc1_default>;
 			pinctrl-1 = <&sdc1_sleep>;
 			pinctrl-names = "default", "sleep";
@@ -2148,6 +2149,7 @@ sdhc_2: mmc@7864900 {
 				 <&gcc GCC_SDCC2_APPS_CLK>,
 				 <&xo_board>;
 			clock-names = "iface", "core", "xo";
+			resets = <&gcc GCC_SDCC2_BCR>;
 			pinctrl-0 = <&sdc2_default>;
 			pinctrl-1 = <&sdc2_sleep>;
 			pinctrl-names = "default", "sleep";

-- 
2.50.1


