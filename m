Return-Path: <devicetree+bounces-258529-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eD+hEDVUcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258529-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:45:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C5A6A361
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:45:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC60631E9501
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF193DE33E;
	Thu, 22 Jan 2026 16:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="O2pgEM5V"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013014.outbound.protection.outlook.com [40.93.196.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BE3C3B4C9F;
	Thu, 22 Jan 2026 16:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769098668; cv=fail; b=i3z/AL4kaIWknJq3bWd0GEI6iYkb61XnZKQzTkGdi8GcHnYSL3Fca4XcSGw9tFfiGYWxdujpW+4Zkqlbi/wkXFwcP6ShlvqSLyWec2KIPJ4dVVTKPTd5RffoG9G7fE5j/ppnCo3Ql0mR71NMCR/lC9S5/lZ+cXpz/VsOTt8d9As=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769098668; c=relaxed/simple;
	bh=aZsYUt7VN1LU8/wfAsoFfqu90HWl5vtf1z2ZOFeK4us=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:CC:References:
	 In-Reply-To:Content-Type; b=SaQ+josqdZ1NebQd7bvoBm4qs3bcFyxYZIlWnx5YGEZ1lW/fdYhAggI0RniqrFmd/uXLDxZNF1wEHHOmx7YILyFix4uBe4mUjhTD1WlWqyUi2xE707/cmt+cQQjQgi8jILOkFbWozELldnrW08Xy7IF2ckHW5UPwRxBVMhkMiE4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=O2pgEM5V; arc=fail smtp.client-ip=40.93.196.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Op4ttfDpILJtwuaNl9oqXFyigKMAFi2HMmuNAX76wYemTUSZh8I0mA4hW0nGVWN4W1TfgHqVj4DEbTsm1FEYyae9K/Us90lAcnIdJo2qBQcHofDXEZUwziwbd27KcCr7oQKAABZ7imF/Ze7A4AWcwlYq8VfYzciuJzPJFnjTRSjEQ6/OpN48zARpJhT/nm0MH0q9d5h3TebvnPTLy2v7XaWJnUIUB1/M1xuMxAKeWRvec/FZgKeRfWHeXSSuwOrro1qFMGVb5CjqOHxXqJ1cgfMZbfEexgyzDOE5siMQA7L5StGxRrIsgdU115fPcEX1cgS4BoOtInitLkjw+f87QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QeePwCzK/dPdZ6+vRrt8I/+j/w5DSfZBVSMbTPS53gg=;
 b=DQnS3z1lbz1HpqWYU9KQ/sJdOWTg8+ZXu5hm+z5Nq75G35SEUSJnZtzpd55W0FsmGQnn4h73pJeqClWNRsTpxnLrCiae601SSp7MqlLRC8qENz8zmm9gmUHvfwtXg6zYNJeuyRcwj8PQ89SrvDCWRoANEM7qCE2n1N1OzqwTn2Ft55KGZwobwVOoBf4DSFczuqIxSpuX5bAS4CKiVYd/rYK0hIfT4wSz6NFJ7er/kmlPXjnHLxnqzS8JoZ6GL2proso8AxBo+LZFKdtaKxZibizs13yrl74CEavXUOz81prK1KLNy/BibOIzc5dDbB8cheiHNEf465DM3b2UuUYbmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=linaro.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QeePwCzK/dPdZ6+vRrt8I/+j/w5DSfZBVSMbTPS53gg=;
 b=O2pgEM5VqDU/T2WZqmvvZDrKtnzHAjJgD/U3frpTGYql/T+NaXwUdQhqvmwjwlbL1YyWXx9V68lTVfHENtM6Mw3AwINIzB/hLR3JysEMyC6czfNgJ0T44txD0Rx/AUotvmiBb/fNw4kalMXaWjak4UVtHxmwlzaorCLzO4Mhybs=
Received: from SJ0PR13CA0069.namprd13.prod.outlook.com (2603:10b6:a03:2c4::14)
 by PH5PR10MB997735.namprd10.prod.outlook.com (2603:10b6:510:34d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 16:17:38 +0000
Received: from SJ1PEPF00001CE4.namprd03.prod.outlook.com
 (2603:10b6:a03:2c4:cafe::bf) by SJ0PR13CA0069.outlook.office365.com
 (2603:10b6:a03:2c4::14) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.3 via Frontend Transport; Thu,
 22 Jan 2026 16:17:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 SJ1PEPF00001CE4.mail.protection.outlook.com (10.167.242.20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Thu, 22 Jan 2026 16:17:38 +0000
Received: from DLEE200.ent.ti.com (157.170.170.75) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 10:17:37 -0600
Received: from DLEE208.ent.ti.com (157.170.170.97) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 22 Jan
 2026 10:17:37 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE208.ent.ti.com
 (157.170.170.97) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 22 Jan 2026 10:17:37 -0600
Received: from [128.247.81.19] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60MGHbhl702694;
	Thu, 22 Jan 2026 10:17:37 -0600
Message-ID: <1878d1e8-df99-445e-82d9-1a76c934fda1@ti.com>
Date: Thu, 22 Jan 2026 10:17:37 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-am62l: support cpufreq
From: Kendall Willis <k-willis@ti.com>
To: Dhruva Gole <d-gole@ti.com>, Nishanth Menon <nm@ti.com>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Bryan Brattlof <bb@ti.com>, Viresh Kumar
	<viresh.kumar@linaro.org>
References: <20260122-am62l-dt-cpufreq-v1-1-fabcc15e25fa@ti.com>
 <77b3b869-558f-4854-95b0-57980be28032@ti.com>
Content-Language: en-US
In-Reply-To: <77b3b869-558f-4854-95b0-57980be28032@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CE4:EE_|PH5PR10MB997735:EE_
X-MS-Office365-Filtering-Correlation-Id: c4c26640-eec6-4e00-db1d-08de59d1c2c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RllQYktUOUFuUjBwSzd6YVU2dGlXTEFISkIyOU1KY29VTlZBclRPQnduYk9m?=
 =?utf-8?B?cjhHYVhuem1hdjZMM1Z2VXJpdU5ZMW5CN0lpeW1OU0RyeFlaeG9kS1JhMHl4?=
 =?utf-8?B?RzdsVjFoSlVZYyszOWlqdnArKzUzL2Zhb1dvdkpiY2cxMGxiUjBBbTRFZzR1?=
 =?utf-8?B?cys2eHQrSTA4aEk0V2FsdW5Pc3lUbmc5NllFc1c5cDFHR3hhZVhzeDhCSmY1?=
 =?utf-8?B?VlFZK1lTY2RBMSs2aytldS9tSzNCSnhrTUl2WUpGQVZESUpiTmVUOXE3VHZ6?=
 =?utf-8?B?S0RtSFRlZFhOUElGNDNlUVNWMDRXNHV3Mmp0TnI4MjJkTVZ2UjZWaVF2V2Nt?=
 =?utf-8?B?WmJXRXRNN255NTY5dkV5czRsOHQ1T0lwV3F5QmUrK0MvVlFwOXNCdmxHdEJs?=
 =?utf-8?B?QmZkMW9PZ3lRM2EyYlN5OEt0eEE3cGtMZ3NPUkNNNzByZldwS25uaVQ5NGpi?=
 =?utf-8?B?QUhJajV1YXFERVZTR3ZGNTdId1JNdnZySGtpT25vK2N0NEhPYmcvNHRicGlQ?=
 =?utf-8?B?dzlVM2FOeVdnZUp6VitTN3EyaFRsUWQwSHVvVTk5cDcvNW4zL2lWTUNlbW9V?=
 =?utf-8?B?amtmTHRsSzB2SmI1b09SOVV1N3VzL0I0ekpBYk44K2tPNkhHZ1RYeDFXNDhO?=
 =?utf-8?B?ZjA3ZXppQjV1L0d0S0U3THNmVVdpamIyeEhGTXAxc1owZld4RG94eld3VnZt?=
 =?utf-8?B?emxHQkVQa29scTF6c0hZUHJIVkJQekNwT2VIQUVaV3JjcEUwdGlVc2xldjFV?=
 =?utf-8?B?UFlXdTBuUUVtV0VjdVFjZWFlSTY1ZU1qUFpzTXMvdzlqbzBMNnlvOFI3bTM4?=
 =?utf-8?B?eFoyOTQ4Tm5DTUl3MHlrbGR3dXczZVhGRW1ZcTBUT0FMb3kyWG5TcVNoalBt?=
 =?utf-8?B?RkVXZFZKYlhjRGkyVE83VHU3c0N4bWFFSkpwY1lhMmllVTlka0VQeHRRUmxT?=
 =?utf-8?B?dy80bmdhaUEzMDlwd3NqZVBpNjg1NHNlM1B4TW9seE9XYWgwT0F5d2NRSHNl?=
 =?utf-8?B?MGptTWg4dUE3SDE1eHN6SzNnOUpKa1hMeFFHOGFyUDVIN3h6Z3JjQ09JSGVk?=
 =?utf-8?B?dEFDMFlYc1VZRVZWYXg5MkJ1VWJxSFkxYVE3dW5zMm9Na2g3QU5iT2lXTVRV?=
 =?utf-8?B?SGh2eWZDYy9BekNUM2RsOTRONzZqdmhGZFZoR09PVXMrR0t1RjZYaUlFSWoz?=
 =?utf-8?B?MGdvNlkwdlNGWDJuYkt1Tmd1VFpDdVhjc0o1dlFQaFFJUEt4VjVLYko0RG1M?=
 =?utf-8?B?MGFWQkRSL0ZGcU8zRm9mR2I5ZHNNNDBCNVM4amE0dy93TVFCU0sycEUrWHg5?=
 =?utf-8?B?WkFoZVllRkdTQjlhVUJySlVKUXQxcVlYNW5oRnczamtJLytjNEFiaFB5NTcw?=
 =?utf-8?B?UGJDaWltalpBcDJ4VldDTVl1a25kUXNHcUh2OG8wUWFSd2ZrckZTZjhxYXR0?=
 =?utf-8?B?WFdQbWYwQkJ4MlRSWHIzMmt3OXdDa0JtSmxpZUdOZWZPckNUQjd4SitXeThP?=
 =?utf-8?B?S2kvS1BhcHcrL0tRYUhEK1BjWVRTNExWL2ZFelVtTzBVWkk2ZHFpRHNLcHd0?=
 =?utf-8?B?UUJwOXREd0hjM3ZMU0hOZXQzNzVXa2FRcVJ1OHM2Q0ludVV0QnFTVzUrMWwv?=
 =?utf-8?B?QW5oZ2hHenB4ODRyNGVZWGUzazhGNHBKYkM4VGp3MkcyRDM2clNva2dNS0Mw?=
 =?utf-8?B?Ukc3Q2RoOHpOeXRsVmJKS1RaSURBamEzdVdncGpOcDdqTXRPRkYxOTc0K21i?=
 =?utf-8?B?cXpnTzAxU0xvWTlueXErR0xSSDNaWmMzVXVRL0pSOWdtbjY5cXBnQ1k1bFZt?=
 =?utf-8?B?Zlg3clNSSWlpbWw2M0ZlR1M3cGRSaXhZV2Z6WXc3TzRIclpnYUtRRzU1Tzkv?=
 =?utf-8?B?V0hHdTBxOHJRc2RCYTREd29yNEcwbVU0UnNRNXJMNnl0TS9CeVRZb2JQTFRn?=
 =?utf-8?B?SjNraTh0bHdaQm5YOTd0MFNwMmtJNXB6NHJSTGErVEVrNnR6RW82QVVRM05U?=
 =?utf-8?B?YjU1THlrZTFRNFE0M0JYNVNiaHBYbGpDY2xBbm1ZYTA5ZE1ZVjV6OXFEdHF6?=
 =?utf-8?B?VFJSV1UvdEthUGcxVnZuZWx4TG53dnlwNXY3ZGt3cHNRZExIQjh0Z083NlRD?=
 =?utf-8?B?Q1NsKysxY2xONGpaTXJIWXkxdzh3NGcwbGxKWVNQVCsxTWR6cVY2djg0RnZ4?=
 =?utf-8?B?aDh5ZzlWbHRPZnBTNjZpUmhRdCtqOEgyYXAyWTJmVTJ4SVNwSjFpWGFPcW1n?=
 =?utf-8?B?MjVxekhuTE8zR0lWTndYYksxR0NRPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 16:17:38.2370
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c4c26640-eec6-4e00-db1d-08de59d1c2c0
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CE4.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH5PR10MB997735
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258529-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,ti.com:dkim,ti.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 83C5A6A361
X-Rspamd-Action: no action

On 1/22/26 10:14, Kendall Willis wrote:
> On 1/22/26 04:49, Dhruva Gole wrote:
>> Enable CPUFreq support for AM62L SoC by adding the relevant OPP efuse 
>> table
>> syscon to k3-am62l-wakeup.dtsi for speed grade detection.
>>
>> Add the operating-points-v2 table with CPU frequency steps from 200MHz to
>> 1.25GHz to k3-am62l3.dtsi
>>
>> Configure CPU clocks to reference the SCMI clock controller for frequency
>> scaling
>>
>> This enables proper CPU frequency scaling capabilities for the AM62L SoC
>> using the ARM SCMI protocol to interact with the power management 
>> firmware.
>>
>> Signed-off-by: Dhruva Gole <d-gole@ti.com>
> 
> Reviewed-by: Kendall Willis <k-willis@ti.com>
> 
> Best,
> Kendall Willis <k-willis@ti.com>

Oops sent my reviewed by on the wrong revision.

Best,
Kendall Willis

