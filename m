Return-Path: <devicetree+bounces-162701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C6BA7984B
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 00:36:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99BF53B3E87
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 22:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F0BE1F584F;
	Wed,  2 Apr 2025 22:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="FHBauCr8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB0331F5435
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 22:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743633392; cv=none; b=LDDX+IXUJBcI2x9JVRLbXotkw+N9xG6SJfzsC5qthsHbgteaWdmTHFPSgW9xAG8+R4LYHse0rJ5ZuENuFs3y9VKn7OD1TRdYlcq66QxVWD8b7rTq8Lmt3ioHKgpP4AZqRM5Fl5DCXdlxwW73cOXEt5sMxcfKCTFPYbMLXMTwE8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743633392; c=relaxed/simple;
	bh=N5RZnagF70pCxqRVfGd6AUhnkhoggMU80LTo7XfpkfE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cA8gAnI2s87Mx6E28k2JDCNdLCvNLBlasBQxy/CwoK3mUmsMDNim6sdX1qBSyTgmEbodyk5HDaRsBr96xyeg2zLO+M6RkSmpmBQDYH5uWjNy7rIXbgsQAF5ydfBzpIicBGaiFf43jxz6Jcc8OfMiAdvW3dwmTu/6miN1RGklbh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=FHBauCr8; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2c7b2c14455so147520fac.2
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 15:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743633389; x=1744238189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bU5Wmgk0DtPcbafyuC8OfKKn9mU3Z/jtkoEvb2Qwpsc=;
        b=FHBauCr8hfGo4JbZk2ttf4oFdClDEztGhhDmEVNvAAdOW9vrA2HcSd3Qo+B+G7Z+t4
         dIydpECa6zBZnMTEd1btvM8IK5VA344+IY2dwN94L22XEs9PjuPdbeLY4jHlug+AtX1z
         nqliAPayM2onvNFhVWFhnFThEuRqujxAOqgMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743633389; x=1744238189;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bU5Wmgk0DtPcbafyuC8OfKKn9mU3Z/jtkoEvb2Qwpsc=;
        b=tKqaDeT9DXjzE5gtDQFtDiKSMXxfX54JG8cSmEnz896mLg0f+Arr/ynCHWhhCC238k
         TaVynYeee7JHl46z6efSv+oPRqloGAnMvD4ZrvoGG7fj1tfk/5ljpTAunON/Lpf9Cklq
         9O2v/6o1W0O2XGY6wE7UryOO/ZN+KzkLsIBHH589cWrkjbvr6J4YF9cuYpeq+jsZfBVW
         TojlHk+J+H5Y493PnEUJhKmqX9I9JBeSsLoaP1/KBLOxTGDtGQyzCh1nvbf2PzlCs6mX
         4dhZB6bdDne3ERMMf0NSGcGRf8bItkuyHZ48g/6naGaAzarZZFlDLK18gDa00nT3Gedv
         HYPg==
X-Gm-Message-State: AOJu0YzbF4AXcxms9EwFgvmkYepQPW5GpyfjXh5fQkb34EEJrdiHN8UR
	4i7TB4DK+KWdr3igMa0EDM15F9qr49GcsONXSdcjw2LsSygaf5R51xu1fuSXr/S/psoPMxoCB5Z
	ivV0a9gKasumnqpGjKtIchnqiRsx0Rtnd6zONydKE+ws5CVDw1EwKciE0GuLHE71LgrM/3Cs0HI
	5/Um64BxCqBQLTnbzRuls8d6UnaloCmrQwYUdu2BuvDPhu
X-Gm-Gg: ASbGnctodOqsLlJjbqU+r0+6Ds14ovPK4N2kjgKBNpw2KNAq24o4IPtG1b5/xn5HZ5D
	EfmUkYZ6uofwKjAjWwRagZFwgaULk0qgoIeUhxu3H/v4nl2kCXU/TDIlTyYeYJrB0MyeUk8kOnC
	8lHiS8FAqXASnC1STCXCbSDRUFTXnvrw0RQhdVr2tCcPvvvOHOK2EZfdLCj5hHA9+ZOwwVPDCIj
	j43/W+ZJ86uIGY24Wqi682XBZWHq2kJgcG0FI+++TDv29LzJWv7zLO+LBncIn8ZwTn8+ajp6DOc
	j4u71StMtO1Sw54NLi0crHa3qC2y/ugNBpSsMGBM61OqauC+2DRUPeMWGGUnRVoTN8qxBWT/GEX
	b0JcGEkzFPDFrCoXWpVa8S2LRU7/9zgmD
X-Google-Smtp-Source: AGHT+IGQvGI4ExR8htfZkiB1ZkYNsAjoEKb/t6I2Nf1birXi0Ckii+tOxYi5evJ3/kEj3LTxABnKtA==
X-Received: by 2002:a05:6871:8114:b0:2c1:6663:f603 with SMTP id 586e51a60fabf-2cc7f6e9eaemr305995fac.19.1743633389601;
        Wed, 02 Apr 2025 15:36:29 -0700 (PDT)
Received: from stbirv-lnx-1.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2cc84bcf5besm190fac.45.2025.04.02.15.36.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 15:36:29 -0700 (PDT)
From: Justin Chen <justin.chen@broadcom.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: florian.fainelli@broadcom.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	jassisinghbrar@gmail.com,
	bcm-kernel-feedback-list@broadcom.com,
	Justin Chen <justin.chen@broadcom.com>
Subject: [PATCH v2 1/2] dt-bindings: mailbox: Add devicetree binding for bcm74110 mbox
Date: Wed,  2 Apr 2025 15:36:18 -0700
Message-Id: <20250402223619.358818-2-justin.chen@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402223619.358818-1-justin.chen@broadcom.com>
References: <20250402223619.358818-1-justin.chen@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add devicetree YAML binding for brcmstb bcm74110 mailbox used
for communicating with a co-processor.

Signed-off-by: Justin Chen <justin.chen@broadcom.com>
---
v2
        Renamed brcm,brcm_{tx|rx} to brcm,{tx|rx}.
        Removed brcm,shmem node. Not necessary to keep in dt.
        Fixed example and added scmi node.

 .../bindings/mailbox/brcm,bcm74110-mbox.yaml  | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
new file mode 100644
index 000000000000..8c3dfffa515f
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/brcm,bcm74110-mbox.yaml
@@ -0,0 +1,70 @@
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
+    maxItems: 2
+
+  "#mbox-cells":
+    const: 2
+    description:
+      The first cell is channel type and second cell is shared memory slot
+
+  brcm,tx:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Mailbox transmit doorbell
+
+  brcm,rx:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Mailbox receive doorbell
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - "#mbox-cells"
+  - brcm,tx
+  - brcm,rx
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    brcm_mailbox: brcm_mailbox@a552000 {
+        #mbox-cells = <0x2>;
+        brcm,rx = <0x7>;
+        brcm,tx = <0x6>;
+        compatible = "brcm,bcm74110-mbox";
+        reg = <0xa552000 0x1104>;
+        interrupts = <0x0 0x67 0x4>, /* DQM 7 */
+                     <0x0 0x66 0x4>; /* DQM 6 */
+    };
+
+    scmi {
+        compatible = "arm,scmi";
+        mboxes = <&brcm_mailbox 0x2 0x0>;
+        mbox-names = "tx";
+        shmem = <&PMCMBOX>;
+        #address-cells = <0x1>;
+        #size-cells = <0x0>;
+    };
-- 
2.34.1


