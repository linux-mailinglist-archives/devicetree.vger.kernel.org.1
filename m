Return-Path: <devicetree+bounces-20730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 90420800A9A
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 13:15:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FD70B210BF
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 12:15:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 754EB24A02;
	Fri,  1 Dec 2023 12:15:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E7CE1721;
	Fri,  1 Dec 2023 04:15:24 -0800 (PST)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id DEB9024E2A8;
	Fri,  1 Dec 2023 20:15:22 +0800 (CST)
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 1 Dec
 2023 20:15:22 +0800
Received: from jsia-virtual-machine.localdomain (60.54.3.230) by
 EXMBX066.cuchost.com (172.16.6.66) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Fri, 1 Dec 2023 20:15:10 +0800
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
	<leyfoon.tan@starfivetech.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 4/6] dt-bindings: interrupt-controller: Add StarFive JH8100 plic
Date: Fri, 1 Dec 2023 20:14:08 +0800
Message-ID: <20231201121410.95298-5-jeeheng.sia@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
References: <20231201121410.95298-1-jeeheng.sia@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX066.cuchost.com
 (172.16.6.66)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

Add compatible string for StarFive JH8100 plic.

Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifiv=
e,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controlle=
r/sifive,plic-1.0.0.yaml
index 0c07e8dda445..8f5c6044cef7 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-=
1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-=
1.0.0.yaml
@@ -61,6 +61,7 @@ properties:
               - sifive,fu540-c000-plic
               - starfive,jh7100-plic
               - starfive,jh7110-plic
+              - starfive,jh8100-plic
           - const: sifive,plic-1.0.0
       - items:
           - enum:
--=20
2.34.1


