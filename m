Return-Path: <devicetree+bounces-165818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE1FA8592D
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 12:14:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A597189FB7C
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997EB221292;
	Fri, 11 Apr 2025 10:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b="BiSoJTIb"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2116.outbound.protection.outlook.com [40.107.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164726AA7
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 10:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.241.116
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744366227; cv=fail; b=laqbyq4VWgodlFStnWfOOwOdMnOthpo4nB4zi5UGoOcjtSM0sjkCPfdjhqF9XRqXf9u+dFeDWkjhoRaA2LwNkkeL/3TFs6VkuFczDhoN3QgY4ta+xlxvrcesc6WV0mrKboEqtih5XlQO6QBg3Ma0nslCDshfPk1pEcjFWhO3OnQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744366227; c=relaxed/simple;
	bh=OYpCHJkoOFtVTiyCEaZAFJyMBeVfESgac08VAPfUNHE=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jmm7+P7C1ZUgxe46dk7UHHzKZT8sbMYNFvlQHRiMD5bPxNmQEKaaZkfG4/8sP1FvfxYBEBC7CBYMEHbgwAfPMY77BwT7F0W8PuosD4JTvXW1FAMbt/hoyQVxu7J5AePLeHLcWCcSsxD4wQfzYH3i6J5BNJEmv9KJf5oJMwzilg4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de; spf=pass smtp.mailfrom=phytec.de; dkim=pass (2048-bit key) header.d=phytec.de header.i=@phytec.de header.b=BiSoJTIb; arc=fail smtp.client-ip=40.107.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=phytec.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=phytec.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xc04ftqLLli1Bmqcto6U5Xx1MskmVp5Q8v9uxUdS7HcdiNQ0g0ns5VXz+kcqXalccwJbIFLGOJnXM3/ysTEHQaSBe1y/Lir0Wuq261Ovj6AbRuaEpJ54HFWl2Ulv4BmPw5OhKcT4c4U9zN3LR3cI52UqbFtjZwL/8I/X4IVcwROH4hJ9EcJe2Ke0PtDV5IKqrxJa2V5DLV26tJ2CXnxoaKysGCMuItCcuNZscmg13XAvha/ExOAKLn1vWiECjB14FK/3V4qsrtWCU0/lpMBADBDA7d1vQZZk74VhsfqANZVNhDJ/W5/9cTlXOGTaZTVMVZImDdQU0tECZJaAJmFrTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vPuQrxrwZLvEK72mxFdX85TUG/DP0eJaecEmUdcAdiw=;
 b=xkRXMBcwJzGLRen3e6aY+E70DOqkJcla91IyTmX6UqiMKVWHOQEXF3O/VeSktjkj+5/Kba/ZT1kCz5StnPnZt4uTuSDBoQQ6fHj9fT7E6iuCUFS7VVViStiVoDuJvxgXJutAPXB5p115OTZRJfp66aG3bOuS95hVa7dnpQWWRPgULMv1dR2S1KT4GkmC33RY099pRBSQzg5obhyhQ/7AjPHeDeXKqi0K1kz9CGvvDnyEW+ebts0iMclTgXo6mdGPDq3sbxOsuzx2sFqAOCvc6Vi74++O4M9Zrqc+gDDu7JXoAEVX8ylOtanyudZV1EywmIArGFLq5hWLYXv7sG2KzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.26.50.189) smtp.rcpttodomain=kernel.org smtp.mailfrom=phytec.de;
 dmarc=fail (p=quarantine sp=quarantine pct=100) action=quarantine
 header.from=phytec.de; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=phytec.de;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vPuQrxrwZLvEK72mxFdX85TUG/DP0eJaecEmUdcAdiw=;
 b=BiSoJTIbCirDGjnbVNb/ydBSSFvkpfqoG1VQqSyYL/3iWSgo0MdB7eXn/yNDSPdloFOmNal2ASrjEVCCBFIY0KUWmlECupjlUzylnwp1QZaqthgJ4lVxi12Tj/5TdcBaBWfnQOsXtH5D5/Fx4O1CwzxHQujmGBOIaBQjwM+vynRQFqdacA9rwFvAhL9UBis8eNBVbfsTezlnHU3a7BNcpBM2pO+x0Joh6Ei81VfeZi90/njR86E3cqGCEYVxkOrxIPRrryV5FRQW1Onlo/x/q74d8GEdAnLPLb5pIbXSijCbv3VA9yeIR+UV9j6OQ5b6eHnBaffVzf/pTyr1arW9Zw==
Received: from DU7P191CA0002.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:54e::31)
 by DU0P195MB1819.EURP195.PROD.OUTLOOK.COM (2603:10a6:10:3b1::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Fri, 11 Apr
 2025 10:10:16 +0000
Received: from DB3PEPF0000885F.eurprd02.prod.outlook.com
 (2603:10a6:10:54e:cafe::d6) by DU7P191CA0002.outlook.office365.com
 (2603:10a6:10:54e::31) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8632.26 via Frontend Transport; Fri,
 11 Apr 2025 10:10:16 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 91.26.50.189)
 smtp.mailfrom=phytec.de; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=phytec.de;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 phytec.de discourages use of 91.26.50.189 as permitted sender)
Received: from Diagnostix.phytec.de (91.26.50.189) by
 DB3PEPF0000885F.mail.protection.outlook.com (10.167.242.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.8632.13 via Frontend Transport; Fri, 11 Apr 2025 10:10:15 +0000
Received: from Florix.phytec.de (172.25.0.13) by Diagnostix.phytec.de
 (172.25.0.14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Fri, 11 Apr
 2025 12:10:14 +0200
Received: from lws-haller.phytec.de (172.25.32.139) by Florix.phytec.de
 (172.25.0.13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.44; Fri, 11 Apr
 2025 12:10:14 +0200
From: Dominik Haller <d.haller@phytec.de>
To: <robh@kernel.org>, <kristo@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <vigneshr@ti.com>, <nm@ti.com>, <m-chawdhry@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<upstream@lists.phytec.de>
Subject: [PATCH 1/2] dt-bindings: arm: ti: Add bindings for PHYTEC AM68x based hardware
Date: Fri, 11 Apr 2025 12:10:03 +0200
Message-ID: <20250411101004.13276-1-d.haller@phytec.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Diagnostix.phytec.de (172.25.0.14) To Florix.phytec.de
 (172.25.0.13)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB3PEPF0000885F:EE_|DU0P195MB1819:EE_
X-MS-Office365-Filtering-Correlation-Id: d09099ad-529b-41af-53d0-08dd78e10e55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?BYPAiLiUXlcgpCNhXv24MFvuVwzdXS8+AqkXV+5Az502hkese+5Gqhn/0lUr?=
 =?us-ascii?Q?U/hS1YEcB3NDEW059wanwUZOfvPmp7BH87HdnN31Hnsb4IYv4+zDcNhQkYW0?=
 =?us-ascii?Q?FibPtTnN+HAHoWJ5BxzanMmoYTPhYbd4I+cjQjyyMI9lnL4d26y13I430juY?=
 =?us-ascii?Q?F0aXA1NKlBkguIlkGhD1hsM8+SxAZDMfUWXbxYbKffg2zFVVGAPeQ5nykyck?=
 =?us-ascii?Q?Uvtj/5wQjlBhJZpILnAIPO2G5V0Wdo+mZT0jl0Q+BCcn2IrOE35P5GTH0Fok?=
 =?us-ascii?Q?dVLJhCggwQjL9udWXS8BIpVIXAEcrHoK9Wz9XV4vlq682Oz+tgRBBrfc/M4J?=
 =?us-ascii?Q?srpOFoCaNzj3Pdt1mbr17tF0tQwOShLlg21VZMizlT9fXD8zGp3/wqD0D87T?=
 =?us-ascii?Q?TH4g6vf4lYwnRDpkOXCsTn1HA8x+txe7DgZ6HrlDhNbZXKmTJRgdT4YruvDd?=
 =?us-ascii?Q?54mA5wUl6b+lN9IRDErbzW/Dir5ihcjtfxSY1khxQs38Vv6bGZJY7jHebDix?=
 =?us-ascii?Q?sZ/y6fxarsUNe295z4Aq0HsLiLIVCEP3X29VaPFrboriR3ulzG9ccDY1oniO?=
 =?us-ascii?Q?1GDGFyGRl7fKmzOZ90x3Gf+tTKVQ0hp6MoBQ7E/R0kvDfqTFMR/tg2jC6TGI?=
 =?us-ascii?Q?3xiL2P9xcZRI8LQ/TOtgxybVHh5i7g6DZ3GfvrQsiwI1SOaqaqyaLhtj/c3Z?=
 =?us-ascii?Q?VVfB5Cv/YGTPHfy653M49NB0BePh1uSYtxFAk0rCIf440I5lRc6v/nO0MirR?=
 =?us-ascii?Q?xeCerzHjn725NureWPpPAZtCZegETuyTkIHd14kuvjQC08eVxG6/Ja/Z9Eid?=
 =?us-ascii?Q?xOwDFCPq3PRpRR+0xAfXeJFscvgvHSWrJ9G0lNsyIiWCg7ph7LZ2+FYFu4IT?=
 =?us-ascii?Q?QBR+9QG2V0qlNMgZBIVpaPo94zPutfNQQ9C8ELz2o8zhtTde3JakuYByhAUP?=
 =?us-ascii?Q?akZPyyzbz7N67c1NNxYp/688bCAveCU5k23Tk9FMoCTr8KmiK5vAOqH/R8bO?=
 =?us-ascii?Q?30JKZNJ+lTmgijDrcSgWmyBFxpsmoJbkgmBv5SBDwNKdkMjU1OGTlbLIT4F/?=
 =?us-ascii?Q?5+AT1xRUQghc/YSMXEAmGSVLQO9TxXO1R9ahwUuqOIkaom2JJXK17EqL64bX?=
 =?us-ascii?Q?2QTGYCoLeBi6lMPY52LLG85lGiy1djxY4RB1XoKA5Y5lZeJF6fW92dr65BwU?=
 =?us-ascii?Q?z7cl6ySvGICizN1Pg+SUFWe1Z1SNaXJVQXMp+GL8mQb/KaxMMwU7xalw5prh?=
 =?us-ascii?Q?Me3CVKNNE9uxF308DjUTSxviAbv+uynXOy+rqYzfzcduJCW0m97Hfv4tlJMV?=
 =?us-ascii?Q?WB8LokWyat1msB/bYvrxLK6X/uuMgGbbYPud2ohzBCxLLz3OVy0igJ/ahvXs?=
 =?us-ascii?Q?tWPy9YkKTBQNaphpUKjZUsbef29liuEXIOtVtVLd276zXgOCLSqx8pd2vrOD?=
 =?us-ascii?Q?XYT0sSm/baeSuVD0xp3RQ8/s5nX+1IgqWfa1tDs35DLHEWP34Sk0VDXBcqs2?=
 =?us-ascii?Q?iCoVkrGD0BdgQPtZs3/gRepJOHVsG6ulK9MP?=
X-Forefront-Antispam-Report:
	CIP:91.26.50.189;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:Diagnostix.phytec.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700013);DIR:OUT;SFP:1102;
X-OriginatorOrg: phytec.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 10:10:15.9301
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d09099ad-529b-41af-53d0-08dd78e10e55
X-MS-Exchange-CrossTenant-Id: e609157c-80e2-446d-9be3-9c99c2399d29
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e609157c-80e2-446d-9be3-9c99c2399d29;Ip=[91.26.50.189];Helo=[Diagnostix.phytec.de]
X-MS-Exchange-CrossTenant-AuthSource:
	DB3PEPF0000885F.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0P195MB1819

Add devicetree bindings for the AM68x based phyCORE-AM68x/TDA4x SoM
and the phyBOARD-Izar carrier board.

Signed-off-by: Dominik Haller <d.haller@phytec.de>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 18f155cd06c8..a03fdb9c0482 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -135,6 +135,8 @@ properties:
       - description: K3 J721s2 SoC
         items:
           - enum:
+              - phytec,am68-phyboard-izar
+              - phytec,am68-phycore-som
               - ti,am68-sk
               - ti,j721s2-evm
           - const: ti,j721s2
-- 
2.43.0


