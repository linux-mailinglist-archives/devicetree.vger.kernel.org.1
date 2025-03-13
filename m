Return-Path: <devicetree+bounces-157140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C076DA5EF1B
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 10:10:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0765F17DA88
	for <lists+devicetree@lfdr.de>; Thu, 13 Mar 2025 09:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E37265CD3;
	Thu, 13 Mar 2025 09:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MFVQu7Lc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD5C26563A
	for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 09:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741856918; cv=none; b=u3k9lfe6NIsrsiqDk8G3iqCc/tPORbK/K3OtYYJpHB+Eu8sFZJbZI5uiPaCg2l6okGDodtyQyIGm0LJe5MphnCbSdgXQYyUgl/Zp5zb/BzzOY3+Q0yXXqpH/MqIgUMCsfuWRUb/Ssc9ny1LRtoVgr/lDk58iXXOg78FB4xeGIRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741856918; c=relaxed/simple;
	bh=lgWjTBUuPBm2rSyOlWilGxloVDsYf3mREg200N6emfY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=an3gZ9NSfSoGDcFRXGJ7fhgkxHf2P/FuHISkWPgei6R3Q+DEPRKtgbhRK5uZ0bvaC+4nAL93q/oAJ77/3J9xG43RtUUzR8I1bg+xByB5Tcnjf4lYRNmfwh/DyjWMAZ2QkV6jNHvRwDV/FclzQYgVYF5z14BFHpnWzY9B+wr1u9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MFVQu7Lc; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-39123d2eb7fso49316f8f.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 02:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741856915; x=1742461715; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ILgSQHDxgkKe38HVj8nfhqursLYO9kMPnqoqfjxULgY=;
        b=MFVQu7Lc/1Cq6Kyn4cV0IWAgEp/YDo7YuJNR87HoOLGeCePPi3e8Iubyu/5lEBMYHv
         PJIHy8UX26ilYxE8A+abKAfVhVjSJnizmTeedxyYfjsaj6yY3h54EmGMP8xe8IzfGoZd
         oM5WrEeRWhpKJkanp9wwQlPk2Elyn6+xDej323xwryLUMgG5S5VO6ElTWrS/mZ/fOruX
         lYsIhPSXS0YTBJc9D6aSGSUPUZfmBspDa4iSmZGWXGz2J08CpimDTPmIwOBSsUPDSqIL
         EiOBhWnBiq2CyEbBDlwC3AS9LgyqLcxWbewPAfFCqp2YDB6LCJwfPvn2ZpG105f0wS5g
         ++1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741856915; x=1742461715;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ILgSQHDxgkKe38HVj8nfhqursLYO9kMPnqoqfjxULgY=;
        b=t5omICZbCqMU/a/4RpiSNDfaHLCsCA6Xho4cu021yg7bthA8EDX6RYbF4SIE06+lpN
         VCFPjnnNgsAH3vr51b1Y+IexN+g0rcMjsiQu4KFexur5Ykq2/lEdXXhNdumknBv2whsy
         J5GLDBvdwd+R2/UPe+1uwqG2wAHWXK5RnWI11L+8CEH42SVg7Gk3+qBikAQoZy+jZGAv
         Hd4jWGC7ykeKBjqqOYH2kzHl6tvmlqGdk2filokkqZisgcTSzLeXHsCSFothgpAV0Zyd
         t4fhQhlM0Vg41m3Mye+bksDCJ3s/SY7fEUgtOl7qBhlmMzHTIhhrL48AaVozqJhsooLT
         R4GA==
X-Forwarded-Encrypted: i=1; AJvYcCUCt/b9h25MqVtjT5Wr1j7Wr/EdWrqMB0X9LZo3dOAdk6JvIj+UKakVXtRUxDTRzI0eXb0t5AofBNYq@vger.kernel.org
X-Gm-Message-State: AOJu0YwTU6yvDW3yH4Ct+YenxVpxpXbSWMUoQOBgKGZvXMGwnaMOgE4M
	oHKggTXoUZnxzgnPbDdwBSux7Wg9hU5//tFE9N+ZHwTDFPTERblZs0CFoxUR/iU=
X-Gm-Gg: ASbGncuXAKdC6FjBkqze4d7r1eAfYpmHPI05XU50NLrJUfx+ppm3VGEQgoc71cAg8np
	oideL6FTo442PWu5cGNdDAT07FJTlKeTwbx9RPjQwp1+97jwhATu0qYFVX6ZxaxSspLyTC7hdjg
	t4PahQjNB8dEm3XUBSsnF0sFdERamJHg0se7eV1z+9aR7zm/A3toK2zh7i2Lcr7NxIbOnJdsFFv
	Rabanr1dmp0yMgeMmM6KWTcYXUispAIKv7+YWmEkLDOlK1C+dgUAN+/YmYHgCPZ1lR3+E7FhBoL
	Rhogr529JQam2eYk3OerF2Rkoh2MGb7o5Oe3/Fnk2lvbKCnTIUZAvZzN3sE=
X-Google-Smtp-Source: AGHT+IGKnblChG5aj7F20E/ZbGuy3EkBkhV5BYFgRAEyDthTZcDrxIAPMPB4DtyATCqkmzaKRhL1/g==
X-Received: by 2002:a05:6000:1564:b0:38f:2113:fb66 with SMTP id ffacd0b85a97d-3913bbb7c55mr6487289f8f.9.1741856914566;
        Thu, 13 Mar 2025 02:08:34 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb40cd78sm1414706f8f.78.2025.03.13.02.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 02:08:33 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Thu, 13 Mar 2025 10:08:22 +0100
Subject: [PATCH 3/3] dt-bindings: cpufreq: cpufreq-qcom-hw: Narrow
 properties on SDX75, SA8775p and SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250313-dt-bindings-cpufreq-qcom-epss-v1-3-62b0f96ba888@linaro.org>
References: <20250313-dt-bindings-cpufreq-qcom-epss-v1-0-62b0f96ba888@linaro.org>
In-Reply-To: <20250313-dt-bindings-cpufreq-qcom-epss-v1-0-62b0f96ba888@linaro.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1987;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=lgWjTBUuPBm2rSyOlWilGxloVDsYf3mREg200N6emfY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn0qCLfEH5UJDAFMqaQ2DbkzgGdEbn37syewUAy
 l6r7fLHoOOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ9KgiwAKCRDBN2bmhouD
 12njD/0eY0bJXpbonUjf7E+cC3ki7olCu78ZoetuTKptbm682BMmu7YIaXDMFe9sQKZZl5hT8x6
 y/HrDw51U8QFxOtyIoqdbclTBld/jSuLfKGhftUSmmX40Gjd/t+CoAp6D/gR6xhD0IZrTR5LzpK
 GNiymRe4JfXtNr1zge85k8gfhT3WsbwAe6Wne37U38lpHYAN2HxBoif9qIeH8u59Mc9mgxek8Ts
 1SABCgcu66eSoDxEmhWXOLU72a6JpgeXMU2yNtGVDWYLPnZkUbCoASv0t3dI+IkJwBumHSDOmqw
 ijFiUMBisvPA6cCl2K22LzT2qIrEedwNI9jn8GRyUPGotkkco2HSg8fMv1gxuWm/Olx7Ib4MQML
 nfrs2wV0rpeOadULI4gwDuUtwcKk9IvlXjrWe57U0brsNlpZe0kLK4dtHMd5zbEJDVxjhIIz/rO
 oPdi52vX0vXfA1nj9+4SslywPSOM9mmC9V3QzPWmN9X5+y3v4ObsG4hAkP6ay1pC2tLyS5cyA0U
 CaVAlwy7uunKGmAlnjY56AKy2QHt5u5nfBhftiIMkghivBIcG/52o9p8ThggCpx+1KNom3d+PpR
 ODbmwwXm12nxzGO7VJeSOsBSCvkfsK34MHKzfmKx6h8SV9RRrTQXNb0kSxWgcVmb3sKOOGVr9Nw
 3nrUZdyP+gBt4yQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add SDX75 and SA8775p compatibles to respective if:then: blocks to
narrow their properties and add a new section for SM8650 with four 'reg'
and 'interrupts' (top-level already allows four).

SA8755p DTS comes without interrupts, but only because they might not
be available for OS under given firmware.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/cpufreq/cpufreq-qcom-hw.yaml          | 25 ++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
index 5c53ceb265b6f0f98509ef1f45aa246e95a20a22..e94baf77d785fa089f2448cf56bd29d52b7b3621 100644
--- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
+++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
@@ -111,6 +111,7 @@ allOf:
             enum:
               - qcom,qcm2290-cpufreq-hw
               - qcom,sar2130p-cpufreq-epss
+              - qcom,sdx75-cpufreq-epss
     then:
       properties:
         reg:
@@ -132,6 +133,7 @@ allOf:
             enum:
               - qcom,qdu1000-cpufreq-epss
               - qcom,sa8255p-cpufreq-epss
+              - qcom,sa8775p-cpufreq-epss
               - qcom,sc7180-cpufreq-hw
               - qcom,sc8180x-cpufreq-hw
               - qcom,sc8280xp-cpufreq-epss
@@ -212,6 +214,29 @@ allOf:
           minItems: 2
           maxItems: 2
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm8650-cpufreq-epss
+    then:
+      properties:
+        reg:
+          minItems: 4
+          maxItems: 4
+
+        reg-names:
+          minItems: 4
+          maxItems: 4
+
+        interrupts:
+          minItems: 4
+          maxItems: 4
+
+        interrupt-names:
+          minItems: 4
+          maxItems: 4
 
 examples:
   - |

-- 
2.43.0


