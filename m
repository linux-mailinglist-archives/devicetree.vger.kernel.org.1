Return-Path: <devicetree+bounces-180263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A66FDAC3179
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 23:16:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7C9D57AFDD9
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 21:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0764A27FD62;
	Sat, 24 May 2025 21:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="nSm3fbbf"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FC227F187
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 21:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748121335; cv=none; b=BlqkTNjg1i+qmw2FVuROKlEr7GxroVIFD1XxaR2L6p4jajHjMyYaXbSZFjc+icqG+MzSfj5ldOQMJYqx20QnW34g+oTOwBKvkB/eicvnqbDuJYUcoy0YvK/5NIcTZz7beBrOJnswHX6zzHkdYECE/EOI7XVZxcmsavYntSyBhBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748121335; c=relaxed/simple;
	bh=/wsmYassOQ9WI9vIn+R/6Xcj8kfMOeqsIMXvgyAxVD4=;
	h=From:Date:Subject:MIME-Version:Message-Id:In-Reply-To:To:Cc:
	 Content-Type:References; b=hro79AmfDViJdOdP1dRGSYkZeSY4Xfx8I4qyEwX7faJ6wID7f3jmQYwPFDBLEkbmc7LfvEyiZfj3Io9gHqcfWo3rSQQ6TJDk3IIfWb6ACRRnDQn3LOa5ZpLoUA7kezyZRrAG6GmL67zLuK9Tg+4t9nZCXuiFNQsAu3rSKfi4XkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=nSm3fbbf; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250524211526euoutp021f7cc9fdf6977772b31b21d7db1e50e2~CkxWvpJH23042730427euoutp02K
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 21:15:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250524211526euoutp021f7cc9fdf6977772b31b21d7db1e50e2~CkxWvpJH23042730427euoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1748121326;
	bh=yfvKCTmfOP4CWdfGBbUZQUNp1klySpsoF9Jq3fSXylU=;
	h=From:Date:Subject:In-Reply-To:To:Cc:References:From;
	b=nSm3fbbfvmaQ155OoLC6sr+nk9MyenEntwZXc0mn/AR3mYzoyzKBxtGP+WRW5mXzW
	 458OGCg7WWmQFysVdBR+7y6p2b21WXf8INdDHMaPm0T9xtWsZ5L34DQIdkw/aokp2i
	 ot9FTrKYQJmixP9JaChbKdt8EAEYvuCwpLOGBIJs=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250524211525eucas1p244963b69e0531c95a9052e4a7a1d1e01~CkxVawh_W3006630066eucas1p2a;
	Sat, 24 May 2025 21:15:25 +0000 (GMT)
Received: from AMDC4942.eu.corp.samsungelectronics.net (unknown
	[106.210.136.40]) by eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250524211524eusmtip24bdbb3baffcbfe4e6512d3af9c1aa682~CkxUXCNLs0676606766eusmtip2q;
	Sat, 24 May 2025 21:15:24 +0000 (GMT)
From: Michal Wilczynski <m.wilczynski@samsung.com>
Date: Sat, 24 May 2025 23:14:59 +0200
Subject: [PATCH RFC 5/6] riscv: dts: thead: Add PVT node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <20250524-rust-next-pwm-working-fan-for-sending-v1-5-bdd2d5094ff7@samsung.com>
In-Reply-To: <20250524-rust-next-pwm-working-fan-for-sending-v1-0-bdd2d5094ff7@samsung.com>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,  Miguel Ojeda
	<ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,  Boqun Feng
	<boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,  Benno Lossin
	<benno.lossin@proton.me>,  Andreas Hindborg <a.hindborg@kernel.org>, Alice
	Ryhl <aliceryhl@google.com>,  Trevor Gross <tmgross@umich.edu>, Danilo
	Krummrich <dakr@kernel.org>,  Michal Wilczynski <m.wilczynski@samsung.com>,
	Drew Fustini <drew@pdp7.com>,  Guo Ren <guoren@kernel.org>, Fu Wei
	<wefu@redhat.com>,  Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,  Paul Walmsley
	<paul.walmsley@sifive.com>,  Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>,  Alexandre Ghiti <alex@ghiti.fr>,  Marek Szyprowski
	<m.szyprowski@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
	rust-for-linux@vger.kernel.org, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org
X-Mailer: b4 0.15-dev
X-CMS-MailID: 20250524211525eucas1p244963b69e0531c95a9052e4a7a1d1e01
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250524211525eucas1p244963b69e0531c95a9052e4a7a1d1e01
X-EPHeader: CA
X-CMS-RootMailID: 20250524211525eucas1p244963b69e0531c95a9052e4a7a1d1e01
References: <20250524-rust-next-pwm-working-fan-for-sending-v1-0-bdd2d5094ff7@samsung.com>
	<CGME20250524211525eucas1p244963b69e0531c95a9052e4a7a1d1e01@eucas1p2.samsung.com>

Add PVT DT node for thermal sensor.

Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index f24e12d7259fabcfbdc2dfa966d759db06684ab4..faf5c3aaf209b24cd99ddc377a88e08a8cce24fe 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -648,6 +648,17 @@ padctrl_aosys: pinctrl@fffff4a000 {
 			thead,pad-group = <1>;
 		};
 
+		pvt: pvt@fffff4e000 {
+			compatible = "moortec,mr75203";
+			reg = <0xff 0xfff4e000 0x0 0x80>,
+			      <0xff 0xfff4e080 0x0 0x100>,
+			      <0xff 0xfff4e180 0x0 0x680>,
+			      <0xff 0xfff4e800 0x0 0x600>;
+			reg-names = "common", "ts", "pd", "vm";
+			clocks = <&aonsys_clk>;
+			#thermal-sensor-cells = <1>;
+		};
+
 		gpio@fffff52000 {
 			compatible = "snps,dw-apb-gpio";
 			reg = <0xff 0xfff52000 0x0 0x1000>;

-- 
2.34.1


