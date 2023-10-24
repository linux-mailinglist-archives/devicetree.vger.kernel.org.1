Return-Path: <devicetree+bounces-11169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C033B7D49DC
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F0E741C20AC1
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 08:20:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80B091C684;
	Tue, 24 Oct 2023 08:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="foQZtX4R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616141BDC8
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:20:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EA44C433C8;
	Tue, 24 Oct 2023 08:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698135650;
	bh=ZGuyWnKr/kt2Unpu5aE4lFxwccQjdpGfUhSXgCB0iGQ=;
	h=From:To:Cc:Subject:Date:From;
	b=foQZtX4RsqPA1ecHtPBitGHsP5F/J44rftp9gPIBTCVIR7TT8jRUlObURWD/rgm1X
	 Au/Glm3NEO6FjtktwTAPK7/mAEMSeovOfjDghb4zDathzlb7uLQJBsRyy1rkwUqjVO
	 j/V+NMU129W2X3YLHelvhoWmBKGkfwwveFui0ldAIy7Y4PBDa2kbTwQXiAjfvaQSF9
	 exT50YevH8L1HrNL4NWVsUlhKH3A7wBA91EtGVvccTeH/aodA4ayYgCeIcifUAOV7o
	 8mM3qFn0Suypghfn+F8L2C/j/Cv3dh8ewencwUtozKYH8Ng0XsdsqLdnM5L9kaOVPW
	 18PDLl0QEf/WA==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] riscv: dts: sophgo: remove address-cells from intc node
Date: Tue, 24 Oct 2023 09:20:35 +0100
Message-Id: <20231024-maternity-slang-fd3dcfb211c0@spud>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1478; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=aQbYiTBBEQV72xMhaZU1xuHZtHqogNH4OaogNL5Blk4=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKnmdeYXOn9HB6V4Sdvv3hbt/vjRW5/gpatCGMI/W2saX 1Dwd/vfUcrCIMbBICumyJJ4u69Fav0flx3OPW9h5rAygQxh4OIUgIlURzEy9Oq/3bJwvbaT0VLd Lpufb5b5hQcu+vTQOMR+otiq49ENpYwMl7St7TZfNt92yPJuwZ/9L3Py73qJh9qt5Dy6NZtv1/M 6bgA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

A recent submission [1] from Rob has added additionalProperties: false
to the interrupt-controller child node of RISC-V cpus, highlighting that
the new cv1800b DT has been incorrectly using #address-cells.
It has no child nodes, so #address-cells is not needed. Remove it.

Link: https://patchwork.kernel.org/project/linux-riscv/patch/20230915201946.4184468-1-robh@kernel.org/ [1]
Fixes: c3dffa879cca ("riscv: dts: sophgo: add initial CV1800B SoC device tree")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Chao Wei <chao.wei@sophgo.com>
CC: Chen Wang <unicorn_wang@outlook.com>
CC: Rob Herring <robh+dt@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Paul Walmsley <paul.walmsley@sifive.com>
CC: Palmer Dabbelt <palmer@dabbelt.com>
CC: Albert Ou <aou@eecs.berkeley.edu>
CC: devicetree@vger.kernel.org
CC: linux-riscv@lists.infradead.org
CC: linux-kernel@vger.kernel.org
---
 arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
index df40e87ee063..aec6401a467b 100644
--- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
@@ -34,7 +34,6 @@ cpu0: cpu@0 {
 			cpu0_intc: interrupt-controller {
 				compatible = "riscv,cpu-intc";
 				interrupt-controller;
-				#address-cells = <0>;
 				#interrupt-cells = <1>;
 			};
 		};
-- 
2.39.2


