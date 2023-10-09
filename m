Return-Path: <devicetree+bounces-7031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A36DC7BEB52
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 22:10:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5848E281BA8
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 20:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E51F03E481;
	Mon,  9 Oct 2023 20:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YQw0p4m/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD7A210B
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 20:10:21 +0000 (UTC)
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D0ECB0
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:10:17 -0700 (PDT)
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-79f915e5b47so206083439f.2
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 13:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696882216; x=1697487016; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qDwYllgCxpOVaDPdnj1bCUl1esI4hxS9Uu4gTGnxNxA=;
        b=YQw0p4m/ETeVFreg/NrLrJKpjnhYlAdPAekPGKVkS0iPtlGBQUmmmT/+HD8ol8HDVY
         zehNXaWEKgFNx/waGK2nUGFX3tve6ENKRWfGMhG+sXhCeiQaaDgdr5jUxEjUYqbATD0c
         RbDkszf+H2d2Y5WqWKvBWmhIDyHQ+Xa+dpU2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696882216; x=1697487016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qDwYllgCxpOVaDPdnj1bCUl1esI4hxS9Uu4gTGnxNxA=;
        b=J9I5E/7o7xhudD4UC+tq9FUsgvWyt6xZxz/3BflPnEW65fB4iQlyvr62YMcX/N9ZEq
         7dYoPtwY9pSR9w6E9QHWyBkethZNOES7jfdzGE027appZzu72+kp8IgCyTyWufVu+2l2
         /S1+TR7Ek15qjgRHB6ZSrcHUFI3yQ0CENLdI1gJ3+Ejp3XZUb1Yyya5VHF5jg65Jl94a
         cK0hVnJlRrJ0bIMhTnvQe8LDfMwxlSdZyG+0c8aCaJWQgdN0as8Kn2zsT9eVFTe1cExw
         Y0WIqHYs61g6t8uWuZvFdVUQpFjodNCnXN3HYFtJKWruk+ZVPNhSnAM43IFMqroyKFAV
         0VOg==
X-Gm-Message-State: AOJu0YwhS6QD76hjXa+CMh4Cq8rxu4+eHVOYqGrHmo/6FkswFAwI5wAb
	q/TmZDJC8n4TGs34CkdDqZrAA5XUZqFV9fyPmUA=
X-Google-Smtp-Source: AGHT+IHjoREuIigG/5nvr4t3n4+H6A6edPXnoWQ1VFc16alunnV8mOAw+XYEKhJX2GRZPWJattFpfw==
X-Received: by 2002:a6b:651a:0:b0:780:ce72:ac55 with SMTP id z26-20020a6b651a000000b00780ce72ac55mr20002656iob.10.1696882216398;
        Mon, 09 Oct 2023 13:10:16 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:138c:cf57:c18d:20f5])
        by smtp.gmail.com with ESMTPSA id q21-20020a02a315000000b0042b2df337ccsm2215294jai.76.2023.10.09.13.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 13:10:16 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: U-Boot Mailing List <u-boot@lists.denx.de>,
	linux-mtd@lists.infradead.org,
	Michael Walle <mwalle@kernel.org>,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] dt-bindings: mtd: binman-partitions: Add alignment properties
Date: Mon,  9 Oct 2023 14:10:01 -0600
Message-ID: <20231009201005.1964794-3-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.609.gbb76f46606-goog
In-Reply-To: <20231009201005.1964794-1-sjg@chromium.org>
References: <20231009201005.1964794-1-sjg@chromium.org>
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
just the 'binman' node.

These new properties are inputs to the packaging process, but are also
needed if the firmware is repacked, to ensure that alignment
constraints are not violated. Therefore they are provided as part of
the schema.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v2)

Changes in v2:
- Fix 'a' typo in commit message

 .../mtd/partitions/binman-partition.yaml      | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
index 754f804524a5..350014a93da4 100644
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
         partition@100000 {
             compatible = "u-boot";
             reg = <0x100000 0xf00000>;
+            align-size = <0x1000>;
+            align-end = <0x10000>;
         };
 
         partition@200000 {
             compatible = "atf-bl31";
             reg = <0x200000 0x100000>;
+            align = <0x4000>;
         };
     };
-- 
2.42.0.609.gbb76f46606-goog


