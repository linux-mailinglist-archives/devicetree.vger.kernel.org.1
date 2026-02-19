Return-Path: <devicetree+bounces-266709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAoMF+Rnl2nfxwIAu9opvQ
	(envelope-from <devicetree+bounces-266709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 20:43:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C115F1621D8
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 20:43:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 22F673012535
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 19:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 842CA30BF75;
	Thu, 19 Feb 2026 19:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="MkIGl+Eh"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012037.outbound.protection.outlook.com [40.93.195.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264082D7DE2;
	Thu, 19 Feb 2026 19:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.195.37
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771530207; cv=fail; b=dqA3eY0ICNn9fij08NjkL0q4+IkFZH04DHcziY7ros/OU9TfFH9bZtQIz1yQAPySxBxkTu/K1+IuB4ZnJ7rdQ1dok9hHGagjtIilKPUTxe5hKgfOXWqjawG/2PR2V20EDXuaEnzzYonY86Hp6+3/bbcZjdhffo60rPCszIgeqt0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771530207; c=relaxed/simple;
	bh=cJB3MoLS01w43KZb5W7tupR/txJMqk/0orNJFFUQxsA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=GFBkwhqYCCmOlSuonP/Aiw5rfFrI99ebcTJNktHlT9YsbKZH6afLMu5L0F6bjjR4wuvGsa831KNNGay7n//sDPBNbGQGLkkss5dFh6uS09Vu7AslWbnty4Q7EQT4EYIMK9NPb3MnjS7frs6UqXe59Hd3pLzMisOIMXbmi/KJL4g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=MkIGl+Eh; arc=fail smtp.client-ip=40.93.195.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VoPGkJDuoviwbRs/TKAHy3ZWVfP5xs8eRyI5ri7jsjaAI758WCV1cI9AILV6f1T251j3AEUieSvC+MpTETyZP36Lhf+aGx4jL28wH1A0qsDRFGv7crgohxFQC2hOK6U/NGUp2kp/gfK781HFR0ZMFSIcIH+yKMYWs2V6PO9/vjycDX555EFfPgqeb4nlc0m6cV6bLSNYY9Qm4+GhOYfnNvqXvTLNGsXyWEpAJwBWuixU95UtHUNDYr3bMjDCC+9G+oVy2LqX8ZkfaS9qwZGKqY6pJwtJO4mMqyhWi2copn1jo6RT09NKlMnxYKMPViQkxaQL87IyTJhYtwLJf7Mi2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7+YFiy039GVSEQl6c0jvroYaNzpmaQb+Qolwc5ns+8s=;
 b=Jsa7gbLus1RnO9FFUmD4LBV0ohugbX7rrg91aKGj9va5E4CZu2rFKH3PXP7xqnHOMo4/vqj2BC7IENED5R9vaKSj14ovMRtaTmV5WSmmO4UxpHdtLPf8lIyvOtcaqB2IL6iFdEVvtPkUXVCGanAHROFwIIit1hWOIcmqd/hNeEmYrCe4ublcd/gkJZp4VUEYZbFjL/pv21C5dK8EQfQ8JBQmg1tL4diL2eOQs051dtYxHfBqkqId97v2rbdD/skrvVazcpZ5I9iOVWsZ1XYTJmSuFpMIOvOwGknBtS3TO4oiSiCeIlCwHhhlz+Ktqmg3/5xxi7c1pZ8c4M+/VUPb7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7+YFiy039GVSEQl6c0jvroYaNzpmaQb+Qolwc5ns+8s=;
 b=MkIGl+Eh8SY1X4lzwKxSy2fkgDh5wDz6KY7YwvPpqtUE9nODKF7jTbMjKf3FdrF/yEk1zwC0m2jLQnEIqPVdDVvAK7G3yNLR4pjIgcfToBoWinx1yNYOG4XBvvbvwncpVhZMnr9fOuXOVDSJcAJQVq2So713npbNQlz2NS0sQCU=
Received: from PH7P221CA0042.NAMP221.PROD.OUTLOOK.COM (2603:10b6:510:33c::10)
 by SA1PR10MB997714.namprd10.prod.outlook.com (2603:10b6:806:4be::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 19:43:24 +0000
Received: from CY4PEPF0000EE30.namprd05.prod.outlook.com
 (2603:10b6:510:33c:cafe::60) by PH7P221CA0042.outlook.office365.com
 (2603:10b6:510:33c::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.15 via Frontend Transport; Thu,
 19 Feb 2026 19:43:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 CY4PEPF0000EE30.mail.protection.outlook.com (10.167.242.36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Thu, 19 Feb 2026 19:43:24 +0000
Received: from DLEE202.ent.ti.com (157.170.170.77) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 19 Feb
 2026 13:43:21 -0600
Received: from DLEE210.ent.ti.com (157.170.170.112) by DLEE202.ent.ti.com
 (157.170.170.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 19 Feb
 2026 13:43:21 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE210.ent.ti.com
 (157.170.170.112) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 19 Feb 2026 13:43:21 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61JJhLBc2638942;
	Thu, 19 Feb 2026 13:43:21 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Thu, 19 Feb 2026 13:43:19 -0600
Subject: [PATCH v4 4/4] arm64: boot: dts: ti: k3-am62l3-evm: enable
 wkup_uart0_target node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260219-v6-19-wkup-uart-wakeup-v4-4-eda09dce5623@ti.com>
References: <20260219-v6-19-wkup-uart-wakeup-v4-0-eda09dce5623@ti.com>
In-Reply-To: <20260219-v6-19-wkup-uart-wakeup-v4-0-eda09dce5623@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Dhruva
 Gole" <d-gole@ti.com>, Bryan Brattlof <bb@ti.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kendall Willis <k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771530201; l=816;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=cJB3MoLS01w43KZb5W7tupR/txJMqk/0orNJFFUQxsA=;
 b=2b3BLu9M7ADUjR+apEiLyxvR+hXRCxIVIUeb7Olt6vwxj6vYvqn72JG8jzLzUF5U7Gn5QEcWx
 tOQXSiAPn4CCd5rmro0dVLFPhio9l6WO5dIt8ftmXyi0vDdNHukee7G
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000EE30:EE_|SA1PR10MB997714:EE_
X-MS-Office365-Filtering-Correlation-Id: 20b3103f-6241-40ee-364a-08de6fef24f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?U3VmRHArUGMxeUdJRjQ0OEpmTk5aVFN6QmU3NHFjSmRsRlIzZmFWaG8rY083?=
 =?utf-8?B?YjJHazAzazR2WDdoeTM1R3N4M2U1SVhJSTlCbFZ0b2pHSE1OM0o0VmdwN2tF?=
 =?utf-8?B?cUpHUFZvUWNBRVdadzZqQytycGEyQXdNRlFnTHhPbDdQdDBsS01sd0lUMkRN?=
 =?utf-8?B?U0lwa09aNmErdHZVbzk1Rzk0L1F0elRpT3dwRWR1Rk9iaThFajhLMWxxNVpl?=
 =?utf-8?B?SjhRS2Fwc2cwTHFWNit4dk5JNERGM0dxU1dpSnpKd0Jmd3Y3Z1JWUlBFQVNx?=
 =?utf-8?B?RXY4Z3Q5dzFIbGZpbzR1dTdaem9zWjg4TytZOGw0bEN0SzVLWFRudnY3S3BV?=
 =?utf-8?B?bHpqeVFEWS9VaFV3eTVmbzJ4QmZnczNXMnNEcjVwaUdDT2RNK3Z4bkVxd2hL?=
 =?utf-8?B?WHR4SUNUS3BnbjF6M2swN3FRMlpMdEcxeWR3Um14aitNQm0rM3MrQ2xwVkRE?=
 =?utf-8?B?MVd6OVUyd0xmYkJzN2ZrNkY0dEN3ZllraEJHS1V6WklyVzBDdTBEM3g4Q0pm?=
 =?utf-8?B?RGhmaG5ZTE1nM2ZCVVlqN2FrRzViQUNoN1Raa1Bic2xMZTh0ZlllLzlrN3dN?=
 =?utf-8?B?dGhNUzhDQ3JMV05yQkdub1VVMkprZUl4djJsZEZ3TlFHWXhJa0RYQWFDS3FU?=
 =?utf-8?B?UmpIajM4QWFsaTZCVTdYVEt3clpONVZlUFI0cm9Qb0ZBTkVCM3Z5MmdFU3N2?=
 =?utf-8?B?eVNlS3NvUWZENHdsSlNlSENjdVlmWHZ4Vy80SWExUW4wblNrbWJxeHhsZHJX?=
 =?utf-8?B?dnhtV1hPaVc5SktoZkZ4TG85Qms2MCtpcVhRZEtYUksxenJwU2tPeVJpc2dB?=
 =?utf-8?B?RnBKTkFzS3JyKzVkRCtDdE9rMWFKdWRoYkRuNGNWdkxocDJQR3dKWlhvcWNG?=
 =?utf-8?B?LzRQeVh2SUhJUzRtbno4V01lTUNKSXRncFVVT0M4UEdBVXhZUTJ2S2JoUmIw?=
 =?utf-8?B?N1gydTdHbjZIRFpkNlJvakM4Q0xoZGNLdlk1VjN2ajN2Z3JzNGJTUkZ2dEZx?=
 =?utf-8?B?Y1BGalZwN3ZvZDdBYmxIbjUwYnpHaDdLb2c2cVMyWFhzU2xqR1pvY2t0N3VI?=
 =?utf-8?B?d3BFUHdZSzFPZHp5VmdONDlpbTVtYkJCc2pLSktzNXBZRTNTU1Fxb0FjNkNQ?=
 =?utf-8?B?UzYwWWNmTDFIR1NZcnV3MUJxT1hFcXgya2tHY0FrQVM0bElGa1hoL2NzQU5D?=
 =?utf-8?B?OGtJTUt2cWpRVlBHMHdWQ09MQ3VKQ2pJemdKTnBSYWpaWHdpUlJsZ0xwRlRJ?=
 =?utf-8?B?ak1aWFdtdXE2elYwYTBFSi9DVDZ5VXIwU2QySC9uei9IQmJ1RjQ2c3phcjBV?=
 =?utf-8?B?WGZCV2dwbTVaR2NXU1ZDdkJ6T21tR0Y0VkxsRUhYaU5CeGNsdGI5b2FrYWVz?=
 =?utf-8?B?UVBLclA3YWdLTk9JbDhhWlR5aTFKV29aZEFBV29BNmZSWUhReFUybXFOdkR3?=
 =?utf-8?B?Z3BkbVNSUnVySUZLVXFDcWJMbytqWnE5SGpSTkhSOU1GZlRncjVZTG55YnQ1?=
 =?utf-8?B?NGRPVE94YVJxa0JTMnl2YWg0SUc2ekdZK04zamZLNFlaRjEwOGxBbUgydEJQ?=
 =?utf-8?B?Ulc2TzEvem9ZRndLblNGaWd3a0hKU3JjOUJmOTlCTlBPL1g4NzB1V215K1hq?=
 =?utf-8?B?Y3NmdEV0czNLMjh5c3pEY2lUTmdvS25hMGxFVWJzZ2o2eUkrems1NCt5VlBS?=
 =?utf-8?B?d0xyWHYwZGU5UXltSm53TW42VU1FWEloV2hXVkxjbUtVeCt4MlVKTWtMWCsx?=
 =?utf-8?B?NCtpdTV3VjFLUmpqSW50b0xPUTkwekVRYlJKT25VU2RueEZFTHh6djhQZVFq?=
 =?utf-8?B?ZjNKdnI0NWt3cVcySUhudmpxQ1d2V3RBblo2VCtMaUV5QTY2UWh2REpibkNK?=
 =?utf-8?B?RVVMeXBwL0xvQ0NmekR6YU9aL1ZaV3ZhTnlVVDdUblFZdks3blhWM3RKMkZH?=
 =?utf-8?B?a2o2KzVXNk8vdFYyQ2dRYlJEekl2UGVyL0E0TVhIcm8yNHZEdlVXRHNPZ0hF?=
 =?utf-8?B?YjIrdEVzcC9TbGtDcUIvUTNBSzNYYWoxZDYzNTY2WkFMYUtyTE5mcHdaY0FY?=
 =?utf-8?B?SjlQcVNJWWtSTVZ2QWhPblk0MmUxcUhhZDA1eWhtcnVSMWIxTmlHT29YTllY?=
 =?utf-8?B?QXhLM3FHalliWnoxKzNnblgraTk1OS9pY0ppdUlEZGJHbmdSWFFTQzkwNC9F?=
 =?utf-8?B?d3RiUG1yU1lFVkl5dUtncmhPMGVBWWlvbVpzdXQyUTJvL053TW12Y3FtNFZz?=
 =?utf-8?B?a0JXUkZVS3RKSTgwL1BRWVJtUGhnPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	TTxZTqCu/BZkYP3xaFfU8bv9HvfUyswYgqOCk1ch2u5V3g6wb86VWrGI9x90QEEePoFKpTRTlCzO7suVrk2ylcyipEstIQbOqr4EwdYubf+lXtiksMn+9bNXIRxRHRYEey38So5nhf0eJZCqEB6woIrurY7v0V1dqm7ZGiNv0qp44SrRvJA6u6zijjDxgjf0bdNMRouiRNu1z7WiEyKlpsEfknEQeNPNWlUF7cwha1zvrL/rwqu0LeX+A7DDDFpUzbo+R0IsqoM5YbnqjOQyKMXnyCcNp8OVktJOAgyViumclf1uEnrAd7TXwzIVHwX7dv9rE+Zt+hXO0AN6KykKTFvtu7De5CmH3bDaSRWQVbYbw57hNjTHd1sToJusIVAO2sgVPPG2x1lESGoSKQlLWeWgnx9z/ai1JBRbTujoDZRpRSu3Vd/sDNcfs2soc6zF
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 19:43:24.0581
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 20b3103f-6241-40ee-364a-08de6fef24f9
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000EE30.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB997714
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266709-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: C115F1621D8
X-Rspamd-Action: no action

Change the status of the wkup_uart0_target node to enabled. The node sets
the UART SYSS register to allow wakeup from WKUP UART in DeepSleep low
power mode.

Reviewed-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
index 3ac9a2d0d9cb78d87479c4a8aed5c0b1f1cb3faa..8ac7ad2cd1b9695482ede804c77dc382820fbe8b 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62l3-evm.dts
@@ -370,3 +370,7 @@ &wkup_uart0 {
 	pinctrl-0 = <&wkup_uart0_pins_default>;
 	pinctrl-names = "default";
 };
+
+&wkup_uart0_target {
+	status = "okay";
+};

-- 
2.34.1


