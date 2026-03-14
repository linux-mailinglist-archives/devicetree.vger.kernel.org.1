Return-Path: <devicetree+bounces-275683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBXdLxVPtWm8zAAAu9opvQ
	(envelope-from <devicetree+bounces-275683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:05:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FE628CFC9
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 13:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D307C300B45A
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 12:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B31EC2D6E4B;
	Sat, 14 Mar 2026 12:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="OoL0iPNs";
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="OoL0iPNs"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11023143.outbound.protection.outlook.com [40.107.159.143])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4493B2BEC5F;
	Sat, 14 Mar 2026 12:05:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.143
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773489936; cv=fail; b=u+yd9CzyZT8TzGL828R7bSqkMl46JLi5tYjfS0zSQLFDJFpBTaXaZtg8EI1ol3C1U+fAH2Qy42sjDjVy5hyfJN1/ytaHdFyyTuI+Lioeg4qJiW5snkufkRZ5Fxi0dbC9PX5IcbBJfR0ZINlwbFWGxM2T2vE0roAB1gzSKA7/lpI=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773489936; c=relaxed/simple;
	bh=lK5xeHsrowh374LV8db2yJZQlVmGIom6oHjp3MovXdg=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=qBKGInSGcfM9G2bXkrj+1GojOBPl+Xy6lCm7eeCwreUxCRZ6myohDvM3L2lTx1vGvrHjz/lCzoDDWXorMvcI92HA3OuWKNtZRdLkNUBC/jBLrEWUtwc2A7p5WJN5j5iNkl9/EmvrUmpZVF9SOqVO38cbtjo/9/rKMyXDoqaEZvE=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com; spf=pass smtp.mailfrom=solid-run.com; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=OoL0iPNs; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=OoL0iPNs; arc=fail smtp.client-ip=40.107.159.143
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=solid-run.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=Wf7MhIc7SxQHc2PdiGwptKwP5jiQJcyiyGtxJahp8LozRZUubmUgQPu68CweCTmmCd7hT/tCSsXiEBa2jGDdQboudEFdv5dZJG8Q3NFM71/0FgsAGOsx3erX1amjfdCEDFzmHcQoDiGZrCuobkc/UHKehIf8B+Y1vo30czUudv7X/8xQgPcKSGVRXAPeeasxfy38bwhd5kD08qTdEmclFUCo7CrdSnnW2erkM2KIfYtj1PPLG4eSLGm5/3BZliDy7ZHg2PcNTJVUDR3tdwyqnjRa56tqU2a41E7LximqHCLc2TsuMpaY3DTz5547rhwm5BZkcm1BIZzOheVxdOLHow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EtdicxhQZQful002p2FPiQBhzzSIOaWfLVbVVk+xlGs=;
 b=g6kNvfQbxXniCaUH5xBtw7qf7hK9gBO9vfgb3xr1IFjYcryb8aQS373V/fUkMGu3mSwyArMlRqCFyEFDTMowIYKyatBf269h6/UPsd4mNodUD5/d8PRslAF9PJIyfIGkXvJ81AQkhQTLl99D5cAOOoYhQ/o9ORi8/aV83ONVzwzc3G42X6uPCyL6pIrrjAMumVpM3w/01hnSCowUv5c/Ohr44HyjzVQriRn5LDhfq8yzDbDJnQdchkZZH5F3J8pAKc32AFYBR8CPTbj5TP/TKOYD53al5ooPI7WO/IY3FaQgUa4wNf2vLc57Ty3ucXYnPWDWPsrzIsqZ1iDYR6cwIQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EtdicxhQZQful002p2FPiQBhzzSIOaWfLVbVVk+xlGs=;
 b=OoL0iPNsIyBeGyAJr4uko9CA9DTEXYnntexFEib3fTM1gKvWYZ0KAnxsMFhGDjD7pq3TUvnCn0VY/wjE4WwnV0seyLmjHnzWXGksBNj6lzzE6btnGg+B9qugj6V2RIC4GQDEwYpBT+baUXUeT6QgFiB3VEAP5/arknTdYmpVfZc=
Received: from DU7P194CA0021.EURP194.PROD.OUTLOOK.COM (2603:10a6:10:553::27)
 by DB9PR04MB8251.eurprd04.prod.outlook.com (2603:10a6:10:24f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.19; Sat, 14 Mar
 2026 12:05:26 +0000
Received: from DU2PEPF00028D0A.eurprd03.prod.outlook.com
 (2603:10a6:10:553:cafe::85) by DU7P194CA0021.outlook.office365.com
 (2603:10a6:10:553::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.17 via Frontend Transport; Sat,
 14 Mar 2026 12:05:32 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DU2PEPF00028D0A.mail.protection.outlook.com (10.167.242.170) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.18
 via Frontend Transport; Sat, 14 Mar 2026 12:05:31 +0000
Received: from emails-2311019-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-180.eu-west-1.compute.internal [10.20.5.180])
	by mta-outgoing-dlp-862-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id D061D7FF38;
	Sat, 14 Mar 2026 12:05:31 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Sat Mar 14 12:05:23 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yunyfhtJyMyN07fRDJrtfBHltvLX+Ws6v8FRFrzmcHRs0DJaljhoVpwa+cUZdoUTPTqXPatzGjhivvhi7XXC/h+11pE+95trnkd2P2YK5UbP68RNo7WxK2TijATU5c+/L9Kg1jW5U1HDYYCNsPBSo2+n3A8mMngvVDiIvXSG1RdAz0jbdDngfspraU9IX+zuH/2Ip/C7w46buBUpOY2huiApgll2clCREBogdvSiDPd27hp/VKf9qOIoUFMGNef/hOrrACnNUOudYPWuJMDtp6/naYXDh7x45CK1uKtS9JZ4WMAd5Y/wNcxKCO3GQX/xa+ODNOJoNFsqc0JLgU2dOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EtdicxhQZQful002p2FPiQBhzzSIOaWfLVbVVk+xlGs=;
 b=TydYE2eb0SRj74FQVD1BAJbTQO9YloZwcaYUflBCHBp9mhCcG1V5Fe5+5dmn2uJ8z+jBaBWG6IcYeWgZ3OQNK/Bdnllzwwa+tG7dUDsYEhcwuY7YX0e/zbZetx36o6WXHEsuCyaPXNKpUx9rCheK/Rd5sUIVJ0GMGe05bKCNxKWVl4gsGfxyX6te3NuXmTuqrKp2yxcRq83ZE/mr1iw0zchZjhqUA9qKFUdS/4n6D9B5PvcbvWfqQDG32/yR+4U0D7t+DoiztTnERiNOyEObbKpI2Dxv7ZXkqdDF/qvUxD9cUJO7WvkRkMtTO2qxtoMxfrbrROzK+1jjtXM/RjX5Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EtdicxhQZQful002p2FPiQBhzzSIOaWfLVbVVk+xlGs=;
 b=OoL0iPNsIyBeGyAJr4uko9CA9DTEXYnntexFEib3fTM1gKvWYZ0KAnxsMFhGDjD7pq3TUvnCn0VY/wjE4WwnV0seyLmjHnzWXGksBNj6lzzE6btnGg+B9qugj6V2RIC4GQDEwYpBT+baUXUeT6QgFiB3VEAP5/arknTdYmpVfZc=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by AM7PR04MB6805.eurprd04.prod.outlook.com (2603:10a6:20b:dc::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.18; Sat, 14 Mar
 2026 12:05:01 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9700.015; Sat, 14 Mar 2026
 12:05:01 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Sat, 14 Mar 2026 13:05:12 +0100
Subject: [PATCH v5 02/10] arm64: dts: lx2160a: change i2c0 (iic1) pinmux
 mask to one bit
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260314-lx2160-sd-cd-v5-2-83de721585e3@solid-run.com>
References: <20260314-lx2160-sd-cd-v5-0-83de721585e3@solid-run.com>
In-Reply-To: <20260314-lx2160-sd-cd-v5-0-83de721585e3@solid-run.com>
To: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Carlos Song <carlos.song@nxp.com>
Cc: Mikhail Anikin <mikhail.anikin@solid-run.com>, 
 Yazan Shhady <yazan.shhady@solid-run.com>, 
 Rabeeh Khoury <rabeeh@solid-run.com>, Frank Li <frank.li@nxp.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Josua Mayer <josua@solid-run.com>
X-Mailer: b4 0.14.3
X-ClientProxiedBy: FR4P281CA0184.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::19) To PAXPR04MB8749.eurprd04.prod.outlook.com
 (2603:10a6:102:21f::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic:
	PAXPR04MB8749:EE_|AM7PR04MB6805:EE_|DU2PEPF00028D0A:EE_|DB9PR04MB8251:EE_
X-MS-Office365-Filtering-Correlation-Id: 45c1f94c-83b7-4ced-0b28-08de81c1fdcd
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|366016|1800799024|376014|52116014|22082099003|18002099003|56012099003|38350700014;
X-Microsoft-Antispam-Message-Info-Original:
 6dcLhOvxHOqadz+c5RmCgckyTIWYjt+lTDhv+2RyMXN5rCVASLzaOiK2bLUvt3u+Yuk5pl3PitJkZVglY7K0azGJEEQWih+UCa96sAHbM8n/tgb9yUWCWZ3ahRDf4BQauab4cFY2GT1KqdcxgI7LwdybrPC4jmvx6RZoAbQnlFWQr6oLI8GwOVH3NtrK8LrHsd07cAMdD05r1cucGcpGZusOtttz/fQIpsV4GjZJQ6amPGJQyOHOztcW1v7p/sW3rmT+btsE7TlaEuELjS9szh0jiEF9CTwhOL2L/9dWmguSylRDTmrOVbGim+8J4M1kBm/EFMMkQT0E1PVZx/xmoU6Xfao0FEHcj0SGK0+Guwhuo7UxVHgOeYaqVtKglh5LI31h0F/G2dtDcoRJEePj5xo/S9B7cCYiyis1joQq5D9Rq+9UkrdT1D0ccjPgvbDQt9D+lc0CAKpn4w7b1nXyUBzu7q3YCYMGWLkVotbqhRTchBwFP4OPxA8MEfXF622VveIPMl60CRhydMXrGGsBsNARAnxK7vn7RzdiFd0QTusZ2aXvCNbsK0/z7zH1yuveEoY71y/dpkB8hFBhYY0eyqRNNEXTHyJgJ2nffUIi/pFeXrXV6xAq6jqCY8XRXPnZ/4P0aLhNC99Dzol0QjjDelPBscBSldNcR+p2hmEXQKcykIqY1rgOrhHv+6D8cc5SYV0OIdY0qhvLl9xN7c++JvLH/GKshOW9uQuXS8Cg3Tdqr1NvyPQDyWG5rzqrVtRfyf5LE9Sec+yjzc0wdlfbxpNfDnrTbB+ghZTu+Dhlxs0=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(52116014)(22082099003)(18002099003)(56012099003)(38350700014);DIR:OUT;SFP:1102;
X-Exchange-RoutingPolicyChecked:
 TiJ0X33cPp2UcaQZnIltgRezAv/OtzD5UUDeIRfZRfORiRR6yh7EYuZ41hHieomQeUBYPP2fpNXE1kvtqOC1bdcNLWg4mm4ptBso7ncn5UaMdOddrZAapjKyrplHDOwSLy+8lwT3dYELs0aCqJdP9KGT+WQsrhX57wyyvT4sOpUa4xWA6JeoC71u05bJFtUjCeAwBWt9BaNIJI91U1haPcS+pB4+yLhUk033Rx5MSzhwISFCAW9GItNN0nZXDHDrLDOq7wu1ub36WNNZB1K6TTpO9NECYuDQYAQ1l1qXPYYklZYLLFehJcXXN9WFRa21NuaedZNKi56S2ZQpg3etTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6805
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: f9ce3e2ab08d4a5298ad47b9b6b8b568:solidrun,office365_emails,sent,inline:e8a71b8ecf121745cfe4398c998083a7
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DU2PEPF00028D0A.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	a3a9b171-e683-421a-472e-08de81c1eb98
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|35042699022|376014|82310400026|36860700016|1800799024|14060799003|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	ecCXbI1biYhgXVqiG2ms+UbtIO7+HabD3gOzWSA08Hwz5xWimk6a9D+vLGguUcufkuyS7jmGytBo7W0EGBv/FrP7gvgqVOTbH1XMLYFKzKiI0ckF/0y+qDTyNMzvt6FTXU9k0Dk3BHzR1ZecatkBQVb+LEfsm8amaHWg9DyPmUPuQK2e0BRBWIMq9Tc/0S5PN2TOee3NqgYsu2sxx0iqgvLHPf9yLsCqY3WTTbDRMIIOtoWEyX7aNsf9D7liWgRC5qRZbNiNMLPXxJrOW7FkO9rbdiia49T1UdCAVdjlwWCbYXg3RiA6JCCGueN/Xt5qUx8b2E2m9LLWaBKiqW/xSgcW7yQCVb11YBsge3MApy1ESZZNu77cnJeVmc+HpCx+pBKpu+bMtIQDeZGIqjJ7hH/hV9us1A5txYPThz1WbiQAdVQsbWzRn+ZuPEPWkNaHTqfz6zCBxeR7I0VbGGs2hZVfkdOqnAeLbGH05FiXB7E5g+cxen6N1dflPqAOhmhrFR5wUSMzjrMPy/U3cKZGcrnFZdrVFQA8mgOH5sCRtHKprOtVroKvnlr0p73XuUY8zbCbdGK/IDnrwIR3ecCebDSg3d6rX3a0kgLTkC/Hy4jd9HhRc/YUv+WWiWeYbjadLjq0pEEJ6h1NzBY7BvEVddi7NT0N+7EX76y/sUmFNeJNhBuf/LqQ4cckGRGVm8hEerPBd5d/Qu5uVyZuWcQfSqUb7jOoH/8rAR5Nzj0Az4hIP89KDv3SFtdhCTxwpXl034gne9ERnihk89GNcs49nw==
X-Forefront-Antispam-Report:
	CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(35042699022)(376014)(82310400026)(36860700016)(1800799024)(14060799003)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	OubEnvSpSfo9TZxu+ID3okRDgBCtpt727CUxx8mtsAWmNYs7EJ0ZiI8GkSO/M0eUDGVxl56qSx3C5kM2Ge90jzvp8J5B5lfWCvfIqml6DwFCclY9V4pnqf34xefep5cbJ5f0zIsr7fiG3+oqyMpwdiUU+R4wdFJGDh7FpF2+4f0spOzZX5b28vWHCI6M0uNqj/wElbW3faoQHjKmx0r8cBK8zxHNNPVRUklwu4mzI8TpkCHmYFuabfr8KtYh2IxGTQkq+555MuYRy2tcvPBhdbcZ/hswPfwrYHsuWQC7bXg7U0dc2U2+BbFNniANLCfLIliL3RX54BYFI5SaCJekyoXXRu7zBoG1HNqpQUvq1OOTQd3BekkvsJRWWuPdxJqEUrT0dgw/EduqupJ+cGF6oT0Aers/RUIqlixu6xr3JAv70l6/u/YDQzqBi6Pla2vh
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2026 12:05:31.9497
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 45c1f94c-83b7-4ced-0b28-08de81c1fdcd
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DU2PEPF00028D0A.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8251
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=3];
	R_DKIM_ALLOW(-0.20)[solidrn.onmicrosoft.com:s=selector1-solidrn-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[solid-run.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275683-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[solid-run.com:email,solid-run.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,solidrn.onmicrosoft.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josua@solid-run.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[solidrn.onmicrosoft.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C7FE628CFC9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

LX2160A pinmux is done in groups by various length bitfields within
configuration registers.

The first i2c bus (called IIC1 in reference manual) is configured
through field IIC1_PMUX in register RCWSR14 bit 10 which is described in
the reference manual as a single bit, unlike the other i2c buses.

Change the bitmask for the pinmux nodes from 0x7 to 0x1 to ensure only
single bit is modified.

Further change the zero in the same line to hexadecimal format for
consistency.

This change is of cosmetic nature enforcing consistency with
documentation. There is no known issue when writing the extra two bits
marked in reference manual as reserved.

Fixes: 8a1365c7bbc1 ("arm64: dts: lx2160a: add pinmux and i2c gpio to support bus recovery")
Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index af74e77efabc5..d5bb55df03216 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -1794,11 +1794,11 @@ i2c7_scl_gpio: i2c7-scl-gpio-pins {
 			};
 
 			i2c0_scl: i2c0-scl-pins {
-				pinctrl-single,bits = <0x8 0 (0x7 << 10)>;
+				pinctrl-single,bits = <0x8 0x0 (0x1 << 10)>;
 			};
 
 			i2c0_scl_gpio: i2c0-scl-gpio-pins {
-				pinctrl-single,bits = <0x8 (0x1 << 10) (0x7 << 10)>;
+				pinctrl-single,bits = <0x8 (0x1 << 10) (0x1 << 10)>;
 			};
 		};
 

-- 
2.51.0


