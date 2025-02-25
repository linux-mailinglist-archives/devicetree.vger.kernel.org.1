Return-Path: <devicetree+bounces-150839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6B5A43AC6
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:08:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4396189D69D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D227F26E15F;
	Tue, 25 Feb 2025 09:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lCUJpQd+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7D7269828
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740477578; cv=none; b=UvIMbvC/CLndGEklaW6PIzcvC6/71NnDK7Hdhpbbmnaec1zIOrCOCjKQVrHiZhUf4nerQUAnSl1BGuICy96j+G0jMlRILbNgHqJo3npVW7/LvUKZcltjgFiCSOHdtKbK8oQON/LPdB3d5+YGe3IotbuJM3FuAKVAw8bXkdmQoRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740477578; c=relaxed/simple;
	bh=Use6RFmohFAguMjNfvsYL1WWbJ7F/XbJAq8uZ/6xVQo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iZ0J0AaF1mgZRNmaUV4FI21yo8FeAw/+dP/TsFk6CmtguuDOwrAQS7JNomLXo1u2w+TnqeYHc58KbzdLEofGJSLoclKhzp1syB4U5/yqk56GBVL/06Jo4hNM/xeCu54AkyTOBQ8Qd3ivlfM/kTURopzi0Lo8yG5PAE5dDkrrP1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lCUJpQd+; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5e064eff5daso832071a12.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740477575; x=1741082375; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=siFt1Rf17aQe9sXvLDxB1vAZBkxV9WrzrueF+H/8o14=;
        b=lCUJpQd+8Rc++h74e3+7/rGQbJMzkMila/ffQ+6dK03VjSxZmBBt8Pe4LOO8lhUVxo
         lJLYdjsUm5JStlqDFnTVf7tu+iMLFZlBu3nHYGMvxK/6c3h7mQYaVf9g36KBrw+rjM49
         76RuFrmcIQbIjc5Xc1myVa9aJFq9yLkV3npDjtn7FJdP0xB4LOHUa0t4ydUnsmxQRfPP
         CUwolrZi1pdTSwSOekFwQ1N7Ci+Xt5u49v35xWuJelDTUpFrsPALv6qHYOFQuLxGJgNp
         mYc7oKT5xmwGinvfRS8FBceGMW1ENfg+QA5MioVQegL8Jyny3AKyfWLVQuejLdMR5aNf
         hb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740477575; x=1741082375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=siFt1Rf17aQe9sXvLDxB1vAZBkxV9WrzrueF+H/8o14=;
        b=b6liMkYHtYe8dFgM8xXnPqc7aBjt7dqPDPHYp/3KbIKj16HKrATSCL5LHUNACm0tpD
         OJlyZGqAHUl36qlPgDCO00Q7qlSV2mXqWTsaPOIeT5Kl9O43sJC/XpI15K3TvmR0KA9m
         FK2U+iyl/w9Vw5b9NKTCfCuJ2hwbcbTwn+45yu3sQ94ngZxg1dnVcDW95vFRb1a0aZuJ
         FiTRfTUwd/pge/oe1wVl15oHPX/iM9mruqx2+c7YUlYrq5hDmmgDZJA9g/xR5waIuZ/B
         8Mnc2suivRafUqzrYHOmCfVr1jrLfbsTbgHe3d8kqIGs8H/Q0yFmnTFf7uGCokDqWqwH
         w4BQ==
X-Forwarded-Encrypted: i=1; AJvYcCUj3BAhCTHKedQH51/PkSnkHkxrirZQHS201n6/zyvSYfh4cS0JcD/2vYeOL2Tp3Uv73bROLkftjwQw@vger.kernel.org
X-Gm-Message-State: AOJu0YzGR16PJ5DXTBhp6+mm1x/n27nEZ9IJQV/o/hznAAjsQqCiK7XY
	X+5iQ7rfaN6EHAVXPw0vp7bsifHntQ62Vz5AD7G4NiW/0UoZAXAKob0SGrSvtSU=
X-Gm-Gg: ASbGncvoRJo1S43JhlhKL5CKuDIK+UleGX3yn97kt14aqTl0yJnJ+QgWFxBF4AlElHZ
	dsW3xWmG1YUy/2qYW/btOzgJ/ptQaso25ixEY2iX9DYiQJA7WKrBcWz+9DWnnn34xX+wxC5exr9
	7kP/9HEHTe7BcJHc9c4d1pgfzmCaJrQ2ZkG2EGrp8qsu8f3wCscCKKyizRUPgW6kEaZm25Y5+h4
	DqOU1K5v4Iv41Z+wOD/h4GYsN1iNxlPsLYZQsV0Up90c4I4iMKoufzMV7HN+r+Ce34nJcQvap7v
	6nz8GpjTJlwatlrvk7CSZlapySCq7sbOuQ0++B7LtKaxgQFBPVXx+q4qdtjUd4aGAkYNlDCO5W8
	4
X-Google-Smtp-Source: AGHT+IGdddJo4VWIt10W+E1/Iko/ufJtGmlgoul8czpa/Vlv8haaYwr1ZNjdAQ2cqyGnrM6ezz1kfg==
X-Received: by 2002:a17:907:9713:b0:ab7:f92c:8ff9 with SMTP id a640c23a62f3a-abc099c6f28mr692893866b.1.1740477575144;
        Tue, 25 Feb 2025 01:59:35 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1d59391sm115164266b.56.2025.02.25.01.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 01:59:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 25 Feb 2025 10:59:10 +0100
Subject: [PATCH RFC 13/13] arm64: dts: qcom: sm8250-elish: Switch to
 undeprecated qcom,calibration-variant
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250225-dts-qcom-wifi-calibration-v1-13-347e9c72dcfc@linaro.org>
References: <20250225-dts-qcom-wifi-calibration-v1-0-347e9c72dcfc@linaro.org>
In-Reply-To: <20250225-dts-qcom-wifi-calibration-v1-0-347e9c72dcfc@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1058;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Use6RFmohFAguMjNfvsYL1WWbJ7F/XbJAq8uZ/6xVQo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnvZRyuy+D3bj6OZpYHkSLie0ePoetBPTy6Ux9l
 GqWNF8L40+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ72UcgAKCRDBN2bmhouD
 1/+tD/9BcMELPcgX2zPVkDQdO/0GN6aEnExlZ6WasD8JLbcInJ7foopkeZ0P/94kSDtuhOIdApm
 ZqJIv7atb4jLdn+oaJoZDUGLqf7CWrH/k1HMlRY2wxd+08Q5DzrHeQoYfvrw5yU1ga2wChrokxm
 Q6jajeSgFIpYsD8/5ZEA8i/95i35kgWeioiXTYvhnEkQlgirCYLvRSEV6PyiFqzAgCHZFsVFOg9
 JyVGCcNwbPtl0mqbJ8ChrVEG+C2LXc10THI3tlI2sb4CBdG2GNuP99Ysa+4Ug15UhHSHCFe9mkB
 sxnQOkpGSwVL+inYJu3evQRr0ooWP1IWoHE59W+N6FzUSUA/Xe6eHuBfQR2b2XY6mZnjUcRwxBX
 G6qeQK4g4VDOiVvjBgj/bYyZt8EOfhw1fg7Gm3zhDKfALujNGhdcYPS1abT9ur708w4s8uIab+2
 ST5Syo05bvq5tUYMgK+AsLDhr07oCDWPCSkB96WejBlkdbDaQOcHpHWKM7LoIPhGcYgvPYiiZo8
 PJaZMfpFrkfJZKTuIfw8F1pW7AdlYYkomtVvBjVLBNRdE6r2UsAUP/Rt5C4o/yjJ3gOdOSfXu50
 /O+qlEaSNKL9XqLr4l06vvgWoazc4aVEc5SV160V5XadoScHQ9oP7X6ObeEzto5/e48/Ulzk764
 bHng3NjrAKB1jqA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The property qcom,ath11k-calibration-variant was deprecated in favor of
recently introduced generic qcom,calibration-variant, common to all
Qualcomm Atheros WiFi bindings.

Change will affect out of tree users, like other projects, of this DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
index 813b009b7bd6818b92b243f0982d2c7ef903d421..01a321d801af3389258abd54e60c39272c59fb7e 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
@@ -699,7 +699,7 @@ wifi@0 {
 		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
 		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
 
-		qcom,ath11k-calibration-variant = "Xiaomi_Pad_5Pro";
+		qcom,calibration-variant = "Xiaomi_Pad_5Pro";
 	};
 };
 

-- 
2.43.0


