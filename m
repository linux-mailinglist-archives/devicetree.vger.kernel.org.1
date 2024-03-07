Return-Path: <devicetree+bounces-49247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CC135875848
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 21:26:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DDF8B26A93
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 20:26:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D91CE1386CB;
	Thu,  7 Mar 2024 20:26:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kxYCuIWr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B444137C59
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 20:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709843199; cv=none; b=X91gWebq5Mgb0UbNopFqIm53MbJvjnf6knR3XkXym9ZznTI6VO54s9oF2eYeDBvo0teTdXSnW15DSjGxpvNpw3CJx8ILbDSd2ocmyEjyyf0LRBkYYZgH740TWvj8m2BjLWNyCY+YhSps9RLDuMSgKwOYDbEi+2fDxR/ZKselPps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709843199; c=relaxed/simple;
	bh=OdCHOQHuWkm9qqqHGBjNAd4irZiJRWhVY3hQ9M9FgE0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k+Oo2hMNCLlBbMsNaPcMBQLWEUAI44si0QgkCtqLS1VlvM888r+bIk/iDTRwISSfgetqWR28XVRoq5FcbPDIXfpydO3dvE8CVMZPQBLnI+zQRdGfyOCWof7ilweu9Q4BzSPziaHD7n1EyUNU1kSq+xkeJBhm63tUZf0oAsgSuZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kxYCuIWr; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-512f892500cso168926e87.3
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 12:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709843196; x=1710447996; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DJ/59AT7XyPNsXT+2SXTLSVHkazkHTBMB3Mbjed8awk=;
        b=kxYCuIWrp5uZJmmHxr+F+foR570bRHa9RamFnyBdY7F21KI7lQg6KdYazQIgO7Evxf
         VWn3fAnmGT37XEzA8a9Uapasg8gUD3VRUDOAWQ+fAzJAXSBWOwC+TmyfjjA86iL/TsQn
         YPJp1Hp+4aQz0LO89nvMqN49EXO5u0uG+Eii9OPdg85rWi1gfdaWRPhOZ5HOoEwGgU2q
         iwT9AeqG12/fbHT95zu/ZxF1V8uq9TBpx1bw4l8NmEUtktWT8u2jPb2behhZi+Cj/L3I
         qSbkNRmcX2O8fqUTnygn5ECNhlLMMZbDX2TqxI3JDjPPMhXLpx3hicE+k5NMxM/0bjLz
         tfaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709843196; x=1710447996;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DJ/59AT7XyPNsXT+2SXTLSVHkazkHTBMB3Mbjed8awk=;
        b=RuCEDYatPq+AUOpnGdC+oR/cn0LsspdXHU31ZcRMwyIe7u4ps9J83A4LPTFBOuUHGp
         XyOdUijCRQSo8UjA7/b4boMzsl3BbtbkspneqvtlwwSlRgerWH8kORJWelsPcLHzGKDt
         wykKkooRsAkYnnCXDanZ1l6hsiP4etESHM9DA+347joSy/i8efHt/K7OP2oHYFXTQLR4
         3JtPs7uE1VxJajswlisce1VB8x/CH79MbEjrhrUcZMAHGLtjjvHA4DMKiipVs9pMg81e
         RVEhGehw2CwDxSgrost3TdWM/2T6uUxCq1oY916vDfOp/KHkGGlAF1aR1LeYOvR6ZOTL
         Lw7w==
X-Forwarded-Encrypted: i=1; AJvYcCU4It5GLb/L+tSdnRPk0NLyVrRJQyFeB0KICCYb65BJV4MJc4d9m97c5AhLAoOwDgHs6AFniI4SXNDtrtgGTu7tKT5irpJm3+JhQA==
X-Gm-Message-State: AOJu0YyJyHv4C9p0HbPEDWzRkK5iqrgsaEpKpgEQxytp7J80ZrmN1K2a
	oCq6ZMUcgz3X2JOd/uYnwARQKCGwuVbHhrB2Tt+43ux/BadQTDlLmQm6DLP75bs=
X-Google-Smtp-Source: AGHT+IEfD6u+VCQGcqKF65l57UC1kpuwX15xyXNivXKLkxtQTHFvVIQ/y+jYYKfv1Hw25zJB4dJWIg==
X-Received: by 2002:a19:520b:0:b0:513:572f:88f1 with SMTP id m11-20020a19520b000000b00513572f88f1mr1985430lfb.27.1709843196010;
        Thu, 07 Mar 2024 12:26:36 -0800 (PST)
Received: from [127.0.1.1] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id dw20-20020a0565122c9400b005132bf9f8dcsm2957606lfb.303.2024.03.07.12.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 12:26:35 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Thu, 07 Mar 2024 21:25:54 +0100
Subject: [PATCH 1/4] dt-bindings: nvmem: Add compatible for SC8280XP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240307-topic-8280_nodes-v1-1-4eba20e08902@linaro.org>
References: <20240307-topic-8280_nodes-v1-0-4eba20e08902@linaro.org>
In-Reply-To: <20240307-topic-8280_nodes-v1-0-4eba20e08902@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

Document the QFPROM block found on SC8280XP.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index 8c8f05d9eaf1..65df38bfc17c 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -34,6 +34,7 @@ properties:
           - qcom,qcs404-qfprom
           - qcom,sc7180-qfprom
           - qcom,sc7280-qfprom
+          - qcom,sc8280xp-qfprom
           - qcom,sdm630-qfprom
           - qcom,sdm670-qfprom
           - qcom,sdm845-qfprom

-- 
2.40.1


