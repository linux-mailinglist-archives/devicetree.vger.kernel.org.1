Return-Path: <devicetree+bounces-69931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 308678D1F53
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 16:55:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8DC90B21822
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A22361E891;
	Tue, 28 May 2024 14:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="Qn2eqjRD"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2080.outbound.protection.outlook.com [40.107.223.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AD379F6
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 14:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.223.80
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716908128; cv=fail; b=YMbQsu/NF1tFEIYFnnAotIQXyV4L9wcEsV5d56M5JuG6QagKFLoUcaWgVOHLeaQUdegjbMDelEJyNB5Igr91CdTE6snpKiUjc5HfrfHfu87RGJ4GyT6xQPE+YrYy88OZSRv3MlcS7NbAih4mEqeBEa+wQqnafB/k9+5UvaZ1XUg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716908128; c=relaxed/simple;
	bh=W7PGNpTteahcCkPJyBJi4a7qlAimrlAyg38sYvH91HY=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=DQ2AtXvkXhJQA7TkObxwBJteCs3dH7C3lVAYJXWKe8WQhUjYfVbFYQFLPT25YxJ59Imr74zwWrG1lM9BMffadCfUS3kqVT0pW1QBzsi4x6TKmxWMvb5MNqllXizpyfY5rAMSPyI4CFKcGelZsJLiBBu27AKxwzhjD5uKPtUwn10=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=Qn2eqjRD; arc=fail smtp.client-ip=40.107.223.80
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ODfe1SUX//9C7/0c5QdcO8dPgg+te2FurJyxVPT4OCzngUzSX3pI6tvAahyOBLTJ+flvhG4MiwC2Gu7lDQC8ceqFWLH2rXKQmBcjrA1ZHuymmzdr1TpyOuUUKPYaHXHmtHnYjK27hPC7HWYHOOpaDZyx9nzzPR3djvuc2Xag7kBWIW+rHACBgKVvV9sN/MP1/JPBtFRgJZZv/RPvjhsNSiUSuGeRsUJ0t8C/movkTPR2ujf2PJvIEd7SDDDkqfa7ffi8ODBE6NvAftqlywf3DFtGiVcai2Gd+HIk943fcayDmA+jAGmtBJxHwHzQuKxYlJOpdjo98GPdZ7b/bfuqBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hpCqECqrjW2YpzUO9BzCIWNnpnTi9fbt8zft54TkfeA=;
 b=j5xhK3jkaseiEHrtBiP7SCbEzv12ciDYhuHK3GAzLIg4mQ/rObowX9GAfKuvaIBOBxTE8j/a6x/YMdv++vUHZSFBnHRJxI/hvwXEcbslHT74gkGQO2zi/+1CYC+02XCrGDOkOCngArL33RSiRoKfvfOmvoi4MIQ4Yip7OlWjON2NxLq9Gz/glMnJXQCLUcYVR+OS5hMpCtwGiPLaiq8aaV1pvpqz5dIP2eeTfBUag6QqpSjZRcDhtINs/b6l5dh/pIEXnmeV8oV5afD1t8Wtp1mOLPHrBypUDghbmoXjyMMclT8i74eSbRdwVIzsdtnv63M3uC7jo8cXVOnlhXunSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hpCqECqrjW2YpzUO9BzCIWNnpnTi9fbt8zft54TkfeA=;
 b=Qn2eqjRDpPzMj9lCFj/LX+MIQm2PMeq+NueWADgorXuyohlHb0F7CZjzWpoIIQCxQ8iewtC03NyvwZKvaGVWRzC0CN0TSEoxYTL+os5P2Rja8Ovk+iXQJpqUOo6aGaL/WbmhE08k2hQ7ewWvPxCB4jsaNG41BpJhzENowTkkOrs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from SJ2PR12MB8109.namprd12.prod.outlook.com (2603:10b6:a03:4f5::8)
 by SJ2PR12MB7943.namprd12.prod.outlook.com (2603:10b6:a03:4c8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 14:55:22 +0000
Received: from SJ2PR12MB8109.namprd12.prod.outlook.com
 ([fe80::7f35:efe7:5e82:5e30]) by SJ2PR12MB8109.namprd12.prod.outlook.com
 ([fe80::7f35:efe7:5e82:5e30%6]) with mapi id 15.20.7611.016; Tue, 28 May 2024
 14:55:22 +0000
Message-ID: <966af5a2-3960-4000-960a-e15a19f1cf76@amd.com>
Date: Tue, 28 May 2024 16:55:10 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] arm64: zynqmp: fix CHECK_DTBS warnings
To: Michael Tretter <m.tretter@pengutronix.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel@pengutronix.de
References: <20240528-zynqmp-dt-v1-0-a5db9054885a@pengutronix.de>
Content-Language: en-US
From: Michal Simek <michal.simek@amd.com>
Autocrypt: addr=michal.simek@amd.com; keydata=
 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
 3i3l5DA=
In-Reply-To: <20240528-zynqmp-dt-v1-0-a5db9054885a@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0220.eurprd08.prod.outlook.com
 (2603:10a6:802:15::29) To SJ2PR12MB8109.namprd12.prod.outlook.com
 (2603:10b6:a03:4f5::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR12MB8109:EE_|SJ2PR12MB7943:EE_
X-MS-Office365-Filtering-Correlation-Id: 34d6af59-5f19-4292-0ecc-08dc7f2632e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?SytibmtCc0hKV2VqOUNyZUpuazJiSVlLZnBVUmdHL2pCOXNabFc3aVpLRGJ3?=
 =?utf-8?B?clM3RmZ6VXJQMEFDazdsWU0zaWsvMkRiTFRtdVhuNVkwZFFrc09jWDNxVWJ6?=
 =?utf-8?B?VmFXVUUyOGYzblRsTC9SN1RPQlFtNVB3ekIyaEdnUElOb0RhRVZMS0ZkNCsr?=
 =?utf-8?B?c1BVUnFFbHlML1Z1c2VZdExmZTNvZFhxS1hNL0M0dE5sZ2Ercko0NE5SZXRV?=
 =?utf-8?B?S0pJcDFlTVRyRDk2TXRBY3kvSEo2NHdMTTBEUGJ5M0pKMkZWYkNDblpXa2hX?=
 =?utf-8?B?QmNzQ2plUGRJZXM1T2pqNmdBbmNlR0lna29FZDFJS21YdEQ1ekdXdTZkSTRH?=
 =?utf-8?B?cjd5VC9MdEZ4Wm5oYmZ1WXpqN2UxVjJhZDFTb3NocWJNaEhWZkpCWXEwRTdP?=
 =?utf-8?B?bGFLaXZlcmkvN0RYZVVkQnpjakRrdWdsTEo0emhhRFhyTU9ITGRVUEYzVVJj?=
 =?utf-8?B?QWh4MEYyRGUwbS8yamR2c3ExR214RnlhUzBEVzd0c1dUQ2IyWmY2V0t5dUFK?=
 =?utf-8?B?R2x1bzRDMFJBandBTjc3ZmY0aHo3dDRFODdaTndnZlBRSmE0SzUvMDJiOFhC?=
 =?utf-8?B?Tk45a0lLWWxocTFMc2VPcWtLUC9xTXk0eDNELytpQmQ1SFdqVFJYZFlscXZE?=
 =?utf-8?B?b3RhUXRKWHRzVDI5cEsvT2VGQW5nUWFJUDY2TjA3NGw4MnZsdU92ZHdqSzFL?=
 =?utf-8?B?ckFsUGcyTjRCNEs2QVhHdWVWZkJWVHlLWTFjbkJSZEt5NVY3cExqR1lmdkVP?=
 =?utf-8?B?TGZQRVJYOFFKcmxsblIvWU8vYmN4RWVVQ1NkVktmN2UyR2FHTkZzRHozd2Ji?=
 =?utf-8?B?MWFEbGxNMVRZdFRjM3FGcGU3VmUweDJpSWdwUWVKbWV2Sk81OWcyT2pyTHlk?=
 =?utf-8?B?cFBKQ0tKMHpNMlUzc3pIdTBjRDNQalkwTlluZE9jWDRXd1o0M1o0M0FpMERI?=
 =?utf-8?B?UFV1SWVqYUdUdnZlenhZKzJPbk1mclZuN0srVTVRL0s0b0RoTXdGMmpyc1Bo?=
 =?utf-8?B?YWlIWC9LQ0lCdkxSYjZkZElsTjJMNERKMDNxdkpDbmxDRDROS2FDUGNlL1V1?=
 =?utf-8?B?RUovSnpvR1JIc2dBMFRpNmNMb1lqaWlCaVFrMEpvSHBXWkhWWEl1SGpabDBt?=
 =?utf-8?B?MkMwTzlta3crZzRwRjF4TktERXRiQWJxZnRRTHhxNFlVWmppdDZPUSs0cjlX?=
 =?utf-8?B?RndVUE5vUlhySEtEQ1ZSVVJNb0ZZcEE1dUNkR3E0bGJrTXU1bDBIUVIvamh6?=
 =?utf-8?B?OXd4Umh6anJyTVZXVERJbXZrOUFJWDFsN05kNmNnZ3E0c1VIdEtwaGdUN1Er?=
 =?utf-8?B?UjZ4WG94MENHU0FMS0tDZjV2cmpkSVFMQVVGMklJMGlaMVBiY2JwVHo5SDI1?=
 =?utf-8?B?TDBFcm8zSit3Q1hWejd2cDdhbGpieFZpNnh1ZEY0YWRKSVZyS2tNRllYdDhY?=
 =?utf-8?B?ZTQraU5SSnJwQlRTOEE2aTJTM2c4QzFld0RZOUNNVWwzNUZpcUxkVzB3SVIv?=
 =?utf-8?B?REtsRkR4a0Y1cElCUUlaMG1RTDYxTldZQTBXcVZ0Q1F6U1hRUmdyRzFiQ0Q0?=
 =?utf-8?B?QXNGWGloZXY5UEx3VThKQnRyMzN5WWErQW5vK0g0azlJek5yMmdIbUZlZk1B?=
 =?utf-8?Q?ZU/BDyYaDJZs4FTwfTfOA+0NaucssYo96rzmGCht/wBc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR12MB8109.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UW5ZelBXRmplTzNCRUZ2SnZDeGdXL1pYanNLazVnOFVGMUY3bU9oOHI4dXNv?=
 =?utf-8?B?R3Jia0pHeDFVeDBhYTV2RnpjMTZWTElQeFhScnNTSDZNemNkNFlpYnYvUTlD?=
 =?utf-8?B?N1FiUi9oa0VSRWNvWmdGem5GRmtSSDJBNzhOVW85RWJlTUxmWHZWZkExNkU2?=
 =?utf-8?B?YTJUNmNVa0pjRXRvWTRMQmRSTlFPekVtMHcvSFVRTGZrQ1B2YUt2RnVTT1Ur?=
 =?utf-8?B?eW1DdmVJd3ZWSHFZRytuZmJaZk5TNUlyUmpRZUZLbDhGeVAzT25rVlFJN0xv?=
 =?utf-8?B?UlJMeHVrbm54enVONnMycU1DaExXM3JsdjJZRlBDTXB2dFpXNnFodVVlMkk5?=
 =?utf-8?B?NHQzd0czaXhhd1EvaGJieHhYZXh5ZE14NCtOYjRzc0xERU1ZeFRYS2Q2SUNT?=
 =?utf-8?B?UTJaWEZXQXI4eEwxYVpBenloV2hWcjBvdHdSd2NLczN6V0NLak5JQldjZEZQ?=
 =?utf-8?B?Y2pIdmN6cTBLcjlBTjEwbFdWSDN1cHE0WktGZTR4TnlUNzFOdnhpQ0NMcEJa?=
 =?utf-8?B?VVZmaUZGRUh3V0ZOZVdWaFMrTFVaWXk4c0FYSWdUT2FHSU5ORUg4dDRZUzVp?=
 =?utf-8?B?RVNNSzNiV21HbXBIL0wvQWFGSHgvSHVHRFE5TkNMdmN0Ny84cU5Ic1ZydUxs?=
 =?utf-8?B?blZpV3dZdzFzTlhhNi8wVDdtTU01UFBDeDFnSWd1QzlVNlozQWtRVk1ZY1VV?=
 =?utf-8?B?WWVnVzJnbmJiN291L1ZQOEtZV3EzeWFWRlVDWmlKRGJLanQxcC94RVBPcW1Y?=
 =?utf-8?B?ckNyendaUGUyVUN4d3dUN2tEa20xMUQzOFBYa2pncVBTUWdWcTFKNlhVby95?=
 =?utf-8?B?OXdvc2NwUFZ6YXZoTElUSUNyaWR0cGdwSGR0Njg1aStZQ1JDbEFhVnJwaUVr?=
 =?utf-8?B?ejFBakpHc1NnZEx5bzd5bnJnYVF2bE1CUFVGa1J2Z21JdG9FUExPa05QYWg5?=
 =?utf-8?B?S2xUM3pJOGRjZW9wM2p5Q0VSSG50L0VyZDF4eWNsejVsZkpHNGpRVTBienNK?=
 =?utf-8?B?ckRkRGJrR09aYlpYL2tyNTJEU2tIa1c2QjdJVFpBODJJQmNITzJHSGlLREhS?=
 =?utf-8?B?UHEwa3h1aHhWVVlITS9iVDlmTFBMd3ZUYWZRZkdJZ01qSHFvdHMwUCszNnFW?=
 =?utf-8?B?amxUUW54U04wb1MrRWFsTXNxVFR4TTFvUkVmTnBsaGpscjFkdm5CSERlYzgr?=
 =?utf-8?B?OVZETWdOSWM5REhhNS9OTGo1UWtJVTAvM2dUYkdRUmVQcFNURllzYUxHeWdh?=
 =?utf-8?B?R1JTZHJBRjdNU0dOL1BHZVk5RUVUNGxHNG1udzc3K1Y1L25Wa0FJMmhrMHdV?=
 =?utf-8?B?ZHczZ0srNWZtbU1tcUxSN2hmVzJDTDEvMFpYT292Rm9jM0xadTA4am90TGRO?=
 =?utf-8?B?b1pvN3BjZmxqRHV6eDRYT1l2TFFMaTdFUUhGblpvc1ZQQmFNRzk0OFJkWDJN?=
 =?utf-8?B?RXo1NkV3citRYTZjZkVwYWY3d1EwNDNaa3RWNDJWOFdrNFdVZ0ZmM0lER0dl?=
 =?utf-8?B?UmxlRXdlTGlMWmZZM080aDEvUmthVVhJZ2ljam5PY0orL3p1b0l5Ukh0ckFV?=
 =?utf-8?B?dGF1eERJb05kUWgxTEVqMEpqcCtrNFZkN2cvdjdxNzYrWXJRZTVoZG9uM0pa?=
 =?utf-8?B?OE1ScjlINHBiMVlYSHh4YTZJS0gxN1ZRMWk1TzEwdDdiLzc0U1NzTTJwQ2Z4?=
 =?utf-8?B?QlduSXlIdEk0TnFFZnE3bDlEMDlPSFdqUkVyY1pha0J4R25PU2h6b0pXUmxR?=
 =?utf-8?B?ckY3Unp4WU14ekhmd1pjaFVjUkF6MldTcWZpRDMwb09NVFBiNWhtVEluVVVk?=
 =?utf-8?B?RUc0Z04ybXYzdVMwM2pqVW41bFk1YklYQ1pHblEvTXJkWnRzSDNjQlZjNkMz?=
 =?utf-8?B?Zy9qL0tTclRTZHlXQzVRQTh6cGhlOU1IRHVZWjRpRXpMNWNnRHhoU0hOZDFR?=
 =?utf-8?B?VjhheXgxWDY2UXJuYTV0SEsrZ2tvZWpWQVZ6Si9SQk0xWlhqNU9wR25YUFBV?=
 =?utf-8?B?Z2x2ZjBJYzdFdk1IWGVGNGszVzkzaWREVzBOWm5LQlkxQUJkN2I5NjZYYWlp?=
 =?utf-8?B?Q1FTZXU1NmlUeXNTQ1o2c0pPNEdHbldnYlRhbzVxR2N2V0Y5S1hSb1I4ckow?=
 =?utf-8?Q?6AAwBmfJyRAvBr4JcBHCIfJgM?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34d6af59-5f19-4292-0ecc-08dc7f2632e4
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR12MB8109.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 14:55:22.1402
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t2o5YjAq+Pkwo+0f1RIEETZHnzdrYnIyVv4Jh+rsmARWasJYrjYsolxtiNlK+ehG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB7943



On 5/28/24 16:22, Michael Tretter wrote:
> Running make CHECK_DTBS=1 for any ZynqMP device trees prints warnings a
> few warnings that are caused by the zynqmp.dtsi file.
> 
> Fix the zynqmp.dtsi to fix these warnings.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> Michael Tretter (2):
>        arm64: zynqmp: Align nvmem-firmware with dt-binding
>        arm64: zynqmp: Rename fpga-full to fpga-region
> 
>   arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 17 ++++++++++-------
>   1 file changed, 10 insertions(+), 7 deletions(-)
> ---
> base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
> change-id: 20240528-zynqmp-dt-a47093b45beb
> 
> Best regards,

Already the part of

https://lore.kernel.org/r/cover.1716802450.git.michal.simek@amd.com

Thanks,
Michal

