Return-Path: <devicetree+bounces-169743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B32A9810F
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:34:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 64A7B3BFB29
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:34:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FD3426B0AE;
	Wed, 23 Apr 2025 07:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fC9DZgmb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD01627466A
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745393445; cv=none; b=WaJ6edmGlWpI3pi64Ax9mSit8MGSgMdU4/k9d1w3TB4BAOy52c6kBmvRm9P0HC/xEifEImGNDSAeFXesUxyn2VY8xinHNZ4+G74KIV0Q64hsnsyU2jf3Wy+7N37CS2njU5i7OcICcFQVfFWqN+usMvqV2kgpJwl/iZPqzjiVgIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745393445; c=relaxed/simple;
	bh=mk/A8Bh9qTBLy1XZnf66VNgDUYP6yX/XX4i8sSGupyA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lgbC83R3CoSlyBaOxAxoTa/yIE5FN/yt0nXkZEnSPINf8uT/cNEx5On4HKmd/7PkHKZjikEKG84CfX6N9ZpMLor+3hEDJmwV5XG5pw2XRYDVQaLFXWUwnQaJhp1lVTwIhP1hzz7HkuTzhmTZAGxgglgZvw3Zur1ePPPY7ZwX05Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fC9DZgmb; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-39141ffa9fcso3463094f8f.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 00:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745393441; x=1745998241; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4+qLQE/G5JgFe5SKAZGwIGMQLlSZgurNA9t7PIViak0=;
        b=fC9DZgmb3wmcC+XBVMStOlPihV1+DwpaZOnfhbaMHkQc1deMxUdTxa54g0gdf054lD
         JXdix3ymf1hCJPbnmkXlXdoS+cnd4vRJk+MYGKbwAWbUnEJPWiaHI4HnkA0vdG3PhJ5A
         773Q11zB69R3/jNBmoVd+Z0RAPhmhzhsoCNW5siNtx7mjSHQJE3qv0ZsRISyz4qII+vp
         te59BnlgZLjwPHFoDMrlVGPh8oBZLCM0YlXLqwIgKch1SMBbOgDNtYML7TXmSR+IueIT
         OX5H8fx4eRXxJXhEUNDw3rsg6/YiQLW+9stwAAS3hnJMsOah2tyZXuD4GAYw+AQSbbZX
         EFlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745393441; x=1745998241;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4+qLQE/G5JgFe5SKAZGwIGMQLlSZgurNA9t7PIViak0=;
        b=j+hnW8W+4oEl0jX328/ZF8o8eQ9F62jAXKoJaPBH7FgmbClxDQlTCS8o9p8prf/RCm
         lTqNEAsliCplkO2+ranJzJ2E1c6GCZBROFa6HF6G0CowFaPC+l1gBQ6U6i+u4P8xJ0R+
         2D5x70MrgB57R02zNn3ouW4LnvvMcsUkZgFyeiQ15Pj1BK3ErHQyn/SM1MPZ0CMu1h4y
         FPSt4h9yJ5WJrYHAhU+k7URDMbnLMtgAh+UHXB7+87+XUtZgk3pfNcCBketWSa+yz7Ek
         eH9eQ7Vw2csFqflqYiRsaa9DBNy/g+8IH53VD3oPF5RD4X6bDLUownlYMaiLelmJOHBt
         Xxyw==
X-Forwarded-Encrypted: i=1; AJvYcCUroMOgp3Qtn1dDfuMfN3/zmj1/kgW74s933B+XvR8nIwgWFZZYflOANb4LbMREOm9USMs3C3dWLLcQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyjiB8X3FHJu7GLHBBhFp4w0T7upDQ6xO7DAmYJP3WW73uGAJ40
	YToq1NYO7ynJMSLCT/1uhjkbfG2T+7iZzGT/UMcgKvPCsS8NYNRSfUAchE7AAgM=
X-Gm-Gg: ASbGnctsXnLtxQlPT8Ptv0OZkFDzpNCm107mbnN99qN5OCGwFvggnzn9+6AOE6tuPU+
	zo9zSpN7BmmuXP9h9YXLTpj4B1fEBfwi3adC/re5U8CouAiPI2WB0fbWjyvhf6rya4cq+y0lSlA
	T8tPiF5PYgJWyLNJZkVjXvPgxJ2LZjjw8+q4AMaw8k4dfP24qmGrhLCAf6gFEFMh+aA2LhXhwzu
	obqBJt1DiRoLr6uhRqYlAuxzJNRZ6rNJQmxYnFZzUhtsEX7f5PHYjSbVZVzdFkknn6cT6FcANIw
	3O559CcUkT3j9Mcsv3tYMs+LwgP2JATb07eDz6tNTx8HevG4PAR+qk7fu/XA+IHwMQ==
X-Google-Smtp-Source: AGHT+IFFmBIBiMdI4ipN/PT3uCrXPyibIHVQMt4aTnQqtk0cM/d0KQT5NIHS2HcuMIYJAnnUAckFvA==
X-Received: by 2002:a05:6000:4287:b0:39c:13fa:3eb with SMTP id ffacd0b85a97d-39efbad2ccfmr14484726f8f.39.1745393440963;
        Wed, 23 Apr 2025 00:30:40 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:67a8:3ed8:e19f:5eaa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa493115sm17761699f8f.78.2025.04.23.00.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 00:30:40 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 23 Apr 2025 09:30:11 +0200
Subject: [PATCH 5/6] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Fix
 vreg_l2j_1p2 voltage
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250423-x1e-vreg-l2j-voltage-v1-5-24b6a2043025@linaro.org>
References: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>
In-Reply-To: <20250423-x1e-vreg-l2j-voltage-v1-0-24b6a2043025@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Marc Zyngier <maz@kernel.org>, 
 Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.14.2

In the ACPI DSDT table, PPP_RESOURCE_ID_LDO2_J is configured with 1256000
uV instead of the 1200000 uV we have currently in the device tree. Use the
same for consistency and correctness.

Cc: stable@vger.kernel.org
Fixes: 45247fe17db2 ("arm64: dts: qcom: x1e80100: add Lenovo Thinkpad Yoga slim 7x devicetree")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index 445d97d67d325853b7dcd2060523e7469ed4e6ea..9fb306456e33a16db37522b3ce9099cfd58c14e2 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -513,8 +513,8 @@ vreg_l1j_0p8: ldo1 {
 
 		vreg_l2j_1p2: ldo2 {
 			regulator-name = "vreg_l2j_1p2";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <1200000>;
+			regulator-min-microvolt = <1256000>;
+			regulator-max-microvolt = <1256000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 

-- 
2.47.2


