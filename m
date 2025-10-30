Return-Path: <devicetree+bounces-233469-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF4BC227EA
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 23:03:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B6DF7350999
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 22:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5D1A337699;
	Thu, 30 Oct 2025 22:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="tk/xjeKQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com [209.85.166.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26D22FC890
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 22:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761861793; cv=none; b=WqtXLuNKVTmnRljF5CPPIu+wbmPd4C0ahUi/joQeQZ+M2Jlg6ruJg6WUrvpBIHMtB4tlHQBS3peYwLQcw839hVH65QNEw3YS+a9U+Zau2kQak9u7Rv6JmbjZEaiyvLGamVPP3jbiR/pKrZFkMkH95aSrZcJ+biw3l4HMnwpuaQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761861793; c=relaxed/simple;
	bh=g0TyjQoYgqKGdvJozDxy+nVzO7SebxSVHgtLRKuRJfw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M3LsutD5GYv5+QPTyY0dC+vT4esXcRLPA+Dw21oIFfijnX3VCPRrJ5d84aKx/Pn3vOnn08Lrp66ziR5P/N2gRlfT7zAZRlTElIDCq8Fe4ldoZseEY9QlAmT04i8SqN9he7OcDcel2Cc3wNTgv1LpfXN3G325zUZAZx56VrTEIlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=tk/xjeKQ; arc=none smtp.client-ip=209.85.166.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f67.google.com with SMTP id ca18e2360f4ac-940f8a73275so163071639f.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 15:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761861790; x=1762466590; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kY8F6K1rIyJfyukY+3kGi6ZJkc+idzdw2ZPLZkTQgao=;
        b=tk/xjeKQKRCUomi2XwloS61UK27MWvt3Y3unY2XjY3zBn943fhtQ2d1jSn4ADln1vQ
         rtZY6lOtj3Rupi+0S2DGFPF4peHeqjRwXye6JFA+Yi6tL8oDKx4qMJoUvfuDdQETBAb5
         6Ox5PRMvSPQBo3gcta41cPRm/BYBAEzAf+fSKlZwjBsF09GFKWnd9GNmmk27v4oSFJyk
         y2k6HuvGwpn9c2a9ikKYWrHnlURFQrCfBpMpHzZ3GiL2bjhP2M46YNHuHxnajpNSfabk
         IDKc1CjHIWh+uHhLi3TfiRQntOkf7cO03i0iaJpSGJ1zuwhfDmIlUtB7Ys53M+LUJaM0
         kEdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761861790; x=1762466590;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kY8F6K1rIyJfyukY+3kGi6ZJkc+idzdw2ZPLZkTQgao=;
        b=tURNWaQiHzGpfYYcE7PMGCLjZl3uAWDFYw9G5P8WM3D2zoJcKPl2pl2jUiiHRuSmns
         c4io3tr1yCY7QNbzbZGit8U0jS7S9/17vzxiNCJzWkUGetD56XZZoi8H367CVfmFV6xN
         b3DxXb/tC9+4BIiMVg86KYnuwoD0JqnaQCRxe9B+SVlHdjBgIyHJjuxEnox5jQYglTy1
         J9jhUl0TRvzBpXwSy7TU51YVY/7wtsIJwOWWAbrH3iKHuNcoSSGCKDcEKd8IFEdLy9Sv
         CHDr3wilPI7zlqcOc5uwhpf6J+WA2oL+tDpJBxjdvJOBhnoyzc30Ogx89K4UHbmPHdcZ
         Qm+g==
X-Forwarded-Encrypted: i=1; AJvYcCWczS/cQrO6bNKjWFo3yMyi8nX1QJl9SvrV4hZeAfVy4cild/gmE1RY6Ug7CyAZL0ftOXeqHH2nwrlA@vger.kernel.org
X-Gm-Message-State: AOJu0YxDs8fNkXBfoP5upn91fVgXwSlW63WDttQD+Kc2ai+KFm5vz9Gt
	cymchdAD8sGpAVfW/Mx4I2M7Bx8tEcDG4KTGtAH+lS/cWlnNHnv15+eOZfB5dwtBOOw=
X-Gm-Gg: ASbGnct2xYA8gm39YQ5lhOf9s20As1mNeNpoeayUxiwYTebnl0J57qjIdGmGvntMwQb
	DoXdhpVIJhw4MoBsODRaSzggDYzUZHuXo05rTAuKCX+5GrbzGRSei1womd3sYUJpyiN2RDg//Jo
	Osh6e1ty2qp4tYjwTJ0nM80f3aZ4M5SxOfwxN0KLwO/TuC8YDl2l9b/LiblLRQd3ngpBFApop8D
	hdHXabKKqdw00xtTBsEWDBiyBOIDLrQsw/RioKk8A6t346BURnHDABbu8J+ag59xzy7pmd14cV+
	DoD7no8QikwMEh5LEsB1BxkBkxcg4kPJ1AJ73ZRTcYgdEOLf1G2OMtsmpZ0L/jLi0KXs064p02d
	yWQZi1RuE6pfLj++52CIUkEuqg9OhSBU+5gPBymsIFhulHIQxIp4M1HrBxqa3PogMOHYtG6ir8p
	Ch/pGFEUg4+qwI48b6l6brWxgy9d6IKGvG1KXzzI37nuU=
X-Google-Smtp-Source: AGHT+IH2ECDLiEzZGe6B8hcsGW+TrKbN+u5OLPyvgHr1FicCmPHECAKFwVMLTlNXVAMST58dw/pRxg==
X-Received: by 2002:a05:6602:1545:b0:943:83fa:ef49 with SMTP id ca18e2360f4ac-94822a4fb5cmr226769439f.15.1761861789674;
        Thu, 30 Oct 2025 15:03:09 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94359efe149sm604118039f.13.2025.10.30.15.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 15:03:09 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org
Cc: dlan@gentoo.org,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/7] dt-bindings: pci: spacemit: introduce PCIe host controller
Date: Thu, 30 Oct 2025 17:02:54 -0500
Message-ID: <20251030220259.1063792-4-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251030220259.1063792-1-elder@riscstar.com>
References: <20251030220259.1063792-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Device Tree binding for the PCIe root complex found on the
SpacemiT K1 SoC.  This device is derived from the Synopsys Designware
PCIe IP.  It supports up to three PCIe ports operating at PCIe gen 2
link speeds (5 GT/sec).  One of the ports uses a combo PHY, which is
typically used to support a USB 3 port.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../bindings/pci/spacemit,k1-pcie-host.yaml   | 157 ++++++++++++++++++
 1 file changed, 157 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml

diff --git a/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
new file mode 100644
index 0000000000000..58239a155ecc0
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
@@ -0,0 +1,157 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/spacemit,k1-pcie-host.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 PCI Express Host Controller
+
+maintainers:
+  - Alex Elder <elder@riscstar.com>
+
+description: >
+  The SpacemiT K1 SoC PCIe host controller is based on the Synopsys
+  DesignWare PCIe IP.  The controller uses the DesignWare built-in
+  MSI interrupt controller, and supports 256 MSIs.
+
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie.yaml#
+
+properties:
+  compatible:
+    const: spacemit,k1-pcie
+
+  reg:
+    items:
+      - description: DesignWare PCIe registers
+      - description: ATU address space
+      - description: PCIe configuration space
+      - description: Link control registers
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: atu
+      - const: config
+      - const: link
+
+  clocks:
+    items:
+      - description: DWC PCIe Data Bus Interface (DBI) clock
+      - description: DWC PCIe application AXI-bus master interface clock
+      - description: DWC PCIe application AXI-bus slave interface clock
+
+  clock-names:
+    items:
+      - const: dbi
+      - const: mstr
+      - const: slv
+
+  resets:
+    items:
+      - description: DWC PCIe Data Bus Interface (DBI) reset
+      - description: DWC PCIe application AXI-bus master interface reset
+      - description: DWC PCIe application AXI-bus slave interface reset
+
+  reset-names:
+    items:
+      - const: dbi
+      - const: mstr
+      - const: slv
+
+  interrupts:
+    items:
+      - description: Interrupt used for MSIs
+
+  interrupt-names:
+    const: msi
+
+  spacemit,apmu:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      A phandle that refers to the APMU system controller, whose
+      regmap is used in managing resets and link state, along with
+      and offset of its reset control register.
+    items:
+      - items:
+          - description: phandle to APMU system controller
+          - description: register offset
+
+patternProperties:
+  '^pcie?@':
+    type: object
+    $ref: /schemas/pci/pci-pci-bridge.yaml#
+
+    properties:
+      phys:
+        maxItems: 1
+
+      vpcie3v3-supply:
+        description:
+          A phandle for 3.3v regulator to use for PCIe
+
+    required:
+      - phys
+      - vpcie3v3-supply
+
+    unevaluatedProperties: false
+
+required:
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - interrupts
+  - interrupt-names
+  - spacemit,apmu
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    pcie@ca400000 {
+        device_type = "pci";
+        compatible = "spacemit,k1-pcie";
+        reg = <0xca400000 0x00001000>,
+              <0xca700000 0x0001ff24>,
+              <0x9f000000 0x00002000>,
+              <0xc0c20000 0x00001000>;
+        reg-names = "dbi",
+                    "atu",
+                    "config",
+                    "link";
+        #address-cells = <3>;
+        #size-cells = <2>;
+        ranges = <0x01000000 0x0 0x00000000 0x9f002000 0x0 0x00100000>,
+                 <0x02000000 0x0 0x90000000 0x90000000 0x0 0x0f000000>;
+        interrupts = <142>;
+        interrupt-names = "msi";
+        clocks = <&syscon_apmu CLK_PCIE1_DBI>,
+                 <&syscon_apmu CLK_PCIE1_MASTER>,
+                 <&syscon_apmu CLK_PCIE1_SLAVE>;
+        clock-names = "dbi",
+                      "mstr",
+                      "slv";
+        resets = <&syscon_apmu RESET_PCIE1_DBI>,
+                 <&syscon_apmu RESET_PCIE1_MASTER>,
+                 <&syscon_apmu RESET_PCIE1_SLAVE>;
+        reset-names = "dbi",
+                      "mstr",
+                      "slv";
+        pinctrl-names = "default";
+        pinctrl-0 = <&pcie1_3_cfg>;
+        spacemit,apmu = <&syscon_apmu 0x3d4>;
+
+        pcie@0 {
+          device_type = "pci";
+          compatible = "pciclass,0604";
+          reg = <0x0 0x0 0x0 0x0 0x0>;
+          bus-range = <0x01 0xff>;
+          #address-cells = <3>;
+          #size-cells = <2>;
+          ranges;
+          phys = <&pcie1_phy>;
+          vpcie3v3-supply = <&pcie_vcc_3v3>;
+        };
+    };
-- 
2.48.1


