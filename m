Return-Path: <devicetree+bounces-4787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE55C7B404D
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 14:52:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 00BE6281DBB
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 12:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42EE29CA4B;
	Sat, 30 Sep 2023 12:51:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328315CBC
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 12:51:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3A34C433CC;
	Sat, 30 Sep 2023 12:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696078316;
	bh=IOW8Qy8WgXjW/pu+Hsiy+A9zCuQxJj+mnIrMdCsos4M=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=N7P+Uc3HY8yOIulo2M6D0Z/azUsN0Gk5ZdZxddChXOOQzRDWJKD4VBDIk4K40wZ4m
	 Ic6VD7noeijn8iAKvm2P7DTmwoxMBpc1M2VTLb9tcH9dMPHPsiSoJEVHKgFbJI42dq
	 uy/gCJ5NytKS1DopBhSI2mK+0++GlS/dg/lULaqsk8V799Zpu3Eg3aVsBfIQO4GHBj
	 bw9LzOyKHlE5TKjV/ShB3g+YwlYurhL2h+GRCbKaUSk8USPDOVb9djIdsA5dVdgWAC
	 pOk2q/wX+IFzKk+2bkdTBYxEkS5K5xZfdWPBj7YixIi9C0kSzjTJO2sDboG12Jb+PX
	 tnuscWhFhFn3w==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com
Subject: [PATCH 1/5] dt-bindings: interrupt-controller: Add SOPHGO CV1800B plic
Date: Sat, 30 Sep 2023 20:39:33 +0800
Message-Id: <20230930123937.1551-2-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230930123937.1551-1-jszhang@kernel.org>
References: <20230930123937.1551-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for SOPHGO CV1800B plic.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 16f9c4760c0f..5c4539881a22 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -65,6 +65,7 @@ properties:
       - items:
           - enum:
               - allwinner,sun20i-d1-plic
+              - sophgo,cv1800-plic
               - sophgo,sg2042-plic
               - thead,th1520-plic
           - const: thead,c900-plic
-- 
2.40.1


