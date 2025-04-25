Return-Path: <devicetree+bounces-170978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D70E9A9CE0A
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 18:25:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E0804C46C5
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 16:25:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE391A0BF3;
	Fri, 25 Apr 2025 16:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DPIxSGL2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F8F19DF8B
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 16:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745598319; cv=none; b=AMCD/MMT50cGqIIreZz5XAObqBp3JHehWSooxaFCNNRdbFD3eVTDQGrDKVwEKP2AFwa7YfKPCPkXzT5K9zji4QBGT04C353nYsoU5r7MjXZUFkzFj1RMtAy8lTxBsuTLlxxGOofIM6hBOB9xtJ0lyvfk78+C2FAhhNZP+VMT5LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745598319; c=relaxed/simple;
	bh=FMJrOlGR8LTHqC1O6Afl8Jai2Dk/T6WHWfMwiUsHQbg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nLF88zd8cB+Ozmi9FLGllciLTxYI/cGPmZGvEIvEv1kvC+fgZhOXOQj2yxCPgDtC/kY4Wq7P+XDkMGT0vIbAOJh2OwxkdVNq5R3SM+UyhaTSf+p3IRPZn/NI1K7gyhC1iaXzY6ULwpay8lW3UOaFtewvx9VSI8TKshKKv4HQouA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DPIxSGL2; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-39c1ef4acf2so1846087f8f.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 09:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745598315; x=1746203115; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GwF9CflCPdWCYrp7r5q+/Sk502aNvZmEG4uUszEXbak=;
        b=DPIxSGL2348HWXBfF6EmBboTMZTk+ufviIBshJQRINeh5Sn8Fm2EYtOdC8LVG21PhV
         WmxQ+fAenwuS6MYwoj/5sEILXW3qBTimwyOAYcXnLRSMDpsRja+0qk/8nSi50/LHLUTN
         72az9M+aQ4fc/jCOVeqMsFsxfCEu9tohZZhulDBOTOR30oXpnd1z8oL7uJN973luThRt
         4qvcI+IwY3kmB/nnXQeOs+monOp75+hHQRRGKTmzX43oZyFMGb4FjtCHdqFEz7WaT4M5
         uN8Lf5VNe7viFu/aC0GcEgpLJ9CEe/oVR/RI+MTS8xLgaZ2HZ5vjsbx6Ydi9DgQVjzMY
         yMKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745598315; x=1746203115;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GwF9CflCPdWCYrp7r5q+/Sk502aNvZmEG4uUszEXbak=;
        b=oUqOHKCzeDZ19PcH6FDtVzwayEI4EpS1LoFl4EYHPdLWOHjxTMK0jhvM5cMzVJfTCy
         B14ywqo1SA27b5S8IrZEOE9asPlhNJ7bZECAOcYTHfHGYJwKuVyEpuGJ20yRZ+nlgbkv
         hWqae0H4KDYXqnGXcHlFyXnWWhFPagzyTPa07+n0/eDyUx6ev+mQNZ3DIdZY0IhcTufm
         6yFxAKJ/tucj19Jd9lPc+GHOyoLWHJv7wszEBtLmIpRNwM/65l0iLW75wMRQMRS9FKqE
         Nzffti8R1SNdrS6Ih3eNDfJl8BeElTHx88Kmb5FdXnLw2nRPvCv9a9Ybt8rAideKlGce
         IHpA==
X-Gm-Message-State: AOJu0YzbqtvxROhmcrLAg4HLz/PLk0DJK/aEXL2S1lqKK00ECv7GLe6o
	GTpMkuzhvd5k6dvEi3q1T6ZGXvyHZBKti64RbRDikurYULpYxaHj0BvluqNEbwasmqc1yN1QrBQ
	y9Xw=
X-Gm-Gg: ASbGncsLnNpZ3FXj7zjxxFmSGSdENx/LwEvcBAs2fcwEw1YMqJND220u6Cu51BS0rHu
	ZffaKutZye2ZabN+8BAdcQVdnrdYlLvrRs9ZRLySLLG1vjjGTX28gZWSlfpZO9lYAdAF4VYvfor
	hVJ3fF6GoeHtF/tJAYPLBmPH62HLRKMaBbNSRG/8Rt4qzrwACg6lwrkNFOeCP6ThrnPu1NCW9fU
	tRgxM2chlABsjSp8i9aQxCegTjXHw9g7DAK0QJcWDjYKguvDPsP38qBsYajw0B9aRy8VGjNik6x
	XjOoO+zTwYRloZlxp4OcxoNgBlkcWCB7w423HfFxTF1rEAcYriJXgEPh8lo56n4If5YofzhsTiC
	MScWBTMU=
X-Google-Smtp-Source: AGHT+IH27tlRdQmfaEd0vU0ekKrOUtyYgz0T/lcDZ8jxrvySztmQdJ9j631XFVWx4vKEx6N+HkWnDA==
X-Received: by 2002:a05:6000:22c7:b0:391:304f:34e7 with SMTP id ffacd0b85a97d-3a074f15530mr2464952f8f.44.1745598315279;
        Fri, 25 Apr 2025 09:25:15 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([209.198.129.111])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2d8976sm61263715e9.27.2025.04.25.09.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 09:25:14 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 25 Apr 2025 17:25:06 +0100
Subject: [PATCH v2 2/5] dt-bindings: soc: samsung: exynos-pmu: gs101: add
 google,pmu-intr-gen phandle
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v2-2-f1530de9da42@linaro.org>
References: <20250425-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v2-0-f1530de9da42@linaro.org>
In-Reply-To: <20250425-contrib-pg-cpu-hotplug-suspend2ram-fixes-v1-v2-0-f1530de9da42@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, willmcvicker@google.com, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1391;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=FMJrOlGR8LTHqC1O6Afl8Jai2Dk/T6WHWfMwiUsHQbg=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoC7dl562ZRqMPqicNiLc9QCICsJBZHoRyLw1nT
 HbBSFxv8G2JAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaAu3ZQAKCRDO6LjWAjRy
 uhf4D/4lCMQMOrnjqdMlIot/ZGWME40KLkgHPG3cgQ4A5wYavbweCTTNv9mDkLoRbwxQahs8k9g
 maZ80JEv9h/hvZGDpzkkQ7A7Pb+bvB+dccca41fkoDlDLRaoahUpJxGKGwLDK1ICKiR5aoIkHQD
 wMKylpxJ5KamU6Z0OeM6r9rqx6HV05f7OHYt3b2NV1o9C82W5U3lCLM+KBwygbLbnTZLWMpyjza
 3V79gq5IhWbyuWZ8ntuUcxIf3qq5OAWZio5bPU8Cu/x8Nc2imixW7VssoQ9oegD5inVrVegp9RK
 bVMJPKayTSZlXTG2OQrtQY3djKCgygoT9Rf/BdIoqjSbwReVTU55qJNGGU1Lp6S52/epuiQKaPB
 3TUC4HHmsmQJMpG4xHReU5KwLb677dzRyR+0T7rdkptRdfPNIUwes99EDGh9Fi1FRBX024hJfIa
 Ht8nb4vrX0B7PK0fPeClYEi8YiHhBVcJpjxvWXbM3uHLuUaBEKg3iXTL4MGbXxm1Z5WtVhi70Qh
 zt2gXctBwo91CuKdTMCeI9TCKwSbNoOxHaYwzUzsB44XFKUEfC8e3tRIMzRxCa3OOldQta8ZctL
 VPVMW2UZwYaRonoyEJ936Tte2TAmsyLJYjxaPDCTEXC1g5YxDglGLr8/YYPIpvc2BWIw4EswpAa
 YY0LPsWYR0HsMdQ==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

gs101 requires access to the pmu interrupt generation register region
which is exposed as a syscon. Update the exynos-pmu bindings documentation
to reflect this.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../devicetree/bindings/soc/samsung/exynos-pmu.yaml       | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
index 204da6fe458d2d4bfeee1471ebc5c38247477ae2..3109df43d5028c61cbcaa597e7bd8cb530eafb37 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml
@@ -129,6 +129,11 @@ properties:
     description:
       Node for reboot method
 
+  google,pmu-intr-gen-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU interrupt generation interface.
+
 required:
   - compatible
   - reg
@@ -189,6 +194,16 @@ allOf:
       properties:
         dp-phy: false
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - google,gs101-pmu
+    then:
+      required:
+        - google,pmu-intr-gen-syscon
+
 examples:
   - |
     #include <dt-bindings/clock/exynos5250.h>

-- 
2.49.0.850.g28803427d3-goog


