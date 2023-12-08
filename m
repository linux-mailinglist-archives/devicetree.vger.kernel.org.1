Return-Path: <devicetree+bounces-22979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B0F809C7D
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 07:36:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E45F928188D
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 06:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D4105662;
	Fri,  8 Dec 2023 06:36:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=os.amperecomputing.com header.i=@os.amperecomputing.com header.b="aRbU9+cC"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11hn2200.outbound.protection.outlook.com [52.100.171.200])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B613E1728
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 22:35:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OOYvoYnzFl/EXxZnp8xvHTQUIQYPy6V7lRLGHTo++x89WXsS3oIXqTmITl00cQjQ3T3XQtzF4mPiTCy286bw7amxZXoFM1o1kQj0so6yjqSbMhMvmiRYYXsNsY65NTFQIWetCwyY+zgWFQcuStLXZbfn3Aeea7n1sMWB6QTVAvVCxybR5XitlUO99UzlvAMzzhYjx83p1+8Av6bJoMacgKR1VQoWayDxVC4mYduWltd1DTIKORICxLaHuCjEwlb22qmErLZ7Q98npt29UMadQ2Zo2G4w7si6qxVlgDQf+WHwD39on5zZvOz3t3EEAu9yjCs058SdYyQrl7pDZ8e8Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0CZa8bYFHELC6XV8VTNt74eYdK/NkYa4eUKLcSns3fw=;
 b=PF9+6lDTykz6Zu8E9hUlFssFyZoajSy4gOAQ4dH/gg3/3jFdopmDWafovf299LsU6tX8i3LDaA3wzUewmfZuz3GcVcbs1CL0GRfqHzVb8TgnwjZKg+ca9CWV1O3N/ByuNXqMRNtLTCTt311QrycnFhVITe8LHVSguPSoD+cuq5xlxQ9sCHcvHcYPGCmvjPEqzHs8qz3VGbzy3TANq/1MOtP9zWECto8dw3Rdehp1bIiOcPNXsZGwhyGsl9MgK44F2ZCRoXboZRTdfkpK+YeDZXmNDwUFRryaynoC8wyIq5vJH4il03pnlEZoPAN2hStve2GgM6FCwJLuepw7WFAgmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0CZa8bYFHELC6XV8VTNt74eYdK/NkYa4eUKLcSns3fw=;
 b=aRbU9+cCCTOsNUmJIi+cnPdazB6e1VVm4cJwlUkPWa1rHTCl7D3mj4vbW0XpZB+1/XCsU/JR77a6fWGYU9do95bESWOgN41ia42iVxMCcArxTsymZ+1YomBdiWbPuVnvlQZM/WAFIVJVK9kk4FB3J2ymXtZDv+dXD6+6Cd6Su2I=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=os.amperecomputing.com;
Received: from DM5PR0102MB3590.prod.exchangelabs.com (2603:10b6:4:a4::25) by
 CO1PR01MB6551.prod.exchangelabs.com (2603:10b6:303:f4::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.29; Fri, 8 Dec 2023 06:35:52 +0000
Received: from DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6]) by DM5PR0102MB3590.prod.exchangelabs.com
 ([fe80::49fa:8dc0:6fd1:72e6%4]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 06:35:51 +0000
Date: Thu, 7 Dec 2023 22:35:38 -0800 (PST)
From: Ilkka Koskinen <ilkka@os.amperecomputing.com>
To: Robin Murphy <robin.murphy@arm.com>
cc: Ilkka Koskinen <ilkka@os.amperecomputing.com>, will@kernel.org, 
    mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org, 
    devicetree@vger.kernel.org, suzuki.poulose@arm.com, bwicaksono@nvidia.com, 
    YWan@nvidia.com, rwiley@nvidia.com
Subject: Re: [PATCH 5/5] perf/arm_cspmu: Add devicetree support
In-Reply-To: <23c9fc1e-dedd-4f27-8d84-3839b23c832d@arm.com>
Message-ID: <38e991f1-5d4e-467a-7f9b-3cebd71fae7@os.amperecomputing.com>
References: <cover.1701793996.git.robin.murphy@arm.com> <7000cdf3a22afe684793863e81a1d96bbddb5db1.1701793996.git.robin.murphy@arm.com> <b7905a93-e4c-b6a6-d584-389131f4276@os.amperecomputing.com> <23c9fc1e-dedd-4f27-8d84-3839b23c832d@arm.com>
Content-Type: multipart/mixed; boundary="1372433909-448154374-1702017350=:2428"
X-ClientProxiedBy: CH2PR04CA0021.namprd04.prod.outlook.com
 (2603:10b6:610:52::31) To DM5PR0102MB3590.prod.exchangelabs.com
 (2603:10b6:4:a4::25)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR0102MB3590:EE_|CO1PR01MB6551:EE_
X-MS-Office365-Filtering-Correlation-Id: fe1067e2-994a-4ffd-e512-08dbf7b7ebb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VnY4ZWY4ZVlkODUrSHJJNEpCYVJIVWw5ZkNwWm5DWTV0Mk94K3c3cnFsYk5X?=
 =?utf-8?B?TmJZU2tVQTFWR2FCRFBEdENyOFBxa3JxQXRFMnBLNzlCK2J5eTV4UGdTOGg2?=
 =?utf-8?B?akx6aktjVnVaVklab0Nyb2RHaldoajQ4RnF4UmdzWms2eGxJazMwaEVDNHM5?=
 =?utf-8?B?OEEzZlhoc0tGb3QxaTRVRlJTdW5mejBNL1ZzSTFuTmFNVlFMOENHL1pSNVNu?=
 =?utf-8?B?WGpxR1d4eFU0VDhac216Q2dlR2FuOWRNUm1IdEJIWGo3SUJydDdnUzlnUDNn?=
 =?utf-8?B?WWwzMlluMjRuUUxrbVM1dDlNSlJscC9pdFl5YVFDRnY5SmZBVzN4dEsvUWhW?=
 =?utf-8?B?bTIyYkNZLzhkWkREcDRyYVdPMERRVjQ4SDJKNlN2UHZSWStEUTZiL1pDYWhw?=
 =?utf-8?B?WE1UK0Ftc0NpSEVDY1VRbUZwT2NhRGtiazhJZERFMDFVS25TaTY4bVpqQVM3?=
 =?utf-8?B?cFFkbHlXdlFTU3V3NXMyM09hb1dXeTk3Vjhzend6QUtvUDJ0ZHJrRkJaTE9l?=
 =?utf-8?B?cHlNc1BUZHFHOGJGUWJaRnZ2QjNDSDlkWlhKOXo5Q1dLZmpXMXBNZDZoMWEx?=
 =?utf-8?B?MFdOSG8yd1ZYNHZVVnpPaEp1aWxIdFN4YVQya1ZZQnRQWUJsdGlHSk5VbTFn?=
 =?utf-8?B?RXUxaTVjUmcyWG9hc3ZuM1BpRjVUZk1UOW5HWi95WWpvTHNZMlNIMFp4L1di?=
 =?utf-8?B?Q2hjMFZWVFVmQzY5enhtZDZUempFM3pTaTBuc2NBM0pkcW9yV0RFeHZlZFlO?=
 =?utf-8?B?U01iSi9SOXdVWERtNE8wQis3REZpV1RNdXJQbTFBRDZ0VFNmeWJWb1JaVy9E?=
 =?utf-8?B?cDRUZUJXcHdPcndod3hJbS80ZFhkYmJEY1JSZFpCa1hXVG53NUJyK1o5dE9n?=
 =?utf-8?B?dHVIVGhWbGM1Z2xyaHNZMTBBNHgvSnpieWtPanFlbnUzbVFwSkFtOElMSkQ0?=
 =?utf-8?B?U0EyZFlzUnVndExKdERKdmllR0RPQkVIMy9RS0tHN0d1emUwUXEwNGMxZUk0?=
 =?utf-8?B?eHR3L1F1Z3hNZkxSc1VzZVdWaXM0UGFnZmMzTTMxcm5ocm9NQmFnVlNPSzJr?=
 =?utf-8?B?M245SnFpMG4xbUFwSlR2VUltM0dHNzVLZ00rYk9sY0ZEajB2Smw2SlZZZTNS?=
 =?utf-8?B?QWlEN0dVYjFzOTNlMktnc0YxZFF0b0Qrb2M5eUZNMHJ1SGlOTHJJbGJNVVQ0?=
 =?utf-8?B?NGhrOTkxRVk5TDhlNU11QnVmTUJORlRKbHZGY2wxTFdWMlgxTEp0Ny9HRDIr?=
 =?utf-8?B?RE1MeC9mWGxNTlh2Y1JXTVhSeHduc0R2eFBJZlEwZWJadEw0Qm5NT0VtNXpl?=
 =?utf-8?B?bHpFYkhXY3VtWlFmV3p3aWJNb2JyUlpINHQrd1FIUUNmVTFyQ2tWNjdJc3NW?=
 =?utf-8?Q?TBSM58yw9TKtUYsiAifDHCSOqkVVbHPo=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:5;SRV:;IPV:NLI;SFV:SPM;H:DM5PR0102MB3590.prod.exchangelabs.com;PTR:;CAT:OSPM;SFS:(13230031)(376002)(396003)(366004)(136003)(346002)(39850400004)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(26005)(38350700005)(6506007)(41300700001)(33964004)(6512007)(53546011)(52116002)(2616005)(83380400001)(2906002)(316002)(6916009)(5660300002)(66946007)(66556008)(66476007)(86362001)(8676002)(4326008)(38100700002)(8936002)(478600001)(6666004)(6486002)(58440200007);DIR:OUT;SFP:1501;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SVlJTGRFS1VrNXdvNDY4czVRNzJFTGpDS1JwV0ladjJNSzEra0ZpV1VuSTVa?=
 =?utf-8?B?SWkwcytGMkxhVmtYeVNKenhwSytwTWhQZ1B1eVJlQTg4ZmFvdktZNGxtdENK?=
 =?utf-8?B?UUp2OTZ6ei80eVI4ckMvZUsyZFE4SDA4a0pMSXFlWGlldkNFbG9BMkxBbUFa?=
 =?utf-8?B?UDZSVUFtUFNFemZtYmJqNEpWYlI0Yms5M2tiVHlZRy92enJJMUh4SllIL0Iy?=
 =?utf-8?B?VEd6VmlhS21najN5R00zVDZwc1IzTzZsYytPVHZlUDk0UDhrS3JXWDc1WndG?=
 =?utf-8?B?S1RlbkJGdXN6Z0hqdldiY1EwSSswa2VXZkdmT204NnkwRkVzdFY2dENCRkxv?=
 =?utf-8?B?bUN0bFBVNHg1RjVreVluL2Rad2d4Vm5wTkZxMmVJdGxRSmNsRTlkd3RvS2h5?=
 =?utf-8?B?djN3ZWxzSFBkQmFza3BCS1JZN25WK1I2R2x2Nk9qSk9PS0pYMTliM3NRM1Fp?=
 =?utf-8?B?SW8zdnBiK283c0xIVVVUeUNQSFk4K0cyMTYzRUFYWC9zZlN4ZHhaeUduUVVi?=
 =?utf-8?B?NHlOeWRjOWgvT3pKRlRpR1BMTmxnOEluN01EOXJxYy9pUExZaE9yUXZkejZG?=
 =?utf-8?B?SnQyTzFMeUpqbTZDYUQyZktjWnhhVlhackRkU2VwV253eGppQzJJdU5nV0Z1?=
 =?utf-8?B?OTFFckg0TTM3emRndTU2QURiS1FMKyt1NHVMSjdKUEJvaG15UTFZQ0VoaVla?=
 =?utf-8?B?dFl2NGxSWWVFRGc3ME9XV3dDU2xNU0ZKUnZxSlhobnhScnZobnFveWpYQk1P?=
 =?utf-8?B?azRGT3M5aTdOVWthYTF4YmNIOTUwa3l5WmlPbmsybUQ1djlUclRpbUZnL3Z1?=
 =?utf-8?B?TlNjS3kwR2hkcXFUYVNmakw0UnlseE1tU0ExTmJrVlA5ZStoU3NSbXQ2Qk1o?=
 =?utf-8?B?dEhNN0N5U3IyRjFiMnBWYTNOWDJPdE14OTJIVEs4NWlxYkJ4RVU5T1BaMVNT?=
 =?utf-8?B?TDJUU0I0ZnJBcW9YcWxVN0hobTlmOEtDYXdEbWxhRGw0alc5WGdRK3cvSERs?=
 =?utf-8?B?WExCUDJpNmhmTVViZjhvbGYwekpkZFhlMDFSN0pFN0Z6bzFZZ2lVbXIxZDd4?=
 =?utf-8?B?QllnVTd2WmdpVVF6Q2Y1R1RwTE1HOE9DRkY4YWtPbjBsTHRZdXRmc3N4dkRa?=
 =?utf-8?B?M0thRjVIUjAxUjZhUUNaN1BFbDhSdThvU3p6OTVvZkJRNEVlcEk0NzNZMWN4?=
 =?utf-8?B?aE5ZMFR1dkZ2K0phQ2FZRGJ5RTBvcWxuN1Z1N3Vkb2c5WFlqOTNyMGVKNFk3?=
 =?utf-8?B?a2pmaE1aU0pkR1pod3FEWFE5d3ZBdzZmaGZrZ3FWWVRnMVhmbVVTWDE5QXlv?=
 =?utf-8?B?YmF6OVUxMG9CUk16cVVhbVpWVktoTUZ0bXpKSFBzSXlXQ0YxZWpXSWxSdXJG?=
 =?utf-8?B?S0NIQ2NxVFRLbTlNajVzanRDdTdyaHM0c09rTXk2SzFEM0NMSWhUZWRVQTBP?=
 =?utf-8?B?TWN5d1NDQUFuV0lNdU82UXYySDRUREgrQXdRbmxEcHBiM0VrSjF1RDZucTZH?=
 =?utf-8?B?L2I3eFJYdHFQYmJnWHMwS0dudU1XN2thVjdQNXFRUnRHZGtlcHRCSkhQcnhu?=
 =?utf-8?B?Q0NMcEdXNW1QL2lveHIvNSs0R3pXMFc0bjZnMjQyS1UwOExtWDZCbDRUNVRs?=
 =?utf-8?B?d0FHU2o3V3NpaCsvUVV1cnMxTzF1TXp2S2MrS2YrNXV2N2VrLzBhNUduQTRI?=
 =?utf-8?B?d21mdE5BdlNyaFN2RkZMZzJ5ZFNpS284Q0ZTUndEVEg5WE9oNURIMytoRlRG?=
 =?utf-8?B?bVc5S3dxWDZqbDBER0Z0cGVLQnF5YVdPNEh0SStvYzBKbHozeEpzQ0F2cmtR?=
 =?utf-8?B?Y2V5UkNuNlRrU0dGekhBTlF2N0tBMk5KWDRnelNQWERSbU16ZGpCUys1T2Fu?=
 =?utf-8?B?SXJpQ0VQdlRHQitjOXN6M0xoQnBCRmZ4SmpHRFVGdTR5TlZBSlEvOXVuRXZ3?=
 =?utf-8?B?dEp5b05Nd0ZVMXg4TGlXaENmRmJybXlHU2FTeEJFVU1vU0JBK0hLQmFHQStV?=
 =?utf-8?B?N2JMTHY0RllDTVBLSjV6SXV6UlFTTGlBZHlhbkZmWTVRNVhWL0REL3AzVzA2?=
 =?utf-8?B?T0Y5OEtVZTRYbkt0eStJbHF3cDBqR1RZUW1iVXNqTlJDb1dFUGFkaE5wTEh3?=
 =?utf-8?B?WUNQREVQZkd4VnI3ajhmV0RpN21CZDJvTGRKSFc0blFrc2hCQnFqMDJ2VURZ?=
 =?utf-8?Q?rhnJtoJC50qtBzwanYeMHbY=3D?=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe1067e2-994a-4ffd-e512-08dbf7b7ebb1
X-MS-Exchange-CrossTenant-AuthSource: DM5PR0102MB3590.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 06:35:51.6135
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uuBi1yPFRe3O502SGz6JvL7SdvwtNkos9xqjsZfmM2mYnt85GndddageiLlnkWR1+iMMDes7vpH9EmLeLWK6UJ44ml3aagumKUMU1BclKHS+70Udp26ABC9YGhUYRfDh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR01MB6551

--1372433909-448154374-1702017350=:2428
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT


On Thu, 7 Dec 2023, Robin Murphy wrote:
> On 2023-12-06 11:43 pm, Ilkka Koskinen wrote:
>> 
>> Hi Robin,
>> 
>> On Tue, 5 Dec 2023, Robin Murphy wrote:
>>> Hook up devicetree probing support. For now let's hope that people
>>> implement PMIIDR properly and we don't need an override mechanism.
>>> 
>>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>>> ---
>>> drivers/perf/arm_cspmu/arm_cspmu.c | 71 +++++++++++++++++++++++-------
>>> 1 file changed, 56 insertions(+), 15 deletions(-)
>>> 
>>> diff --git a/drivers/perf/arm_cspmu/arm_cspmu.c 
>>> b/drivers/perf/arm_cspmu/arm_cspmu.c
>>> index b64de4d800c7..80b5fc417ee3 100644
>>> --- a/drivers/perf/arm_cspmu/arm_cspmu.c
>>> +++ b/drivers/perf/arm_cspmu/arm_cspmu.c
>>> @@ -27,6 +27,7 @@
>>> #include <linux/io-64-nonatomic-lo-hi.h>
>>> #include <linux/module.h>
>>> #include <linux/mutex.h>
>>> +#include <linux/of.h>
>>> #include <linux/perf_event.h>
>>> #include <linux/platform_device.h>
>>> 
>>> @@ -309,6 +310,10 @@ static const char *arm_cspmu_get_name(const struct 
>>> arm_cspmu *cspmu)
>>>     static atomic_t pmu_idx[ACPI_APMT_NODE_TYPE_COUNT] = { 0 };
>>> 
>>>     dev = cspmu->dev;
>>> +    if (!has_acpi_companion(dev))
>> 
>> Am I missing something since this doesn't work on top of v6.7-rc4?
>> The problem I see is that has_acpi_companion() calls is_acpi_device_node(), 
>> which compares whether
>>
>>      fwnode->ops == &acpi_device_fwnode_ops;
>> 
>> However, the acpi/apmt code allocates fwnode by calling
>> acpi_alloc_fwnode_static(), which assigns &acpi_static_fwnode_ops
>> to ops.
>
> Ah, I hadn't got as far as considering that has_acpi_companion() might only 
> work for namespace devices, but it makes sense now that you point it out. I 
> should have clarified that I don't have any suitable ACPI system to test this 
> on, and have only been able to verify basic DT probing on an FPGA.

Ok, no problem. I'm always happy to give them a spin as soon as I find a 
little time.

Cheers, Ilkka


>
>> I wonder though, if is_acpi_device_node() should check the static variant 
>> too? :/
>
> Thanks for the tip, I'll look into that and try to come up with something 
> that works for a v2 (at worst there's always the traditional assumption that 
> !dev->of_node implies ACPI)
>
> Cheers,
> Robin.
>
>> 
>> Cheers, Ilkka
>> 
>>> +        return devm_kasprintf(dev, GFP_KERNEL, PMUNAME "_%u",
>>> +                      atomic_fetch_inc(&pmu_idx[0]));
>>> +
>>>     apmt_node = arm_cspmu_apmt_node(dev);
>>>     pmu_type = apmt_node->type;
>>> 
>>> @@ -406,7 +411,6 @@ static struct arm_cspmu_impl_match 
>>> *arm_cspmu_impl_match_get(u32 pmiidr)
>>> static int arm_cspmu_init_impl_ops(struct arm_cspmu *cspmu)
>>> {
>>>     int ret = 0;
>>> -    struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(cspmu->dev);
>>>     struct arm_cspmu_impl_match *match;
>>> 
>>>     /* Start with a default PMU implementation */
>>> @@ -425,8 +429,12 @@ static int arm_cspmu_init_impl_ops(struct arm_cspmu 
>>> *cspmu)
>>>     };
>>> 
>>>     /* Firmware may override implementer/product ID from PMIIDR */
>>> -    if (apmt_node->impl_id)
>>> -        cspmu->impl.pmiidr = apmt_node->impl_id;
>>> +    if (has_acpi_companion(cspmu->dev)) {
>>> +        struct acpi_apmt_node *apmt_node = 
>>> arm_cspmu_apmt_node(cspmu->dev);
>>> +
>>> +        if (apmt_node->impl_id)
>>> +            cspmu->impl.pmiidr = apmt_node->impl_id;
>>> +    }
>>> 
>>>     /* Find implementer specific attribute ops. */
>>>     match = arm_cspmu_impl_match_get(cspmu->impl.pmiidr);
>>> @@ -928,7 +936,6 @@ static void arm_cspmu_read(struct perf_event *event)
>>> 
>>> static struct arm_cspmu *arm_cspmu_alloc(struct platform_device *pdev)
>>> {
>>> -    struct acpi_apmt_node *apmt_node;
>>>     struct arm_cspmu *cspmu;
>>>     struct device *dev = &pdev->dev;
>>> 
>>> @@ -939,8 +946,13 @@ static struct arm_cspmu *arm_cspmu_alloc(struct 
>>> platform_device *pdev)
>>>     cspmu->dev = dev;
>>>     platform_set_drvdata(pdev, cspmu);
>>> 
>>> -    apmt_node = arm_cspmu_apmt_node(dev);
>>> -    cspmu->has_atomic_dword = apmt_node->flags & ACPI_APMT_FLAGS_ATOMIC;
>>> +    if (has_acpi_companion(dev)) {
>>> +        struct acpi_apmt_node *apmt_node = arm_cspmu_apmt_node(dev);
>>> +
>>> +        cspmu->has_atomic_dword = apmt_node->flags & 
>>> ACPI_APMT_FLAGS_ATOMIC;
>>> +    } else {
>>> +        cspmu->has_atomic_dword = device_property_read_bool(dev, 
>>> "arm,64-bit-atomic");
>>> +    }
>>> 
>>>     return cspmu;
>>> }
>>> @@ -1133,11 +1145,6 @@ static int arm_cspmu_acpi_get_cpus(struct arm_cspmu 
>>> *cspmu)
>>>         }
>>>     }
>>> 
>>> -    if (cpumask_empty(&cspmu->associated_cpus)) {
>>> -        dev_dbg(cspmu->dev, "No cpu associated with the PMU\n");
>>> -        return -ENODEV;
>>> -    }
>>> -
>>>     return 0;
>>> }
>>> #else
>>> @@ -1147,9 +1154,36 @@ static int arm_cspmu_acpi_get_cpus(struct arm_cspmu 
>>> *cspmu)
>>> }
>>> #endif
>>> 
>>> +static int arm_cspmu_of_get_cpus(struct arm_cspmu *cspmu)
>>> +{
>>> +    struct of_phandle_iterator it;
>>> +    int ret, cpu;
>>> +
>>> +    of_for_each_phandle(&it, ret, cspmu->dev->of_node, "cpus", NULL, 0) {
>>> +        cpu = of_cpu_node_to_id(it.node);
>>> +        if (cpu < 0)
>>> +            continue;
>>> +        cpumask_set_cpu(cpu, &cspmu->associated_cpus);
>>> +    }
>>> +    return ret;
>>> +}
>>> +
>>> static int arm_cspmu_get_cpus(struct arm_cspmu *cspmu)
>>> {
>>> -    return arm_cspmu_acpi_get_cpus(cspmu);
>>> +    int ret = 0;
>>> +
>>> +    if (has_acpi_companion(cspmu->dev))
>>> +        ret = arm_cspmu_acpi_get_cpus(cspmu);
>>> +    else if (of_property_present(cspmu->dev->of_node, "cpus"))
>>> +        ret = arm_cspmu_of_get_cpus(cspmu);
>>> +    else
>>> +        cpumask_copy(&cspmu->associated_cpus, cpu_possible_mask);
>>> +
>>> +    if (!ret && cpumask_empty(&cspmu->associated_cpus)) {
>>> +        dev_dbg(cspmu->dev, "No cpu associated with the PMU\n");
>>> +        ret = -ENODEV;
>>> +    }
>>> +    return ret;
>>> }
>>> 
>>> static int arm_cspmu_register_pmu(struct arm_cspmu *cspmu)
>>> @@ -1246,11 +1280,18 @@ static const struct platform_device_id 
>>> arm_cspmu_id[] = {
>>> };
>>> MODULE_DEVICE_TABLE(platform, arm_cspmu_id);
>>> 
>>> +static const struct of_device_id arm_cspmu_of_match[] = {
>>> +    { .compatible = "arm,coresight-pmu" },
>>> +    {}
>>> +};
>>> +MODULE_DEVICE_TABLE(of, arm_cspmu_of_match);
>>> +
>>> static struct platform_driver arm_cspmu_driver = {
>>>     .driver = {
>>> -            .name = DRVNAME,
>>> -            .suppress_bind_attrs = true,
>>> -        },
>>> +        .name = DRVNAME,
>>> +        .of_match_table = arm_cspmu_of_match,
>>> +        .suppress_bind_attrs = true,
>>> +    },
>>>     .probe = arm_cspmu_device_probe,
>>>     .remove = arm_cspmu_device_remove,
>>>     .id_table = arm_cspmu_id,
>>> -- 
>>> 2.39.2.101.g768bb238c484.dirty
>>> 
>>> 
>
--1372433909-448154374-1702017350=:2428--

