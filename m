Return-Path: <devicetree+bounces-167469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF493A8A6C7
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 20:28:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D2DA19007FF
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 18:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6E7122688B;
	Tue, 15 Apr 2025 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="aY/H7+so"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A51221D591
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 18:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744741713; cv=none; b=X35dfE501kGAorn31tJ2ii3L8TDDbQS7dpZc3xbxgmELDOmuR/6VHvxcmgc6j7+/SUW6MMlE/kYwGtBweuqWvDuPLAdmzukubU7dRY3dkA5xlDFCJrfVcJ/wAu4aISUxxQKzfC8Oh27vmTU1U09kXP6qR1IKB7iNIMLlVvMVOPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744741713; c=relaxed/simple;
	bh=NS7NUQTWMnCY0Kq8/cM3cF2ihs/926O0LO7HDLvkUUQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jdCxZ9Jls4BdVeQN28GspLl9LIWCJhhckI8plvcsW0BQ/go6pVntmb5MqHFHVVpZ08ztCKqenu4jh0QZTofC+WfVBdo4kU/J4zHkEUuf41h3Le0np36jsabwHWbWmp+GoLY+uV14T2GOjfSTZgd/D9RlbGezMTZHNXK31a0hvg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=aY/H7+so; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3feb0db95e6so3762953b6e.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 11:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1744741711; x=1745346511; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TaFRLdnz7zCuUma9VAVck8Ma/53jvqZlJvs+qHg/LNU=;
        b=aY/H7+so2b0HWYpCAe5IcupsuOddXubLWAGvnz0MRVznAKC7ffaO0/Yhgjq5nCfAqH
         ZklLX9ofWckOCyiaUi4ccFWrfLCxSOpv6e3ClKYcdFKnOJg7ohIVU8pPtqwZy9tbLA7i
         xEWb6t7ZTcQsgfVwvc3dpIlk4FJy5eEwE0+s0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744741711; x=1745346511;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TaFRLdnz7zCuUma9VAVck8Ma/53jvqZlJvs+qHg/LNU=;
        b=CaiKy8ALWo1Kr7f1APNUaizRwajOhroJpcMziYfMfqS3lKCHfcHyC5pgjqJDGcBYNd
         pEr2gI7gvY8DFro+gI0fRGY+3wNJV2mEdnAp4aKmHEjVI4ezqtZh6e5QdpQE/i1Ril0s
         Jw95PqA5XYyuo3OH2bCDZlHGhTSrO585jhvp8QbH1iBQWOoAdXozRpoulqpr9kliqI01
         DML4uUA9Wmf9TlM1Ohn11BHKLHxA7lXJLmQ3JNI/BoH6NNNAQBLvaMRd5spjllSEkdSL
         ttt+QhMCfLIEdafYRPjbyVkRdppuIq9rBwQAFVL+ClDVtieNR/cHhw6eYEDOFww1XcFr
         Yyng==
X-Gm-Message-State: AOJu0YwTmoVRmNsne1AS66YVu8wbqEzanMzByqI9RZYDZ2acWNMBGII2
	XFxbLk7kUerKh8YRr4tLtKg3aK8iB2/0XjhQeCJNSJmDFa+9ac7fNNDnT0rusMq2if2OwPuBV7r
	GHXsCg3cdr6zl1/xvVB9zbkMStoBCFTS54UVy08sPHJQKiIrSTgOfzE9ieOIn3g1EV6ks2tiHjL
	FXWcEu7/PgPjboAK4c/oncdQNnGsf2WAPIwC7qpDcS6Teb
X-Gm-Gg: ASbGncsFOQBjduTRsMfdLQ2sthp7QwZtI16Jkw3U7gWJ8e3UZJQ6hkBFyge/TL/5dCK
	5U8fV0S4POuFzY03ZM3wcOsOuh9X64C3GxfraswvY5BguuTz/KXj5Ne/0vDYYd6BEpdWOFRr1nR
	++9ZPFBcG1WRIhtB0taWnC4gvbxAHIokBSqDL92b/iNoGK2+Fuw3ip1UTw+S6rfIE5fzQvMdmvJ
	tiSqK7L8ECNIRshrFAOIvgP1MZGfY+4PP8z+ShSPm0g0MIyoGVDz5CrNKJ68xB/DcquelkBhuxN
	GtV7dpK2BDO+s6sIGmtaleNl3NCbsWe95vGtdJxN91+BLscv2vQlEUof7k3wMDElkRcXe9g2L/w
	7efE02aZt/ZhHsCMfFg==
X-Google-Smtp-Source: AGHT+IEq5v8Tp1zyjzJOs2uD/k82silnFhwbjeiDtXg0gdPGWg8kcS6uA7Vblx5cKJOU3S6RH6Gjbg==
X-Received: by 2002:a05:6808:1691:b0:3fe:aeaf:26a5 with SMTP id 5614622812f47-400acb367b7mr399141b6e.31.1744741710778;
        Tue, 15 Apr 2025 11:28:30 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-400763baf5esm2434177b6e.47.2025.04.15.11.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 11:28:30 -0700 (PDT)
From: justin.chen@broadcom.com
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	jassisinghbrar@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v4 1/2] dt-bindings: mailbox: Add support for bcm74110
Date: Tue, 15 Apr 2025 11:28:25 -0700
Message-Id: <20250415182826.3905917-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250415182826.3905917-1-justin.chen@broadcom.com>
References: <20250415182826.3905917-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Justin Chen <justin.chen@broadcom.com>

Add devicetree YAML binding for brcmstb bcm74110 mailbox used
for communicating with a co-processor.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v4
	Dropped minItems from interrupts

v3
	Added list for interrupts.
	Corrected dts example. Fixed ordering and naming.

v2
        Renamed brcm,brcm_{tx|rx} to brcm,{tx|rx}.
        Removed brcm,shmem node. Not necessary to keep in dt.
        Fixed example and added scmi node.

 .../bindings/mailbox/brcm,bcm74110-mbox.yaml  | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
new file mode 100644
index 000000000000..750cc96edb46
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/brcm,bcm74110-mbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM74110 Mailbox
+
+maintainers:
+  - Justin Chen <justin.chen@broadcom.com>
+  - Florian Fainelli <florian.fainelli@broadcom.com>
+
+description: Broadcom mailbox hardware first introduced with 74110
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm74110-mbox
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    items:
+      - description: RX doorbell and watermark interrupts
+      - description: TX doorbell and watermark interrupts
+
+  "#mbox-cells":
+    const: 2
+    description:
+      The first cell is channel type and second cell is shared memory slot
+
+  brcm,rx:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: RX Mailbox number
+
+  brcm,tx:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: TX Mailbox number
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#mbox-cells"
+  - brcm,rx
+  - brcm,tx
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    mailbox@a552000 {
+        compatible = "brcm,bcm74110-mbox";
+        reg = <0xa552000 0x1104>;
+        interrupts = <GIC_SPI 0x67 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 0x66 IRQ_TYPE_LEVEL_HIGH>;
+        #mbox-cells = <0x2>;
+        brcm,rx = <0x7>;
+        brcm,tx = <0x6>;
+    };
-- 
2.34.1


