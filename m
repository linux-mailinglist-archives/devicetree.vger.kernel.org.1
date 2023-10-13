Return-Path: <devicetree+bounces-8407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3547C80ED
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:54:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75071B2093E
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 08:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EA93107B8;
	Fri, 13 Oct 2023 08:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ulAQTU51"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3BE710944
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:54:33 +0000 (UTC)
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com [198.47.19.141])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D72C95;
	Fri, 13 Oct 2023 01:54:31 -0700 (PDT)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39D8sPwe065459;
	Fri, 13 Oct 2023 03:54:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1697187265;
	bh=EIam3hHPeLxKkwM9apMuaUiIVgyIIPYm6Gl0dS+/eNc=;
	h=From:To:CC:Subject:Date;
	b=ulAQTU51GdEa+oQ/saoxM+fXUgbPwSrq1PZYzKpVPlRAgj9sjoong40r+wGg6OkdI
	 gVZrbBHOrB9CL7Bf+lPWghbDsOC3SwbP9LjueAULBUJbI9h5bf4lQnZnit2jxT2p+w
	 RJmwM9qBzTBjPsbVxVwmM3ki4JFROwbDlpdqYl20=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39D8sPsN037438
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 13 Oct 2023 03:54:25 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 13
 Oct 2023 03:54:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 13 Oct 2023 03:54:25 -0500
Received: from localhost (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39D8sOTZ040179;
	Fri, 13 Oct 2023 03:54:25 -0500
From: Aradhya Bhatia <a-bhatia1@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
CC: Devicetree List <devicetree@vger.kernel.org>,
        Linux Kernel List
	<linux-kernel@vger.kernel.org>,
        Andrew Davis <afd@ti.com>, Nishanth Menon
	<nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Devarsh Thakkar
	<devarsht@ti.com>, Jai Luthra <j-luthra@ti.com>,
        Jayesh Choudhary
	<j-choudhary@ti.com>,
        Aradhya Bhatia <a-bhatia1@ti.com>
Subject: [PATCH] scripts/dtc: Allow ports to have a single port@0 child
Date: Fri, 13 Oct 2023 14:24:24 +0530
Message-ID: <20231013085424.7137-1-a-bhatia1@ti.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Exempt 'ports' from the rule which asserts that nodes with single child
node having reg = 0, should not have the '#size-cells' and
'#address-cells' properties.

Ports of certain hardware do need to be described as only having a
single child node 'port@0', especially when hardware has multiple ports,
and the other ports 'port@x' are planned to be added subsequently. In
such cases, just using 'port', would be an inaccurate hardware
description.

For example, Texas Instruments' DSS (display-subsystem), which has 2 or
4 video ports depending on the SoC. Describing the first video port with
just 'port' under ports would be inaccurate and even slightly
misleading. Simply using port@0 (when other ports are not added)
produces the following warning, while making dtbs with W=1 flag set[0].

code-block ::

	Warning (graph_child_address): /bus@100000/dss@4a00000/ports:
	graph node has single child node 'port@0',
	#address-cells/#size-cells are not necessary

Signed-off-by: Aradhya Bhatia <a-bhatia1@ti.com>

[0]: https://lore.kernel.org/all/570903b6-8239-d44a-5fac-71700804cb5d@ti.com/
---
 scripts/dtc/checks.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/scripts/dtc/checks.c b/scripts/dtc/checks.c
index 9f31d2607182..705aa0fbcfa2 100644
--- a/scripts/dtc/checks.c
+++ b/scripts/dtc/checks.c
@@ -1797,9 +1797,18 @@ static void check_graph_child_address(struct check *c, struct dt_info *dti,
 		cnt++;
 	}
 
-	if (cnt == 1 && node->addr_cells != -1)
+	if (cnt == 1 && node->addr_cells != -1) {
+		/*
+		 * The graph node "ports" are exempt from this rule, because
+		 * certain hardware do need to be described as only having a
+		 * signle port with reg = 0.
+		 */
+		if (!strcmp(node->name, "ports"))
+			return;
+
 		FAIL(c, dti, node, "graph node has single child node '%s', #address-cells/#size-cells are not necessary",
 		     node->children->name);
+	}
 }
 WARNING(graph_child_address, check_graph_child_address, NULL, &graph_nodes);
 

base-commit: e3b18f7200f45d66f7141136c25554ac1e82009b
-- 
2.40.1


