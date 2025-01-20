Return-Path: <devicetree+bounces-139847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D243A1719D
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 18:25:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0C4B3AAFEB
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 17:24:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307AE1F2C3E;
	Mon, 20 Jan 2025 17:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="YZfmDW3w"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B785D1F2367
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 17:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737393706; cv=none; b=G1q4n+3cw/wPYC/xRbbh3dm+kSjg0JbuO+0LZPelim40TCafeGgbZgXsDIATE2tA1KXvaTk6co2AYQVOC1MsqtWo1hbiOg3HLgvvxXTP2Bv0j74aGQ09RxGH6F10Xsg/RklX14obx0RqNbcmy8p3t3G90QBCnyjAyZCe3zORP/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737393706; c=relaxed/simple;
	bh=DFeVeqx8TCdZjrmoC1J3rYbpe7LgVWAe2pPcMFtHXT4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=dqxQZE9NifOhGyFy9hAGKyy2upLCN4oH9C8W2WhAycAONdmjggrRQkHS5ROqgMuODM65rNH7Fhs+KYC9RENuGIxBZrnjt5piMUVjRTwVuFAKPicLBxcIZAKaZ90oU/8/LDp0MNdRlOSH3Qz4cgeUA/utoz+aIw91/QbLzD8wV/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=YZfmDW3w; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250120172142euoutp01c598e1f61f204093d50b57309d381f45~cdl33MaT52911329113euoutp01P
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 17:21:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250120172142euoutp01c598e1f61f204093d50b57309d381f45~cdl33MaT52911329113euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1737393702;
	bh=ELVFwlXruYz1kPow10AHG3LPysQG7TGaSfE/6TgvkWQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YZfmDW3wmt1xPs672QdtKCe0derTuniatlgpzGpRRBy8SKlvgLRif5wMaX2ONDp1i
	 E14L9yHdyjLU3v4ANjamexmT5H3D5VWy1ecBkZvoDEGRDxbOasJ8AQs/xU+bXOE61M
	 bR17mszO5/6KutvLz+axcLNJgS7/45dgN4mRopTc=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTP id
	20250120172141eucas1p1dcc522af5096a551d5259a2cc659af58~cdl3aNOTK1582415824eucas1p1V;
	Mon, 20 Jan 2025 17:21:41 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges1new.samsung.com (EUCPMTA) with SMTP id A3.8B.20821.5268E876; Mon, 20
	Jan 2025 17:21:41 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250120172140eucas1p26bd83fb8195d0ed01b7b214ed374948f~cdl2teutu3181531815eucas1p2m;
	Mon, 20 Jan 2025 17:21:40 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20250120172140eusmtrp25c5715c64659fcdd6c78d686e4be8305~cdl2qlATV0490804908eusmtrp2L;
	Mon, 20 Jan 2025 17:21:40 +0000 (GMT)
X-AuditID: cbfec7f2-b09c370000005155-29-678e8625bf47
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id 16.D8.19920.4268E876; Mon, 20
	Jan 2025 17:21:40 +0000 (GMT)
Received: from AMDC4942.home (unknown [106.210.136.40]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250120172139eusmtip1397837eb8299a44b6f38940a7af6b976~cdl1WsfX21199611996eusmtip1j;
	Mon, 20 Jan 2025 17:21:39 +0000 (GMT)
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
Subject: [RFC v3 16/18] riscv: dts: thead: Introduce power domain nodes with
 aon firmware
Date: Mon, 20 Jan 2025 18:21:09 +0100
Message-Id: <20250120172111.3492708-17-m.wilczynski@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250120172111.3492708-1-m.wilczynski@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0xTdxTe797be9vG6qUw+cUtc3TrHiyjsDj5GWXq5rZrzMJcFrY5o6t6
	rY0UTAsKugiE0vAoqARDrNAiUXmEjodtRxlIQGgBtaIMCk4eSxiuHVoQyoYGGKV187/vfOc7
	5/tOcri48GdyHVeekMQqE6TxIpJPWGzzd94XawpkkQODYtTlLMeQ+ZmOQjUtDgwZOhwcNHLP
	hKFfvR4S/fRHL4X+bMkg0EBlKYUybbUkculGSDStHeGgvqYSEs3kdwBkmVGTyNgxTKFarwFD
	l6bNBLrc2ASQJucqB93t+RQNj3QRyNWnxZFGtwYtNTdSaHGgnkAXH7dSyDR5joPsxm+QurWI
	2PYa4xnMophJl4tgbmTPUkzLXBnBWHXDFKO13gJMQ3UOyTwYaCYZffduZjTPjjHXLqcxaqMN
	Y84sRDKe6/0kU2CqBsy9TCf1pXAPf8shNl5+nFVKPvqBf+Rhgw0cs/FSZtyidDBH5QIeF9Ib
	YL/hGScX8LlCuhJAfckY5i9mAbQ750l/MQPgJesZ4vlI3tht4G9UANjfNhQoJgEsu9XJ8alI
	+gM4VmFYWRxCZxEwqzNjRYXTDwG0jJeQPlUw/T3M9s5jPkzQYph/3bsSS0Bvg7/33AhEXA9b
	227jPsxb5v/ubwlogmD3hfGVTPiyJtN8EfcZQLqKD8e0vwH/8A7oVmtxPw6GbrspsPRVuGQ1
	YH6cCMfMTwKaH6FVaw/gzfCB4+lyUO6ywbuwtknip7dDq6mc8NGQXg0HHwX5I6yGhZZi3E8L
	YLZG6Fe/Bc9r8/8zdVRaAqYMbG6oJ86CMN0Lx+heOEb3v28ZwKtBKJusUshYVVQCeyJCJVWo
	khNkEQcTFQ1g+bdvLtqfNIJS93REO8C4oB1ALi4KEbw8pZUJBYekqSdZZeJ+ZXI8q2oHr3AJ
	UaigvDVLJqRl0iT2KMseY5XPuxiXty4dS3VeWBUjLzqX6lK/Z9sooeOuhBV12A+0hPxSHBu2
	/ruv5qrC68adHvYw7t4Q/Xp13/4qZU12uqa7LunA068l2EKNaW+44JOS88Q7W6LSeJ6X2FKk
	3cljMkajIxc7Jow5lbx/4tZgUWq58G7wpuS1e4vqQ8UpAzvn3973+Ns9uzTXYrcXPjqV+YY7
	umc22VWwdbTtMPFmb/XVXRMLQX2f9eNexdGuK8VRsRW5QzDYUZgirT9+Om94Hxq6r9/8hVzf
	ezBJsWDw4uYGx26lNL9q9pREcefDSeFfn5uK75PiupOeqdPWrWvZHZsmmmQi/Ym0uM6YqbOr
	jEtt4psxXuPixxtFhOqINCocV6qk/wKK4qUMSgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKKsWRmVeSWpSXmKPExsVy+t/xu7oqbX3pBreWGlucuL6IyWLr71ns
	Fmv2nmOymH/kHKvFvUtbmCyufH3PZrHu6QV2ixd7G1ksrq2Yy27RfGw9m8XLWffYLD723GO1
	uLxrDpvF594jjBbbPrewWaw9cpfdYv3X+UwWCz9uZbFYsmMXo0Vb5zJWi4unXC3u3jvBYvHy
	cg+zRdssfov/e3awW/y7tpHFYva7/ewWW95MZLU4vjbcomX/FBYHOY/3N1rZPd68fMnicbjj
	C7vH3m8LWDx2zrrL7tGz8wyjx6ZVnWwed67tYfOYdzLQ4373cSaPzUvqPVrWHmPy6P9r4PF+
	31U2j74tqxg9LjVfZw8QitKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rez
	SUnNySxLLdK3S9DLeL7pGGPBMc6Kz6+UGhi/sXcxcnJICJhIdD84y9jFyMUhJLCUUeL80mNs
	EAkZiWvdL1kgbGGJP9e62CCKXjFK7Pz5FizBJmAk8WD5fFYQW0RgMYvE3n2VIEXMAm8ZJa7P
	3AhWJCwQKfHp2TUwm0VAVaJ331ew1bwCDhIPTx2GOkNeYv/Bs8wgNidQ/PvVvWBxIQF7iTtX
	uxkh6gUlTs58AjaHGai+eets5gmMArOQpGYhSS1gZFrFKJJaWpybnltsqFecmFtcmpeul5yf
	u4kRmF62Hfu5eQfjvFcf9Q4xMnEwHmKU4GBWEuEV/dCTLsSbklhZlVqUH19UmpNafIjRFOju
	icxSosn5wASXVxJvaGZgamhiZmlgamlmrCTO63b5fJqQQHpiSWp2ampBahFMHxMHp1QDk12f
	s9D3vZNKOPvEVaf88PzZXh/Pk/fL28es+79h1w1xMedut4B76qL+0V2nKl9Lu+yU1/592/K/
	lBDnc5NkLws+9rfG0sx5LLzJjxZrPthgub3Bjfvjbwn1C4mtfs8PnTORv20p/rF6Xumvm9wH
	G+9G8U/ZMjV+l4aZWvOkg3y9p9+8/fP3qU7ubMbZzBuqlpq7cVxduj2v6uKknNrFPN863Cq2
	NIbe9nM4beTgllTp3q5WOu+1ydM+hhXnWUXvM9n8ZQtfU3OgizenWbQ+4ce1I5zs/F9uHbof
	MH//63/T1h5INerWrhNa9F3o5uItG5yqXLnU4/c1x09JrBVcmB10iNn1T2pX8/enkf+UWIoz
	Eg21mIuKEwEuj26huAMAAA==
X-CMS-MailID: 20250120172140eucas1p26bd83fb8195d0ed01b7b214ed374948f
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250120172140eucas1p26bd83fb8195d0ed01b7b214ed374948f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20250120172140eucas1p26bd83fb8195d0ed01b7b214ed374948f
References: <20250120172111.3492708-1-m.wilczynski@samsung.com>
	<CGME20250120172140eucas1p26bd83fb8195d0ed01b7b214ed374948f@eucas1p2.samsung.com>

The DRM Imagination GPU requires a power-domain driver. In the T-HEAD
TH1520 SoC implements power management capabilities through the E902
core, which can be communicated with through the mailbox, using firmware
protocol.

Add AON node, which servers as a power-domain controller.

Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index d4cba0713cab..d6af27cbb786 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -6,6 +6,7 @@
 
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/clock/thead,th1520-clk-ap.h>
+#include <dt-bindings/firmware/thead,th1520-aon.h>
 
 / {
 	compatible = "thead,th1520";
@@ -229,6 +230,13 @@ stmmac_axi_config: stmmac-axi-config {
 		snps,blen = <0 0 64 32 0 0 0>;
 	};
 
+	aon: aon {
+		compatible = "thead,th1520-aon";
+		mboxes = <&mbox_910t 1>;
+		mbox-names = "aon";
+		#power-domain-cells = <1>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&plic>;
-- 
2.34.1


