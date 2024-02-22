Return-Path: <devicetree+bounces-44812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B57885FA52
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 14:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0672A289EC4
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 13:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3EEA1468ED;
	Thu, 22 Feb 2024 13:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dW3cfij6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CED1353EA
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 13:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708609946; cv=none; b=VQjVX6mInYkqfNnj2OSfKmC1qDUR9x0TU8ehxxyIsALE/0ZhlyqDzX1O+a+zlVCl4bI7xXj+qENRd0JDTTUJWqrEbLB4toCFN0BC3QAcydyPIF/HGgbHV32i59yXub/BNp2r6/X5mJwvsz0stIbD8R/7U/Q0+NCuzTfjhoqtxrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708609946; c=relaxed/simple;
	bh=QJBBmiezhVqZHMCXX6MWNM2zXfZMz1EwtNGa1/Y4Z4A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XxaXTHf+XYUzwmJMTpmKvBo13S677uXBDQORPRvc+dO5f4en8P/Qc4DOdCzVnx6dQL0/evFL6bMj1bw1TPohahnntArBQogoFK/myBGjn41cGW1npv8vDWKRJ6dKnReSHxj3Ne2pNfGhvrmof3AQGMfaGPfKfWgaobSBXBN4UPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dW3cfij6; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a3e6f79e83dso627222766b.2
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 05:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708609943; x=1709214743; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EW/GWJggK7nU0fxkPt2O7/667iB2+8Bxf2l4HJ5fEwE=;
        b=dW3cfij6zSmcVx3oDnSho3iAAQJ8jNrTEQET192I5Bwf5Qd0rd7D0vFDBrXzamxwL8
         92tv1g5DZkea3Nkwaj3MFsgOTJQFbIcM4aMqtPo53x2Djpg78d1orC1uz861zBuzvzYI
         ZLakwfuJqN8rla/vc0alsAtzhYgNWbu3/D75nWg/QzWJHthpDB2UZ9JV7IdBHkvqaQJd
         XcIb+DaSoiicgzp1HPNV2zSp4b5ShVsfj45Eve4HYv1xzK6tke67QwM0i/W3CtJDcVEa
         zbpE+Ri/J9JRX++zkyxO+DWx1Rs/23BWo6+E/vG9iKMM8JwxuNWI0piiHRZnC6yJbSek
         WG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708609943; x=1709214743;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EW/GWJggK7nU0fxkPt2O7/667iB2+8Bxf2l4HJ5fEwE=;
        b=TOPYGxJ9+nWNhlKkkTOTqrm4EBpmKnid23Jpbw3tre95DQUdsIU6uA28LRHfFVSMSl
         Gsd1BBUZVeU0XkvCKhvfUc7DO/o/+Q2v+k2z2hu4usQWCuC61HJCeMBsq3qqqMbtr5cl
         gvUmd2JHH5qzC1Yqcrr9f3SVuAXsqUNjxCLdGkCUyCDMsgdl9K6NQ6cOY4SGB549j/8F
         QEjIDGz6JwnJNmYi67cz4adcNS4fnOVB4qzE2IjbBOI+uZiTPC2qLBW5wPaMRlliinen
         EqMkL4OkdIop+nltqNG9t/OsRtZ8vfWCwKdgnr683Moce3bjJFpGcuu0Atz/p4fEt50L
         WlZg==
X-Forwarded-Encrypted: i=1; AJvYcCVpPqRQpQXARVq0oChcmfGA79kIwQYN8/7IuCOTlfM9g4L+21AmHzjxrxdhDXHo112vrXyYXiwmDstSvnIHVGebUGuiiLAYuTiR0w==
X-Gm-Message-State: AOJu0Yx+GhKmiArV/6F07haOnJx4QeszT//rrAylbyCcB1Y9fWVNLWt+
	xIqo2AUiJv/vIpLk+ZVPG8m0aBXkoff/PzoUEXF4UfQMA5UMpk/Qtw3l2KmcTmI=
X-Google-Smtp-Source: AGHT+IHK0vqpMbU/G/J8vsvIuEvJXxnR1fRVVGsW/TgJhL42N4wGD/vAmGlADtd3f45CwaZL5QQdfw==
X-Received: by 2002:a17:906:6dc1:b0:a3f:81e1:2dad with SMTP id j1-20020a1709066dc100b00a3f81e12dadmr1358466ejt.21.1708609943411;
        Thu, 22 Feb 2024 05:52:23 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id ot18-20020a170906ccd200b00a3ecdd0ba23sm3382839ejb.52.2024.02.22.05.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 05:52:23 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 22 Feb 2024 15:52:03 +0200
Subject: [PATCH v6 2/5] dt-bindings: spmi: Deprecate qcom,bus-id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240222-spmi-multi-master-support-v6-2-bc34ea9561da@linaro.org>
References: <20240222-spmi-multi-master-support-v6-0-bc34ea9561da@linaro.org>
In-Reply-To: <20240222-spmi-multi-master-support-v6-0-bc34ea9561da@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=956; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=QJBBmiezhVqZHMCXX6MWNM2zXfZMz1EwtNGa1/Y4Z4A=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl11GONCtd9EYnK2zbyTod3FUCtBuGPT0Ra9wkz
 NzRHH9M7EqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZddRjgAKCRAbX0TJAJUV
 VpXRD/9VENVMm8i0qyXY3On8HzjaJps+BzYtDxTGMol4Sq1cz6NcQMPGKXnPdbiLbirOPysaQRt
 IDY4e6eMTgu+BC8U8WITB7OkrkZMsyS4Mt2RlfZ17Pp9VXZ286srB2skdW2UOJlUuDvKAm/ig7x
 vu7NAee/57WY/etBDqC69ZNxZh1wHMGR4AFiN2qPTZWSF74XBMZHgVimyCeVEg1DDDh2bjXqUCe
 ZQbEN7J94gSifxGGZZiypcdcx6kXR7gDYKshEZgZQ5CAZAp8pPaBQd3N0YDHEcwJ/4PJGS6HYXR
 MQj/ffolzEc+i0k5OYRoukZQSfarMYg0YmNgQdZUDYieK9Z+2fppH7lGR+yj6CtmraWCkOj2x+z
 W35r8DD24KZ+V0ktl1zhgAR1XgSh/Yqg+hRVgQeXFZixdWGYhXD3M9YfiNYC9E8x5lOgHOU0DV3
 CcuAVHC492dAHIRMH5XEsPZ01RJUAEzCxopIhLNQ2DYz9yqPO6gqIOiIcRBhjfqTp1iNA/Q8Dh2
 g3MzRJRMRzTCoM6tU/+FfoantseNxAmBSiuZaHADbRzcs3NUMuh9PfODFqKRrr4MRJwYgnN0jPC
 AYrFE08FHCya4fPn81xjXrTKM9HE8x8Zk7nzyxIFJmuxDWh2fkAdYx8JA3oEfB3Tb0AZbi/E3qj
 Bw530kEdYz2PYAA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

As it is optional and no platform is actually using the secondary bus,
deprecate the qcom,bus-id property. For newer platforms that implement
SPMI PMIC ARB v7 in HW, the X1E80100 approach should be used.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
index f983b4af6db9..51daf1b847a9 100644
--- a/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
+++ b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
@@ -92,6 +92,7 @@ properties:
     description: >
       SPMI bus instance. only applicable to PMIC arbiter version 7 and beyond.
       Supported values, 0 = primary bus, 1 = secondary bus
+    deprecated: true
 
 required:
   - compatible

-- 
2.34.1


