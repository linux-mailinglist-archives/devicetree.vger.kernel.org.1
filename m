Return-Path: <devicetree+bounces-51821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB80880A9F
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 06:25:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F28A1F22C12
	for <lists+devicetree@lfdr.de>; Wed, 20 Mar 2024 05:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1C4C14010;
	Wed, 20 Mar 2024 05:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="j2zIImse"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CB31EB44
	for <devicetree@vger.kernel.org>; Wed, 20 Mar 2024 05:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710912302; cv=none; b=LCRakdcGWiYwj1qpbVX9wxjljxT0di/IhXQ+GysGMuEx/Gi4qA8qowXwmaaWgCX+C+62o0QmyFU2PNPtvf9HLtSSY+iNpezoWdBpm2hQTjvq7dvVWg//nYu5fGApChnkhgAAflsHgpLbmOLJjelm1udu9a+xt5xor45UETJ+FW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710912302; c=relaxed/simple;
	bh=9Rw1YCZhkZ1V7Rqmy97JJdjOIIio7DjvkirPjoFaQ6s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=ZjHoyGv6ezbzGHpCTTYDHpSR9GFE6uAlfqWT3tGt2aWT4ptnXqYSP2mNmQTjkNBuIA/bejYaDCMifHxwaIFf7bAXtcA4Vc+m1XYb8+4Xgdqi+luJreUJYQ6EmB1ub9C6jkVyE3hwhjxtXF6F5TUSSX8FFXAfHuo6TMXLbm3z/WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=j2zIImse; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6e6082eab17so5523351b3a.1
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 22:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710912300; x=1711517100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L6C65Xih+p3VE132AwQb8aSpe0F0WPcTiDrQW5UHg7s=;
        b=j2zIImseQ9cUN9z/6d0Og4Bk2wUoD22xosH3FZvegXlhV/MKQ7L9HUXFkhkKBSrEfE
         Q3VKaELw+9ImvfO/p7ukcG1RyaBX3wJSKOP8GBxwYfxoayc9fH5VdZTgl3dfrbdDpJym
         PRMpsmnWEJQkJE1L9G1n9GzEzTTIVBXadSWIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710912300; x=1711517100;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L6C65Xih+p3VE132AwQb8aSpe0F0WPcTiDrQW5UHg7s=;
        b=R8WzeYur49n1FS4KhkAdYlvweX2/aBi+VcRNHiYgjku0OK1e3D0DQ9buRs8EOTDGDg
         qp4FG3FaAQ6BNcfFFQEM70jpw7EluRgR2+LLbJdE/ClTblHbyGPnrzZIlQAIo9gCiRoy
         1BbYuD1AIswjjxEBi+vsLwefywrHINkNOwEdZlD7+D67WY2owUr13uoub3HDri3BWMxg
         0VGkA49gY7mX+2U8tByL3tz3f5nuN3af8k9jkMnUXqRrLLC4qtyCqIRL/VtQFuV1FHQz
         F48TdgM9asUY25pTlvTbaiAPI2JmcpGY0myAUSiHxFJLGzr3R1qN9B+7+1xw6JrZt4VL
         rvcQ==
X-Gm-Message-State: AOJu0YyaCBkT6CQtU2AnMhvNngvFOPhNrJafIxCmqI0BjAlgpkGmNCCR
	E4HIyWjOJSGaO5EszWT2UHF6KLSg1paQGn35MNlU7VlgwxnpF5blR2pYCM5lOqsCgzuNLeKQDBI
	=
X-Google-Smtp-Source: AGHT+IGsHqqJIAPjFPjRAtgKAljffZjP7ejm8HcysZ8aeHp7Kmx5hQH5j0ux4Flud82CZIzyswbhEA==
X-Received: by 2002:a05:6a20:9f4f:b0:1a3:115b:acb5 with SMTP id ml15-20020a056a209f4f00b001a3115bacb5mr18621969pzb.21.1710912300158;
        Tue, 19 Mar 2024 22:25:00 -0700 (PDT)
Received: from chromium.org ([202.144.206.254])
        by smtp.gmail.com with ESMTPSA id sb14-20020a17090b50ce00b0029ffba4bf0esm572355pjb.19.2024.03.19.22.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 22:24:59 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: linux-mtd@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v9 1/2] dt-bindings: mtd: fixed-partitions: Add alignment properties
Date: Wed, 20 Mar 2024 18:24:48 +1300
Message-Id: <20240320052449.175786-1-sjg@chromium.org>
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

Changes in v9:
- Move binding example to next batch to avoid build error

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

 .../bindings/mtd/partitions/partition.yaml    | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
index 1ebe9e2347ea..39c7d7672783 100644
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
-- 
2.34.1


