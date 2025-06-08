Return-Path: <devicetree+bounces-183595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BBBAD13CB
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 20:37:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A0B6188A935
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 18:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8045519D8BE;
	Sun,  8 Jun 2025 18:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bK1ZtyIm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FF719ADA2
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 18:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749407873; cv=none; b=I0nFs5YsI7BXhaQsCxHU2evrauCTU6UnNSPmqrxDnhkE6h7cgHsxk0B+aT/dTgvnCD3E7m2e8jv1UlpEONLXL1JHX7AMw0QYpgDtwFz6VGcoyn/A7Y9abKewop5ZLOw3sNyVBwj0Dt7MfKy7EfkLIHNgnzILFMET1wfy2a4mXW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749407873; c=relaxed/simple;
	bh=sAgu9t4jDFHShuaRKFw4FzVbPAsSSQtw0hcjkxTq/wY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Ggpo+wyVw0WIJ6CCFh0pp5KfVJFw5AxN9iZ83Hz6wgZjVBuZuCw9PRZ6KF5afKN8DZQkF30w+0HQdA2Be5FgJHmVGwOc9Kpy0UDzFrR0kx9Vp2KZPPXS0otmO7yy9xtwYpMpOsCwSIxCweNgFxbYBs8moTF5P0U2x//Xp5Ghy0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bK1ZtyIm; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-74800b81f1bso2737517b3a.1
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 11:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749407871; x=1750012671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IWjw9woFqlWEx0lvWQirKWdTdjvCEMcRckQZnVwgVHM=;
        b=bK1ZtyImAjgNpTzrSvIPKlNeIRVHktvMq1wioRfxivJHIVXM/rC4bon1uByThxsvLT
         TbKVH04teqSKtfcntK5lElJ5c5e20x0x9pV+8YRDJGlnm0xc5gUvgkxreHAWpdvH8XNs
         wJ8dI1I66ceTOM0GNzFRgy2s2iZ5lNkUE8sq6EGHvFby8F6fGDLA7Qs3PC1/GdI94cFW
         STGswgKQ6Ul4qfHqDQ9Rmf9Abz0uWsIqSgL+bt9hepvcczO0ngedhBzy9DYXpY/uyCCe
         bEstWuysu8zhh35m+uKeZqSlj04PLlQ9IZWldH98w6fK1w5dPp1uhO4py8pVjGMIp6Jl
         AqNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749407871; x=1750012671;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IWjw9woFqlWEx0lvWQirKWdTdjvCEMcRckQZnVwgVHM=;
        b=aoLQ3uwXFKUGmE+hNUCU+yxRZNAMxEs4xd8rfD9teRdQGPBUgD3zf6SRgTKZq2lK7V
         ta9KalpBE9dpNjPbnQifH1G1vtec9v17zc+UksIuzgigKPtOJ0EUjHPYe5E6i1R5Iodo
         YSu4H4HP5WVNspribmFbKGSOh5dRxHyUYhiGisf/9UYv0XNNIgHpL26I9g4yifL5Y0I2
         RPW/s6RpC6sUgziUEdQO94jqQxddc+SS9WXOLyuhBf704KriLhOAta65OV+HTY+6a0lb
         a30b18knUTgQc+D+LUa7fpjSUWr8VNiygD77o6tjaNBMflIPBljdYFOMefKejwTCBKjE
         wu8w==
X-Gm-Message-State: AOJu0YyJHujRstvsif7VnHmtoNpafwsOO3d5T99HqBzGpb1sVEwdkKFo
	Hqd+mmAxTfNn+RQyGFeh+5cDgkfMgmlJqeS2Y3h5zGWSequk81j7aqpjc64tPVN8
X-Gm-Gg: ASbGncurCqNeN7Mgal2WiaMEUJp9rDDmn/+aZQl2Yix7Xp7SpLQBCuWr+xJMAY0sPQu
	IgORDwb00SLHB2hHKs+XbdFz988R97EDNaQ11eGpqipsAFxaTzy2lsBygImjWIv+TIqi5BmkuUE
	jJissVxJxmfzmES6/sFL6/n08I/2PZEi9EhfyV1O74nBS4St+qhmafPS0u1Wu9WBVxREBrXls2V
	jK81agNiDwcsLfCvfY9/VHWg7Jgc7gCENDJuKeSzoZrnjqHuY05KaIXLofm9miy1nWNCNfQSUQp
	g6Hy3d5fjAd0rfnIcPHNd4KoQry+CVJzrTq8a8XiarmNCBRTLM6NtZgjIvbcqc/suowxdyAE81W
	pTb0=
X-Google-Smtp-Source: AGHT+IGNFmqDgV3BkTV2vxPNkdroqsCxQL69ziyw2aGN/fPL9MGzzzBpRtwwf6iFRjMZA6WOZTZycw==
X-Received: by 2002:a05:6a00:21d6:b0:73c:b86:b47f with SMTP id d2e1a72fcca58-74827fd6127mr13907511b3a.4.1749407871057;
        Sun, 08 Jun 2025 11:37:51 -0700 (PDT)
Received: from shankari-IdeaPad.. ([49.128.169.113])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482af38353sm4512545b3a.10.2025.06.08.11.37.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jun 2025 11:37:50 -0700 (PDT)
From: Shankari Anand <shankari.ak0208@gmail.com>
To: devicetree@vger.kernel.org
Cc: Shankari Anand <shankari.ak0208@gmail.com>
Subject: [PATCH v2] dt-bindings: misc: Add binding for BCM63138 BootLUT
Date: Mon,  9 Jun 2025 00:07:45 +0530
Message-Id: <20250608183745.126190-1-shankari.ak0208@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a device tree binding schema for the Broadcom BCM63138 BootLUT node.
This binding specifies required properties for the boot lookup table used
for secondary CPU initialization on BCM63138 SoCs, including 'compatible'
and 'reg' properties.

Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
---
 .../bindings/misc/brcm,bcm63138-bootlut.yaml  | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/brcm,bcm63138-bootlut.yaml

diff --git a/Documentation/devicetree/bindings/misc/brcm,bcm63138-bootlut.yaml b/Documentation/devicetree/bindings/misc/brcm,bcm63138-bootlut.yaml
new file mode 100644
index 000000000000..af4b879ba6bc
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/brcm,bcm63138-bootlut.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/brcm,bcm63138-bootlut.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM63138 Boot Lookup Table
+
+maintainers:
+  - William Zhang <william.zhang@broadcom.com>
+
+description: |
+  This describes the Boot Lookup Table (BootLUT) region for the BCM63138
+  SoC. It is used for secondary CPU initialization.
+
+properties:
+  compatible:
+    const: brcm,bcm63138-bootlut
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    bootlut: bootlut@8000 {
+      compatible = "brcm,bcm63138-bootlut";
+      reg = <0x8000 0x50>;
+    };
+...
-- 
2.34.1


