Return-Path: <devicetree+bounces-133567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 304589FAE96
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 13:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72BDF7A1B83
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4921B4126;
	Mon, 23 Dec 2024 12:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="J4AEG8oG"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C2E1B412E
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734958582; cv=none; b=GBPiM1co8LqO61tfiUnLLvE+cM6wMTd9Kzj/99fpmkQyYa5alCv6Jx3oNayp9dH9QYekWI5UtbFT9edxaAZo7AIvYfZ3WXVBlyQqN95pKlgx8zw6H3h4qXiaBExGz7sDHlDGyJGDLcZl9M4xwf6OKIAono+CVrgGN/EsUPwkR6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734958582; c=relaxed/simple;
	bh=Ryktfw3dqHJaCTUPWrEPUXpzjl8zQR77tHaKxgdievQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=NdhA3tUHhflKPJK+Ej74erG35IAbnj+WEs6ydhlPXzFfzIK3T3tTgzFrfCKgRYnktdrFm0cwu77W2XqiJaiiH/dGgpBO3Iry/wufnjhVAd6+FeI67GJSh+YD6+Xo7hCsQoNQZivXQOLYRY8J9I2mLAfol217rl0j+T8RNqRt2zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=J4AEG8oG; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20241223125612euoutp01ca826db8222905079e20d23e4577ae27~Tz6E_0jEv0113001130euoutp01S
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:56:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20241223125612euoutp01ca826db8222905079e20d23e4577ae27~Tz6E_0jEv0113001130euoutp01S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1734958572;
	bh=7TDzbuQz97Ht0OdyN64fg08fGy9pZWV+3Fgw1wlwb1g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=J4AEG8oG2Zm8E5iVe/ugUwfJHpwzdJ2F/YgmEAVRphpXZ8c1fJF3wtx1+RAmgVwQv
	 9Ih8CF+/0/y2b9ieo5Y/2/TgE5iwXh+x0UwCCvJNPmaLNSea5lmg3ll1nL7WonsjYg
	 iLIxGzpnwOTErEEgTioZxmb+D6A8k0S0Z+LF0Vng=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTP id
	20241223125612eucas1p1589df2abaa760a067a5a4576521b8b97~Tz6EbLVMn2402724027eucas1p1f;
	Mon, 23 Dec 2024 12:56:12 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
	eusmges1new.samsung.com (EUCPMTA) with SMTP id 9E.B6.20821.CED59676; Mon, 23
	Dec 2024 12:56:12 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20241223125611eucas1p1acf9a7f030c4c8687f946c34f8043bcd~Tz6Dr2V1c2173221732eucas1p1i;
	Mon, 23 Dec 2024 12:56:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20241223125611eusmtrp1286a66d470035e4b45147ba9a17fe503~Tz6Dp-G552051220512eusmtrp1X;
	Mon, 23 Dec 2024 12:56:11 +0000 (GMT)
X-AuditID: cbfec7f2-b11c470000005155-7e-67695dec664e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id 69.F3.19920.BED59676; Mon, 23
	Dec 2024 12:56:11 +0000 (GMT)
Received: from AMDC4942.home (unknown [106.210.136.40]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20241223125610eusmtip2281e1d2b6afaaf58cf5d3611edb15604~Tz6CVq5Fm2296222962eusmtip2N;
	Mon, 23 Dec 2024 12:56:10 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, drew@pdp7.com, guoren@kernel.org,
	wefu@redhat.com, jassisinghbrar@gmail.com, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, frank.binns@imgtec.com,
	matt.coster@imgtec.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	ulf.hansson@linaro.org, jszhang@kernel.org, p.zabel@pengutronix.de,
	m.szyprowski@samsung.com
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-pm@vger.kernel.org, Michal Wilczynski
	<m.wilczynski@samsung.com>
Subject: [RFC PATCH v2 08/19] dt-bindings: reset: Add T-HEAD TH1520 SoC
 Reset Controller
Date: Mon, 23 Dec 2024 13:55:42 +0100
Message-Id: <20241223125553.3527812-9-m.wilczynski@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241223125553.3527812-1-m.wilczynski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0xTVxzHPffe3ntpVnatTM+6DSIKeyngYrKTAA72SK7JSFhCQoLBrchd
	IeNlC0yWbcIoBbviABG0gtVJRgPUUmgbYLxkCDilykNA0zJC2HhYVqDia0NGuW7zv8/vcb6/
	7zc5NC42kxI6OS2Tk6dJU/xJIWHte2zb64xPloWcafZGA+M/Ysjyl5ZCDR02DOl6bQI0OWzG
	0Oiqi0SXf79FobmOPAKN6asplN9nJNG8dpJEy5pJARppqyKRu7gXIKtbSSJDr4NCxlUdhi4u
	WwhU09IGkOrETwI09OtHyDE5QKD5EQ2OVNoX0Xp7C4WejpkIdO7PLgqZnaUC1G+IRcquciLC
	l3VNFFCsc36eYH8puk+xHQ8uEGyr1kGxmtYbgG2qO0Gy9rF2kj1/7RP2t+/7Mba55jirNPRh
	7A9rIayr8zbJnjTXAXY4f5yKFscJwxK5lORsTh584DNh0so9vSDjgeSY1rlI5ILR7WrgRUNm
	P6zoOYergZAWM3oATW4X4Iv7AE7PPiH5wg1g0+1GSg3ozScDF/fw/VoAnU4TwRdOAE/ZKgiP
	Lsm8A6dqdQLPwIcpIGDB1bxNXZyZBdA6U0V6trYxcXBkukDgYYIJgN1V4xtOKFrEvAfLBLw/
	P9h1ZRD3sBcTARvUE8DDImYrvHZ2ZvMWvrGTb+EzQMYihMa8JZx3+iEcqpHwOtvgQr+Z4vlV
	eP2UhuA5HU5ZVnCev4atmv5nHArtNk96ekP/TWhsC+bbkTBfdxfj1b3hxOJW3oE3LLNWPjsq
	gkUqMb8dCE9riv87atNbMZ5ZWFIySJSAndrnsmify6L9/+4FgNeBHVyWIlXGKfalcV8GKaSp
	iqw0WdCR9NQmsPGxrz/tX2kB1QvLQT0Ao0EPgDTu7yPqESfLxKJEac5XnDz9U3lWCqfoAa/Q
	hP8OUUCiHydmZNJM7guOy+Dk/04x2kuSi6XYXl+5FB178Bv5Unfw8LrBdDLg8yDaXSl7dGwu
	LmE2wmF6AWtos2VHhjaqhQELylu95YdVyiqFCLcHBFoTa1e7IqNidfunUmsL2ZFCapdd9a0f
	NphwJtrFfND46LHfFeNyfd0fZYdqZqKEPjHx34VnRv0dtn23+qUK6mhqbnNJ7GDta1vCffee
	ntaX7izHAmssa9kvF02Uzu8uemNOeu/tyIR3DQ+PmkMEa0afS+nKdcfHEqzzifumX8bNA6Eh
	ipz62aSlJoaarn7YXpB+vNDnaufZO+cjc+xbWkuU3Ydv7Nk1qg9sqwzEVOExQkZSnLtYb3D5
	ht2di495/+c7Q0dE/oQiSbrvLVyukP4DiHW3K0cEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrMKsWRmVeSWpSXmKPExsVy+t/xe7qvYzPTDd7/FrE4cX0Rk8XW37PY
	LdbsPcdkMf/IOVaLe5e2MFlc+fqezWLd0wvsFi/2NrJYXFsxl92i+dh6NouXs+6xWXzsucdq
	cXnXHDaLz71HGC22fW5hs1h75C67xfqv85ksFn7cymKxZMcuRou2zmWsFhdPuVrcvXeCxeLl
	5R5mi7ZZ/Bb/9+xgt/h3bSOLxex3+9kttryZyGpxfG24Rcv+KSwOch7vb7Sye7x5+ZLF43DH
	F3aPvd8WsHjsnHWX3aNn5xlGj02rOtk87lzbw+Yx72Sgx/3u40wem5fUe7SsPcbk0f/XwOP9
	vqtsHn1bVjF6XGq+zh4gFKVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9n
	k5Kak1mWWqRvl6CX8en1CtaCb1IVs968ZWlgvCLWxcjBISFgInFioU4XIxeHkMBSRom3O1ew
	dzFyAsVlJK51v2SBsIUl/lzrYoMoesUosbD3AjNIgk3ASOLB8vmsILaIwGIWib37KkGKmAXe
	Mkpcn7kRrFtYIELixaG5YDaLgKrEgTnXgZrZOXgF7CUmsULMl5fYf/As2EhOAQeJNV03GEFs
	IaCKf6c+sIHYvAKCEidnPgGbwgxU37x1NvMERoFZSFKzkKQWMDKtYhRJLS3OTc8tNtQrTswt
	Ls1L10vOz93ECEwt24793LyDcd6rj3qHGJk4GA8xSnAwK4nwHhLKTBfiTUmsrEotyo8vKs1J
	LT7EaAp09URmKdHkfGByyyuJNzQzMDU0MbM0MLU0M1YS53W7fD5NSCA9sSQ1OzW1ILUIpo+J
	g1OqgamKbZrK4V32QvrTJ6vNCJArr0+8JuT1jbfBc3370c/ruLreZjlf/99SI/Z+4xfn+esC
	FyesDJNbuvwut5ycjeHOynAGpzesGyQlE/gP3brmMblZ79VR87iNe5mmfzde7s6woWCqYcJU
	+UTNreffnfdJ65t84pdyqw3X6ZyieY93pmr/YFmSeb09I3LLdD7hyc0ubyc/mztnXvOE90ZT
	93W/DD4r+P/9oWid5ND9ezarzGS5drxC7+H+0MwzuvoNk7ucrx4oMVg0x3zv7RAPif6d/TpL
	Z08q0L/UGiaw6P7RMylc0bWeXmn+64+rT5y5+f+S7t4VmQfTOGQVJxw9Il3QOZVZ6u+xP8cL
	RBqrOv8osRRnJBpqMRcVJwIArJRzoLYDAAA=
X-CMS-MailID: 20241223125611eucas1p1acf9a7f030c4c8687f946c34f8043bcd
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20241223125611eucas1p1acf9a7f030c4c8687f946c34f8043bcd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20241223125611eucas1p1acf9a7f030c4c8687f946c34f8043bcd
References: <20241223125553.3527812-1-m.wilczynski@samsung.com>
	<CGME20241223125611eucas1p1acf9a7f030c4c8687f946c34f8043bcd@eucas1p1.samsung.com>

Add a YAML schema for the T-HEAD TH1520 SoC reset controller. This
controller manages resets for subsystems such as the GPU within the
TH1520 SoC.

Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 .../bindings/reset/thead,th1520-reset.yaml    | 45 +++++++++++++++++++
 MAINTAINERS                                   |  2 +
 .../dt-bindings/reset/thead,th1520-reset.h    | 13 ++++++
 3 files changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml
 create mode 100644 include/dt-bindings/reset/thead,th1520-reset.h

diff --git a/Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml b/Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml
new file mode 100644
index 000000000000..46d0e6b8c712
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/thead,th1520-reset.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: T-HEAD TH1520 SoC Reset Controller
+
+description: |
+  The T-HEAD TH1520 reset controller is a hardware block that asserts/deasserts
+  resets for SoC subsystems.
+
+maintainers:
+  - Michal Wilczynski <m.wilczynski@samsung.com>
+
+properties:
+  compatible:
+    enum:
+      - thead,th1520-reset
+
+  reg:
+    maxItems: 1
+
+  "#reset-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - "#reset-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+      rst: reset-controller@ffef528000 {
+        compatible = "thead,th1520-reset";
+        reg = <0xff 0xef528000 0x0 0x1000>;
+        #reset-cells = <1>;
+      };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 173eeaf3bbe8..db8c55058c29 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20194,6 +20194,7 @@ F:	Documentation/devicetree/bindings/mailbox/thead,th1520-mbox.yaml
 F:	Documentation/devicetree/bindings/net/thead,th1520-gmac.yaml
 F:	Documentation/devicetree/bindings/pinctrl/thead,th1520-pinctrl.yaml
 F:	Documentation/devicetree/bindings/power/thead,th1520-power.yaml
+F:	Documentation/devicetree/bindings/reset/thead,th1520-reset.yaml
 F:	arch/riscv/boot/dts/thead/
 F:	drivers/clk/thead/clk-th1520-ap.c
 F:	drivers/firmware/thead,th1520-aon.c
@@ -20202,6 +20203,7 @@ F:	drivers/net/ethernet/stmicro/stmmac/dwmac-thead.c
 F:	drivers/pinctrl/pinctrl-th1520.c
 F:	drivers/pmdomain/thead/
 F:	include/dt-bindings/clock/thead,th1520-clk-ap.h
+F:	include/dt-bindings/reset/thead,th1520-reset.h
 F:	include/linux/firmware/thead/thead,th1520-aon.h
 
 RNBD BLOCK DRIVERS
diff --git a/include/dt-bindings/reset/thead,th1520-reset.h b/include/dt-bindings/reset/thead,th1520-reset.h
new file mode 100644
index 000000000000..a4958b2ed710
--- /dev/null
+++ b/include/dt-bindings/reset/thead,th1520-reset.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2024 Samsung Electronics Co., Ltd.
+ * Author: Michal Wilczynski <m.wilczynski@samsung.com>
+ */
+
+#ifndef _DT_BINDINGS_TH1520_RESET_H
+#define _DT_BINDINGS_TH1520_RESET_H
+
+#define TH1520_RESET_ID_GPU	0
+#define TH1520_RESET_NUM_IDS	1
+
+#endif /* _DT_BINDINGS_TH1520_RESET_H */
-- 
2.34.1


