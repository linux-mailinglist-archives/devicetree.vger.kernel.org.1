Return-Path: <devicetree+bounces-147594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2E2A38BA7
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 19:56:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85703166D99
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 18:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4288236A79;
	Mon, 17 Feb 2025 18:56:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oQk7CtwQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC06D23642E
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 18:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739818585; cv=none; b=PceVHfic+GZ6SO54O4jyFt+0oRZrqiyA20iYQ1KIgzKMZekMPs6t9hoiV/AsJIOqW9vWAjgtNr9sy0Iqm6M9hL/epRxPhp3BLNXtAxGUmM8P0kVg5k5uM6eoyS113eYDv+NuvQ6Zz2M9fvTB/5GslWeJRS50yAMSRUz9Azq0vRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739818585; c=relaxed/simple;
	bh=H82/mjIwe1bn5g0vrkR5c3LtXjJgPihFdpxO7CtcYlg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PPjLIZ72/1F25JjEqCgzKSTK4ffFYtA4kxfGU9YypIAmBrCrVhRe3t/u0eg9+uhFzZFXtq10itm7zibWKEfgH5bVE6uG3NcUqPo4qL0oKxNv61bmj4YpcmSEcR6DRPoAjsLaX19j6+/hgXOrgR3DvDjW5Rti19B7iUtDNJDyHso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oQk7CtwQ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5439e331cceso5566003e87.1
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 10:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739818582; x=1740423382; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qw6XAk1G8/C1Ik+qSgwe4qm3bLoWXPlX8U0n2KP3mBA=;
        b=oQk7CtwQ/L6FaImC5QGQCf8Rv4x5V1XSjh84Oki4PlCKnVs3QNwzUaGRe7nXCAQiGG
         wD+pOvLUdoUYyTPuggX+9t7AnCQU5al7FfBeKJzLrykHbrsCFBusxLtp8RgTzl/GzqOh
         xqv2FhyH9/XerAH3lPqSlDBVGNzWdji1GZGLdgCnIHsp2MjsFnjWxy+9Qe3u4M5iYp/U
         2kQiVf2aoEKBoHf5AdtpVDA9nXlrj1iriDdYK+ZixDOzc1x6/cw96QvFik1btwtfSHFc
         iE0m/8GKHxSmci+FnT9EuFbFUD/g1JByGyK0ij6ZI8nUGVMnMCks2xWvPl8vPgA8INeF
         Tk1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739818582; x=1740423382;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qw6XAk1G8/C1Ik+qSgwe4qm3bLoWXPlX8U0n2KP3mBA=;
        b=ov0Yz1Cq1HXpN2AnKuuAN7ZHqB25+bw23clly9pM94qw8mVn4V4miaAkfS73wJhaKy
         Y9QNt39c1iaD/kAefQhZU7rKn7jIT2CKye9iiJHh4CmR7dTAeuMUU6Md9yLX0EERgabw
         W8ffrTd1vKTVTeKhaRWZv2Eq2qICBbvk0NQgtDFI7X6o4HcEZinjLGH8+n1d400yyLIU
         7SVmJn0NMuuhEsYbINCzsrk9hhL/v+6OunAqxhDsViYUeaKzzoJWsERpE9Moy6US3Q8H
         KIflbLtclNH4xQWpNlFpJMsThPU/rA8FZAd5sNMzKZA9kzn132FETc1NhmW4GJtpbU40
         sLUQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4J+tVdrtOL4C013Ne3qZovgkzy0r0uObxSz4S6dKGxSp8I7V4+rzAGcbicdX9+Kz1Zmp+C75CBZvt@vger.kernel.org
X-Gm-Message-State: AOJu0YwiODsefqnb/25jEZXZyRjk16gb5ifvmmIkHFqhywjj+Y8ZWNuN
	+WHww/ud7sxsoKqq15w+jE+FlyqaLVbrmYNmUl20WQFe5TFNZWhrwoxHdFU3ARo=
X-Gm-Gg: ASbGncslKSpx8FToLrnseyfJsEV3BHdh57EvxJV2CFmPAn4Kpx15BDv0gQZJUQaNirv
	KeOwQ+jRlV7QFPuRd0c2F4N9ewL4AHknilAjjt0n7IT6Z4rILxz7/gmA0cMVZ8YRkaBss/SR/iO
	mtTj/Yk9ayTDoS2yARSD5t++zUSBGXY87pps1i92DgeaR1cZy2ffa3DsCOJLZpBbz+qibGMR1ST
	OFSgxOS/yblxOLq/ZS08jvNulwP9rijw0fUM6yHGeAZfhCTk3yFeF6B5fZYUNX3peQqmnpW+e1L
	lyI+Vl3WoTuTGetYK7BvkgNHXzy+ErioDJUve7byR5FqXiNhfMA0SV/ER98=
X-Google-Smtp-Source: AGHT+IGitQDvRK6ewY7mCLOw01u4oKU+hUBnH8fKbKmky0J+4NNyV4/eUF7RPvmIju2VRWAi4HUd1g==
X-Received: by 2002:a05:6512:a96:b0:545:ee3:f3c5 with SMTP id 2adb3069b0e04-5452fe45e25mr3123339e87.17.1739818581772;
        Mon, 17 Feb 2025 10:56:21 -0800 (PST)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00--782.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::782])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5462006b0ecsm559806e87.160.2025.02.17.10.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Feb 2025 10:56:20 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 17 Feb 2025 20:56:13 +0200
Subject: [PATCH 1/6] dt-bindings: PCI: qcom-ep: describe optional IOMMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-sar2130p-pci-v1-1-94b20ec70a14@linaro.org>
References: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
In-Reply-To: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mrinmay Sarkar <quic_msarkar@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1369;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=H82/mjIwe1bn5g0vrkR5c3LtXjJgPihFdpxO7CtcYlg=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBns4ZPefQLfbWS8T8hT7pmVPyLqHiJC9XlTw/T+
 h0vBvHLrb+JAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZ7OGTwAKCRAU23LtvoBl
 uPCzEACf6n4nEZ13Thw+iJd1uwtmqOjNb0nzq4X63+Wl1BE9GYVB3KLAC2xU+Sff7gtv/y1Vhnl
 faseZrFqQRvIwD1oYAX2L750kYyB0hodEw6LvackREggG08BSpptZT10gSLaPULpGDjgVw8q2eu
 dvAZzU9lswDh6PtO13LGwCbNhEN5nyxTFMMKr1Or9On7lTSRhAxtl2n2c3lyzM08e3kWu8SBjT7
 7wH9K+5alYYDmofT9hC2cXOV6z2tmiAHd7T4SYTzkvzMLJK7b4iGk/q6SaiVIyCkHZpwGPku2lA
 H5R5VAHPWugwOFDv/nADHcrgkIcCsM0AUG5caNRqupFzCGgm+26/9X/EjO4cZb4Kcp5YQ0atBIq
 cpxLQdlQFaEGl8sylXTdgL4AeSBbo2Cen5EVAzq/wQH9fB0/amEdKuH/8QY+cDdE4Cnul8HZG8i
 jzRDVa7/vKZHJTKOUexY6vb522gP7Nw8TGwdUiXNqwCqrROKpeyTxMxKtcVHEjkG24yptPjg3i0
 J/oY/X0N0DXgrolrbFSCDS/K+BACiDkXSNYCr1IpTcffq3WCa0k2cKdElscQ1ErwLMeRhnu7m6K
 BQ+X4gHUjQ5FNt/bx0Y/4T7Pk9hWsk2TvQJXQVZQoWXv/EBGpBede6F/9D6bUcMot8BQVtxr2mk
 RWhqDf6BeWIjV3A==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Platforms which use eDMA for PCIe EP transfers (like SA8775P) also use
IOMMU in order to setup transfer windows. Fix the schema in order to
allow specifying the IOMMU.

Fixes: 9d3d5e75f31c ("dt-bindings: PCI: qcom-ep: Add support for SA8775P SoC")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
index 1226ee5d08d1ae909b07b0d78014618c4c74e9a8..800accdf5947e7178ad80f0759cf53111be1a814 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep.yaml
@@ -75,6 +75,9 @@ properties:
       - const: doorbell
       - const: dma
 
+  iommus:
+    maxItems: 1
+
   reset-gpios:
     description: GPIO used as PERST# input signal
     maxItems: 1
@@ -233,6 +236,20 @@ allOf:
           minItems: 3
           maxItems: 3
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,sdx55-pcie-ep
+    then:
+      properties:
+        iommus:
+          false
+
+    else:
+      required:
+        - iommus
+
 unevaluatedProperties: false
 
 examples:

-- 
2.39.5


