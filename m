Return-Path: <devicetree+bounces-263187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uT8dNRg4hWlf+QMAu9opvQ
	(envelope-from <devicetree+bounces-263187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 01:38:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2657BF8AEF
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 01:38:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6360230059AC
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 00:38:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24CA221FC6;
	Fri,  6 Feb 2026 00:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="pYnrmXlz"
X-Original-To: devicetree@vger.kernel.org
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012041.outbound.protection.outlook.com [52.101.48.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF731E3DCD;
	Fri,  6 Feb 2026 00:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.48.41
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770338325; cv=fail; b=QhX6l64Wg13js8BhsWpbxucNJcMfO+irHiNzjATPFI27KAWS2vzp3xbl8Lvg7d38kkKgexXum9S/lyLugsjYW0XtHQ4jVUbci02+HlYso3ICsuiGWj6K0S9MWFv2NJymptX+VD64tiN5d3+lUhdf7DYuRlhuwTPahr/mz2vKXp4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770338325; c=relaxed/simple;
	bh=3+unQgKByk9gF0vlKOlNpS3cU8cqyzBWOLSiJ+Va7NI=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=Yl+bZO74mO21Iil8dcB3es3HSWbfHMh+ndO5kBZ+lh9zmoyXfQgLt9BKhxZtHJvlGdDTrO49y+mSR1X8y2uanHVvQInTCikXLbIWU3YoXOXSaNfsDLESMdcijuOS/ajcFfzuVUBj9A5CWzH6Kd0wkjvOKKTKeZSK5keRkLqBrjY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=pYnrmXlz; arc=fail smtp.client-ip=52.101.48.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zVuEyRAb3zguc6xVz8nwfgKRe49ufgNbsrP8+W3oSvLPaULEs2fKYbjPjwTxFTMp0Zicv8ZYiElUMOlrXE8RO0j3uE16/8hrqe3E3Xt2V1o9/Ywq8Ttz9sCcuOJIboGxEyauKK0/AxmSsP0+GVHkO77rYcp0tLZNgwaedEKz60aaurW445H9ANGV+qxdtTITZNtDyBuwj50tAiaY3djAJq7iluyfjEz0d5gRTl5r9Cym9yFu/3lZCnM/peHQ7I7Fg+VzR0rpheM6unKF8+RgF9A1qpP4fJzJ327OgTToxpwSp4mHZpboSUnX8u4YUbPgjABeM3s8Euzf9YEjrkg3Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OvuVK3Nky7VNYEU6r0+dcX/4BplTOO3gkVSmMBZjCNA=;
 b=mlE/1vmFL4p1pdIFVlIkh8P3rnhT6AhqpQNq7TiWAvNWgeWtQRyza4aghMuoh6VSs8aym2ZFPvOCtlXm/YPFxo0WZbt3SDzuf1G9hgBX7dg8gLkppDbV2ht0Ay7aF3JveqZeKUWglQLRIrR2LnNw+xOJsVGH4VFtwN4GZ+X8Ugga0/eyL3Ck5o0ZjIOWuwMeXV/yMrtCsepyQka71mEUKfro+VioHmczk4TPZhRQj6iECzvbPijCypa8uTNIaanTo+NyA9J4ddw3VlGYbGTGbRCG06BLA/rwzZ/mdqSLQ51/rRVZc61fXDm/+LIbb4BDWSbGobod8eDMMrTc99Trpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OvuVK3Nky7VNYEU6r0+dcX/4BplTOO3gkVSmMBZjCNA=;
 b=pYnrmXlzwjHBpShSYKQBPUmC8fh68l29Xvk5SwZcPiQgkY9LMdhKzd+lTZ1N9qqNIshmlho6BI9Oo1ytjkbE2bf+APhekKOjaFoaKg32neCRDKxmIO2LNlsnarLwswyGE5Dp1V8icAVM/IoahHA/x7XtP5wwYUppZuDKO9Fhims=
Received: from CH2PR04CA0006.namprd04.prod.outlook.com (2603:10b6:610:52::16)
 by SJ0PR10MB4767.namprd10.prod.outlook.com (2603:10b6:a03:2d1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Fri, 6 Feb
 2026 00:38:43 +0000
Received: from CH2PEPF00000142.namprd02.prod.outlook.com
 (2603:10b6:610:52:cafe::fa) by CH2PR04CA0006.outlook.office365.com
 (2603:10b6:610:52::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.15 via Frontend Transport; Fri,
 6 Feb 2026 00:38:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CH2PEPF00000142.mail.protection.outlook.com (10.167.244.75) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Fri, 6 Feb 2026 00:38:41 +0000
Received: from DFLE204.ent.ti.com (10.64.6.62) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 5 Feb
 2026 18:38:41 -0600
Received: from DFLE211.ent.ti.com (10.64.6.69) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 5 Feb
 2026 18:38:41 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE211.ent.ti.com
 (10.64.6.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 5 Feb 2026 18:38:41 -0600
Received: from [128.247.81.105] (judy-hp.dhcp.ti.com [128.247.81.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6160ce6E177488;
	Thu, 5 Feb 2026 18:38:40 -0600
Message-ID: <528b107d-e2ff-4970-9484-24a6acca8308@ti.com>
Date: Thu, 5 Feb 2026 18:38:40 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] soc: ti: k3-socinfo: Add support for AM62P variants
 via NVMEM
To: Andrew Davis <afd@ti.com>, Nishanth Menon <nm@ti.com>, Vignesh Raghavendra
	<vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>
References: <20260204213746.2589028-1-jm@ti.com>
 <20260204213746.2589028-3-jm@ti.com>
 <25ced9af-b103-4cd3-9b31-42b188fcad60@ti.com>
Content-Language: en-US
From: Judith Mendez <jm@ti.com>
In-Reply-To: <25ced9af-b103-4cd3-9b31-42b188fcad60@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PEPF00000142:EE_|SJ0PR10MB4767:EE_
X-MS-Office365-Filtering-Correlation-Id: 445fa289-1002-4494-cae7-08de651813d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?bmZXNE9LaG1JWXlGc1RvK2lqV0ZHQkkvZi84SitDMHZrajlnNVdlZ0RSd2My?=
 =?utf-8?B?TFBBV3ZwWFdKQ09acVg1WVRxR21ZK05UVmVnQlpxNHMwYmQrampGS1RKek9w?=
 =?utf-8?B?dUhJZFV2VGpKdFhRSEVkZW91MVd5T1pHbER0WVlzYmZqUHg2UHJ5eUZxdHQx?=
 =?utf-8?B?UFJiVWE2OGNiMzhyUHlVU0Zld1lQcm93aDE1S09sNGEvUHlnY0lkK25Dcldp?=
 =?utf-8?B?ZHdmaTBxZm9YT2VOYVRRYk9Day9sUThMOEpzRXJZd3pOREd6OG9CUFdiQ0ZE?=
 =?utf-8?B?RzRtWXEzYW5kUHBBUHZlQjNMTGZGTEdaU3h1MDVyL1EwRXhFVU03d1NEdnh3?=
 =?utf-8?B?ZGgwS0tTNGs2cG9aVXp1VURXUFJQU1JDbG42eHpWb1pSNVYxQVVhSU93RVlM?=
 =?utf-8?B?cm1CRU9KMjhicGgvYVJRQkFMTFJSR2JIZWdPTVMxYjhiVVcxNEVLMGR4K3hX?=
 =?utf-8?B?ZU9kM2c5SzFiOGw4dXRBMkRjRThwRjJtdGRyYklzclVzeUF0OTJTaDZweExz?=
 =?utf-8?B?eVI3VTYyVzFhSUw0Lzg5SDd0UjUxNXdqb293Y3pjbllURHdaS2dQaGovMU5j?=
 =?utf-8?B?SWJ0YnFYMG1UVVhUTHNLL3locm1sSkduL0dOZ092RXUvaHRhL0dKTWtIRVZO?=
 =?utf-8?B?N21ZWFZNenVVZVFpQTFLcldibmxPczF6a2Z1OTRvUDJ3UWhST3FXRFk3QTRC?=
 =?utf-8?B?cEJpVzNhOW84bjFjNzlET2NpZ1BCaGw3VnBnQUxLQnVTZnRNVUVwNjFnSkht?=
 =?utf-8?B?bkpBNHhrOUFGdWI3MWhtdjE1bGQzblJOYWtMRkdvU1pYV0FUaWg4ZTVCaFFJ?=
 =?utf-8?B?WVBiYVV2R25mVmc3VWN5Y2pXUFB5L2thdndSMnBMTXczMzJoTnFzUVBoWjUv?=
 =?utf-8?B?VjNyVzlSdUZ1Sm41cHJrQmhNcE1UbFpSSk82OW5aQzlOWG5PRTlsK2dmM2tJ?=
 =?utf-8?B?elBWd1JycERCdUFCbnBaUVIxM0kzTUE0ajlCeWprNy85WnY3cTZnaUluWUhY?=
 =?utf-8?B?SHlhTWJkTkg1cFZjREI0QzFpV2Jkc2ZkN3hITXZ4SWp0cDhnUFYxd3YwWVoy?=
 =?utf-8?B?RVMrSG4yanVsY01JdDNwZ0tlVWNhTE9BNW1wNnFvajhWRFVUeUNjVUVTRzVW?=
 =?utf-8?B?SWs0a2RNOCtBbGwrOHRtSGQyNzUrZEZPMkp1R1VhWDNrR3R3VzllL2N0dDdY?=
 =?utf-8?B?YXBJQnRJUmFaalh1dGhkZTIrY0E5RHl0ZnRXVFJSNS9La0tNZ1RkSmJ1ZTFh?=
 =?utf-8?B?NERUbVd2YmhnbDlndEk1WGNyZGtuVDZIT1gxZ1JGRUVBenJ1RmNnV2cyNmUx?=
 =?utf-8?B?MytlbVErWlpXZnNlbzQwNXFjNStYQ1VkNFVXVElIUWxWdHM3Ri9DN3Jib25y?=
 =?utf-8?B?dWpNNWpCMlUxZ0R1OFRTRTdzU2U2bXBlamE0ZFlBbmt6M1c2NXp5V3h3SXNx?=
 =?utf-8?B?QzhvSjN2RWJMQ3hPT2lhamhDMkhjRFhtRmZEWmFSOGNBQUxEYnI4RlZBa28r?=
 =?utf-8?B?aysxYUp6NXU0T1AvWWRHbFdNamdqdHZBSjlhWnQxTTFtTkI0K3BjTlFzd3Nt?=
 =?utf-8?B?ZDlaM3dZK0EyMzh4OVZ2NmRnbE9PL3UyaEN5VzBTbEcrK0lHY0FJU29GNWhu?=
 =?utf-8?B?aFFpdWRKcS83d3JHVnJOKytML0MxYjZJQzJTV1QzOEJYNTdFd3NHbS9wR285?=
 =?utf-8?B?NThCWEd3cGsrVmtLa0E5V1V2c3ZyWkpLNzVIUDJ5YWlsSHA1d1g4QlZyaEJn?=
 =?utf-8?B?UnRrTzUyZ0NSTlFTb0hxWDQ3Mk1jNzRENlRXYlZXNlhjM0psbUd6Q0JBZytE?=
 =?utf-8?B?dTF4VlRkMG9rM2F2WEtlRmxqbEZZRkZNak9FbXRuaEdlRHk3T0RDVHNSS01X?=
 =?utf-8?B?VWNld2FvcitEcWRHRFRtcXNzUDMyVEdxcldKa0JOQXl6bkN4aHVBRTloSCtJ?=
 =?utf-8?B?NUlRaDB5RXZUTi95NU1DQ3dtd1k3MGFldFl1SXdsN3BPQjB5VUxWZy9OZmJp?=
 =?utf-8?B?eS9LS3BIVGhBQmo1MUVma3dxLzVyMVozcjhvM2JxTHcxWkpDWEhHVE1BK1ZZ?=
 =?utf-8?B?ZVVlZGhoaUk0YUtTWkxDY3lWUTFBaFBrMFRxbzdkUG5PZlNlbjB5aTE5N2Qz?=
 =?utf-8?B?ajUrSGxnb3pXM2tRSW1mek9rY1RNSWYxS1pGMlVkQnI2cU5hR2tqVGZGK2JM?=
 =?utf-8?B?Z0hRVVhWNFRxeXpKRVFEN0FDTHRycWRLSHFQUHVGRXRoaDVmdlNoZVg5Q25x?=
 =?utf-8?B?SFp0dGh0alNzUk5PUTM1SXR2L1ZRPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700013)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	di9jolEjw5WYHGQEudng9zxi1AtAfcahcXEaQUBRMrKEaC8hWj6HWb8SV+PDwO+Ygl1kuzj6H7BAkD2nR+jXeI7Q23n8M5VJ1HZwRXFHjGKgHBlLjzRNb+mfO3bzXiFLZyP+E2egMmWTqQE4aQBtIasQY+2pHm/GHWYVOBO3EgqEa40vQobaLwbgJ5qXc8vbcRuYZZN7mA5xWyUJVcMEE2d/thn3dw0en3qIJNYW7VIupcZmB9rgzrhLJhehvIfK2EsPuCxrB9dRU8ESs0Jd8bj2l008PkYe/6AH6iLRAXoDzacXF/4RjMV9VmFa/xAN+nLHIIqe2Qit7f+DvPQnBqzWT0PDqGiliXDuAtJe25R27dbtpLqoSlIE20p+Zr+dMPLlVHE1kHkKX+OjoDZCJiH5dMWQS4M0/ev4hWhc7v9589jGTtU6YCsUuznGW57K
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 00:38:41.8712
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 445fa289-1002-4494-cae7-08de651813d7
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH2PEPF00000142.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4767
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-263187-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ti.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jm@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 2657BF8AEF
X-Rspamd-Action: no action

Andrew,

On 2/4/26 3:54 PM, Andrew Davis wrote:
> On 2/4/26 3:37 PM, Judith Mendez wrote:
>> Add support for detecting AM62P silicon revisions.
>>
>> On AM62P, silicon revision is discovered with GP_SW1 register instead
>> of JTAGID register. Use the NVMEM framework to read GP_SW1 from the
>> gpsw-efuse nvmem provider to determine SoC revision.
>>
>> Signed-off-by: Judith Mendez <jm@ti.com>
>> ---
>>   drivers/soc/ti/k3-socinfo.c | 48 ++++++++++++++++++++++++++++++++++---
>>   1 file changed, 45 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/soc/ti/k3-socinfo.c b/drivers/soc/ti/k3-socinfo.c
>> index 42275cb5ba1c8..4b6947a9ceb4d 100644
>> --- a/drivers/soc/ti/k3-socinfo.c
>> +++ b/drivers/soc/ti/k3-socinfo.c
>> @@ -6,6 +6,7 @@
>>    */
>>   #include <linux/mfd/syscon.h>
>> +#include <linux/nvmem-consumer.h>
>>   #include <linux/of.h>
>>   #include <linux/of_address.h>
>>   #include <linux/regmap.h>
>> @@ -25,6 +26,9 @@
>>   #define CTRLMMR_WKUP_JTAGID_VARIANT_SHIFT    (28)
>>   #define CTRLMMR_WKUP_JTAGID_VARIANT_MASK    GENMASK(31, 28)
>> +#define GP_SW1_VALID_BIT            BIT(4)
>> +#define GP_SW1_ADR_MASK            GENMASK(3, 0)
>> +
>>   #define CTRLMMR_WKUP_JTAGID_PARTNO_SHIFT    (12)
>>   #define CTRLMMR_WKUP_JTAGID_PARTNO_MASK        GENMASK(27, 12)
>> @@ -70,6 +74,29 @@ static const char * const am62lx_rev_string_map[] = {
>>       "1.0", "1.1",
>>   };
>> +static const char * const am62p_gpsw_rev_string_map[] = {
>> +    "1.0", "1.1", "1.2",
>> +};
>> +
>> +static int
>> +k3_chipinfo_get_gpsw_variant(struct platform_device *pdev)
>> +{
>> +    struct device *dev = &pdev->dev;
>> +    u32 gpsw_val, adr_val = 0;
>> +    int ret;
>> +
>> +    ret = nvmem_cell_read_u32(dev, "gpsw1", &gpsw_val);
>> +    if (ret)
>> +        return ret;
>> +
>> +    if (!(gpsw_val & GP_SW1_VALID_BIT))
>> +        return 0;
> 
> Return -1 here so you will get the warning message about setting default 
> SR1.0.

Actually, thinking about this some more... If valid bit is zero, that
means that we have detected SR1.0. Id rather return zero instead of
printing an error to the user and overwriting with zero. What do you
think?

~ Judith

