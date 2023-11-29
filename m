Return-Path: <devicetree+bounces-19824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDF07FCE9C
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 07:01:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA3CB283471
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 06:01:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 927117490;
	Wed, 29 Nov 2023 06:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 739991BC1;
	Tue, 28 Nov 2023 22:01:34 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 3EC3680A8;
	Wed, 29 Nov 2023 14:01:27 +0800 (CST)
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 29 Nov
 2023 14:01:27 +0800
Received: from jsia-virtual-machine.localdomain (60.54.3.230) by
 EXMBX066.cuchost.com (172.16.6.66) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Wed, 29 Nov 2023 14:01:15 +0800
From: Sia Jee Heng <jeeheng.sia@starfivetech.com>
To: <kernel@esmil.dk>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <krzk@kernel.org>,
	<conor+dt@kernel.org>, <paul.walmsley@sifive.com>, <palmer@dabbelt.com>,
	<aou@eecs.berkeley.edu>, <daniel.lezcano@linaro.org>, <tglx@linutronix.de>,
	<conor@kernel.org>, <anup@brainfault.org>, <gregkh@linuxfoundation.org>,
	<jirislaby@kernel.org>, <michal.simek@amd.com>,
	<michael.zhu@starfivetech.com>, <drew@beagleboard.org>
CC: <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <jeeheng.sia@starfivetech.com>,
	<leyfoon.tan@starfivetech.com>
Subject: [PATCH v2 2/6] dt-bindings: riscv: Add StarFive JH8100 SoC
Date: Wed, 29 Nov 2023 14:00:39 +0800
Message-ID: <20231129060043.368874-3-jeeheng.sia@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
References: <20231129060043.368874-1-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX066.cuchost.com
 (172.16.6.66)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

Add device tree bindings for the StarFive JH8100 RISC-V SoC.

Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
---
 Documentation/devicetree/bindings/riscv/starfive.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Docu=
mentation/devicetree/bindings/riscv/starfive.yaml
index cc4d92f0a1bf..7e2da9eef3db 100644
--- a/Documentation/devicetree/bindings/riscv/starfive.yaml
+++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
@@ -29,7 +29,10 @@ properties:
               - starfive,visionfive-2-v1.2a
               - starfive,visionfive-2-v1.3b
           - const: starfive,jh7110
-
+      - items:
+          - enum:
+              - starfive,jh8100-evb
+          - const: starfive,jh8100
 additionalProperties: true
=20
 ...
--=20
2.34.1


