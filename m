Return-Path: <devicetree+bounces-258734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNY4ITMdc2ngsQAAu9opvQ
	(envelope-from <devicetree+bounces-258734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:03:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 247977159B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:03:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8075301457F
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 06:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F34FF3314AE;
	Fri, 23 Jan 2026 06:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="mNRlLfiI"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011008.outbound.protection.outlook.com [40.93.194.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4456D333729;
	Fri, 23 Jan 2026 06:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.8
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769151393; cv=fail; b=t0/3DZvTChoSX+/zyvy3pmhJaXcyh9Gm95FSvptL1N1/EJgxYOrQj+pYYSyYeTAtdVkVltrX7YK9/Gjdf58wwJ/3AS0YDYd0WkHrPbtcw5BTt6bBVqehqgE6oLyJv1rJG4EHD4RCVsR9g+6b9sobIQwnljIIk35Wzsdimtpfyok=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769151393; c=relaxed/simple;
	bh=geoModA8WrR+gZD8T4GkzGa89s2zlEevJFB4EBsEjtY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=jm/dtYAWDYEMIny7ecP6mi5bE0fTYf6F+13H55HGnb1h9414ZhK2UBisbefC6qd6C095Zacj1K+pxoqnO0xHNiYbAqGXI/YYt/4koC1cZkdFv8v0WlCtmS3MXuBvhED8dblV8tePA47fmsKEauTbLe+mUEhQsmo3CNg69JDUsos=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=mNRlLfiI; arc=fail smtp.client-ip=40.93.194.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rdj6kBQzWD7AxJw28TiMmTJbXyWkrdmJd8fWTW5xBlAMhMvLwRLtu2SROkTAPLgvNxc0X+vuAYn2Z9uSClkEQvMQHj51r9XL+gfiZ73atGQN6ZfQ04SPnCXa+D9VOG+Y3Sp11W8U9C0nEvXaR+Wf2BJ/9baypgDEsv3WJA0GjxgMYWb6dJk/f1TKP2h948MW43rhipd8g2bBTV57/ILbq0eBkXZucZXqADYcrs2tdcZuA3UqQevTrBi8S9kSynaAUxUpwCbglWYTIChfUPkUwnUQiAqBll9jOgF7lJjAvdX+15BVFVJqxcXWaasb7YVn/E1D9UJSifh273NzpzOwAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5yBuxPGDCpEphM/KZt/cMvZHfJnkc1tQPoLWsiBEtpw=;
 b=EuCc0iPk3lx+PKRbRetCaRNg+OQVA6QqKX5zyPy3Yu82qaLu/4FT6uts5W/sKhzTR8b3fUwBXPM71I9eAA01T8Cokg5z2tc4RAPak0XZWSRYw9BwtsOrYRPPE0ksRwYMI7q2fLiozOY9h+YY0oM6yK4Tng4hD8+HKYa6B05PQYpDGIoqo6ghaadJYFfjP2DVsTZNmgIa4wO0xno7vzO+rzMSPcYgFcEOCIAvMy8uXnQ4QX9aVDp8WLdrcJgMFPHtcytarjE/YX74zsrQm84hijjuDNu+vO7MKGwNOtEwvYx9/J6CBj+sghnXHeEJwh2jAw7P7hsvPI2O9Zw/BrbJXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5yBuxPGDCpEphM/KZt/cMvZHfJnkc1tQPoLWsiBEtpw=;
 b=mNRlLfiI4QhG+lk8eKvO8RzQ8J6aT+e306SKNmTq63u8TjAyG1STfSKcvv/+Kh+LpSGnuyjt4YMNkX88Ir5Bryv++J2rGLgyr7IjDXdNaqj1+gR/D/ILSQCQUJoS0aI/FtL41LoI/jdfl5m1FtqmX0qj0xc33uEBDl2Ez4xZpfk=
Received: from PH8PR02CA0025.namprd02.prod.outlook.com (2603:10b6:510:2da::15)
 by LV3PR10MB8132.namprd10.prod.outlook.com (2603:10b6:408:291::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.12; Fri, 23 Jan
 2026 06:56:30 +0000
Received: from SJ1PEPF000023D7.namprd21.prod.outlook.com
 (2603:10b6:510:2da:cafe::bd) by PH8PR02CA0025.outlook.office365.com
 (2603:10b6:510:2da::15) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9542.11 via Frontend Transport; Fri,
 23 Jan 2026 06:56:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SJ1PEPF000023D7.mail.protection.outlook.com (10.167.244.72) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.0 via Frontend Transport; Fri, 23 Jan 2026 06:56:28 +0000
Received: from DFLE211.ent.ti.com (10.64.6.69) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 23 Jan
 2026 00:56:12 -0600
Received: from DFLE203.ent.ti.com (10.64.6.61) by DFLE211.ent.ti.com
 (10.64.6.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 23 Jan
 2026 00:56:12 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 23 Jan 2026 00:56:12 -0600
Received: from psdkl-workstation0.dhcp.ti.com (psdkl-workstation0.dhcp.ti.com [172.24.234.127])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60N6u01T1765468;
	Fri, 23 Jan 2026 00:56:08 -0600
From: Aniket Limaye <a-limaye@ti.com>
Date: Fri, 23 Jan 2026 12:25:46 +0530
Subject: [PATCH v4 2/2] irqchip/ti-sci-intr: Allow parsing interrupt-types
 per-line
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260123-ul-driver-i2c-j722s-v4-2-b08625c487d5@ti.com>
References: <20260123-ul-driver-i2c-j722s-v4-0-b08625c487d5@ti.com>
In-Reply-To: <20260123-ul-driver-i2c-j722s-v4-0-b08625c487d5@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, <u-kumar1@ti.com>, Nishanth Menon
	<nm@ti.com>, Tero Kristo <kristo@kernel.org>, Santosh Shilimkar
	<ssantosh@kernel.org>, Thomas Gleixner <tglx@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <j-mcarthur@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Aniket Limaye
	<a-limaye@ti.com>
X-Mailer: b4 0.14.3
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF000023D7:EE_|LV3PR10MB8132:EE_
X-MS-Office365-Filtering-Correlation-Id: acb3a228-2978-4e67-bdcd-08de5a4c88ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZmdVQ3ZCLzJ6L01TcU9EZVpHdjhhZG10dnc2QnZRZ0xIRkFBc1ltNE5TMy9o?=
 =?utf-8?B?OU42bnZGd2VNUzBrTXFvZCtPUWZsb3RrY0VYS3JkbHBnY1B3VFFkcm90R1RT?=
 =?utf-8?B?cWtFWmNLN1pNQzF2R2UzdDV0RXhaQTRiU1JnYzFEa1JJVFVRSUxHeFEwcURv?=
 =?utf-8?B?dkRyNzZuUzQ0OTZTSXpQSzQ3TnVTbi8rbksvSC9UNkFWZm5pMHlTbTQyeFQ1?=
 =?utf-8?B?Q0QrNUpndEs4ZVQ1eTJ1czNXZVA4RVBXRHpKLzJpSUNDS3hmWk1raGtVbXlG?=
 =?utf-8?B?VWRCcmtuM2FtOTBwNFA2ZThVaVppSXg0THUxOHFRR2RsWGlhVWNNNTVmclZ3?=
 =?utf-8?B?eGRpbTlxM1BFMFVBTU1qVGExcm8wSDc4OTl0TmxWWG5JNDFSWUZlZlNaVzNK?=
 =?utf-8?B?T0dXYUNJNExScmIxaUtWN2VoakVOYXZpUXgydXNtdUVINi9ES2RBTGNISmNC?=
 =?utf-8?B?NUtjRjc2dVdLbFEyVm80SEtsS3dFYUlpMXA0YjdtRERhQ2l4RjFnYkFaUWdH?=
 =?utf-8?B?UXo4ai9ucUw4ME5GR0FOWnJkR1o0UFFSSHNxTjYwSkJtSGZJNnZOcXVmbGZM?=
 =?utf-8?B?VXhacStjTW54SElnNW1QeW5NOW1JUlhpVUNuM3RqbUpFblNVdGtRdUVrSzVE?=
 =?utf-8?B?a1hLVUJXZ0ZjTnBobFJLWkVXa1FlWmRuaTNwRnV0eHkvWEZXSjlTM2JYWUJy?=
 =?utf-8?B?NjhGZ1ByWU94V3gvYW5CWkExdzRaUFhtWWorWVYwbDNCR3JyUDZwOTFqRytU?=
 =?utf-8?B?RTFFMEFDZ0VsdGFla2ZBSFVYNnEyY0EvTld3S1JNVExXOGsxUFJmVFBLYWJt?=
 =?utf-8?B?bTdZNGFaclFKZzNKT0d0VHVqcnRVZExhOXpJN3VDeFE0NUl4d1ZURGREWjVM?=
 =?utf-8?B?bG5FalM0eTdIeEUyU3lrdWgwQVVIMjlwTjUyOEwwOVU5NDJvN3ovT3Y2c2U0?=
 =?utf-8?B?N1RqdUxvaHJsbHBTclNvbjhGU1AyUGVXNmljd3IycmNmbWtBc1hJb0NXcVlN?=
 =?utf-8?B?Zm5PLzN2b01lWWFoejBGQTN3TDFQNnpxd3E0elJqK0NnWXpwMkNONTgvTmM5?=
 =?utf-8?B?RjJwTnFxZ3Z3ZWVlTEFraUpMMm9hU3RrNjRCV1BXTVA0UXhucEwwUjZKMzdV?=
 =?utf-8?B?UmJTb1RTNlcrN1YwVmtnSSsxMTcyWGVLVVNKVVZTTk1hODkxeXpld0JBUFEw?=
 =?utf-8?B?OG1NUVdrU3BqYktpTmdNZjBvYThqMXlieEMvSyt3R1piVDFVSldOQmd0NXhz?=
 =?utf-8?B?Wmw0RlpMR3BJQ1pBdjRYd3dJd0x6elg5VW9MZXZCNU5UeW05Tk92VGI0aEY1?=
 =?utf-8?B?YVhkSEg3cy9wQkE4WUNjMTJMZExES0xWRUI2c1ZoYzBZWHQyQlVvdHVFSlJE?=
 =?utf-8?B?aWtPTjhZOFNSWEJza08yNVZGdmJBZjhPRENGQU83dk9jWVJQVWpnaXVsMlhs?=
 =?utf-8?B?TlZ3NkEreGF5SWhuNjRCeXZ6bUUxM0RQU25hdkY3NEUvZGxsRHYxT2t5Yy93?=
 =?utf-8?B?NmVyQmhVNVhVRFVacmhCdU14MUhiWUZFM0FLZHVJV3p4TnpDTTdTQyt1N1du?=
 =?utf-8?B?MHZhM2h0aUkrcjdGOE9mYXFUdGt4ZCt5Vk9LalVBYkxtK3J2Y0gvN1lMc2RL?=
 =?utf-8?B?WXBnb2ZCZE56ZG9ZVTNwSnRobnFqYmNHcXo1YzNLbWtraXpCK21UcnZ4RVpl?=
 =?utf-8?B?dXJyNVk2eUJ5cjBYakpHa2E4cjBDVWo2YVZTL3BRMVFMR2ZuUGJnMmJ3WmdD?=
 =?utf-8?B?SGJSYXJwS3pmbDg0L2pESzhLZVF4dHpieVh1VWlGS2NrdStYQkdwMU0vU3R1?=
 =?utf-8?B?bitNQmRXcTN3cVFxSXRDRWRRS1N4aldUVGRmeVVBVTNNZzlqMHFkNU9SVEJV?=
 =?utf-8?B?ZWRUMnYrbWNKY2tVZ0ZaTktLcVZ6QUVkeGM0bjFMRThwU0pIUXhwM29zYi9Q?=
 =?utf-8?B?cFVHNFhsMXRGZ25BMGVzK3phd3BBOGV1SUd4a1MvVW5xYk00a3BLT1Q3SEhQ?=
 =?utf-8?B?WkE1N0g5R2FWNUpKakMyMDNWTnZwR2lZczNaTXhkejA0VXc5ZGZabTh0QWVI?=
 =?utf-8?B?SzNadTRXYThiczR3YXE2R0lrMDVSSHQ2VS96bnh5c3pvMkpZV1pya2t3SnlW?=
 =?utf-8?B?K2orTWR1QmhlSlVFdUVRM0Q1WmFYRDd2MjhvQ0hnMHYyVTJoTG4vRnVkVGpz?=
 =?utf-8?B?bmxtL3RMdHlpZU8wUFluME5ySUJqdXZabWRuakVBeGFHVWN3V3hMSEtmeXQx?=
 =?utf-8?Q?/jNS2bTj269tj55OSTe6tlAhFvBQQdhtMEtHQVaP8g=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 06:56:28.8916
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: acb3a228-2978-4e67-bdcd-08de5a4c88ad
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF000023D7.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB8132
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258734-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a-limaye@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 247977159B
X-Rspamd-Action: no action

Some INTR router instances act as simple passthroughs that preserve the
source interrupt type unchanged at the output line, rather than
converting all interrupts to a fixed type.

When interrupt sources are not homogeneous with respect to trigger type,
the driver needs to read each source's interrupt type from DT and pass
it unchanged to its interrupt parent.

Add support to check for absence of "ti,intr-trigger-type" to indicate
passthrough mode. When this property is absent, parse interrupt type
per-line from the DT fwspec provided by the interrupt source. Else, use
the global setting for all interrupt lines.

Signed-off-by: Aniket Limaye <a-limaye@ti.com>
---
Changes in v3:
- Avoid new redundant value IRQ_TYPE_DEFAULT for "ti,intr-trigger-type"
  when "#interrupt-cells"==2. Instead, make this property optional and
  check for its absence to use the per-line interrupt-type setting.
- Link to v2:
https://lore.kernel.org/r/20260120-ul-driver-i2c-j722s-v2-2-832097c6b64f@ti.com

Changes in v2:
- Use correct Patch Subject prefix
- Reword Commit msg to better describe the patch
- Fix function argument alignment as per coding style
- Fix variable declaration ordering as per coding style
- Link to v1:
https://lore.kernel.org/r/20260116-ul-driver-i2c-j722s-v1-2-c28e8ba38a9e@ti.com
---
 drivers/irqchip/irq-ti-sci-intr.c | 49 ++++++++++++++++++++++++++++-----------
 1 file changed, 36 insertions(+), 13 deletions(-)

diff --git a/drivers/irqchip/irq-ti-sci-intr.c b/drivers/irqchip/irq-ti-sci-intr.c
index 354613e74ad0..0c6065e66e6a 100644
--- a/drivers/irqchip/irq-ti-sci-intr.c
+++ b/drivers/irqchip/irq-ti-sci-intr.c
@@ -61,11 +61,22 @@ static int ti_sci_intr_irq_domain_translate(struct irq_domain *domain,
 {
 	struct ti_sci_intr_irq_domain *intr = domain->host_data;
 
-	if (fwspec->param_count != 1)
-		return -EINVAL;
 
-	*hwirq = fwspec->param[0];
-	*type = intr->type;
+	if (intr->type) {
+		/* Global interrupt-type */
+		if (fwspec->param_count != 1)
+			return -EINVAL;
+
+		*hwirq = fwspec->param[0];
+		*type = intr->type;
+	} else {
+		/* Per-Line interrupt-type */
+		if (fwspec->param_count != 2)
+			return -EINVAL;
+
+		*hwirq = fwspec->param[0];
+		*type = fwspec->param[1];
+	}
 
 	return 0;
 }
@@ -128,11 +139,12 @@ static void ti_sci_intr_irq_domain_free(struct irq_domain *domain,
  * @domain:	Pointer to the interrupt router IRQ domain
  * @virq:	Corresponding Linux virtual IRQ number
  * @hwirq:	Corresponding hwirq for the IRQ within this IRQ domain
+ * @hwirq_type:	Corresponding hwirq trigger type for the IRQ within this IRQ domain
  *
  * Returns intr output irq if all went well else appropriate error pointer.
  */
 static int ti_sci_intr_alloc_parent_irq(struct irq_domain *domain,
-					unsigned int virq, u32 hwirq)
+					unsigned int virq, u32 hwirq, u32 hwirq_type)
 {
 	struct ti_sci_intr_irq_domain *intr = domain->host_data;
 	struct device_node *parent_node;
@@ -156,11 +168,23 @@ static int ti_sci_intr_alloc_parent_irq(struct irq_domain *domain,
 		fwspec.param_count = 3;
 		fwspec.param[0] = 0;	/* SPI */
 		fwspec.param[1] = p_hwirq - 32; /* SPI offset */
-		fwspec.param[2] = intr->type;
+		fwspec.param[2] = hwirq_type;
 	} else {
 		/* Parent is Interrupt Router */
-		fwspec.param_count = 1;
-		fwspec.param[0] = p_hwirq;
+		u32 parent_trigger_type;
+
+		if (!of_property_read_u32(parent_node,
+					  "ti,intr-trigger-type",
+					  &parent_trigger_type)) {
+			/* Parent has global trigger type */
+			fwspec.param_count = 1;
+			fwspec.param[0] = p_hwirq;
+		} else {
+			/* Parent supports per-line trigger types */
+			fwspec.param_count = 2;
+			fwspec.param[0] = p_hwirq;
+			fwspec.param[1] = hwirq_type;
+		}
 	}
 
 	err = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
@@ -196,15 +220,15 @@ static int ti_sci_intr_irq_domain_alloc(struct irq_domain *domain,
 					void *data)
 {
 	struct irq_fwspec *fwspec = data;
+	unsigned int hwirq_type;
 	unsigned long hwirq;
-	unsigned int flags;
 	int err, out_irq;
 
-	err = ti_sci_intr_irq_domain_translate(domain, fwspec, &hwirq, &flags);
+	err = ti_sci_intr_irq_domain_translate(domain, fwspec, &hwirq, &hwirq_type);
 	if (err)
 		return err;
 
-	out_irq = ti_sci_intr_alloc_parent_irq(domain, virq, hwirq);
+	out_irq = ti_sci_intr_alloc_parent_irq(domain, virq, hwirq, hwirq_type);
 	if (out_irq < 0)
 		return out_irq;
 
@@ -250,8 +274,7 @@ static int ti_sci_intr_irq_domain_probe(struct platform_device *pdev)
 	ret = of_property_read_u32(dev_of_node(dev), "ti,intr-trigger-type",
 				   &intr->type);
 	if (ret) {
-		dev_err(dev, "missing ti,intr-trigger-type property\n");
-		return -EINVAL;
+		intr->type = IRQ_TYPE_NONE;
 	}
 
 	intr->sci = devm_ti_sci_get_by_phandle(dev, "ti,sci");

-- 
2.52.0


