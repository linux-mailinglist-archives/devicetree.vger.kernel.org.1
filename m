Return-Path: <devicetree+bounces-163106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CD656A7B809
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 08:59:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3833A189D91A
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 06:59:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1F821714C0;
	Fri,  4 Apr 2025 06:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="Kswgnzv2"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2070.outbound.protection.outlook.com [40.107.220.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07F3944E;
	Fri,  4 Apr 2025 06:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.220.70
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743749968; cv=fail; b=gPpkrF3lnoHmSa/3qCkFU3t6nOVZNeG9ALqrIiOFJbqUcFltr4aSnpg4RfsJci4KTVROCcanX7T3OLeTYMJnm/+GCtAin2/FqTBJ2HKaKD+vNNxFUIJOFyzb/c7IuiIgRQGELxkqmYCBiESjz8L0ll70r+XqJay5/QW6Ko6n8v8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743749968; c=relaxed/simple;
	bh=Zsa7K51JlcDbGLXNEkwSGRrcI2Qv7sp0p6lcWUvKA3E=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=q4nGBHymt/NAXnCbYiExwHicKDJgGRaZLF4ljsoXeCt/reYHGcAB5ZDkLCtuDQJtQOj56sZoSxTpJGg/rqujGKf+2ebth6bRKOh2cEZN+frkcM9oafqm3PVKEShtE/JgqvjAGG+L/YnjcGZ1GjvBfGE0gf7HHAvYTYfvSTXcyIg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=Kswgnzv2; arc=fail smtp.client-ip=40.107.220.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TZasj0RW8DbV656adwTmKE5R9p8Cr3RZ1+qfqNLzeW7KQI2n8LH9LL6EIIzODn9WCji7TNLfZeikZlJn57Xq4Scvoos3Qsk76d8KYZs3aOpgvcY7MtdtTW4arB8P7Cua99Q+u/spshmXN4VkIrROgRvwGdP60sUjZ1AhjBYgTyDlWtI//qozxzzEFi4mu8rFl/VBPWjPPMcog8GMZYWR/9gggXWPB9d89u7kCQmYK2heBRCvlpvkIPezNcHxgMbmQS0Gx9mosjkWUdQoWMVn1JzIL7nfrz1RqN+sqiwWs30ByEGyVtnqH6YD2tiJR/Xf5PVZxf3L9kXMXEz9FpVqFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zsa7K51JlcDbGLXNEkwSGRrcI2Qv7sp0p6lcWUvKA3E=;
 b=ysiWs1+TJwbuKCyKpb7sPlShjzH2twKTMsxy+D2qjMPKs5vBdyDkZ/OOzz7W4jd2NXUcFhjtyizFbFwOSO2CAV8x9zMG+NuPPsBEEBYPZuym9JKgf6tiqeRzDkAcXjNv2ZTHHkhtP1RwDiSgMRqIYECJF4AD/hqIasC34VY6c66b0rebjhjFbt1umSVgGk6JiUQJBDjGgkPXBAoMBDVSFEq/mdV83ABLocx41MtDMFSqoaNlWAuCpU07JDnQ3JbwJT6Zi3Aef7rQ+4hAX93/2yaYoeEpW4jDIi5hZzR0jD5fLA6x4Srqa4GIAUNp9djo2RaU9LfX1Zn10Krr5Wp21w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zsa7K51JlcDbGLXNEkwSGRrcI2Qv7sp0p6lcWUvKA3E=;
 b=Kswgnzv2456IqMWxqdrV64RTV72zPJowyPc4tMCpP8zwf+cChxW946XocXVh66EgKWJFe+hMA81JMGrsAiK3IHbdIdEN0qbkMg7AKMl3fl0kBpmKng27ukem39rMjDVZe3u/sD4xgXWTSkwZWAEiERuInsjD/zdKC0xlk+Ctpm4=
Received: from DM4PR12MB6158.namprd12.prod.outlook.com (2603:10b6:8:a9::20) by
 MW5PR12MB5624.namprd12.prod.outlook.com (2603:10b6:303:19d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 4 Apr
 2025 06:59:24 +0000
Received: from DM4PR12MB6158.namprd12.prod.outlook.com
 ([fe80::b639:7db5:e0cc:be5e]) by DM4PR12MB6158.namprd12.prod.outlook.com
 ([fe80::b639:7db5:e0cc:be5e%6]) with mapi id 15.20.8583.041; Fri, 4 Apr 2025
 06:59:24 +0000
From: "Musham, Sai Krishna" <sai.krishna.musham@amd.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
CC: "bhelgaas@google.com" <bhelgaas@google.com>, "lpieralisi@kernel.org"
	<lpieralisi@kernel.org>, "kw@linux.com" <kw@linux.com>, "robh@kernel.org"
	<robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "cassel@kernel.org"
	<cassel@kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Simek,
 Michal" <michal.simek@amd.com>, "Gogada, Bharat Kumar"
	<bharat.kumar.gogada@amd.com>, "Havalige, Thippeswamy"
	<thippeswamy.havalige@amd.com>
Subject: RE: [PATCH v6 2/2] PCI: xilinx-cpm: Add support for PCIe RP PERST#
 signal
Thread-Topic: [PATCH v6 2/2] PCI: xilinx-cpm: Add support for PCIe RP PERST#
 signal
Thread-Index: AQHbnfbpjrXLjxd/8EKiaV/Ed5MZLrOHPpIAgAvQa+A=
Date: Fri, 4 Apr 2025 06:59:23 +0000
Message-ID:
 <DM4PR12MB6158EFFB5F245FAA5CB022A8CDA92@DM4PR12MB6158.namprd12.prod.outlook.com>
References: <20250326022811.3090688-1-sai.krishna.musham@amd.com>
 <20250326022811.3090688-3-sai.krishna.musham@amd.com>
 <cjrb3idrj3x7vo4fujl6nakj3foyu64gtxwovmxd4qvovvhwqq@26bpt5b4zjao>
In-Reply-To: <cjrb3idrj3x7vo4fujl6nakj3foyu64gtxwovmxd4qvovvhwqq@26bpt5b4zjao>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
 MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_ActionId=cc82ea4f-334e-4a0b-9734-f8806345fc8a;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_ContentBits=0;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Enabled=true;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Method=Standard;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Name=AMD
 Internal Distribution
 Only;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_SetDate=2025-04-04T05:50:24Z;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;MSIP_Label_dce362fe-1558-4fb5-9f64-8a6240d76441_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR12MB6158:EE_|MW5PR12MB5624:EE_
x-ms-office365-filtering-correlation-id: bc500481-f53a-4224-9c08-08dd73463b7c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|7416014|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?SUJLbXZ0UXYwR29aUDV1UElsMXJ0c2J3UUlWZVUwbUhVSDR6ekU5UFhZclRi?=
 =?utf-8?B?K0ZoREViUkc1WXJrR0lIM2hZVzE4S2d6SVpxNWozVzZFdEtVYXBmZTczcjdL?=
 =?utf-8?B?a2t5SnEzaVd6Q1lkUUkzVzZvdUhPK3Bockh6a3g3VzF6V0tqOStGNnMzU1Nr?=
 =?utf-8?B?UktpZHcxTE1WejJNa3h5c2crb0ZvTkR1NHJ2YWU4cnFNRzdSdTZNV3NLUU52?=
 =?utf-8?B?RlF1Vk1DbEJYc3N3S0VvRWhCdHE5RWhJR3llTVI3ZyswcmNqaFdDTlpWYmdL?=
 =?utf-8?B?R0UycUVTS0V0WUd3QmpmdzJjUzJhaEZCbkV1WTArSkdsc0NkM1FXYmptY2Ri?=
 =?utf-8?B?djV6NzZIV2hjUGRxSmZpbURzd1podEtEaWZ5U2FMditpKzNOc004TS90dHJN?=
 =?utf-8?B?R0dDeGNHelZMM3J5MnJSdG5JWURoTGFEY2JYbUs3dTRVdEdWeE5aK0N3RzNq?=
 =?utf-8?B?b3JVT2h4RmR5TWVJbVFjT01pSTZEdjl3UkRLU2RKRWc5OWhrS0syWHlsUlZC?=
 =?utf-8?B?c1A4bkJ5QUIweXlPSzRxVVI1QXgvTGZNS0lTMVV2c0YrN3pDRUJTUWFHbGJH?=
 =?utf-8?B?MzlMWjhObFlnY2ZVN0lmU081OGJRNFhHemZIOGxqRytoNjNzcUZsd3pZU29Z?=
 =?utf-8?B?Rngyd1F0dFNreURZdDRyN1E0STBUd1hlL3R2cFdRM21GYkpkTXB4Y3VtWnhT?=
 =?utf-8?B?MGNKMGVXbkVDSzhOQmRxOWZOTnlXc0dlTG55ZGZTSkRWZ001azlPaDR2STFk?=
 =?utf-8?B?ZXlXd29jUG4vZ3JuMlh6SVFoakNPNHQ4dTBOSm1yL3JPWmt1NjhyNWRQbVpJ?=
 =?utf-8?B?dU5KcDdHeE1SbGNuLzB6dExaVHBYMFdpQnFzemJrcVdnZkQwekVYaC94T1o0?=
 =?utf-8?B?SGluZUV1ZnVJbmRaR2lxSVlMQWZrUHpLZEVGQmFxd09LVDlqVFBLU3I2THY5?=
 =?utf-8?B?RjlMSDFzUzJxL0tOL2wvYzE4R2xPUk5SbWhGdE9BK0RoSHNSQWhBcUtzUTV3?=
 =?utf-8?B?WEpjd0swenl5OThZeEZ5dkxqUmRIazlRZG9RWHNvendYcnBWVVpLQzFLd1c3?=
 =?utf-8?B?Wm9jdnNubzNmZnFKb3RBMXpMdDZuUUNOQlBxckxDMGplK1VXUkpDVWM3eHlh?=
 =?utf-8?B?SENpcEpzYlcwbVhla00xYXdxUkhMbU9YMXlxNnpmRUdSdWFlRFU5VjZmeld3?=
 =?utf-8?B?U2gyMzVHdm1kNkNiUjJDL1VuWHMxT1orcGRWeFVodWxHNzN3WTljazh4elpU?=
 =?utf-8?B?Z0dzWDY4K3g2bnFydSttZHFHbjNCdXhXZUYrVTU1ZmJHbHBDZ3NDVkNQSjZV?=
 =?utf-8?B?NlVpOURiaXZKNUdmdWk4SnFFbHQySkptZGQvSjUraEhNeDExNUc4Z3hMeG94?=
 =?utf-8?B?NkczZ3VDVzFpQ3hXZVdrazdRYTJTbkoxeFRSU3lrRlVDcVI4MTdXQ0J2QWtP?=
 =?utf-8?B?OUdDNVlRQWxQYzlkNEV5OEpidUh4ZkdrSmJqMWtVcUNZZ3VTS1lWRWM2UFlO?=
 =?utf-8?B?WFpOZlljS2dhbXFyQkZCZkpJSit4K1pFSWNpYjkvL1NvcWdTWnJ3bFZkS1cw?=
 =?utf-8?B?bG84Qnh5VXNmQ1JEbmhLZDNTQ21oNTRqeEpxUFpRT2FOdUY3YTJrWjNqaE15?=
 =?utf-8?B?SVFlREtUVnlvaWRXdFZ5b0E5ODd3RG9LNE1GRmE5OEJvUXlJbDJqWmhNMHZm?=
 =?utf-8?B?Z2UrOThVZGM2Mmt0VlR0NmREaTh5ckZjUmtXVlJUMlkyRnZ1RE01bEV3ZG14?=
 =?utf-8?B?THRmaU01YnJMMjAvcTM3Q2R6c0d3ejlLajF4N1J1Z3FpY3NIMWc1c0pUeDBt?=
 =?utf-8?B?Qk8xMGdsa1VoV2E5c0lta2EvQi9yL21mNjJBcnovdWplVkd6TVFTUW9MS0p1?=
 =?utf-8?B?UVFKamxRUzlUQ2d5eWpaREc3RzlvYS9RYldtL0RrQ2NHeUN6Zm5nQXRkYkQ5?=
 =?utf-8?Q?9vEIjiughkZ1c4B7zy+dhkmCSnPkmcbY?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR12MB6158.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?akhud2pDSllVVzc3U0RjS0V0SG1mSUNhRlVYZnRvN1Y4ZGxVTUMwc1Y4Sk5i?=
 =?utf-8?B?RVNZUnpoSmRsUmVldncra1VtcldsYTRlY1cvUUxZemRSREtNV09ZWWZlTTl3?=
 =?utf-8?B?UHJSRHJKTC83VEViSitJNGt1aFJqZ2VEK2d3T214RHEvRTJ3RVh2VVpQa3gy?=
 =?utf-8?B?eDJDOGpyV0MyREd6bmZDc2pKOE0xdGJHTlhHdzN6TU9Ld3VXcGpWQzhPNDdQ?=
 =?utf-8?B?T2pla3FoOVlnTjBUT2U2WkhqKzFWamF0VXdmZCtzei9QKzl1WW1tOGlUWC9X?=
 =?utf-8?B?NW9hakcxUXpXbzY1dlRDR3M2a2NEbkZINGt5VUhodVAzc0cwMzlVWlN6eUtZ?=
 =?utf-8?B?ODYvOU1xSWNUMEZTNHUwcCsrd0RBRzlpSXh4QnViNWxUdmJyTUluWThOU0Z0?=
 =?utf-8?B?OGduRTZMRlVzUzJ0ZGdFeUVUU0UxMDFCVWtJWTBaQ21hM0FxTnhDa2REcExm?=
 =?utf-8?B?aWJkaGxuOXpNS2luME1nMnFreVozMjR5WEdvc0FtdHBZVTE2cE9neTlVMVRP?=
 =?utf-8?B?Y1RXRkhNTEs2ZjVZRmpEMnh4NW85ZWlXZW9NTS82Wkd2NkhCK3N5R2xkSWN5?=
 =?utf-8?B?NzZNM0lMUXl0S2g0anpDK3YzcDZSK1VRWkhXd0lJZFp4M0FPc0N1UUZKckt4?=
 =?utf-8?B?MHc4dVhHdjhNektzS1pxd29sVUNnbC9HN2ZQVE1RQjZuT2ZvbHcvdmhQMkNS?=
 =?utf-8?B?dXYvbUdpNmYwWFFkek1kR0pVODdQbmlOZ0hpb0tkSkl4dldhME1WVzBrUi9E?=
 =?utf-8?B?WGpZcXFhNm95SXU0NEdJbkVLK21HaXNMeGJHQXRDSGhBREN1L2xNYmxRRXR3?=
 =?utf-8?B?dlJlcjJsdTJEKytRMi9hOFJvSzJsTUFQS0hQVnZFYzhyNjIrNUtDNGpjUEZw?=
 =?utf-8?B?ZlAraTFLbHpiV05ONUp0emRmc3hIaUk5Z2YxRk9BbDFjRmpqSktFQWQ5WVRi?=
 =?utf-8?B?M2xTcHFuOHdWTm5DcGp6WU9tYmhKY3REUEZSZzBYZzZqMVpjWmJKY0NnK2p2?=
 =?utf-8?B?MzFaaWZFV3VDOUhHcU50Z0QwOGtRY2p1bEEzeFNVZmxRaE5jdko0TmFDYyt4?=
 =?utf-8?B?aVdEaVZOYzNSdjVueGRaVEFGUEFoRVlsdHFmREJ0ZnNpMTVPQXQ2S01FcGU2?=
 =?utf-8?B?MEJmd281U2phbE0yR0ZqendFR1l5SXM1aWxWQ1J3ekdyRnFIYVpsNTdzRFNV?=
 =?utf-8?B?UnhuWUFkcjVRTTRMaldFb1Z6OHdaSFcxRDJVMnZSUC9zK1E3TkJZeXYxOWxx?=
 =?utf-8?B?aXJYTmpQVU5ja3JVeEErVWFwTlB2QnpMQ2tNMnJaKzh5bUlHL2h2N1ZCMEdH?=
 =?utf-8?B?MzFTWXc3MGtCaUNDeFlSZFB5TlY1UktZVGY0d3RuQ2Y1UkZPbEREL1RZQWpl?=
 =?utf-8?B?aUsvOWJ5bFp0UFFBYmIyVFhBZ3h6YlJvQ052d1k3MVRCazczM3NpQ0p4MWxm?=
 =?utf-8?B?SzAxeXk3UEVnaTNPQ0lCNGh6aC8wdHIzS2taVklaODBrR1pOVm9yYzg5WDVX?=
 =?utf-8?B?SWZ3RndTYi9Lc1pNMUwrZ2hWdXBxNnZ4Slhpb2VzVlpuOFNqNkJYWUNRRzZQ?=
 =?utf-8?B?dGJYaXJ2Q2duOTZveTFaVUEzVk5CSVFZVThPRXdDaFpBb1pWWkRPRzgrRFJG?=
 =?utf-8?B?NlpadXlYMkhPRmNYQmgrN3RYdkNCMlpvVkFsdHdtZW1Od1g1YncrSmMyZjZL?=
 =?utf-8?B?NllpdXdRQ2lLSWVFSmtnSGExbVpONVQ2U3pJYjFLRjkzajdQMnk2MGVOL0s4?=
 =?utf-8?B?blQ3OGFvME9UNVZtL1RBN2hnRkRMQ2ZKRDMwRDNRMDJIbjhSdkJiMno1NmY2?=
 =?utf-8?B?NVo0bkxoZmtXemxPY3lvWW9RYjVtdDY4V2thWXRENzVPUHFYS1g4RWZ3SGFr?=
 =?utf-8?B?a3dKRE9xaU9FbXREazlCSDJYRzdYZHJDUDNsL3dDVFVEUHZ5dTYwRDI5dW9C?=
 =?utf-8?B?bUFzYWZDdmNuS21LYncrZ0FQMUdrT3ZnWjIrb0NoVG40MGZXMm9mWmJTbUhX?=
 =?utf-8?B?TFJKSmJ5SW9sdW5NWWpoZ3M2Vzg0K0RJRWJ5dCs0Vmc5bk9NOERMaXBxZUs4?=
 =?utf-8?B?b01JanBidW4vMjE5elZzVjd4bTdVc29aYmJKWjZUWU05ckxyOHk0NWJuaVJl?=
 =?utf-8?Q?WjnE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB6158.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc500481-f53a-4224-9c08-08dd73463b7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Apr 2025 06:59:23.8923
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ui+X+iJ/BQ3HN2Po/zPwpAmtP+YOjKXE21OfEpkjKjHqUTkwtE8xKn0mKdeHlNm2TLbmyS4lGNLaE4l+gg/4dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR12MB5624

W0FNRCBPZmZpY2lhbCBVc2UgT25seSAtIEFNRCBJbnRlcm5hbCBEaXN0cmlidXRpb24gT25seV0N
Cg0KSGkgTWFuaXZhbm5hbiwNCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3Lg0KDQo+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZh
bm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAyNywg
MjAyNSAxMDo1NiBQTQ0KPiBUbzogTXVzaGFtLCBTYWkgS3Jpc2huYSA8c2FpLmtyaXNobmEubXVz
aGFtQGFtZC5jb20+DQo+IENjOiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyBscGllcmFsaXNpQGtlcm5l
bC5vcmc7IGt3QGxpbnV4LmNvbTsgcm9iaEBrZXJuZWwub3JnOw0KPiBrcnprK2R0QGtlcm5lbC5v
cmc7IGNvbm9yK2R0QGtlcm5lbC5vcmc7IGNhc3NlbEBrZXJuZWwub3JnOyBsaW51eC0NCj4gcGNp
QHZnZXIua2VybmVsLm9yZzsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LWtlcm5l
bEB2Z2VyLmtlcm5lbC5vcmc7DQo+IFNpbWVrLCBNaWNoYWwgPG1pY2hhbC5zaW1la0BhbWQuY29t
PjsgR29nYWRhLCBCaGFyYXQgS3VtYXINCj4gPGJoYXJhdC5rdW1hci5nb2dhZGFAYW1kLmNvbT47
IEhhdmFsaWdlLCBUaGlwcGVzd2FteQ0KPiA8dGhpcHBlc3dhbXkuaGF2YWxpZ2VAYW1kLmNvbT4N
Cj4gU3ViamVjdDogUmU6IFtQQVRDSCB2NiAyLzJdIFBDSTogeGlsaW54LWNwbTogQWRkIHN1cHBv
cnQgZm9yIFBDSWUgUlAgUEVSU1QjDQo+IHNpZ25hbA0KPg0KPiBDYXV0aW9uOiBUaGlzIG1lc3Nh
Z2Ugb3JpZ2luYXRlZCBmcm9tIGFuIEV4dGVybmFsIFNvdXJjZS4gVXNlIHByb3BlciBjYXV0aW9u
DQo+IHdoZW4gb3BlbmluZyBhdHRhY2htZW50cywgY2xpY2tpbmcgbGlua3MsIG9yIHJlc3BvbmRp
bmcuDQo+DQo+DQo+IE9uIFdlZCwgTWFyIDI2LCAyMDI1IGF0IDA3OjU4OjExQU0gKzA1MzAsIFNh
aSBLcmlzaG5hIE11c2hhbSB3cm90ZToNCj4gPiBBZGQgUENJZSBJUCByZXNldCBhbG9uZyB3aXRo
IEdQSU8tYmFzZWQgY29udHJvbCBmb3IgdGhlIFBDSWUgUm9vdA0KPiA+IFBvcnQgUEVSU1QjIHNp
Z25hbC4gU3luY2hyb25pemluZyB0aGUgUENJZSBJUCByZXNldCB3aXRoIHRoZSBQRVJTVCMNCj4g
PiBzaWduYWwncyBhc3NlcnRpb24gYW5kIGRlYXNzZXJ0aW9uIGF2b2lkcyBMaW5rIFRyYWluaW5n
IGZhaWx1cmVzLg0KPiA+DQo+ID4gQWRhcHQgdG8gdXNlIEdQSU8gZnJhbWV3b3JrIGFuZCBtYWtl
IHJlc2V0IG9wdGlvbmFsIHRvIG1haW50YWluDQo+ID4gYmFja3dhcmQgY29tcGF0aWJpbGl0eSB3
aXRoIGV4aXN0aW5nIERUQnMuDQo+ID4NCj4gPiBBZGQgY2xlYXIgZmlyZXdhbGwgYWZ0ZXIgTGlu
ayByZXNldCBmb3IgQ1BNNU5DLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogU2FpIEtyaXNobmEg
TXVzaGFtIDxzYWkua3Jpc2huYS5tdXNoYW1AYW1kLmNvbT4NCj4gPiAtLS0NCj4gPiBDaGFuZ2Vz
IGZvciB2NjoNCj4gPiAtIENvcnJlY3QgdmVyc2lvbiBjaGVjayBjb25kaXRpb24gb2YgQ1BNNU5D
X0hPU1QuDQo+ID4NCj4gPiBDaGFuZ2VzIGZvciB2NToNCj4gPiAtIEhhbmRsZSBwcm9iZSBkZWZl
ciBmb3IgcmVzZXRfZ3Bpby4NCj4gPiAtIFJlc29sdmUgQUJJIGJyZWFrLg0KPiA+DQo+ID4gQ2hh
bmdlcyBmb3IgdjQ6DQo+ID4gLSBBZGQgUENJZSBQRVJTVCMgc3VwcG9ydCBmb3IgQ1BNNU5DLg0K
PiA+IC0gQWRkIFBDSWUgSVAgcmVzZXQgYWxvbmcgd2l0aCBQRVJTVCMgdG8gYXZvaWQgTGluayBU
cmFpbmluZyBFcnJvcnMuDQo+ID4gLSBSZW1vdmUgUENJRV9UX1BWUEVSTF9NUyBkZWZpbmUgYW5k
IFBDSUVfVF9SUlNfUkVBRFlfTVMgYWZ0ZXINCj4gPiAgIFBFUlNUIyBkZWFzc2VydC4NCj4gPiAt
IE1vdmUgUENJZSBQRVJTVCMgYXNzZXJ0IGFuZCBkZWFzc2VydCBsb2dpYyB0bw0KPiA+ICAgeGls
aW54X2NwbV9wY2llX2luaXRfcG9ydCgpIGJlZm9yZSBjcG1fcGNpZV9saW5rX3VwKCksIHNpbmNl
DQo+ID4gICBJbnRlcnJ1cHRzIGVuYWJsZSBhbmQgUENJZSBSUCBicmlkZ2UgZW5hYmxlIHNob3Vs
ZCBiZSBkb25lIGFmdGVyDQo+ID4gICBMaW5rIHVwLg0KPiA+IC0gVXBkYXRlIGNvbW1pdCBtZXNz
YWdlLg0KPiA+DQo+ID4gQ2hhbmdlcyBmb3IgdjM6DQo+ID4gLSBVc2UgUENJRV9UX1BWUEVSTF9N
UyBkZWZpbmUuDQo+ID4NCj4gPiBDaGFuZ2VzIGZvciB2MjoNCj4gPiAtIE1ha2UgdGhlIHJlcXVl
c3QgR1BJTyBvcHRpb25hbC4NCj4gPiAtIENvcnJlY3QgdGhlIHJlc2V0IHNlcXVlbmNlIGFzIHBl
ciBQRVJTVCMNCj4gPiAtIFVwZGF0ZSBjb21taXQgbWVzc2FnZQ0KPiA+IC0tLQ0KPiA+ICBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUteGlsaW54LWNwbS5jIHwgODYgKysrKysrKysrKysrKysr
KysrKysrKy0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4MiBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
ZS14aWxpbngtY3BtLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUteGlsaW54LQ0KPiBj
cG0uYw0KPiA+IGluZGV4IGQwYWIxODdkOTE3Zi4uYjEwYzA3NTJhOTRmIDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS14aWxpbngtY3BtLmMNCj4gPiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUteGlsaW54LWNwbS5jDQo+ID4gQEAgLTYsNiArNiw4
IEBADQo+ID4gICAqLw0KPiA+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPg0KPiA+
ICsjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4NCj4gPiArI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29u
c3VtZXIuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L2ludGVycnVwdC5oPg0KPiA+ICAjaW5jbHVk
ZSA8bGludXgvaXJxLmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9pcnFjaGlwLmg+DQo+ID4gQEAg
LTIxLDYgKzIzLDEzIEBADQo+ID4gICNpbmNsdWRlICJwY2llLXhpbGlueC1jb21tb24uaCINCj4g
Pg0KPiA+ICAvKiBSZWdpc3RlciBkZWZpbml0aW9ucyAqLw0KPiA+ICsjZGVmaW5lIFhJTElOWF9D
UE1fUENJRTBfUlNUICAgICAgICAgMHgwMDAwMDMwOA0KPiA+ICsjZGVmaW5lIFhJTElOWF9DUE01
X1BDSUUwX1JTVCAgICAgICAgICAgICAgICAweDAwMDAwMzE4DQo+ID4gKyNkZWZpbmUgWElMSU5Y
X0NQTTVfUENJRTFfUlNUICAgICAgICAgICAgICAgIDB4MDAwMDAzMUMNCj4gPiArI2RlZmluZSBY
SUxJTlhfQ1BNNU5DX1BDSUUwX1JTVCAgICAgICAgICAgICAgMHgwMDAwMDMyNA0KPiA+ICsNCj4g
PiArI2RlZmluZSBYSUxJTlhfQ1BNNU5DX1BDSUUwX0ZSV0FMTCAgIDB4MDAwMDExNDANCj4gPiAr
DQo+ID4gICNkZWZpbmUgWElMSU5YX0NQTV9QQ0lFX1JFR19JRFIgICAgICAgICAgICAgIDB4MDAw
MDBFMTANCj4gPiAgI2RlZmluZSBYSUxJTlhfQ1BNX1BDSUVfUkVHX0lNUiAgICAgICAgICAgICAg
MHgwMDAwMEUxNA0KPiA+ICAjZGVmaW5lIFhJTElOWF9DUE1fUENJRV9SRUdfUFNDUiAgICAgMHgw
MDAwMEUxQw0KPiA+IEBAIC05OSw2ICsxMDgsNyBAQCBzdHJ1Y3QgeGlsaW54X2NwbV92YXJpYW50
IHsNCj4gPiAgICAgICB1MzIgaXJfc3RhdHVzOw0KPiA+ICAgICAgIHUzMiBpcl9lbmFibGU7DQo+
ID4gICAgICAgdTMyIGlyX21pc2NfdmFsdWU7DQo+ID4gKyAgICAgdTMyIGNwbV9wY2llX3JzdDsN
Cj4gPiAgfTsNCj4gPg0KPiA+ICAvKioNCj4gPiBAQCAtMTA2LDYgKzExNiw4IEBAIHN0cnVjdCB4
aWxpbnhfY3BtX3ZhcmlhbnQgew0KPiA+ICAgKiBAZGV2OiBEZXZpY2UgcG9pbnRlcg0KPiA+ICAg
KiBAcmVnX2Jhc2U6IEJyaWRnZSBSZWdpc3RlciBCYXNlDQo+ID4gICAqIEBjcG1fYmFzZTogQ1BN
IFN5c3RlbSBMZXZlbCBDb250cm9sIGFuZCBTdGF0dXMgUmVnaXN0ZXIoU0xDUikgQmFzZQ0KPiA+
ICsgKiBAY3J4X2Jhc2U6IENQTSBDbG9jayBhbmQgUmVzZXQgQ29udHJvbCBSZWdpc3RlcnMgQmFz
ZQ0KPiA+ICsgKiBAY3BtNW5jX2F0dHJfYmFzZTogQ1BNNU5DIENvbnRyb2wgYW5kIFN0YXR1cyBS
ZWdpc3RlcnMgQmFzZQ0KPiA+ICAgKiBAaW50eF9kb21haW46IExlZ2FjeSBJUlEgZG9tYWluIHBv
aW50ZXINCj4gPiAgICogQGNwbV9kb21haW46IENQTSBJUlEgZG9tYWluIHBvaW50ZXINCj4gPiAg
ICogQGNmZzogSG9sZHMgbWFwcGluZ3Mgb2YgY29uZmlnIHNwYWNlIHdpbmRvdw0KPiA+IEBAIC0x
MTgsNiArMTMwLDggQEAgc3RydWN0IHhpbGlueF9jcG1fcGNpZSB7DQo+ID4gICAgICAgc3RydWN0
IGRldmljZSAgICAgICAgICAgICAgICAgICAqZGV2Ow0KPiA+ICAgICAgIHZvaWQgX19pb21lbSAg
ICAgICAgICAgICAgICAgICAgKnJlZ19iYXNlOw0KPiA+ICAgICAgIHZvaWQgX19pb21lbSAgICAg
ICAgICAgICAgICAgICAgKmNwbV9iYXNlOw0KPiA+ICsgICAgIHZvaWQgX19pb21lbSAgICAgICAg
ICAgICAgICAgICAgKmNyeF9iYXNlOw0KPiA+ICsgICAgIHZvaWQgX19pb21lbSAgICAgICAgICAg
ICAgICAgICAgKmNwbTVuY19hdHRyX2Jhc2U7DQo+ID4gICAgICAgc3RydWN0IGlycV9kb21haW4g
ICAgICAgICAgICAgICAqaW50eF9kb21haW47DQo+ID4gICAgICAgc3RydWN0IGlycV9kb21haW4g
ICAgICAgICAgICAgICAqY3BtX2RvbWFpbjsNCj4gPiAgICAgICBzdHJ1Y3QgcGNpX2NvbmZpZ193
aW5kb3cgICAgICAgICpjZmc7DQo+ID4gQEAgLTQ3NSwxMiArNDg5LDQ1IEBAIHN0YXRpYyBpbnQg
eGlsaW54X2NwbV9zZXR1cF9pcnEoc3RydWN0IHhpbGlueF9jcG1fcGNpZQ0KPiAqcG9ydCkNCj4g
PiAgICogeGlsaW54X2NwbV9wY2llX2luaXRfcG9ydCAtIEluaXRpYWxpemUgaGFyZHdhcmUNCj4g
PiAgICogQHBvcnQ6IFBDSWUgcG9ydCBpbmZvcm1hdGlvbg0KPiA+ICAgKi8NCj4gPiAtc3RhdGlj
IHZvaWQgeGlsaW54X2NwbV9wY2llX2luaXRfcG9ydChzdHJ1Y3QgeGlsaW54X2NwbV9wY2llICpw
b3J0KQ0KPiA+ICtzdGF0aWMgaW50IHhpbGlueF9jcG1fcGNpZV9pbml0X3BvcnQoc3RydWN0IHhp
bGlueF9jcG1fcGNpZSAqcG9ydCkNCj4gPiAgew0KPiA+ICAgICAgIGNvbnN0IHN0cnVjdCB4aWxp
bnhfY3BtX3ZhcmlhbnQgKnZhcmlhbnQgPSBwb3J0LT52YXJpYW50Ow0KPiA+ICsgICAgIHN0cnVj
dCBkZXZpY2UgKmRldiA9IHBvcnQtPmRldjsNCj4gPiArICAgICBzdHJ1Y3QgZ3Bpb19kZXNjICpy
ZXNldF9ncGlvOw0KPiA+ICsNCj4gPiArICAgICAvKiBSZXF1ZXN0IHRoZSBHUElPIGZvciBQQ0ll
IHJlc2V0IHNpZ25hbCAqLw0KPiA+ICsgICAgIHJlc2V0X2dwaW8gPSBkZXZtX2dwaW9kX2dldF9v
cHRpb25hbChkZXYsICJyZXNldCIsIEdQSU9EX09VVF9ISUdIKTsNCj4gPiArICAgICBpZiAoSVNf
RVJSKHJlc2V0X2dwaW8pKSB7DQo+ID4gKyAgICAgICAgICAgICBpZiAoUFRSX0VSUihyZXNldF9n
cGlvKSAhPSAtRVBST0JFX0RFRkVSKQ0KPiA+ICsgICAgICAgICAgICAgICAgICAgICBkZXZfZXJy
KGRldiwgIkZhaWxlZCB0byByZXF1ZXN0IHJlc2V0IEdQSU9cbiIpOw0KPiA+ICsgICAgICAgICAg
ICAgcmV0dXJuIFBUUl9FUlIocmVzZXRfZ3Bpbyk7DQo+ID4gKyAgICAgfQ0KPiA+DQo+ID4gLSAg
ICAgaWYgKHZhcmlhbnQtPnZlcnNpb24gPT0gQ1BNNU5DX0hPU1QpDQo+ID4gLSAgICAgICAgICAg
ICByZXR1cm47DQo+ID4gKyAgICAgaWYgKHJlc2V0X2dwaW8gJiYgcG9ydC0+Y3J4X2Jhc2UpIHsN
Cj4gPiArICAgICAgICAgICAgIC8qIEFzc2VydCB0aGUgUENJZSBJUCByZXNldCAqLw0KPiA+ICsg
ICAgICAgICAgICAgd3JpdGVsX3JlbGF4ZWQoMHgxLCBwb3J0LT5jcnhfYmFzZSArIHZhcmlhbnQt
PmNwbV9wY2llX3JzdCk7DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgLyogQ29udHJvbGxlciBz
cGVjaWZpYyBkZWxheSAqLw0KPiA+ICsgICAgICAgICAgICAgdWRlbGF5KDUwKTsNCj4gPiArDQo+
DQo+IFRoZXJlIHNob3VsZCBiZSBhdGxlYXN0IDEwMG1zIGRlbGF5IGJlZm9yZSBQRVJTVCMgZGVh
c3NlcnQgYXMgcGVyIHRoZSBzcGVjLiBTbw0KPiB1c2UgUENJRV9UX1BWUEVSTF9NUy4gSSBrbm93
IHRoYXQgeW91IGhhZCBpdCBiZWZvcmUsIGJ1dCByZW1vdmVkIGluIHY0LiBJIGRvbid0DQo+IHNl
ZSBhIHZhbGlkIHJlYXNvbiBmb3IgdGhhdC4NCg0KRm9yIENQTS9DUE01L0NQTTVOQywgdGhlICJQ
b3dlciBVcCIgc2VxdWVuY2UgbWVudGlvbmVkIGluIHNlY3Rpb24gMi4yLjENCm9mIFBDSWUgRWxl
Y3Ryb21lY2hhbmljYWwgU3BlYyBpcyBoYW5kbGVkIGluIHRoZSBkZXNpZ24uIFRoZSBQRVJTVCMg
d2UgYXJlDQp1c2luZyBoZXJlIGlzIGFwcGxpZWQgYWZ0ZXIgdGhlIFBvd2VyIFVwIHNlcXVlbmNl
IGFuZCB3aWxsIGJlIHVzZWQgZm9yIHdhcm0gcmVzZXQsDQp3aGVyZSBwb3dlciBvZiB0aGUgc3lz
dGVtIGlzIGFscmVhZHkgc3RhYmxlLg0KDQpTbywgd2UgY2hhbmdlZCB0aGUgZGVsYXkgYWZ0ZXIg
UEVSU1QjIGFuZCBJUCByZXNldCBhc3NlcnRpb24gdG8gNTB1cyBjb250cm9sbGVyDQpzcGVjaWZp
YyBkZWxheSwgc2ltaWxhciB0byBUUEVSU1QoUEVSU1QjIGFjdGl2ZSB0aW1lIDEwMHVzKSBkZWxh
eSBpbiAiUG93ZXINCnNlcXVlbmNpbmcgYW5kIFJlc2V0IFNpZ25hbCBUaW1pbmdzIiBvZiBQQ0ll
IEVsZWN0cm9tZWNoYW5pY2FsIFNwZWMuIEFmdGVyDQpkZWFzc2VydGlvbiBvZiBQRVJTVCMgc2ln
bmFsIGFuZCBJUCByZXNldCwgYSBkZWxheSBvZiBQQ0lFX1RfUlJTX1JFQURZX01TDQppcyByZXF1
aXJlZCBiZWZvcmUgY2hlY2tpbmcgdGhlIExpbmsuIFBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3Ug
aGF2ZSBmdXJ0aGVyIHF1ZXJpZXMuDQoNClRoYW5rcywgSSB3aWxsIHVwZGF0ZSB0aGlzIGluZm9y
bWF0aW9uIGluIGNvbW1pdCBtZXNzYWdlLg0KPg0KPiA+ICsgICAgICAgICAgICAgLyogRGVhc3Nl
cnQgdGhlIFBDSWUgSVAgcmVzZXQgKi8NCj4gPiArICAgICAgICAgICAgIHdyaXRlbF9yZWxheGVk
KDB4MCwgcG9ydC0+Y3J4X2Jhc2UgKyB2YXJpYW50LT5jcG1fcGNpZV9yc3QpOw0KPiA+ICsNCj4g
PiArICAgICAgICAgICAgIC8qIERlYXNzZXJ0IHRoZSByZXNldCBzaWduYWwgKi8NCj4gPiArICAg
ICAgICAgICAgIGdwaW9kX3NldF92YWx1ZShyZXNldF9ncGlvLCAwKTsNCj4gPiArICAgICAgICAg
ICAgIG1kZWxheShQQ0lFX1RfUlJTX1JFQURZX01TKTsNCj4gPiArDQo+ID4gKyAgICAgICAgICAg
ICBpZiAodmFyaWFudC0+dmVyc2lvbiA9PSBDUE01TkNfSE9TVCAmJiBwb3J0LT5jcG01bmNfYXR0
cl9iYXNlKSB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIC8qIENsZWFyIEZpcmV3YWxsICov
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHdyaXRlbF9yZWxheGVkKDB4MDAsIHBvcnQtPmNw
bTVuY19hdHRyX2Jhc2UgKw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgWElMSU5YX0NQTTVOQ19QQ0lFMF9GUldBTEwpOw0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICB3cml0ZWxfcmVsYXhlZCgweDAxLCBwb3J0LT5jcG01bmNfYXR0cl9iYXNlICsNCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFhJTElOWF9DUE01TkNfUENJRTBfRlJX
QUxMKTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgd3JpdGVsX3JlbGF4ZWQoMHgwMCwgcG9y
dC0+Y3BtNW5jX2F0dHJfYmFzZSArDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBYSUxJTlhfQ1BNNU5DX1BDSUUwX0ZSV0FMTCk7DQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIHJldHVybiAwOw0KPiA+ICsgICAgICAgICAgICAgfQ0KPiA+ICsgICAgIH0NCj4gPg0K
PiA+ICAgICAgIGlmIChjcG1fcGNpZV9saW5rX3VwKHBvcnQpKQ0KPiA+ICAgICAgICAgICAgICAg
ZGV2X2luZm8ocG9ydC0+ZGV2LCAiUENJZSBMaW5rIGlzIFVQXG4iKTsNCj4gPiBAQCAtNTEyLDYg
KzU1OSw4IEBAIHN0YXRpYyB2b2lkIHhpbGlueF9jcG1fcGNpZV9pbml0X3BvcnQoc3RydWN0DQo+
IHhpbGlueF9jcG1fcGNpZSAqcG9ydCkNCj4gPiAgICAgICBwY2llX3dyaXRlKHBvcnQsIHBjaWVf
cmVhZChwb3J0LCBYSUxJTlhfQ1BNX1BDSUVfUkVHX1JQU0MpIHwNCj4gPiAgICAgICAgICAgICAg
ICAgIFhJTElOWF9DUE1fUENJRV9SRUdfUlBTQ19CRU4sDQo+ID4gICAgICAgICAgICAgICAgICBY
SUxJTlhfQ1BNX1BDSUVfUkVHX1JQU0MpOw0KPiA+ICsNCj4gPiArICAgICByZXR1cm4gMDsNCj4g
PiAgfQ0KPiA+DQo+ID4gIC8qKg0KPiA+IEBAIC01NTEsNiArNjAwLDI3IEBAIHN0YXRpYyBpbnQg
eGlsaW54X2NwbV9wY2llX3BhcnNlX2R0KHN0cnVjdA0KPiB4aWxpbnhfY3BtX3BjaWUgKnBvcnQs
DQo+ID4gICAgICAgICAgICAgICBwb3J0LT5yZWdfYmFzZSA9IHBvcnQtPmNmZy0+d2luOw0KPiA+
ICAgICAgIH0NCj4gPg0KPiA+ICsgICAgIHBvcnQtPmNyeF9iYXNlID0gZGV2bV9wbGF0Zm9ybV9p
b3JlbWFwX3Jlc291cmNlX2J5bmFtZShwZGV2LA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY3BtX2NyeCIpOw0KPiA+ICsg
ICAgIGlmIChJU19FUlIocG9ydC0+Y3J4X2Jhc2UpKSB7DQo+ID4gKyAgICAgICAgICAgICBpZiAo
UFRSX0VSUihwb3J0LT5jcnhfYmFzZSkgPT0gLUVJTlZBTCkNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgcG9ydC0+Y3J4X2Jhc2UgPSBOVUxMOw0KPiA+ICsgICAgICAgICAgICAgZWxzZQ0KPiA+
ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwb3J0LT5jcnhfYmFzZSk7DQo+
ID4gKyAgICAgfQ0KPiA+ICsNCj4gPiArICAgICBpZiAocG9ydC0+dmFyaWFudC0+dmVyc2lvbiA9
PSBDUE01TkNfSE9TVCkgew0KPiA+ICsgICAgICAgICAgICAgcG9ydC0+Y3BtNW5jX2F0dHJfYmFz
ZSA9DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNv
dXJjZV9ieW5hbWUocGRldiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAiY3BtNW5jX2F0dHIiKTsNCj4NCj4gV2hlcmUgaXMg
dGhpcyByZXNvdXJjZSBkZWZpbmVkIGluIHRoZSBiaW5kaW5nPw0KDQpUaGlzIHBhdGNoIGlzIHRl
c3RlZCBmb3IgbWVudGlvbmVkIENQTSB2ZXJzaW9ucywgSSBhcG9sb2dpemUgdGhhdA0KSSBtaXNz
ZWQgYWRkaW5nIHRoZSBjcG01bmNfYXR0ciByZXNvdXJjZSBpbiBEVCBiaW5kaW5nLiBJIHdpbGwg
bm90DQpyZXBlYXQgdGhpcyBhZ2Fpbi4gSSB3aWxsIGFkZCB0aGUgcmVzb3VyY2UgaW4gdGhlIG5l
eHQgcGF0Y2guDQpUaGFua3MgZm9yIHlvdXIgdW5kZXJzdGFuZGluZy4NCj4NCj4gPiArICAgICAg
ICAgICAgIGlmIChJU19FUlIocG9ydC0+Y3BtNW5jX2F0dHJfYmFzZSkpIHsNCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgaWYgKFBUUl9FUlIocG9ydC0+Y3BtNW5jX2F0dHJfYmFzZSkgPT0gLUVJ
TlZBTCkNCj4NCj4gV2h5Pw0KDQpUaGlzIGNvbmRpdGlvbiBjaGVjayBpcyBhZGRlZCB0byBtYWtl
IGNwbTVuY19hdHRyX2Jhc2Ugb3B0aW9uYWwsDQpvbmNlIEkgYWRkIG1pc3NpbmcgcmVzb3VyY2Ug
aW4gRFQgdGhpcyBjb25kaXRpb24gd2lsbCBiZSBhcHBsaWNhYmxlLg0KVGhhbmtzLg0KPg0KPiAt
IE1hbmkNCj4NCj4gLS0NCj4g4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQ0KDQpSZWdhcmRzLA0KU2FpIEtyaXNobmENCg==

