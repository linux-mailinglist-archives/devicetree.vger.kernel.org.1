Return-Path: <devicetree+bounces-251458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 33726CF33B8
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 12:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1445430019F3
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 11:26:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDCE4326936;
	Mon,  5 Jan 2026 11:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="o9sFHbeg"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010065.outbound.protection.outlook.com [52.101.193.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1A92F28EA;
	Mon,  5 Jan 2026 11:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.65
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767612380; cv=fail; b=Moo7qtWXaw3Gs9QK9j4mjEtKbMs2IF32LoO0DfI/aXPCqOUWpEL+pVi+dcU93GvYkDWzHLjItl7KGAE2hnxHuGAxVapZyjOuHhvJ70xiXTMGaKRj9JEpzQ2Ov/hmaFIPHMzs7rg8YT/B784c/xUKzPVZteOu4jPnsXI+DYNVQOI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767612380; c=relaxed/simple;
	bh=cyBnaRtVPkLA3IeG3g8bK4hBOf6kME0fDQ49WQfMMoA=;
	h=MIME-Version:Content-Type:Date:Message-ID:From:To:CC:Subject:
	 References:In-Reply-To; b=MeSdyVra2iijW0+jWrDuElexss1qCAEnCluWwN2Z0SzOoLVQDowuIx9TixF2Wf1TnSyrqjnzy/SDxQ5SdbVXOc1OfLnwvFWZzvg8h8u+scKKWAv8e2WV8N5ZTjuVW7ZVrZqMXBKwkF71Q7QDBkNRqYxReY06D75n2VjvFpDCUYY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=o9sFHbeg; arc=fail smtp.client-ip=52.101.193.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZFfls8nvHwrvOHVJNJMXsnRwXhCc1CodR6mVyZZ5QFGR2yBsxZYJtALxznXlf8UU+alaGtYyAWvano/5ztaYmOCpnAO4j1+aHDwgEK4js4Gyx3NzXmvXV/U2NJY39QxjsTRYB7GfNLlNk3TejjxzNosWzSIAV/VCwLKTGwQ7N4fYH2FvtXW0P8unDFS0KqoI4n91R3OQkTvSK0OWyD+M/WlTtb9X/McUksTYzmhJxVaTwCEgrRWGkeWRxSGMo0m++R5M2lV8p2JadY7OdZ2ok+c4oVjoHHwFaPD2tADnql418x/GAYa2lHSSNT2AvdsqA+Q7dtbrwKEjb9EnvBTonA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T/89jwACi1TKpA05n/HrFMyAa3LWf2vlTO//D9DFKrY=;
 b=ac0uXT8evpPje2wpda0ryVw3JWi3KWqzJ+SRm1zZS8dJUC+upCVGZV2C5Bk9T/YPuuk0w8vr/08oqyDcfq2N8nep2tewjOzJT4Tgnc5vipfCHtTWUlXszqqu6l0KdyfFMibqU+upi6piPhC3+U83ZM7Dox+Oh5q23Lsck+E9niDM6F08234cFP66kTf+PrPKfkBWeDzbYbQRcMbti26c0CNdECZeZf69F0nMMo3PgSi/YNJvT8JzOtXkuBKMtGgsjq3r9O/SJX3k+aPAo1Gjyzt710uboUPXNDR6Qbh1r++fXkCxbl7YnLl12Cge/Jjj9x/M4Z93kWj3OOaVfbV22Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T/89jwACi1TKpA05n/HrFMyAa3LWf2vlTO//D9DFKrY=;
 b=o9sFHbegcHZ6wc7IAbPJYRlmLES3uq7Iy2RT9q5loHRkA3QJ6oEzLnfP7XUoqeVPyO5yF6jGiPrE9poiV1mMI5Baw0WQjZ15RMZdH38XfQeCd27zXjmj9Tk8lFUfEgg5ynQZHcuyO/pGXWxOcIsj+UsUK0LIV3odc+zJ9amjOYM=
Received: from CH5P220CA0017.NAMP220.PROD.OUTLOOK.COM (2603:10b6:610:1ef::8)
 by CY5PR10MB6093.namprd10.prod.outlook.com (2603:10b6:930:3a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 11:26:15 +0000
Received: from CH1PEPF0000AD77.namprd04.prod.outlook.com
 (2603:10b6:610:1ef:cafe::8e) by CH5P220CA0017.outlook.office365.com
 (2603:10b6:610:1ef::8) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9478.4 via Frontend Transport; Mon, 5
 Jan 2026 11:26:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CH1PEPF0000AD77.mail.protection.outlook.com (10.167.244.55) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9499.1 via Frontend Transport; Mon, 5 Jan 2026 11:26:13 +0000
Received: from DFLE202.ent.ti.com (10.64.6.60) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 05:26:11 -0600
Received: from DFLE209.ent.ti.com (10.64.6.67) by DFLE202.ent.ti.com
 (10.64.6.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 5 Jan
 2026 05:26:11 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE209.ent.ti.com
 (10.64.6.67) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 5 Jan 2026 05:26:11 -0600
Received: from localhost (dhcp-172-24-233-105.dhcp.ti.com [172.24.233.105])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 605BQAiY1191156;
	Mon, 5 Jan 2026 05:26:11 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 5 Jan 2026 16:56:10 +0530
Message-ID: <DFGMAGLHN1X7.2Y4CBP7MJZD6D@ti.com>
From: Anshul Dalal <anshuld@ti.com>
To: Nishanth Menon <nm@ti.com>, Krzysztof Kozlowski <krzk@kernel.org>
CC: Anshul Dalal <anshuld@ti.com>, Tero Kristo <kristo@kernel.org>, "Santosh
 Shilimkar" <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Andrew
 Davis" <afd@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Vignesh
 Raghavendra" <vigneshr@ti.com>
Subject: Re: [PATCH v6] dt-bindings: arm: keystone: add boot_* mboxes to
 ti,sci
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251222-k3_syscon_add_boot_mailboxes-v6-1-b93ada9f1d47@ti.com>
 <1844147d-543d-4739-a1ec-a59f8a4564fb@kernel.org>
 <DF5GPF5U7NPA.2ODE22YOF8E1R@ti.com>
 <e516b73b-2dc3-4ae4-966b-278a946491c8@kernel.org>
 <20251229174638.btuhliymlmuy5op3@submarine>
In-Reply-To: <20251229174638.btuhliymlmuy5op3@submarine>
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000AD77:EE_|CY5PR10MB6093:EE_
X-MS-Office365-Filtering-Correlation-Id: 932b69f3-636f-4519-e1b1-08de4c4d3c44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?b09OanpsZlZBS01hNmoxNU1Oem9raWFzcVFpSE5LTXVnRnV6MktiQ0hGTmNI?=
 =?utf-8?B?a0NkN3VDQ3Izd1MvVjVWV2dJRjNmZnpNbVdVMkRoYjF1WitrQWNNWjBGb3lI?=
 =?utf-8?B?ZnpNQlVadWdrek9odWw0dUVhQ05DN2RjZ2lzL2hxSFZSVXljcUx3NFJFUGN3?=
 =?utf-8?B?azJVK1BCdXpjV0plT0p0eHFTWk9mczZqZWloTHJnSStDTUhPQXJyMXVMejZG?=
 =?utf-8?B?d28waTErVWVJcjlibmdsdE5Ncjk3SlgyVytuNWp6S2JsUDkwamxzRG5oZFZZ?=
 =?utf-8?B?dXZHdjRaL29WWkpJTTdyTUNXTEZmQlFBYmpHK2NwU2ZjbUtCYWhRY3N4ckpJ?=
 =?utf-8?B?Ryt5WHMxaXFiMS9XNFZmT3pyNFBGTjJjNmhVdDVVWnZ2MURIQUV4YXNRbEdo?=
 =?utf-8?B?SGw3YW1jb0g3c0ZucExlM05QYTFnTmJESUF2K2ZtY3BxQVFtQnltcnJENDlL?=
 =?utf-8?B?S2tMcG96WUE1OHV6N20yVlhsUU8wN005eXFVV3kvZ1RwOVI0a3dKdnFwL1pp?=
 =?utf-8?B?WWQ5dHI2bFEwV21Nd29aWHJWdCttZXp4R2lxNkZsRVJpZVQ0V0tmYjg4QUZt?=
 =?utf-8?B?SDhhR212N0NGaVNaWVl6Qnp6RHNmc1lQREczdG1JWTBXR1NhbW1IMldyMGp0?=
 =?utf-8?B?enROY2VRWi9QbEcvUUYrcC9hNVEvQmNVVEhyVUpDU3c4WkdNaUJ5b21mbFox?=
 =?utf-8?B?Z3I4bGFhZmxPSEhLeDNnWUZQRUlXUHpmSm42U1ZxbWdMQ0xRZlJsNGV0dEh1?=
 =?utf-8?B?QmlsQkYzQk5lOXBPa20wSlRaYjUzYUwvMGI1WXZ3WEJrVlFMWHFMRjY1YURH?=
 =?utf-8?B?K3psNmt0bS9pMTlTREw2MDA5VWk2Y3BucE5iUUk4MytNdjhXVVg5Y0E3MGk5?=
 =?utf-8?B?ZGo3VGxqNlkxZDU0SHZsRWRyTUU3ZEhYWU5rRmdWWlYxU3VnNXhKV3ZrWXpF?=
 =?utf-8?B?UVZFRDBGR25pZnpydnFMYTI1ejRiTVEwb2tDSTBheTlyL09ydzFHRXQrQnpD?=
 =?utf-8?B?MjR5SWRNazMwUVltck15d3g1M1Z3YUM5U1VTbVNYMHFVUDR5MklVSUIrTDQ0?=
 =?utf-8?B?Tk00TURVUDVEYlIwWks5eEpTQ0pPNU45cUFZZmtVL0h2dm9LdSs1MHova3o3?=
 =?utf-8?B?NExvVDRCamwxZWZraTRFVElkelBzMGgveEdJNWdDaDFFekVmQWNQL0xLUkZk?=
 =?utf-8?B?dEJFZjdETm0rbkpIZWpxV2lKSHQ4YjJYZEtZSS9MM0tzdjFsYXNQNkpocGhj?=
 =?utf-8?B?L2FwTlpLam5EbDRiako1aDVYb1BOUTNQNnUwc1RNY3JSQklOcDVHMlRJMVZi?=
 =?utf-8?B?NnFjTVBhMTNWSWJoVzZUL3BzQWtSb2ZkYWNxaFMyNjA0R1NkZ0RHNmZmN2l5?=
 =?utf-8?B?T3JOWHJwR0N4VnBmSWZTRlBWWTAwbVg1cVNLRHZYdnl2T0ZsK05qanV0ZHU3?=
 =?utf-8?B?RGlPbHJHd1BHeEcrSVJnbWxHMjdtcGRJenlsa3lQV0RoRnlRYUZmNmVYWnZw?=
 =?utf-8?B?UlphTGpMQnJjaFdzcThxRVdTRjZjVCtHdnVnU1MyMHVUZUNZeHhGUVphQWtl?=
 =?utf-8?B?RERHT3FYL2dwL3pYdWZkQk5sRXo2TGZkN0R1UTFTVGJmY3VWZ3ZKZE5jZzNV?=
 =?utf-8?B?Y3UyZ1YwNnFRT0c0SjREMitBNDlOVDVvRDIvT0Z3NW43eGhpUU5jOUFEVWRq?=
 =?utf-8?B?djlwaGpPSmN0VUo3d2o1WUZQeTBCYWJWRXh4UE04alFlZHg5cDhZQmpzSXMw?=
 =?utf-8?B?Y2ttcUYzMTlXNE9QRjVwMzZIYlZUQmI0a0VHZzlEbDBOeURCQm5XRXNJSms1?=
 =?utf-8?B?ZU1ubmpOYTlWYkdVSjZJWngrN0lEVFdmWjNFVExZdVBCelhXLzhUN3JyZVVk?=
 =?utf-8?B?MFJ1d0lkNFBGMXN1aU5sOXNWT2N5YVo0Tlg3aVdaUEVNcmRpNUs4WGxBZEp4?=
 =?utf-8?B?dHpEaHgvNWJnVk1saHRwbEZBV1NOblgyby9FVnM5UGJ5NmZ4azZMSGF2TTEx?=
 =?utf-8?B?S013dURhUHNYOGh4TkRFdGhaVEQ2QitJaUZvYU5xcjREeHNuV2cxdUJLYUZB?=
 =?utf-8?B?enRYUFdnUkhTUFlKM1hRYUZJekh5Rm00RHljZWZGM0RnZno4NjJVT0NoVUNU?=
 =?utf-8?Q?ZSRI=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 11:26:13.9611
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 932b69f3-636f-4519-e1b1-08de4c4d3c44
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH1PEPF0000AD77.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR10MB6093

On Mon Dec 29, 2025 at 11:16 PM IST, Nishanth Menon wrote:
> Anshul,
>
> On 14:40-20251223, Krzysztof Kozlowski wrote:
>> On 23/12/2025 09:44, Anshul Dalal wrote:
>> > On Mon Dec 22, 2025 at 2:23 PM IST, Krzysztof Kozlowski wrote:
>> >> On 22/12/2025 09:43, Anshul Dalal wrote:
>> >>> The bootloader on K3 devices makes use of mailboxes as per the ROM s=
pec
>> >>> which might be different than one's available to the kernel (firmwar=
e
>> >>> spec).
>> >>>
>> >>> Therefore, this patch adds the missing mailbox entries to the DT bin=
ding
>> >>> if the matching compatible is ti,am654-sci to represent the mailboxe=
s
>> >>> exposed by the hardware during boot for the purpose of loading the
>> >>> firmware.
>> >>>
>> >>> The new ti,am642-sci compatible is also added to represent SoCs whic=
h do
>> >>> not expose a "notify" channel as part of their TI-SCI spec such as A=
M64x
>> >>> or the AM62 family. The newly added mboxes are made optional by keep=
ing
>> >>> minItems as 2 to remain compliant with existing device-trees.
>> >>>
>> >>> Signed-off-by: Anshul Dalal <anshuld@ti.com>
>> >>> ---
>> >>> Changes in v6:
>> >>> - Added ti,am642-sci compatible to represent SoCs without a "notify"=
 channel
>> >>> - Added new examples instead of editing existing ones
>> >>
>> >> Why? Rob asked not to.
>> >=20
>> > I had followed what Nishanth had said[1], I'll wait for him and Rob to
>> > align first before posting the next revision.
>>=20
>>=20
>> Existing examples are fine. There is no rule saying you need to keep
>> updating examples or keep adding new device to examples. If someone told
>> you about such rule, tell them to stop inventing rules...
>
> As I had responded to Rob (the reference you posted), leave the
> existing example in the binding as is, we do not need to add new
> examples either for each of the compatibles. We have enough examples
> in device tree now. So, IMHO, just update the binding.

That makes sense, I will remove the new examples in the next revision.

Though should we add the new am642-sci compatible as well or just
re-order the one for ti,am654-sci to ensure we can handle the AM64's
edge case?  Since, the added compatible makes the if-else chain more
complicated than it needs to be.


