Return-Path: <devicetree+bounces-3994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FFE7B0D40
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 22:21:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C1C111C20946
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 20:21:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ABFE4BDC1;
	Wed, 27 Sep 2023 20:21:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 904394CFA9
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 20:21:12 +0000 (UTC)
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C7E010E
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:21:11 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-79fa2dbd793so354242539f.2
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695846071; x=1696450871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t/WPzSaDS9c+jiadSigu8kAq3wHnfTKelNMfiF3LTzM=;
        b=NFPIdVfVm9Cs8hzkeVsa84P9bc5aJOExpVnEr16PwbTM5gi6VTllZdBDI14c/F79th
         MaCLFOXmFm1SVOfSy0WA8RpUwNjX4/R2AP2/dUX3ZwpMc7BtoaN0qQzqkhXHodiHreQO
         I4TJllASEqF6WEezGq0r0+0ZqkUH6f4DjQ7o4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695846071; x=1696450871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t/WPzSaDS9c+jiadSigu8kAq3wHnfTKelNMfiF3LTzM=;
        b=aAPCkblLOOi51nf9vNI4DoVoFL7wZL6Lx3CU1KhfxhZNg6GsWHus5bX7WAyHURagld
         1Zx0b0S5zmAKUh6hFRMQ2kOqRSbfUvy+Wmq9hZSomzhv59HkGihI3ho+o20nQkBtd/ts
         abDrgh4exI75ho/+sSvm/XD7J5A8j6X/cGtjCzDJ6juiNem/LiZE/VDAH01LrtNUkzIk
         pO9yK3wwN8F1d8GgleNI/mgo623Y5hRmKnE0xx4GYqkJsW0RgTSccbGu0JD3JyhaXK7q
         LZq++n+csvQSIReLQYVRz6x+pzYwVhPJBydcODdtxtMvZgpef9Njtt9OBz+2Am1xsiC1
         bEVQ==
X-Gm-Message-State: AOJu0YxqZDGWVyCdfHS56F8pEpL91Nhm77sv6t902DVBdOvI7V/z6bw1
	bMNfXS++s4jBBcM89aVqrtbeEId1z4+47ZMAUB8=
X-Google-Smtp-Source: AGHT+IFRbrRAe8Dnju3UVQpeWZ5Tyu9bkia5NuOv1VLGeo8FMF3tFtAq/tcjBk0rXfAM+4qlRibD1A==
X-Received: by 2002:a92:ca0b:0:b0:34c:e7a3:894 with SMTP id j11-20020a92ca0b000000b0034ce7a30894mr4107520ils.16.1695846070751;
        Wed, 27 Sep 2023 13:21:10 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:5d4f:fe51:5575:6f76])
        by smtp.gmail.com with ESMTPSA id ei15-20020a05663829af00b0042fec8620e4sm4113299jab.57.2023.09.27.13.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 13:21:10 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: linux-mtd@lists.infradead.org,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: mtd: binman-partitions: Add alignment properties
Date: Wed, 27 Sep 2023 14:20:53 -0600
Message-ID: <20230927202057.3676497-3-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.515.g380fc7ccd1-goog
In-Reply-To: <20230927202057.3676497-1-sjg@chromium.org>
References: <20230927202057.3676497-1-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add three properties for controlling alignment of partitions, aka
'entries' in binman.

For now there is no explicit mention of hierarchy, so a 'section' is
just the 'fixed-partitions' node.

These new properties are inputs to the packaging process, but are also
needed if the firmware is repacked, to ensure that alignment
constraints are not violated. Therefore they a provided as part of the
schema.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 .../mtd/partitions/binman-partition.yaml      | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
index 6ee832cb4c4c..9cd424447e76 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
@@ -27,6 +27,42 @@ properties:
         - u-boot       # u-boot.bin from U-Boot projec6t
         - atf-bl31     # bl31.bin or bl31.elf from TF-A project
 
+  align:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This sets the alignment of the entry. The entry offset is adjusted
+      so that the entry starts on an aligned boundary within the containing
+      section or image. For example ‘align = <16>’ means that the entry will
+      start on a 16-byte boundary. This may mean that padding is added before
+      the entry. The padding is part of the containing section but is not
+      included in the entry, meaning that an empty space may be created before
+      the entry starts. Alignment should be a power of 2. If ‘align’ is not
+      provided, no alignment is performed.
+
+  align-size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This sets the alignment of the entry size. For example, to ensure
+      that the size of an entry is a multiple of 64 bytes, set this to 64.
+      While this does not affect the contents of the entry within binman
+      itself (the padding is performed only when its parent section is
+      assembled), the end result is that the entry ends with the padding
+      bytes, so may grow. If ‘align-size’ is not provided, no alignment is
+      performed.
+
+  align-end:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This sets the alignment of the end of an entry with respect to the
+      containing section. Some entries require that they end on an alignment
+      boundary, regardless of where they start. This does not move the start
+      of the entry, so the contents of the entry will still start at the
+      beginning. But there may be padding at the end. While this does not
+      affect the contents of the entry within binman itself (the padding is
+      performed only when its parent section is assembled), the end result is
+      that the entry ends with the padding bytes, so may grow. If ‘align-end’
+      is not provided, no alignment is performed.
+
 additionalProperties: false
 
 examples:
@@ -39,10 +75,13 @@ examples:
         partition-u-boot@100000 {
             label = "u-boot";
             reg = <0x100000 0xf00000>;
+            align-size = <0x1000>;
+            align-end = <0x10000>;
         };
 
         partition-atf-bl31t@200000 {
             label = "atf-bl31";
             reg = <0x200000 0x100000>;
+            align = <0x4000>;
         };
     };
-- 
2.42.0.515.g380fc7ccd1-goog


