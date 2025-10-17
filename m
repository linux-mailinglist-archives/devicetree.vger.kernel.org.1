Return-Path: <devicetree+bounces-228185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B4CBE9566
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 16:53:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 884BD501BC9
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 14:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A223B2F12BF;
	Fri, 17 Oct 2025 14:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="d4Te4ams"
X-Original-To: devicetree@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F06337109
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760712627; cv=none; b=Oa5TCWQfYF0H3e0VmPiRCa5phYf/yoX9rJYu2oYf6yYh6yPPrzcO2UAUOZxHfROlHe2u5m5i9YYNajOfMWz7bWP2dyc8xyL8syHMq4MSVlrj5ZPesTFHFbpxSsNHLBFL9a6GVxqmwWmUvCher8BVMRog41aq3NIfZQDgCS5n8no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760712627; c=relaxed/simple;
	bh=QaF1KmAvkgTx8GRFlS00uZ3xWQHECjSqx1iwWdJGuFY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y6JfwWqR7Ye+J0S/r1JlKM5zQ86Aw/p8ijMw9jdlwjLiXpSyOxdHS6RRojyY+F3fDPeOVQw3FmGRirqlGxizMHpqTY5loAUg98NFXXxf0ovmEhUCU6DpKARmyX6an1R/Z78KSNauArh5Y+m9GKaEsxPqmY4PtX1FIw7eRwamSts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=d4Te4ams; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1760712623;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O16vK/VHkqg7/QCOruoqlgzueSxhXKWOlNBJuxSfE5c=;
	b=d4Te4amsd1c9e88q5m/2fV+sud/YEiJlkx2xmoaAA3pytgNHvQpRLw+45Kouy2VEIU9mkr
	WkR0KdLQoenPJ2vHObpy+kLLjIEKGoVrpmyJu0vXCzNRFD1Cv1MaiVv4pru9v3s3jcUorb
	P9rs8slO78QPEDOJqcDlRgaBKSrk7qg=
From: Ze Huang <huang.ze@linux.dev>
Date: Fri, 17 Oct 2025 22:49:52 +0800
Subject: [PATCH v6 1/2] dt-bindings: phy: spacemit: add K1 USB2 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-k1-usb2phy-v6-1-7cf9ea2477a1@linux.dev>
References: <20251017-k1-usb2phy-v6-0-7cf9ea2477a1@linux.dev>
In-Reply-To: <20251017-k1-usb2phy-v6-0-7cf9ea2477a1@linux.dev>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Ze Huang <huang.ze@linux.dev>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, Ze Huang <huangze@whut.edu.cn>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760712608; l=1362;
 i=huang.ze@linux.dev; s=20250705; h=from:subject:message-id;
 bh=QaF1KmAvkgTx8GRFlS00uZ3xWQHECjSqx1iwWdJGuFY=;
 b=i0RY7Jh3VwMSAi2s0DN34uEHzrLrLfQG7SZHg27/0ezqCPa2EgzbenWEuSX6xOXX9Wn15+Gve
 NBibTeBTig6AGOWAy+YBJ5sppuEKU38s1SK4Ercs0MICN/QRvYEiVwQ
X-Developer-Key: i=huang.ze@linux.dev; a=ed25519;
 pk=Kzc4PMu5PTo8eZZQ5xmTNL9jeXcQ9Wml0cs+vlQpBkg=
X-Migadu-Flow: FLOW_OUT

Add support for USB2 PHY found on SpacemiT K1 SoC.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Ze Huang <huang.ze@linux.dev>
---
 .../devicetree/bindings/phy/spacemit,usb2-phy.yaml | 40 ++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
new file mode 100644
index 000000000000..43eaca90d88c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/spacemit,usb2-phy.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/spacemit,usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: SpacemiT K1 SoC USB 2.0 PHY
+
+maintainers:
+  - Ze Huang <huang.ze@linux.dev>
+
+properties:
+  compatible:
+    const: spacemit,k1-usb2-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    usb-phy@c09c0000 {
+        compatible = "spacemit,k1-usb2-phy";
+        reg = <0xc09c0000 0x200>;
+        clocks = <&syscon_apmu 15>;
+        #phy-cells = <0>;
+    };

-- 
2.51.1.dirty


