Return-Path: <devicetree+bounces-193604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD73AFB038
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1ECF23A6258
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD260295531;
	Mon,  7 Jul 2025 09:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="G8jUAhQ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBAD293C78
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751881778; cv=none; b=sEc+Vl3uliN/dqbivAy+BnjA5sN8x3+Vy7ufP+Yf9dgi7C4q7UoYrtziRJiMrWI1eVb9CKzABRyy+xs6rzZ1ju0BjzuFHFR8FJGha6YnLCFFcollFuuSfp5xf9faoQn94JFQld5IAEBItJwPhPWHYfIxw7cBTxCUGc1UZcjS/E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751881778; c=relaxed/simple;
	bh=vdcWZxEt5GgmZ/qNCfGYjG62TVEeA9ZeTeIBWLZxMd8=;
	h=From:Date:Subject:MIME-Version:Message-Id:In-Reply-To:To:Cc:
	 Content-Type:References; b=XbASCLjCmjCU+nJHcMG1albYxKeu6v2CoEk/e60dP4N+7JXl5kdw1IZnie3YZdLf9ZkJ1o5ctSJuZfqI2xQSYmLXKfRJ63MS1xiCvw1Yg3xQLmAidyfWho6jsWLiUY8d87jV/jatXAr8vD1jkCu+IEpsui57aGoJlPN+0tiqgEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=G8jUAhQ5; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250707094933euoutp0196f28c91a1aca0fc9c523c4858a916a6~P7zEDs2tL2468624686euoutp01S
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:49:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250707094933euoutp0196f28c91a1aca0fc9c523c4858a916a6~P7zEDs2tL2468624686euoutp01S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1751881773;
	bh=tGc9y4qS8y5wRZhv2AKAuqTuYZtBk95xYshUQ8iiGHU=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=G8jUAhQ56JD1vj/rMqPHoLJUHpPD8cF87j3L+JEevJKFEUq8WeZBxUEygf1L3bRZJ
	 Bc2osMTe4MhA4mIfYmmektHM5rwLPUpx6loIp30Nkl0ezo3cPOOuDom49hatTr+tnO
	 sd6tuHLxqNYkHTOFrdCzZVr20unHPjgNF/ToEX7w=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20250707094933eucas1p13228bedac1f0787d158956932ed81fd9~P7zDhGKSr1472414724eucas1p1V;
	Mon,  7 Jul 2025 09:49:33 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250707094932eusmtip19f31b81407394cdccee76b5778c094c1~P7zCeK5LT0369203692eusmtip1a;
	Mon,  7 Jul 2025 09:49:32 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Mon, 07 Jul 2025 11:48:33 +0200
Subject: [PATCH v10 5/7] dt-bindings: pwm: thead: Add T-HEAD TH1520 PWM
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <20250707-rust-next-pwm-working-fan-for-sending-v10-5-d0c5cf342004@samsung.com>
In-Reply-To: <20250707-rust-next-pwm-working-fan-for-sending-v10-0-d0c5cf342004@samsung.com>
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
	Benno Lossin <lossin@kernel.org>,  Drew Fustini <fustini@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
	rust-for-linux@vger.kernel.org, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org,  Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.15-dev
X-CMS-MailID: 20250707094933eucas1p13228bedac1f0787d158956932ed81fd9
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250707094933eucas1p13228bedac1f0787d158956932ed81fd9
X-EPHeader: CA
X-CMS-RootMailID: 20250707094933eucas1p13228bedac1f0787d158956932ed81fd9
References: <20250707-rust-next-pwm-working-fan-for-sending-v10-0-d0c5cf342004@samsung.com>
	<CGME20250707094933eucas1p13228bedac1f0787d158956932ed81fd9@eucas1p1.samsung.com>

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
index 2449178a6d7b83b5202f8209c0b38e8302bc6b15..b58853a503875f16a338274eba080f31c3442f9f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -21522,6 +21522,7 @@ F:	Documentation/devicetree/bindings/firmware/thead,th1520-aon.yaml
 F:	Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml
 F:	Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
 F:	Documentation/devicetree/bindings/pinctrl/thead,th1520-pinctrl.yaml
+F:	Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml
 F:	Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml
 F:	arch/riscv/boot/dts/thead/
 F:	drivers/clk/thead/clk-th1520-ap.c

-- 
2.34.1


