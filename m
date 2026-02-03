Return-Path: <devicetree+bounces-262039-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEKNLGaCgWlNGwMAu9opvQ
	(envelope-from <devicetree+bounces-262039-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 06:06:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCC5D48E3
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 06:06:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A47F3041987
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 05:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EF6B2F39A1;
	Tue,  3 Feb 2026 05:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="hBSzrmWM"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011038.outbound.protection.outlook.com [40.93.194.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C8A2D8DD6;
	Tue,  3 Feb 2026 05:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.38
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770095170; cv=fail; b=HO0e3a85X6OJ7hZ6IRkxLsSZCJBvcvkiHxp5m3zciaUi0GUFohW21zICSC0dOKtHzZWZW5TLBQVb6JicQOl/5w/fjHIGc9eT8mHpExTx5cMMhmWvSQe31jTYCPvi1t6WcDVHuEB2LLD9WcmZN9U6SKkFIPsZn3NAXFtg8hCMSDg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770095170; c=relaxed/simple;
	bh=ADt1G0gua0sU6TZCfuVqF9bmWwDsHgFNErc4mBoFjP8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=ahQKspSbuQb3Xp4r56tuX0ukkkIFzZVNU6WwyWdetuOJlRCoR2mSfPNZsotDqm7mG8fV4Z8Wm3zrrJyHuf27WKBYwN8j34M42k0EQh9VXretj6Cr44aT6bcDNmT711aOx/RBv64qFWFXfezmJAr+Zp7QuWS7ENuS4a0iIN00Y+g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=hBSzrmWM; arc=fail smtp.client-ip=40.93.194.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ckpp6RzwHLOTsxljwRCAw5Pp1cnbzJe+S9mbHNM53znN47LzqxZ8aVvIpIVRZufLUFhlKs0Xmcm+yH627hivig/nf0L+t0f3jlMwXltRKqG/VcZsdHZFu8chw4p6TZUITFdm1xoJy/VAEf+TATVBvEtF9UH/cFLdRDhHczLyaTC7NEpow+LEhg1qmmqazRX37184+Uo/D9H19QGEb+lwcaPPOYc+b0uzKHCuYGIkHWB1Ohsad+fMBZp1eaK9zJ5EnW21uk1E4n37oqhVeVBePZwkkvuRJIJjD684k1/hgxJMopms7WOvqqmSHmPoDdTJTqKSj5gI7EKLAeMhIvDpTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nap07RHb4rM+hKSHVTqZcqGFHxc7m4waNZ0DBiX/gOg=;
 b=JZ0eSzz2haS4AyGTIk8CqhuYaH9AqrghS+yp5+2hneXosCXFItMqkbQXiigZafAbUuC/gtjD4mNFgYl7vxezp0uqcCK6sWsVHXQfTBsr7Qg5yqeBbjiKFWr70dBTSh4eyPuyvgxuy2gvIPWRaShALJj3WJRKdNIPkU6HwSGO+myKdBO8itoxMLLQmBQiouzvnP0nW+4n443oUCvVOE4r3QEBpJ76QlRV9ai1TUGJQ0T4jpXAuRgZvFIk36/LfugEZRBUvMLHkWB8YAF4WkV7sQJFXXYR7ijTzel71L2bIKWDzcoK3ASqX42Rt1dI/2PaUATlD2Zq0mu8GfsY5XI7EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nap07RHb4rM+hKSHVTqZcqGFHxc7m4waNZ0DBiX/gOg=;
 b=hBSzrmWMxJ3+EvR5EK4yUnoV1DDD10e/FSDwD2FxU3RCrad96BSawzy4sdpX9HTWV2NdYQYpPvXW8r9nqn4f/sr27TdvEMVpNeOVdC+PmTRoX5Xng8etfcBWT2lF1MGSLT8sF7qSui0a9jDkLfVQ7pkcJPT5EkauMumD/BC3g58=
Received: from BY5PR17CA0035.namprd17.prod.outlook.com (2603:10b6:a03:1b8::48)
 by DS3PR10MB997750.namprd10.prod.outlook.com (2603:10b6:8:347::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 05:06:02 +0000
Received: from CO1PEPF000044F4.namprd05.prod.outlook.com
 (2603:10b6:a03:1b8:cafe::24) by BY5PR17CA0035.outlook.office365.com
 (2603:10b6:a03:1b8::48) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.16 via Frontend Transport; Tue,
 3 Feb 2026 05:06:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CO1PEPF000044F4.mail.protection.outlook.com (10.167.241.74) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9587.10 via Frontend Transport; Tue, 3 Feb 2026 05:06:01 +0000
Received: from DFLE203.ent.ti.com (10.64.6.61) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 2 Feb
 2026 23:05:56 -0600
Received: from DFLE211.ent.ti.com (10.64.6.69) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 2 Feb
 2026 23:05:55 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE211.ent.ti.com
 (10.64.6.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 2 Feb 2026 23:05:55 -0600
Received: from [172.24.28.167] (lt5cd2489kgj.dhcp.ti.com [172.24.28.167])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61355qTw3353316;
	Mon, 2 Feb 2026 23:05:53 -0600
Message-ID: <10988add-dd63-47ca-ba5d-809694171f33@ti.com>
Date: Tue, 3 Feb 2026 10:35:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j721s2-common-proc-board: Add QSPI
 flash partition details
To: "Dutta, Anurag" <a-dutta@ti.com>, <nm@ti.com>, <vigneshr@ti.com>,
	<kristo@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <gehariprasath@ti.com>
References: <20260121051855.5890-1-a-dutta@ti.com>
 <1cc180ce-f808-4018-90c7-8df2c46ca94c@ti.com>
 <9675d81c-12f5-4798-bad9-ecbb2349bb60@ti.com>
Content-Language: en-US
From: "Kumar, Udit" <u-kumar1@ti.com>
In-Reply-To: <9675d81c-12f5-4798-bad9-ecbb2349bb60@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000044F4:EE_|DS3PR10MB997750:EE_
X-MS-Office365-Filtering-Correlation-Id: 135e1420-caaa-49c1-c976-08de62e1ecb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|82310400026|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?cTl3cG5RWTNSbkIxOUZHQ05jKzR2elREeWVtRmtoYUF3UEJtckNnOHg3amJu?=
 =?utf-8?B?d2V5a3JHQTZCUGlSd3BJWGRuWFF1NjBTUGxqc1pqYmE5cENPV2tCSGJzNGh0?=
 =?utf-8?B?TzdNOFh3akZHL2locWs2NEpDSnVZaDl0UzRNM1BqaEZCK0xsYXluTS9wZUtL?=
 =?utf-8?B?MzFNbGtsRjBjcFp6RThWdzZaUURGUGxNTUxITVBJWnJkQXlxSHVSU1VUb0dV?=
 =?utf-8?B?QkVmeThRazZnZWl4eUYzeUQyWC8zVFhySFNqREJwTFpvUk9WVy93SktaQjNj?=
 =?utf-8?B?NHMrVkUyZTNQYkVNbENPZ3N6M2Y2cnRBTVdsR2lNZS9TZ3V0blRJcUQ3ZW1v?=
 =?utf-8?B?NHd3QTFpT3BsRVpzaHRXL0ZVZ29BcmNOYi90RzhxTE9NdHV4Z1Q0MWNpWkFt?=
 =?utf-8?B?RUUrQ2JTdEloMThBeFVUeFJDODQ3Mm0xM3I0SmRyWUtVNk1aZ3JtRXlsNS9i?=
 =?utf-8?B?SXRMT1U5TDY4Vk55a1RjbVdNUnBXQWEwVnlNWmV5cHRvSXJBUElTNXBSUFJ3?=
 =?utf-8?B?VklNaHhOVDhxNUVEK0F1Qmw0TktBMFFqNTA3djZwTU1PWjdGZ0ozUnVxcFov?=
 =?utf-8?B?VCsrMU5QcHZsVHNvTkY5NmhGMmUrWms5UkF1bHlQaWtMQmRTa0xhaXdmd3Ni?=
 =?utf-8?B?VWNGUkY5U3M3YzZWOC94TTlaS2ZSQ284NjlRQ3RHeTBrWnpKYlg0ZTNqM2hT?=
 =?utf-8?B?VWF2SG11VE55QUN6RGdDQTNNdUJzV3pYUEpFN3AyaGsrbnBsM0NRR0lEU1p5?=
 =?utf-8?B?SGJOc2RzZ2R3elozSnVNaGhiUjFRZ0VGMUVOT0pUTGgwWXhKM0xMelNNZHZ0?=
 =?utf-8?B?TnpnU1Z2N3BDbTU0bDdQUUNZN21WYUNLc0ExVDBsbjA0dkNXT2hpbVpoT0hW?=
 =?utf-8?B?UjhuOWE4VUdLSENuU1ZjeUxkOXFzYlVrOXlEWkxxNDFhcFRmQWJFQkFQcDlu?=
 =?utf-8?B?eDJXNWV4YkdIbUtGRTNETUJFbGs5Zmd2aERIR25oMXF2OEdMdU1pakVmUWU4?=
 =?utf-8?B?QVFIbTV1MmZKSWRMcThibGdMS1VYVjdRSWd3RDlEK2R1Y0JIY25pYUNSanF2?=
 =?utf-8?B?WTk0NjE3eFRvcm55eW5HSmJ5ZE9Oc2FwU2RRV2tYV2FPM1ZETSszSGVaQzNY?=
 =?utf-8?B?eGNuWW9lUFFtWTNmb24vVCtIeHp4UEVyRDl3N3k5M1Q2M09hcGk0dndrU2gv?=
 =?utf-8?B?OVdXY0hvMmlPR082VDNEdit1dU1LM3pMTCt4WHlhbVhQT1RVQUNrR1h4Mmly?=
 =?utf-8?B?T3ZVTm5teVdiUW1FLy9DTzhvak5IbGE1K1ZZcGw3LzR5YXhsdDVCSVlLMkwv?=
 =?utf-8?B?aTNTanp5RlhJYkxJK3lLVkRqOWV5eldkM3ZHSEtSbzRxQksybjBIWWtqRTNh?=
 =?utf-8?B?NHVJRy84aHVuTFNoeUowK0x0V2Vkc3l6bU8zVVIwcjZ4SmFHdkdBeHBsSTZX?=
 =?utf-8?B?clNTNnZGS292NEZZQ0lhWVRpV21mWnpubkFYQU5zK3RrSld3N1BnN1RjazNM?=
 =?utf-8?B?WWNHaFFOc3RGcWRFajZ4Rll3SUkrcVRsbjF0eGtKbkN6ZHFmblBOM1Fab214?=
 =?utf-8?B?STNwU0xuVXNaWTdNTHhUVnBqdEx3MWNBRUQ3SzFveTRFNkdSRytDSVFzRGRX?=
 =?utf-8?B?elJyd1FVSHlFUFlCVUFWYWRscXVjYnZGZlBpWVpUYndUZDFTYTdBNjNjR2xG?=
 =?utf-8?B?RVA4Z0tjMm9vYkJtZEJjdWZnMGQvOG5BM1NFMCtUa0dGRUhlOHZ3eURxQmVC?=
 =?utf-8?B?Wm1pMHpzWlRLQS9JSFNxQ0JueGlsMTQxSk4wUVA2OXZpa1pCRjAydmliQS9E?=
 =?utf-8?B?L1ljRE4xdDJGQWtmVjRhNWFycnA3ZmVWanViNnJ2SDRyQXNwVnlmTXMrdkJJ?=
 =?utf-8?B?dzRpNzZEeXdtZnhwUENWc1RWV1VPYUljNjcvWm04eUdsRVJnT0tJQVdiMXFp?=
 =?utf-8?B?emxwajlMclRvVnE1NTQ5K1F4bjU1R0JSRi9iYVV6OStjOFFlcnV6dlZjcjBo?=
 =?utf-8?B?V0RLOUJUOGpTZXFtK1BUWExWMCszZHU4am5lOUU1RXpPN3ZPUmhGZGVkb2ZM?=
 =?utf-8?B?VTIzSzlyTFhpVzZ4VHRHQVBWVml1dTlhTS9WYXQ0WTNlem05Yml3MnV4L0lz?=
 =?utf-8?B?dGovM3BwVlcwelp2Y09RN1owaU4vemFlZjJBTFZ1U1VIUlFJb0d5eURpc2ZO?=
 =?utf-8?Q?ZvByjFiJy0KyilpimY30/tM=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(82310400026)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	fhV1X36GUSUhDnwuGcsx/0yDyQ2NHeepoX6IbP/YrfTvS9No0djIb7J5LUBbD9WTpmfyJpxrI8G+8VtQ+Uim6srGvJ+J2ZT/7BccSosypDo5FP5kBazGs6N/weEMOzKMfp09rP7aQszqWqQ/wX6XwknpNp8exrWy+Mt72z7dBi3sNcA7Y92xh29cl69TkvaXS40vIFpD8zy/t/8imYNVHofvSto/sOaoFoXkLjDw6N5gtLfyrWtg1ow6YEjUDa5ISXuH9IoZCgSgmCHnyPnnXtIgQSU+Rcv1Av5lYWrZ3bOM/SmdnSY+71XFCh4530Wh+t6s2iLe87GOxltgigpVCWnEoyYeE6vqrYCRhRIRtgV5tmXly+a+WVthAmB0KStaa68WmX2gNmAJBOOiJ0Qh5g/2Nzzm0fbIUeXXLw+4wtBjevSbgENlwzIuDidn25xm
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 05:06:01.0375
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 135e1420-caaa-49c1-c976-08de62e1ecb5
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CO1PEPF000044F4.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR10MB997750
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262039-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.1.56.128:email,0.12.53.0:email,0.10.96.64:email];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u-kumar1@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.4.69.192:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 2CCC5D48E3
X-Rspamd-Action: no action


On 1/30/2026 1:30 PM, Dutta, Anurag wrote:
>
> On 22-01-2026 08:53, Kumar, Udit wrote:
>>
>> On 1/21/2026 10:48 AM, Anurag Dutta wrote:
>>> J721S2 EVM has MT25QU512AB 64 MiB Quad SPI NOR flash connected
>>> to OSPI1. Add the partition information as per bootloader.
>>>
>>> Signed-off-by: Anurag Dutta <a-dutta@ti.com>
>>> ---
>>> Test logs: 
>>> https://gist.github.com/anuragdutta731/b65f63f22c69317d714b65a201438cbc
>>
>>
>> Thanks for logs, but these are for boot-loader and I don't think 
>> u-boot consumes partition details.
>>
>> could you share logs for kernel as well.
>>
> Hi Udit
> Here are kernel logs : 
> https://gist.github.com/anuragdutta731/d4ee38df3ed8889f44bf28ab163b1baf


Thanks Anurag,

I think, you need qspi.phypattern under bootph-all, as I see u-boot 
stage will/may do phy-tuning.

While at this, same thing needs to be cascaded to ospi flash as well.


>>
>>
>>>
>>>   .../dts/ti/k3-j721s2-common-proc-board.dts    | 41 
>>> +++++++++++++++++++
>>>   1 file changed, 41 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts 
>>> b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
>>> index 4fea99519113..7faf9367dbb2 100644
>>> --- a/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
>>> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dts
>>> @@ -530,6 +530,47 @@ flash@0 {
>>>           cdns,tchsh-ns = <60>;
>>>           cdns,tslch-ns = <60>;
>>>           cdns,read-delay = <2>;
>>> +
>>> +        partitions {
>>> +            compatible = "fixed-partitions";
>>> +            #address-cells = <1>;
>>> +            #size-cells = <1>;
>>> +
>>> +            partition@0 {
>>> +                label = "qspi.tiboot3";
>>> +                reg = <0x0 0x80000>;
>>> +            };
>>> +
>>> +            partition@80000 {
>>> +                label = "qspi.tispl";
>>> +                reg = <0x80000 0x200000>;
>>> +            };
>>> +
>>> +            partition@280000 {
>>> +                label = "qspi.u-boot";
>>> +                reg = <0x280000 0x400000>;
>>> +            };
>>> +
>>> +            partition@680000 {
>>> +                label = "qspi.env";
>>> +                reg = <0x680000 0x40000>;
>>> +            };
>>> +
>>> +            partition@6c0000 {
>>> +                label = "qspi.env.backup";
>>> +                reg = <0x6c0000 0x40000>;
>>> +            };
>>> +
>>> +            partition@800000 {
>>> +                label = "qspi.rootfs";
>>> +                reg = <0x800000 0x37c0000>;
>>> +            };
>>> +
>>> +            partition@3fc0000 {
>>> +                label = "qspi.phypattern";
>>> +                reg = <0x3fc0000 0x40000>;
>>> +            };
>>> +        };
>>>       };
>>>   };

