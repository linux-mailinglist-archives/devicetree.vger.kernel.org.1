Return-Path: <devicetree+bounces-3876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5596D7B04F1
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:07:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 58F581C20991
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE1C62AB38;
	Wed, 27 Sep 2023 13:07:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF3A27ECE
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:07:43 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BDAD10A;
	Wed, 27 Sep 2023 06:07:42 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 821247F8E;
	Wed, 27 Sep 2023 21:07:36 +0800 (CST)
Received: from EXMBX062.cuchost.com (172.16.6.62) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 27 Sep
 2023 21:07:36 +0800
Received: from ubuntu.localdomain (113.72.144.128) by EXMBX062.cuchost.com
 (172.16.6.62) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 27 Sep
 2023 21:07:35 +0800
From: Changhuang Liang <changhuang.liang@starfivetech.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, "Ulf
 Hansson" <ulf.hansson@linaro.org>
CC: Walker Chen <walker.chen@starfivetech.com>, Changhuang Liang
	<changhuang.liang@starfivetech.com>, Hal Feng <hal.feng@starfivetech.com>,
	<linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
Subject: [-next v1 1/2] dt-bindings: power: Update prefixes for AON power domain
Date: Wed, 27 Sep 2023 06:07:33 -0700
Message-ID: <20230927130734.9921-2-changhuang.liang@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230927130734.9921-1-changhuang.liang@starfivetech.com>
References: <20230927130734.9921-1-changhuang.liang@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [113.72.144.128]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX062.cuchost.com
 (172.16.6.62)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Use "JH7110_AON_PD_" prefix for AON power doamin for JH7110 SoC.

Reviewed-by: Walker Chen <walker.chen@starfivetech.com>
Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
---
 include/dt-bindings/power/starfive,jh7110-pmu.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/dt-bindings/power/starfive,jh7110-pmu.h b/include/dt=
-bindings/power/starfive,jh7110-pmu.h
index 341e2a0676ba..7b4f24927dee 100644
--- a/include/dt-bindings/power/starfive,jh7110-pmu.h
+++ b/include/dt-bindings/power/starfive,jh7110-pmu.h
@@ -14,7 +14,8 @@
 #define JH7110_PD_ISP		5
 #define JH7110_PD_VENC		6
=20
-#define JH7110_PD_DPHY_TX	0
-#define JH7110_PD_DPHY_RX	1
+/* AON Power Domain */
+#define JH7110_AON_PD_DPHY_TX	0
+#define JH7110_AON_PD_DPHY_RX	1
=20
 #endif
--=20
2.25.1


