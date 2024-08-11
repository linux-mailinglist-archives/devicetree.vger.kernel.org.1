Return-Path: <devicetree+bounces-92713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 601E194E1DF
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 17:35:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16A711F204C3
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 15:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A65214B081;
	Sun, 11 Aug 2024 15:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YERIm9ll"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A75622615
	for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 15:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723390515; cv=none; b=oN60GL6Qk3p+yhh5JmhPAqiLj8U7CzgQDV4kL8eqxj9iWcjIm+L9ohHD4UehG55pPosRkJsxO1iyTYBbvyxu1TD96ghsjH4tAQySUxUZzKlb2O7dasl/7ESfAz8sTH4deY9ZN7m3BAIcsbpBDPLanF/JfdMDGzIjAs8jr6LCRHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723390515; c=relaxed/simple;
	bh=QAvfaAbOsXk9UVQP4PWy9GMW+2u2kGRbEaUXFRTPYgc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iofg38gl/BomDOBmtU9mKRJBDjEstxHJ3jncWP9VnB80tzieUfEjooXthBj9XqDQw5XfbKDZ17W7KN7Bhg7MLJKbgJFbH62XKDKYzJ12aiIMN8tlKm4hXghoCq8H3GqFgxeW69AmIoLlWAXq7T7fiO/l9IYMOaAOE7Qb9wKyRtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YERIm9ll; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f0dfdc9e16so42673371fa.2
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 08:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723390512; x=1723995312; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h512tKUzrukolR3pPpaZsPrCSEQtmis2nYDZ65tFXrc=;
        b=YERIm9llauAiZBlbFVdyOYCpCbIiwd3+1seB123iR7TGo2UfplVNHMFuCetDusmhSC
         pculRWVDdPzD1Ea1TvaaMGGBrS4eGdoyLclrP24Pt2PTa056d0lA6sZRAUh+bo72PeV3
         7ndhTOdGuh1KSOrW/cqz4ULYv4iJTJqIQVPXvWFHlngkEmvExMVyrKwT4ShkAA5zc9G+
         RfvD/syiM7lmpibAhTvm6+2jVWYl2jRgRsO2rPjkrQu2rkaengTV3+w/VBh4lMSofNGR
         0tsr3GPdOLtPrBWTRSGEcHvdSml9w0RMbv3EqfpJf/gK4FsDoRnL/2pp7rlVrvZ2wBqn
         kFnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723390512; x=1723995312;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h512tKUzrukolR3pPpaZsPrCSEQtmis2nYDZ65tFXrc=;
        b=annwtA2gCcBmAELC12seLlL/UicyoQ1C+KlaS2gImMolEyusMKWzASheXmZI+otKNK
         bfn/hq0uNghNPA6KQHY4eN6Vgx1+P3WN/+Ro68QVd7soNBrA6ZAy6aDb070KPNlERQTZ
         p/NZTOs7mc0Hsn4mBFLSBylzaXvun2/NZFIlVcbiSGAsE92LMr+gO7bugxy8BhwEchJX
         SFE6fhKnaigIhz1mNqZZdaNevfGM0mkjuKg1nSUgPDfVX+jd8+GJHXxEtFXbjNHhZWtT
         P7CNVUeym/1/UJfZWVoWvWxgmSbLpX02+s57m1pHkGCpGn/7FJEpnpwZ1YU4KEyvCkqp
         avxw==
X-Forwarded-Encrypted: i=1; AJvYcCW6sBBK6bRIDVLeza5N6UpDZb4Xgd6ojjIx9z/3CfX/or0qwLBnNYKE26S2NvZzJaSIioQlvsb9Lg5Mut8KXggn/4g+5ot8KJDYGg==
X-Gm-Message-State: AOJu0YwoD/GcprzXUZGfx66BBm2aiBiwunzAcJlSSfAh+HLq9mn/zHn3
	n9vLJNmU5XrwWbQTT/pdZLdHsuTByMFnBrEHFjM7ISDacJ3m4PeN5zwv3hovzVo=
X-Google-Smtp-Source: AGHT+IElBSdZkuVW6lgNALLxjJCeoQbC1iMNNU5r3lu53hIis8YE+kgaeavVnIQrSshX/1V7GzgJ9Q==
X-Received: by 2002:a2e:611:0:b0:2ec:1810:e50a with SMTP id 38308e7fff4ca-2f1a6d3201amr44316581fa.32.1723390511583;
        Sun, 11 Aug 2024 08:35:11 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4290c72d69esm158276625e9.5.2024.08.11.08.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Aug 2024 08:35:11 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: fsl: fsl,rcpm: fix unevaluated fsl,rcpm-wakeup property
Date: Sun, 11 Aug 2024 17:35:07 +0200
Message-ID: <20240811153507.126512-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop the RCPM consumer example from the binding (LPUART device node),
because:
1. Using phandles is typical syntax, thus explaining it is not needed in
   the provider binding,
2. It has 'fsl,rcpm-wakeup' property which is not allowed by LPUART
   binding so it causes dt_binding_check warning:

   fsl,rcpm.example.dtb: serial@2950000: Unevaluated properties are not allowed ('fsl,rcpm-wakeup' was unexpected)
     from schema $id: http://devicetree.org/schemas/serial/fsl-lpuart.yaml#

Alternatively, this property could be added to LPUART binding
(fsl-lpuart.yaml), but it looks like none of in-tree DTS use it.

Fixes: ad21e3840a88 ("dt-bindings: soc: fsl: Convert rcpm to yaml format")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/soc/fsl/fsl,rcpm.yaml         | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/fsl/fsl,rcpm.yaml b/Documentation/devicetree/bindings/soc/fsl/fsl,rcpm.yaml
index a7db0aad2b25..03d71ab930d7 100644
--- a/Documentation/devicetree/bindings/soc/fsl/fsl,rcpm.yaml
+++ b/Documentation/devicetree/bindings/soc/fsl/fsl,rcpm.yaml
@@ -80,17 +80,8 @@ additionalProperties: false
 examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-    rcpm: global-utilities@e2000 {
+    global-utilities@e2000 {
           compatible = "fsl,t4240-rcpm", "fsl,qoriq-rcpm-2.0";
           reg = <0xe2000 0x1000>;
           #fsl,rcpm-wakeup-cells = <2>;
     };
-
-    serial@2950000 {
-         compatible = "fsl,ls1021a-lpuart";
-         reg = <0x2950000 0x1000>;
-         interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
-         clocks = <&sysclk>;
-         clock-names = "ipg";
-         fsl,rcpm-wakeup = <&rcpm 0x0 0x40000000>;
-    };
-- 
2.43.0


