Return-Path: <devicetree+bounces-103705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D03E497BD54
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 15:49:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5004C1F24033
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2024 13:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA48718C00F;
	Wed, 18 Sep 2024 13:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="LEyoAolC"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BE118A940
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 13:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726667372; cv=none; b=gVsGl4zYfyL90J+etDU2bsrO1dk53NSCbTuIIAgm6Pb53poCT1dS7Luxg+Fd+6jywpMGcJi/xjxnLIaGYvSqVJjhKgBZ+85kPGE22bV1g4zjtF28T4Enfo8RrG6jecvqc8V6sfE5GA5Igkh9giNyiOdEqv7jThvqkr+96X3r660=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726667372; c=relaxed/simple;
	bh=AJY0Xsz/Y6ToY5IC6gQa1F8MAqD9Omkvy0XRzv/GYGo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=rn/rEwny/9PWeoRcb+s4mes0eZ8Um9Wziuscyf7VouAIemh5DZ9SH/jrFAGx1xS1CFTSnF/9ivyDETGNPHMT8lnZMC4LBGg6o1FXYF+Nd6FDoEOkPTimTcVCi4MgAZL4NeiGg39fH3EhWA5SNx+/ownHWZ5tYpHXlYLbV33k3lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=LEyoAolC; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20240918134927euoutp018f5f49ed4aadfd5567758285534e2bcd~2WtKWATY50223702237euoutp01x
	for <devicetree@vger.kernel.org>; Wed, 18 Sep 2024 13:49:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20240918134927euoutp018f5f49ed4aadfd5567758285534e2bcd~2WtKWATY50223702237euoutp01x
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1726667367;
	bh=02T9kzzWdCSYVfcbjqUHN+jds2Jp15gLdjoz6u6rOp8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LEyoAolCAnlmtcLcQkRE0pS0mKQhN4Ni5xV3pfE5HyEAgEvJBq+gPOroLIDsNMMZf
	 bIbTnbIqVmBQQgWJNWkhRUWQZTMxf02RcpxxsyCeokCZXc0Q4qugAVZjgGIMdhkOol
	 ianGN1Dgm6nZ39xsjxgsaEyBFC4QpkL3yONSNR6g=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20240918134927eucas1p2c368227348de008b0c29c37d77cf8b38~2WtJ3n1x00326803268eucas1p2n;
	Wed, 18 Sep 2024 13:49:27 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
	eusmges2new.samsung.com (EUCPMTA) with SMTP id E4.1B.09875.76ADAE66; Wed, 18
	Sep 2024 14:49:27 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20240918134926eucas1p1df23a583b356505939d4c5501bd6c80f~2WtJeJaJ50702707027eucas1p1_;
	Wed, 18 Sep 2024 13:49:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20240918134926eusmtrp2c96fb1ba3229cf8f0d11a21bdb1370e4~2WtJdPJ550382403824eusmtrp2m;
	Wed, 18 Sep 2024 13:49:26 +0000 (GMT)
X-AuditID: cbfec7f4-131ff70000002693-18-66eada6731d5
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id 5D.69.19096.66ADAE66; Wed, 18
	Sep 2024 14:49:26 +0100 (BST)
Received: from AMDC4942.home (unknown [106.210.136.40]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20240918134925eusmtip19c28f3b9c43949c2aadbc88904cce5dd~2WtIuzDyL1778117781eusmtip1F;
	Wed, 18 Sep 2024 13:49:25 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
To: drew@pdp7.com, guoren@kernel.org, wefu@redhat.com,
	jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, m.szyprowski@samsung.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Michal Wilczynski <m.wilczynski@samsung.com>
Subject: [PATCH RFC v1 2/3] dt-bindings: mailbox: Add thead,th1520-mailbox
 bindings
Date: Wed, 18 Sep 2024 15:49:00 +0200
Message-Id: <20240918134901.193033-3-m.wilczynski@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240918134901.193033-1-m.wilczynski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPKsWRmVeSWpSXmKPExsWy7djPc7rpt16lGfzYzGKx9fcsdos1e88x
	Wcw/co7V4t6lLUwWL/Y2slhcWzGX3eLlrHtsFpd3zWGz2Pa5hc1i7ZG77Bbrv85nsnh5uYfZ
	om0Wv8X/PTvYLVr2T2Fx4Pd48/Ili8fhji/sHjtn3WX32LSqk81j85J6j5a1x5g83u+7yubR
	t2UVo8el5uvsHp83yQVwRXHZpKTmZJalFunbJXBlHP73iLXgonTFk9eCDYzvRbsYOTkkBEwk
	TlztZe9i5OIQEljBKHH7/B82COcLo8Txdc9ZIJzPjBLX7h8AynCAtew/pAYRX84osW7GD2YI
	5w2jxNV5R9lA5rIJGEk8WD6fFSQhIvCOUWLStdtMIA6zQC+jxNS9M5lAqoQFQiVWbt3ICGKz
	CKhKrD92kglkBa+AncTcZVIQB8pL7D94lhnE5hSwl5jxqZEFxOYVEJQ4OfMJmM0MVNO8dTbY
	FRICszkljr65wAzR7CIxv3M/G4QtLPHq+BZ2CFtG4v/O+UwQdr7Eg62foOprJHb2HIeyrSXu
	nPsF9jKzgKbE+l36EGFHiV+v/jFDQoJP4sZbQYgT+CQmbZsOFeaV6GgTgqhWk5ja0wu39NyK
	bVBLPSTO7t/AOoFRcRaSZ2YheWYWwt4FjMyrGMVTS4tz01OLjfJSy/WKE3OLS/PS9ZLzczcx
	AtPc6X/Hv+xgXP7qo94hRiYOxkOMEhzMSiK84h9epgnxpiRWVqUW5ccXleakFh9ilOZgURLn
	VU2RTxUSSE8sSc1OTS1ILYLJMnFwSjUwFeSlP2BWku5+18Lyt3ZPwiaW08KcL6/v9hd48uVh
	0YHTzWlLtU7nf1mhduig1op7v8NPGWhM3PWc2a8971nwrR13E27e9vghZjLrscZsRaYjfLM0
	HT04PM93N279E87yYqthHbdGwma/d/f33zwzXXiuxA39UzIp+V+aOewvTf6d/bXo5eyF8SaL
	uaJMp15c2tGlfHvu1bWpzz5WPz0l5xLkwJg/ZdYfSyarr+y7jVdonHYzqfq8u708KXZNiit7
	oUDztrJ/x18VrnTonao77UeRun/1c4tS1h+S107nn0j6G6dwwlVCPLC86D1DuP/0ysYDPQm2
	xhLljax2n7dwyMltdP+1wTezb2m1h32NEktxRqKhFnNRcSIAPZAB6eIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHIsWRmVeSWpSXmKPExsVy+t/xu7ppt16lGby8oWax9fcsdos1e88x
	Wcw/co7V4t6lLUwWL/Y2slhcWzGX3eLlrHtsFpd3zWGz2Pa5hc1i7ZG77Bbrv85nsnh5uYfZ
	om0Wv8X/PTvYLVr2T2Fx4Pd48/Ili8fhji/sHjtn3WX32LSqk81j85J6j5a1x5g83u+7yubR
	t2UVo8el5uvsHp83yQVwRenZFOWXlqQqZOQXl9gqRRtaGOkZWlroGZlY6hkam8daGZkq6dvZ
	pKTmZJalFunbJehlHP73iLXgonTFk9eCDYzvRbsYOTgkBEwk9h9S62Lk4hASWMoo8e7TFaYu
	Rk6guIzEte6XLBC2sMSfa11sEEWvGCVuN5xlBkmwCRhJPFg+nxUkISLwh1Hi+rM3jCAOs8BE
	Rombc+8zglQJCwRLTF39hBXEZhFQlVh/7CQTyGpeATuJucukIDbIS+w/CDGUU8BeYsanRrDN
	QkAlv55sALN5BQQlTs58AmYzA9U3b53NPIFRYBaS1CwkqQWMTKsYRVJLi3PTc4uN9IoTc4tL
	89L1kvNzNzECI3LbsZ9bdjCufPVR7xAjEwfjIUYJDmYlEV7xDy/ThHhTEiurUovy44tKc1KL
	DzGaAp09kVlKNDkfmBLySuINzQxMDU3MLA1MLc2MlcR52a6cTxMSSE8sSc1OTS1ILYLpY+Lg
	lGpgkn3o8GKWTv6xxH+LeVRvrdPYLdtbzdgZ+Kx2sbHbvdgte1Ve3i5flvX+7mbja2s5jPI+
	N6YIl8+oX7M2+LcUxxMuGWvXVtf6Oa0VD1ZLLXzYu+FLQbT/UwVfH9uvDOIXysr1TeP3qmYa
	njW4nB4zbUnH29hWDsZY9aSGS7fvTZTfN20Vy6Z9ebFHJBcqrDr7+nDP0V8rXgnckZTYHZ+e
	lsez1jVgj5NqmWZubi3Tr5K2RzKdh75sjo9/9ONnVa2CtL+Btiqr3XMniwi/R3M5LHlmM1cY
	5fvqvOw55d++/u6TK/Y3vuR6Kc1sfPDQaPPfiuN+Xw7HPbQzK6hV2n0y2rl5osANY+H8AwKl
	00yVWIozEg21mIuKEwEbvj/oUQMAAA==
X-CMS-MailID: 20240918134926eucas1p1df23a583b356505939d4c5501bd6c80f
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20240918134926eucas1p1df23a583b356505939d4c5501bd6c80f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20240918134926eucas1p1df23a583b356505939d4c5501bd6c80f
References: <20240918134901.193033-1-m.wilczynski@samsung.com>
	<CGME20240918134926eucas1p1df23a583b356505939d4c5501bd6c80f@eucas1p1.samsung.com>

Add bindings for the mailbox controller. This work is based on the vendor
kernel. [1]

Link: https://github.com/revyos/thead-kernel.git [1]

Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 .../bindings/mailbox/thead,th1520-mbox.yaml   | 83 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 84 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml

diff --git a/Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml b/Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml
new file mode 100644
index 000000000000..f446fae76398
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mailbox/thead,th1520-mbox.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: T-head TH1520 Mailbox Controller
+
+description: |
+  The T-head mailbox controller enables two cores within the SoC to
+  communicate and coordinate by passing messages (e.g., data, status,
+  and control) through the mailbox channels. It also provides the ability
+  for one core to signal the other processor using interrupts.
+
+maintainers:
+  - Michal Wilczynski <m.wilczynski@samsung.com>
+
+properties:
+  compatible:
+    const: thead,th1520-mbox
+
+  reg:
+    description: Contains base addresses and sizes for the mailbox and remote ICUs.
+    items:
+      - description: Mailbox local base address
+      - description: Remote ICU 0 base address
+      - description: Remote ICU 1 base address
+      - description: Remote ICU 2 base address
+
+  reg-names:
+    items:
+      - const: local_base
+      - const: remote_icu0
+      - const: remote_icu1
+      - const: remote_icu2
+
+  interrupts:
+    maxItems: 1
+    description: Interrupt for the mailbox controller.
+
+  clocks:
+    maxItems: 1
+    description: Clock phandle for the mailbox controller.
+
+  clock-names:
+    items:
+      - const: ipg
+
+  icu_cpu_id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: CPU ID for the ICU.
+
+  '#mbox-cells':
+    const: 2
+    description: Number of cells required to encode the mailbox specifier.
+
+additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - icu_cpu_id
+  - '#mbox-cells'
+
+dependencies:
+  clock-names: [ clocks ]
+
+examples:
+  - |
+    mbox_910t: mbox@ffffc38000 {
+      compatible = "thead,th1520-mbox";
+      reg = <0xff 0xffc38000 0x0 0x4000>,
+            <0xff 0xffc44000 0x0 0x1000>,
+            <0xff 0xffc4c000 0x0 0x1000>,
+            <0xff 0xffc54000 0x0 0x1000>;
+      reg-names = "local_base", "remote_icu0", "remote_icu1", "remote_icu2";
+      interrupts = <28 IRQ_TYPE_LEVEL_HIGH>;
+      icu_cpu_id = <0>;
+      #mbox-cells = <2>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 7331b30deef8..49198b2ed2e7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19719,6 +19719,7 @@ L:	linux-riscv@lists.infradead.org
 S:	Maintained
 T:	git https://github.com/pdp7/linux.git
 F:	Documentation/devicetree/bindings/clock/thead,th1520-clk-ap.yaml
+F:	Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml
 F:	arch/riscv/boot/dts/thead/
 F:	drivers/clk/thead/clk-th1520-ap.c
 F:	drivers/mailbox/mailbox-th1520.c
-- 
2.34.1


