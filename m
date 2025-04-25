Return-Path: <devicetree+bounces-170846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D87A9C83F
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 13:55:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 687399C2FC7
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 11:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E8A9256C81;
	Fri, 25 Apr 2025 11:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="casTvpNw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D40253947
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:54:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745582042; cv=none; b=OjDbeDCE4d70wSNgHQ6GmRyY2kpgNMuEzYc53dI+QBF2xYaf2X5FDOvIrS5mX/HW2p/KakC6waQtqRYZyhBPKGCTKZQUhzl30UWgCEriOR/+T3EkUYxU/xBUHF1EpN8KoaS4YFTHRT7/orNi3dcqWNCYJypwfwcm1cK6/Ab32IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745582042; c=relaxed/simple;
	bh=qe+W3z14Vw2wfaOu9ITi7s91Y9kEJeXglwzkNhG8nIs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uRaOrTksIGuNhnUJrYXGxloaPP1Vkif3qN/I390OVHrn+DV3XHKzp5Ou3Sj+B60fhewreM3F25611Bq4tbPOqy2R/TsG8a9WIPxI+CpsBgieu6PLp7vL2m7aRN+I7QX2wThP6kWb5CMF8Z/dYeskaINXzqJSRBzqE3oxkly5mro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=casTvpNw; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ac3fcf5ab0dso338518966b.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 04:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745582039; x=1746186839; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PFVqEvZNZmgDIHITifK+m8w6rPETJxy3/wEVnk7igpo=;
        b=casTvpNwishGqauGcKW2lWRRZN93gw1ihJaH26DBRp185E2rzHEPdxs0e//qRppPtv
         wPmzMkkyqnZ9oYQrZM7jDNB4pPvc6IUR5QG2y3a3lB8QtENLmLMHQMJ/IlgYPOYBoDC8
         7NhdOna9pfj6hWdHlnP6VpSPPcO1mTb7Q6Wc2U7UBDWW5ltg4AF8UqHYTojP06t10Vxx
         eg/C6ghD56cXrwc+UzbHVDnBrOIaGQGr78HXusTefN1zHuggYdCER43pMOGzHPm9d+he
         m4LsQTkJx4NIVVyvawXLymqLt1gwQ2qLIXdwNN/qb+dhu8P/bm6C0LFnpSxOXCYpT1dr
         PQew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745582039; x=1746186839;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PFVqEvZNZmgDIHITifK+m8w6rPETJxy3/wEVnk7igpo=;
        b=j5rgnEEO/LfjzM5O+u3+DgEWgoPE5rfi5eITuFUI/ViYqBVH2phpy2BeX7HDoeLt2F
         8jKE/pr3XujgNgF5J95IHggbMUwEX4lYMfqUwfmDyrbbu/f6Akzqb1bdKjkYw5TzLM/a
         JPHe2zVTn8Xrh4xSxxrp6XVxJKzIaO87Tt99f9XXWMPAOt26ArOww0EOYYMgIex6wZsv
         CAP2JDQXsBGBNpG13fTZIcGdMkI+e71xVJnH25lnWW5hlAIp/rH6FBOpj3b9fgaX2gv9
         ut/Li4lQuxls9aAtopqQDsphd8xEQZ/LPqtgtr+LPvaHfZ4wA4APzx6jgIXhCD9TpQaY
         6+7A==
X-Forwarded-Encrypted: i=1; AJvYcCVb99ajiBdiW8Gq8AXtN908myDzIIMCr5Sga9+uN9yDh95pOhIpg4pq6AMd9NKJ4qiXJJrDY41qrMlm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4Opfmo+cVIiSxcoEo9saE5ee7tJlpoGryvC6CqFlFNDsebz3F
	209JzGPasnqcCxeGMRP+CWapJ8h0uaISs9xZs9T3/KRhLcwX5nYOVkgaxvhD/+o=
X-Gm-Gg: ASbGncs7X+1ckA2tMV0NPd74wG6I9BvHQ8w4ZhybXTVZAGYDqmpcWK72t/EKfimVf2O
	tWpnkQZVXf5APHfgeQEMOaZCLVbtuF0hgMKn7Z4BxZrLCaGj0A47TUSyiSzqDMpkzeRFoLrsdFc
	8c+y0iHIFMql+HGFPbN9TmknBl/1wu1nieSwEcveUhNh8D0yo+t4n2N8kyQyNzmSYRFX64MfJaR
	1qoxbZiXljzJ6t19kC+abLNiThaeiXJIdgHe9Js1DN+iLvRTtEL7cz8+MlbnqgJ+H5EIaiQHv4D
	4vgrIXH0+Q+hy5LmMzbsztqIs7NbdA2frEVw7yZqRGQ/pHQLt32vPyTv+ui6xDeZY4ANX/1bd52
	GiShEyEk/rMnvkGbJv4ZuS/6y/F+wWMvXHrx8ZCVqDOLcIbSY/U6ByRT1gkYIS78qINA=
X-Google-Smtp-Source: AGHT+IFydxzM4xveDiHNxirQ0FhZcj5TUtv/EQfa5vwmL4iBPwaxKfYgWV+76QHSL615mmQU9XFPrQ==
X-Received: by 2002:a17:907:72d5:b0:ac4:5f1:a129 with SMTP id a640c23a62f3a-ace710c6430mr204966166b.15.1745582039433;
        Fri, 25 Apr 2025 04:53:59 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e41bc36sm126081566b.33.2025.04.25.04.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 04:53:58 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 25 Apr 2025 13:53:46 +0200
Subject: [PATCH 07/11] arm64: dts: qcom: sc7280: Use q6asm defines for reg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-q6asmdai-defines-v1-7-28308e2ce7d4@fairphone.com>
References: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
In-Reply-To: <20250425-q6asmdai-defines-v1-0-28308e2ce7d4@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Use the MSM_FRONTEND_DAI_MULTIMEDIA* defines to make the code more
readable. No functional change intended.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 8e86d75cc6b4929f6cf9592a3f1ae591a19e6d78..b898b2cc8ffcf1bc54493ba244240573981c82f2 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -28,6 +28,7 @@
 #include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/sound/qcom,lpass.h>
+#include <dt-bindings/sound/qcom,q6asm.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -3833,15 +3834,15 @@ q6asmdai: dais {
 							iommus = <&apps_smmu 0x1801 0x0>;
 
 							dai@0 {
-								reg = <0>;
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA1>;
 							};
 
 							dai@1 {
-								reg = <1>;
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA2>;
 							};
 
 							dai@2 {
-								reg = <2>;
+								reg = <MSM_FRONTEND_DAI_MULTIMEDIA3>;
 							};
 						};
 					};

-- 
2.49.0


