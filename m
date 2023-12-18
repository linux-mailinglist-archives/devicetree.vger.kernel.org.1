Return-Path: <devicetree+bounces-26411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E076816656
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 07:13:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 707C41C22217
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 06:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B34766D19;
	Mon, 18 Dec 2023 06:13:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A1079EE;
	Mon, 18 Dec 2023 06:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=starfivetech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=starfivetech.com
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 53C2E24E257;
	Mon, 18 Dec 2023 14:13:13 +0800 (CST)
Received: from EXMBX066.cuchost.com (172.16.7.66) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 18 Dec
 2023 14:13:13 +0800
Received: from localhost.localdomain (202.188.176.82) by EXMBX066.cuchost.com
 (172.16.6.66) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 18 Dec
 2023 14:13:09 +0800
From: Joshua Yeong <joshua.yeong@starfivetech.com>
To: <joshua.yeong@starfivetech.com>, <jeeheng.sia@starfivetech.com>,
	<leyfoon.tan@starfivetech.com>, <jassisinghbrar@gmail.com>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/3] MAINTAINERS: Add entry for StarFive Mailbox MEU
Date: Mon, 18 Dec 2023 14:12:01 +0800
Message-ID: <20231218061201.98136-4-joshua.yeong@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218061201.98136-1-joshua.yeong@starfivetech.com>
References: <20231218061201.98136-1-joshua.yeong@starfivetech.com>
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

Add StarFive Meu Mailbox driver contact point.

Co-developed-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
Signed-off-by: Sia Jee Heng <jeeheng.sia@starfivetech.com>
Signed-off-by: Joshua Yeong <joshua.yeong@starfivetech.com>
Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 9104430e148e..dc2db4eca31a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20685,6 +20685,13 @@ F:	Documentation/devicetree/bindings/phy/starfiv=
e,jh7110-usb-phy.yaml
 F:	drivers/phy/starfive/phy-jh7110-pcie.c
 F:	drivers/phy/starfive/phy-jh7110-usb.c
=20
+STARFIVE MEU DRIVER
+M:	Joshua Yeong <joshua.yeong@starfivetech.com>
+M:	Sia Jee Heng <jeeheng.sia@starfivetech.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/mailbox/starfive-meu.yaml
+F:	drivers/mailbox/starfive-meu.c
+
 STATIC BRANCH/CALL
 M:	Peter Zijlstra <peterz@infradead.org>
 M:	Josh Poimboeuf <jpoimboe@kernel.org>
--=20
2.25.1


