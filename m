Return-Path: <devicetree+bounces-3974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF437B0B99
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 20:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id A33E7B20B02
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 18:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 172473AC06;
	Wed, 27 Sep 2023 18:05:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B8D14ABC
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 18:05:52 +0000 (UTC)
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D37CEE5
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 11:05:50 -0700 (PDT)
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-79fb78e297bso297212439f.0
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 11:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695837950; x=1696442750; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4GrqlkQ0I1JKG3CG9kC5zFGUFrlkl3FrQ5k9bmVUJsY=;
        b=oVDssoQ5a1rtKJP1wYRKaDYWc3hUy/RinUJk/QOka5colyjpnBw8E7phouZJFHZQuf
         jwjQE1Fw7biAuxWaMUshJe1YfjOjxSVW5cI3OMaenArtj8hgMrggkkOIitFmhmmWrqwR
         Kyi2gpDZSTzWwiiAITxDaY4e+9C322X/+LYvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695837950; x=1696442750;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4GrqlkQ0I1JKG3CG9kC5zFGUFrlkl3FrQ5k9bmVUJsY=;
        b=enpqFCPr+/yXT6hnYHEmtdLxhcsU3747y0sAf0GujWu+7erjGbeVjf4yu/o1EF9Uzn
         V6YnwaBjLQb5lAAfvJNOH16cnzJM50L3GVIFPvgNPMhqpWS7JL57CkyYDEDJJk3lCPxD
         r7Q5dv36F5e67ULi+7fHC/JulfDM9Lherq6S1Oa34kN785224YDYHycHtMdTuIKeOzE7
         GHPbN91NujAKVUO8OgRbwblwWttWhJT0pz7YYXKHfEzlLcPN6Ero8+9HuAzMvj3c+17/
         4LMMimRUn0ebpoz4GXTT1wBavEi6LeN37ENKkSM2OnthaN9eYiconDHDJCol2C2SSl40
         Qr0A==
X-Gm-Message-State: AOJu0YwhgS9rg5C+sWPPCPMO9l+IFtZNo0Ul2D1BBbs+Z1O6laNFdBhm
	jzeYhbC6+4Wjp6eVHchTVBPpEBVDBEjdro9COrU=
X-Google-Smtp-Source: AGHT+IEaajljv/uey+1Fqd1NIa3A9BpHMaQNWVA3f2Xydq8XNThDYOjFx6Y3UKwlj27CGNI0r8qbOQ==
X-Received: by 2002:a6b:ea10:0:b0:795:13ea:477a with SMTP id m16-20020a6bea10000000b0079513ea477amr2843824ioc.8.1695837950050;
        Wed, 27 Sep 2023 11:05:50 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:5d4f:fe51:5575:6f76])
        by smtp.gmail.com with ESMTPSA id b17-20020a05663801b100b00439fa6ff6a9sm4032583jaq.70.2023.09.27.11.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 11:05:49 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: linux-mtd@lists.infradead.org,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Rob Herring <robh@kernel.org>,
	Tom Rini <trini@konsulko.com>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Nick Terrell <terrelln@fb.com>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4] dt-bindings: mtd: fixed-partitions: Add compression property
Date: Wed, 27 Sep 2023 12:05:43 -0600
Message-ID: <20230927180545.3522628-1-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.515.g380fc7ccd1-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Sometimes the contents of a partition are compressed. Add a property to
express this and define the algorithm used.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v4:
- Add an example

Changes in v3:
- Just add a compression property for now

Changes in v2:
- Use "binman" for compatible instead of "u-boot,binman"
- Significantly rework the patch
- Use make dt_binding_check DT_SCHEMA_FILES=Documentation/../partitions

 .../mtd/partitions/fixed-partitions.yaml      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
index 331e564f29dc..058253d6d889 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/fixed-partitions.yaml
@@ -29,6 +29,24 @@ properties:
 
   "#size-cells": true
 
+  compression:
+    $ref: /schemas/types.yaml#/definitions/string
+    description: |
+      Compression algorithm used to store the data in this partition, chosen
+      from a list of well-known algorithms.
+
+      The contents are compressed using this algorithm.
+
+    enum:
+      - none
+      - bzip2
+      - gzip
+      - lzop
+      - lz4
+      - lzma
+      - xz
+      - zstd
+
 patternProperties:
   "@[0-9a-f]+$":
     $ref: partition.yaml#
@@ -64,6 +82,7 @@ examples:
 
         uimage@100000 {
             reg = <0x0100000 0x200000>;
+            compress = "lzma";
         };
     };
 
-- 
2.42.0.515.g380fc7ccd1-goog


