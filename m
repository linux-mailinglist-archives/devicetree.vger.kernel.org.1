Return-Path: <devicetree+bounces-50134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89539879C06
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 20:04:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8C5EB23DD0
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 19:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2AAC1420D4;
	Tue, 12 Mar 2024 19:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LYQWkBwG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD95A139572
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 19:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710270258; cv=none; b=riUD5yzCw9q+PlpW0SfJcfU10/cxbBTawHu6kk4Mc0mDILGbj6gvWdaug2ejIL/6r4Fpy5D61VdzbcOoRq7J3c0xgXEJFhRuH8UZdXjHYPr25UgIXFtDzWPC9Ky+vbRASVFS7dFA2rgD50aUN5wIDVdoB3hVVGFb/RttWg46TJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710270258; c=relaxed/simple;
	bh=SQRvqno3weA2SpppxGsRLACyWfP4MXYb+R8En2zxrXY=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=BN50cdRDE+FScBM8IY0CcOboYA/3uw/px2BFSboWCSEW8EIQgMaBQGO5Y7CBVWrDX9fYqyBFx/nIoj0z71LirpnNjbN12CJRWwlIy3Hp3JPNyrBO3buqWXyxKaaGwa1ZEenR1N5oFsAfL+5y7JS49tz0VTUdi89l+/9G7OrQBHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LYQWkBwG; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4133847e47bso7141805e9.2
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 12:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710270255; x=1710875055; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Nh16+Oh9k6Mlc+LShu+JvHr3Rf2JG6ms52z9eMyG5NA=;
        b=LYQWkBwGciuXPdVy1QqPyhx8FVU8vv5s2CCNKouVXIce4hKvN4vDYjMgbe8vR4OowW
         KuuNEE5pcAOuuIaq/J2tJC20B7FnZThvAO9/J10sr0UGDl91bascWfFQYBSeQ4O3ImEE
         EuAorTdjLSmX3Ao312M/kXoLXARAKXi3/XYZeZwMKlkKDA37QQaimBLvSPy6DD8wFV7x
         W6pqlks/25tH7+mf53xD0Ly+gaBAkk0Z1zfp+sPKZEJHiiZrnxjOWpx2JFYi3kTYdT1C
         RyDGJ1xkd1uJ4f9tnC/Y0IbIU8UnGX0ba199xBJ78xaKDfIZPPw2R18oDqSfXQ+Fhzhr
         i+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710270255; x=1710875055;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nh16+Oh9k6Mlc+LShu+JvHr3Rf2JG6ms52z9eMyG5NA=;
        b=HHjfdPC+J6nq7myYF+Im9NosaX8xAtsdRUJNuFRYmg7KpK+5t0Da4XQFDQ/zbjAC8K
         fgoJf82G65YzMxtXTm3jKqpS87qmOovbOxqklKVlUtxGrjVK1KMO14N63gviFhzi/wCF
         mPeSP9Kh+lSDDt293f3pZd8XZxxTh7R8hmzsGIlUZvmzwVXLXwfZueWrDDf+k7ktZB1F
         e6fLg7SaEC/3R+//U/dO0+A82YbkylWbLq/heLK4YfxgzDFSg0QzGpoo45rp/VEIX+p7
         2vUXIwwo6puTGaxvIHP3oYj+/eYPlzWdlkBbPrmLL8lwj6eooVFf3Zte66LN/aCsHMc0
         zMjw==
X-Forwarded-Encrypted: i=1; AJvYcCVKNFsr9fDNDN0s+dm8lrnADKoiAYZ+RJMzfMNMd2D6l8PTsFqmNPWZRvyaoJx6nS0g5gaUQ7QsBEbafjCRvHRMcnn6pdZXAwQnMw==
X-Gm-Message-State: AOJu0Yze3U57ybW+xZNVoXWczmsgbfmv3iPswCDDdA25UpNxmuneSky+
	cL5FtrHpMTDxdlughK4y+EKkw1Sv+KQ1WSJuL24ZqW9sU7YYvjGOgFcHnuBsBPo=
X-Google-Smtp-Source: AGHT+IE03tspZ9sgXYE9B6vVJFsBFq8hVMsaS8u+v+becWRB1JKdGQdCgH0fW2AYovTobu+W5fqFiA==
X-Received: by 2002:a05:600c:35d4:b0:413:7f3:8d5 with SMTP id r20-20020a05600c35d400b0041307f308d5mr7370972wmq.0.1710270255136;
        Tue, 12 Mar 2024 12:04:15 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id l2-20020a05600c4f0200b00412a31d2e2asm13435026wmq.32.2024.03.12.12.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 12:04:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH] dt-bindings: memory-controllers: add Samsung S5Pv210 SoC DMC
Date: Tue, 12 Mar 2024 20:03:48 +0100
Message-Id: <20240312190348.724361-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document bindings for the S5Pv210 SoC DMC memory controller, already
used in DTS and Linux CPU frequency scaling driver.  The binding looks
quite empty and is most likely incomplete, but the platform is so old
that no one expects any effort on this, except documenting what is in
DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../samsung,s5pv210-dmc.yaml                  | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/samsung,s5pv210-dmc.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/samsung,s5pv210-dmc.yaml b/Documentation/devicetree/bindings/memory-controllers/samsung,s5pv210-dmc.yaml
new file mode 100644
index 000000000000..c0e47055f28c
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/samsung,s5pv210-dmc.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/samsung,s5pv210-dmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S5Pv210 SoC Dynamic Memory Controller
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+description:
+  Dynamic Memory Controller interfaces external JEDEC DDR-type SDRAM.
+
+properties:
+  compatible:
+    const: samsung,s5pv210-dmc
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    memory-controller@f0000000 {
+        compatible = "samsung,s5pv210-dmc";
+        reg = <0xf0000000 0x1000>;
+    };
-- 
2.34.1


