Return-Path: <devicetree+bounces-258313-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOLFNWoEcmmvZwAAu9opvQ
	(envelope-from <devicetree+bounces-258313-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:05:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 811D265B3B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:05:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7228C6C79CA
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 10:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBEFD43C04F;
	Thu, 22 Jan 2026 10:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="rp9uyG4Q"
X-Original-To: devicetree@vger.kernel.org
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011014.outbound.protection.outlook.com [40.107.208.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA4D43A1A2B;
	Thu, 22 Jan 2026 10:50:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.208.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769079016; cv=fail; b=Sks966fBj5PAJZH0kQUTEUJpWFXePkggKtzeZmpJVRdXAttMjLWexzYvUDWaOhMbUKHTJ4X0tWY20UeafMCl7Ok2uoAJ01P3g5l3LCrM5yWd03HK4ij6ULL+JlCtDb9LVwk8dEnHfoYsjWUikO5zUgzK8E/Fv60sK59CPyIXyok=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769079016; c=relaxed/simple;
	bh=yswjAnuTkwC000Wn0FE235l5J8AUL16whf8wkH6H3UE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:To:CC; b=UJwu8XmQkrC1ZZPWh6xDHs8CnUwBKoPgL2gjRg4bM/+KNj7y2I/9l6OycLf+Tmb4RzTz/L2UF9gwuccQor8dP5fHsEbQwU4bQGMgE+hgAcbqbfGoE/qcMYQD9KrusNFFp5QaRBuOhxYReFwFBcpgwBoQAeO7/CGPHVSVMV0WeA0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=rp9uyG4Q; arc=fail smtp.client-ip=40.107.208.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wDREKTvf+TW3zClkv6/yHfRkPqnDPad/8PN2cjoiRqly1O1O69+FHjJf0RoSYmf7drlnjpGwUgrS4+shTdpdTpgMptxJoPbMfkJbWXpUIBFpzBfVdBt3e1tgN+iS3j4SgQ5SdfZP1CHH5ikMjKXYB64Y0Q+Czx7AAjaMKIG9LYV/90bZOvd4cwzRjjTU2ZXeZsNi3Q+QNigoNjfZCKHFLVpIviajn2S+6YYT7P+RojVMabLOX+KFA8DKfQMqOk6w8Aqyp8s0RBnwIcQ97a4OUxfczR3370HjZloseoTMamJBWctDSwS6UCUb+llSKSYLHaAWJRZ68P3qjPv/Q38TtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r05tQHc7HMBa2so/wpdZQdRDePJzCfJiaeIowMd3cVg=;
 b=ILaQVY9ff0mPTOMMWLsWNbFksECtXzRThGm08vYv6GAi1egeW1tN87u1TZ6gM5+iXL4xjCMUHuPLZzARpkVIJ/g3dajiOhdMHwNQgv6V9T1msCBKrjrsSJqprTRLLYJPHTXD59LfFyJaOQ2MqRSGEji11HRsLPrcJDCVxex2NrWK+hWxD235R7D5Kydgg+deyuvmOPmtmdrZWL6xzoNkfOt8duav6RsEAaCDMuyl6FpPV5yrfZWSerSc2NuAPZM71hfIBqRlNSOAwq3xPAF/kyB85F2crNP76EybrAnSMk31HdHKf0scSlhxETgn12Lro6uUTXerGeJ6Xk9N6yVIlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r05tQHc7HMBa2so/wpdZQdRDePJzCfJiaeIowMd3cVg=;
 b=rp9uyG4QjZxtEmSX4uJoJpHxEGanZw1XqDJ4tNrBoDDjmZ1jQ4Og+S3+JrOpD12jV6ugWcYWdEEXHz0eON5gIme+jzK8KEt2B91o+NJFxgnqG8burEwNYUiW+iwRDGzqWNYOv4ThLnkmNjgOcflMW06D5CY/Zz1Ob4+202J4SD0=
Received: from CH0PR03CA0307.namprd03.prod.outlook.com (2603:10b6:610:118::8)
 by SJ0PR10MB4800.namprd10.prod.outlook.com (2603:10b6:a03:2da::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Thu, 22 Jan
 2026 10:50:10 +0000
Received: from CH1PEPF0000AD81.namprd04.prod.outlook.com
 (2603:10b6:610:118:cafe::14) by CH0PR03CA0307.outlook.office365.com
 (2603:10b6:610:118::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.10 via Frontend Transport; Thu,
 22 Jan 2026 10:49:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 CH1PEPF0000AD81.mail.protection.outlook.com (10.167.244.89) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 22 Jan 2026 10:50:07 +0000
Received: from DFLE203.ent.ti.com (10.64.6.61) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 04:49:50 -0600
Received: from DFLE207.ent.ti.com (10.64.6.65) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 04:49:49 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE207.ent.ti.com
 (10.64.6.65) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 22 Jan 2026 04:49:49 -0600
Received: from [127.0.1.1] (lcpd911.dhcp.ti.com [172.24.233.130])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60MAnj3m438214;
	Thu, 22 Jan 2026 04:49:46 -0600
From: Dhruva Gole <d-gole@ti.com>
Date: Thu, 22 Jan 2026 16:19:08 +0530
Subject: [PATCH] arm64: dts: ti: k3-am62l: support cpufreq
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260122-am62l-dt-cpufreq-v1-1-fabcc15e25fa@ti.com>
X-B4-Tracking: v=1; b=H4sIAKMAcmkC/x3MPQqAMAxA4atIZgNt1A5eRRxKm2rA31ZFEO9uc
 fyG9x5IHIUTtMUDkS9Jsi4ZuizAjXYZGMVnAykyShOhnQ1N6A902xki7+ioDooqY71uIGdb5CD
 3v+z69/0AuspmzmIAAAA=
X-Change-ID: 20260122-am62l-dt-cpufreq-c24f0236ad15
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kendall Willis <k-willis@ti.com>, "Bryan
 Brattlof" <bb@ti.com>, Viresh Kumar <viresh.kumar@linaro.org>, Dhruva Gole
	<d-gole@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769078986; l=3821;
 i=d-gole@ti.com; h=from:subject:message-id;
 bh=yswjAnuTkwC000Wn0FE235l5J8AUL16whf8wkH6H3UE=;
 b=WxCqEyaSJsKgDhQ/mG/bsyXUNUdmzH/vH99SVgmAmwTXZ1O78ILAYfCLgVEjVvK1+FfY8cEYa
 6GAgScsJvrrBcubzKb10xPgCaUpqaOIbPC1Tp2I9EZZXaq8cEfMXDhp
X-Developer-Key: i=d-gole@ti.com; a=ed25519;
 pk=k8NnY4RbxVqeqGsYfTHeVn4hPOHkjg7Mii0Ixs4rghM=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000AD81:EE_|SJ0PR10MB4800:EE_
X-MS-Office365-Filtering-Correlation-Id: f6bbf2b0-6d19-485d-a628-08de59a401f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|376014|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?L1VQcE1wWFNWL3pQaGcrWVhoQ1RaZW9OV0w3VFFsNGd2aE14ekxQMVpvQ1cr?=
 =?utf-8?B?cWE3MlpqVXlXN2hQVmxuMlFuQnlsZ0FoUHZzSmJoZC9uR2I0QlpvR0dZRVdv?=
 =?utf-8?B?ZCt0OFBXVGVXaXd0UFZIeDBNRnkrVkF5OURVc0VzcmFEbXhoazFGTGRGdFhp?=
 =?utf-8?B?dHJCV2tscVNqdStnVjRNUVhsT0doM2twTVNTNHQwYVpzWGpYblBVTDRNOVJo?=
 =?utf-8?B?MFdLRzNrQm1zVCtBZ1phbEt1MlVYNUZoSmUrKytJY3FqMnZ4ZEZhNHpVL1lp?=
 =?utf-8?B?QXFuMzNsNkZBNndaRXZaemIrQlFvUEFrRVNQelRwVk1BK2t4K0dud0xta1dC?=
 =?utf-8?B?Nm15eGlqWElGYXl2bUpwQlVWdnRhUDhudUZqaEd3djFsNVVTN3ZDZDM3enBN?=
 =?utf-8?B?aGhqalNHNllQV3VObGwxWWNjSmpFallzSVlIVTJkMEkvVk1WMkhuSVFkMGxW?=
 =?utf-8?B?V1FIczZFVk9oMkRvdGVUMXdwWjZxOGU2dWkvYlJjYUF3YjNUSzBtaVp0Zm1o?=
 =?utf-8?B?ZVl0V2xEamhaWEpPdU52RWZqTDA5Z3FGVWpMUndVSzJiUnh2M0hhT1Z0MUV6?=
 =?utf-8?B?a2p2Yytpc2tQWSsyZVZiWnc3dEt1K1NUbmcyL2ptcXdOaXR2Z0QwNTJEVTU0?=
 =?utf-8?B?dkYya0R2eXU4bnV0dkJ3VG1DL1hvVVZpdHpUZXJXM3dmZGlJTGREeFh2QmNi?=
 =?utf-8?B?TzBCM1VzVjlxUGxBVkNjMFB6clloNk8zcmZrbDBTRldvOXF3Rk5GWUR1Q0hH?=
 =?utf-8?B?NUt6Rk0wUDh4Zyt2b0lXWVU4QkQ3Qm9wejFOQWMrUkY2bVNoK1hCaDNvS08z?=
 =?utf-8?B?MTdhajFkV3cyRG80MERiMDNWY3l5OE5EVEhKNVh6aC84Ym9WOGtPdFFaVkJM?=
 =?utf-8?B?bFk1TnJIU1pwanNYb0JveHRTTkk3ZUdOUy9rb094WlpaVmJpU0wvckRwZzd5?=
 =?utf-8?B?OVpRS2VTbk95Vk5IZ3liR044STR6WlF3eW5Sc3ZvNzZYMi9Bc3Z0VjNUK3ph?=
 =?utf-8?B?NlZya3AvKy90cE5ERVg5MWpTeHl1SGo5aXk3L3hGQVlnNXV5WXNKR3ExRzk3?=
 =?utf-8?B?TXF5bFFaVXFZbm54OExWa2NENitnSDJsWWQ3V3VMOGF3VStIcS9nVXFGTTRy?=
 =?utf-8?B?SWlzWE9vYXZMRlBKOUVyT0VIRG1XblFWMWx0TlRva0ZGRm1MRFBiSk9qa3Zv?=
 =?utf-8?B?bzMxL2YxRFRBT3BhS3I0QTBMY0pUcExOM1Jod0x2Tkk0aDBBVExtVk54dFph?=
 =?utf-8?B?cG1jMzN3UUcrV0w3L1Z0S09zUDluczg2RkJGUFU1cmk0SFpDLzBJUkJYaVdx?=
 =?utf-8?B?ZGdMSEJ1TmZoblZ5VFlyZ2V2YkIreERReDlvTGxRY0lVQmVvZVA4clZOdEFT?=
 =?utf-8?B?R3lZeEZzN3RqYU43YkZlQ0pRTEVZYXpDWGZadGExa01nNmhwalJZRi9ldnUr?=
 =?utf-8?B?UHJadWVKYmwzTy9UZWREbWhOVlUyU0NDbWpFL251SkxkUnlMSmI2T0lyMUVv?=
 =?utf-8?B?WWozczFZRjB4OUE4VU1GYm5FZzJzRUdkMzdraGcyYnJGdTRkRnpieVIwZEtW?=
 =?utf-8?B?NXp1WlZ4L2gxQnRic3hhZmNLUmdDdGtqeG1ESlhPR25LeVlwWUlQU3BJaTg3?=
 =?utf-8?B?SHlIa3FHSW12NEJNSE9FNlRSdHFZSDM0SEo5NG1ZT3dsMm5hOXRwWkZycXkw?=
 =?utf-8?B?Y29abWswcFNVN281dU85bVk5SzVQeXBuVDM2UHZERGI4V0tMVE1VZk01YzdG?=
 =?utf-8?B?RkpzbHAvekU4M1gxNFUwVzd3a0JVZjEwS1VyMGtWNGpMODF3ZUZleFNVNVZB?=
 =?utf-8?B?N0E1Wmc3TVdHeTVKUmFISCt2VnlqOWZJS2hMa0pBOElGcHFLNHJTVmw4Qlk1?=
 =?utf-8?B?UU1HKzBNYmEwOVJQY2Fqa1dXbDBUcDlIK2NlbDRqbVcyazhBdTlzN2ZFWTgx?=
 =?utf-8?B?bUZOeEt5QldPc1ZWM1U4UGdTZmNvMTZOUXJxSEVnenB0c2ROMGhyTUpmbm05?=
 =?utf-8?B?ckplM3VsRDQrN3U4cW1xOU9idmZUNHJGRGpZZFZ5azBhWTNlb2E3VEdDWXJQ?=
 =?utf-8?B?b0ZyTGdsL3N6dVNpUDhmQXBxRDhNTmIzSjI3ajYrWmpOSTZ2Y2hIZWZhY0xs?=
 =?utf-8?B?OTc0REx3MFptL1RkMW1RNHkwLys5Uld1WkRlRllaMm82Wnh1eXIrTGgyOEk0?=
 =?utf-8?B?NzVreDcrWkl1cUdRdGtRVnB4MUd3WDNWWEo5K0hodmxZN3NrK0RRYzZyMnp6?=
 =?utf-8?B?UDZYQjcyWS9BQi9GNUlDaXZpNGZBPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700013)(376014)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 10:50:07.4391
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f6bbf2b0-6d19-485d-a628-08de59a401f1
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH1PEPF0000AD81.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4800
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258313-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,ti.com:email,ti.com:dkim,ti.com:mid,0.0.0.14:email,0.0.0.18:email,0.0.0.0:email,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,0.0.7.208:email,am62lxx-evm:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DMARC_POLICY_ALLOW(0.00)[ti.com,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[d-gole@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 811D265B3B
X-Rspamd-Action: no action

Enable CPUFreq support for AM62L SoC by adding the relevant OPP efuse table
syscon to k3-am62l-wakeup.dtsi for speed grade detection.

Add the operating-points-v2 table with CPU frequency steps from 200MHz to
1.25GHz to k3-am62l3.dtsi

Configure CPU clocks to reference the SCMI clock controller for frequency
scaling

This enables proper CPU frequency scaling capabilities for the AM62L SoC
using the ARM SCMI protocol to interact with the power management firmware.

Signed-off-by: Dhruva Gole <d-gole@ti.com>
---
The driver changes were merged previously [0], and so the DT patch
is now being posted seperately. 

Logs:

root@am62lxx-evm:~# cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_available_frequencies
200000 400000 600000 800000 1000000 1250000
200000 400000 600000 800000 1000000 1250000

Changelog:
- fix the bit fiels in the OPPs as per Kendall's suggestion
- Fix the scmi_clk ID of the second A53 core

[1] https://lore.kernel.org/all/20260120-am62l-cpufreq-v3-0-8c69b80168a3@ti.com/
---
 arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi |  5 +++
 arch/arm64/boot/dts/ti/k3-am62l3.dtsi       | 47 +++++++++++++++++++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
index 61bfcdcfc66ea8d802a36ed43cd01fbbf3decc70..a42ccd0d2fcc4d204cae81508f839c44ce83f558 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
@@ -127,6 +127,11 @@ chipid: chipid@14 {
 			bootph-all;
 		};
 
+		opp_efuse_table: syscon@18 {
+			compatible = "ti,am62-opp-efuse-table", "syscon";
+			reg = <0x18 0x4>;
+		};
+
 		cpsw_mac_syscon: ethernet-mac-syscon@2000 {
 			compatible = "ti,am62p-cpsw-mac-efuse", "syscon";
 			reg = <0x2000 0x8>;
diff --git a/arch/arm64/boot/dts/ti/k3-am62l3.dtsi b/arch/arm64/boot/dts/ti/k3-am62l3.dtsi
index da220b85151227c63f59b2b8ec48ae2ebb37e7bf..26d3040ff53259daba21b39a55bb8a2ed65d4e8f 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l3.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62l3.dtsi
@@ -39,6 +39,8 @@ cpu0: cpu@0 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <128>;
 			next-level-cache = <&l2_0>;
+			operating-points-v2 = <&a53_opp_table>;
+			clocks = <&scmi_clk 356>;
 		};
 
 		cpu1: cpu@1 {
@@ -53,6 +55,8 @@ cpu1: cpu@1 {
 			d-cache-line-size = <64>;
 			d-cache-sets = <128>;
 			next-level-cache = <&l2_0>;
+			operating-points-v2 = <&a53_opp_table>;
+			clocks = <&scmi_clk 357>;
 		};
 	};
 
@@ -64,4 +68,47 @@ l2_0: l2-cache0 {
 		cache-line-size = <64>;
 		cache-sets = <256>;
 	};
+
+	a53_opp_table: opp-table {
+		compatible = "operating-points-v2-ti-cpu";
+		opp-shared;
+		syscon = <&opp_efuse_table>;
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-supported-hw = <0x01 0x0003>;
+			clock-latency-ns = <6000000>;
+		};
+
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-supported-hw = <0x01 0x0003>;
+			clock-latency-ns = <6000000>;
+		};
+
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-supported-hw = <0x01 0x0003>;
+			clock-latency-ns = <6000000>;
+		};
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-supported-hw = <0x01 0x0003>;
+			clock-latency-ns = <6000000>;
+		};
+
+		opp-1000000000 {
+			opp-hz = /bits/ 64 <1000000000>;
+			opp-supported-hw = <0x01 0x0003>;
+			clock-latency-ns = <6000000>;
+		};
+
+		opp-1250000000 {
+			opp-hz = /bits/ 64 <1250000000>;
+			opp-supported-hw = <0x01 0x0002>;
+			clock-latency-ns = <6000000>;
+			opp-suspend;
+		};
+	};
 };

---
base-commit: e3b32dcb9f23e3c3927ef3eec6a5842a988fb574
change-id: 20260122-am62l-dt-cpufreq-c24f0236ad15

Best regards,
-- 
Dhruva Gole <d-gole@ti.com>


