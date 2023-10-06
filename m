Return-Path: <devicetree+bounces-6470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 369757BB783
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:27:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41ADD1C209AA
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8536D1CFBF;
	Fri,  6 Oct 2023 12:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dxk2dDWL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639601CFB5
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:27:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A0ECC4166B;
	Fri,  6 Oct 2023 12:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696595226;
	bh=vK2e3eQyu+2RwwEcd/fM4Ck3i9PQ2DpagYXnMZgMMks=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Dxk2dDWLVPcQeveUPSAdTFi42lTUudLuJqloZTONbgWb7SQLlQqEhAEuzFHDZsEVm
	 /vjayuxdfMKJkf/QCedhgEPmRyhcf2bfjpEg1/l1OmVOKtvdP1QjA+havuZd0LDMwJ
	 iFHK+7KKBsg0jM7Pv5rX5ZQTuckPPP3HlJlkX5U0lB0kIbAg7tn0pO2Sm7ABBMxIOR
	 NyT+1hItlAyHRR9+jg6rKmaRip1cUVw9s8RZkLWl1Yl2G6+HpdBl+poX7UDEE24Dvq
	 JYHFIv1aWKjR0+hUy/3Jr1WFvmPr6q9qoQtAPmoA84k5OSor4ai5CXKnRkIudgXNe3
	 T4BWv7tVVaMhg==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Chen Wang <unicorn_wang@outlook.com>
Subject: [PATCH v2 3/5] dt-bindings: riscv: Add Milk-V Duo board compatibles
Date: Fri,  6 Oct 2023 20:14:47 +0800
Message-Id: <20231006121449.721-4-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231006121449.721-1-jszhang@kernel.org>
References: <20231006121449.721-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the compatible strings for the Milk-V Duo board[1] which uses
the SOPHGO CV1800B SoC[2].

Link: https://milkv.io/duo [1]
Link: https://en.sophgo.com/product/introduce/cv180xB.html [2]
Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Chen Wang <unicorn_wang@outlook.com>
---
 Documentation/devicetree/bindings/riscv/sophgo.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/sophgo.yaml b/Documentation/devicetree/bindings/riscv/sophgo.yaml
index 8adb5f39ca53..86748c5390be 100644
--- a/Documentation/devicetree/bindings/riscv/sophgo.yaml
+++ b/Documentation/devicetree/bindings/riscv/sophgo.yaml
@@ -18,6 +18,10 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - milkv,duo
+          - const: sophgo,cv1800b
       - items:
           - enum:
               - milkv,pioneer
-- 
2.40.1


