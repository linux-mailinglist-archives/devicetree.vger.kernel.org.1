Return-Path: <devicetree+bounces-273176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDeEITlor2myXgIAu9opvQ
	(envelope-from <devicetree+bounces-273176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:39:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EA2243132
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 01:39:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B13703016AE9
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 00:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC2D22B8C5;
	Tue, 10 Mar 2026 00:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hQ9G3g82"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA03222590
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 00:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773103157; cv=none; b=nj0IOPL5WHAXpcsNfq4ukJ1UXjhf8pqhKNvX870VcahGNG4FOuZApq2dNXCNps1KN3GBMTshMNsODINIZ7OVdQ2oCAYwnhU6O/Lw6KMU1uoJAjGErGf4ajL363JSuEqDHgheItfDkL9K3FTII21Pj/e4l4pvxDqiVaXdVzh2eLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773103157; c=relaxed/simple;
	bh=VfnL3Xus5uZmgI4d29ykEWEX73BCxwrdj75GjQPw2jU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IWh/IfDJIWqO6JEBgHUHzkPSwUaCgwLgQYUEGVaXz9jSg5a4/Cvi55ilSfzPYyzZrx3RMI9KLe/uQ7m5DmqpD+nfDdCJzkpRilL3XiX949bkvE4fbu7OybYWRzt0eTST/kjZgxYETRjXGTJF8nmr1HG5Rvvi917EKRDPrf35Xm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hQ9G3g82; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-8297e0b27e5so3206534b3a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 17:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773103155; x=1773707955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ASXXX0p2ZfcvRm4ZB6M2J7c/IWgAE9q2+BNtra206fc=;
        b=hQ9G3g82jLdYWGkPo279FL8Jry8/gaccsHLu3jTdvxiHNd7aLBNKfyCeTp+1Q1EGJR
         BWbua5UAJ0td65RFAXJXEILpXp0F3dYPgjNhLjpVXY8r8Kf3q+7gdaKSltZUeTlx1TOD
         GW9mhpGZJQlVfKbBCJQ5Gie59lA2oNKqyHwKQK8kUfzaRMgA2HG38uDGtk4vI65+cvS9
         RPHsWMQMOpb0oqjEMoDKL3qAYCFC0KPG4YnZcKxeyyipQQvSM6PasagUoC9xQhEuanl+
         IWxN8vYC85DecUBMNNdT34fSPRdF2o81EJ4yYdputuSLBc2rCefccF36J5ViIQQOzA8r
         NeCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773103155; x=1773707955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ASXXX0p2ZfcvRm4ZB6M2J7c/IWgAE9q2+BNtra206fc=;
        b=kJNiy3B2R3xGb1NzaFMJqwoZSvrDTtrWNy8TFPQguz4pMiNfoDZS85aPwPsQOtFY5I
         TJuKxL0kxSC1rHqGitYvPTEYwTw1ZsjTPY0Ej6QnhBkvzm17if/BeqPNfhY9tBnXzll6
         EPlYwvtr9Y6a96PqPnvTKvE/IZmv+tVoVE09WX+nl9/9xayTr5mO3Q/U852apxDRUR31
         RImM3gmL51Z1nTxzAYx62DZuwLvAEcFsnlIpS8bhbEPruDPlG1X2loyUqlSnMprZmwml
         Cpg4RhwtV4GYcoIpXPgwaXfhU6H80V/nE2Nbog1yNBSJFHQzk1E4lQaz4MqDmiz8sj9C
         LNCw==
X-Gm-Message-State: AOJu0YziOmQK/xTtmkDCkYlht2p/peWDWoOhhx5KR588Sw/N/FjSBAsO
	gUuXIfzey8J4FqS3/6AAdfoOojtMzg3s9xdojQulkHwjYKMjYnsbyf7mTpZIsQ==
X-Gm-Gg: ATEYQzybDPRfUgF7d3SBjsA2DGbte33Eq4zZ4LohWpQJGdy1NxnAcRGr/Gl9T+VL7bj
	plZcw45n1QqeDKq+jLPsg6Bkqy1PSU4SQHiEUBlTWNLhioA46CyzuEFKKJRGXXFIJXXkK5hZIMs
	d3ccR7ULjFkG3nxMPkzlRyxqghq5+VfedvDVvA54I+GsD9/pB1ktudMBbwgCfXnVgW2BLX+0LlG
	nkhIkAcI9r8bMlMx9ASgc+5hX93/nAoNmID7R7Pj7yk7qpY9C4eZhhwL6+7rP2OiCygKGCKBqqR
	wKjUXjlooo8m/bJZjAVPXzADx85GK8jjfqChyXBipbBsVEiOIxDMAO/UAkPIo6ZA/gU48foM9/5
	61KYLq61Ks5rF6x6D1E43rXmFa0USOotYlgW9ZEkDo619ZmbRLVDziu0pwHcBINs07KECKu5Lv7
	99WV1S/KBpOW4r4AlNt8OCxXLBHqeHTsgjtGogZZ/bPlZA9pWF4cHHLabN419Tw7kATKqdmh8P1
	myUIN4=
X-Received: by 2002:a05:6a00:179f:b0:829:7a62:5f with SMTP id d2e1a72fcca58-829a2db4d91mr10719774b3a.9.1773103155495;
        Mon, 09 Mar 2026 17:39:15 -0700 (PDT)
Received: from lima-default (103.95.112.190.qld.leaptel.network. [103.95.112.190])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a46369d3sm11381583b3a.2.2026.03.09.17.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 17:39:14 -0700 (PDT)
From: Nicholas Piggin <npiggin@gmail.com>
To: devicetree@vger.kernel.org
Cc: Nicholas Piggin <npiggin@gmail.com>,
	Tomasz Jeznach <tjeznach@rivosinc.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Drew Fustini <fustini@kernel.org>
Subject: [RFC PATCH 1/1] dt-bindings: iommu: riscv: Add bindings for Tenstorrent RISC-V IOMMU
Date: Tue, 10 Mar 2026 10:38:49 +1000
Message-ID: <20260310003850.3837030-1-npiggin@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 46EA2243132
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,rivosinc.com,kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,lists.infradead.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-273176-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[npiggin@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Extend the binding to cover details specific to the Tenstorrent RISC-V
IOMMU. In particular, a second register range is added which contains
M-privileged registers, e.g., PMAs and PMPs.

The RISC-V spec S-privileged registers remain in the first register
range and are compatible with "riscv,iommu" so the Linux driver does not
notice any difference, but the binding will be used by OpenSBI and
potentially other M-mode software.

Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
---
Hi,

This binding will be used in a Tenstorrent SoC platform device-tree that
we plan to get upstream some time, but I wanted to ask for any comments
here before the OpenSBI platform code that uses it is merged.

Thanks,
Nick
---
 .../bindings/iommu/riscv,iommu.yaml           | 67 +++++++++++++++++--
 1 file changed, 60 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml b/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
index d4838c3b3741..3c680e53af64 100644
--- a/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
+++ b/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
@@ -32,22 +32,40 @@ properties:
   # should be specified along with 'reg' property providing MMIO location.
   compatible:
     oneOf:
-      - items:
+      - description: Platform (non-PCIe) IOMMU implementations
+        items:
           - enum:
               - qemu,riscv-iommu
           - const: riscv,iommu
-      - items:
+      - description: PCIe IOMMU implementations
+        items:
           - enum:
               - pci1efd,edf1
           - const: riscv,pci-iommu
+      - description: Tenstorrent IOMMUs implementing "riscv,iommu"
+        items:
+          - enum:
+              - tenstorrent,riscv-iommu
+          - const: riscv,iommu
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
     description:
-      For non-PCI devices this represents base address and size of for the
-      IOMMU memory mapped registers interface.
-      For PCI IOMMU hardware implementation this should represent an address
-      of the IOMMU, as defined in the PCI Bus Binding reference.
+      For non-PCI devices the first item represents base address and size of
+      for the IOMMU memory mapped registers interface.
+      For PCI IOMMU hardware implementation the first item should represent
+      an address of the IOMMU, as defined in the PCI Bus Binding reference.
+
+  reg-names:
+    items:
+      - const: base
+        description:
+          Minimum 4KiB region beginning with RISC-V IOMMU MMRs.
+      - const: machine
+        description:
+          Optional region containing platform specific MMRs for machine-mode
+          configuration, for example PMA and PMP registers.
 
   '#iommu-cells':
     const: 1
@@ -75,6 +93,31 @@ required:
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - tenstorrent,riscv-iommu
+    then:
+      properties:
+        reg:
+          items:
+            - description: IOMMU base registers
+            - description: Tenstorrent IOMMU machine mode registers.
+        reg-names:
+          items:
+            - const: base
+            - const: machine
+              description:
+                Region containing platform specific MMRs for machine-mode
+                configuration, such as PMA and PMP registers.
+    else:
+      properties:
+        reg:
+          maxItems: 1
+
 examples:
   - |+
     /* Example 1 (IOMMU device with wired interrupts) */
@@ -145,3 +188,13 @@ examples:
             };
         };
     };
+
+  - |+
+    /* Example 5 (Tenstorrent IOMMU device with MSIs) */
+    iommu5: iommu@d2020000 {
+        compatible = "tenstorrent,riscv-iommu", "riscv,iommu";
+        reg = <0x0 0xd2020000 0x0 0x10000 0x0 0xaa000000 0x0 0x10000>;
+        reg-names = "base", "machine";
+        msi-parent = <&imsics_smode>;
+        #iommu-cells = <1>;
+    };
-- 
2.51.0


