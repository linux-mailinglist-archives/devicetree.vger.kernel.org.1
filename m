Return-Path: <devicetree+bounces-236369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E6DC43841
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 04:38:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DF88C347C42
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 03:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34AC20FAB2;
	Sun,  9 Nov 2025 03:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kHGMEpVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CF3D1F8AC8
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 03:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762659493; cv=none; b=eGUBvQ9wDWBfQxhNMMkFE21mNJux0UTibS3PgmeyZhO6u9DGYPGIA5sJsJXkIaufh7wjBqtJOhDa7qJbaaxTN0jUdYClUsyZXNe+uunGERF76fDsPalzHX4lTg8ShEQHIrMjTGSPpEGfuROIMA7wwik00oEi2nvcaXs1f2fQH5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762659493; c=relaxed/simple;
	bh=xorGoL2/JFvg+z+FhPP7vCsuxkoPU25bF4A2iGRn9+4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=k2eTnFGm/TnGH+mNzrGxqGbmnNNpjJeO0D/OoOzCbf7rn+dXZX0oxwicJSfXSQZOtmIcuIW1lFjjuWQYZ7RZA9hp6BbJ0t9GRYSNun7lw75cuDAfuVCLwpqD7NmI7lkmrNq1yioyizWgASF/pUji0F/PrkHXr8ac+wblwp8OUiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kHGMEpVI; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b62e7221351so1647596a12.1
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 19:38:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762659489; x=1763264289; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xojEnQEqZiYpsf6DH1un5xJ5IIa/cvi+rBJ7ZwGzNIU=;
        b=kHGMEpVIIlEQhM0gUHqz98y+qNaf0NAjKz4beeoB4tPloJD/s2sKMnDjGrDCWfnqzZ
         tgxr21Jdpe+6fcDYxiNFdH8ByraEAiNuudQ3ET944X4i3BmV+hDVVi02+CLs5khLMeRX
         hnetA3UcmhUc+gZ+PBPKM211K6e2yCU/TZ862+z0tfK2fFo2sMzl1LMrLsnY/UF0V37X
         AVVROnfzIx4V3U6YagoflKT9rQ/2kiN52b79n/DvJc2NxP2xY2fG4G1bnpBUKuIjFRmG
         TMqFSMH61LFJc23tzadB9LTU7upFduTE/+t+Sdz0lY6KGkcSko7BbopJkbGny5jN6bFP
         sw5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762659489; x=1763264289;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xojEnQEqZiYpsf6DH1un5xJ5IIa/cvi+rBJ7ZwGzNIU=;
        b=gMmen3Vk86iiOQM82XJFO+STrMAoycreKcjS6qghAvwaiVRuILdAfCVXlL8uMUyXWu
         BTpJgz7KglIGrsBGrzWQ8joMBhDZ33NFs5BEDZcvJg1TInfI5QBGbgZ1dbVgXAosnTNH
         0HFSrFc0ACZFOosFGrYAfMOE9/I3G3lL+pzV1AFXGbVi2fqlokot/w3H7zaL9SknIi3P
         1xU+35pjmweVIlsi6mOQeT4vM8ib/KXBdjDfq3pgTZItD/mun03PDDa+N0YtyOAvOkAX
         5pJr2sNxJE6kd5nrBMXaGSsOUEBqKoInwb0vknS2zb4VoOIbRhVxx9ODfqrlJtgN8ng5
         znSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbP0CHJKkwS3f2GFVYRRAw75UJd4dSyLZpdx3Ffaz0HnPp0ESvOzlPZ9c/IfIiPfCDlHZlAe1RwRXx@vger.kernel.org
X-Gm-Message-State: AOJu0YyWAK3tp4ECmO6xD1YaNcjyDGzDl6kgNVowCIXE49t33w3MH45a
	oaZAz5X1QiqZpIgJY3qs+cr2riUFM/yOxrRjE3yFu07mR+4gniYrUwt8Nfyc1w==
X-Gm-Gg: ASbGnctP0FX8JCzTho33eQSA6lomRVyZTtE3O3T66gPISGPHbMwWIWMxqLKWFxrTypV
	MHQOBnNRmgINFSAu3ZD2AXlBur5ZaAvgPY79Eyzzt6UsUaXR23KTMyNBGoF1sb0UDRnYRpEAptb
	ml0AuXSPkdjadxJ/SCqmqinx38zQQoxKRueSGXnlpp8MmavqHjcdLfwYtYX4Z4nlSW6bx0Cgc6+
	nmbTSUbwULZz7X1359Dt5whB4uwzYSm8XYKKAeAJarZZwjGjQ/4z+WAfmNoEmnuGY9oA4mi8J6s
	i6IZ5BoQwZv9ZtR1iRQXsCgX15cdXlSDtPdTlirVruccLF+Jra8n8GcCiVBuDBPxP7qAyZPQ5HY
	XB4UcwOXmvlJmJug2LKrAeY2J2BgVgnJjjJv51E83n9g+I8CCJRxB07knkORZLBHtkLCLHu6bIp
	9I3VNxdhBroZNgzdfentrVTsnDfsLkMnE=
X-Google-Smtp-Source: AGHT+IEnMnLgV+RGsjYDaxeUICu3OiuqhDB7mJSu/fMdhk1sBQYN0RXJDZfBHv8BvFd1j8p1DOQD+A==
X-Received: by 2002:a17:902:fc4b:b0:295:50f5:c0e1 with SMTP id d9443c01a7336-297e5628672mr55506935ad.15.1762659488588;
        Sat, 08 Nov 2025 19:38:08 -0800 (PST)
Received: from lakshmi-Latitude-5330.. ([2406:7400:51:9668:cf49:d10e:b8f5:581d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3436c3d7dddsm3532925a91.7.2025.11.08.19.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 19:38:08 -0800 (PST)
From: Lakshmi Patil <lakshmi16796@gmail.com>
To: 
Cc: lakshmi16796@gmail.com,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: Lakshmi Patil: dt-bindings: misc: Add Xilinx AXI FIFO MM S controller binding
Date: Sun,  9 Nov 2025 09:07:49 +0530
Message-Id: <20251109033751.334711-1-lakshmi16796@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Warning found by checkpatch.pl script.

Add the Device Tree binding documentation for the Xilinx AXI FIFO MM S
(AXI Memory Mapped to Stream) controller. The core provides a FIFO-based
interface between AXI Memory-Mapped and AXI-Stream domains and is used in
Xilinx SoC and FPGA designs to offload DMA-style data transfers.

The binding describes the required properties such as compatible string,
register region, clock, reset, and interrupt line.

Signed-off-by: Lakshmi Patil <lakshmi16796@gmail.com>
---
 .../bindings/misc/xlnx,axi-fifo-mm-s.yaml     | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml

diff --git a/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
new file mode 100644
index 000000000000..d02a7cf9ac0f
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/xlnx,axi-fifo-mm-s.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/xlnx,axi-fifo-mm-s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx AXI FIFO MM S Controller
+
+maintainers:
+  - Lakshmi lakshmi16796@gmail.com
+
+description: |
+  The Xilinx AXI FIFO Memory Mapped to Stream (MM2S / S2MM) core provides
+  a FIFO-based interface for moving data between AXI Memory-Mapped and
+  AXI-Stream domains. It supports both transmit and receive paths
+  and is typically used to offload DMA-style data transfers in
+  Xilinx SoCs or FPGA designs.
+
+properties:
+  compatible:
+    enum:
+      - xlnx,axi-fifo-mm-s-4.1
+
+  reg:
+    maxItems: 1
+    description:
+      Base address and size of the AXI FIFO MM S register space.
+
+  interrupts:
+    maxItems: 1
+    description:
+      Interrupt line from the AXI FIFO block, if available.
+
+  clocks:
+    maxItems: 1
+    description:
+      Reference clock for the AXI FIFO interface.
+
+  clock-names:
+    const: s_axi_aclk
+
+  resets:
+    maxItems: 1
+    description:
+      Reset line for the AXI FIFO interface.
+
+  reset-names:
+    const: s_axi_aresetn
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - resets
+
+additionalProperties: true
+
+examples:
+  - |
+    axi_fifo_mm_s@43c00000 {
+        compatible = "xlnx,axi-fifo-mm-s-4.1";
+        reg = <0x43c00000 0x10000>;
+        interrupts = <0 59 4>;
+        clocks = <&clkc 15>;
+        clock-names = "s_axi_aclk";
+        resets = <&rstc 0>;
+        reset-names = "s_axi_aresetn";
+    };
+
-- 
2.34.1


