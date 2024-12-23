Return-Path: <devicetree+bounces-133575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E27B9FAEBC
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 14:01:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B1C11883E9A
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 13:01:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72EE01D433B;
	Mon, 23 Dec 2024 12:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="MZKqJ5kg"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3791C5F1C
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734958590; cv=none; b=Wp+Q+K7ReZz6maENQ6CytQVoBx4QAMYLYyomg4j5bg84C/i7PsPP2dBseaCuFdgIgawySysBeJTkJATjfPa+kt6puBoIezE2y/Ai8+RjFknrvj7XXa/yJspULkvSoKlkUyXpZNc9508Uq+Nr06nECvrD4KWLrkwWaAPm07g7Wrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734958590; c=relaxed/simple;
	bh=TXV6HgUs5MzBGPwZPl3Qutz+QGtHw+XdKbQT9gWoeQY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=XP7fmgzehIstGz/x9o+ZCTpvompLz8rjao7SePD19FGe8dMBdJKyWUTvFYWhmP//rI9LlW1o53xyRZEXfU2YzPgJmTw3rYF3ncQ1JFPTSB8Yfzgc9OxYE1bCvQr3HELVs/RQvJRxItnEeOSFLbknaw67vEXHr/9OeGvrdhaDO78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=MZKqJ5kg; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20241223125626euoutp016718b7ff87d44ae924d68a1a4ca968e0~Tz6RuR1u_0030300303euoutp01F
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:56:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20241223125626euoutp016718b7ff87d44ae924d68a1a4ca968e0~Tz6RuR1u_0030300303euoutp01F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1734958586;
	bh=UURo4z0akKRYt22mFKiU+DOywmtClUfvv/Y3f/4Zbtk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MZKqJ5kgRJY3jETwOgOmhNwzqE3XRfznUi2fMhwvOzbsnDPHt1+E7nhcKZKNZh2CN
	 FfqOKTbth0+N9bB0hgxV/qIJicA3YOaptGjVsLahWhCaQDcrZ+gaF/kv/AEfVphjPQ
	 LIJmsD7z6Ym1bt8PMzHLeSMkkoeU2QDu5j7i/EQg=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20241223125626eucas1p29c3a4acf2fe5bfa4db1c3c0f2946f6d3~Tz6RKnff-1249712497eucas1p2y;
	Mon, 23 Dec 2024 12:56:26 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
	eusmges1new.samsung.com (EUCPMTA) with SMTP id 37.D6.20821.9FD59676; Mon, 23
	Dec 2024 12:56:25 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20241223125625eucas1p2ffc3f2d8fd13bd71550ebed4e901b7de~Tz6QwdDnH2931129311eucas1p2X;
	Mon, 23 Dec 2024 12:56:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20241223125625eusmtrp18a1f5560652f138cfa698490ddfd6394~Tz6Qvqa_B2098220982eusmtrp1C;
	Mon, 23 Dec 2024 12:56:25 +0000 (GMT)
X-AuditID: cbfec7f2-b11c470000005155-b3-67695df99f06
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id 01.93.19654.9FD59676; Mon, 23
	Dec 2024 12:56:25 +0000 (GMT)
Received: from AMDC4942.home (unknown [106.210.136.40]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20241223125624eusmtip2b6a9a052b75e9f23c6f518ba84472da4~Tz6PcqJnb2640326403eusmtip2S;
	Mon, 23 Dec 2024 12:56:24 +0000 (GMT)
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
Subject: [RFC PATCH v2 18/19] riscv: dts: thead: Introduce reset controller
 node
Date: Mon, 23 Dec 2024 13:55:52 +0100
Message-Id: <20241223125553.3527812-19-m.wilczynski@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241223125553.3527812-1-m.wilczynski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0xTVxzOuff23kvD41rYOIFlClHn5gBxMk7iXMDIdo1jCswNXBZtxk1l
	8tBWhlvcwPAQsMwHLIvlUeeqVNKOx9paiIBWpCDQbLyVh0wRLK/ykk0ZsMLFzf++8z1+3++X
	HBoX6UkPOib+OCeNF8d6k0LCUP/M4vPsixjJFn16IGrouowh/byCQppqC4aUdRYB6m/VYaj9
	qY1Evz7+nUJPqk8RqFNdSKHU+lISWRX9JJqS9wtQW1UBiWZy6gAyzKSRSFvXR6HSp0oM/Tyl
	J5DKWAVQRtZVAfrjbgjq628gkLVNjqMMhQtaumGk0GJnOYHyJ2oppBs7L0Bm7WcorTaPCHqd
	tXWnU+yY1UqwtzNnKbZ67hLBVir6KFZe2QzYipIsku3tvEGyRY1h7IMzZoz9TZXMpmnrMfbs
	whbWVtNBsj/oSgDbmtpF7RMdEL4XzcXGfM1J/d4/JDysurKEHx2mT5R1uKYALZUNHGjIbIN/
	2bIE2UBIixg1gCW/zAqWBREzC6A57xgvzAD4uPkC/iLx8PwY4IViAIfapkn+MQbgo5Q/sWUX
	yWyFA8XKlbluTDoB0++cWongzDCAhsECctnlyoRDfU4zsYwJZgNMb1eudDgxQfDOGaOA71sL
	a2+1rPAOdl6T3Q14zxrYeHFwJYvbPan6/NX9tEJYcMuFx7tgv3oc8NgVjph1q1e/Bpty5QSP
	E+CAfno1exJWys2reDvstTy370nb578JS6v8eDoY/p1RLFimIeMMu8fX8Bs4wwuGn3CedoKZ
	GSLevRH+KM/5r9SiNmA8ZqFBU4OfA16Kl25RvHSL4v/eSwAvAe5coixOwsn847kkX5k4TpYY
	L/H9MiGuAth/dtOiedoICkemfE0Ao4EJQBr3dnMyiWIkIqdo8TffctKEg9LEWE5mAp404e3u
	tCF6LSdiJOLj3BGOO8pJX6gY7eCRgoUNtUygTwsdomc2jx+pVa/zpAP+GXH1zA+8hiVeCR0k
	DrzakuvqGBnqNVnssnNbJBkc9X2S2z2ux/l+UGby5/PGnGPvTipVe3uuSq77a+Y7en18BkQm
	VZKfe4+pGgvz6P6k4eGseDTcc2JpdDHPPLTr5t0dm3qGQoo+iD2ZG3F6t0JzWbs+sNMabgnR
	zIyeC7rXpXmwP3PJK4CN/Op+ZaS5KTNq+HZjcvkbWz+cUyoiLka3frfHtyzg+uly6Bt1om3h
	lZ3qibB1nrsPLbR/vCPL5wmz5+bBazrbZseU8SWX7XstjpKPYFlw6ORQX41t8NHbRRV1tfsr
	BuY2Ee+sjzA+J4qF3oTssNj/LVwqE/8LcV+ZtkgEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKKsWRmVeSWpSXmKPExsVy+t/xe7o/YzPTDaZOl7U4cX0Rk8XW37PY
	LdbsPcdkMf/IOVaLe5e2MFlc+fqezWLd0wvsFi/2NrJYXFsxl92i+dh6NouXs+6xWXzsucdq
	cXnXHDaLz71HGC22fW5hs1h75C67xfqv85ksFn7cymKxZMcuRou2zmWsFhdPuVrcvXeCxeLl
	5R5mi7ZZ/Bb/9+xgt/h3bSOLxex3+9kttryZyGpxfG24Rcv+KSwOch7vb7Sye7x5+ZLF43DH
	F3aPvd8WsHjsnHWX3aNn5xlGj02rOtk87lzbw+Yx72Sgx/3u40wem5fUe7SsPcbk0f/XwOP9
	vqtsHn1bVjF6XGq+zh4gFKVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9n
	k5Kak1mWWqRvl6CXsWTpf+aC5xwVG64KNzCuZe9i5OSQEDCReDTxDWMXIxeHkMBSRolXT84y
	QSRkJK51v2SBsIUl/lzrYoMoesUoMamzF6yITcBI4sHy+awgtojAYhaJvfsqQYqYBd4ySlyf
	uRGsW1ggQGLqpimMIDaLgKpE65X5zCA2r4CDxNHuHawQG+Ql9h88CxbnBIqv6boBVi8kYC/x
	79QHNoh6QYmTM5+AzWQGqm/eOpt5AqPALCSpWUhSCxiZVjGKpJYW56bnFhvpFSfmFpfmpesl
	5+duYgSml23Hfm7Zwbjy1Ue9Q4xMHIyHGCU4mJVEeA8JZaYL8aYkVlalFuXHF5XmpBYfYjQF
	unsis5Rocj4wweWVxBuaGZgamphZGphamhkrifOyXTmfJiSQnliSmp2aWpBaBNPHxMEp1cC0
	uEpCYUJuKN+6i9ON+H9vTFrw6DzTJC5BIY72zbOOc7CtlFnz/GND1cya2uWaXxZet7qnECW8
	iWnf6VkKhdv11YXvBZSsnLXcs+ivSvdSI54zwndY/F7Y7dW98rTqyEbxaQlv86b/Xl1S4t+u
	ekXhA3vzt7/7fONe6PFkLCk9dH5G7wOXykXW7ySKQ4OPTBDrXMArZqH6r82biZ/7vGav2pF3
	kdtVM2+w/r4R5JZaPt2mTWGBz9T0dy+/n25g/d26+cbO8gebNdSj7uYwhNxP+xOeNaXyrlPh
	dpW2dd63Z1S7vUmNn3+2pMI50vTv25rrza9bmLWMedtKNi7evkVrzgzNqSkrmP8rKRs1PEhU
	YinOSDTUYi4qTgQAEU9Hc7gDAAA=
X-CMS-MailID: 20241223125625eucas1p2ffc3f2d8fd13bd71550ebed4e901b7de
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20241223125625eucas1p2ffc3f2d8fd13bd71550ebed4e901b7de
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20241223125625eucas1p2ffc3f2d8fd13bd71550ebed4e901b7de
References: <20241223125553.3527812-1-m.wilczynski@samsung.com>
	<CGME20241223125625eucas1p2ffc3f2d8fd13bd71550ebed4e901b7de@eucas1p2.samsung.com>

T-HEAD TH1520 SoC requires to put the GPU out of the reset state as part
of the power-up sequence.

Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index d4090074fd27..c6fe2ea3197d 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/clock/thead,th1520-clk-ap.h>
 #include <dt-bindings/power/thead,th1520-power.h>
+#include <dt-bindings/reset/thead,th1520-reset.h>
 
 / {
 	compatible = "thead,th1520";
@@ -505,6 +506,12 @@ clk: clock-controller@ffef010000 {
 			#clock-cells = <1>;
 		};
 
+		rst: reset-controller@ffef528000 {
+			compatible = "thead,th1520-reset";
+			reg = <0xff 0xef528000 0x0 0x4f>;
+			#reset-cells = <1>;
+		};
+
 		dmac0: dma-controller@ffefc00000 {
 			compatible = "snps,axi-dma-1.01a";
 			reg = <0xff 0xefc00000 0x0 0x1000>;
-- 
2.34.1


