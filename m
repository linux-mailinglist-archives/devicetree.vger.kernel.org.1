Return-Path: <devicetree+bounces-137894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EC2A0B029
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 08:40:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A7DD164064
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 07:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21910231A59;
	Mon, 13 Jan 2025 07:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="C3e+zYCI"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2067.outbound.protection.outlook.com [40.107.102.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5229914D29B;
	Mon, 13 Jan 2025 07:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.102.67
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736754025; cv=fail; b=TBIfwGsqmaulg2F0KtfWJV/bGqqrHQIY7DbrS0j768Qj4y2DX1cCmnqSmxlUmWZNdgRgrTbnB8a0bXXtlC8saxtrCfxGA87b71rQaze6oPfgBgNSGg2z6xRq2rT0CQTvKxW6iqLk6t18vb3xTli7Dquzsgw7VbNrm5zi5V6yaxI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736754025; c=relaxed/simple;
	bh=jUhMDTdUH36Y9gvCCM1X1VTUzgPj2mzjoAXJz2Rxzzg=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=p80fvSVAdleXosHMnWrSzBPszwVjDf17TQxoz4dth9bfmFjPpJkd+qfGkr+P/EB2ZFz0uQtLX71oKcDs4qdKl5Mr8Tiu+GMlDNNWB8ZCGDdTGO1n/t+4pMRO2YY+i8j8QKSkVarkAGtWBIeYXd7kQ51R0H2yZs44s+nmXtuf4Iw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=C3e+zYCI; arc=fail smtp.client-ip=40.107.102.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kF6AVyakpfplZwV5rvgRq0G9NMy8JUXRwAre1qfvZFizsAPnGvtbQBcLHbIihSPbnk3DunMKIstxipLMHSp+rAUI0SMD8kyc4Ff4uRED2ea4NoF4ar44CpNvrEHoCZUz+seUDqEQUM1f4pN01vGSpQc4XfD8lLB5QNffJoNXkpr+pQY1XZlD9R+hWBGwL8gYU/Rx90c8bzlUVYH98iGkjpZal+EdQwK43iM0xXtMCWnFg0MCkfgAV06U2GLH1xWYc5l/hO0BjdPyRQ42gxYtSwsg4x0TTD/Tn1L+hwU5zcTbPSER2UeG3GI3TXHEKPWb1LtGcSpjWRREOgaqm8EeFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jUhMDTdUH36Y9gvCCM1X1VTUzgPj2mzjoAXJz2Rxzzg=;
 b=laMmPbNbObZ52M9BH3KC3EUHE6pcQ19ktvZ6XqAnzBWRkuxqCFP+s477Hc4ZCKheYEHulxDXITMfBpqbNc551lSpsplH3RhARE47yUxi+5QGJH4WjbicVg1ydocNVZG0kiPxoYbEetJh3cmzjzWto0E76fMO2HyGTDkPn6OVH+8IqWCqdvg7pDuih77jlHEvOm5mUTMmhNj4nJAekKO5YssLGCv36gDscKGGGtAjsikhtKoHuiqJN7zzEfQi5TUYlW0KuD/O1mPtoCgDmlHoM6dAgnr1XeOcrpkqD/Z/pR5s2u/9xDQwyrPgNWKhFQo+uMRzd3paFoRG+dOzUo/bCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microchip.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jUhMDTdUH36Y9gvCCM1X1VTUzgPj2mzjoAXJz2Rxzzg=;
 b=C3e+zYCIX5kcvmN2nmWdmE0/c7XiOrcIEnrpzTAzgv/SvyZsr8esxLJ9ZqjfttlIGKTSpwIkrKUCBmwk9RZAbyYi5L2nIfozmVh6N1VnNXA0ueh927ppPYzs9VKyMOVZAzAcF3DBEHVJA51CNFo4zbGJaRhv6C59JgGXClzjFz9OrSw5jqQqpwdewI29VbRJvOmmd4RqH6t0RvYh6BhquKJ3/evLsSsdqcEC7HOZGkSYNfbP2BRcwCY9DcgDDqlrNM8P4dOr/VhAgE16vKcRP4AjW/w4ACBbITPOfuu3w2KKJjtBLYSVaxrTDGtse1KnRRwNONAOkwMulcUaP3H1lA==
Received: from PH8PR11MB6804.namprd11.prod.outlook.com (2603:10b6:510:1bc::6)
 by IA1PR11MB7755.namprd11.prod.outlook.com (2603:10b6:208:420::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 07:40:19 +0000
Received: from PH8PR11MB6804.namprd11.prod.outlook.com
 ([fe80::6f39:a4f:9001:ea75]) by PH8PR11MB6804.namprd11.prod.outlook.com
 ([fe80::6f39:a4f:9001:ea75%5]) with mapi id 15.20.8335.015; Mon, 13 Jan 2025
 07:40:19 +0000
From: <Mihai.Sain@microchip.com>
To: <Andrei.Simion@microchip.com>, <Nicolas.Ferre@microchip.com>,
	<claudiu.beznea@tuxon.dev>, <alexandre.belloni@bootlin.com>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ARM: dts: microchip: at91-sam9x75_curiosity: Add PMIC
 suspend voltage configuration
Thread-Topic: [PATCH] ARM: dts: microchip: at91-sam9x75_curiosity: Add PMIC
 suspend voltage configuration
Thread-Index: AQIfgTmJ40zhVupGviyyAU4NO2y5cLKMGLnA
Date: Mon, 13 Jan 2025 07:40:19 +0000
Message-ID:
 <PH8PR11MB680425CC7A20E75C063DFCE7821F2@PH8PR11MB6804.namprd11.prod.outlook.com>
References: <20250113071710.40821-1-andrei.simion@microchip.com>
In-Reply-To: <20250113071710.40821-1-andrei.simion@microchip.com>
Accept-Language: en-GB, en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6804:EE_|IA1PR11MB7755:EE_
x-ms-office365-filtering-correlation-id: 6a2a7a0a-8c1c-4bcf-351a-08dd33a587c7
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH8PR11MB6804.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info:
 =?utf-8?B?VEpkZndKazZrajhsOVlBZkE1Zi80NWVDY0ppekw3UWJRQ3pqdnRkTEpxSkpB?=
 =?utf-8?B?NENDT3ZGaVRTbXBra0xBb1NTRkNHVzRlN29QM25QZVhHeUE4SjNyYnlRQXNR?=
 =?utf-8?B?OHFDUnUycW91aGIyK2ZNVUhwQVZOSThxcGQ0MDdzKzhOS3BtN3VYRytoZS9B?=
 =?utf-8?B?a0RJYXRRNHMwa2xWb09DanNSZkFVL2NXZHQ4NjJrbVRwdHFTWU1NbEpPWmsz?=
 =?utf-8?B?b1prUUxTSEtwMGhMNzZhTWMwREZjcC9hM2llaE5QTVZ0aVJXUms3UFlwVVB0?=
 =?utf-8?B?QVg0VEM1NWIzNGZJRlNUeWk2aWo0NnhWVnVVbndTaDg2SlJCRjV5bDJacm1i?=
 =?utf-8?B?Sm1IL2d0bzhmNXZxZ1VLZHFTN1o3bWZxeDkrUmFPc2RSekU4SFIvWTJjVHBl?=
 =?utf-8?B?VGJYV2pNRHlXeHkrMkQzRTBGMTZyVm5MTS9BTHpJL2Q3QTR4Z3VYSEtzZmpt?=
 =?utf-8?B?Vlo4RWZNcWpWQkZ0NVQxRzJORmFQVkNsRk8ydFVXbkdMRWlKODNIYktWTi9n?=
 =?utf-8?B?YzJiZWRkUUsvWnllMEVTVk5RYklia0h3Q0QxMVpMSFExYkpDREJwZ2hHblR6?=
 =?utf-8?B?VS92YkYyWGk0TEdkOE9uQWNJcjgwMGdrS0l5Z0FGSWFjQlVwamFwaXpPM0hv?=
 =?utf-8?B?YUFQS1FoMHFKUi92WEFadmw0RmprdVVuL1oxL0ZHSW5ZZ2NuTnhuOWE5aVlT?=
 =?utf-8?B?TW11eWE4eTNCbHJrTUpsN3JoVUFSak9MSTVpWmZ5TUd1Tzg0L3J3N2crNlBP?=
 =?utf-8?B?RUczbitZT0xMVGlyeVF2cTQ3dzBSV0FhSyt1YVdvbFRWcDB5NXVCeFI4K2Fm?=
 =?utf-8?B?TVNEMDJWanpVci9ocWYrTUF1S1FQV0NKdXJGVG5iZTZTQm42MlpFVFVkc09W?=
 =?utf-8?B?NytmV3lsa2ZaaEhtR29xTldvbi9UUXBDa0grU2hTMVNlVFh2RUkrZ2Q1VjZC?=
 =?utf-8?B?ZXFYVUVFOWkwbEpnVEJkbFVhdS8rMnRpS3ptOGJsZStyOExVajNkL1RlNU9n?=
 =?utf-8?B?aXV0QzdEbXhXU0xhL1E0UTU1NWtRRUNJaFkvYmZaZmp0eTQrOVJmMnNzdHhF?=
 =?utf-8?B?anB6d3RQY1RWUW9adlovemVnd2NodXRXZmM3TC9LQVNvZnlaR085ZWlnMUx5?=
 =?utf-8?B?VC9BcXkrRUxoUkxQQWIweTh1T2szK25NTGw4dXlBbHNzUDVmLy9MR1RiRmVx?=
 =?utf-8?B?c1FzVjZnRmo5RlJqN05RemtMU2lGNEREZm0vOFVsT2dmQzBUSjF0WUhhcmhk?=
 =?utf-8?B?enZqTEhMNVN6amZVaVMrTFB5RHVYU3VmdjZ4ZE1FaWRPclZhbUl5bDFUaGJW?=
 =?utf-8?B?dHlpcmpENzR4RHBkTzloUS9vTDVHa1BnK3plOVg1eFdRb21mSEp6S1pKL2JE?=
 =?utf-8?B?RDdJbnl2a05iSUZLQVhNYk5CdHhGVVZ0bnFGQVZpMWNFcDFVSnRoNHA2N3cw?=
 =?utf-8?B?ZFl4cTdJckhRS3d1NFZtcXBhWlVhSFo5bDk2YUtIeFh3UEdRMkVzUVB2dmk1?=
 =?utf-8?B?bDlFKzhKVmV3TWM3VUx2V1h1QVVmYWVrZ05Kbk5IZG5nYkF4ZjNnbHFkWXNQ?=
 =?utf-8?B?MnpnVjQ3U252elF2andWWG5LZFVuWEJyZzdOTGI5LzlvaWZ0VUZFMTdFUzN2?=
 =?utf-8?B?M21KQ0xkMUlzNW5yUE4xM3NRMG1hV3B4NCsrY3E1cm9zMUFlMmxQTnBvUk5U?=
 =?utf-8?B?K3g4dkY5SnRuQ0RTdis0Z0lKWHRRSlkvN0VQVDhKeTR0bkNIdEpUVUJTS1kv?=
 =?utf-8?B?WHRPUFBEeFVzZlZzNll4Qis0MHZCWmx0YVZFaXIvQmxuNlhTQ2VqdWVsVnpT?=
 =?utf-8?B?eUVtMmpVYU5QS2QyN2FQemF1VXQ0djJ3akFRN29XdFpnN1Rtdkw2all4UUF6?=
 =?utf-8?B?eHVKQXRUem9FRE12UFgveHhhaWdmT0U5OHlXUDFxYXpiQUZuRGw3QVZnNWdp?=
 =?utf-8?Q?uktTUQv9e9kCIaVPuJSzqXEuM55AuLYV?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?NGxodkNhbkt3SUkxT3BPSVpJa3lxMUpkS2toM3czelRpaGJSMTJ5Y2pDMHAy?=
 =?utf-8?B?S000a3pQd1JJbVA1cUY1WWNJeVVlMGVxTHRRMnRFbUpxMnp3OHl4UkpPT05C?=
 =?utf-8?B?WUxQdktVaEN1YjJyU3lhekVhTnM0SEQ4bjN1bnBodW52VkNOTC8raXk3NmhV?=
 =?utf-8?B?eGdmV3E5ejJTNUhzQTFsdVhhRlp3TDJQNTZEc3JaWmtueHFZRlc5QUxkenlx?=
 =?utf-8?B?bFBUTWF2VlFEUXJtUnpaUjViSU5xaXJ3QXVBYWxuMEN3dEdYU2xXa1Fqcm1u?=
 =?utf-8?B?WVVwalhMbmpIMTRKc1N5MDcrVkdnSXg5Q2RkanVmeUM3dUhRM0M3K0ZOd3dL?=
 =?utf-8?B?aVR3aHNYdzZGeUc2MFpHZkROMHNxVlZQL2E1V3lvcUFlWllTa20ya2tYZDJQ?=
 =?utf-8?B?enR3dm5UMWtsdnJQYVg1QjJoQ0ZhL1dKTE5NaUVzUTZGaFI0bi9tOU5tczkx?=
 =?utf-8?B?c1ZNNUkyRm5JMTBnSGtncFloVjJYOXN3dTdhRnV4WFZRUlEvNGFhMnlEYTh2?=
 =?utf-8?B?MmU5U01zbWN5Nmtjb0xnWGxtbFZkUEhZc1JtVjhLejJVQWN5V2RpOFFlQ2hH?=
 =?utf-8?B?MmErNmNNUmh4NHpzSkhIQTNXTjdGV2pNaERabW5yV0VrK2w4SUdqelg4NjVQ?=
 =?utf-8?B?K3drZ2pkeVdTc2NRUnlSNjk2UkNUTDB4TGVHUE5GeXh6b1RpdUNIR2xCdXFx?=
 =?utf-8?B?SExVVGxGa25ZRnVkYVFzLzN5MUVaRGxMOUQrU1ZMWDdOOEF5Mm5MTHFEak9l?=
 =?utf-8?B?Z2kvY3V1eGI5M3UxWG5meGhCOHNabWYwOGE2dTJBMHM4Y3VIdFEwaEFNaEpm?=
 =?utf-8?B?aFovVEpYSmU3cGpqeUYyQ0dBQk1URC9GZk1vMXZhd08xQWVTM0JlNmtubktZ?=
 =?utf-8?B?NW8wY2dVYmZzeWxWY2kvT25iZFhTZmJrRlJlU3pEZ1ZPcUFaemRTN1VPNWpN?=
 =?utf-8?B?d0VwNGlya3lubzFEWDJWdTdQV1RqU1FlNXRVdFU4WEtKdEpuMzhHNHh4U0Yv?=
 =?utf-8?B?a1hZZFUrM2dDa0hkcWluRjk5RWcvR1lEVlNkT0F0UGVmR0ZBdHVTci8yT0lX?=
 =?utf-8?B?K0hNMVZPMjV5cVYwSTZGcU9YT2MzQnJYb3pycGxGaVBPTXo3b2dVUytsNmdz?=
 =?utf-8?B?TVJUQ0FsUlc1VjRQSDhXalowdUdjcGFyVTE0VzVMWE42T2dTaUVoNE9SQVJr?=
 =?utf-8?B?QTc5eXNpLzBLLzd4UzhiTFF2R0thZGxBdkZrSm55LzB2MFJuNUZjR1BiTkFY?=
 =?utf-8?B?TVJ2OGtMMVhkRkE3TmJ3andrekREMXNvUThiL2s0am1RZ1U3MXlBV3RTeis0?=
 =?utf-8?B?QVp2dU8rNVZsenkxVFN5QXd4OTJyVHJ1M0poQXFZbnRhdDh6Q2szQmo0Uklo?=
 =?utf-8?B?UDZibTJzYkFIci9MWlJBcE5mWWJvYmp4S3RjNnJ5TDhMNUU2TXNrSm1MdHJB?=
 =?utf-8?B?MldqZFJOMTJlSWM3bndzMXd4YlFFRDdEdzVkVHJVNmlMNVZpNFlBZUNud09r?=
 =?utf-8?B?bjZMOWJPSTNqNHFoWnlCRTNzZGlTVHNlVGNVOWFKK2hTZW5hYWFRVjUxQjFk?=
 =?utf-8?B?b3EwZVZIZm9qaElxaWxqMGRJSUxrdGpheXRnMXZuc1RmOGh4a0g0eC9LbmY3?=
 =?utf-8?B?UTN2OTNUU3lKeENuUG1wcTloUkMvVUZyeVZjZFJRcXJScWRYNWFMMDdDb0xQ?=
 =?utf-8?B?cEU0ZkdFTEZDdzRhNjhDZitiaDB5TjJUemJXSy9XM2tPODZzTHFvbzJ2dlFn?=
 =?utf-8?B?MkNTaU1rQjZpdExRd29ydHFBRmhvSXh6akxmMWN4aGhtVFhnbnUwTlhmTndG?=
 =?utf-8?B?Z0xOUHNMZDBUdWhYVEQ4dXBaNVZwRFFlOGxRbVd4WUFUdFJrbWg3M0FjcStN?=
 =?utf-8?B?UytZSDNDWUIxTkpEMHgwLzR2dnZMZVRJS2JvNGJjc2VHYklaVC84dUR5WWMy?=
 =?utf-8?B?N1BaNjB3K1p5WUpFbzFuRE5YOW83eWRnVmNNUXl1YVUwdmgvSStFcWlBREo1?=
 =?utf-8?B?eDdNVm8vamV4NDhwOExBa2owd2t0Ujd1T3RxOHdHU0YwYWU4dXlvTmpwZUhz?=
 =?utf-8?B?eUEwTy9tc2lGUVJhNUlXTDFLS0NtQzRTWkpkSkZNcW92YitDMDRDTTZwUFJx?=
 =?utf-8?Q?sJj0UPHwnQi4JgtTP+YCO9dM5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: microchip.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6804.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a2a7a0a-8c1c-4bcf-351a-08dd33a587c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2025 07:40:19.6651
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /3i365NjhF+dHY8cK0F9k9LypiQHUtr79hpVMGfGQHJoEEvnxeoAFQKYHbJTFcvVLhkxUn1Raoy7wZzTuMJC1Cf3WzUMVFp/RdnsAYlRL28=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7755

PiBBZGQgbWlzc2luZyBlc3NlbnRpYWwgY29uZmlndXJhdGlvbiBmb3IgdGhlIFBNSUMgcmFpbHMs
IHdoaWNoIGlzIG5lY2Vzc2FyeSBmb3INCj4gcHJvcGVyIGxvdy1wb3dlciBtb2RlIG9wZXJhdGlv
bi4gVGhpcyBwYXRjaCBhZGRzIHRoZSByZXF1aXJlZCBzZXR0aW5ncyB0bw0KPiBlbnN1cmUgdGhh
dCB0aGUgcmVndWxhdG9ycyBiZWhhdmUgY29ycmVjdGx5IGR1cmluZyBTdXNwZW5kLXRvLVJBTSBh
bmQgU3RhbmRieQ0KPiBzdGF0ZXMuIE90aGVyd2lzZSwgYWZ0ZXIgcmVzdW1pbmcsIGl0IHJlY2Vp
dmVzOiAiTm8gY29uZmlndXJhdGlvbiINCj4gbWVzc2FnZS4NCj4gDQo+IE91ciBkcml2ZXIgaW1w
bGVtZW50cyB0aGUgc2V0X3N1c3BlbmRfdm9sdGFnZSBhbmQgc2V0X3N1c3BlbmRfbW9kZSBjYWxs
YmFja3MsDQo+IHdoaWNoIHJlcXVpcmUgdGhlIGByZWd1bGF0b3Itc3VzcGVuZC1taWNyb3ZvbHRg
IHByb3BlcnR5IHRvIGJlIHNwZWNpZmllZCBpbiB0aGUNCj4gZGV2aWNlIHRyZWUgZm9yIGVhY2gg
cmVndWxhdG9yIG5vZGUuIFRoaXMgcHJvcGVydHkgZGVmaW5lcyB0aGUgdm9sdGFnZSBsZXZlbA0K
PiB0aGF0IHRoZSByZWd1bGF0b3Igc2hvdWxkIG1haW50YWluIGR1cmluZyBzdXNwZW5kIG1vZGUu
DQo+IA0KPiBBZGRpdGlvbmFsbHksIGFjY29yZGluZyB0byB0aGUgZGF0YXNoZWV0LCBzb21lIHJl
Z3VsYXRvcnMgbmVlZCB0byBiZSB0dXJuZWQgb24NCj4gb3Igb2ZmIGR1cmluZyBzdXNwZW5kIG1v
ZGUuIFRoaXMgcGF0Y2ggYWRkcmVzc2VzIHRoZXNlIHJlcXVpcmVtZW50cyBieSBhZGRpbmcNCj4g
dGhlIGByZWd1bGF0b3Itb24taW4tc3VzcGVuZGAgYW5kIGByZWd1bGF0b3Itb2ZmLWluLXN1c3Bl
bmRgIHByb3BlcnRpZXMgd2hlcmUNCj4gYXBwcm9wcmlhdGUuDQo+IA0KPiBGaXhlczogMzcxYTQ3
YzlhNThhICgiQVJNOiBkdHM6IG1pY3JvY2hpcDogc2FtOXg3NV9jdXJpb3NpdHk6IGFkZCBzYW05
eDc1DQo+IGN1cmlvc2l0eSBib2FyZCIpDQo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlaSBTaW1pb24g
PGFuZHJlaS5zaW1pb25AbWljcm9jaGlwLmNvbT4NCg0KSGkgQW5kcmVpLA0KDQpUZXN0ZWQtYnk6
IE1paGFpIFNhaW4gPG1paGFpLnNhaW5AbWljcm9jaGlwLmNvbT4NCg0KQmVzdCByZWdhcmRzLA0K
TWloYWkgU2Fpbg0KDQo+IC0tLQ0KPiAgLi4uL2R0cy9taWNyb2NoaXAvYXQ5MS1zYW05eDc1X2N1
cmlvc2l0eS5kdHMgICB8IDE4ICsrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQs
IDE4IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9t
aWNyb2NoaXAvYXQ5MS1zYW05eDc1X2N1cmlvc2l0eS5kdHMNCj4gYi9hcmNoL2FybS9ib290L2R0
cy9taWNyb2NoaXAvYXQ5MS1zYW05eDc1X2N1cmlvc2l0eS5kdHMNCj4gaW5kZXggMWE2YTkwOWE1
MDQzLi41NTE0YWQxMGNkYTUgMTAwNjQ0DQo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL21pY3Jv
Y2hpcC9hdDkxLXNhbTl4NzVfY3VyaW9zaXR5LmR0cw0KPiArKysgYi9hcmNoL2FybS9ib290L2R0
cy9taWNyb2NoaXAvYXQ5MS1zYW05eDc1X2N1cmlvc2l0eS5kdHMNCj4gQEAgLTExMCwxMCArMTEw
LDEyIEBAIHZkZF8zdjM6IFZERF9JTyB7DQo+IA0KPiAgCQkJCXJlZ3VsYXRvci1zdGF0ZS1zdGFu
ZGJ5IHsNCj4gIAkJCQkJcmVndWxhdG9yLW9uLWluLXN1c3BlbmQ7DQo+ICsJCQkJCXJlZ3VsYXRv
ci1zdXNwZW5kLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsNCj4gIAkJCQkJcmVndWxhdG9yLW1vZGUg
PSA8ND47DQo+ICAJCQkJfTsNCj4gDQo+ICAJCQkJcmVndWxhdG9yLXN0YXRlLW1lbSB7DQo+ICsJ
CQkJCXJlZ3VsYXRvci1vZmYtaW4tc3VzcGVuZDsNCj4gIAkJCQkJcmVndWxhdG9yLW1vZGUgPSA8
ND47DQo+ICAJCQkJfTsNCj4gIAkJCX07DQo+IEBAIC0xMjgsMTEgKzEzMCwxMyBAQCB2ZGRpb2Rk
cjogVkREX0REUiB7DQo+IA0KPiAgCQkJCXJlZ3VsYXRvci1zdGF0ZS1zdGFuZGJ5IHsNCj4gIAkJ
CQkJcmVndWxhdG9yLW9uLWluLXN1c3BlbmQ7DQo+ICsJCQkJCXJlZ3VsYXRvci1zdXNwZW5kLW1p
Y3Jvdm9sdCA9IDwxMzUwMDAwPjsNCj4gIAkJCQkJcmVndWxhdG9yLW1vZGUgPSA8ND47DQo+ICAJ
CQkJfTsNCj4gDQo+ICAJCQkJcmVndWxhdG9yLXN0YXRlLW1lbSB7DQo+ICAJCQkJCXJlZ3VsYXRv
ci1vbi1pbi1zdXNwZW5kOw0KPiArCQkJCQlyZWd1bGF0b3Itc3VzcGVuZC1taWNyb3ZvbHQgPSA8
MTM1MDAwMD47DQo+ICAJCQkJCXJlZ3VsYXRvci1tb2RlID0gPDQ+Ow0KPiAgCQkJCX07DQo+ICAJ
CQl9Ow0KPiBAQCAtMTQ3LDEwICsxNTEsMTIgQEAgdmRkY29yZTogVkREX0NPUkUgew0KPiANCj4g
IAkJCQlyZWd1bGF0b3Itc3RhdGUtc3RhbmRieSB7DQo+ICAJCQkJCXJlZ3VsYXRvci1vbi1pbi1z
dXNwZW5kOw0KPiArCQkJCQlyZWd1bGF0b3Itc3VzcGVuZC1taWNyb3ZvbHQgPSA8MTE1MDAwMD47
DQo+ICAJCQkJCXJlZ3VsYXRvci1tb2RlID0gPDQ+Ow0KPiAgCQkJCX07DQo+IA0KPiAgCQkJCXJl
Z3VsYXRvci1zdGF0ZS1tZW0gew0KPiArCQkJCQlyZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7DQo+
ICAJCQkJCXJlZ3VsYXRvci1tb2RlID0gPDQ+Ow0KPiAgCQkJCX07DQo+ICAJCQl9Ow0KPiBAQCAt
MTY2LDEwICsxNzIsMTIgQEAgZGNkYzQ6IFZERF9PVEhFUiB7DQo+IA0KPiAgCQkJCXJlZ3VsYXRv
ci1zdGF0ZS1zdGFuZGJ5IHsNCj4gIAkJCQkJcmVndWxhdG9yLW9uLWluLXN1c3BlbmQ7DQo+ICsJ
CQkJCXJlZ3VsYXRvci1zdXNwZW5kLW1pY3Jvdm9sdCA9IDwxMTUwMDAwPjsNCj4gIAkJCQkJcmVn
dWxhdG9yLW1vZGUgPSA8ND47DQo+ICAJCQkJfTsNCj4gDQo+ICAJCQkJcmVndWxhdG9yLXN0YXRl
LW1lbSB7DQo+ICsJCQkJCXJlZ3VsYXRvci1vZmYtaW4tc3VzcGVuZDsNCj4gIAkJCQkJcmVndWxh
dG9yLW1vZGUgPSA8ND47DQo+ICAJCQkJfTsNCj4gIAkJCX07DQo+IEBAIC0xODIsNiArMTkwLDEx
IEBAIHZsZG8xOiBMRE8xIHsNCj4gDQo+ICAJCQkJcmVndWxhdG9yLXN0YXRlLXN0YW5kYnkgew0K
PiAgCQkJCQlyZWd1bGF0b3Itb24taW4tc3VzcGVuZDsNCj4gKwkJCQkJcmVndWxhdG9yLXN1c3Bl
bmQtbWljcm92b2x0ID0gPDMzMDAwMDA+Ow0KPiArCQkJCX07DQo+ICsNCj4gKwkJCQlyZWd1bGF0
b3Itc3RhdGUtbWVtIHsNCj4gKwkJCQkJcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5kOw0KPiAgCQkJ
CX07DQo+ICAJCQl9Ow0KPiANCj4gQEAgLTE5Miw2ICsyMDUsMTEgQEAgdmxkbzI6IExETzIgew0K
PiANCj4gIAkJCQlyZWd1bGF0b3Itc3RhdGUtc3RhbmRieSB7DQo+ICAJCQkJCXJlZ3VsYXRvci1v
bi1pbi1zdXNwZW5kOw0KPiArCQkJCQlyZWd1bGF0b3Itc3VzcGVuZC1taWNyb3ZvbHQgPSA8MTgw
MDAwMD47DQo+ICsJCQkJfTsNCj4gKw0KPiArCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gew0KPiAr
CQkJCQlyZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7DQo+ICAJCQkJfTsNCj4gIAkJCX07DQo+ICAJ
CX07DQo+IA0KPiBiYXNlLWNvbW1pdDogMzcxMzZiZjVjM2E2ZjZiNjg2ZDc0ZjQxODM3YTY0MDZi
ZWM2YjdiYw0KPiAtLQ0KPiAyLjM0LjENCj4gDQoNCg==

