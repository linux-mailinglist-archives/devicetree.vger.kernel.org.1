Return-Path: <devicetree+bounces-257302-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QF0vLuK8cGkRZgAAu9opvQ
	(envelope-from <devicetree+bounces-257302-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:47:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D4E56372
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 644955E1FE4
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F42E40759A;
	Tue, 20 Jan 2026 10:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="EV0tsHZ1"
X-Original-To: devicetree@vger.kernel.org
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012034.outbound.protection.outlook.com [52.101.48.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75543F075E;
	Tue, 20 Jan 2026 10:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.48.34
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905869; cv=fail; b=Ot70N+d5fq+bshpJ5etIEMldiU58ztsOV54cd6uZDQ2kWOvFcYkZPcbnGZNov8st/lf6YCHoAJsIQ/nS+KR+ee0DLJIb8ryuncc13l4ovLdYuP1MSYMQML/Y7XhotKhp0symcYfHO5kwB8TaziENy8CIXhjujec9YydESkwhrEE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905869; c=relaxed/simple;
	bh=OY4y7hO5D1KW6EzIPmuf2rmGZeLDYCejKQSsYMRNJ5s=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=UqaFeD/bZuru7DmVQ/VVP3xfhbdHqnM9YGBgE3UbfNoQw02eTZeuaD0IjQF6+l4TF4ucZIofvRe4t1NbeDAAaP9lgzEiGoFlsbWQbQFv0vAGQsE3aQ94accReybhyNooE73Z47SX3VEDN9hf0/fN56nkZR0ku2yv2YOm3MAFXpI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=EV0tsHZ1; arc=fail smtp.client-ip=52.101.48.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jsj8Nv7Zfq/6cnK3TH2Gfu8yHRDimFHYR3mtGnu934/jjmecDxeKyVDRXgbnxwBG93mYvrnvlahQBGr4nbqSSbTUbVkV2p7teZYt3GNg5/y2RUroNb2xC1HZNKs1DMe1n7GovRkmPhtn6/FX/x7kBZlqN53x9BuAdb03nHvY71VEAfoRx/WOxobmJNhcGtyKu/TsgjFlGMY+XFPtvEwlmdm0tYkUkGev+v/r9NLCnX8uPyrPx7EsYoN+vQ4GgTnlAPXyjV7AuDVdG10DKGcFKgrK9oT8zIfVqvec26A5Z+aT04htWjKj3rdX+EA/kFhL28QdjJkDG4wr+xFp2K2ykA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LhHOR9Spz54JSl6n5o1sUAQ2BYqZtqEN9zI+VhBX7Tw=;
 b=ZQ2aYEknnmJGso3DvQ0viMSwUtdvMc2/WG38QzUS23omxRO2YX0xJXE/qAQF2uicqINV3x2sXTUzrvboEkzJBMpB5Zdxhd7CUIepvbej/00wDFjzHB7WC+vjVxahweyXHPwoZu5zhIcXFQusFT3oiQDJBBQygJedDqm7Jxs80qgsyi/jEIx/EVawom3DRY8rZGkL70JoRWH1Uv+EpkCvClpFGbziq/byA6JJ3eKuKjs20tZYti2e4Ce16PYjokzxzCVPO2vaRLUIj4iPHuJcaqW1Vq4eDlTzE+gR8Sfmhi9QlvUsaFkMLuzvfHj5cvzuPQDr+XvL83lHhunwEhD4eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LhHOR9Spz54JSl6n5o1sUAQ2BYqZtqEN9zI+VhBX7Tw=;
 b=EV0tsHZ1nO9C1cAZW84acfrVDRjqe1HiRZgeXURcdqOoaEJvUfuv9goIHErHQDiWZ7HYKAQar80rimH4OcWiE107hikWWCzbDqN5hsAAlN+UIJTXRwegfqEP95xt9BY0B5kPqr3NDV3b8sKWL7+FdqErrB47PH43gAMe1DIVUuI=
Received: from BN9PR03CA0695.namprd03.prod.outlook.com (2603:10b6:408:ef::10)
 by DM4PR10MB7404.namprd10.prod.outlook.com (2603:10b6:8:180::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 10:44:24 +0000
Received: from BN1PEPF0000468A.namprd05.prod.outlook.com
 (2603:10b6:408:ef:cafe::94) by BN9PR03CA0695.outlook.office365.com
 (2603:10b6:408:ef::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.12 via Frontend Transport; Tue,
 20 Jan 2026 10:44:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 BN1PEPF0000468A.mail.protection.outlook.com (10.167.243.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.4 via Frontend Transport; Tue, 20 Jan 2026 10:44:23 +0000
Received: from DFLE201.ent.ti.com (10.64.6.59) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 20 Jan
 2026 04:44:23 -0600
Received: from DFLE213.ent.ti.com (10.64.6.71) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 20 Jan
 2026 04:44:22 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 20 Jan 2026 04:44:22 -0600
Received: from psdkl-workstation0.dhcp.ti.com (psdkl-workstation0.dhcp.ti.com [172.24.234.127])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60KAiIEf939676;
	Tue, 20 Jan 2026 04:44:19 -0600
From: Aniket Limaye <a-limaye@ti.com>
Subject: [PATCH v2 0/2] ti-sci-intr: Support level+pulse interrupt sources
 together
Date: Tue, 20 Jan 2026 16:13:45 +0530
Message-ID: <20260120-ul-driver-i2c-j722s-v2-0-832097c6b64f@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGFcb2kC/32NQQ6CMBBFr0Jm7Zh2MFhceQ/DorSDjFEwLTYa0
 rtbOYDL95L//gqRg3CEU7VC4CRR5qkA7Spwo52ujOILAylqlNYNvu7ogyQOKOTwdiSKeDADUW3
 a1vceyvIZeJD3Vr10hUeJyxw+20nSP/u/lzQqdGTY9LY2tuXzIns3P6DLOX8BCvOvw7MAAAA=
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
X-MS-TrafficTypeDiagnostic: BN1PEPF0000468A:EE_|DM4PR10MB7404:EE_
X-MS-Office365-Filtering-Correlation-Id: 16716c40-db23-4c38-8db7-08de5810e059
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UXlsYXB4NktVakxBdEp2dlVIaVdGWjRzamNzenh1Q0ZwQVpGQk95Z3ZKVWZY?=
 =?utf-8?B?YXVoVmlaR2pQRXVjbTRGU0doRGZnNDh1V0RPL3lMZXNpcGhCOFZPb2VhNS9v?=
 =?utf-8?B?RXN6S1lKd2puQXh3czNqWHBZRGJ5OWNCRTNFTmtHcEZ3SGZTSUlnY0oxNlVo?=
 =?utf-8?B?aXcyNGdqaGRxa2lqMjJNYlg2T3lVUW02VUp2NGc5ZHRGWlZ0NUVzamp1M0JR?=
 =?utf-8?B?ZXZEVFkyL08rK0g4NnNSdjlYOVRUbWJ0bWIyYTcrMjNYKzdSMnVzUkI4bDdh?=
 =?utf-8?B?UjltdFcyanNoWEhvNUtSQW9LRE0zaVZsQkMreVErSkJwTlNCWEtZVGNYeWN2?=
 =?utf-8?B?STlKNU0rcXZxcSsyUUo2ZXF0NDJjSW13TktDMkNNVTdkZjJhVXlmTkp1Vzds?=
 =?utf-8?B?MFRkNXFadzI3dEFVMVpZallPa3QrS01JSEVSSzV6SWNYeWRvdW8wSGlDejF5?=
 =?utf-8?B?NUlHVmlzbWh6b3dQY2JmbG04bm5ZNjZZSVovMTBVTFg0eVpNM0g3enQrcFNw?=
 =?utf-8?B?dllYQzE3aW5TVUlzM0w1d0p3bFBlN2ZvdFgrVFBUSzc1eUN2NE1iVjFYK0Zk?=
 =?utf-8?B?UW5pMytZc3M1NWhrL2lmeEw5OFFFem54ZVlJL3E0Y3RjYk5QRTRReG4ya1Zj?=
 =?utf-8?B?Mlo3OXdlTVk1YllidngrWDJwaWM0RGd3andidXZ6cHdwdVowRGx5ZmlGWXB6?=
 =?utf-8?B?dUlONExvTmFlRmFtYUV4dzZOck1kUFRIaWxDckp1aU1Yc2QzYktPL3IxMFlu?=
 =?utf-8?B?OTJYV000NWUrQnh0QTZZTktpWHdHVmZqd1kvcGV4Tmc0THY4WlVsdTZ4cGxT?=
 =?utf-8?B?MjNsWlJiS0RwcnBGOEEwOXRWRWd2czF2cnpKSTgxdm5QR1RiNzRhbVlJS0hh?=
 =?utf-8?B?aGpkK2lYNktsZWZ4MHg1LzdlUW9hcE9DTTM4RTM3RkZ6bUNQQk9NWDNueWxR?=
 =?utf-8?B?cVlVcDJ1bkd2NFUrRzNpVCtMNUc4MFliODJiVGVsV2xNZnVMZWoyTEZ0TW9m?=
 =?utf-8?B?amE3VUd3SFB1TURJZm1FYkp4TmhTQTVPQStYRGg3bk43TUxWMm9maWNucnVC?=
 =?utf-8?B?SXFudGVUczIxY3hEZWtzT3A3dlBkT095WnRySmNsYXhKeXUvNFJ2ZTdWVnQ5?=
 =?utf-8?B?R3QwWitPcko5VWh4dVJEYzNSR1ZFZmREb2tJRXRBRnp3cnlBYWdHcFo4Mndw?=
 =?utf-8?B?cU5oVDF1SjlXYkx2NEd6V0Q2Vm8rbm5OeHhhU2xCNUlCY0pBM2FaNHJvNTNy?=
 =?utf-8?B?WE93Z045dGxEYXNRQnBVUFJZekg1RExLOEsycXk5L2pyUzVCbVNtKzV1ZzNu?=
 =?utf-8?B?U3dxWmpLTEpqZEVHZERiSXQzdnZxZEVEcnI1RlhGdG91ZE1mNEpIQmtFN1dq?=
 =?utf-8?B?bU4rc21qQU9nUlFxVXBoS1VJSysvQ0tjeGdnVld0czV3aWVJYXlCU3VZb202?=
 =?utf-8?B?VUpzcUpoOUVCeGVJU3BsaTR5UmNGM0R0d1ZXZGtDTGFnakZ5d1dDWlVEb2l0?=
 =?utf-8?B?QUl1Y2oyYlpURy9VaTFzWnAzaGhNQ3RKRzdZakNzWUcxRWhya3ZTK0JuamxI?=
 =?utf-8?B?NWRCR3IyVGozWHhoUlJSQlMrSlljaDdmZ1A1Z0dTSEZVYy9KVUlQOXY2WHQ4?=
 =?utf-8?B?dUJOdlI0MG5kVDZoMkZkTDJqQzdWV09aUHhpVWovWHFRdG1CNnNmZVNkaXhM?=
 =?utf-8?B?TDBla3pHdWpFRmVsbDlabUYyNXBRZWl0dWxuLzE2d25HOWFaM21ZcWpLeDA3?=
 =?utf-8?B?djVDSjZoZm9Lek5YQ21LaGkxWER1ZFAwZ0FLMXIvQWtKdFlJM3dtQmt0VUxS?=
 =?utf-8?B?aXUybFd1SVJzUko1L21qNGhZMHdXcUxIM0R1NXNHY2hZWERybTcya3JKczJW?=
 =?utf-8?B?YlhGK2FnM1JGVUZrWDdSUkRBUG1ib2RmVEdjd3BjVWU2OXcyMXdFMDNjYTBp?=
 =?utf-8?B?VjVWQWJ2MjhLcU92UVNxUUlRdjJSMnY5Si9hYXRaejcwVWdKSUg1Y3dkVUQ2?=
 =?utf-8?B?TG9CYS9Dd1ZQY09vUVhQam1OQUc0SGVCRjg2OHlLOVVGOVJqcExsOFhFQ1NX?=
 =?utf-8?B?RjkzU3FnMDlyT3dTYkEwMjF6M0dFd1ZTZjYxRmZjZEFGWW90cWZSWVJoWkUv?=
 =?utf-8?B?dWp5VC91Y215TFlzNHQ0ZGRDalUwY1hGWUd0cndBSmdtK1ZQdXBzR3M0Z2NK?=
 =?utf-8?Q?5EQrnwGcZZdyZCUH3PGB4XE=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 10:44:23.8658
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 16716c40-db23-4c38-8db7-08de5810e059
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN1PEPF0000468A.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB7404
X-Spamd-Result: default: False [1.04 / 15.00];
	DATE_IN_PAST(1.00)[25];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_POLICY_ALLOW(0.00)[ti.com,quarantine];
	TAGGED_FROM(0.00)[bounces-257302-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,ti.com:email,ti.com:dkim,ti.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a-limaye@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 60D4E56372
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The interrupt router does not support interrupt type conversion and
forwards both level and pulse interrupts to the parent (GIC) unchanged.

Hence update the INTR bindings and driver such that
1. If "ti,intr-trigger-type" is equal to IRQ_TYPE_DEFAULT, parse the
   interrupt-type declared by the source, per-line, and use that to
   allocate interrupt from its interrupt-parent.
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

[0]: https://gist.github.com/aniket-l/01d4e943b7b6db54b38eb7e99ed5e2b9#file-j722s-evm-i2c4-logs-working-txt
[1]: https://gist.github.com/aniket-l/01d4e943b7b6db54b38eb7e99ed5e2b9#file-j722s-evm-i2c4-logs-nack-storm-txt

Signed-off-by: Aniket Limaye <a-limaye@ti.com>
---
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

 .../bindings/interrupt-controller/ti,sci-intr.yaml | 42 ++++++++++++++++---
 drivers/irqchip/irq-ti-sci-intr.c                  | 49 +++++++++++++++++-----
 2 files changed, 75 insertions(+), 16 deletions(-)
---
base-commit: b71e635feefc852405b14620a7fc58c4c80c0f73
change-id: 20260116-ul-driver-i2c-j722s-48f223899dbd

Best regards,
-- 
Aniket Limaye <a-limaye@ti.com>


