Return-Path: <devicetree+bounces-80867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4D191A9A7
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 16:48:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC58DB20F1A
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 14:48:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 341FE19A2B7;
	Thu, 27 Jun 2024 14:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IDzKBfzR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF6419939E
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 14:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719499499; cv=none; b=KjU5EXcxrf5/OXXQUpSZQfQvcLvxyfr9z5MTUiwYQWBZIZYeARcrqU3HynGCPkEveQiwJPtk+8ImklmzD/7RTUsBkIVxNPYZMj2OD3Q0sWLI5wSs6K10wrutk8gH1THxvnR5z+ytwEYZf2xJln6dcItNZHTpZSmN9XUWkPzrjPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719499499; c=relaxed/simple;
	bh=bMFgCtwFkYJijaWBVrk925QYLyPp0DOg1MhfjncrkzQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jwDWd9gSYhET3ylYJGiuiCdw3ZhwZP8pZBoRVasP2PODl+aJUaKGlIOwyo97qBI7f/Y28xSnvyylIVrdMykDMq+nziyqGvwULvL4r8LiingNCT+oCR1MvDt4cECk1Lqsf8j5V7K83va9UFbaaHZrJIxA16zApxcRxTxKz1l49Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IDzKBfzR; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42563a9fa58so8512525e9.0
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 07:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719499494; x=1720104294; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rPvgc1Cco3SnaS+ergB6X4Qiw2lTWzLcT3q27EN/3+0=;
        b=IDzKBfzR+dvb77soX2mQEMi6yYgtp3uxXsCtlI92mPAWiFq2NQwEqZgMj2Gy00i2mp
         2xq6lYaKM3Euk1r8rL2q20AhxkxRBX2iiGzajHlqADEL+uW/KEx6huZYa8BiUqPLpLYG
         bvTQM1j/v5ApMGkoZqje5gXtemdRWQ1EmXGIM75hngo98RKOMigtO+/nRq9LqlF8d8qs
         lMNW+VQuUHqcuS1S+m5QS3lfeaeYhYDjLAikNorsLHEfmNpkb5n4kUkUbBuf5DA5FwKr
         f6D9+ujI6JYGOYXwS5IZ1zWqdLz1TAH/P76cdSHWVocAkv7h1S0ufhYiK1JIE6WPiMFg
         5Jbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719499494; x=1720104294;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rPvgc1Cco3SnaS+ergB6X4Qiw2lTWzLcT3q27EN/3+0=;
        b=E22kgkT5gibvtH8N/CBm/QMvMd4dW/Nkoe04Cdc2mPwkEjh2/aX6Xvd2npNL3iQYj9
         p7JU50rcvT13kf1bPSOVQRhJEienYEKXq41kRdSJaKYKrFHP41OUGYluUG2nRTzccIby
         KiHQbXezFk2sKRoKLLmAGSVAGD1igxgq7/6KkkZ1m9DBhxUoju8atJI5oAYrpxubciGs
         gLh3+8IRtbAS97ZmbItTI8DwbzVZ4kpEgMYs5C9o0XL0dvhHQTjkXjPe+SquKrOL5PrY
         7bJfOTpwndRzh+S6aBs77l8UXd1r0g1CFeXH9wx9Bv7s1D9tx/8jwTFEeeoLkKrfdYDm
         KdTA==
X-Forwarded-Encrypted: i=1; AJvYcCVoBwWj8uw9dnOR/w/IKXMuzccJ/fBvL50Yhon2Ppsw8C9FBbg+flYIH06gLdtJNB41Rpvolr/2Hkp1AT4+liZk21ozN1YOJ2oTCA==
X-Gm-Message-State: AOJu0YxxdZTy3XrUcShn9JHFJi0vNf7j2jAPaDCY/nNnZ5TdZZG5f08Z
	6cwk7w27nv2faNbJyASUWYL421WpHSjBGpFVvBGvno8ppLexx94WT1iVf21dB44=
X-Google-Smtp-Source: AGHT+IF6BIJRXTjP8xtoo7unU6Qn7gBQTh9iTGx3OOn8MnJjixs8Ql7ftO+NIPhHBCL4ETpldyN5Lw==
X-Received: by 2002:a05:600c:1789:b0:424:a403:565f with SMTP id 5b1f17b1804b1-424a4035701mr55384855e9.11.1719499494056;
        Thu, 27 Jun 2024 07:44:54 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42564b7b7c1sm31254075e9.23.2024.06.27.07.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 07:44:53 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Date: Thu, 27 Jun 2024 15:44:42 +0100
Subject: [PATCH v2 5/6] arm64: dts: x1e80100-crd: fix wsa soundwire port
 mapping
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-port-map-v2-5-6cc1c5608cdd@linaro.org>
References: <20240626-port-map-v2-0-6cc1c5608cdd@linaro.org>
In-Reply-To: <20240626-port-map-v2-0-6cc1c5608cdd@linaro.org>
To: Banajit Goswami <bgoswami@quicinc.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1889;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=bMFgCtwFkYJijaWBVrk925QYLyPp0DOg1MhfjncrkzQ=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmfXrYm25KsOdMgKu5bWCuwyAfo4Q9joBXCroZH
 BQvZiqS91SJATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZn162AAKCRB6of1ZxzRV
 NxggB/9Tzz50ODbNc3ZTbTTAV3ZN5q6sAUxAlyZH0c1WWSRRVNpLc8c0CUWkdrIag/mczavgW1u
 a0Z5/BbP5vG6SZygRnjg22ZC4UNKIwMI3b/X4D4OulwXbWcNkqTzhrQaGQXXLOUPOujE1FtZkw4
 cP2eqgA5Qvk5Fjym5Naje+oh2J5tVWrrbpmD/ApB3Q0Y23Eo10I2Kbl3/jtGFjUVUonA3QVt6Ga
 fRo/uhgiJNVqFnK0X5iNrlyaSOCuCw4KO0VK2Ykx4kDrxFwzLnPfGcGxRXsSR65Zr114mJKHt9d
 8LT+c+UZktbXogp0r1YeENF4dprUWfEnUQWKAn+fWpIriBDE
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

Existing way of allocating ports dynamically is linear starting from 1 to
MAX_PORTS. This will not work for x1e80100 as the master ports are
are not mapped in the same order.

Without this fix only one speaker in a pair of speakers will function.

After this fix along with WSA codec changes both the speakers starts
working.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-HDK
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index ce80119d798d..67c5cd89b925 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -841,6 +841,7 @@ left_woofer: speaker@0,0 {
 		sound-name-prefix = "WooferLeft";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l12b_1p2>;
+		qcom,port-mapping = <1 2 3 7 10 13>;
 	};
 
 	/* WSA8845, Left Tweeter */
@@ -852,6 +853,7 @@ left_tweeter: speaker@0,1 {
 		sound-name-prefix = "TwitterLeft";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l12b_1p2>;
+		qcom,port-mapping = <4 5 6 7 11 13>;
 	};
 };
 
@@ -892,6 +894,7 @@ right_woofer: speaker@0,0 {
 		sound-name-prefix = "WooferRight";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l12b_1p2>;
+		qcom,port-mapping = <1 2 3 7 10 13>;
 	};
 
 	/* WSA8845, Right Tweeter */
@@ -903,6 +906,7 @@ right_tweeter: speaker@0,1 {
 		sound-name-prefix = "TwitterRight";
 		vdd-1p8-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l12b_1p2>;
+		qcom,port-mapping = <4 5 6 7 11 13>;
 	};
 };
 

-- 
2.25.1


