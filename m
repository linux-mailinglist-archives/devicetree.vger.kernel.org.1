Return-Path: <devicetree+bounces-34925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0440C83BB6C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:13:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D822B2792C
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 08:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A33E1756B;
	Thu, 25 Jan 2024 08:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iTHcs++q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67A618E2C
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706170421; cv=none; b=mGRXewRYT3SS82jeZHWhSGYQ62n41kTaXtE8KLIEJTQD2WzPa4N6xXWykMWfo3RGePdsxfbPnrgPVuBR0CJTpP8IlgVjTSruT75D2O21xFLziNgGvE/0vI2nMhVGcSzOvOhCKR3LEFZJmnTCFUdLLIvBg2O2WX0GTd7YPtHZeLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706170421; c=relaxed/simple;
	bh=1PjAFbLu+QatkpIULOJu+tdaaDskbNtEhNTIImAUfzI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PQvOGGyr/PYcK7j8zH3+HysAhGF7kbM24MY5ZCZOfoHbArVfbyroXOFBFabCs5hXrudfWNx3K1JxFnfvHCwogezduVbKZEFoMfw3x0yHRV7xJWQw740uePmDpR5/4+kkIItoJiTLJFCdiWZQ3uHeS2VtfuVh/qfbj9Ym9C2N5Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iTHcs++q; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40e86a9fc4bso82110705e9.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 00:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706170418; x=1706775218; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SCQe/+k3llTSJdQx+Lotjl3qv3Ze8JJbbwzIaaR7inc=;
        b=iTHcs++qqYACQNulobQJaYDcRqn96SEwZ9hJDTOruqVyifkEpO3puPeMjuZPB17ZOo
         2WraGDv8gY1qKTx1+ql3tTAlOpXk2Lrqhigq2wNL5yoPvAmOoZ1N0SRwQvrHZLinyPYu
         FK41pnBKugHMxfRBGLx2PlpdaWBEdQ0McGEEQj+3wHmCDdZjWsnujRF75GtpgEOV4SzF
         O0mvqnz45VMY8Z+Mj993RoMUdttChf+b/R2hYeiIUOP651BLakO9nXdlonRqbIPhCdHW
         bkKj6T/hBXemeVCZnndSRO87p1YAAZHQN4WgBTBUKwNLRY9ak/6dOq6fb3BXK3eMr00y
         NCpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706170418; x=1706775218;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SCQe/+k3llTSJdQx+Lotjl3qv3Ze8JJbbwzIaaR7inc=;
        b=Y4EiwpNQXav6eilSYxmci4upl72R8omm2O0oruiYSzthsNA+BUL2zrdplwKjFqIj5j
         r7OcMqg5Pyy4tXJoI8mk/MyhJRbPr9bUOo0A5orDPPdlsgHGWn3bFstOYLNW/5coUqi+
         23apEBJmxbXDTDH4oXiUN1X8DNKZ9dF0FFjMs0lDr03LiPSUPtWwm8vUh+cAuwQhT+nu
         un9bNKyc9REbSOyW8l/B0b2S1SMaOyfEnbSIHPvG6lyOtfmuMnk2vDxfHpSy+zKtPDPu
         Um1WQHnCcoTWl0NUdoPoEEx3piZVX4BEAFL9QwvnXheIOcAnHddMvt/EHOgoQjHJ4hT1
         edog==
X-Gm-Message-State: AOJu0YwsHpiEtdNsrYqvOJ3uiUI4l9HcsALALeY116UkBUl6uROOt9DB
	g1B+9WGj2jn9NLUQNTCQ/nTnnSf4f1JkRg1tfuM7a+8P2c86MsgmjpLwt5t2ku8=
X-Google-Smtp-Source: AGHT+IE4nmhn8ZT67QzXSj5JfT4WLUw+FPOzC7wAh+EDKFvvB1jXtCdIzQ18pHfiVb1Z4PrxqQexsg==
X-Received: by 2002:a05:600c:c0d:b0:40e:c709:dcc2 with SMTP id fm13-20020a05600c0c0d00b0040ec709dcc2mr294491wmb.43.1706170418196;
        Thu, 25 Jan 2024 00:13:38 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id i19-20020a05600c355300b0040e4a7a7ca3sm1638350wmq.43.2024.01.25.00.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 00:13:37 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 25 Jan 2024 09:13:34 +0100
Subject: [PATCH v3 1/2] dt-bindings: arm: qcom: Document the HDK8550 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240125-topic-sm8550-upstream-hdk8550-v3-1-73bb5ef11cf8@linaro.org>
References: <20240125-topic-sm8550-upstream-hdk8550-v3-0-73bb5ef11cf8@linaro.org>
In-Reply-To: <20240125-topic-sm8550-upstream-hdk8550-v3-0-73bb5ef11cf8@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=948;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=1PjAFbLu+QatkpIULOJu+tdaaDskbNtEhNTIImAUfzI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlshgvUbveyw0aDRQjDYSJvghOX7q6oyOz6eje4d1L
 9NnsluWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZbIYLwAKCRB33NvayMhJ0f5AEA
 CpbBo8e542kVcIWHZDdsXj2gybtqv3eRfdsRMQxSTOXb0bIO6fSuetXP+5opaGONh8j2pQoeTpnqVG
 Dc7jsVqHo9Y555MYPCDxaae6PURkU9V8IYdN0l4y6sdkygA/IGns2+ghCGVOfcxijHbum8bZ2+K3ze
 pl0uUoH60YyJJ8M1lMwp4YnmCFLXc3jyB/HrCBnypyMlpwS77mVxYaaf4nnJ2iVABvko3nVYA095fO
 O7wE4OWQGvtUFToTqBtyxrQ4jSIpoekXMQMV/kgX6AvV4ayUZe96wPk+AEAaFY/PfzhaRdD1kKu+Ru
 M2tEH/yvoqYsCEziWlwlgrAEn3PNbdRLI2Ewl6Z+7W63jHdn3XAD6T4pc5iYW12yUDJVpn7a0uDsnL
 +TxnAhzH2vwDDYZ/qCybChFLSYbUQq9pNPduYbbODnJPHI3LmpBctphZljk4Yr4P0E7Pf1glIUgcT7
 KhaimHIX6SjuVexa2S6nvSwpt5ydutltxv8DWBZ0l5G8whqoxDgz6OsaH7SN42xuw9QnRplhbifD0s
 huWQ1ATb0XN0Z9qbCgM9/1MCbLKaIA+ii0zJUZl2L9jPkL9RaV3saDgsq9nLW1b84y8xHUGmdrpyXN
 RtaDPBizBTIGRRP9j1B4gHJy+513FtDc4wMOFXtUuikFziElz62DvrBO73Cw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Qualcomm SM8550 based HDK (Hardware Development Kit)
embedded development platform designed by Qualcomm and sold by Lantronix.

[1] https://www.lantronix.com/products/snapdragon-8-gen-2-mobile-hardware-development-kit/

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 1a5fb889a444..c1720dd960c1 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1035,6 +1035,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,sm8550-hdk
               - qcom,sm8550-mtp
               - qcom,sm8550-qrd
           - const: qcom,sm8550

-- 
2.34.1


