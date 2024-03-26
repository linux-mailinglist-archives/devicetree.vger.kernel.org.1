Return-Path: <devicetree+bounces-53627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2498788CDD3
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 21:07:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CEA1A325F60
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 20:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F14F813D292;
	Tue, 26 Mar 2024 20:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q1rEwJlr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E45F13D286
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 20:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711483614; cv=none; b=qgeoDsvNTD5ZU2dqvfNp4mN0ZbPh7mdYwEj6whlI68jb3ZQkuNcQT+9LAz+CKu6cmUM9Lyh/KAE0o7ctFKLchKKZ0y7WTW+odJxcpPJViUO6nk5RJtXccTLEAomolI/mAUorU1JKYl19xFKuvN9HcitZ4XxNcsDwVAkRXxOz5BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711483614; c=relaxed/simple;
	bh=KuLN8d0qnMcvpgJutdh0ul8iNkoqgbjGo+49RSgKIuU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=qg+BZ6Xoe/QNf+TcdiH0q7eIGjqW76+HfzDOqoEZZMkyaic81VVKjLCigc6KErsFhvGNHsI5g59mE+tuxf0eUq28H+Top/lP9hkkdxTCch+tGLJtX+Hi8jI7OYiCsXK8+dQa651W/LnSI7Ty7yr2EXoetrikJ6Hs+TvTLbrsnKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q1rEwJlr; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-36894e0aaabso9441045ab.2
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 13:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1711483612; x=1712088412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lOoqtTXqNB7CbouRAVSQd0zkiIBmv+wfES6PKWSZxek=;
        b=Q1rEwJlrHnl9Lo/E75y9ooeOLgakZqOmOynBDwz5EKDcMExoY9Ea56EiHMNKoQxzf1
         7Pj7mGnXRjnZliuTFhvSpJ7LAf2F9SUe1VFnYH8gjQpj4fHHdOJy1V/EQRMyN78LChkz
         ywZCgGTPuCA6A6iqIbezF6P1qS/lmPkYn0blg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711483612; x=1712088412;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lOoqtTXqNB7CbouRAVSQd0zkiIBmv+wfES6PKWSZxek=;
        b=IPNgSx9zRjgLgXfbUMYNcKtmKVI87CCLhn04Jhran9ZDTfNL0SnDRfS7XctXVf+mX7
         kM85yESYsabk943/LVyW72T+mee8A3Pz475z7jLFrXWnQC4dtXBijoozhNO9+wEg2iwu
         6BZB8UBqB6DkN6X+t6IUyxLwPbcCVyQ1QKPoF/z+oqgS25abKAXN8PGPAAopIxgytEtT
         SveXyqWA0AWXKPW8eNlaSdmoNVTkmitA3/FlluhwjWk6QYcvwPH0xx1Xvn8ALFp0V9hl
         mealllqx23SYXWzrPVoq+hUrn0a47FWURoka8fOlUgZ0CXgYPuHimxFAs6pYPR6R+3wN
         +hbA==
X-Gm-Message-State: AOJu0YwLKrm3dNjuGix9/RG+1lqz2qfRj9Vr/RCLwLXSsBVeLutyqXKz
	Pr8dUWJ1tH+KXOLKnhloNMqVHy2XpD7Gwhwo31Ckz+km6hDjC8TsEgZjwFFnYg3f8BIlCW3N3FM
	=
X-Google-Smtp-Source: AGHT+IHTocnVcq9cstKtXGBQJuOibTyGsdLxHD14zpbkXXj+IHMGiLoZQLlFXo7FItBICbelmkTerw==
X-Received: by 2002:a92:ce50:0:b0:365:e274:5e55 with SMTP id a16-20020a92ce50000000b00365e2745e55mr908968ilr.7.1711483612066;
        Tue, 26 Mar 2024 13:06:52 -0700 (PDT)
Received: from chromium.org (c-73-14-173-85.hsd1.co.comcast.net. [73.14.173.85])
        by smtp.gmail.com with ESMTPSA id f4-20020a92cb44000000b0036896f76593sm1002343ilq.85.2024.03.26.13.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 13:06:51 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: Michael Walle <mwalle@kernel.org>,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Tom Rini <trini@konsulko.com>,
	Rob Herring <robh@kernel.org>,
	linux-mtd@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v10 1/2] dt-bindings: mtd: fixed-partitions: Add alignment properties
Date: Tue, 26 Mar 2024 14:06:44 -0600
Message-Id: <20240326200645.1182803-1-sjg@chromium.org>
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
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changes in v10:
- Update the minimum to 2

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
index 1ebe9e2347ea..656ca3db1762 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/partition.yaml
@@ -57,6 +57,57 @@ properties:
       user space from
     type: boolean
 
+  align:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 2
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
+    minimum: 2
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
+    minimum: 2
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


