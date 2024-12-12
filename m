Return-Path: <devicetree+bounces-130052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B5F9EDCA8
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:47:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6577028371B
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D89D129CFB;
	Thu, 12 Dec 2024 00:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TfJV82nx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD0217555
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964455; cv=none; b=fkikLaoTNDjlLEQAonCqLEblVekWRw0be/Y720X9iOhol8RInz60nKEO8XlDAEk5fEuoQjPej8MbduzBCmWGC663axXX6OAqFROsY3c9epNR+HuNoXUfTX73XFEP3MPWN3PuKQ6JUiFv8FovJNFXhY2B3W+HW4Tz+ulux2CTDtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964455; c=relaxed/simple;
	bh=3R3OPMfTuyqQexC84gUaI5ofdVj4g5npIdYgx8O4VNY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SK4xXV1lAxkx5rJEzSntelDXP8z4EtkpEmz9rf/J0A3aTFtawqcM9RnO43dujSOI85NHqY60GCwQ3/oMzl5BvyG2hY1YDYKJPcIZb7M9C8YcT3X8K/47ev2SShPYLKD8JoDlwPTmXZiSOygd2OGfPHuhsf2wN2YFqlWd7M0ww2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TfJV82nx; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-382610c7116so11099f8f.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964452; x=1734569252; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bxSzgj3Vq2uPgrMY9L1M3DS9SZdOaUlr7HUWtclhijg=;
        b=TfJV82nxRpRj+irEv+/PnGsx828tWuNkyn+K+E0kP7hXuegJ26jBNa+Hpe7TeVyOc6
         q95d2WKxkdwZQ2s/CfGF+QzHGNO+G6ud/A+jSpPhmiZQcZgs3g/Kxpyc7S/+G/vyP3oV
         YVinfoiYG12z5vtO5cFrwUfTRR8lAmakfoZDoFqt5+HRWgmGyCa9rKz6XUfYA5PlNxta
         D46bUCEQ6QPL2NU1CMrgRgfR2E+ze62hkpmZPpJH5HVGWlP8rHshRpI5feE568zRm5+P
         a2f0KPGUJT0Hcx+scA2GLlr5gM3KvmctaUTRu2tjaRaD34KyboMp87DPFDSPFlxIjQPX
         2ocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964452; x=1734569252;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bxSzgj3Vq2uPgrMY9L1M3DS9SZdOaUlr7HUWtclhijg=;
        b=YexcJqPOdS+GsO1fLIM+tnDh6S6XOIwLw6gemBaWAtqVcWrC/iTTVGc8X5L4yCpxBl
         88wOGuIlahkUY0lKPIqZptVxtXA1PVWVc/attyIJc8OydPiiojYZbQWSX8ncnIfm+aGh
         kJ+p0BvY18CGKFH/lC0yN+Nh8GsdqRxF51w2gyqS40hsCuuq4YGNOGlZox0ELmh5bpUL
         pM6BnqNx2b45JfcLD8KgHbYoYg5Ic0dTVNrwvlhy1iaBp0o0+7sAZxoK3Fo1IWCcHOdf
         tiU1R+nR7F29iZ2jdSpm7+bixN/1ujK2EY6IKKzOP6TIxeCqbnCjRnFmLX1p9R0cFhaP
         uY6g==
X-Forwarded-Encrypted: i=1; AJvYcCXULyiMlK6WhvLXsZXGiv5TuHbD/glrjn9KlUoigMEQHQAw3okH0yk8QmU3uM6gDWObFQEu0oJKQI3G@vger.kernel.org
X-Gm-Message-State: AOJu0YwYBBDX20bNJk+i9Gj4JcgoYpYY0Rx1ATsr7Z5PZ8DbpS/uDe9p
	T20NwDMQoFXrFgFWsOBaQmBlppVZjhIh0BnmvV9ISjEsLkCIidoyFxCGi1JnVX8=
X-Gm-Gg: ASbGncvlfdVKMzHPOESFOFjsBk14TaA2zGQ5rAPWXevtug6MxTYMVNqqex5OpoT7Ztv
	oYQSvy6jhiMuxsG8yQnLVIgq/pudteqSNyy8YNtZfk9YCykI8oYmnUSVwXSoH9GoNvbcEJP4QXQ
	AQLnKhmi9n4ZMs3TvM9wG+hAK3rUg4yeX20cMMb5aLWQSJHv3pJkz/3rvHpmEjpg2bbFL3XEu8h
	JegL3ZdLQctQ/cHwAIH8GGwsC+Lxqo7U1ATg6cMUIoyM1BNF91ZbG9nsNq5cp7B2mKv+Rc+
X-Google-Smtp-Source: AGHT+IE1OUN0yGKV1J8sFJ5lu50pkndsUsBhL3KLv+epv+i5SZeHxNPxl2b8YjdtlAtpqWnNX2i6ig==
X-Received: by 2002:a05:6000:1562:b0:385:f220:f798 with SMTP id ffacd0b85a97d-3864ce4af31mr3619903f8f.6.1733964452283;
        Wed, 11 Dec 2024 16:47:32 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:31 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/14] ASoC: dt-bindings: qcom: Add SM6115 LPASS rxmacro and vamacro codecs
Date: Thu, 12 Dec 2024 00:47:14 +0000
Message-ID: <20241212004727.2903846-2-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212004727.2903846-1-alexey.klimov@linaro.org>
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document compatibles for Qualcomm SM6115 SoC macro digital codecs
(RX and VA).

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 .../bindings/sound/qcom,lpass-rx-macro.yaml   | 19 +++++++++++++++++++
 .../bindings/sound/qcom,lpass-va-macro.yaml   | 17 +++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
index 92f95eb74b19..697c5591ae7c 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
@@ -14,6 +14,7 @@ properties:
     oneOf:
       - enum:
           - qcom,sc7280-lpass-rx-macro
+          - qcom,sm6115-lpass-rx-macro
           - qcom,sm8250-lpass-rx-macro
           - qcom,sm8450-lpass-rx-macro
           - qcom,sm8550-lpass-rx-macro
@@ -80,6 +81,24 @@ allOf:
                 - const: npl
                 - const: fsgen
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm6115-lpass-rx-macro
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        clock-names:
+          items:
+            - const: mclk
+            - const: npl
+            - const: dcodec
+            - const: fsgen
+
   - if:
       properties:
         compatible:
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index f41deaa6f4df..30a44b444f39 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -14,6 +14,7 @@ properties:
     oneOf:
       - enum:
           - qcom,sc7280-lpass-va-macro
+          - qcom,sm6115-lpass-va-macro
           - qcom,sm8250-lpass-va-macro
           - qcom,sm8450-lpass-va-macro
           - qcom,sm8550-lpass-va-macro
@@ -83,6 +84,22 @@ allOf:
           items:
             - const: mclk
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,sm8250-lpass-va-macro
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          items:
+            - const: mclk
+            - const: dcodec
+            - const: npl
+
   - if:
       properties:
         compatible:
-- 
2.45.2


