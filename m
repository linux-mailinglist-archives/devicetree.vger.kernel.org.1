Return-Path: <devicetree+bounces-36696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 275FB84258E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 13:57:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A0971C24408
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 12:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FF906BB2B;
	Tue, 30 Jan 2024 12:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="fXz9y118"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7C66A346
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 12:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706619371; cv=none; b=GCPQCAngxmm62rEaVzW7p2SBc6VB91wFiTcDoa95HOpwDGWXoxw78vpwD09qPYiBOjXJBDKbJB13zfA24Ne4A18dTWmw0oS3D87mk+gZQBt26RF7U7NNRKl9XibsMQSF0U2GzCdiFc8n8HLWwtmsAs2Jf/7xeLX5tWgrIBIyqaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706619371; c=relaxed/simple;
	bh=M4XsD2YqgFaHUtkGgYzJicc7rP4UsBxaptjLYNfjVQw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qwlNMzRT9yRfpCiLgzakPQQ6NdCNA0CyhVLXfGu99WBfNf3TXf0PLbMwlEG9bC3W6tzyBaIFyQBcNu5b4gflDcfsO7jj9yFaHefv0zvyLD9TPHFgxOCkMPH5OnCJQjWfIK3cOhAObDtxmHBWiyqvTXpKFrqAA4+d7brNIyaFmpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=fXz9y118; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40ed356a6ecso35023715e9.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 04:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1706619366; x=1707224166; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p0WnNI2YK39ATDOg8LAfQTT3VKByFvuowcIiTTw06Xg=;
        b=fXz9y118rwHEV6PDkTe9N6SctY/nUXbGbb78S5VB/mafFn8MyqC9FLAEoxDh9tBn+X
         irGQDFx2EOuFM0LtNqZ1rVk/Uu/FWAqNDWnelr2Fh7FvcX3hS6Rln75gIlNf5hCtZ9Cm
         uh2XWdzhdAZ1sUb8ZGdQ25kuUE2aja1VsRzqGYoxftO6NfWVoUyiyi81iN1APVuTtioX
         UyXa0ns9wO7mxsylKE2Sr2qEV99KEJ9mJhIZU1vhNimJQsAe6O6ARIqt44qkZfTrnXF9
         MKljnU9361/7Gfupes8Fi1p9B2zfZUTyxi0G2aO1FVr3GKw68pFLo35b8bnnHUJzc9wl
         Ph1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706619366; x=1707224166;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p0WnNI2YK39ATDOg8LAfQTT3VKByFvuowcIiTTw06Xg=;
        b=hu07ccnHM2nPRdUq3UHYK+OCYy9tyGJBhIxkrDBP3sebdvOIi30IgmZMxfW/1hymQa
         nB+MXkRrGAto4xCI4Xuzj/40UAD3X5XmCYHtQ3SpknUupMtAcLk0EPkB9BKbrc/JXnX4
         lMJJl6nF6e85tbqRG3vl0BCWerUFhvOqSOsGEYpkp8I3YEuId3njx12DxXroE+PWtW1Z
         bFMMHxZm0iDsxTK3EJjnuCqQC8s/eAUOJaY0AeX7JbVUe1YxZxe/qN8L98HsTy/7UvPW
         bB8z6Xb6X3mAuoGfarGECPv02QcrxfscwOdNI66cle9MXYgDAVNx26+pEynMhJINBK39
         BNxQ==
X-Gm-Message-State: AOJu0YyZprIdjT0ZMSHx4KU7XfkCMd+L+r+uX9PLaB/IJzAnU3PKGmPx
	LzkD3Z/dOQFvhcyPKJ0+5op0R0BHk7gOrURW78QuA7mU9mPTVjfpkoDUf/ungXs=
X-Google-Smtp-Source: AGHT+IH5UpEtCHAwYxTDzZEdfbp6IFLtYvDCya77aywlbw0lKIjxQZRgTXhCgWkMmuE25Z5GRCadPg==
X-Received: by 2002:a05:600c:20d3:b0:40e:ac8f:e6c with SMTP id y19-20020a05600c20d300b0040eac8f0e6cmr8306243wmm.30.1706619366322;
        Tue, 30 Jan 2024 04:56:06 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVyZyNtVYjlyE7L+nAo4rZgAuKLYRBzaj3IlcekAWyO/LiZvf5ny7nMfjyJj1/m60akb90sqB9QANITftV/LcRI+BoIaYKb06yYHdXKSas7WnMNedS+QbIbACA8EiS6dUEupHvAK0sRa7o4BFAuPQ1JXb3PeU8k09faxFvmkjPIsvEDEGS/BU6c93nVQfVmnX25nM4Gelpxqhnmyq+PEDAJiWJfeBuBh7bkT+1GsQDN5h1IMbaf1Fn4XXlcQDkIa8rpBPhXkh2CmPWHHEUEtYK3774LRL4cTWBkctoR1lz6sFR+yecM4RYt0Xmq3SOmUiJQdhAVh5uimNy313Qtsty96pR+PCHzdd2fQ/sygg==
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id az29-20020a05600c601d00b0040ee6ff86f6sm11878125wmb.0.2024.01.30.04.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 04:56:05 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Patrick Rudolph <patrick.rudolph@9elements.com>
Cc: mazziesaccount@gmail.com,
	Naresh Solanki <naresh.solanki@9elements.com>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: pinctrl: cy8x95x0: Minor fix & update
Date: Tue, 30 Jan 2024 18:26:01 +0530
Message-ID: <20240130125602.568719-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update maxItems to 60 for gpio-reserved-ranges to allow multiple gpio
reserved ranges.
Add input-enable property to allow configuring a pin as input.
Update example & fix alignment.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 .../bindings/pinctrl/cypress,cy8c95x0.yaml    | 38 ++++++++++++++-----
 1 file changed, 28 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml b/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
index 7f30ec2f1e54..90dda5d3cc55 100644
--- a/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
@@ -45,7 +45,8 @@ properties:
     maxItems: 1
 
   gpio-reserved-ranges:
-    maxItems: 1
+    minItems: 1
+    maxItems: 60
 
   vdd-supply:
     description:
@@ -85,6 +86,8 @@ patternProperties:
 
       bias-disable: true
 
+      input-enable: true
+
       output-high: true
 
       output-low: true
@@ -125,14 +128,29 @@ examples:
       #size-cells = <0>;
 
       pinctrl@20 {
-        compatible = "cypress,cy8c9520";
-        reg = <0x20>;
-        gpio-controller;
-        #gpio-cells = <2>;
-        #interrupt-cells = <2>;
-        interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
-        interrupt-controller;
-        vdd-supply = <&p3v3>;
-        gpio-reserved-ranges = <5 1>;
+          compatible = "cypress,cy8c9520";
+          reg = <0x20>;
+          gpio-controller;
+          #gpio-cells = <2>;
+          #interrupt-cells = <2>;
+          interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+          interrupt-controller;
+          vdd-supply = <&p3v3>;
+          gpio-reserved-ranges = <1 2>, <6 1>, <10 1>, <15 1>;
+
+          pinctrl-0 = <&U62160_pins>, <&U62160_ipins>;
+          pinctrl-names = "default";
+          U62160_pins: cfg-pins {
+              pins = "gp03", "gp16", "gp20", "gp50", "gp51";
+              function = "gpio";
+              input-enable;
+              bias-pull-up;
+          };
+          U62160_ipins: icfg-pins {
+              pins = "gp04", "gp17", "gp21", "gp52", "gp53";
+              function = "gpio";
+              input-enable;
+              bias-pull-up;
+          };
       };
     };

base-commit: 861c0981648f5b64c86fd028ee622096eb7af05a
-- 
2.42.0


