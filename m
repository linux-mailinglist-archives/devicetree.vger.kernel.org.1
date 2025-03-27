Return-Path: <devicetree+bounces-161432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3FCA740A3
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 23:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9785C17AEEA
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 22:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1375B1DF250;
	Thu, 27 Mar 2025 22:16:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ElRHVLsS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A6431DE3DC
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 22:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743113798; cv=none; b=XSY/sPF7qvAktILm8t64CStCy9No7tzd2FHySj6Tb7jiQIap4Mo4VgFnaFdhoqmvwwUhq11OfcXij2HCoo8/BUtmyUXFAg5gO6N4UNNswAyY5ifoZC/9Fsj5UsCnoWkCUPC9cPGS9wssxI+7T0lQVJoNLngUy+zu/DNpwETZ2VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743113798; c=relaxed/simple;
	bh=c3pZ7RooU49GV/zbRYr6GKjwFAEK7W9UC8fTibTT5V8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=E29dT2n4GdNUT5uQXSnU9pgocqRZO6ZdV3OXyMc/FmVMvt6L987f6eAvFOK7eVXnoTYSsfDvtqAjACgF5HIzTeJB4Vb6+G4Wp9B4K2ssAP9dwlMl54IakHnLdY9xOT7hRWuurzwf+vGtW6RPkF32vN/G94Ac8/HKlmTjP+NcBg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ElRHVLsS; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3f556b90790so471918b6e.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 15:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743113795; x=1743718595; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pWnjsfzqeuRQjE5CuEy27r/cM16vobPuEqBqdK86nRY=;
        b=ElRHVLsSiITSonlYxI8xsck5Gn304Ps/jkNHY8LpW5QkbXMYqCqo/+wO1sOJw5IE/7
         wUOOKaxmZ6ELpXBK5jVg3nRHifPIOvIX5aRwtWp2vz22OysRwV1eIkSP41D3Q6ujl1xc
         tBY8HO9xHZ88EAITcrE02suapZmCy3SWhK3ww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743113795; x=1743718595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pWnjsfzqeuRQjE5CuEy27r/cM16vobPuEqBqdK86nRY=;
        b=O6/OesijjSajY49mIOUCWiG+PeXWIHDIoIrYaWsMVrCV08SOAx+Fx7ockBZ7OzXHR0
         qN/fx6+wHNuKA5gdXeflHE9uqIxPH44tVDbJvWipZiSPGM5LyhJp/nvfWlWRzI0w1C/n
         NtfWPS1H/nrsj8mAuBj3KDiE2ZtYL5tPFyydpZFNBIn6LVQPVQKz/1+DSlTHi3YTZ3rd
         kPPzE586fpXqj5WJurJHUazQAllGqYT8yu835URtVRHYlbYRE+3L/91Qyzw/qNnnzrHS
         XukOwUAKIYC7WToytUAJLptX3B/+nPtWw7a7XDIx6T3pJzrz3Fl6dfabKmmu1zldi5+g
         LpfQ==
X-Gm-Message-State: AOJu0Yz3VbvNlqG2q2z2CzNU4R49TVYbUij/ansisgbq4ykUnGfnoMQL
	MKuvcwYFiUsjXJlC9/n5Smz2tEnIykUpK5eZ6JB6qPN0kS5fqCoR+UH+1Hqtiddy7gp6iwq3iG4
	p/zTvyi9qN7l6llpM6uR8WkuBy/EJCorm0KJmJJgZFdNPUqDy/t8IoVBcNtLMa74spBMJaw0mne
	kce+vPapIIjmIg2ytnXknAxtj1jCcKNVg0OEe4ynSLFDPr
X-Gm-Gg: ASbGncuUL/FKGFueBQZZv7xR+b5SfAZZW5efiiWofPo80A8hXG+U2pKyBg/WEHNettk
	nbLUACR7IgcHfUfgOfvwPtOHDpxXQNjCBQmPUGE+RuelHVa3THSJLnB4F3UTk+qYuWBvaic+cGE
	Rx6vs5VB30luXJ+DhukxUgRY0yH306h+U3XZc/ubcRe5QJ7o1+AhG4esuCm/QMcMxmKRHjO0uMU
	WydW+2TlqplKDTI1uBdRdhXRNIBeDfqZdlo1clqRCN6UnK5ZQyyvn/YloNVx+O7rtmVpNqU5wyd
	gKEb5Mf6e1Y4F9pP8iMxgSw2BOhIu+l+n9YsNRu+3B17bns22tSZMpYwtcIxTOnCN1lEkHfsD62
	f2S0J7Wm4OIXalrb6h6gm9w==
X-Google-Smtp-Source: AGHT+IHJe1kJJUaMvRyIpRfNMnixffqNiUdPbooQgfaLtzes3Umk6/URZ+Q1RCthW4bU3XakDncbfA==
X-Received: by 2002:a05:6808:201d:b0:3f9:d5a2:89a6 with SMTP id 5614622812f47-3fefa62d72cmr2809117b6e.35.1743113795004;
        Thu, 27 Mar 2025 15:16:35 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ff051680a8sm105031b6e.1.2025.03.27.15.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 15:16:34 -0700 (PDT)
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
Subject: [PATCH 2/2] dt-bindings: mailbox: Add devicetree binding for bcm74110 mbox
Date: Thu, 27 Mar 2025 15:16:28 -0700
Message-Id: <20250327221628.651042-3-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250327221628.651042-1-justin.chen@broadcom.com>
References: <20250327221628.651042-1-justin.chen@broadcom.com>
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
 .../bindings/mailbox/brcm,bcm74110-mbox.yaml  | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
new file mode 100644
index 000000000000..139728a35303
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/brcm,bcm74110-mbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM74110 Mailbox Driver
+
+maintainers:
+  - Justin Chen <justin.chen@broadcom.com>
+  - Florian Fainelli <florian.fainelli@broadcom.com>
+
+description: Broadcom mailbox driver first introduced with 74110
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
+    maxItems: 1
+
+  "#mbox-cells":
+    const: 2
+    description:
+      The first cell is channel type and second cell is shared memory slot
+
+  brcm,mbox_tx:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Mailbox transmit doorbell
+
+  brcm,mbox_rx:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Mailbox receive doorbell
+
+  brcm,mbox_shmem:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    maxItems: 2
+    description: Mailbox shared memory region and size
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#mbox-cells"
+  - brcm,mbox_tx
+  - brcm,mbox_rx
+  - brcm,mbox_shmem
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+        brcm_pmc_mailbox: brcm_pmc_mailbox@a552000 {
+                #mbox-cells = <2>;
+                compatible = "brcm,bcm74110-mbox";
+                reg = <0xa552000 0x1100>;
+                brcm,mbox_tx = <0x6>;
+                brcm,mbox_rx = <0x7>;
+                brcm,mbox_shmem = <0x3000 0x400>;
+                interrupts = <0x0 0x67 0x4>;
+                interrupt-parent = <&intc>;
+        };
-- 
2.34.1


