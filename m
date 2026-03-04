Return-Path: <devicetree+bounces-270833-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLgWF0iZp2kCigAAu9opvQ
	(envelope-from <devicetree+bounces-270833-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:30:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F07D1F9E3C
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 03:30:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 785413055F8C
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 02:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24EC0199FAC;
	Wed,  4 Mar 2026 02:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="VyJP8w8Q"
X-Original-To: devicetree@vger.kernel.org
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012031.outbound.protection.outlook.com [52.101.43.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6533A1C9;
	Wed,  4 Mar 2026 02:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.43.31
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772591428; cv=fail; b=B4AMd17gzVCgtCtjSdpGA0MJIMDL5YqK4wxJAFZXp58gVAXAWT7Eg6yoZ4c/y9wBpxJXvE2eb+WazeYoeBDXTE9EQE1j5xni7ieQDvGeBSBcMC1q29PxISMZ1sigIYOSdUfoXfsjc1Rznn9sUNxFLxiFgAqxVte85Edu+NsblE4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772591428; c=relaxed/simple;
	bh=vKvWxPtvuUvAEWZnICauI1IE2dIILNOpOfyHTkV9lH4=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZPmc6WMqMoi4gytknPIqpsPy4fvd0pjIkgJieuwmarawyBYHkFvpXDn5QBSxRHga0j94gjoj3t1sBPHLJUScHAc668lYu5JPNBMQpO9GFyPAvpqu4oCKDyc/m8JYw2FQG1Uc2fRFkThhIf9ObH+4NzMAqEcke1jHG5/DTOEHirM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=VyJP8w8Q; arc=fail smtp.client-ip=52.101.43.31
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aE59lAEsrlq9dH0oUgyI837M+/hZMXII1XKIHz0e/PgLwZxxEergB6qC9CS6GqGy4XIDDdiQJSu/437U6ECP7z0K94oBKrspEwbP+zCMiffhrrpvzlpW9wJK5b476v9VXZI+LMt+3VnD/a9i4W5Lnc6i9aRSXjvx8SO+D4gNo567CLxbwD04G6L/Fq/Q7hdgB0/cN9JlVAd+8pp1MMslmdOQfZUxtPMpaOxustJXr7Q88KYMBBYPCJ/tW9lh9dvu4qGVk0fH82O8LNbZVC0+W7YP+nX2fycueQLLx+ovMtNGi6hfICt+ZvzR7ysYMMnJK/qsgd0nSCSo+kmg2UTKFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F/uzR9MCzKKxfvNEVVDdcaeCuFXbgdZTUkPL77/xCZA=;
 b=Aprpx1zFt/y6qzN+7kZ93cbQ/fu7EyRh0831Ce8zdVXpq+ivb0VCh7uQqx8ysVnpU0pu+46GuMVadfapOG/1fbpgPElsKWvo0AIZv3yoJ7FWznZtKivz/Efekb5Gmj461fTy60ly2twH4+bAa0k3v2PpXhzuShSiPrZw5UxPt47VM1qOUcJpkbhtSZAtbnLF0XUGygiFjrDG5J5UtK986MHQmlFqIvMwMEHtVWo2HFSjCL7QCiACNg5oV3nFHMLNmrNX1Ga5E54ES9aueRhBuMLK8tc9y3a/2UQ3k2uhN8+kjAGDC0mcXlQ1awv1pBJFJGnDh42SObt0LAInPpIsww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F/uzR9MCzKKxfvNEVVDdcaeCuFXbgdZTUkPL77/xCZA=;
 b=VyJP8w8QYPbSRi4LZ3sLK78SpKOKadiTn8CLh6LuzUkbNky2EiOfoiKz2my1Q6WEmZNxqk5OMaX0N/X1P5eY8+tPCw2t6MdoMRmk0DvPg1g5ipWWl3hKXeXk3NMN9/ZzUdyYcLv8XLCXR4IJiBeY50ehzo01BgmFSsUeUGLbkec=
Received: from CH0PR04CA0053.namprd04.prod.outlook.com (2603:10b6:610:77::28)
 by MW4PR10MB6584.namprd10.prod.outlook.com (2603:10b6:303:226::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 02:30:24 +0000
Received: from CH3PEPF00000015.namprd21.prod.outlook.com
 (2603:10b6:610:77:cafe::f8) by CH0PR04CA0053.outlook.office365.com
 (2603:10b6:610:77::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.22 via Frontend Transport; Wed,
 4 Mar 2026 02:30:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 CH3PEPF00000015.mail.protection.outlook.com (10.167.244.120) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.0 via Frontend Transport; Wed, 4 Mar 2026 02:30:21 +0000
Received: from DFLE206.ent.ti.com (10.64.6.64) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 3 Mar
 2026 20:30:15 -0600
Received: from DFLE211.ent.ti.com (10.64.6.69) by DFLE206.ent.ti.com
 (10.64.6.64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 3 Mar
 2026 20:30:15 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE211.ent.ti.com
 (10.64.6.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 3 Mar 2026 20:30:15 -0600
Received: from localhost ([10.249.48.175])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6242UEoo3235849;
	Tue, 3 Mar 2026 20:30:15 -0600
From: Hari Nagalla <hnagalla@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <kristo@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, Hari Nagalla <hnagalla@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am62-main: Correct PRU core IRAM size
Date: Tue, 3 Mar 2026 20:30:12 -0600
Message-ID: <20260304023012.20452-1-hnagalla@ti.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PEPF00000015:EE_|MW4PR10MB6584:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f088598-a04f-45a1-f7d6-08de7995fc01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|34020700016|376014|82310400026|36860700016;
X-Microsoft-Antispam-Message-Info:
	JReBpNZsps9iJaznnjZaYxgQfrLg/y32Kutc7zsdZXaN21jlxvOmehml5GnJBg91Lc5nGb2Qg6oE9HFiYy4qcJljatR9B0P7UeTq+6Bq+slFiOGq9/x0Az9P6sSd+1U5o69TPa/NZg1N4QfkK9qkrT24cuVpPjviv0edFg7O1iRrPmLf8o0VDYR4WL32NMeAxcf6MVyDzgj7Izxxanv0W27QtRt7LG2tJR9s2t9smAOdeQFmtpBlUzl7/OrhL6CkR0ucIZ9GVP/EUDVwFZeQGkOpKfsP3cz2GSlK63CuHdCc5JwQfvhE/ftQ2JVnvD2snl7yh8zeDFfMLQVkUGLUTSU4dZ8GHV9frWM7QHM9z3N8698tfwk8OhGfoX9Wg33krrdHqeb6hWqOxMjnG1vKy+hstr94zLIWc+R7nc6ZMrI5Chs3rb3ZIWC2sslXwgTWLXr5rW4e5mn/z4YGG95IUdhmIS2z/VNk1ytckwiIAR18YI5i+OGgZLfQTGJiuyZjGua04klnc4Ps3m8CLXa/Ia/YZ89XJEcZkEpdPCoFPvmcdqXHZ3MTWaTSvAVqwoFAUonWj49LrrMptucrhN/EUb0E62HA+adlVhu4juVdmSzjdKwAhx4X5lmwGCi230vkp65VvFJyG85SjYohqxRhZRb9JLDAI8bYswxWQPJD4yv6wBdEncmFlzvhxGsZpLoEMZsanfBr3gzRynNLPvcdSX6UFvprLtcQKaDAM+jRQjvrbNs6+VmrZnO+c7+fKKrY8ZTvuRqCmoV2etzEMthE7w==
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(34020700016)(376014)(82310400026)(36860700016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	tC1j8s0SPNlQPKnHKKRp6isIfTZjWK+M++YGnw7thX9v/hQZw4C7wJ8O/qpCQdDXDVHQ201USQUnTbxhPSW0dSgvR2ChtBoEWuXTitb0Z/PS1iZJNrSztVBCYBbshXCQIkkXaUrGpWSj8NyaQqp16IK22/K/U/olularq23gp+NWRc2VLY5lDmf18sxXn1/oZcSxsqTyRx4qXQLV0iO9hXVlLif2gKqoXUvlBOAw/ZQk6VA5liN6vk4XivJsMviPO3UFXmTKuOHhStLJPHR4fyZgkH8pcbr7NdG/1jh5tMxt7XXBgnxONeMHcopwPokWoraSsyIRq74b+yLXAX5KIjGhtfmT0vLT+QBjIB8Nv8c/YFT4f8it4SMt/W1lBBXZRNLHBZc6BLKePG3tICsPSnid+zh0fZnOwI/Z5Fd8aWBLzHxbpN7jnjleaNJLQXTr
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 02:30:21.7274
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f088598-a04f-45a1-f7d6-08de7995fc01
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH3PEPF00000015.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR10MB6584
X-Rspamd-Queue-Id: 8F07D1F9E3C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270833-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hnagalla@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.148.112:email];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.78.32:email,0.0.132.208:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Each PRU core in the AM62x PRU subsystem has 16KB of program memory.
Correct the PRU device tree node reg property accordingly.

AM625 data sheet : https://www.ti.com/lit/ds/symlink/am625.pdf

Signed-off-by: Hari Nagalla <hnagalla@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
index c5ee263d34a6..1bec89b1e378 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-main.dtsi
@@ -1213,7 +1213,7 @@ pruss_intc: interrupt-controller@20000 {
 
 		pru0: pru@34000 {
 			compatible = "ti,am625-pru";
-			reg = <0x34000 0x3000>,
+			reg = <0x34000 0x4000>,
 			      <0x22000 0x100>,
 			      <0x22400 0x100>;
 			reg-names = "iram", "control", "debug";
@@ -1225,7 +1225,7 @@ pru0: pru@34000 {
 
 		pru1: pru@38000 {
 			compatible = "ti,am625-pru";
-			reg = <0x38000 0x3000>,
+			reg = <0x38000 0x4000>,
 			      <0x24000 0x100>,
 			      <0x24400 0x100>;
 			reg-names = "iram", "control", "debug";
-- 
2.34.1


