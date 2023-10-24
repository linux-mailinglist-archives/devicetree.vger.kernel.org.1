Return-Path: <devicetree+bounces-11469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EE07D5D60
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:41:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89DD2280F9B
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4933FB2B;
	Tue, 24 Oct 2023 21:41:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="d7tvpKYr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AEFA3D399
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:41:25 +0000 (UTC)
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BC9110F9
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:41:23 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6b36e1fcee9so4246835b3a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698183683; x=1698788483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aochEXBDpOVdwQRDyloN4dJAYsQ0xcQP5GM4jBPJ4+0=;
        b=d7tvpKYrzBtxtmlN0ix4M4txemIB0fozRONjstLOx6DOVdbYDjiL/ne12vpgExvIrO
         YW7Gpr/tqqLL5tRTD0zLkhjyk6N1t/TjgOjpHhw5gTGDzDeomhjWPV1rwhbReCNIFsWL
         fNvAlCnRviE3FLpQFpTrlXRTvlAANskf6PoPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698183683; x=1698788483;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aochEXBDpOVdwQRDyloN4dJAYsQ0xcQP5GM4jBPJ4+0=;
        b=SGZ7HsEcpukkfbOoNdu2bpYv+Q/1AONEEer90MNAZIuT8P+Vr7xrzrsHwCVSXEd/f1
         GEW2zSqtCHNXFdYJHuql81IWjlyLTcxJq6mSlxv55H6PoVzQN6MevLnoWKWG4RXK5ngx
         LGGXlHVu+pUb2iLz0nG8nkP0DcPLBfOProumHsWlARzycqA3Tw6CX0/uHQoqLzwlOK6G
         +mgjlQsGUVh86XkA1AcnbL99FqzKqwQfqLznOGOQOlHqbhwbOvOhqb3JD7aclPHTOWPX
         KfdpiBZyEru3doFNGbHJCE/6sU29cWuWgNv4a/W153OEhhY/K29SkskfgeAcCU8HPHKK
         e8bA==
X-Gm-Message-State: AOJu0Yx8O1e03PZtTYJjfqL5oUh7y8Y/GGYSuO6KW0JSQ0V6LMi8S0DR
	zvIQM6zEdGw1NAOjV63sZwUSdUSrjiCI/9a3XD+JCQ==
X-Google-Smtp-Source: AGHT+IHg7NIAL+/vq1uVaLXguXuYCzXyJKM8i2wy6dmakFvVWfsSo7C499cy58klAxaY3feF/mh9VA==
X-Received: by 2002:a05:6a21:164a:b0:151:7d4c:899c with SMTP id no10-20020a056a21164a00b001517d4c899cmr3632385pzb.25.1698183682801;
        Tue, 24 Oct 2023 14:41:22 -0700 (PDT)
Received: from sjg1.roam.corp.google.com ([202.144.206.130])
        by smtp.gmail.com with ESMTPSA id 18-20020a170902c21200b001c5f7e06256sm7861055pll.152.2023.10.24.14.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 14:41:22 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: linux-mtd@lists.infradead.org,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Michael Walle <mwalle@kernel.org>,
	Tom Rini <trini@konsulko.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/3] dt-bindings: mtd: binman-partitions: Add alignment properties
Date: Wed, 25 Oct 2023 10:39:18 +1300
Message-ID: <20231024213940.3590507-3-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.758.gaed0368e0e-goog
In-Reply-To: <20231024213940.3590507-1-sjg@chromium.org>
References: <20231024213940.3590507-1-sjg@chromium.org>
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

Changes in v5:
- Add value ranges
- Consistently mention alignment must be power-of-2
- Mention that alignment refers to bytes

Changes in v2:
- Fix 'a' typo in commit message

 .../mtd/partitions/binman-partition.yaml      | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
index 37a413464b0ce5..cb1edd83ed29a9 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
@@ -29,6 +29,57 @@ properties:
         - u-boot       # u-boot.bin from U-Boot project
         - tfa-bl31     # bl31.bin or bl31.elf from TF-A project
 
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
@@ -41,10 +92,13 @@ examples:
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
2.42.0.758.gaed0368e0e-goog


