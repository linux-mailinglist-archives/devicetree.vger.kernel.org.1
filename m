Return-Path: <devicetree+bounces-4789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E86717B4050
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 14:52:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 112121C2081F
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 12:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E75E23D0;
	Sat, 30 Sep 2023 12:52:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7199CA4B
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 12:52:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9D39C433CD;
	Sat, 30 Sep 2023 12:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696078324;
	bh=0cXR+wjSxc3y0eRPOSPa5epHEc/W4j4DDvL7tCSFcHw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=REmv6J/ExFC/eGAjHAiMAIVg67CrBH31GFPnanZkKftD5wWdukAWx+UAjV0OtHQu1
	 rXunINX7W15Rzcb5lR+QRcBRZ7pcFbZctii84zTu6GjrTZUu594QrJ2moVSBSnCc37
	 my9zZcN2LSVReCLhxC4eMY6hvKC5kqRh1Tg/i36anJCfBggWdN/nAz+JvHgW2DX0w0
	 njgOMh7nPiXoXJvHM/nAoEo0LpXBNuwgPLyS9+/9Pt1EiB2zuSkRPLi3urIEGkmO2m
	 v+/50sD4iWUUyYGoRhAV6SwO7b3tpI4ZEAwrJmvuzH8KdgEW0rksWCxxxmIg2/0yyf
	 r1VWlOi8eXAaQ==
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
Subject: [PATCH 3/5] dt-bindings: riscv: Add Milk-V Duo board compatibles
Date: Sat, 30 Sep 2023 20:39:35 +0800
Message-Id: <20230930123937.1551-4-jszhang@kernel.org>
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

Document the compatible strings for the Milk-V Duo board[1] which uses
the SOPHGO CV1800B SoC[2].

Link: https://milkv.io/duo [1]
Link: https://en.sophgo.com/product/introduce/cv180xB.html [2]
Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 Documentation/devicetree/bindings/riscv/sophgo.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/sophgo.yaml b/Documentation/devicetree/bindings/riscv/sophgo.yaml
index 4e8fd3c6a6ff..6db241c9d00c 100644
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


