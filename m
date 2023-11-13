Return-Path: <devicetree+bounces-15246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C5A7E93EB
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 02:09:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5E04B20956
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 01:09:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2921D4402;
	Mon, 13 Nov 2023 01:09:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyYsLd4x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0989646A6
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 01:09:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E644C433C9;
	Mon, 13 Nov 2023 01:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699837767;
	bh=L5ZkrNb3URDoBLVtQbTpXvk5/4TaeCMTB1Cqnnepk28=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZyYsLd4xs9jlXvllEtYeTitkoWtKWg8X2W5zxDCxDHCUVMH4qKx+UipUETexTXk2z
	 TayIBz5QsWaigjp+EhQy+HnXdoPDE3iw2NbOp3lH72lFdyBrxQsTaWuDQgbg3g35f3
	 PBD5oHkiWz7PFkI40HvDDQUD/HMzHklTeLAQD+MaCHkGfYCw3R+UWJtQZeJyr9rOZ4
	 6mGSl+aYJdkCGnrP2fEiRPeFmjbIg9BPvsQBxl4CHlIJo86mwST/UqNu9952ffWi3y
	 B/8rfCJvcEFbclweKrcW4QfKO33pQx7kUQbntnsnJS3cgtg2t1BoUyERraYHRoDjmz
	 2wT/8FZdDQmjA==
From: Jisheng Zhang <jszhang@kernel.org>
To: Rob Herring <robh+dt@kernel.org>,
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
Subject: [PATCH 2/2] riscv: dts: sophgo: set pinctrl for uart0
Date: Mon, 13 Nov 2023 08:57:02 +0800
Message-Id: <20231113005702.2467-3-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231113005702.2467-1-jszhang@kernel.org>
References: <20231113005702.2467-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Although the mux function is uart by default, add it for
completeness.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
index 3af9e34b3bc7..cc10688908bc 100644
--- a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
+++ b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
@@ -33,6 +33,17 @@ &osc {
 	clock-frequency = <25000000>;
 };
 
+&pinctrl0 {
+	uart0_pins: uart0-pins {
+		pinctrl-single,pins = <
+			0x24 MUX_M0 /* UART0_TX */
+			0x28 MUX_M0 /* UART0_RX */
+		>;
+	};
+};
+
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
-- 
2.42.0


