Return-Path: <devicetree+bounces-220540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D0FB9748F
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 21:07:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0C79321828
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 19:07:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69CB5302CB0;
	Tue, 23 Sep 2025 19:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RqfmJOOK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E73730274D
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 19:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758654443; cv=none; b=P3+iF0I+iy9hDC8G5Ke5/G750HR2mSD1htvfaeVhQjgNc0k3KXy8CvlBgIRps/a48AoqIrNJmT8vXb3na+wqJcA8o9beHjLmJUp4r53hdTk1gZpB7k7jpDhYnXA3oy3NXz5uVf4NHfihURx/qV9hn12Kyqh3eA2BPR8/A/QXYcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758654443; c=relaxed/simple;
	bh=QgVgbq4g9r3DsKzKpUEjKl9QE2+bdP8si2aMkXfho5k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=q/mPaEapa+p/2pJ/abCUO1cHRVD+VtSQ40F16VGbRJ8m7vN3xMKQ/88NOG4xm7KOpff4XS2yz/zskjTNV3eOPVOewfhbXL4pa0QTGzpXpqfXEfwMAXDDK3kTt2ZGDSt0yYpxUlB0MRQtOI1Bv7py4za4+TwRjNVysxMG1bkFTuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RqfmJOOK; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-46e1bc8ffa1so15164995e9.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 12:07:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758654439; x=1759259239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iIzcezubwlq0RFm/fy2Wz7m1elEGd+5wrncON0Sn1iM=;
        b=RqfmJOOKyAdZWFBWvEk01sIkCGVdRj+oqpn+amAuciY6dICRvStUkyb7ejPfI/NpKq
         rPVJOXM9n9dOO+DR6T9voctkYUzWoSMMUppU5IyUqimcxZXbJ4MRLR9o2yYNxfBKeUvF
         ZZ+aUxYG8GYaTnLI0Bry0qxoFRR23xMmyrr5tQpJDE6znuDcqwXmGy7vh8iHn9iZ2D6c
         hrIJKiAVpMjf5DqCUP26DvEt/9d5UrLZJrxt3ojIP+Ioq0GHThIUZkyd8I1ovaabDcCt
         qFhNpoWyFYxoMHS7I9C7hfEQ7V1syy44TGNybg4LaUNZCPXqzyA7+HoqvOg399GCdI9j
         6vFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758654439; x=1759259239;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iIzcezubwlq0RFm/fy2Wz7m1elEGd+5wrncON0Sn1iM=;
        b=t4LNwSST5YaKG35hlv4z6wP43VpY2iMlXA2s+kT0sKk4q6ACZvh4VKK+TofyWTSjpX
         ikhMH6DoIptMmwdWpGcAKmkYebfLfNdF52Plf+W9OqJob8fD4sUSRLRR5CfBmZR4h/A0
         5QZc16zlj1czKqQAso3Hd2jrfj8rnxpuihh8tbR2SptgoBO1Fc/ZFwK8USxAVo2lZ/YI
         ZxerHMNeWNOGFs3XhsCkN+HZ+BDPQTFKDXS15YKHaq4KBLkKjAzhcoI2rPEL8q7WPJEd
         v54cvcYmlHjtNHGZcC62yB6spP6lMwm7oEkRKeG3Gtc0oXtfxInGEgFLgeqhUDsd8dwM
         R7ew==
X-Forwarded-Encrypted: i=1; AJvYcCXS+w+O/3H9r2l9AQV9aq02MEhK1X6PTszuT+SYi4get5CGoSEDFRIhozr9d66cUv1zCykcXs7T8I1O@vger.kernel.org
X-Gm-Message-State: AOJu0YzCMu4OHtAkTLW3SAdcqriRUMXSkaY+uE1W07g/oVxpTXXRf39m
	ZY5yRMJhuwIrcI+7Dv0Z62oH3OIaP3lY1aqfaZFeV3oCEG3qg+wSUEFf
X-Gm-Gg: ASbGncvxiRjp65jf7jaKKgjwVUHqp+UaAsOk3h3qVz/yI391t8DPpEJ6kgvnklvCqdu
	FoYvZ6QZyrwISHzQ5yCSCfakssYVWglbmxgiAeYN3AJbmDXHIK0Stcv1q4MakHwbSYHHl4ENuiC
	xmWP+nTqsJ9E5pzo9onh3OjpOsTEASyuyNLjLAZxBDB2nPoE+klVAtNEX4sNzgQdNxp5wA+yMwo
	fM3YW2N81xt3wCERVX0o7rb/qtcENNK88IqV8xnu2bNSzMPTVvIVCuWdmA0u3Rn5V2lp7mGUrRR
	CsL/1zc0ybEgAsH6FcY8IwG5KN2Lan3wj7LSDuZrGB0o7K8p5ta/AUn7eFoVeGes3WnwoEJ7hVR
	tNCWItlhlpvvXz8RS6GO3CtIbZYpjCrJUu35zzyR67XNu8CqJrT5VAET8Qkwq9iHNs/53d/M=
X-Google-Smtp-Source: AGHT+IFMC5WZipXFwAc0jOhdCUt9YzXLNEh2M6BwA3JZ+CheIOjLK/BQJ1BA+7EBMR0NC+aWeWWvaA==
X-Received: by 2002:a5d:588e:0:b0:3fb:7afc:c17 with SMTP id ffacd0b85a97d-405c7c5e8d2mr3394096f8f.28.1758654438709;
        Tue, 23 Sep 2025 12:07:18 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-464f0d8a2bfsm265240915e9.2.2025.09.23.12.07.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 12:07:18 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	upstream@airoha.com
Cc: Christian Marangi <ansuelsmth@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: PCI: mediatek-gen3: Add support for Airoha AN7583
Date: Tue, 23 Sep 2025 21:06:59 +0200
Message-ID: <20250923190711.23304-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Airoha AN7583 SoC compatible in mediatek-gen3 PCIe controller
binding.

This differ from the Airoha EN7581 SoC by the fact that only one Gen3
PCIe controller is present on the SoC.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
Changes v2:
- Fix alphabetical order

 .../bindings/pci/mediatek-pcie-gen3.yaml      | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
index 0278845701ce..1ca9594a9739 100644
--- a/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
+++ b/Documentation/devicetree/bindings/pci/mediatek-pcie-gen3.yaml
@@ -58,6 +58,7 @@ properties:
           - const: mediatek,mt8196-pcie
       - const: mediatek,mt8192-pcie
       - const: mediatek,mt8196-pcie
+      - const: airoha,an7583-pcie-gen3
       - const: airoha,en7581-pcie
 
   reg:
@@ -276,6 +277,26 @@ allOf:
 
         mediatek,pbus-csr: false
 
+  - if:
+      properties:
+        compatible:
+          const: airoha,an7583-pcie-gen3
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          items:
+            - const: sys-ck
+
+        resets:
+          minItems: 1
+
+        reset-names:
+          items:
+            - const: phy-lane0
+
   - if:
       properties:
         compatible:
-- 
2.51.0


