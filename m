Return-Path: <devicetree+bounces-169740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4387AA980FB
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:32:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5995817A6B2
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC03274652;
	Wed, 23 Apr 2025 07:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x0z52FoP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078D526B2C5
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:30:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745393442; cv=none; b=Osso3H7thpuX0St8FUPQuTX/6OWszmac2QkmlgMgXGxKTWahY5Zn8CL9K3myYBdDpUNCiHN1l2SVezlxQvnlKo1i4X4TrVVIkLRVIamzh8MLnP2WhKmP0TrAjtRB7veuYav9QvmVz+HgZaDuw5AsmvnmaJPVQ4A2eW/1L35cdSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745393442; c=relaxed/simple;
	bh=RnLVNTomoaoA0GKAFcSpwz9U3Q5q3LRauTcFWCoJCig=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E/aknQTBH5xTUotX24y1XYN5ZS8nbO/2HQEsCd32F/s1Dj4hPjcAIg77HOEjhwTchqu2eRqiD2IBBWqE/VE0dRYlTojwAtBAncb2pEqkT9iWyqS/5Tq5Sj5ly7Kmz5zxO4piKF1hpxh7/ThBZkSGHBaLF2hX/LamvxBcnAbok4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x0z52FoP; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39ac8e7688aso3762651f8f.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 00:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745393438; x=1745998238; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aw90kBhonzt0etQPaYxZ0xyZQADb6qJo1Aqd5nSon8w=;
        b=x0z52FoPxET3ef8Rsdm8vGx6dJT4hZIsPWC4taDnfzIZeGGxmRIWMwbbx1tydtEfOz
         WjVfbJA07GqDjKdOKct4k8gqXelGLlo1LpyLcCgADwNrVMyTEDMh5tVXip+9gStRrusb
         fXOZZb78Sz69xoLRi6kK545VvH3xKacTv3f4dnZ824UODWbzXHaqTNWweUe+/KuAg79w
         wk5KkiuCKLZp1YSO+0e4WoH7MMyZstGDx7vTrU527EG5d1Ue564iKMwsrRT/IMFuAB+M
         00EwLVHxMdWGW4LKKHhT3SJRP/BjGyySkvMeOV9Vn0lZNNEUwFYjhsYMQ9v/V/eEajpX
         5A/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745393438; x=1745998238;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aw90kBhonzt0etQPaYxZ0xyZQADb6qJo1Aqd5nSon8w=;
        b=qVrE2sEge9Kl0jg9p7ZhXybQozojyPtQFgf+K6fUAMoiPL3FcKiK+UawvCM3h9Y7nV
         aQprXtuBbm7eMG2fEUAaVjR7M/hmzFzhUnBChAdVItg6CtKcLNPJ2Yso+APjJa5WjFbG
         zn2o7rmv+3ieagswqNmALAa84E4WSmIxfIsuWBHJ2cxCFOAbunk3rWdY0LyuIEw0VpIg
         BAxThh1Gc8oE0L+k0NrtLRk7lsWcLrgk746DB6eAG8SSWpHHubrWFXUYTmugCR2jEjqq
         GcHIqqWKFwD5X37ev6oIRjWDXV+caRILjh4RBCQvSQ7n0WqLj0qJYOJJPkdjSQXjeibr
         KMxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrRmi/C0H9fVu+qGPB/u1kL4Tqd7Kyhk2n+MtC+hIGPjGaOkYH9C6Ytg1OqLj2E711jXuoHmb/5Zh+@vger.kernel.org
X-Gm-Message-State: AOJu0Yy76q9Dnakc4SzLoP4KMPoVrXfVNbamRfagtq2HbWB9xHjCyVbu
	ar13x8Vv6v88tlmixrljDlpylQK443i8u5uKAnem0rQYcXigCG5t3M4j7uuQ0bA=
X-Gm-Gg: ASbGncsadf4Zbin3aVp4MmkKeukypWblg2uR+NGymsy7NqUHgX9sjOAHzcK75cnazT3
	Z4+4ISiVxIl/FTb8ohEYQqITLnOzk0ZP+vtfoOd+GCDL35lclitMOA+qbZoLx183BMUeSIB1mmv
	E+HhGr/D4xE5RvZZ7LDdLgtYKKDt/HKhvLnw8zZkg19kUJQbzk3zD8Bf2raPAbV0hBvgjE6tfPy
	/pX1E4iooXrpCkYMOGLJYJlTkjiGYu8sycsE3IUj7gx1LIVuDo2DPxL+Gs6pFlAWCgO1sfAJIev
	E1rjZdDf3N5Shl1t9YF0a44anJnd3tT5D2jwmB9hqtjP+q2Si7X1II4=
X-Google-Smtp-Source: AGHT+IFcdiZukzdWt+N7jGpyVttEY2AZ2bkU0KD8aSTOXRWRwbpjuOWS+5eqy6YaGVuCLbhK04RUNA==
X-Received: by 2002:a5d:59ab:0:b0:38d:d701:419c with SMTP id ffacd0b85a97d-39efbace33fmr13697317f8f.41.1745393438070;
        Wed, 23 Apr 2025 00:30:38 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:67a8:3ed8:e19f:5eaa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa493115sm17761699f8f.78.2025.04.23.00.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 00:30:37 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 23 Apr 2025 09:30:08 +0200
Subject: [PATCH 2/6] arm64: dts: qcom: x1e001de-devkit: Fix vreg_l2j_1p2
 voltage
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250423-x1e-vreg-l2j-voltage-v1-2-24b6a2043025@linaro.org>
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
Fixes: 7b8a31e82b87 ("arm64: dts: qcom: Add X1E001DE Snapdragon Devkit for Windows")
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e001de-devkit.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
index 74911861a3bf2606add8cf4aaa3816542e837513..4693e4c9986a6f7d14282fabd584cc16f43f0f80 100644
--- a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
+++ b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
@@ -747,8 +747,8 @@ vreg_l1j_0p8: ldo1 {
 
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


