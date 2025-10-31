Return-Path: <devicetree+bounces-233528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CED15C23432
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 05:48:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5928B34B6F6
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 04:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A4B41F5827;
	Fri, 31 Oct 2025 04:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="obTet3uu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9172522BE
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761886109; cv=none; b=igSVzvLaT80FoBgZh+PH84mGr0A462eR+hUfFzu8zL4Q8+r7qRY8fIjy74JqltfgkYe1HtY632cVBUYpmJFJCU7ZgVK9SLtOMGY8An8bGUt0pj/e7QYtrId++03cTylkOV+Yqs6CmMl5ApnHTazFbeuOKZ5xZTBSFxUZ+olfztE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761886109; c=relaxed/simple;
	bh=VqneJzSj6ZAncie4Pm4kr22vBIPcmTH6MVSrCpJuRgA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ic6IVrEp47GyaOfH3D8WFidEntBwKonm6LUNAA69T9NIQDYEH2H+pfRxzLHfvWTTiLEERz3PUpi+e+R0Xd5/D/9PAG0Dfr2xq/xZH1WmMyfIqP9b3gbvohvWH8i28pNkM5Nqmj93LzyWPvLXxO94RImum/TObjow3ce4mNNrA5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=obTet3uu; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b6cf1a95273so1268507a12.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1761886107; x=1762490907; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zhMtSPXj9mr8UNmQXgxlkL8r6YPZnmm760J+NfJOOMc=;
        b=obTet3uugPXpambmH203+b0HoH6vkCt97hvsBDPJAuc/DEzPbYA+BeFubWjFyvkmKM
         fhGtGKhBBvikSqT2kJrPiK3OE0y0xFvcFiKZ+xExrFyP+VMEUxFNmw98uDFqr5KUSJMI
         73ewlwsJ7wutmoSBHXN6ZDXE9p5SQTwvbyuz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761886107; x=1762490907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zhMtSPXj9mr8UNmQXgxlkL8r6YPZnmm760J+NfJOOMc=;
        b=P19zK/gXI+0760WOLURKqFmDGP7CTlatUjBAo/7OZPOjB3VRXoUTMKzyjUl0pzdS/n
         Bh9PwyLa65BCqbsYmiRbtyHYt58uGIDVjEsjyoHRsv9BC0lA6hrO0Vnte7mgY9V060EM
         jHYIuVeHs/gNyd7XBSOiB+3dbX2vRttpIpFNCa3nN7mmR8gZ73LCrZSZ7Q9WsUcEZPha
         /1K3qDnifnbdz3BZb7PfQ7fWwd0cWwWWKvdOsl7J91Y2JzTK1fGbEGCuvk8kFhtfdCc2
         QAZeGZhI+UnY8bjG2pX7251Ts9wv259pCvlzANlAzGxzTHZnupxh2zdInvLH1WJ/ZpEV
         UB7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWbBMXsi+jP+0i0pEcoxxWu3IhklhwbRQbRMM2jg3FYSaXSY4SjAQyJPnZrxz5Gl5JAOJmbqRnYxXiM@vger.kernel.org
X-Gm-Message-State: AOJu0YyRtZS1GaRXzANJmY2/R2UewK1T6Q26exxxIuUhUhYWQfh/Ja9Y
	9N4yd2NyX+z4rHoFHU5J9qanAxqhgfaCQea9lP/Q/gE0nHLynv/3VrHWBC6PMXtuT6OUQ9h7hGX
	J3iIz
X-Gm-Gg: ASbGncsvRV3XZVkyzVLUAV56yBrLicz6pL4sKMD8BH/Ohrt8YkuG870NM6tUqY/NBL5
	TOj6ZPpK4WpU90Y8Ie44Qn0enGvnUBfXci0IPizQYe9qorg0CbKPp003KYudiqxprRyQfd8Juoo
	ugPfJTFNdMCvHxxdQ5XQJd9WEf1qCLGN5xUFS/+lCiaBZRrG5asxRIj/TYrcT7MEo5saLRNfjXx
	H9TJNZjnKG3/+nSCOBHAztqz8Ys1lopK1g0qpuiEy2QscJduBpwM00d3EE5+vphkYm3yefBDrZu
	tynu3scFHem3CI7y0hbLFDojBECRMBociOqfUA69xdmY7bt6C8JY/xgG/mqm/b9AZOEyG7T2J6e
	U9MaltqE2rfwpQkny2Zy/x6MEPf5O8o7ITmNhO3Z+VIKJpkTQJ8okWsR7R3qmeSkS3sn5OZuwQR
	hEuuzpMZ4bO6yBqj2E97zXk6iZYSWG4Uta4Z/c1VV8mRfPnrcWxwqk+xpNSFcGIFXJSA==
X-Google-Smtp-Source: AGHT+IFwFawjyprL+VHJsQfq2A4QRg6Hp0AFrY3h2r8j5KgsvmnqMgO6Eqm+eFSnxQRGXR21o0uvdQ==
X-Received: by 2002:a17:902:c943:b0:267:9aa5:f6a6 with SMTP id d9443c01a7336-2951a470f8emr31237585ad.19.1761886107292;
        Thu, 30 Oct 2025 21:48:27 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295269bd2fesm7238875ad.105.2025.10.30.21.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 21:48:26 -0700 (PDT)
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	adityak@vayavyalabs.com,
	Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>,
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 1/4] dt-bindings: crypto: Document support for SPAcc
Date: Fri, 31 Oct 2025 10:18:00 +0530
Message-Id: <20251031044803.400524-2-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251031044803.400524-1-pavitrakumarm@vayavyalabs.com>
References: <20251031044803.400524-1-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add DT bindings related to the SPAcc driver for Documentation.
DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
Engine is a crypto IP designed by Synopsys.

Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/crypto/snps,dwc-spacc.yaml       | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
new file mode 100644
index 000000000000..857e5c6d97fc
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/snps,dwc-spacc.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/snps,dwc-spacc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys DesignWare Security Protocol Accelerator(SPAcc) Crypto Engine
+
+maintainers:
+  - Ruud Derwig <Ruud.Derwig@synopsys.com>
+
+description: |
+  The Synopsys DWC Security Protocol Accelerator (SPAcc), which is a
+  semiconductor IP designed to accelerate cryptographic operations,
+  such as encryption, decryption, and hashing.
+
+  In this configuration, the SPAcc IP is instantiated within the Synopsys
+  NSIMOSCI virtual SoC platform, a SystemC simulation environment used for
+  software development and testing. The device is accessed as a memory-mapped
+  peripheral and generates interrupts to the ARC interrupt controller.
+
+properties:
+  compatible:
+    items:
+      - const: snps,nsimosci-hs-spacc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    crypto@40000000 {
+        compatible = "snps,nsimosci-hs-spacc";
+        reg = <0x40000000 0x3ffff>;
+        interrupts = <28>;
+        clocks = <&clock>;
+    };
-- 
2.25.1


