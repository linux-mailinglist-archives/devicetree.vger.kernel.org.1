Return-Path: <devicetree+bounces-261110-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKB6LA9ofGk/MQIAu9opvQ
	(envelope-from <devicetree+bounces-261110-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:13:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDD7B834B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:13:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B5DD93004409
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0433502BD;
	Fri, 30 Jan 2026 08:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="Ee9cOLs2"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011044.outbound.protection.outlook.com [40.93.194.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6B732B9A5;
	Fri, 30 Jan 2026 08:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769760778; cv=fail; b=p0ip4peSojTGJFjrByEFZ23pUkCx/Aewj4FCG6R6GFL3ZSjOmUJf96Ync7N0iCt2j4PhznASPNtTksLqrkGFrhKnAgi2x2mesRGTKRmPp/NehcyIrg3HYGTpTVVZ0mTh+KHJKfflfPGUFyY23E3soFSJ4Z+2R5XpCvjIyPI2rf4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769760778; c=relaxed/simple;
	bh=GIoamnunLeiDn8eCZtcnquvdneQciXfKBBss3Dx/WHk=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=N1Jwvy1HBpRzYbPxQOtHGc9EInGgfML4XRQ5g5dS2AsrvLErQXW/Wo+up/zd08YFNHgGv9rtyLeALIpD4/ZM4O/697eIE2G9YM9hLDLCdFVdUG1QnqyjIcRXnoPTXiwltzkdQOZRfrA21BkzUYTqRj+y4RR6AVb3jwBHKQhoOyI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=Ee9cOLs2; arc=fail smtp.client-ip=40.93.194.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vlDOn/VI7F+J+jlEPzOepby6EJO1mjG224P+WGRCy61HIn1l0hCN1mzfJ/YXemKnMVwe5AhEpItxq1FlstNKGdMRJdjTiQA/UYiw30HLyJ7F9ATm2MpTc7lF+5sq6cKE0Qh18QIz+X83jWaS3CZUM7kEJVoeOoSfDoAX1cXz8jiLLWeNJqzouHL0Qb72dJjBF6JZlZhVWV0hl2+HPBpLPuSFCBwW0yoVQXL5d+dkvLpSZ1A1MKYCpyk/NpFHUcnrCTa1BNfdLCjcMuPU2xKnzqaXvSpMd7kbeeI8qbAjB/mVQi7DFkdIR23Dt0ddiaNbUbdL81ht5wIMuo1XaxKB6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wjwtb5lnfQuCFaYAU/rxG9rYfoGxSxPUeTHQSvHGZXQ=;
 b=yJn1voufhnX6ij0rQ7nzNtpctTej/Oh6q+V8LLsYEtstJFRiR/yewoFFysfjE/spAejhoIjiv8Q5T/jnv+BnmqzrfhRt1KapYskfrsBnhvUmjoLnxJqhb5dtDzj7c2n+fqzpyeULPR0GY1RfI5InFwqWMD3eOp4wf0+uYq0xJZUddj3ZWjhDtYuOUsQeJRl1Ac5ZlGajvlF6PHlvMJE8Po2NtWlUVdca3rRYTcwXgJDZYoEMkNd38taE5kf3fLK7XAfC2XEosiv8cm/LoAD5cJ6LgOlQ99z5KlYFHRHT4R9idIyR5t4FDrKLSrBIzfdEHAkapPF7NmGloJD3h0M4pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wjwtb5lnfQuCFaYAU/rxG9rYfoGxSxPUeTHQSvHGZXQ=;
 b=Ee9cOLs2ZAAn7teCXoRuJDaHjsRFro0Bsv+NHq2PW4By/KY58UmeeGCSSqfpUbAeyFPb9s6b3UsCjDdKg8SAgyVK1rJN/fnfANtABLajqxWO3QM7H+d+yrk9YmxaYf6auyTC1sCgH/7jiO9XcSHErUjV55RQCgL2a7BaPtd2o0o=
Received: from PH7P220CA0001.NAMP220.PROD.OUTLOOK.COM (2603:10b6:510:326::35)
 by CH0PR10MB5163.namprd10.prod.outlook.com (2603:10b6:610:dd::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Fri, 30 Jan
 2026 08:11:42 +0000
Received: from CY4PEPF0000E9D0.namprd03.prod.outlook.com
 (2603:10b6:510:326:cafe::95) by PH7P220CA0001.outlook.office365.com
 (2603:10b6:510:326::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.10 via Frontend Transport; Fri,
 30 Jan 2026 08:11:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 CY4PEPF0000E9D0.mail.protection.outlook.com (10.167.241.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Fri, 30 Jan 2026 08:11:41 +0000
Received: from DLEE200.ent.ti.com (157.170.170.75) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 30 Jan
 2026 02:11:40 -0600
Received: from DLEE208.ent.ti.com (157.170.170.97) by DLEE200.ent.ti.com
 (157.170.170.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 30 Jan
 2026 02:11:39 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE208.ent.ti.com
 (157.170.170.97) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 30 Jan 2026 02:11:39 -0600
Received: from [172.24.28.196] (ltpw0bk3wf.dhcp.ti.com [172.24.28.196])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60U80sbH971466;
	Fri, 30 Jan 2026 02:00:55 -0600
Message-ID: <9675d81c-12f5-4798-bad9-ecbb2349bb60@ti.com>
Date: Fri, 30 Jan 2026 13:30:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j721s2-common-proc-board: Add QSPI
 flash partition details
To: "Kumar, Udit" <u-kumar1@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <gehariprasath@ti.com>
References: <20260121051855.5890-1-a-dutta@ti.com>
 <1cc180ce-f808-4018-90c7-8df2c46ca94c@ti.com>
Content-Language: en-US
From: "Dutta, Anurag" <a-dutta@ti.com>
In-Reply-To: <1cc180ce-f808-4018-90c7-8df2c46ca94c@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9D0:EE_|CH0PR10MB5163:EE_
X-MS-Office365-Filtering-Correlation-Id: 15c0092b-a876-475f-8782-08de5fd73315
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QWZhb0NvM1pEeEJ0akNrd3FYYnRkTVBNY3E2RUgwWGNzZ3dvZDBsenNsUGQ4?=
 =?utf-8?B?cm1QNW5lenBpM2c0OXpXNjlLS25ZOTJOYk5ZNXBpQXYzam1rUHo1aGlmL0V6?=
 =?utf-8?B?RVRidmJWV2pLY09nMGZkRFRpbndmbTcvcDdmVU44ZmhzdjJRNkVXODVHY0dx?=
 =?utf-8?B?RDNiT21nVHRRVndFSkhuT0Q2T0k2MUM0TXZBc092QjZrNGZWRHdXbVh6OHNh?=
 =?utf-8?B?eS8yRm81UzlZZHpmcjFNQWdqSzA5a0x4NVJQc1RFY2xHQkJWYXdYaGtUVGh3?=
 =?utf-8?B?cHhvT3BDZUNGR2IvYStVYkRYTHlRNlNLQ21HZUlZY2kwZ2YwOEdZNnRFd0gx?=
 =?utf-8?B?bFJ6VWxyaE0ydUhVTVFXWmwrbnc5WXJ2OEZkZ09BNFNSYXUvbkNSYlpMdmhI?=
 =?utf-8?B?U3RsTlREelJxZFNsd3lpTkJlYzArOFRaaFZ4MGFLMjRsRzVlUzRiUGRYK2lt?=
 =?utf-8?B?NTZsdW1WUE9CWjJxQjlSTTlkcXhPMGRveFA3RG5yM2UwdzhkTjZsOWRzMnRh?=
 =?utf-8?B?d1duSlByR1gxUVdOd3hpMFNhQjhyZlNRRlhZd2k3S3E0Qm1PVW8zYXZBN3ZD?=
 =?utf-8?B?K2Fud2Rybnp3dE5IWUZ0VkxYRVFKZ25iQVcxNy9aNWxlWFYyMVovRHc5ZUVq?=
 =?utf-8?B?cWFub3BlbU1ueGdhWHBnY29obVN6VlhWSlRDSnNyOHR6eVFkTzM2SENMalBO?=
 =?utf-8?B?Ynk5ajZvQjJpYjU1R21FM1pjTHAvSytqVERHNDEyOEtLakFrNHZzczA2NVUy?=
 =?utf-8?B?SndkVEN5eFdDK0pSWUxuUEdjY1E1L3Y2d3l0eDU0OThZVlhDUUJJbzYzLzE0?=
 =?utf-8?B?dnZ6ajFZK0FFOW9OOXhLNVBVdi9SNktuekVwcTZMYVkxYnNTN2ZmSGF3eFVs?=
 =?utf-8?B?SFRPTENlVGJxaXlxZGRsSnJGS0Q5aTlvYkVacEpJclh6UlQ4eFNVcHJkdkNp?=
 =?utf-8?B?cUFaR1R3MytlTGNHRi9iMElhQ0tQZXkzUHVJU0dndG4xYzhGai82NXpHZHFF?=
 =?utf-8?B?QWREbW9EcDJvN0xoQW1objlPbmdkYlNtWTNZdm1ZQXBMbktIZkNMMXFLb2gy?=
 =?utf-8?B?Ti9YQ0xOREhQWFpFeXFxYUp5VlFGRnVkZnc0bStDMWhIR3IzZzJnOHRqQ0dI?=
 =?utf-8?B?SU03UlZTRi9Qa3Z1R1p2MVpBaHdzbnNTSUdkS0krUkRKRXFLekhqZkt1dHly?=
 =?utf-8?B?cTB2T2x6SFJaRCthaHNZcXgzWUtMTElZK0lsSU85bFZOclhxc1dtUGZlUzc3?=
 =?utf-8?B?YVhLcDUzRG82VkdTM3c1ZlllT3RJejByQWtnVnlOT2dZZC9ibFAvV0JhaFcx?=
 =?utf-8?B?L0o0ZkRtbk9INlhqUEw0dXNlRCswQVZIY2hOcUxMVlUzamhNL2lBOGZZMlZB?=
 =?utf-8?B?SDVXOS9ST2JqNldCaERVZnoyUUhyNmN3ZUpwaFVaWGtHWVlvR0o0QWNpa05M?=
 =?utf-8?B?dVhzcmt1a3NMbUZVNFY4VXhZVHJoS0cvOWliakpHQWhLWEI0bldscWhPQi91?=
 =?utf-8?B?VmREbG5nK0dCNHhFdUZYZHJ2N2p2OFowOFVtQjNNZUVyU1o5MzJrZTdSZnQr?=
 =?utf-8?B?UlhPOTZwbmxHL05DT2pDa2pBcHRjUXVtVTFQc1ptUDdvWkFFSFE4TDl5cVh1?=
 =?utf-8?B?S0dIUityNFRxUXd1aVhadVQ4aHl0c1VQYWZpQWRLUVhZRDJmbVhnN3I3dk1W?=
 =?utf-8?B?WUdPckdibk9tSnM0aU81Qk9wdDVieGFrNnNjQnFMNG53YlhDTTdwdFdtdmJq?=
 =?utf-8?B?UmVVNWlFdFhHZ1kvOWhwSThqYnRTYVN5ZlZIb0JGWVU3SjlUZXRUL2VFOEdU?=
 =?utf-8?B?eHZ3OFoyUFE2QVJ3MnE5WXlRZXptUU9pU1dJYXhLaUpjenNLYzNtV2tINFdm?=
 =?utf-8?B?RUR6cGxCWDRjbGVIQWlTcFpnYTJYZ3RLQ2xHSjNpaTZzb09haGtoQVVEODdF?=
 =?utf-8?B?WmNzVzAyc1VtN1VxV2FjSEtPZFlNRElYWEsyTVNLMVJ1SEppS0Nqb2JxRTJD?=
 =?utf-8?B?dnFqTnRUV1RiNmN2YVRwN3huNG1pSnlTcytxZEdqMGZkYlVSaXVCYlRuaWlr?=
 =?utf-8?B?OEwvUDhtVS9pWEtaRGtGTy9qMUNieUEra0ZnRk5tbnorV1ZYSTdIaWhlOTln?=
 =?utf-8?B?SHZUUnhhS25WcHFlQUVXWnFPS1BpQkhGcklTSmhmeStXcGc3dk5HbGdCa0pj?=
 =?utf-8?Q?4fjWduPMY4gXe3DZKLb2L1s=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(36860700013)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	EOoE9dO0s3P3o6PfCo5RRibO2mKMHdVGcLydlLAiLHZRJSyze0OvfG4OooleblZlHIGnin2N1bs3DLQ4HhbWuOO8Mw96WAEe9V1bXUeS5xQFIG3HsSmJa5nA8WcOAMfpnLeyfKrpUUSgofOT/y/72C7k7CWnZKFD9cPic+Al31NQu8mURt9izjWtifPKX5FQl3AUMBOC2GW3hZhmQIZp57/v6gPbvRdHDRvijpbQe3wfOEff+71Vjcxbz6uU6uzrlh0LtmS/tIoo1ZqRcL/GgYak+GeC9Y1no61pdOg2STgzZ4QsdohsCCD+410v/ki9z40Boe2AMqgDNy8KxRCsW7kXAkPaZVrxgAmFmZd1UOKxbf7lHycmmgYLXrE7nicNnV1T0GOS1tRORsfdoW8ny29DRKJ+8lHUAGfdrQ5zmxa29Y4rsdIjqt3T5BNh71VM
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2026 08:11:41.1894
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 15c0092b-a876-475f-8782-08de5fd73315
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000E9D0.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5163
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261110-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:email,ti.com:dkim,ti.com:mid];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a-dutta@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.1.56.128:email,0.10.96.64:email,0.4.69.192:email,0.12.53.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: CFDD7B834B
X-Rspamd-Action: no action


On 22-01-2026 08:53, Kumar, Udit wrote:
>
> On 1/21/2026 10:48 AM, Anurag Dutta wrote:
>> J721S2 EVM has MT25QU512AB 64 MiB Quad SPI NOR flash connected
>> to OSPI1. Add the partition information as per bootloader.
>>
>> Signed-off-by: Anurag Dutta <a-dutta@ti.com>
>> ---
>> Test logs: 
>> https://gist.github.com/anuragdutta731/b65f63f22c69317d714b65a201438cbc
>
>
> Thanks for logs, but these are for boot-loader and I don't think 
> u-boot consumes partition details.
>
> could you share logs for kernel as well.
>
Hi Udit
Here are kernel logs : 
https://gist.github.com/anuragdutta731/d4ee38df3ed8889f44bf28ab163b1baf
>
>
>>
>>   .../dts/ti/k3-j721s2-common-proc-board.dts    | 41 +++++++++++++++++++
>>   1 file changed, 41 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts 
>> b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
>> index 4fea99519113..7faf9367dbb2 100644
>> --- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
>> @@ -530,6 +530,47 @@ flash@0 {
>>           cdns,tchsh-ns = <60>;
>>           cdns,tslch-ns = <60>;
>>           cdns,read-delay = <2>;
>> +
>> +        partitions {
>> +            compatible = "fixed-partitions";
>> +            #address-cells = <1>;
>> +            #size-cells = <1>;
>> +
>> +            partition@0 {
>> +                label = "qspi.tiboot3";
>> +                reg = <0x0 0x80000>;
>> +            };
>> +
>> +            partition@80000 {
>> +                label = "qspi.tispl";
>> +                reg = <0x80000 0x200000>;
>> +            };
>> +
>> +            partition@280000 {
>> +                label = "qspi.u-boot";
>> +                reg = <0x280000 0x400000>;
>> +            };
>> +
>> +            partition@680000 {
>> +                label = "qspi.env";
>> +                reg = <0x680000 0x40000>;
>> +            };
>> +
>> +            partition@6c0000 {
>> +                label = "qspi.env.backup";
>> +                reg = <0x6c0000 0x40000>;
>> +            };
>> +
>> +            partition@800000 {
>> +                label = "qspi.rootfs";
>> +                reg = <0x800000 0x37c0000>;
>> +            };
>> +
>> +            partition@3fc0000 {
>> +                label = "qspi.phypattern";
>> +                reg = <0x3fc0000 0x40000>;
>> +            };
>> +        };
>>       };
>>   };

