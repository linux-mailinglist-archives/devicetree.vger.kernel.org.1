Return-Path: <devicetree+bounces-70528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8C08D39C5
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 16:48:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0285C1F217D5
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 407901802B5;
	Wed, 29 May 2024 14:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QqPE6Vw1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B06C180A99
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 14:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716994033; cv=none; b=KRe5Gc3R+RkWagF8UMVn8OB7knA13Le7faqpkDkR9n5AB6DPaWXS0bMD/q/uxsYdK5DE+MMzmgpeTRapoPliQKgSKxxWPVHSJxMSCN3ZHaY4HjfcD28nr/XgSzdEqO1nP/Hvtm6ruVNZ+O4KUHcI0YKjijWadXYxzqq4EXn8fMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716994033; c=relaxed/simple;
	bh=G5RXv53c1hLv4LM7F4zn3z3FVONduXaRM3LwSBI/B10=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K3V/eaAVTfYMG8qXOgSuRVLec7ZK4x1bq7FMOT5EgUiXSefY3b8Tr1tcp2pekFp54h4k6Ur1Zsi9PfYSkNXG3PP3bpYYsSwEbTLEsjR7YDKPZcXO/v5EnZ9//OBe3wz+j+n6LsdJnlksrI8K5VxlgznZ83xVxT1pQ8+7/2ck8pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QqPE6Vw1; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e6f33150bcso21877111fa.2
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716994029; x=1717598829; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Up7voLI6IpTr60tew+zNNPmNNe/ChsxQ/yaVPYl4Apo=;
        b=QqPE6Vw1AsjtO2j5UpeQ0pMNY1SU8DRnaSQSUKsEpDWvD9lAyaroHxy6kZKNY1cyQw
         Gl927igCigdRtl2++OnjZHbIFHBjXbqr2WPkJRm7e7zpkbQFMrQnmj34jQjZKqeVumKg
         5D7Cp7i/9T8m2j6lBg/iJTj5pZKP9fW914Dyz6cOu7I23TbnU5hGFmqYHrxN5pZaQzr1
         BUKmcvtj4B7uPTPeCY7Jy8IhYZVbvyE/lBg16gor29tAdlJEZawFACFnUHvy6BTyUtmF
         /X+zQyyKS2TS2RWL/8HB0FDZ1MHIEFytszJrODMlABz178bojgdwZbnhvJ/ZcRITkD3W
         DuVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716994029; x=1717598829;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Up7voLI6IpTr60tew+zNNPmNNe/ChsxQ/yaVPYl4Apo=;
        b=Y2qsv8UdIJluPLdgG0yzxlrQAYq3LVo9JrBnasAg+UGoXPWQZf/1/0kuGZeAHbaIY2
         Ytlw9XoO7lM45/otMEbuRRbVxpOL6BxBuNUUX7MjmiZcSzanoIMAA7N/etlZUDdqMRyK
         Rg4DfAgzstorzk/ryf1i6OUhEU1mOnH/fyX8lzOBHNLIbjOVQkK0bzAdQPvpcbWgK2Zo
         5bJVEi9+FXutctTQ4cuNNHojbeGXREMmXAcKP43JGoE8jDH7J/bpqBzpd/xFuBRD7peB
         LdVznel+eT+bQrUuH4Y92RPdOHYh07E/KrZ76hi+mvxnxYPuu1RLVTJniB/clAc3A3Yz
         H9UQ==
X-Forwarded-Encrypted: i=1; AJvYcCU82+thNVxa27/aQ6blwrmNc4wInynALYoesjJKfBjVxMow2PFtECa/ZkaPbjJOj++67jJMkyW20vzC1RzF6psLUe6EeKodPz2QaA==
X-Gm-Message-State: AOJu0Yw4UjVw4PlCV7G+p5vyjR+rjXTafDrKhjIyWhwKfU85WGBVb22u
	qe880aEjRqioslWbRYfEEES/VJMiaw697ZdBXcBYpbs5cH4eD2JLok/KAFt8eUc=
X-Google-Smtp-Source: AGHT+IFdxPSqIzYY5/OBKUguzAhdWTxukIPVKeTWkfd2Z5W4PhNDxwmdr25oHVctqfP0KIBbIkg29w==
X-Received: by 2002:a05:651c:1992:b0:2df:b7cf:9607 with SMTP id 38308e7fff4ca-2e95b0c6fb1mr127182211fa.22.1716994029215;
        Wed, 29 May 2024 07:47:09 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e98c45df0csm3791951fa.68.2024.05.29.07.47.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 07:47:08 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 29 May 2024 17:47:06 +0300
Subject: [PATCH v2 08/14] ARM: dts: qcom: ipq8064: drop #power-domain-cells
 property of GCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240529-qcom-gdscs-v2-8-69c63d0ae1e7@linaro.org>
References: <20240529-qcom-gdscs-v2-0-69c63d0ae1e7@linaro.org>
In-Reply-To: <20240529-qcom-gdscs-v2-0-69c63d0ae1e7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=792;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=G5RXv53c1hLv4LM7F4zn3z3FVONduXaRM3LwSBI/B10=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVz/lhpTmu53rAd76n5+GKFaDXiZ6DP9X7oga6
 QEGJknzQ4+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlc/5QAKCRCLPIo+Aiko
 1YzQB/9g0vhYfrr9DdBzFj2kNiPPOInEcPHzBBpJbcdTEghOUwzS2CxBmFQTirxRXCe5rp+/QdP
 eiciSjwSsL0rv9C+X5z6UPZtUJSz6actn2wPt0Y2s9jAAGJtDEC4PYBzqREibcZ1qSd/0w7HCwV
 hzcVeIKmdL0/FAsbl6GZj84Yg19e0NLqW8cpNfyd/6tEcSWI0yfXLLG1OAzZfnK6SjbxjrvRx6e
 TE9GYY6gv5Wmk6VsJOtYemZIlRk210HM1kdO+lA55lwQwAiPL2RKJXMATmNKXjuFwkouogcboIC
 T5mXm9Wf8bLhCwUsM5g1iFF/OxO9+sfCMG4OXm4TQb/yth3V
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On IPQ8064 the Global Clock Controller (GCC) doesn't provide power
domains. Drop the #power-domain-cells property from the controller
device node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index f128510d8445..12cf85441a0b 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -519,7 +519,6 @@ gcc: clock-controller@900000 {
 			reg = <0x00900000 0x4000>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-			#power-domain-cells = <1>;
 
 			tsens: thermal-sensor {
 				compatible = "qcom,ipq8064-tsens";

-- 
2.39.2


