Return-Path: <devicetree+bounces-50371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 055F087B65D
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 03:18:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28CD61C20F74
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 02:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 144121C06;
	Thu, 14 Mar 2024 02:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="KUNWi+v1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740644A15
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710382716; cv=none; b=PcHW2BOshubvR6FlL/Tq1lO0XJD8Kk7xnisQVz09fNu4njnYgHnzk47me2Itl/Y2jdWlWyg9Shh3pm25iGLroHu7S5FT/OqAKREM5ep2om7wXswBEa5wsTD5r4NCX5NM+C+MVp9kwHLs8NNlBgIWhonTO7jgz71eBm8h2H5VxU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710382716; c=relaxed/simple;
	bh=g7vEnho4KgVqd3zIlFIhWB3dU3UC1oJopzBuAznghs0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Y0IH2aclLW5QxFBYVmnM1waqL0WdSgTn/sGs74jdc6iapOFfpz7wBNbMWMbKVpBx8/+b+sjEt2sdAhhEWfxI+uxJm5GtZjGauo3sSmr45c6I+YWn9IiZ4PVHFGzs3p9O6Yh5xQiW+RO1tqhkwfJCEnphrYCidYJzA2010h9gJhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=KUNWi+v1; arc=none smtp.client-ip=209.85.216.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-29c6a917a8dso451114a91.1
        for <devicetree@vger.kernel.org>; Wed, 13 Mar 2024 19:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710382713; x=1710987513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NMXxgYFB39c3JQb86pcYzX4ejK9UB61sydOSCe9B0SI=;
        b=KUNWi+v16FOSGVjQIJz2I3O4Ua+xysDllewL/bJ4PLEgNIz8F5InacyakaalbBFmvx
         ejXVfCyKiAXvfCZcrOzFlkrCF/5ESlGz9okbhYX7l8c3uXCvWeQ9sVrH1T4Kd1z/8PrT
         Nr9qYOYsn/4FvKU+EA7630srBpkGZlR/fpiQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710382713; x=1710987513;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NMXxgYFB39c3JQb86pcYzX4ejK9UB61sydOSCe9B0SI=;
        b=wtxObASwxOcM5ZZvGXUTw2T0UEXrV/W5HWxp1Mp+7KpGo4ywO93bl5k9b2wM2Djv6q
         YzfNv1Q/yo8UwS31ndLXSnEV/ham+If3jHs1u9aDjYfAw7c3CJWWEsxglwyQ3jk2wkpF
         SWS6o69uv0oXSpZrdBx42/gl3Q/wDJX+fTZngBxrPR6XHVapDevKQAK5bEZI4QZw+oS+
         xnToKcoo7k3nPJt//AcT7mWth0HaQh44WEKFaDzzB3at0X3+B4CI+O/cBuWQLRNVKbpP
         k/fSdBUDnJh6SSFF5STFwBG11Im2lVt2NpgGnM6pZkSieLlDfyV/FXWGTyB7fkzLruof
         exsg==
X-Gm-Message-State: AOJu0Yx+/kedz8xMTvTKI/xOnBfxlysvw7gVkFGQY5r/AXVuhWXgVG5m
	EQzH1cX+QUciGcyJPrPFyev/qWGRZIQKcueNQNokHtWBVovedcL46ZXycUVIXDww60ig2BU8hwk
	=
X-Google-Smtp-Source: AGHT+IEC8GLkKGjjgaPvX0/xnlGwn3qQtPhlBt8R9T5fCKZBAWzvZ9Yc2/prutcWFyDk7dnjBytK6g==
X-Received: by 2002:a17:90a:f288:b0:29a:caf9:de64 with SMTP id fs8-20020a17090af28800b0029acaf9de64mr414882pjb.40.1710382713471;
        Wed, 13 Mar 2024 19:18:33 -0700 (PDT)
Received: from chromium.org ([118.149.82.233])
        by smtp.gmail.com with ESMTPSA id o1-20020a17090aac0100b0029bc25f7181sm1993937pjq.54.2024.03.13.19.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Mar 2024 19:18:33 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Michael Walle <mwalle@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-mtd@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/2] dt-bindings: mtd: fixed-partitions: Add alignment properties
Date: Thu, 14 Mar 2024 15:17:54 +1300
Message-Id: <20240314021754.84557-2-sjg@chromium.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240314021754.84557-1-sjg@chromium.org>
References: <20240314021754.84557-1-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add three properties for controlling alignment of partitions, aka
'entries' in fixed-partition.

For now there is no explicit mention of hierarchy, so a 'section' is
just the 'fixed-partitions' node.

These new properties are inputs to the Binman packaging process, but are
also needed if the firmware is repacked, to ensure that alignment
constraints are not violated. Therefore they are provided as part of
the schema.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v7:
- Drop patch 'Add binman compatible'
- Put the alignment properties into the fixed-partition binding

Changes in v6:
- Correct schema-validation errors missed due to older dt-schema
  (enum fix and reg addition)

Changes in v5:
- Add value ranges
- Consistently mention alignment must be power-of-2
- Mention that alignment refers to bytes

Changes in v2:
- Fix 'a' typo in commit message

 .../bindings/mtd/partitions/partition.yaml    | 72 +++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
index 1ebe9e2347ea..3df12df06116 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
@@ -57,6 +57,57 @@ properties:
       user space from
     type: boolean
 
+  align:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 0x80000000
+    multipleOf: 2
+    description:
+      This sets the alignment of the entry in bytes.
+
+      The entry offset is adjusted so that the entry starts on an aligned
+      boundary within the containing section or image. For example ‘align =
+      <16>’ means that the entry will start on a 16-byte boundary. This may
+      mean that padding is added before the entry. The padding is part of
+      the containing section but is not included in the entry, meaning that
+      an empty space may be created before the entry starts. Alignment
+      must be a power of 2. If ‘align’ is not provided, no alignment is
+      performed.
+
+  align-size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 0x80000000
+    multipleOf: 2
+    description:
+      This sets the alignment of the entry size in bytes. It must be a power
+      of 2.
+
+      For example, to ensure that the size of an entry is a multiple of 64
+      bytes, set this to 64. While this does not affect the contents of the
+      entry within binman itself (the padding is performed only when its
+      parent section is assembled), the end result is that the entry ends
+      with the padding bytes, so may grow. If ‘align-size’ is not provided,
+      no alignment is performed.
+
+  align-end:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 1
+    maximum: 0x80000000
+    multipleOf: 2
+    description:
+      This sets the alignment (in bytes) of the end of an entry with respect
+      to the containing section. It must be a power of 2.
+
+      Some entries require that they end on an alignment boundary,
+      regardless of where they start. This does not move the start of the
+      entry, so the contents of the entry will still start at the beginning.
+      But there may be padding at the end. While this does not affect the
+      contents of the entry within binman itself (the padding is performed
+      only when its parent section is assembled), the end result is that the
+      entry ends with the padding bytes, so may grow. If ‘align-end’ is not
+      provided, no alignment is performed.
+
 if:
   not:
     required: [ reg ]
@@ -67,3 +118,24 @@ then:
 
 # This is a generic file other binding inherit from and extend
 additionalProperties: true
+
+examples:
+  - |
+    partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@100000 {
+            compatible = "u-boot";
+            reg = <0x100000 0xf00000>;
+            align-size = <0x1000>;
+            align-end = <0x10000>;
+        };
+
+        partition@200000 {
+            compatible = "tfa-bl31";
+            reg = <0x200000 0x100000>;
+            align = <0x4000>;
+        };
+    };
-- 
2.34.1


