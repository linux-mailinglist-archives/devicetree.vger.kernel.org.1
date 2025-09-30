Return-Path: <devicetree+bounces-222784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB87BACD59
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:29:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 859E7188CAB0
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8370D2FDC52;
	Tue, 30 Sep 2025 12:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="a3dQBX49"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D342FC895
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759235266; cv=none; b=Mqo8Lhmn6HuPfcX3TM6+R/Upii4CUTRsTVJllFA6OvJwtbTHtmNa61CljQZYp3hPZKSTtTB0ENh56uvZSgPvHNZUX58J7iqG1zkhhFnlWhw/c3Q94zeswp3CzgiK8nyuC2ZAJTOgghBMrv/Ah/wcNS5vAJBzplztb4dLq9aOSrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759235266; c=relaxed/simple;
	bh=49NWivPMHPAo5HRACL6DcvmKwJWBPu0z3rZ3GrgxkOs=;
	h=From:Date:Subject:MIME-Version:Message-Id:In-Reply-To:To:Cc:
	 Content-Type:References; b=eKP8J0oxVOrDnm5PmBfcwkqqhQ6hj2qQqnkgDs8g0qDxdf0V2j6x6XqiJroiQpRc32Hik/2pipuMBBhy0WAc2CcYoVZ2RZrGtKMxHFE0V4G7o2RkmlK68zxmsmMhtHODb8uGGNrz816nutVd3jHQMnkrTL63s5ReYWvaD91GOLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=a3dQBX49; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250930122736euoutp0170fef709d40b0fb07c94d456066b993c~qDyUS7GA10243102431euoutp01E
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:27:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250930122736euoutp0170fef709d40b0fb07c94d456066b993c~qDyUS7GA10243102431euoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759235256;
	bh=069VGgzbvpqwglyZP67I06Ccx7fSCG+j21IgRx+oINE=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=a3dQBX49y1n21wYXGFkPjg6Csu2+GG4vIHXnwQxUUqsCuD4A3mHlE9jyDRcIQLQeA
	 BvGgKruznSNDZ09IsyoQC5yhz0ZSVCR2I6yRdeweFhErz8dJ7ygO4Wj62oyxiVw1K7
	 E+SfZWh5UbscNtvH4gpBtCefInqHFxi7IGnU6tvU=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20250930122735eucas1p1c49ed11a4a48155c123ead6aec4b64a2~qDyT7BsKj2313623136eucas1p1n;
	Tue, 30 Sep 2025 12:27:35 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250930122734eusmtip2ce63b35a7348bc8b76224d7d65c22c50~qDySzoWMc2410724107eusmtip2s;
	Tue, 30 Sep 2025 12:27:34 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Tue, 30 Sep 2025 14:20:36 +0200
Subject: [PATCH v15 5/7] dt-bindings: pwm: thead: Add T-HEAD TH1520 PWM
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-rust-next-pwm-working-fan-for-sending-v15-5-5661c3090877@samsung.com>
In-Reply-To: <20250930-rust-next-pwm-working-fan-for-sending-v15-0-5661c3090877@samsung.com>
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
	<krzysztof.kozlowski@linaro.org>,  Elle Rhumsaa <elle@weathered-steel.dev>
X-Mailer: b4 0.15-dev
X-CMS-MailID: 20250930122735eucas1p1c49ed11a4a48155c123ead6aec4b64a2
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250930122735eucas1p1c49ed11a4a48155c123ead6aec4b64a2
X-EPHeader: CA
X-CMS-RootMailID: 20250930122735eucas1p1c49ed11a4a48155c123ead6aec4b64a2
References: <20250930-rust-next-pwm-working-fan-for-sending-v15-0-5661c3090877@samsung.com>
	<CGME20250930122735eucas1p1c49ed11a4a48155c123ead6aec4b64a2@eucas1p1.samsung.com>

Add the Device Tree binding documentation for the T-HEAD
TH1520 SoC PWM controller.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Drew Fustini <fustini@kernel.org>
Reviewed-by: Elle Rhumsaa <elle@weathered-steel.dev>
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


