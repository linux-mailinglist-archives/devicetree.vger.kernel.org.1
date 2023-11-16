Return-Path: <devicetree+bounces-16360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC167EE5EB
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 18:29:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4657A2810E1
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 17:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B971433BC;
	Thu, 16 Nov 2023 17:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="h0aSbLlh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F0E41A8
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 09:29:07 -0800 (PST)
Received: by mail-il1-x12e.google.com with SMTP id e9e14a558f8ab-35743e88193so3952805ab.3
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 09:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700155746; x=1700760546; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Sbuu/h0AoaC0z3nDtNhgNQ0tUOdrcyZNu90tL3+QkP8=;
        b=h0aSbLlhIZZ4V11+3ftA1McXAc+4N8q0mE3pBF188lL0rR7Z0Qn2zxoAl2Cp0vzkYa
         SpWv/o0JIkFXZHpZQ+dOfWv0n0FRv/kpGtOvor1cMRF1LpgVBfCVeTY4fsJVanlIrzoT
         ZIwwHcvrv9WGeEhYNv2RLtVvxeqfT8EAk5YNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700155746; x=1700760546;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sbuu/h0AoaC0z3nDtNhgNQ0tUOdrcyZNu90tL3+QkP8=;
        b=NKeKoD7xaaAQL8raEQAKJUxskkX4Awm9qPKIGS/BG3hVjbrdAwB2+jblsJxfG78XMk
         wkuhwUK6SGUa5uBSFR14moJLgZ0P1TgBFr0r3FDulEbw7Rto4bTVPB2ecBnOLqjHhi//
         k73dM08MbVfy2/YCDRBiP5gOom9bk5urLsARLG+HBygfvI0cxmwnlfLsmik9+Ye8xyzt
         dT3F760cnzrXHq8P+ChzDIGKoVtajvh1Ds7g3hr9jg0nyUQcNsLx1MM7sI2H7GSUubY7
         90ly2ZyECAwWrxfGSzf6ZuPka7lCT00VcqqHMWHGAQKtsjIvL/iDrjGFJKp6uJoYNmC8
         y+Dw==
X-Gm-Message-State: AOJu0YxBBFfsEdxjlLIB0cHQ4yK+Jq+9hcY5gvq1dIXGVN+DCbiyPJzT
	GlHsvHIFLhYqbEo4fPBuQf+AwafPHV6gp9fZmMG6vQ==
X-Google-Smtp-Source: AGHT+IE9Yfv/30lHqDUpMHSfiZOMWk3dnHo8Xmo7XHjmfFGyS0UQeo20uO84tddH2390/4yYVU+Aig==
X-Received: by 2002:a05:6e02:216a:b0:357:a049:91c4 with SMTP id s10-20020a056e02216a00b00357a04991c4mr17861655ilv.22.1700155746310;
        Thu, 16 Nov 2023 09:29:06 -0800 (PST)
Received: from sjg1.lan (c-73-14-173-85.hsd1.co.comcast.net. [73.14.173.85])
        by smtp.gmail.com with ESMTPSA id o8-20020a056e02092800b0035ab8cc4a4bsm1914348ilt.17.2023.11.16.09.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 09:29:06 -0800 (PST)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 3/3] dt-bindings: mtd: binman-partitions: Add alignment properties
Date: Thu, 16 Nov 2023 10:28:52 -0700
Message-ID: <20231116172859.393744-3-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0.rc0.421.g78406f8d94-goog
In-Reply-To: <20231116172859.393744-1-sjg@chromium.org>
References: <20231116172859.393744-1-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add three properties for controlling alignment of partitions, aka
'entries' in binman.

For now there is no explicit mention of hierarchy, so a 'section' is
just the 'binman' node.

These new properties are inputs to the packaging process, but are also
needed if the firmware is repacked, to ensure that alignment
constraints are not violated. Therefore they are provided as part of
the schema.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v6:
- Correct schema-validation errors missed due to older dt-schema
  (enum fix and reg addition)

Changes in v5:
- Add value ranges
- Consistently mention alignment must be power-of-2
- Mention that alignment refers to bytes

Changes in v2:
- Fix 'a' typo in commit message

 .../mtd/partitions/binman-partition.yaml      | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
index 83222ac9aa78..2bc80c24bb9b 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
@@ -33,6 +33,57 @@ properties:
     minItems: 1
     maxItems: 2
 
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
 additionalProperties: false
 
 examples:
@@ -45,10 +96,13 @@ examples:
         partition@100000 {
             compatible = "u-boot";
             reg = <0x100000 0xf00000>;
+            align-size = <0x1000>;
+            align-end = <0x10000>;
         };
 
         partition@200000 {
             compatible = "tfa-bl31";
             reg = <0x200000 0x100000>;
+            align = <0x4000>;
         };
     };
-- 
2.43.0.rc0.421.g78406f8d94-goog


