Return-Path: <devicetree+bounces-20975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 947BA801D8A
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 16:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A55581C2096C
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 15:46:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0341A595;
	Sat,  2 Dec 2023 15:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asKKD/k5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A92E1173B
	for <devicetree@vger.kernel.org>; Sat,  2 Dec 2023 15:46:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D773EC433CC;
	Sat,  2 Dec 2023 15:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701531985;
	bh=whEVkV47vBAQ1zFS0tehUj15XN7L3r6QxlK/D9oqA80=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=asKKD/k5o+McKYglU/mkm9kiYxyiM6bTAss95f6RHv3gr80nNMTbfbuTZtZDIlMtf
	 A1CeM2w3k8M/To+RnJ/QBGNCQRGP7+aJltkBwezUeKjGyjUlB1A1XqNgxgcmO1AJ3I
	 QeymBZPQ5sOuaqGeo6FrdeAqQYK9IPHuG2fcPSQ+SOhst7LhsweriDBb7G8H6L5/iC
	 3qPStak58iYUpULhMZkV2cHfL1xpc8Y8T3BZANx2Cqs+Wts8If3O2LvdgtNMtppfAF
	 sbaZ6XCl7gdVQbOE1FHhrwqq0wjDBlKKSjYiMd1GdmprZcfFE9EEwaTJmVM9RzPpFA
	 g6tYTGyTctltA==
From: Jisheng Zhang <jszhang@kernel.org>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: riscv: starfive: add Milkv Mars board
Date: Sat,  2 Dec 2023 23:33:52 +0800
Message-Id: <20231202153353.635-3-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20231202153353.635-1-jszhang@kernel.org>
References: <20231202153353.635-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the Milkv Mars board which is
equipped with StarFive JH7110 SoC.

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 Documentation/devicetree/bindings/riscv/starfive.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
index cc4d92f0a1bf..b672f8521949 100644
--- a/Documentation/devicetree/bindings/riscv/starfive.yaml
+++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
@@ -26,6 +26,7 @@ properties:
 
       - items:
           - enum:
+              - milkv,mars
               - starfive,visionfive-2-v1.2a
               - starfive,visionfive-2-v1.3b
           - const: starfive,jh7110
-- 
2.42.0


