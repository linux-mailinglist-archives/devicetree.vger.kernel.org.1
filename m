Return-Path: <devicetree+bounces-4788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A92A67B404E
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 14:52:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 61DCE281D04
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 12:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6BE65CBC;
	Sat, 30 Sep 2023 12:52:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B682223D0
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 12:52:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25FA9C433CB;
	Sat, 30 Sep 2023 12:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696078320;
	bh=fQTDtT9gnWgXUs+I9buDYmY6imSxTfJ5hIWH/nKngUA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cgjrlymuo0WltimOMkmuXz4oV1+bt9qfmo/hhNyXcikzu7EaGa4n/wgk3XwktQTCN
	 SknjOXRlAENSX/2931edHNrX93SFp8kSZSAgBS2Dfq84VmxdmnkC7iRdLNHn4QGjGr
	 OnYippK2hUgXFApgGby73dVAgX1a+T23DLZqgVtaXipteIfRBzCKt3J14h9489ZnoU
	 hY/wC7LmF8I4YrvI+8jU4R8I/pZNKq1Da7by1qheFDABExAZ5YRBgwehNtZZMBWYIM
	 e4Ds4ctkJIgdnzipElalZr0Dd+g8izrTw3U4STXCsLch6LaF2TbCL0tu50+Yr3dHQE
	 +2qkDcwE9i8tg==
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
Subject: [PATCH 2/5] dt-bindings: timer: Add SOPHGO CV1800B clint
Date: Sat, 30 Sep 2023 20:39:34 +0800
Message-Id: <20230930123937.1551-3-jszhang@kernel.org>
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

Add compatible string for the SOPHGO CV1800B clint.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 Documentation/devicetree/bindings/timer/sifive,clint.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index a0185e15a42f..98c76d5893ac 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -37,6 +37,7 @@ properties:
       - items:
           - enum:
               - allwinner,sun20i-d1-clint
+              - sophgo,cv1800-clint
               - thead,th1520-clint
           - const: thead,c900-clint
       - items:
-- 
2.40.1


