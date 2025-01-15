Return-Path: <devicetree+bounces-138621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF864A1168A
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 02:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11E303A77AC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 01:27:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6105C78F33;
	Wed, 15 Jan 2025 01:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IXl5d0dw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737A47405A;
	Wed, 15 Jan 2025 01:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736904406; cv=none; b=T/U4gWQ82Fen1A0XEBAdvwRdvrw0eZ9mLYkxVPCWn/ZVNGQI/4AUo41bE6esWIeUvVCFxY/1lfgWqesSMtTtYap2d0Ny/f0izPGkYhAP3QTf02P2YyWm44f3OvyDpVf+3CqYrOSjVAYF3ChoWpO+gy75uFU/Mrw89ZDkhX3dUHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736904406; c=relaxed/simple;
	bh=UXTMnc+dQVsthO8edzpzxnZ6ra3uqSGqSoKIEwPgdC4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TcUoBm8/WwAG1Q+MmM4r9BVuBDqE+tT40YhptBQZA7RU70ejh1cirCcM0H8hOM8+6K0b2A425Wy9+NlsrfKu2OfBjrLb+8v43nx8zJfHgzZti8Uqs9N4XE2+TtRnBCmW5H9yFu94aqrl9Eukbmo6r/mgfGxxh+eqzPw47/5/mjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IXl5d0dw; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-46b1d40ac6bso3506301cf.0;
        Tue, 14 Jan 2025 17:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736904403; x=1737509203; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Snarum8RemNk17GrbLyNHBNd9vFMQQrcExzWnVGfdHE=;
        b=IXl5d0dwBk/MJhtsCF/Mt107LSsY8gbtPwr44eVGjSCmcpgVhnZorek+7UVvgaqNYx
         8s7wr+buYnIzdR/mml13Ie9Oa8xkGRJIzxiOb/CtZAU4G0MRK3lpnzNmwpldPahbUsPT
         ifHsF9LLkesiEn9i0NmbnecUC+Xzzo5Q6uCRP3ZkRByIxYz7Si9KW4xihKyaQ7re9Kc+
         ZjQIz7qiJjef15+WJhLLqSM5tzIZsPCN+etdMUix44al4iYN5WeIp9iRtN4e6/tZkJk5
         3vcB8kkYRqStBCTzbcxdlbq3dpTzmlubPKVsJSm89kbBKEoxh1F+bQPG59y1x6XG7xZ+
         GcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736904403; x=1737509203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Snarum8RemNk17GrbLyNHBNd9vFMQQrcExzWnVGfdHE=;
        b=O/O2qA4+XiqiSYaBUPKmGdg/tWNyXtKc0SCC38LmMVCliouB6lxB/YGZH0dBgssu80
         eOB9z0LuRUZRgZ5HkLBSp3iM7gs1dH7Yk3viFjmkUuR3faozlwGA5A1ssg9SH7knzb2P
         cvYma1R/FxlmF9Xu/dp0GJqoTC3XhdFOhfuU4OOakN/Syp/S46ARNrslR4LEqR6nTWGD
         WkKzI1UgQ4dNQ5yJurLxUPBbkVGLuzbLvj5kDaKLEGdLepYvwGexS/SmlusweX7kTSoi
         Zo5qQ4li/Hsqm/aZORPTh6SLYwAg8rsOQkwha8gWEy877rHwtsnNITv7lRYyuJHX5dHl
         cVdg==
X-Forwarded-Encrypted: i=1; AJvYcCUbBOwOPyZtJlad6fgPOW0G8WzyY/Dy8MsdrNNGX/d6pdtiPGCZB47Yff5smfMv6ec+TjMbKipFbLYC@vger.kernel.org, AJvYcCXfC90wkzgpbV5wYRNuReybIK5y6SFKSllIliptkndgQ4/iKjILTdbYZER78UJop7LHPtBCJj5d4bxrwjHa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3ynyVd2nHxb5bknRUQUQMBYHd7JPnHf/0bqPIJlh/9/9tH7Vo
	vJ2+2oHVzsC/iK+uoB1u3Hz+tv/RKzXjTenrfLJYvsjJCSGbRtVf
X-Gm-Gg: ASbGnctrqlaa6z/X3FT+KGPth6iAt8c4pbarqXeh+nFWhexCFcNH4i5MGaaGg4xFkMf
	Rs2WLNTZkIc+MbcqLioNvbb6oaGgLHekDGaBimvE2W9aEOL1TQQK0cz+RJWecbTH+q1wkkH15sU
	h0YbYivpfLzp0nVu7MuSAYi0F8VLsYXDkyWv/M9eHVTzIqHQhrcuVDA6QneXRVRpNGRROHaLVY0
	4DnUtBYCMdk1BdPNNUoG9VDkzSS8J52nlFfL4yTAjhmBIsuHkfph0fPDsz95J0soWEX
X-Google-Smtp-Source: AGHT+IGOUmK+RMSPaiPxBiaoCjQrSZ5Ap13SAxkBgzinR11U70sZUt737IPnaRgevXgbi2ZEV1eQwQ==
X-Received: by 2002:a05:622a:181b:b0:466:9197:b4fa with SMTP id d75a77b69052e-46df5760914mr22651911cf.21.1736904403233;
        Tue, 14 Jan 2025 17:26:43 -0800 (PST)
Received: from master-x64.sparksnet ([204.111.227.95])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46c8733130dsm59933881cf.25.2025.01.14.17.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 17:26:42 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: zyw@rock-chips.com,
	kever.yang@rock-chips.com,
	frank.wang@rock-chips.com,
	william.wu@rock-chips.com,
	wulf@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v1 2/6] dt-bindings: phy: rockchip: add rk3328 usb3 phy
Date: Wed, 15 Jan 2025 01:26:23 +0000
Message-Id: <20250115012628.1035928-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250115012628.1035928-1-pgwipeout@gmail.com>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add documentation for the usb3 phy as implemented on the rk3328 SoC.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---

 .../bindings/phy/rockchip,inno-usb3phy.yaml   | 166 ++++++++++++++++++
 1 file changed, 166 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml
new file mode 100644
index 000000000000..cde489ca87ab
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml
@@ -0,0 +1,166 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,inno-usb3phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip USB 3.0 phy with Innosilicon IP block
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3328-usb3phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: refclk-usb3otg
+      - const: usb3phy-otg
+      - const: usb3phy-pipe
+
+  interrupts:
+    minItems: 4
+
+  interrupt-names:
+    items:
+      - const: bvalid
+      - const: id
+      - const: linestate
+      - const: rxdet
+
+  resets:
+    minItems: 6
+
+  reset-names:
+    items:
+      - const: usb3phy-u2-por
+      - const: usb3phy-u3-por
+      - const: usb3phy-pipe-mac
+      - const: usb3phy-utmi-mac
+      - const: usb3phy-utmi-apb
+      - const: usb3phy-pipe-apb
+
+  "#address-cells":
+    const: 2
+
+  "#size-cells":
+    const: 2
+
+  ranges: true
+
+patternProperties:
+
+  utmi-port@[0-9a-f]+$:
+    type: object
+    additionalProperties: false
+
+    properties:
+      compatible:
+        enum:
+          - rockchip,rk3328-usb3phy-utmi
+
+      reg:
+        maxItems: 1
+
+      "#phy-cells":
+        const: 0
+
+      phy-supply:
+        description:
+          Phandle to a regulator that provides power to VBUS.
+          See ./phy-bindings.txt for details.
+
+    required:
+      - compatible
+      - reg
+      - "#phy-cells"
+
+  pipe-port@[0-9a-f]+$:
+    type: object
+    additionalProperties: false
+
+    properties:
+      compatible:
+        enum:
+          - rockchip,rk3328-usb3phy-pipe
+
+      reg:
+        maxItems: 1
+
+      "#phy-cells":
+        const: 0
+
+      phy-supply:
+        description:
+          Phandle to a regulator that provides power to VBUS.
+          See ./phy-bindings.txt for details.
+
+    required:
+      - compatible
+      - reg
+      - "#phy-cells"
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3328-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      usb3phy: usb3-phy@ff460000 {
+        compatible = "rockchip,rk3328-usb3phy";
+        reg = <0x0 0xff460000 0x0 0x10000>;
+        clocks = <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
+        clock-names = "refclk-usb3otg", "usb3phy-otg", "usb3phy-pipe";
+        interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "bvalid", "id", "linestate", "rxdet";
+        resets = <&cru SRST_USB3PHY_U2>,
+                 <&cru SRST_USB3PHY_U3>,
+                 <&cru SRST_USB3PHY_PIPE>,
+                 <&cru SRST_USB3OTG_UTMI>,
+                 <&cru SRST_USB3PHY_OTG_P>,
+                 <&cru SRST_USB3PHY_PIPE_P>;
+        reset-names = "usb3phy-u2-por", "usb3phy-u3-por",
+                      "usb3phy-pipe-mac", "usb3phy-utmi-mac",
+                      "usb3phy-utmi-apb", "usb3phy-pipe-apb";
+        #address-cells = <2>;
+        #size-cells = <2>;
+        ranges;
+
+        usb3phy_utmi: utmi-port@ff470000 {
+          compatible = "rockchip,rk3328-usb3phy-utmi";
+          reg = <0x0 0xff470000 0x0 0x8000>;
+          #phy-cells = <0>;
+        };
+
+        usb3phy_pipe: pipe-port@ff478000 {
+          compatible = "rockchip,rk3328-usb3phy-pipe";
+          reg = <0x0 0xff478000 0x0 0x8000>;
+          #phy-cells = <0>;
+        };
+      };
+    };
-- 
2.39.5


