Return-Path: <devicetree+bounces-206753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3EDB2D6D4
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:41:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 496B2188B74C
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69CC72DBF43;
	Wed, 20 Aug 2025 08:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="uvr1MAGN"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A012DA75C
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755678952; cv=none; b=NmGhN2pideikzkSVlXQ95EH1FFRr/CY592VWuDPQh33JW37s+oQtiUagh7G6oAXCMeWCey6+/UiFQq7nf15LRhBvQtI4vE7cLRiJcdoVwc8NWTAP9fnchXh/YSpOrZFR9+ubl1BHdfxNOVPdK5OD1s5jYQf5g+/rTJuqrSl9nag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755678952; c=relaxed/simple;
	bh=1xFRQbn8483H+2mkpUcyJP7/oGJuXi6g57FnKbD2j6g=;
	h=From:Date:Subject:MIME-Version:Message-Id:In-Reply-To:To:Cc:
	 Content-Type:References; b=lPzzwaVELhS+vle+PoWl7eAZoiUFaZEj/WlBf9701gxwWEZZ39N9Nf4+uQW0YNqknTxFbDkOr61CVCv9bVgf5aEkf0Y9MKeu0TMBKRgzFsiACNDP5IiacAnzIBqEEDDYIiyji1gc2LqUFwgoYyII1Io+QyRPv1a2ZjhKwS5O3fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=uvr1MAGN; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250820083547euoutp02233fdf17dca1163e5967115bb9ce67a0~dbLNL5LV31391613916euoutp020
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 08:35:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250820083547euoutp02233fdf17dca1163e5967115bb9ce67a0~dbLNL5LV31391613916euoutp020
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755678947;
	bh=y55g/fdRmmEthwV1C2vt7eK58Emzy94bMJtrIeau8Kg=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=uvr1MAGNQle7BqURm3sg4l6DXa73psRznHokMzdMmxLAo5JeGZ8T7a+96ldZ0yAkH
	 29f0vXg1x3di1YQd+nRmUcQGMkzpzsdx09mYBPticBL8k1JLfEIfySeBDyQntmuI4p
	 68yTpXE28VFueeDIuU5Itl2nJ//h0GR3d3x9dxzo=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250820083546eucas1p2cc370ae89e7a87e3f3b9266967501b44~dbLMbxwG91947119471eucas1p2B;
	Wed, 20 Aug 2025 08:35:46 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250820083545eusmtip29c6b77307ba2bbf0f34314ec3182af6a~dbLLUHDSt0982409824eusmtip2I;
	Wed, 20 Aug 2025 08:35:45 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Wed, 20 Aug 2025 10:35:40 +0200
Subject: [PATCH v14 5/7] dt-bindings: pwm: thead: Add T-HEAD TH1520 PWM
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-rust-next-pwm-working-fan-for-sending-v14-5-df2191621429@samsung.com>
In-Reply-To: <20250820-rust-next-pwm-working-fan-for-sending-v14-0-df2191621429@samsung.com>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,  Miguel Ojeda
	<ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,  Boqun Feng
	<boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,  Andreas
	Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,  Trevor
	Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>,  Michal
	Wilczynski <m.wilczynski@samsung.com>, Guo Ren <guoren@kernel.org>,  Fu Wei
	<wefu@redhat.com>, Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski
	<krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Paul Walmsley
	<paul.walmsley@sifive.com>,  Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>,  Alexandre Ghiti <alex@ghiti.fr>,  Marek Szyprowski
	<m.szyprowski@samsung.com>,  Benno Lossin <lossin@kernel.org>,  Michael
	Turquette <mturquette@baylibre.com>,  Drew Fustini <fustini@kernel.org>, 
	Daniel Almeida <daniel.almeida@collabora.com>,  Benno Lossin
	<lossin@kernel.org>, Drew Fustini <fustini@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
	rust-for-linux@vger.kernel.org, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org,  Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev
X-CMS-MailID: 20250820083546eucas1p2cc370ae89e7a87e3f3b9266967501b44
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250820083546eucas1p2cc370ae89e7a87e3f3b9266967501b44
X-EPHeader: CA
X-CMS-RootMailID: 20250820083546eucas1p2cc370ae89e7a87e3f3b9266967501b44
References: <20250820-rust-next-pwm-working-fan-for-sending-v14-0-df2191621429@samsung.com>
	<CGME20250820083546eucas1p2cc370ae89e7a87e3f3b9266967501b44@eucas1p2.samsung.com>

Add the Device Tree binding documentation for the T-HEAD
TH1520 SoC PWM controller.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Drew Fustini <fustini@kernel.org>
Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 .../devicetree/bindings/pwm/thead,th1520-pwm.yaml  | 48 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml b/Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..855aec59ac53c430adc849271235686e87b10e6c
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/thead,th1520-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: T-HEAD TH1520 PWM controller
+
+maintainers:
+  - Michal Wilczynski <m.wilczynski@samsung.com>
+
+allOf:
+  - $ref: pwm.yaml#
+
+properties:
+  compatible:
+    const: thead,th1520-pwm
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: SoC PWM clock
+
+  "#pwm-cells":
+    const: 3
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/thead,th1520-clk-ap.h>
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+      pwm@ffec01c000 {
+          compatible = "thead,th1520-pwm";
+          reg = <0xff 0xec01c000 0x0 0x4000>;
+          clocks = <&clk CLK_PWM>;
+          #pwm-cells = <3>;
+      };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index d79dc21f22d143ca8cde6a06194545fbc640e695..a64027f441e8e23c579b469b2451b514e5d2802c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21732,6 +21732,7 @@ F:	Documentation/devicetree/bindings/firmware/thead,th1520-aon.yaml
 F:	Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml
 F:	Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
 F:	Documentation/devicetree/bindings/pinctrl/thead,th1520-pinctrl.yaml
+F:	Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml
 F:	Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml
 F:	arch/riscv/boot/dts/thead/
 F:	drivers/clk/thead/clk-th1520-ap.c

-- 
2.34.1


