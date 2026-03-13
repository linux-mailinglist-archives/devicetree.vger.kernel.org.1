Return-Path: <devicetree+bounces-275324-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOhlFGAetGlLhQAAu9opvQ
	(envelope-from <devicetree+bounces-275324-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:25:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC66B284E5B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:25:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B79EB30B020E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39293A2558;
	Fri, 13 Mar 2026 14:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="XwvjEXiw";
	dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b="XwvjEXiw"
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11023085.outbound.protection.outlook.com [40.107.159.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E9637DEB7;
	Fri, 13 Mar 2026 14:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.85
ARC-Seal:i=3; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773411666; cv=fail; b=iXh2mp63aZd9934U5VgshSMEJRquyu6fnECj4c9bCrYjR4w2HF3uwZitm5WAUcrRNyf+ay0oCqs3RVnxo93+HVheDO9mNIfN4pOvU53eqMKE/7Z4vAa21vBGO0IcZskXUsFSvWTOXQyi9IRovHLKVc8xJ5aTkLY6sfyKhXR1ko8=
ARC-Message-Signature:i=3; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773411666; c=relaxed/simple;
	bh=gNqWp6HjUclyO5e+/01fBayDkGWloAOBsI4YZXuKfdY=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=cAC5ocHJ5joA80pRpt6tHxDSaQZ8L0VV2oFuHLzU4EXHyX+sY55KliUcP8+v1dBnjLlGx9WZVD5kt5Onj7Kkw9DF6uyEUGPB9+tWa2BSx5wabYbznRSgTnrrC4+r5lId0fSn2/bOuWaaRP5D+MDtxazPpmzjr00/HKQFooBqxcU=
ARC-Authentication-Results:i=3; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com; spf=pass smtp.mailfrom=solid-run.com; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=XwvjEXiw; dkim=pass (1024-bit key) header.d=solidrn.onmicrosoft.com header.i=@solidrn.onmicrosoft.com header.b=XwvjEXiw; arc=fail smtp.client-ip=40.107.159.85
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=solid-run.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=solid-run.com
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=g+HaJchQQQPwSO3Oqj0G/9rMbQhV3kVRZhbfHEqhs6HnCJRcdUGQ7UxgJK/96wEqqKgoOQ/dOltGPiK79BNUEq6WqPTZ0JooRIzQ9KrRRHjww/u+Q3xz65zWAoAjlnttiJCnf9toelTEYEpLKgJMFinVF9vcEMw9rdfi8duZAvklG3LkfR9qzEC7iTn6QmkRoWjeMc+ekiW3B7aXmVoobNWgZ4AUHn0hzvoTd1Ng134vVqo8qPYyMR/8TkKlbYcj4+rX4cDdA6cpQTJiWgQyYaHzWwATGQhOQaQNeVd6cB9bASHjMu0tUojtz8mktvGZtBZnNQjB9fIqXfZtKT3Zrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GQIkXSJhtJ6xBhVgj0RuJr/y/DiXOqgtb6pbNpKFshs=;
 b=BCV2q3ydiDJX0JgdsiIVP6X5whiOZV5uwEh6noew7N7LM1pKrRljR0dl4Ha0+MhcN5NXRZT6ViSgnYIaNyEccw2MXZRUOhMnERSouIfrqPC7zms+HSVRffCpiS3O44EctnG9mhaiForQEW5S+nmxpWznN7XLjYJCIVWChqevFBaOqQ2SHvG0+Gw5kgClnH484Z98h+0X0q9641s4+iijQE+IZuUYlToty9xLqk8T+4f4b8FVy55/2fNhbP97wqFVdYHU25Nn40Sqc10JXqVKyJE+fpOd7cOGPdApDrZapvcNg1Psqui6uTvb6nqVTy5/B2lSC4DZ0mhz7iaZg4kH8A==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=softfail (sender ip
 is 52.17.62.50) smtp.rcpttodomain=kernel.org smtp.mailfrom=solid-run.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=solid-run.com;
 dkim=pass (signature was verified) header.d=solidrn.onmicrosoft.com; arc=pass
 (0 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=solid-run.com]
 dkim=[1,1,header.d=solid-run.com] dmarc=[1,1,header.from=solid-run.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GQIkXSJhtJ6xBhVgj0RuJr/y/DiXOqgtb6pbNpKFshs=;
 b=XwvjEXiw37lOVy45k15G0rwNPe6t26m0HWpwtvQ3w6iqqzOB7PbmpScqHhbGftOzYBkv0mLwNeji0KmE10as12YNoDQGrkXmHO35wmE83c529yfQrZ4twK9cnn3EPE6hle1jjJSkKIFB0xZsG/CPf5OicXn+8rfZI6PJdmQC0tE=
Received: from DUZPR01CA0010.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::12) by AMDPR04MB11606.eurprd04.prod.outlook.com
 (2603:10a6:20b:71f::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.17; Fri, 13 Mar
 2026 14:20:56 +0000
Received: from DB5PEPF00014B88.eurprd02.prod.outlook.com
 (2603:10a6:10:3c3:cafe::a) by DUZPR01CA0010.outlook.office365.com
 (2603:10a6:10:3c3::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.27 via Frontend Transport; Fri,
 13 Mar 2026 14:20:56 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 52.17.62.50)
 smtp.mailfrom=solid-run.com; dkim=pass (signature was verified)
 header.d=solidrn.onmicrosoft.com;dmarc=fail action=none
 header.from=solid-run.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 solid-run.com discourages use of 52.17.62.50 as permitted sender)
Received: from eu-dlp.cloud-sec-av.com (52.17.62.50) by
 DB5PEPF00014B88.mail.protection.outlook.com (10.167.8.196) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9700.17
 via Frontend Transport; Fri, 13 Mar 2026 14:21:01 +0000
Received: from emails-1573246-12-mt-prod-cp-eu-2.checkpointcloudsec.com (ip-10-20-5-180.eu-west-1.compute.internal [10.20.5.180])
	by mta-outgoing-dlp-670-mt-prod-cp-eu-2.checkpointcloudsec.com (Postfix) with ESMTPS id 3E0C180CAF;
	Fri, 13 Mar 2026 14:21:01 +0000 (UTC)
X-Mailbox-Line: From b'josua@solid-run.com' Fri Mar 13 14:20:56 2026
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nErfQVugX1Va3CF1fRIs1vEl+3XlAWTYy9lnYDipPBe3wheXOO01e+NK5v0escD8gx+VPbHxVujmEWDji3UnT/xrLExOUx4M8qZAWRzHg10kJNM4nr4T/RucWhsKuKcGEaykSYG8ZFnB1MJiMF6CD6BKOUl/DZiCR+4NJ/+SV7WhR4GWj14HeBZ4AczrpJR6IgxBeGPqA8P7haNQZcrRU4jlMMcXO0MhNPYUYgz78SwFJics0nwAI3vKGsGrabx0HRcYXSKuYasjZOQgz4B3XtYRxPhJQcOluLpgjmcXwKbYqs/BqSNUDbFcE/GXn76tBZ5eJu9PHpp8/SCr0dnywg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GQIkXSJhtJ6xBhVgj0RuJr/y/DiXOqgtb6pbNpKFshs=;
 b=ojgkguUo5vHWffB0pVYmmm/BN6pbOZe3SOI7R27K1jgH3QTgnysDc2E/2GiR2jgc9UyUegbVyOzGAJAxY1meuyMBc1RdX4gQykW1Sldcoco+jvpaK5PIZjVglC3yb7XqJDFq53BJLa8gVASvGUpSpGyHowcDicoLBiI0V+slq5kxZbKbbI4PL/zwOB3OwpZtQCnhtCwIQ3n8xqApPOQ258lqkrrnLwVF9Uu0X3FFtLXvi/T1my4AsumZEJKJuMT7XeBtSDgv06zuIz1mYP8S0xvUi7Pr650U5DOZYnrBvuZUCujgJq3KvfcCRfej2XZPo7x4WGqgLnBfBIkVswam0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=solid-run.com; dmarc=pass action=none
 header.from=solid-run.com; dkim=pass header.d=solid-run.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=solidrn.onmicrosoft.com; s=selector1-solidrn-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GQIkXSJhtJ6xBhVgj0RuJr/y/DiXOqgtb6pbNpKFshs=;
 b=XwvjEXiw37lOVy45k15G0rwNPe6t26m0HWpwtvQ3w6iqqzOB7PbmpScqHhbGftOzYBkv0mLwNeji0KmE10as12YNoDQGrkXmHO35wmE83c529yfQrZ4twK9cnn3EPE6hle1jjJSkKIFB0xZsG/CPf5OicXn+8rfZI6PJdmQC0tE=
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=solid-run.com;
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com (2603:10a6:102:21f::22)
 by AM9PR04MB8355.eurprd04.prod.outlook.com (2603:10a6:20b:3b7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.12; Fri, 13 Mar
 2026 14:20:51 +0000
Received: from PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1]) by PAXPR04MB8749.eurprd04.prod.outlook.com
 ([fe80::d782:fbb2:be9a:43f1%3]) with mapi id 15.20.9700.015; Fri, 13 Mar 2026
 14:20:39 +0000
From: Josua Mayer <josua@solid-run.com>
Date: Fri, 13 Mar 2026 15:20:46 +0100
Subject: [PATCH v4 05/10] arm64: dts: lx2160a: add sda gpio references for
 i2c bus recovery
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-lx2160-sd-cd-v4-5-aabcf230fbff@solid-run.com>
References: <20260313-lx2160-sd-cd-v4-0-aabcf230fbff@solid-run.com>
In-Reply-To: <20260313-lx2160-sd-cd-v4-0-aabcf230fbff@solid-run.com>
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
X-ClientProxiedBy: FR4P281CA0020.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::18) To PAXPR04MB8749.eurprd04.prod.outlook.com
 (2603:10a6:102:21f::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic:
	PAXPR04MB8749:EE_|AM9PR04MB8355:EE_|DB5PEPF00014B88:EE_|AMDPR04MB11606:EE_
X-MS-Office365-Filtering-Correlation-Id: c6ddfb54-b987-4d3d-a188-08de810bc0e1
X-CLOUD-SEC-AV-Info: solidrun,office365_emails,sent,inline
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted:
 BCL:0;ARA:13230040|1800799024|52116014|376014|366016|38350700014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info-Original:
 6U8dHiJPAmRCmMGVdX3nLdZB+vAOIpsMbbDDzw3QxGVmkCvbI0fS0+VY0VqMQk3thEGfI+Ulvya+1JiRWB5de3VsJQphXzttPXRwShXxvJIQDnyv1P4P4jsKjuCbrE3hcN8jvrkMlf3c5dyMmxe+Lwt0wgl+CZWFfYiqHl59k/vcVHv4r1UiYpNl4eonQh9nf4pFSTSYOCYNkU5wy9Na4NiK8NcI3eDrJLs/x32Y6C/NRS16xE+EXoeHEV55w6EFOxWS88AZi13AjoEHHOE9IDvFrTLZpSL0njpEcvybsFll25Pa5fJLXJIzWjRpuf764hRKnwzy9FGrh3vsnwu9dTOoJMDSRTEeUhQp8k8EmwTGCK1l6UJpSH1wqqzJGRJxbcmXZZCtYsjcQ5Fosbb1PYkNr5ZdgnvllEqyuRKOacJe8Hvk74Vr2PzxnLyj+4U1DiqJqGA3qHvem8s1bF15A4Qlawtvy2mL6bquJ8BQQ7OgWHDmdKEqM0jigfDBTDtvrt68mHCszUz8IHk0g/8nTBAOM23ukTRGI9NGphf5aLoxAH5pP+5PRcP+8aEL71rzlPKgjRTUFr9fCuamqy3se83Tm1KrriP+LBposUXsD9Pb6NLQIM8XRn1I8eatIYgnhMGa2DQo9mPLj4GYS/ke3cTO6zWgNoWOXr1svWGiwtHq+pPSslwqKFAqYsI203Ar1J8yWCvyDM5n/q3ejPaX/F3bJrSh2+8XWMihgvcrDtDkFZXkabGIDwOsfxNGxkYkYI01y3voonL/eZcCCxY/cze1uAXMhfufFkyHgeSzg+Y=
X-Forefront-Antispam-Report-Untrusted:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8749.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(366016)(38350700014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
X-Exchange-RoutingPolicyChecked:
 SCcxGPyhfLndILP3krK6Y4ae2DmNr2kNqiNu+JxeoIChkRDa+JBPJudpyW0kmaYBe75sUKTKzLJ38yQRW17oUTx2UTkkw0SyoOC+w8ujPNstpqPKcFa+bbY+1jrj2lQ07TU+8C749WDUis2PLB7PdiluzkXGzYhayyLOovh3A2/b8RfjcwLevIb8x5xtJ5nbYC7E1tcpbDR2sniUW6LF5Eyo1902eYIWF4JyvoPU+HeEFd2ZrFFnbe1t3gqA9SMv4o/iIB8cBnTA7nR0dxj2GwN0YpMFLIHxr4S9GPooF4JO8S/N3+Lqx73TorXZEE8Sr5PAsNz0S5FTtMwixQBg8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8355
X-CLOUD-SEC-AV-INT-Relay: sent<mta-outgoing-dlp-mt-prod-cp-eu-2.checkpointcloudsec.com>
X-CLOUD-SEC-AV-UUID: ab2ed4c28cbd4b22b173cb673f84a274:solidrun,office365_emails,sent,inline:63fc3aa5d97fb79fbbc6fc70877a80c6
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped:
 DB5PEPF00014B88.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs:
	b9de58ba-2928-404c-363e-08de810bb38f
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|35042699022|82310400026|36860700016|376014|14060799003|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	hGQondH663JutYNOS/mSmTCRsanVZvrLlXI8aecVVUyNbFlpo7eaPVNcInrCcKkFpUVeYzu7N3RfuDo/hBPOtApYq+9PO5tRjljXsbRg+kZ6MMd8kEIgY+LoFp7piA3h6GyUFIbEvdPrcuIqDqHQUFbygRxCpm0rqr5f23GhR67LsUUo3DRT38YN9kg3dukyp1RuUzM0cNzovcjSCMMNvU4YJPhUAP3b5RhJzwVPu/0qHJV620es6GqN5mPNQwSeuyh7gNooabRkYdPLiVUBpV6RCleqCv2HAGmLQVDMslpj6sorjr+wedmZD/MJ/a3V2l92W+rqkA0VMOHvMrprrdTfXw2SNK5cbR8UqLIM637umVH6cWFg3vqoGz2vwmCGNKf+0+6i2iS8JbLJmUsiexLANu1/N/rbAV/P+Fspw/bVcM1cU0HL5Xi9MunrRg5Ldq9onHdVjZH82bP3rX/JhN6NNNbdBtPZxBtonVrnpoVOebjpPeF4AlKuKoHLYp15tTVRTMI9/puojYEmxTfIeW42lnmk1ANBVnVQ+GG36E9kepDnxK0LLVWe+2lPn5olwjCXEP3G4Mo8wxM2D86Tg+GYz86ayjI7HaC5YM8kd4Jy/zFfyv5jXI3TnFWxWgnaKYxtYqI8mKbKEttLQhtxOMjUqQ51Ht2K24k0JLHW2C5DidGdHy+XGYv3lMZuuTZi9DATTdQDK/2UKghA/6XBF3ur/y8E+vz1dIGvrCnrnfqZn6Zu4s/bU1ZtMqkcfdCTRB4yV7QcPAWiDZbR/NSH8A==
X-Forefront-Antispam-Report:
	CIP:52.17.62.50;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:eu-dlp.cloud-sec-av.com;PTR:eu-dlp.cloud-sec-av.com;CAT:NONE;SFS:(13230040)(1800799024)(35042699022)(82310400026)(36860700016)(376014)(14060799003)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	hd1vPRPOLFnUYwlkbXRqz226sXVqZrkp3fNgRDIgPERDw05dV3bd5qeW4fy4WpCOTbQEZQUsLqzJY8jwRHV8Kt2I5gU3XmiDS9XO6yhu8wAdqrBpuFjcHhs+dzvv78xl1uzoNfeCTmfuj4foTrmfnT3pqPYM498RXLWEog5FXcExpn2UIsDjnD5TOXUi8mt5RI7LTcjwu5GX1FE2Y6VijfXUGtmb8hMuRQGVCzxta5/0eZ1zeiL7/TUFRnbGk6iKpAANBYpTBWD81k1bYYlBEbzroO7O2ULd1aCR2GyY+umlaUABH7dp4s4JTidj11KqBu1rzk2lVYPF6oYoiRt4LPNsjzt9osSvDHWbIVop0dTMLbBplCGf0JW9qG2Eg+VpscGs961YwozyphvCOzlULHs6PiXyOyDrnFijTMQGJaWksG5W+3F2Ewu7d16fN1qP
X-OriginatorOrg: solid-run.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 14:21:01.3292
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c6ddfb54-b987-4d3d-a188-08de810bc0e1
X-MS-Exchange-CrossTenant-Id: a4a8aaf3-fd27-4e27-add2-604707ce5b82
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a4a8aaf3-fd27-4e27-add2-604707ce5b82;Ip=[52.17.62.50];Helo=[eu-dlp.cloud-sec-av.com]
X-MS-Exchange-CrossTenant-AuthSource:
	DB5PEPF00014B88.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMDPR04MB11606
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[solidrn.onmicrosoft.com:s=selector1-solidrn-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[solid-run.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275324-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.31.71.208:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,solid-run.com:email,solid-run.com:mid,0.31.110.224:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[solidrn.onmicrosoft.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[josua@solid-run.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.31.149.240:email,0.30.249.176:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BC66B284E5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

LX2160A pinmux is done in groups by various length bitfields within
configuration registers.

In particular i2c sda/scl pins are always configured together. Therefore
bus recovery may control both sda and scl.

When pinmux nodes and bus recovery was enabled originally for LX2160,
only the scl-gpios were added to the i2c controller nodes.

Add references to sda-gpios for each i2c controller.

Fixes: 8a1365c7bbc1 ("arm64: dts: lx2160a: add pinmux and i2c gpio to support bus recovery")
Signed-off-by: Josua Mayer <josua@solid-run.com>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 28500e8873909..a7fcfb7339f1d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -753,6 +753,7 @@ i2c0: i2c@2000000 {
 			pinctrl-0 = <&i2c0_pins>;
 			pinctrl-1 = <&gpio0_3_2_pins>;
 			scl-gpios = <&gpio0 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+			sda-gpios = <&gpio0 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
 
@@ -769,6 +770,7 @@ i2c1: i2c@2010000 {
 			pinctrl-0 = <&i2c1_pins>;
 			pinctrl-1 = <&gpio0_31_30_pins>;
 			scl-gpios = <&gpio0 31 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+			sda-gpios = <&gpio0 30 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
 
@@ -785,6 +787,7 @@ i2c2: i2c@2020000 {
 			pinctrl-0 = <&i2c2_pins>;
 			pinctrl-1 = <&gpio0_29_28_pins>;
 			scl-gpios = <&gpio0 29 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+			sda-gpios = <&gpio0 28 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
 
@@ -801,6 +804,7 @@ i2c3: i2c@2030000 {
 			pinctrl-0 = <&i2c3_pins>;
 			pinctrl-1 = <&gpio0_27_26_pins>;
 			scl-gpios = <&gpio0 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+			sda-gpios = <&gpio0 26 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
 
@@ -817,6 +821,7 @@ i2c4: i2c@2040000 {
 			pinctrl-0 = <&i2c4_pins>;
 			pinctrl-1 = <&gpio0_25_24_pins>;
 			scl-gpios = <&gpio0 25 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+			sda-gpios = <&gpio0 24 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
 
@@ -833,6 +838,7 @@ i2c5: i2c@2050000 {
 			pinctrl-0 = <&i2c5_pins>;
 			pinctrl-1 = <&gpio0_23_22_pins>;
 			scl-gpios = <&gpio0 23 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+			sda-gpios = <&gpio0 22 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
 
@@ -849,6 +855,7 @@ i2c6: i2c@2060000 {
 			pinctrl-0 = <&i2c6_i2c7_pins>;
 			pinctrl-1 = <&gpio1_18_15_pins>;
 			scl-gpios = <&gpio1 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+			sda-gpios = <&gpio1 15 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
 
@@ -865,6 +872,7 @@ i2c7: i2c@2070000 {
 			pinctrl-0 = <&i2c6_i2c7_pins>;
 			pinctrl-1 = <&gpio1_18_15_pins>;
 			scl-gpios = <&gpio1 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+			sda-gpios = <&gpio0 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 			status = "disabled";
 		};
 

-- 
2.51.0


