Return-Path: <devicetree+bounces-6468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CE17BB77E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:27:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DDDE28228E
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215311CFB4;
	Fri,  6 Oct 2023 12:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtJmRO1C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041901CF9A
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:27:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DBCAC433CC;
	Fri,  6 Oct 2023 12:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696595220;
	bh=SnqqmnuywOhmCW0NrWgiJLL8C+SD9HabtHjqFfDXRA0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KtJmRO1Cou5EiBgcTPgxHF4yWrW5dQsCuOzc3NBJ/sytY3coZjSlqnwJaYftSR8c7
	 2RbcSXoDWtBH/JU/0Vv+1XBJS/XocLczha3d5kPnnzAKQjdDMhkmE08ejeAW/fNTer
	 B+7zdTmj/wISBxpDgLLSmQW30RcjirkDhk5DV+0eQ668kmQWp6bP5OImaXA9OCu5x7
	 elML0q+1TQ6DSXYEsM5eb1Iq9lPpSTNfbFrYt9Kfkr5A1g0Nr0wqxmsBCduLzspe76
	 fNOu9O2z/0AsoSH/m0DQCuxk7Teh7Uvg6CHROcN8NPvmvRJpKT8rnJ/jC65Yxbdl+C
	 12L9Y4fspI3Ew==
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
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/5] dt-bindings: interrupt-controller: Add SOPHGO CV1800B plic
Date: Fri,  6 Oct 2023 20:14:45 +0800
Message-Id: <20231006121449.721-2-jszhang@kernel.org>
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

Add compatible string for SOPHGO CV1800B plic.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 16f9c4760c0f..0c07e8dda445 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -65,6 +65,7 @@ properties:
       - items:
           - enum:
               - allwinner,sun20i-d1-plic
+              - sophgo,cv1800b-plic
               - sophgo,sg2042-plic
               - thead,th1520-plic
           - const: thead,c900-plic
-- 
2.40.1


