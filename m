Return-Path: <devicetree+bounces-20161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6787FE020
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 20:12:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66DB51C20974
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 19:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2834B5DF29;
	Wed, 29 Nov 2023 19:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zthheWoH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0185D66
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 11:12:42 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a03a9009572so13582766b.3
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 11:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701285161; x=1701889961; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EMZYp39ud4X8F+sGse6s9EUR2FYcDVwMpHJ8PHx+8OU=;
        b=zthheWoHxelFxe8r7297mEccl4cjpbS7zHiawthvrNjeRzjWHnLQaO4p0TMfjPFjf0
         cvayNMYTkOi5Eo/b+MT4DUyvUuiqwMpFw68Ef8tcXqnlJT9NJVAJmNB7nM/hKWCs+BHG
         0rB+l22t91RW/RxQXTzSLWzzZUxR47J626MMVNzwFVxMd4S7xIS7j/OGgXPJlZABc0Ni
         sH+xc6Zjo45S3DUKUdhzYFyyt2ySQn7N5yqKrvl8jdCnR3egXVXA9NA29N7AE/bgMYVr
         sHbHjFCgzdRKKDedWvP6WiVMY48+VktZAa5QBfZDTDn71eB4KY0tafapJwFjhWWzWVRn
         qh1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701285161; x=1701889961;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EMZYp39ud4X8F+sGse6s9EUR2FYcDVwMpHJ8PHx+8OU=;
        b=PthwXPovLV59elEkv3Idpd24x7cJ3aQ3wtLsEAdDjibI6UAhiiOmJIOdqx1dx9W3a6
         TcEnlLPSfz9LKomI7MPARTjZg5HWAZDvHjdI+CbFGCvpXZ119L/dWIadUW0tgTsh+q/3
         MDZyGwWBNd93TWYEpYj49X72XKuFg3jAH3L7CGke55EgW4jykMzQrgJ8t63yvmt+bao8
         +hvLfpIZRbjxXYvjQY9nGTxUjirTNxwL5uM7w8XPXU+oWviDYDBTgkn+AoblrB87x1c1
         FlIDmhCefPan8LJLTnFRXQmIqbIIUX9QDWbW70Rs1zVcoQqV9xAp0kfF75GDu2zBfs3R
         JiEQ==
X-Gm-Message-State: AOJu0YyHAM9HBd5YV4TufMWIM2t0YA7HmhAY8jtmBUCAGkntXM2H5H/j
	RpoFlJlE2oxvV/WYVxjt6g2yLA==
X-Google-Smtp-Source: AGHT+IF2yDk0ORHj3h5bHzQeAeyXQq+pA6bLq+/jITc225DiTuU5EVlOS/3ihLC9XPjojmROOEaJNQ==
X-Received: by 2002:a17:907:6d06:b0:9e5:2c72:9409 with SMTP id sa6-20020a1709076d0600b009e52c729409mr17542236ejc.43.1701285161428;
        Wed, 29 Nov 2023 11:12:41 -0800 (PST)
Received: from [10.167.154.1] (178235187166.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.166])
        by smtp.gmail.com with ESMTPSA id bm10-20020a170906c04a00b00a14311b5c5dsm2116020ejb.185.2023.11.29.11.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 11:12:41 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 29 Nov 2023 20:12:31 +0100
Subject: [PATCH v2] dt-bindings: interrupt-controller: Allow
 #power-domain-cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231129-topic-mpmbindingspd-v2-1-acbe909ceee1@linaro.org>
X-B4-Tracking: v=1; b=H4sIAB6NZ2UC/z2NywrCMBAAf0VyNiUPpa0n/0M85LFtF9tN2FRRS
 v/d4MHjDAyziQKMUMTlsAmGFxZMVMEcDyJMjkaQGCsLo4zV2vRyTRmDXPLikSLSWHKUp65VLgx
 DD7oTtfSugPTsKEy1pec8V5kZBnz/Vrd75YHTIteJwf0HyqpOad2qc2N6bW0rtXwkYheb+PEB0
 3VGcpyaxKPY9y9+OyMkvQAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawn.guo@linaro.org>, 
 Marc Zyngier <maz@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701285159; l=1641;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=f6wILRBcHfTpBzpwZPqcN3wht6J12rCYsaONL8uADFY=;
 b=YjM1VzmRvWa7z1KEZjZbUE6xADf/i5xfR0MsvL8bqgr5xxMl1niZLYjuf5EEbpjDMG+jcVLxN
 6rQ+5U+7j1mB1ZZHWIcoJARciMAl/or8hk0l9v5Ol0wn7zy3bdQJH2t
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

MPM provides a single genpd. Allow #power-domain-cells = <0>.

Fixes: 54fc9851c0e0 ("dt-bindings: interrupt-controller: Add Qualcomm MPM support")
Acked-by: Shawn Guo <shawn.guo@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes since v1:
- Add this property to the example
- Pick up tags

Link to v1: https://lore.kernel.org/linux-arm-msm/20230308011705.291337-1-konrad.dybcio@linaro.org/#t

Marc/Krzysztof, can we still pick this up for 6.7?
It's been stale for quite a while..
---
 Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml b/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
index 509d20c091af..6a206111d4e0 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
@@ -62,6 +62,9 @@ properties:
         - description: MPM pin number
         - description: GIC SPI number for the MPM pin
 
+  '#power-domain-cells':
+    const: 0
+
 required:
   - compatible
   - reg
@@ -93,4 +96,5 @@ examples:
                            <86 183>,
                            <90 260>,
                            <91 260>;
+        #power-domain-cells = <0>;
     };

---
base-commit: 1f5c003694fab4b1ba6cbdcc417488b975c088d0
change-id: 20231129-topic-mpmbindingspd-4870acff9e18

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


