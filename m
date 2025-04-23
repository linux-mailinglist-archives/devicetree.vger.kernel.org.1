Return-Path: <devicetree+bounces-169742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A1FA9810D
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:34:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8426616DE12
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:34:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DC382749F6;
	Wed, 23 Apr 2025 07:30:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yZw4WBUz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBECC26B0A0
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745393444; cv=none; b=tHRimLnqRDpSpyNkJMwogd0BoH1Af/IsJAwExvDmGOUOMtqI0ORPFbb8XUTQj0LL5iq6/y5az8+S/XAC4X+UruIWTx58T5Kx14f+WJSZLD8DtsCBwfdMI9H5/bhCVlnCn3ppLZgD8CS1cnRAdWDxzzVcPNtsrO8hkDwAts4xHmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745393444; c=relaxed/simple;
	bh=OGFPRiVeOp2qKkd93z5kF2aUIB4+PjN1a56OlgE6zuk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VT2N2KP1u38xrN60W5IYf5o+7WuyuaO1eii2WIX9Xx3cHZnJR0H+6FWgvUDJ32pdYivwP+KwcgecFFXRA+iOYV5q0GjwyC2novWD2bn42PJlHw98KEQSiRfRP5c9Vh08yvPI655R2iLzhhKtuntX5yO5jZ5PQH5cAESuR73/Xds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yZw4WBUz; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a064a3e143so795811f8f.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 00:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745393439; x=1745998239; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AEPeEqZil/T5Z7MPC/u/BIquWlke76+jXR6HQnUCPNY=;
        b=yZw4WBUzTiFbv80E63+PH0vaCUOlWrxq8YSh3afFu4DoGPO7w7bKkctbbT5R0hgjkN
         2TClTnTUi7RUh+VwMLvcM4IJCKBzrGYkPockbct2k2xQvQz0Pi4SGxLU+ohxrxPSoWYv
         JllzwaoQnoeCUIQcbpOey2M/qN2vae6jbi20fhpsm13yL4DUwdGjpt7qKHApv2fTWgA3
         FQSvhquFZXIWhdZ6iMtUU/mxeXGeZdm7SQHpcv61jqHvc17NizLdWaIEU93aRcGG1cQG
         G60vAVKfy/3gZFvyiQh1Q6eQjZ2QWBH5oyrVCQ9NIvisztJ/iwLCMjFSk+p1SMR9JY14
         t11w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745393439; x=1745998239;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AEPeEqZil/T5Z7MPC/u/BIquWlke76+jXR6HQnUCPNY=;
        b=oYo3MH8E6vyvcRxElXSBWToWJMNFW1pQdQxiKaq+6npYJ1wvYivyBIzFtox97vgg7v
         Cl6WlxoSrF0MjYH12oS8JhFdUU7RwiIYnV23dN0eZdvpek2kfNiNKrcx2hr7LMsVAp8k
         SL0YHsh6M8b6oOIENNekwZB/Yn+/08N+9ES8h8no1vX7DGOmWsOxYJ9zwWEL0KbrIy8Q
         beDQrfbHQ85DnbsGkE7QR3ypuZNxvI/Zk/zg3UtKsJf7fPXkWGa4uKzIA+LJmokxHaGy
         /WK6IQTPEdgPvGkG6RTFDaKXHGKmKKt90U/3UzWx84EwG6OqeQnh/ZY0EKe7SKTw9ylx
         Dl4A==
X-Forwarded-Encrypted: i=1; AJvYcCWFeEIEpE0M502AHDBDJbTs6Z+75g3Gj5yfYroP3w5MaB3lfp297RND11jrfa2T9nHi6TqjAsTQ1kN8@vger.kernel.org
X-Gm-Message-State: AOJu0YyQGykR0T4yPEJBMWuPriAW16JZN/jsELSfQuO66rBbHsNHOg8V
	PzTldfvobhOeCB5SgwxZoJk6iCjy4b3CGEMSwB7puYgNqYIHpgmlu9sg33sk/jY=
X-Gm-Gg: ASbGncsx0mt8JPvenxTCM14mH8WqmAF7mZwaIQPH2XYtQ2hvw06AiqVy5WjMZr09Nu+
	PYCbAwC4zPD+CU+XbOl5IQ6Ywt9413XKO4cejU/IyG4RVkdCd2/3U3IlIwIXgQ0G7Sc5fhE/zJ8
	XgFE0R04Q/lSaXer6XJCAE3HTA1HcdWgoDgIpVkMmZ+WmshEn6fwWDYdHOjkbkN95wxvYMrDvUj
	t/HPghvcOAvAcTh9xduBS2V9j0REaa9S4amcLhXZ+wG95Q7liqqBIxIg9E+Wbq32Bt1gMLqYVg+
	wwsHge8voTT+tm9GCUg7AfkhtnO5c/i223uJvolwqRWuLXWgzDfAwWQ=
X-Google-Smtp-Source: AGHT+IG8wc8v/scENBbWgZ3YLGA2Q8Ik+3Q6D9mj1DGO337fBhfOQlX35NB9ynMbOYJsc9Ex9XTJbQ==
X-Received: by 2002:a05:6000:1448:b0:391:2db0:2961 with SMTP id ffacd0b85a97d-39efbace3d7mr15158756f8f.38.1745393439032;
        Wed, 23 Apr 2025 00:30:39 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:67a8:3ed8:e19f:5eaa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa493115sm17761699f8f.78.2025.04.23.00.30.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 00:30:38 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 23 Apr 2025 09:30:09 +0200
Subject: [PATCH 3/6] arm64: dts: qcom: x1e80100-asus-vivobook-s15: Fix
 vreg_l2j_1p2 voltage
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250423-x1e-vreg-l2j-voltage-v1-3-24b6a2043025@linaro.org>
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
Fixes: d0e2f8f62dff ("arm64: dts: qcom: Add device tree for ASUS Vivobook S 15")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
index fb9567817be6f887c9214cafbfbabda8b8cb8203..c94ddba5fbf1cb8ab2bf841cf51ac3553e1f95cb 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
@@ -351,8 +351,8 @@ vreg_l1j_0p8: ldo1 {
 
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


