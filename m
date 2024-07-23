Return-Path: <devicetree+bounces-87551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C26A4939E0E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:39:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68DBBB230F4
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 09:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A60BD14E2F5;
	Tue, 23 Jul 2024 09:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RqPIcQFu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41C714D6FB
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721727535; cv=none; b=ctdvZh+eNftjgh3dwASplQhBzdcNDeIZzapuMB+Sakb877j7q2XZ/MAZFnMOUZLop9EOxeVC2kxlleeaevNoLyWYUJ1xg93/anyGOFgMNCAs2u8oOaEFir9uroMPZpFuxizzQcgQelmHUvuH9crZGe6+25hXCiKf+6dMZ/agd0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721727535; c=relaxed/simple;
	bh=mCrH0cgp5fmcE5pmSkYRN2GtzDk9H74wqfUqUxnsNGY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ME0jJRPZ/JM15jZKBjl08yLmuZh7WLd98fKI/vZips/u8kIMrSKo8vuL80Nhyw1XJESOkWrV58X9XPJ4oYyVZQxi0O2QY0VB9adN640dmsBhtC4/B/7el31hOfmBHD45kzuv3fk+yIr+TaalmHHr9uy5W8TxwgyUw3g2avZeFt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RqPIcQFu; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4266182a9d7so35260865e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 02:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721727532; x=1722332332; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ojp0VwHIT2kpITfp/isAEHONBhuB/DOD8xsszRoMWcA=;
        b=RqPIcQFu9LMNYffDn5LqKFaZC/OzxNySzMXVaYffozOEpceJmOhD9CX79yJFr/rWYL
         MTHyv9LCRn6b4raJlKSmNSVeFDxf710pnJkGI7SCX1ds3UKax/HeJaMDe/1zCjntSxSy
         LP48J/XZK91SgQRhlVwQXJsH6yrlEeOsQil4KZYEht7l90+u3/nQ1AgRUsA48T+Mk1Vv
         QWr5ckd6s+P8VVYUFhhVqoz7uXWLNO/E/V9a664QnDPr6ZsOFOfu/1DHZd6dc0RYk70I
         tbBctT2wp+OV9D7JlWe1oayhHQLueuXlRnc7mqr2fdEfop9huYeO9sYwdRQd+8u+fg13
         HMtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721727532; x=1722332332;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ojp0VwHIT2kpITfp/isAEHONBhuB/DOD8xsszRoMWcA=;
        b=wBEPck3tH1+D4shIjsfMuqonBUyMu6yiAsmX2kgxLtrqSDMwKleIfhxQUFADj4GoBM
         u8J/sALDptof9irJbl2geZqrEjnGpYOIj7Ck2VKgD7V4mqCOjnyAIfNfcm13Zc0bbDUI
         7JOVdHWEx1D82vHWHa7SuvbL4L50FpfTtcD2ISJABcp9E0J6qhpooaoN37UIJ/OjB8NF
         MHzuj7hcLnqnar/K5btoEXHemaYxOrTiAIYxfWHY4EsQXvyiPze9gtDjPEpnd5YPQ03W
         oKdukZMUMzNH2OGPjQOYNNF3xYAI2B4fOUVbZ4OqjG2sUBEzv/ly2FZTn3ydzmSGEgyg
         haSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUS3Aqs5d9ry680sJ4jpPRmeJDjRuEyY789CyLooR/Mix4qGTQBxSc/vxviVwxMV+8YLTJxh+H8w9ybJkIIvQNa4K0JAYnwK23MUw==
X-Gm-Message-State: AOJu0YxQOk1YooI/atDdmASbQ1QD8rIsjazHSBeom22WDoSf97gI5Fw8
	q7l7sR7uVRYzDKtn+erjHtM5FosM3w9Fu7LkzuiGqmvRNTcEvclgCtn/42MrLAgIIEnYtsGLqH8
	z
X-Google-Smtp-Source: AGHT+IFioXxuI58whoQO0RVT5qbjnfV+mJL5QSexJzSi8orP+5bzoctnCQ9Ax8AFS25nbasODu7uEw==
X-Received: by 2002:a5d:4285:0:b0:367:84fe:cd79 with SMTP id ffacd0b85a97d-369bb2a169dmr5541412f8f.49.1721727532318;
        Tue, 23 Jul 2024 02:38:52 -0700 (PDT)
Received: from [192.168.1.191] ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36878694637sm10953345f8f.56.2024.07.23.02.38.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 02:38:51 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
Date: Tue, 23 Jul 2024 10:38:51 +0100
Subject: [PATCH v2 3/3] ARM: dts: qcom: pma8084: add pon node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240723-pmic-bindings-v2-3-e1cd614f8c4a@linaro.org>
References: <20240723-pmic-bindings-v2-0-e1cd614f8c4a@linaro.org>
In-Reply-To: <20240723-pmic-bindings-v2-0-e1cd614f8c4a@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Rayyan Ansari <rayyan.ansari@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1087;
 i=rayyan.ansari@linaro.org; h=from:subject:message-id;
 bh=mCrH0cgp5fmcE5pmSkYRN2GtzDk9H74wqfUqUxnsNGY=;
 b=owGbwMvMwCXmtuJiX/SRuS2Mp9WSGNLmV2nO0lyyKoy1RPBjNEe8gZufftszkz2JFSxOPZd3T
 amIzdrRUcrCIMbFICumyHK46cua19udhK5srzoFM4eVCWQIAxenAEwkXoiR4eDUL1P/q6e7PXrK
 8edj14WQbD2WmRWBkwxqghziHrza4cPwPybE5YJEoGirt0rFwbbT+z+t95i4fPqrCb+v/81JFfn
 3mQMA
X-Developer-Key: i=rayyan.ansari@linaro.org; a=openpgp;
 fpr=C382F4ACEBB74212D4B77ACA46A8D18E5BC49D84

Wrap existing pwrkey node inside a pon node, to conform to dt schema.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 arch/arm/boot/dts/qcom/pma8084.dtsi | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pma8084.dtsi b/arch/arm/boot/dts/qcom/pma8084.dtsi
index 2985f4805b93..06e9193b87bc 100644
--- a/arch/arm/boot/dts/qcom/pma8084.dtsi
+++ b/arch/arm/boot/dts/qcom/pma8084.dtsi
@@ -19,12 +19,17 @@ rtc@6000 {
 			interrupts = <0x0 0x61 0x1 IRQ_TYPE_EDGE_RISING>;
 		};
 
-		pwrkey@800 {
-			compatible = "qcom,pm8941-pwrkey";
+		pon@800 {
+			compatible = "qcom,pm8941-pon";
 			reg = <0x800>;
-			interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
-			debounce = <15625>;
-			bias-pull-up;
+
+			pwrkey {
+				compatible = "qcom,pm8941-pwrkey";
+				interrupts = <0x0 0x8 0 IRQ_TYPE_EDGE_BOTH>;
+				debounce = <15625>;
+				bias-pull-up;
+				linux,code = <KEY_POWER>;
+			};
 		};
 
 		pma8084_gpios: gpio@c000 {

-- 
2.45.2


