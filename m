Return-Path: <devicetree+bounces-50842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BAD87D525
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 21:45:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08BBA282FCE
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 20:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 741711CF92;
	Fri, 15 Mar 2024 20:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="X1RPlBLf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1A417BB7
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 20:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710535535; cv=none; b=LJMPIPGAkYknobc8DaqY7k38Zxo81BmPDn/sJFeZoCn2KxzsEMwFdxad2+JIQeDSEo+nrPmccBiZ9EzP83jILG1U9buMsFRg1BTIfoRskaExpzkuBvtrtSYiccqYQiiSiTIiCwL/29CHRGfXKMAKeFKp6gijcoWAwTju6mSiZ/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710535535; c=relaxed/simple;
	bh=y0v/qK5aQ3HS8r+5bwFcAGyhsmSwl5bpWypY5M88VBg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=tHOHYTP/KQ6i0XQZyHyNs72R9A22M1/9nhd0V3ZN274HB2p9hssjOyVm/aL68RvHh9QJ+grksjTDpHP3TC0EmBvKWwW0HCQz9ZfsJk0RI9a7U2W13pBGSzPWCWsSfQ10DFaRulTS7tbX4HUEAj9tjPEvD0vy2RVmb6RKDZNppNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=X1RPlBLf; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-29a5f100c1aso1652820a91.0
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 13:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710535532; x=1711140332; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PQYzUNy+Emf54idwje5yghrSqUUAVlujONdk1QB+Gj0=;
        b=X1RPlBLfZFO1UOZRqd0nbJSrV50ea5ul0oNbDO+K70os0lv5Xt0uCB8MDUA77oBcde
         7C5y0QgYUjdIiA4Ajc37Th8V9BuXMYZsnpJOknGX8LE9Wde0/jKZZ8JrJ4Wr1wO/0nnM
         migXzXSpEuB+oDh4quVL86av9fhCYdBboD24Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710535532; x=1711140332;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PQYzUNy+Emf54idwje5yghrSqUUAVlujONdk1QB+Gj0=;
        b=UF5bQIuo6frhNXlbmuaAAD2CbAChJY3O0o/iqaLsj2mFp8nNKmbAfCVGcqJCfDFCHc
         FwowDcjLXsq3wKCi+00yiiay55QzQYC2Y6RL+U9KZpasCeyauXLaqQA46I4WGoDP9opZ
         UXXPRmPozS7yMeHi1jB/+5MZbLVKyG/iNXA6xvEhVA04UQdlVQAsuRm96tdLfvacWPBZ
         PgPQrus96Lc+GkQX6x8nbbUrJ/7MS9jQDg9IUkEl8mYaMxgGCk/8m01dCMfNzkwsnz3P
         d39rHfzGcK2JwauNPYJWZsbKmWc4Lx4l1RU3l1Fb2I5uFk9PvMcYICeyddVn1RqJ//Oi
         oiiQ==
X-Gm-Message-State: AOJu0YwK6SidJogybnQBY4394znia1W1FOmGN52cdQJIbiYRE+LYRSjv
	efoJXL64SQjaqmPTEghkGHoknj3IZxDMrZ9qc3GneqF0RJL4wv8kiD0wb1KkN7n5xxL6qc6y1Ro
	=
X-Google-Smtp-Source: AGHT+IH/pFa5YIqgsiUamutpDbRvNzKqE9dmF23la891oWrgMUNBg5Q/k7AEKz1zDJwE6FXGMdb+PA==
X-Received: by 2002:a17:90b:180c:b0:29e:5ed:eada with SMTP id lw12-20020a17090b180c00b0029e05edeadamr1838341pjb.37.1710535531667;
        Fri, 15 Mar 2024 13:45:31 -0700 (PDT)
Received: from chromium.org ([202.144.206.254])
        by smtp.gmail.com with ESMTPSA id iq3-20020a17090afb4300b0029bb8ebdc23sm3400516pjb.37.2024.03.15.13.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 13:45:31 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: linux-mtd@lists.infradead.org,
	Michael Walle <mwalle@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 1/2] dt-bindings: mtd: fixed-partitions: Add alignment properties
Date: Sat, 16 Mar 2024 09:45:20 +1300
Message-Id: <20240315204521.28613-1-sjg@chromium.org>
X-Mailer: git-send-email 2.34.1
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

(no changes since v7)

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


