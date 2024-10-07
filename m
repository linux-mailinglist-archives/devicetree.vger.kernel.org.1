Return-Path: <devicetree+bounces-108406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3367E9928B7
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 12:05:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8F461F24B3C
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 10:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDDA31ACE12;
	Mon,  7 Oct 2024 10:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="V5DniZxT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B48E1AB514
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 10:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728295390; cv=none; b=M2p5CyXBS6QSU5+tn6uVMgJBJrhAFbIDsQzYY7U55SnWnpuskGUh4vWEDFFR4fv86EQPgijEndt5Jr/eFfx659t3mdFcTwSZlNY+tSp2ZeOQDiUQH/67P8+ei9hdk1sCyZaiG5+nTm4GG6t+Y/fHz03x9MI7EBUE3JS+4LlUi3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728295390; c=relaxed/simple;
	bh=w/TdTsvZ+vpxHfKrP/S02yy/ot1KY56UD+FpEXGlbFo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a4w1Hnal5nDxcSHSMhUkdsKduCYttPseVhngFV8NC0qsl8abff0H9RuTyMbAzPuDNxlb6dxtAKU7cVJs4g95vSdkrUxessDtsZdLFwsybQWtRuNrbbubHD2OnRCUjJNWVjUDjn9E2CYB3Ect3rX9nvm3u/F92E4GjMjeQa9ycEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=V5DniZxT; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42cb2191107so36767475e9.1
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 03:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1728295387; x=1728900187; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ls2LQgNoxxOgoroVIRyB942cA/oVAneZgnQmeWBEIgQ=;
        b=V5DniZxT+a3BiPngN9XlOUFo7BLGU9gzDha3kAKSAtMl4PGbMnhgJUaUGbsSksGw82
         hme33lKFTlpbStYkwfBtq95ZTlFqSQucPUEri+MeMcSniu44qMAqG/Djuksz2drbhEC8
         ++rnnR3aj55Agj19338Ri1XSQUq6TMqPd74bSH5UQwFPIYHalzy6Jhph/EqZ2A9x95VL
         KaIbUGXJAGAmU+m3UjYYV5/ooG+1EQwfWH51U+zFD1BLsJzik1RN9lTIC1RcY5qe4LKo
         Rut2QAE3+CqqoTsCglE+XycggNhgeKBm64/0dXC/pD8bO12Gys+hoYcC0lOEyzWLuako
         KUKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728295387; x=1728900187;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ls2LQgNoxxOgoroVIRyB942cA/oVAneZgnQmeWBEIgQ=;
        b=vyVMtF67KJaemava4zxpxpztpnM/c/HmpC1tRqd4aTwezGfIUNTuyX9LflAAxKvsJP
         WPZ4/sy5BO7DDSSIeTV+OlfGiV3wDuwKSi/41OqO6oYQH6STdoaIkMJwCxTUWBMlWaha
         vWIZwOaWzaAvs6U1DpZyJI8xlQHAjNpvsVOqmoVlU3G6bZ0alEL6hH/6bhJwSfM6UYiL
         pYBEucMU1Voj1CCO4RCUsetAx0wWv7JGMvAAlF677UU5Tti9dkmdqDXbfkj+Yc/fuRsh
         igmXyOJbhtVflizt9Z/hPxMnXfkzShDfb/9r09Rz2Mqn5WGpkKj6wq9Dzco7bbk+HWwm
         noJQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8rpQqcbQDLxpD0/kQ2/+htJVqTZ33FU6UFgmBYq9eEhPmjCw2DmpEWRHFmYdEjSFxKg6YgnvQCELg@vger.kernel.org
X-Gm-Message-State: AOJu0Yzgc1Ys6ewZWJBHekWlSiwGB/waLnB7XimUrQBwJKY0H6twNRlG
	F1GLlV8WNmaCd6iBzvU2ke+Xxw/DDKELZ1DKGYzb3eMFpSb3EFSv0qzbOLuzJ6w=
X-Google-Smtp-Source: AGHT+IFBCcdgpxMMNf1LBa+RIvdvp7qyLp7mNCgM+ByTJALSu4E5yyRpjDSnq8LZIkC63SqWmYKMgA==
X-Received: by 2002:a05:600c:4f15:b0:426:554a:e0bf with SMTP id 5b1f17b1804b1-42f85ac0af7mr84833655e9.16.1728295386772;
        Mon, 07 Oct 2024 03:03:06 -0700 (PDT)
Received: from [127.0.1.1] ([2a01:cb1d:dc:7e00:6100:637:cbe9:f3bc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f9384f648sm8498695e9.20.2024.10.07.03.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 03:03:05 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 07 Oct 2024 12:02:55 +0200
Subject: [PATCH v8 1/3] arm64: dts: qcom: sm8650: extend the register range
 for UFS ICE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241007-wrapped-keys-dts-v8-1-05ee041f2fc1@linaro.org>
References: <20241007-wrapped-keys-dts-v8-0-05ee041f2fc1@linaro.org>
In-Reply-To: <20241007-wrapped-keys-dts-v8-0-05ee041f2fc1@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
 Om Prakash Singh <quic_omprsing@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Gaurav Kashyap <quic_gaurkash@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1155;
 i=bartosz.golaszewski@linaro.org; h=from:subject:message-id;
 bh=BfsJhxujmUYIU4IHY1sFCSAFVaSmFOIubsGUt28dVDU=;
 b=owEBbQKS/ZANAwAKARGnLqAUcddyAcsmYgBnA7HXh8NJqQFcM2wk3LodqdvHRyrAJ3rnNMvrE
 +1Z+BZHN1GJAjMEAAEKAB0WIQQWnetsC8PEYBPSx58Rpy6gFHHXcgUCZwOx1wAKCRARpy6gFHHX
 cmvxEADeZ6aPzRytB98pisaza7heDocdbev3g5G5c0wo/2gxpwhT6mNW7Cuz6tLYmrA6qoqamlf
 yAz3mqgkluvE7Nn5Oek4eaZooppeOqR4KcnCgqrbsMBhnsaz78U+x1XsqKqKWCR2lP2bt5ugxfO
 YltNaYCYrgp/fw3JjkjN6uEyEfwmMaI8oWXRZ1IgoeSoL6i4Vc72obgl65o2fZ+PBJRdREYO4KJ
 aGT0NXvDjxgHpaznMriiSCGQmZabDK9pptllxgoUVBHKzK2ZzMD6mF62gjbm7BaM2ftIoRWY7zr
 Ju5f/9uDjtF1AT4cp1ug2cSFRYrMbU07oaMmHzu4B6RfJ+a+ZzpBEUzC9+IMfgAnKXD8yaACQZ4
 5HbVbVEkurAxbdH6YI10aaPerMTI60mhKGPGAWvCj6yHQXXkuiwqPRYMEsWOLzrafomO7VKcx2a
 3SvbAi2+hwsMbnwbeR09dbDBBq/kPTNIID9mh1ZYQs3q3fFCWXdXcj7g0SKOKQFiTnAwfdt8x0v
 cJaVlv0H2yG8UNtYUO1/7SbQqu2yKHt6PdjGNgOB4ZvAkMnw+mkf5vq1U9ysBbgHG+tsIyNelg2
 xvNEehQMdrmM7eNeBTzdB37NcjvJBACNPM/mwU/Z2qk29u1t/JdkFcvdsHPrc5WV10+vO1sW9oS
 TAE6gCbvhxmCSUA==
X-Developer-Key: i=bartosz.golaszewski@linaro.org; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

The full register range for ICE on sm8650 is 0x18000 so update the
crypto node.

Reviewed-by: Om Prakash Singh <quic_omprsing@quicinc.com>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Gaurav Kashyap <quic_gaurkash@quicinc.com>
Co-developed-by: Gaurav Kashyap <quic_gaurkash@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 01ac3769ffa6..5986a33ddd8b 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2595,7 +2595,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 		ice: crypto@1d88000 {
 			compatible = "qcom,sm8650-inline-crypto-engine",
 				     "qcom,inline-crypto-engine";
-			reg = <0 0x01d88000 0 0x8000>;
+			reg = <0 0x01d88000 0 0x18000>;
 
 			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
 		};

-- 
2.43.0


