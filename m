Return-Path: <devicetree+bounces-15242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5F97E93E2
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 02:07:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C78811F20C22
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 01:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A3F2441B;
	Mon, 13 Nov 2023 01:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQezJXBf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094A74409
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 01:07:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41267C433CB;
	Mon, 13 Nov 2023 01:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699837661;
	bh=FU5cMxpykFA89J/z1Xx5vbxIOEU9bDayGjmJTED/4UY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uQezJXBfixXFEnDr2uPowPMWRFtaZ5r1q34O5kMOfhXgqt6xRQJok/YdVKhr753Sc
	 U3brf0s5laXn8qH+WlE5rwINpOTqG7YY5Gf+KvG7ZuE5RAyC4QMGnW7qPhkbtsI73i
	 LOgFM2tUGynRSL8KRffQbgT3N+4ali7B0V4blEFMYQcYw6R2gfBJbjiQcU+4vHywGL
	 rSuLw91jQFndlfabvrHICBhGjhAOdvNpgyWQC1JDvxgIBBNYQI/6GODycyIxNxpJWx
	 hRWvuIIn2U2/HUSuhFuaw5nsb+TkehY43Oq1390yw7oCoKg0AiXMDqcPh15OhD3Sg/
	 6E0laeQm1YkTw==
From: Jisheng Zhang <jszhang@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH 3/4] riscv: dts: sophgo: add reset dt node for cv1800b
Date: Mon, 13 Nov 2023 08:55:02 +0800
Message-Id: <20231113005503.2423-4-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231113005503.2423-1-jszhang@kernel.org>
References: <20231113005503.2423-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the reset device tree node to cv1800b SoC.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
index df40e87ee063..4032419486be 100644
--- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
@@ -54,6 +54,12 @@ soc {
 		dma-noncoherent;
 		ranges;
 
+		rst: reset-controller@3003000 {
+			compatible = "sophgo,cv1800b-reset";
+			reg = <0x03003000 0x1000>;
+			#reset-cells = <1>;
+		};
+
 		uart0: serial@4140000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x04140000 0x100>;
-- 
2.42.0


