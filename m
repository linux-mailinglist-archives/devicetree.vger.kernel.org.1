Return-Path: <devicetree+bounces-82361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 712209240C2
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 16:27:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 248DB283F7F
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 14:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 521751BA09A;
	Tue,  2 Jul 2024 14:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=pironexGmbH.onmicrosoft.com header.i=@pironexGmbH.onmicrosoft.com header.b="tZvmTHRB"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2097.outbound.protection.outlook.com [40.107.20.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F071BA08F
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 14:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.97
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719930365; cv=fail; b=uHzSekGsid66pkPnzhmu1SjZGxzot+19PZdCSQMLATMSz49kel6taIw/PjeFmAcED3XvHtKYt1UI0vvqnaqA7oN7wanK4VLfffhLtKbiO3Sg3yrnjI3b+yqjmpbxedlL4EIhQozXidSXFxRVo1StDFdydyqsUP/8gBOHaY0fLEY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719930365; c=relaxed/simple;
	bh=qr5pt1SWLB4BiV4R2CTTW5G9j7eeQVMG/ELNVwKQxfs=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=c1rmY4bt2mr3k+JPAaOYvpG8lE0Ta0/ZdHFrl2+gSIQ6ACEi255SFsos9y8+xzYdx0jcMGossutnS/oKdBAEXJ4G1LedfjMY7Td9DBP2yXJSxbw1sLa3EZcXDdf3dhUhG6/kZDKzCIyQ8Z4QeJyu1miUNyAlkzMpFOuh8HmSxIc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com; spf=pass smtp.mailfrom=pironex.com; dkim=pass (1024-bit key) header.d=pironexGmbH.onmicrosoft.com header.i=@pironexGmbH.onmicrosoft.com header.b=tZvmTHRB; arc=fail smtp.client-ip=40.107.20.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pironex.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pironex.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PYSmu2wW8511Svzl+PgFLk++W+fP0Z/tVQ1cMa62nruMconp50r8uDGjdMq+lDSFGOyzEniXOvrjfDvHIJgGPVOTbO2gWI6cJCwc1ye3S81nznImkzA2HYAdqIkAec11hZ1cdhzY6u+8nbr4jbtbvZJB2ChAZnSlApuFK5c+ZE1fPSVteOrbkplJlZEeIQfRgcV7iYi2enk7i1M7Nlr6fUl5l0o3mzKG18AP9dNw5XgdnsQBXpwU+bU+sDyi8hZYuUB4Q47TJFLFM9w908vi32hCr/AMvTQdBBaGwjMXHjMRT7NNhGrbEP7ajUsass/6cVgCDM4PnvfHGPDMLYcl9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KmJ83CGsIOG//JVw+w1/9GDOXWiNSUaZCyajocS4JeI=;
 b=O5T+Gr9SUOU661GzOzBtd2B2LzHbF61Pt3cZwY2nMGW/H6CiCsdRRdJbUrlwTKCezvuAPnbxF+fjCd8c7wLIrUetZlDVr0kGV8j+YjxtwRX+9tWa1fYtX9LX6fLJu3PzLN6rhqWxq02fNQCHbaJnK0TV2RIUTQaFHWqqDbYJuOpFhGJrukfrKzGLdaTW+v92V+JGDIbNofMci2L6nRxd3Pziy8ey4POT1nPDuYtHC7Vg3UP06W+s50CyllMSt5fNF93/WrX+wFQnZcVY5TFKsCxyGkZcYOOMe1b2UBrHvqVZP3e3qeBX99FoklkfOdtW3JfYMsVvBeMhsiLbmwHJWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pironex.com; dmarc=pass action=none header.from=pironex.com;
 dkim=pass header.d=pironex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pironexGmbH.onmicrosoft.com; s=selector2-pironexGmbH-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KmJ83CGsIOG//JVw+w1/9GDOXWiNSUaZCyajocS4JeI=;
 b=tZvmTHRBV3OsPJvPaAcw0hkWXrBTFAKD+QfmhvrQkWrPL3uu5BzYqQo+5+Cwc6U02czC58+wBh+tZb+ElHaMCcrsrZBmu/58BCT1SMh41SrfVYZvH1mUlaiy4x0WHSqEazmAdyCeMkaFB2/usH7FkssGHMljL+lLFqo7kDcuUx4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pironex.com;
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:158::19)
 by DB9PR10MB7123.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:45a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33; Tue, 2 Jul
 2024 14:25:58 +0000
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd]) by AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd%5]) with mapi id 15.20.7719.029; Tue, 2 Jul 2024
 14:25:58 +0000
Message-ID: <f2c7cdb2-b27d-40cc-b103-68043714f13c@pironex.com>
Date: Tue, 2 Jul 2024 16:25:57 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org
References: <20240702124626.116290-1-p.puschmann@pironex.com>
 <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
Content-Language: de-DE, en-US
From: Philipp Puschmann <p.puschmann@pironex.com>
In-Reply-To: <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM9P192CA0026.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:21d::31) To AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:158::19)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR10MB3601:EE_|DB9PR10MB7123:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c07f0f9-b8b0-4bad-29e0-08dc9aa2e44a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MDJkbFJUY3pRZlRKdEtYQVdXQm1qaFBScHhVQnBsV3hoYlIwdTF5eFRlSzdX?=
 =?utf-8?B?akRRREFSY2lwaTRJZk01d0l6SSszQUtIa205VHVLY3VXMHdSck9nQUNjN21h?=
 =?utf-8?B?UVNxc3J5TTl6SHdQa0VQeEQ2eUZSdmxob3dPWFZzeWpuemkvNmdPSEJRRmJL?=
 =?utf-8?B?bVZ3clZ6TXVFVmM0bVlNTWxOTE1tR3dGNnlacHBiWisrSlkyeVhMcTBuSkM4?=
 =?utf-8?B?MWMwWk8rZVRLR3JFMzhDY1BGMFJ1NlFWS1pmWEN4WWtYbi9UemJqeHQxK3hv?=
 =?utf-8?B?Vm5SU0FVcFd2OXFpL2xZMEZIOGlFZEQxaUIyUEVndTgvdUIvY1VWdURZd0Vx?=
 =?utf-8?B?M3dTWFZLbGg0WmxpbkpsQmI5YzN3dzBWbG9PTnhvSGtLdnZYTDFoTE5iOXhR?=
 =?utf-8?B?cldJVFF6TytVZ1M1N2ovaC9PNmp5M0VLa0dydzg4UGV5bkRVQU8wcmNrcTZS?=
 =?utf-8?B?Umd3clp1R2R3c1pmOE96TUxZdTJWRHpPSVRjLzhMOTY2dHNyMWFaVXJSYkFR?=
 =?utf-8?B?cndHb3pNZmpVQ1BGbWk3MEJrT3BJRFF6ZnJ5eEdpNVUrUysrOFg0eFI5K3Ex?=
 =?utf-8?B?allONHpKakpSS0tRMGllY3ZTQmtmUVJoZlRja3NDK09WWkxkcFhOR0JUS2VM?=
 =?utf-8?B?RDVoSnJSbnBqZFhGODhhRUZRM2FZN1IrSTAwUmh6c2RhTUI0elFmeFlRYWhw?=
 =?utf-8?B?YWNpQzZpRFlIM2dUak1jTEx0dXJyZzJWSWRycmhtaUoxUFhlSHlqYTZIVnZk?=
 =?utf-8?B?cTQ3R3dFK1JYeXVkNW5Cam8rT3J2d0JKQnZMcTdCc3IrOFhZeVJNL1VqKzh2?=
 =?utf-8?B?SkxtQjZmVjYxL2ZSR0d5eXFTT1FoT1k4ZUhpb3VQUnFyaXZSQ0VRU0lISjEv?=
 =?utf-8?B?TFdXTVVpQkp2eE1UTCtQdjN4TldqOHVGWUhITGZZbm56blU1dHhXR3U1SDk5?=
 =?utf-8?B?L0dJN0dEQzRGaDB5ckZFYVh3emExbmFWSHJNSkQxSTVLZnMvQ0ZwM1hyNkpS?=
 =?utf-8?B?WUhWRm4yUVNZTkJNQThlYWJ2b3RZa29XU3BjL3BNWDQ5UW05N2phcFJuYkdL?=
 =?utf-8?B?Ny9QZ21xYm5oNlJldzJWblJvWTQrUm1hRUtGTFZJK1BCM2FncnJ6T0tiUHgw?=
 =?utf-8?B?TlJXNDNVaGlNbWk3NkRpd1JjTVR5WVM1L3d3WWVRdzBTbC9pVmdyTjE3U1JJ?=
 =?utf-8?B?Q21JRTZ6VEhYMWRoODQ4L3lvcG9nblFGTWxYRHRuc3ZKQjlTNnYvTzdTUjVq?=
 =?utf-8?B?QjQ4NnlzaG1EeXI1cERNTVJLbGc1ZTdGQnN3aXBrcWZmVXpKS25CVGxPTG0r?=
 =?utf-8?B?SWR6SGhmNU1pcERJeXJWNG9OV2QydzR2RFJqdEZmWXNPUkdUNjladTdteGNx?=
 =?utf-8?B?RXYzQzIycTVYd2ExMnBMNWZuamFpa1VRVlBwWFFrTFFiZ0Vya0taQ3dqY2gw?=
 =?utf-8?B?SmFXRmdZUHprMXF4cTNsZEIzOUhKMWRXaXJ3aUpHL1MzUFExWmoxY3loalpL?=
 =?utf-8?B?dzhsWnZnWXdFY2V0Z0VrTDJTYWRJaUVWQ1YyNGFtNWVDcDlUS1VJOVBxNTh6?=
 =?utf-8?B?UldkUElkcTJJc0NneUdOd1hzZWdUTVM1VTMvY01HODVHWUYyREtLMERvQUZv?=
 =?utf-8?B?ZHFJT3U0VndISFhNL2l2bHpoMW5RV0hsM0RqcU4rVGE3NlZJYmlCNDhpRmRa?=
 =?utf-8?B?ZkJPbnd4WHk2VGpTSVlxUW9hWTQyRDJZOUdEK2QxNGNnVGtabXVZREFQYTFw?=
 =?utf-8?Q?qyBRfebQdlPHC0K5Ms=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZlVIWVJPYnZtcHVFeXhmMkNMV3dUZWdDN0lHTm1PYlMzbDBWRzZIK2piVWZz?=
 =?utf-8?B?T0ZTNkd3SGtxUEMzYTR4YWJUSjMwN3pGdUkvWkpvWVlna3hUNmRVeGVGU1B3?=
 =?utf-8?B?Wkx1N2dSRGxaNmFmSTlxUHBqVTVreGw2cW1pN1FLbVpNaHVKU2d2dENkK2ZC?=
 =?utf-8?B?b1BvbVd1OHErOGJMVFNQNFJuK3ZRU3l1N2UydTlySm1GYUd3OXA5UjJ1a1NR?=
 =?utf-8?B?Y09sZVVyVTg4VHR1SG1udXA1c1pxdFZabU1oNk1mT0huQkdYcmUvVGlvbkYr?=
 =?utf-8?B?eDBiUE5sN01peC9mME1nNEpVcFVZNmt1cEU1S0JQTFVTSGV1NFVWZ1JlRnZw?=
 =?utf-8?B?Y09ZWnRjNkJLS3VQQTRUYXB6dStaMThGd1VYblFJZEpCMnlSc3FvTHhzVEFq?=
 =?utf-8?B?WE0xYWZRQ2wxcXA1UXcveXVKM2ZEQlJUZFB4MTZ1TzJFa243bWgxZFlTUmtP?=
 =?utf-8?B?TmtyWitoTVpNb1VJTmVmb1d5cHlmOWxkRndWTVcrZlhyTlE5dzJZR0hCb1E5?=
 =?utf-8?B?VGxxQ1J1dmYrMHlDOFc4R2NXbDJKK2FxYkZ4SFZkOS9GaGF0THQvTTZ0V0pI?=
 =?utf-8?B?MHVmNW1XS3Z2K1QxYXI1a1BSRHVxMW52bUlFa1JrQ0p4ekpsbXRXT3p2aXlI?=
 =?utf-8?B?dVN6Z2d0MHRNdUFHS0JDeVh6MDcvMzNpeWRLYTFwNVhFVCtYWTdvZC9sOU0v?=
 =?utf-8?B?Qm5Fd2VPT1UvY0VOQ2daNEI5WnZxblJlemFPK3BFOGFTTFp3UjI3S0xwbERh?=
 =?utf-8?B?SU54QWpBWEhkYVBhNnVadkJZb01FekZzMHp6QVB5eEw2YmpaYVF0dWNxNnNt?=
 =?utf-8?B?TElCWWZicGp2c0Jvc2QxbUJya0Q5Y2cxamZkNXJlTWVZYTc4bGRmQysrVmcw?=
 =?utf-8?B?VTR4aXB5WFpjL1ZTMFVyZDU4K2tKMFN0cFBVMCtod3BVQXpnYnlPZVJ3MlYx?=
 =?utf-8?B?NnhOMW1iK0VsUnNJbWlJUi9BZHFGbldadlNTS1Rtc2lvek1KNXcrWXZaWWFI?=
 =?utf-8?B?Zmh5QkNFMUVCb0J4am5DU1Bxa1diUU9GenJNais1Q1kzdTdHRlhXYzhEK3pP?=
 =?utf-8?B?NGhSYTZ2aFowWjFYOUxDL0diODZId0NDM2VGN3R6YmphK04wUi82ZUtPZmNp?=
 =?utf-8?B?RzJPVTcydmVJVGJmcHIxVG82L0E4WGYvYStnclZWRnMvdEszK3QwbFN0aTFu?=
 =?utf-8?B?Wmx3VUUzQUF0TjhKbHQ2YkJPZFhValFVS2tya093SUQ5d3lCYXpHcWpLOTZ5?=
 =?utf-8?B?Zzk4VEFMM0RVTkREVk04VkJoT0JoWHJlNmFwbDdsS21RVU1yVUZWcUl6TUE3?=
 =?utf-8?B?OXRPL1dWUkxFQnFOUEpGa2N3aU56M2RqZE95S2tYM3ArbjlOdzY5ZW9mREYv?=
 =?utf-8?B?dktuZ3krRVZFc2hsUFhSMXk4Q3U0ek0vV1F0bnFreEVWdUZyU2JiUkxyc0RN?=
 =?utf-8?B?WnhtOGdkSXJnQ2gzck9QMVpXa0ZpRkthV3U5Wmg1VzFxTVFCOXIydEsrV0tY?=
 =?utf-8?B?SmNBUmljMGZaMTRaNy8zdFhwNXB4UDFuM3cwanQwTlFWeWhqb3BaaWR4U3Fy?=
 =?utf-8?B?ZWNQdjl1NUJUNllEbmtlQnRqM2dQZUZod05MMHR4cTZVUGxrZHRzVVgzZjNj?=
 =?utf-8?B?SWExTEtJRDRVT1d3QUJaZllLdThFN2dVbXBSWmk5c3pxR29MVXRoVUNQQm1m?=
 =?utf-8?B?ajY4Nmg2TnZoNVErVGozeTd1ZnpFRmtnZXYzRUF1bXRkU0lCalIrOFJYSWVs?=
 =?utf-8?B?TEh6YnN2MUJrUUd5YjZEQkhEeDZQZ2szL2E4d1oxdWZRWFBFVXdFNmhuWm9S?=
 =?utf-8?B?Q1V4eWVuSENuREdmaGFydzk3OXUzNmRtUGc5eFJrdytaYUZiU1ZMOFQyaHg0?=
 =?utf-8?B?T1BmRS9hcjVYNTF0UGt1b3JIYyt0bDIwM3crMlQ3STFYTHQrNjJRODVqbCsy?=
 =?utf-8?B?SmJjVm00OG1ydjIrdm5YSDJBVUpEbWp1ZnpxSjJkcm94NllLNzhwdS9BNkF0?=
 =?utf-8?B?TjRiNE12RzdLelBkZnlDaEUrdXh5dVBQY2NWeGZUbVNqdnVJYTdTYlhHakRp?=
 =?utf-8?B?dmRxL2xYV3lMRDMzejQ4Wnp3bUh6Y1Z6Sk1sVVRWVEp2ZjlxcWdaSW1oYkNM?=
 =?utf-8?B?OXArUlBRSWZTZzlLaTJvVWRzbHRSVjZ4VTJVOWFVRjdjNHloVld2VTMwYVhx?=
 =?utf-8?Q?YGUGGG3Iolb8yHO+8XX9AygX7tz4Hzl+PQpzBsrQAvA8?=
X-OriginatorOrg: pironex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c07f0f9-b8b0-4bad-29e0-08dc9aa2e44a
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2024 14:25:58.6167
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00aa8e52-eebe-489a-8263-3195e0a468ca
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w3OiJGeb4V/ImGYD8gnmVXF3v7tQxeC6VeHA55XhjzAXkZKNc2Jzh5U9HzXLt3yxQY8w3qvNHBy5mKmzn9YbkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB7123

Hi Dragan,

> Hello Philipp,
> 
> On 2024-07-02 14:46, Philipp Puschmann wrote:
>> Providing ethernet aliases solves a subtle problem for the rk3568. The
>> bus_id used for the sysfs directory name of the mdio. Without ethernet
>> alias the bus_id is always 0 and so creating the sysfs directory for the
>> second mdio fails with a duplicate filename error and by this the setup
>> of the second ethernet port fails too.
>>
>> Note: The alias numbering is inverted as gmac1 comes from more generic
>> rk356x.dtsi but gmac0 comes from specialised rk3568.
> 
> Please see the following commits and the discussions on the rockchip-linux
> mailing list that are linked in them:
> 
> - b0140a1b3b1d ("arm64: dts: rockchip: Add ethernet0 alias to the dts
>   for RK3588(S) boards")
> - 36d9b3ae708e ("arm64: dts: rockchip: Add ethernet0 alias to the dts
>   for RK3566 boards")
> - 5d90cb1edcf7 ("arm64: dts: rockchip: Remove ethernet0 alias from the
>   SoC dtsi for RK3399")
> - c900fef5deff ("arm64: dts: rockchip: Remove ethernet0 alias from the
>   SoC dtsi for RK3368")
>> To sum it up, ethernetX aliases are considered board-level features,
> because not all boards/devices actually expose the Ethernet interfaces
> built into the SoCs.  Thus, adding ethernetX aliases to the SoC dtsi
> files, unfortunately, isn't an acceptable option.
Are ethernet aliases are handled differently than i2c, serial and spi aliases?
There are aliases for each of them, without doing any harm. And even if the gmac
nodes are disabled with status property?
On my rk3568-based custom board i had no ethernet aliases and networking was
enabled normally with the status properties of the gmac nodes. Either one or
the other or both network devices were initialized. Would be strange if an
alias would be used without regard to initializing a device driver.

> 
> The sysfs issue that you've discovered should be instead solved in some
> other, more systemic way.
The bus_id value comes from stmmac_platform.c and of_alias_get_id() with
"ethernet" as parameter is used, what is a common way in the kernel. It
delivers unique ints starting with 0. stmmac_mdio then uses the bus_id to
create a mdio bus id string stmmac-${bus_id} to register a mdio_bus.
From my understanding this kind of bus id is commonly used to name devices
and paths in the sysfs. Viewed only this problem it would be possible
to use other information like the node address or some unique
information to use it as unique part of the mdio bus id. But doesn't break
things too, at least some kind of convention?

Another hack i tried first, was to use a static increasing int to get
the bus_id. This would keep the resulting sysfs tree probably unchanged
but would drop the connection between dts and bus numbering in sysfs.

Regards,
Philipp

> 
>> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 4 ++++
>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
>>  2 files changed, 5 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>> index f1be76a54ceb..42018c8666e0 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>> @@ -8,6 +8,10 @@
>>  / {
>>      compatible = "rockchip,rk3568";
>>
>> +    aliases {
>> +        ethernet1 = &gmac0;
>> +    };
>> +
>>      sata0: sata@fc000000 {
>>          compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
>>          reg = <0 0xfc000000 0 0x1000>;
>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> index d8543b5557ee..e13bd7b24752 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> @@ -43,6 +43,7 @@ aliases {
>>          spi1 = &spi1;
>>          spi2 = &spi2;
>>          spi3 = &spi3;
>> +        ethernet0 = &gmac1;
>>      };
>>
>>      cpus {

-- 
Philipp Puschmann, M.Sc.
Softwareentwicklung

pironex GmbH
Stangenland 4
18146 Rostock
www.pironex.de

Tel.:   +49 (0) 381 7006 08 44
E-Mail: p.puschmann@pironex.com
Firma:  +49 (0) 381 70 06 08 0
Fax:    +49 (0) 381 49 68 02 77
Web:    http://www.pironex.de

