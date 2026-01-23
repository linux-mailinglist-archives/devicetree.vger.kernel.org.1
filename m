Return-Path: <devicetree+bounces-258732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PP4KP0cc2mwsAAAu9opvQ
	(envelope-from <devicetree+bounces-258732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:02:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB537155E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:02:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4242930479F8
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 06:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7130A330321;
	Fri, 23 Jan 2026 06:56:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="BDgtLnBs"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013005.outbound.protection.outlook.com [40.93.196.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489BA1DA628;
	Fri, 23 Jan 2026 06:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.5
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769151374; cv=fail; b=unfRmrfUCR0dr8IvzxciMnShj+S5APri68C7EoTx94XpvJhlnuevzkUBTO7tyftF42PH8xNuYtOMzTwimRPB+nA4Fhpi+C39ZCcrmMqLj5es7FeCV4TNaJG37J37w6MFFXhWBk/taddiWirRqBP6A3vCs0rzsUicVS8/n8RkIZY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769151374; c=relaxed/simple;
	bh=u4tXXBCXRPIDxiALKYYJD7vqNN0oLjMIkBIFY5E/tjY=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=KcPp29ajeBMiLaL+XoHXtrEwjtVPTCg2Cas0hVVw8SBr4cRLzUql1lkMavWr8QVukmSO//Ddw5DNmQZqXZbzIFvt/LRDKEzY+r1nLLPyyxo5FFf1QFqoQReq4wEDb4cyGMhYxWj4U207p90macopjwmd26A2/nwBA5xCR1ryh4o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=BDgtLnBs; arc=fail smtp.client-ip=40.93.196.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XwHdTNE2boKLDf24pRsAsB83aG7MATKT4m5Ao8SdDSyj7atpQ7gwMj2LiCb3vXCMYWDM2tuoCydzy3wHZGZqxbzBV1+6C1DUlJh3PhGhzLd9zP43ACdSH+sQLvhvHjs+3hDYR3/pU5sFRpWaWABKXtLLbjBGmYQesnOhqq5CiQMo8x99Psbjc4B4mmmWjW7fpGHV6uVrqKXHtS7cZV78TBkkZ44pm2kjPunZ2n1AeAgaAwxQXJfhSutsoIC99lpetCZ6WR9ngVLRql3H4VXbXcGny2owjKYiVZ7iGgYRzWS+oVLklwp5EByWtajGJ/OyPWsbqWu8id1s90dzLjMSBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3W5KGDF+4ZSNzkZPNTUZ4xY9Uzf4sa6XWuctlKpQZLI=;
 b=dpNNmceMQIcfBtD8JcsopXZyKVN44TZswqYnwzoQBwXJ6N9Ab0p01HSYOU12YJVhkUA0hZYKUYA8VJIJU5n6KJBYZyGShoGuAMfJutx8wAdgk3lcvdfAuVLY1/8gKcNP16zatFtuJWVeFlw9ECafyXxGXbBNp3tbo8VakLNuj+rc7vKb51i3JggCLwY+Ta3CgPBe0w8zilzEBqqqa+3AWZCjZEy8dUzQ3NgJS/ZqHpTh/h8W6cSekb1ya7GrQWFmLd1zXz63XZ1CUUQuMNvvCJU49Y67iSquK0MA830VE8KwUAnZg4GlaMX0phPDwq6blWiv+2Gt4SuburLpW4jKnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3W5KGDF+4ZSNzkZPNTUZ4xY9Uzf4sa6XWuctlKpQZLI=;
 b=BDgtLnBsu3KQ9SrFCzrUuALYkUrmCVvJ+qcdbaySw76fWj4clc2tXEJLIQ9kA7plf1yG+SFouXnwfeinsx9Be96D9ISVg/Hr1F6G2zxte+zBQuT7P7at+Ke4T+4I5lAsT7SY7X/lS+sZPQf4/m33nPls8KAO5/ro8XzT90JXDQg=
Received: from SA9PR13CA0075.namprd13.prod.outlook.com (2603:10b6:806:23::20)
 by DS4PR10MB997575.namprd10.prod.outlook.com (2603:10b6:8:31e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 06:56:09 +0000
Received: from SN1PEPF000252A3.namprd05.prod.outlook.com
 (2603:10b6:806:23:cafe::21) by SA9PR13CA0075.outlook.office365.com
 (2603:10b6:806:23::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.3 via Frontend Transport; Fri,
 23 Jan 2026 06:56:07 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 SN1PEPF000252A3.mail.protection.outlook.com (10.167.242.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Fri, 23 Jan 2026 06:56:08 +0000
Received: from DFLE204.ent.ti.com (10.64.6.62) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 23 Jan
 2026 00:56:04 -0600
Received: from DFLE201.ent.ti.com (10.64.6.59) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Fri, 23 Jan
 2026 00:56:04 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Fri, 23 Jan 2026 00:56:04 -0600
Received: from psdkl-workstation0.dhcp.ti.com (psdkl-workstation0.dhcp.ti.com [172.24.234.127])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60N6u01R1765468;
	Fri, 23 Jan 2026 00:56:01 -0600
From: Aniket Limaye <a-limaye@ti.com>
Subject: [PATCH v4 0/2] ti-sci-intr: Support level+pulse interrupt sources
 together
Date: Fri, 23 Jan 2026 12:25:44 +0530
Message-ID: <20260123-ul-driver-i2c-j722s-v4-0-b08625c487d5@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHAbc2kC/33NQQ6CMBCF4auQrq0p06YUV97DuIB2kDEKpsVGQ
 7i7hYXBhLj8XzLfjCygJwzskI3MY6RAfZdC7TJm26q7ICeXmoEALfJc8+eNO08RPSew/FoABK5
 MAyBNWbrasXT58NjQa1FP59QthaH37+VJzOf1vxdzLrgFg6aupKlKPA60t/2dzViEFQBiG4AEG
 AmiLKyutWp+ALkGYBuQCVBopSpMI43WX2Capg9kzE1INQEAAA==
X-Change-ID: 20260116-ul-driver-i2c-j722s-48f223899dbd
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
X-MS-TrafficTypeDiagnostic: SN1PEPF000252A3:EE_|DS4PR10MB997575:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bf03eb0-2aae-466c-13c3-08de5a4c7c4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QlNDZzFlTzMwZDJIUDZ0N3oxbzltOWxWYm9ZZC9CVWVQT3FVWUY4NjJPY0JH?=
 =?utf-8?B?WmJYVkZiRzRDV3FTeTN5ZFhmME9qMGZPUU9FYlBZWldmNEQ0bEVqZlFSMERi?=
 =?utf-8?B?dFQ4OFV2Q1VOTFFobW5MaElkTEpRQ2pMUTZ0VGZLY05NVzluWlNjMXhvcWlr?=
 =?utf-8?B?ODlsMTlFRFl6V291VzIxdGg5QmVGSWpSN2ZybURJTWRLbEFweXVyNmpCcWJu?=
 =?utf-8?B?Vk51QnRqUTdBSjBrcDBnZmk5U2lqRDZLeXQ0NEFIRXZWNnB0elZoRi94Zzl0?=
 =?utf-8?B?c1JhMVpacWpXRjJKalJMR1ZhbUFRNTYzclFpMmltWXdCekMzREZ6Z2hjSGtT?=
 =?utf-8?B?RE5hOFZtQXNLZmFsQ2ZiaDFHRGVzWEhRb3F2R1hSd0RWNlR5ZTBiVmUzYW1t?=
 =?utf-8?B?SGJ4WHZoRmhpaXpxQUVBN0UzK1ZRelR4WjVjeS9iSnVRM09DZEF6MnNmOVp4?=
 =?utf-8?B?ZWdPUXI4MHRmU0tBM3Fyb1ZJOEdrK3ZXR3RMYVV2ZzFDanRKSm5BaUNQcmxk?=
 =?utf-8?B?eDZxeDJZSGJ2WndmOUJyY3gzUGxzaklrWkJWQitqcU5IUXlKMnRoVk9pLzNy?=
 =?utf-8?B?dVY5NlR6QXJLbW9RS2lCZTZUcytldE5HREZpcVZYRnhqWnBBaFdxcE5KWG1z?=
 =?utf-8?B?NGRsUFlWUkptdUVUeU9oWjNzV0JNdHZMa09OWlVSTmpkS3dLZ2JQTzhLWDlQ?=
 =?utf-8?B?SmF3RnlxSHVrNWp0SjA3cWVKQTdtQ3I0QnJzRnpvTUtFeHRNSDViaEJkUXlI?=
 =?utf-8?B?dVNtN2EyQlk4aFhuWkNQOWp0RkhKdWVCRDZaOUt3b1pjaW45Z3pPNzB4bzMw?=
 =?utf-8?B?eXBFbm9OOVlkbzNxNzJmVmgzUmhoM3k2THJXMGs1TFZGb1ZwemllYW1lditk?=
 =?utf-8?B?cVFLSVEwRUd6bURCbXd2K0wvU3NTN1VWN0xrQkZNTmsvV1d4NklBVXB5NUdv?=
 =?utf-8?B?Tlh4UTRReklrcnFDKzZVa2VDSkN4RjlQWUUxNWRTM09uN29ja1ZLelFicDJJ?=
 =?utf-8?B?MXkyZ2JpYm0xUEh5ZXRQVHovdzFnWUsxU3BiUklORzFDU1ZDZ2VXL3pid3h3?=
 =?utf-8?B?T2I2OThheHJyTzNxSkNlRURHNjlxYWpJWFFaODgwdGJYcWJOSFZ4UzM5TUZt?=
 =?utf-8?B?WFNQb2NwUmcvWmNTUi9LRDc3bDdkNFZjTjhId0RhZHdXbVRPTkdHQzBLWHMv?=
 =?utf-8?B?SkZha2VKYmdKY0RpdFpvRkZxcUhVd3NWM2NMVXZuQm1iREM2SDVFck05QnJM?=
 =?utf-8?B?aUdQRGJkNUMwbHk5bUQxb3BKZ2hlSlFKNGVvL3g2RW5RSnNTNXllWXRMQVdQ?=
 =?utf-8?B?SHNvWVlBZUhyVUFCWmg0TkJoUFNwc0Rya2hnMkVVU0YrZTNSYkZzMzhxVXdC?=
 =?utf-8?B?WTFOTndrWUVLYTk5SHRTT2JuWU5OMW1EMjcrWG1jM0hDU2JzZzBwakxqVXBl?=
 =?utf-8?B?SGZ4dUk2VTdSVHN2cHRmNHQxbzI5SnhEUzc3ZkhxakZjZ2hJRjE5clVLV1Bv?=
 =?utf-8?B?am1VNkdDZkxteUVBQ08zVUVXWTRwaWo1L01xRlZUWUlrTjJCMmk5TkpHT3ps?=
 =?utf-8?B?NjQxN1VUbEszSDdBUkNydGhHOTZscENrMXVzN1FIY3VLNklicitPWlAvTy82?=
 =?utf-8?B?Q0QwOWI0WS9sVitpSWVFZ1FJdDJ4UVVkUHJUZjd6T211OHVOS0dvc0hIUlgw?=
 =?utf-8?B?MlhPZXRobHhaQjZmSmQxT2xQNU1yaWpMY2xlc0JCNE9CQlp3VmJGNEFZRXpn?=
 =?utf-8?B?VmxyZVcxMjlNcWhDbkp1QSs5bkFrZTdFeGRWbnovTVVMSmQ5d3VweUdrQnNX?=
 =?utf-8?B?bmdlRVVaTmptblBKekwwNnFXZG9DVWdmMk0vdVNsRVYyUFpBN20wb3lWd1JY?=
 =?utf-8?B?MWxROWZkL0RwVWptOUpQU0FSQm1qS2FoT3pmTzA4b0Z5NUMxdWlwOXk0OUZx?=
 =?utf-8?B?QzB6Mm9IM3VTRjBURGx1WFJBWEw5T2lCTXYrZ285TG9zMGNMMnRWNHBHaXRo?=
 =?utf-8?B?bTMvVGFrbS9FM293Z1YvTzU1alNDOGwyOUlXeVB4K1N4YzF6d3J1OWt0OFhz?=
 =?utf-8?B?b1MwZ0lYU044aE9YNkNyWEFoY0IrbkZzcUtvZWR4a0ROdTJKdWtqUUJSdng0?=
 =?utf-8?B?R3U3QXd4c1kzMDc5N09MVkFQeHVNM3FnZ2EwR3dpYWtjV3VLaXJHenFDcHU0?=
 =?utf-8?B?MVp4NWxYYSsxNERUR0xES0ZYdmJiVittNlZqZEZzVHVxQWpHV0Q5eExjNGYv?=
 =?utf-8?B?a1U2cHdCY1JQQjBDODh6SUNJdXpnPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 06:56:08.1866
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bf03eb0-2aae-466c-13c3-08de5a4c7c4d
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SN1PEPF000252A3.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR10MB997575
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258732-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,ti.com:dkim,ti.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a-limaye@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 0BB537155E
X-Rspamd-Action: no action

The interrupt router does not support interrupt type conversion and
forwards both level and pulse interrupts to the parent (GIC) unchanged.

Hence update the INTR bindings and driver such that
1. If "ti,intr-trigger-type" is absent, parse the interrupt-type
   declared by the source, per-line, and use that to allocate interrupt
   from its interrupt-parent.
2. Else, the global setting specified for the property is used for all
   output lines. This maintains compatibility with existing platform
   DTs with no changes.

This change is needed because:
main_i2c4 on J722S is a level type interrupt source while the rest of
the interrupt sources for Main GPIOMUX INTR router are pulse interrupts.
main_i2c4 on J722S is not present in it's dts yet and will be added
through another patch series after this one gets merged.

Testing:
- Enable I2C4 (additional DT patch) on j722s-evm and run i2cdetect [0].
- Add testcode to ignore the NACK interrupt, which results in an irq
  storm -> showing that GIC is actually receiving level interrupt from
  the INTR [1].

[0]: https://gist.github.com/aniket-l/b5825cd8f2c1d11da4580e011c656ed7#file-j722s-evm-i2c4-working-logs-txt
[1]: https://gist.github.com/aniket-l/b5825cd8f2c1d11da4580e011c656ed7#file-j722s-evm-i2c4-irqstorm-logs-txt

Signed-off-by: Aniket Limaye <a-limaye@ti.com>
---
Changes in v4:
- 1/2 Don't repeat property descriptions at multiple places in dt-bindings
- 1/2 Use generic name for DT example node and remove the label
- 1/2 Collected R-b from Rob
- Link to v3: https://lore.kernel.org/r/20260122-ul-driver-i2c-j722s-v3-0-4ec3478f3866@ti.com

Changes in v3:
- Avoid new redundant value IRQ_TYPE_DEFAULT for "ti,intr-trigger-type"
  when "#interrupt-cells"==2. Instead, make this property optional and
  check for its absence to use the per-line interrupt-type setting.
- Link to v2: https://lore.kernel.org/r/20260120-ul-driver-i2c-j722s-v2-0-832097c6b64f@ti.com

Changes in v2:
- Use correct Patch Subject prefix
- Reword Commit msgs to better describe the patches
- Fix function argument alignment as per coding style
- Fix variable declaration ordering as per coding style
- Link to v1: https://lore.kernel.org/r/20260116-ul-driver-i2c-j722s-v1-0-c28e8ba38a9e@ti.com

---
Aniket Limaye (2):
      dt-bindings: interrupt-controller: ti,sci-intr: Per-line interrupt-types
      irqchip/ti-sci-intr: Allow parsing interrupt-types per-line

 .../bindings/interrupt-controller/ti,sci-intr.yaml | 38 ++++++++++++++---
 drivers/irqchip/irq-ti-sci-intr.c                  | 49 ++++++++++++++++------
 2 files changed, 69 insertions(+), 18 deletions(-)
---
base-commit: a66191c590b3b58eaff05d2277971f854772bd5b
change-id: 20260116-ul-driver-i2c-j722s-48f223899dbd

Best regards,
-- 
Aniket Limaye <a-limaye@ti.com>


