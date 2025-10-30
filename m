Return-Path: <devicetree+bounces-233468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C34F6C227F0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 23:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EBE134F0D22
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 22:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33AE02EC54F;
	Thu, 30 Oct 2025 22:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rz0pu97w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com [209.85.166.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB453168FA
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 22:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761861791; cv=none; b=cHVbDRo7mf0w3DQlbyXfk+/4JOklD+k5ILE3q4UeT1QbyryF4n+u3ue83xT+tJ2JrAGPSLsrzxsGX5zA2wb02TxUxjwregPne+Fv7bIotmNRE/G8MWvBUj7nUKgil0Ej+N24GUKLZnmtev9d4v3orvhMFPl0RIyDCcK+iOKkawk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761861791; c=relaxed/simple;
	bh=8LppfTqRL5l2SybiAnwAcKY+acsrML8ysTdBgNm1hLo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ovwcOBhZGvbpoVSNhZm6oEOl2L1OzuKSUm2q6vqJWsIKW3BdOxjJJfZukbxC+gQLK42qHHTDGtxv4eq6aS8QvbCHv24nqwWa157rMrrUbcNFqEYhFgDbhrCQs9q2FLyNd3AJROzAj3TVnSdlCJhQtzsYqVzGZXkTSlWgzb6B5kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rz0pu97w; arc=none smtp.client-ip=209.85.166.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f67.google.com with SMTP id ca18e2360f4ac-93eab530884so134227839f.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 15:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761861788; x=1762466588; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxyyAVz+sgzum76hhNZkaYgPP0OtOtVsykA+Y1mmKUg=;
        b=rz0pu97wmJ1kGzHv4Nljt3aMjOtCujYQZNdjUbwViyrnpacsHVXsArqz7jsStfyslS
         RfXz52o8aJNGDM2Lx2JMJuE0LwL+sMJe+u7LeEaxULNtT3fecw3PR8vvJ1XeR4t9CpSp
         ckp9DHCkCGUHO7IZy4aws6rlRmRxkZk03M2169334fCpRr7vXWowigpYqKzQ1G/LBwoI
         8N1opI0EOtfKDi2IHPZPWE4viFP9hxYHytRgl78yrFOBK8fQPDr/WAsXpc7fHpieOZqq
         JxIBrN4lqBrgPjlj1PN8sTS0BpUDyl8pJo1MXwk8BQt+CdBXt6A/CJAzc0g/HtC1YHMV
         HDwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761861788; x=1762466588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oxyyAVz+sgzum76hhNZkaYgPP0OtOtVsykA+Y1mmKUg=;
        b=OIOFzc1qYU1olqxy4LcP+egy7p+Y9cwLVOdustCH9ByOo+wtx2CA/mMc7QQQBnVVcR
         InzjpBppxnXC+tPeG1sLgTedNhzL2CDCQiwAQ2nQCm0EEb2oe+4Yn0YEUkLPl5AxwYHP
         nWjxY/fNNwxhBao4pbaotLADzAG71EZGqUGi6r5x1L1K3h+bhxwig2qFq/t8jKhW79f6
         /0agleGGM6Nnosmjvpa1v1ke1OlExdrrXw5iAp/e79F4K7LgAp8jY8/68LDmcipuHpvr
         i+KyG7syhykbIB3lxMA1kkZI85JAMvOKV0VrKXCVBGtxFDG9z92XNs2D4olS7ZAAWHUj
         d1Dw==
X-Forwarded-Encrypted: i=1; AJvYcCVvoaNJtzIjZuuv/YjaJ187m14idDL2QPPXT/IwCrrFe7QkRfsMRb2DW/dDwPtOs7co7ngUPg1c5pUY@vger.kernel.org
X-Gm-Message-State: AOJu0YzGVT/WyqWEQ/JmLHIQW0KEJRU0IisDsdsdJXkZ/h5husMRCYfl
	Vpq9n4q+jb+6J6vzV4hC6DrVqh5hyMq72l2FR2til0Vq7iI1DMIKLX2iCezYdfT9bg8=
X-Gm-Gg: ASbGncsr5nWqRrtax5wHFd3seU+vrNI9+Weod4qMLQ5lnZquEu+9zR3eCWvxQ/xVWZU
	2jIeoqtq6iumTHQGKBBWIXc2BRK5DhM1SFZWAQT2h5HkytS4mV5h+Sij7doSqFPxBGB7+ecyJf4
	ajUH7HZo14NEn2j4vmJP/cPf2Qpk4nEExaoGo7IwzkmtqKEssZcilDrtAmV6sVJm1he9lY83PHS
	ynKSj9qCYjy1GWpis8IXZph9qoYFocaMUcnTO6o6sbm7upRr9W5g2OukjI5J7P2yeq457x9NNcz
	uMNTwmmqx+LjM/Qerpxn0eRmjbhym3O7Y1n5bZYIW6cLRI+Zhqq+/EXszHxf7K0Z4rqOdKolj/y
	UrCWA+8qnUrgyQxG+n8erjrtp6imH6AcJmoM7IL4ca0DwG4rVVBod0kZwRaMEQp51fusWTsqoAg
	Iqe/id4MeaFZLLI77e3nkwEjY97v4qS5afBzucswLwfXQ=
X-Google-Smtp-Source: AGHT+IGz6tkmi1cHmh6ulh0zCDoSzwGc5CJvBHc1MrsOfeBEWn+5+KxyIgdxU5iCd47VdKbfJn2utw==
X-Received: by 2002:a05:6602:2c92:b0:945:a58e:ba03 with SMTP id ca18e2360f4ac-948229a4807mr241086939f.8.1761861788149;
        Thu, 30 Oct 2025 15:03:08 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94359efe149sm604118039f.13.2025.10.30.15.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 15:03:07 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: ziyao@disroot.org,
	dlan@gentoo.org,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/7] dt-bindings: phy: spacemit: introduce PCIe PHY
Date: Thu, 30 Oct 2025 17:02:53 -0500
Message-ID: <20251030220259.1063792-3-elder@riscstar.com>
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

Add the Device Tree binding for two PCIe PHYs present on the SpacemiT
K1 SoC.  These PHYs are dependent on a separate combo PHY, which
determines at probe time the calibration values used by the PCIe-only
PHYs.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
new file mode 100644
index 0000000000000..019b28349be75
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/spacemit,k1-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 PCIe PHY
+
+maintainers:
+  - Alex Elder <elder@riscstar.com>
+
+description: >
+  Two PHYs on the SpacemiT K1 SoC used for only for PCIe.  These
+  PHYs must be configured using calibration values that are
+  determined by a third "combo PHY".  The combo PHY determines
+  these calibration values during probe so they can be used for
+  the two PCIe-only PHYs.
+
+  The PHY uses an external oscillator as a reference clock.  During
+  normal operation, the PCIe host driver is responsible for ensuring
+  all other clocks needed by a PHY are enabled, and all resets
+  affecting the PHY are deasserted.
+
+properties:
+  compatible:
+    const: spacemit,k1-pcie-phy
+
+  reg:
+    items:
+      - description: PHY control registers
+
+  clocks:
+    items:
+      - description: External oscillator used by the PHY PLL
+
+  clock-names:
+    const: refclk
+
+  resets:
+    items:
+      - description: PHY reset; remains deasserted after initialization
+
+  reset-names:
+    const: phy
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/spacemit,k1-syscon.h>
+    phy@c0c10000 {
+        compatible = "spacemit,k1-pcie-phy";
+        reg = <0xc0c10000 0x1000>;
+        clocks = <&vctcxo_24m>;
+        clock-names = "refclk";
+        resets = <&syscon_apmu RESET_PCIE1_GLOBAL>;
+        reset-names = "phy";
+        #phy-cells = <0>;
+    };
-- 
2.48.1


