Return-Path: <devicetree+bounces-257696-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JX9M882cGl9XAAAu9opvQ
	(envelope-from <devicetree+bounces-257696-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:15:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 770B84F9C1
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E9F7C4C09EC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2899332EB2;
	Wed, 21 Jan 2026 02:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="ECjfCelg"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11020101.outbound.protection.outlook.com [52.101.201.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F0032B9A8;
	Wed, 21 Jan 2026 02:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.101
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768961691; cv=fail; b=u5DxcpXkldxAH0ozZRJO0lYriKd77whxCmATmULlgkJDeizswt20ypZaL4yVM0gjdS6wV0qmit3OB+v3nlGAFIg9y2Gt9U53p/6+HvPqiGehjqw9Cy9YU7g8EtpkFcmxvgIA37QvB63jItxBgcymJUppCpOMVHWWUh9/Wd5D3vE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768961691; c=relaxed/simple;
	bh=TB/JRPTkuy82HMFZMoMo8rEsifqD4PSbzz1+IecYRIA=;
	h=Message-ID:Date:Subject:To:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=pXrLKkC/Ik8KNwohqTfqsp3GzIQc50C2FcharDB1woO9ghhEaOOYwDzKbaTkJ5nrnx9Tw3H7+4ZVXt1PNRhA7HAiqODbC4XCIoXB/ke5wOCRx+cNr+L/vq+2s/SHy4JdrYieXvpoZMi+BseNKCLinLLd8mPts3jR57gYWPIyj8Q=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=ECjfCelg; arc=fail smtp.client-ip=52.101.201.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yPiQECitYujSO0vhmqhR6alndysvS2DyJDHT4rlS8SYuEZkMVbEnwMcyHj527+nyKzFAkkGnegSpk16kM1nzVCNezDLlA7snVKs+7eejvgFH2BzCseSM7hnT4tkl9twjzRNuFiHtIOSniITFSW/ZdaZcYL3WACyx/e3d9Kno6/cKCIPQoFdRi0UbX0qqMNigxc99sCbBRV0TtK2VZWyV3vqVb2pAYD6QI9xzHOXEg9zi1dIVnY6jn1ID0zxJ9M2XuuweQ5qp/lM+QIB76VAaS4qUg1xXadBFbFP4Wq4fmHHBnodFE4ku6iPfF64XlG+lzqxsi3cLq8mJ3HzjWdBCdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GXci1HBjZfqO56lQ+8+kZYirwzcZqTf+QvI73r+MWe0=;
 b=Fdu/IUOX7Cd1/CdYex1ZPF8Id8ISn8SiWsR+0MnVyfmMtTxdL6/vfXFL9tjHZMHdmKfH1JCrogBQiLlcQvs4xNfFeqn5n2S2Z2Bi9TYlbBK+dVLRzxgRTxQoy50cJPsAEO7aWdSpSY0SM6nlOVB13nTj9jR/QQLWsunOUgclnqkr2QxX6pw0NiyhUSqAJKiBCJXGhaEoHiM8/WMJ5Qduqy5NlNWe7XmMgw1oJZJCctZm5tQ0gTiSziNbLDqaqTGA2B9rKee8PbEI43uxd/4EwJhL+zFdB02tFLdFm3nb5lXLeX/hZat8KsrFByzok1zLMSIM3IBltFJ5V4gGn5NA7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axiado.com; dmarc=pass action=none header.from=axiado.com;
 dkim=pass header.d=axiado.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GXci1HBjZfqO56lQ+8+kZYirwzcZqTf+QvI73r+MWe0=;
 b=ECjfCelga9/+kKI9dz4ILSjQVkZLyftRwuHyMKS+VUWwBvRIKo9l4hJDelQDZPvQXdDblTbUSFXr5jPotbDk2Q4oVCDTYUf4Wrm0GONU2b4C3EV6IW0L3ZFsve5rGP5b76vAhJfnLar7r5Si1yXn0vjfw+K5xdA3lbvZkmPf3vuAivyq9yZmfSYvt7yOjdDdv4oDjvLw2o+qdl16zLuiZTVBWE8mjs34XZdespLaiayHFjriBGp5oHRyVCIjBxrRzbJO224jXovsJ7bz0dTB03VrxKsKro8nJsma29xJov3wvzdJTU3rhHP0SUpq/oa0B1/5NUc3UgLO7MEIgYqQZQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received: from CO6PR18MB4436.namprd18.prod.outlook.com (2603:10b6:303:138::16)
 by SA1PR18MB927677.namprd18.prod.outlook.com (2603:10b6:806:4be::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Wed, 21 Jan
 2026 02:14:47 +0000
Received: from CO6PR18MB4436.namprd18.prod.outlook.com
 ([fe80::d3e5:42d6:c423:a253]) by CO6PR18MB4436.namprd18.prod.outlook.com
 ([fe80::d3e5:42d6:c423:a253%5]) with mapi id 15.20.9542.006; Wed, 21 Jan 2026
 02:14:47 +0000
Message-ID: <95044497-a40e-494e-95b5-916141297287@axiado.com>
Date: Tue, 20 Jan 2026 18:14:45 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: axiado: Use lowercase hex
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Harshit Shah <hshah@axiado.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251223152432.155299-2-krzysztof.kozlowski@oss.qualcomm.com>
 <5cc6b959-4424-4d34-a8b4-eeff237266e2@kernel.org>
Content-Language: en-US
From: Prasad Bolisetty <pbolisetty@axiado.com>
In-Reply-To: <5cc6b959-4424-4d34-a8b4-eeff237266e2@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0242.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::7) To CO6PR18MB4436.namprd18.prod.outlook.com
 (2603:10b6:303:138::16)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR18MB4436:EE_|SA1PR18MB927677:EE_
X-MS-Office365-Filtering-Correlation-Id: 46c54043-53b4-4712-653b-08de5892d9a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aVFuT3U0bnBtVXJRYkxFbmRaa2kwTWE5STJ6WEFtNVdJMFlyT1IxNnExV016?=
 =?utf-8?B?dVZnamZmdGpOKy9oK3VxL0lkSlhTZVRvNDJXZmFHVWppUElFSXdvZmxpVG1B?=
 =?utf-8?B?MytKUnlBQ2lmYmkwVFBXUEU1L3pCY1pDY0k0cVNwbm9qSml2Sk5yemZmYWtC?=
 =?utf-8?B?SXE5R1VKb3JCMVdaWTU2NzdWeEtQMWRmZ1R6OE9ERE9uUEpSZXViSU0yZXcr?=
 =?utf-8?B?M0Yxb1BYTnNFSlJoK3U0UkFCTHdHandlSTlONXBibVRwc21zckY0a1pCNXc1?=
 =?utf-8?B?dEpERnMzbEV2SEJKMS9NM0IyYjRWWEhmSWtySnpqTGJ1UU1WWitYcHZWd1ZI?=
 =?utf-8?B?OE5aUTdzYkIrS0sxaVZURkkySlJzRVBsYjZ4cXF2OVEzYmJEVXJQVjJFeHJ0?=
 =?utf-8?B?enMxNEJjWmtQV1RzMWd6cVJjVUlHMnNHK0dBR2JsSndKcWoyVk9nQklnMTdV?=
 =?utf-8?B?QWRGOU1OT3d1T1JiU3QxQ24wNVg5aDdkQkJzVVFyNzcwUE9ZSUxtWGxjTzhy?=
 =?utf-8?B?SXd4VHpqMVFHaElna1AzQ0c2d2JjVWZhM2dlNG9BNFpQTWVZMGt4MjRKYXkv?=
 =?utf-8?B?T0JuUWUxS3hGbENIU2dEQk1Sa2xTNEdaYXFadytvYnkrWGFnMU1wKzVlZEFP?=
 =?utf-8?B?bXBRUkk5aisxRDJ2TExrUE1tQ1JHczRkVmh2RUFBeHU3bGlRV2JWem4wQlRE?=
 =?utf-8?B?Ui9sQzZsS3V3RkZlbmpPcWM2b1pvYVJScCtqZGt5Yk5WYUpiMUxxcmhTeE5Y?=
 =?utf-8?B?Q0hBdVVHbXE1bTBLT2YyU1d2dVJjVXBmeUlENlR6em9zUXRPR3hiVWVRUkRS?=
 =?utf-8?B?dE40Y2lvUzhkd1BnU2wwM3dXNVh0WHlEMlBWNTRlT0Myc3Z1aGFUQWVIV1Ir?=
 =?utf-8?B?Mmc1UE1jcGdZbStQZWVMR293VFRZdys1V25SUUhZeFRvRkRIR1lnRys4TVMx?=
 =?utf-8?B?cWM0UEw5c3NEaXFMeGY0ZlA5UUtJWG9xY0VDVTFFVlNQV2xrNHREajFOTTBu?=
 =?utf-8?B?VkptajlIcW1vbmhhMjZaSWNuZTFVTDdJeThOOUlHYW5ucS9qSXhmelllWVZ3?=
 =?utf-8?B?VmpwKzBXYkNQOHprRGplOHZIbEp1RjV5aFZEZ0V5NE11cFloS1FYeFlsRWJO?=
 =?utf-8?B?ZzVhR0swWjloNFJNTElkNXJVUUwvbzhyOU43b21XWHdzZ0FRSy9IVmJpY25n?=
 =?utf-8?B?dzM1dmMyMzhFMHJreFIwWjFUa2pzMENWZVFOMlhMM3FmNXZleTNocTViYmpR?=
 =?utf-8?B?VkpxcHRrbi95OE40cXRnZjJyWXFzWG9LK2w5NXZhMCtKL1VGbnYrVmloRHJQ?=
 =?utf-8?B?a1NCTmlEWFkvZW8wNkZORlZRYllyckpZd1lPU3ovQWMrVW1VcGV3czFvSEl2?=
 =?utf-8?B?RmpDMlhPRnVhSk9DQmprNzNGRkFVcUExTTd2OVdjTVlSZ29HS3dMQ0tiYWJR?=
 =?utf-8?B?a0VTZDB4ZnJ1US9abVhSdisrUGlaaW1XY2srTHRObjZnUVY3SnpMMlpqdk5k?=
 =?utf-8?B?MEN6TTFJdmxMRFhydnNoY3dFdVBFeWI5b3pSZEFjNVkwTUNwYUdleGR4NElj?=
 =?utf-8?B?UHNxM2x0UmdzSlR0M2RFdXQ2aHR0WkkrZFhYQm93VHJIaDA0RlgxNEl5cjJP?=
 =?utf-8?B?T3BVSUc3d0tDcjlORzZyQUNNcEZSM0RtUk8xK3FWaHF6b3hzY3VSbHJodkNG?=
 =?utf-8?B?TWhFK0VHWFNQNjMzYUlVck80RFhOZFBPYndaU1pnU3FQYnBEOWdSM0pHKzhX?=
 =?utf-8?B?OUtlcUEvZ2Z2aHNGUXN2NnJWNFNMVVJVbWpzQU5RNDhxUWIxNkZaaFBXbE9x?=
 =?utf-8?B?UTZLT0dOREJjR1pDRVROWlNrM3dWUDRJempCY2tKc080K2t5blJRNEw5Z2hy?=
 =?utf-8?B?cVpTTDZUNW1DWmh5bjNUSHd1VEJ3aDZRNXFJS0FQQUxzZ3JmVy8xY2l1aVVS?=
 =?utf-8?B?b3lWMEhVNjVpSWh5RjV4a29pNEVuVmJPQVY1MkdGRmM2UGttckhJYyt4OGcw?=
 =?utf-8?B?SjE3REpLeWVSTkllRVc0NjdXNkRaL2EzMmg1QUdweU5EOTg1dTErR05lNFdU?=
 =?utf-8?B?RkhZZkdPZDhucGVCVUh3cWcwZ21uVVhYV2JwYTNIeE9xbXBZNnRlR01DRCtx?=
 =?utf-8?Q?32VQ=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR18MB4436.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TnM0WEFDdTFzMnJWZTNGb2JIamhrS2NsWC9tMVdocnExMFhiZUk3NmtNYW14?=
 =?utf-8?B?aUxhVE9PaTh4Y3UvWm1GNTlYNlhDZVlJZTQxTFo2NFU4K3VWb3NQK1hTSUc1?=
 =?utf-8?B?Umh1NXprVnVJUkhFU2l4YWZqV2wrYXJ1akpYUWtWdXJ2Q3JtVUp6WVRmU21p?=
 =?utf-8?B?QWh1UWxwdGRCOEk1dVRneTFUTjFuRUJsSzV5ODRNSitXNUpaSHF5TzIycjEz?=
 =?utf-8?B?MkU4dU4wMlVMMXpDVTRYQ3FzSURBLzBPbHNTOERvZUdSWFBZUkcxSFd0ZEpZ?=
 =?utf-8?B?OVJWWTBNZ0hUUHp5MWlBTHNrdVROYllSeG0vYWZmVnRISE00R0pNT2NENTA3?=
 =?utf-8?B?OG1CbitKNW1pYmpLZFlUakY1VnVRWDlFQzhqSERPMWJEdGoxN29ic2tOaFY5?=
 =?utf-8?B?cHF2azFVVHljc1hwSldXOWEwM3NzeDEwYU51WnNDVWVyTjNJYWVHZndLQkIv?=
 =?utf-8?B?SThvZ0F0NFpXd3lYbEtrMFhlY0FQczQ2bTExRm1XK0dtSUZhblBEenZ3WmVz?=
 =?utf-8?B?VkJ6VjJtYkdhRXphbllGVE9jaFNJSk5kV2haWTN4eTRYYXJoZ2l3Mk1nRkVx?=
 =?utf-8?B?MmJqZkxTZ2RzOFdpeENqSG9xa3MwZFhvU0pKMnZ0aGM4WDZZVy9YbXpHWmVL?=
 =?utf-8?B?Wko0eGE0dkJMSDF5cXlPNEg3VmZQREc2NGNWSUF4d2dkaEE3dTBrRXlXdlFR?=
 =?utf-8?B?aGFicWFSdytNbVZCNDBRYlJlUnBTT1JSVnEwMXpETzdoWjRZRHlGY20wRzJy?=
 =?utf-8?B?N05ESUNnM28wNU9GcUN1QWlOOE9FNCtsQ2NqcFdNZmlBL3hVbERmaFNGSUIv?=
 =?utf-8?B?K29pL2oxTW40cUkySlZ2NFpUOHEweE0zdlFWQTFhbTdpSzBMY0EwNnVoYWk1?=
 =?utf-8?B?THdOUzg1K0dsVUlWdDBub1B5elBPbzFmbWFDbkU0NCtiVGtQVGpUVHU5Y1Nx?=
 =?utf-8?B?andqQkwrZjN3VGFEenFJUGxtZG1ER3U4MFUrOVgwTXZka2oxMnpsUDluVmxr?=
 =?utf-8?B?QW5sZUZnb0RVbHdJQ2VielRXOG55ZFg4UUJ3YTZJNndrSjZldldQdXFjcjZG?=
 =?utf-8?B?c1pYZ1R6a2taRWFFQ3NiMkFxaU9oSFhlcmhtT0c1RjJQVVZTRktZT2FpdXI3?=
 =?utf-8?B?VzY0OXg0T29wNG5GeWRpT3hxYklqNkRrNUxwaVJYeEhBYXdCODlsUEkzTWl0?=
 =?utf-8?B?VmQ2WVFzUVljcTJQdFdNbFhZdmNRZlJHNkdoRnFKQ2dRMGZLSXBxZHBLekpI?=
 =?utf-8?B?cWlSU2hzRWR1cFlCalh5NENzRm54ZVFTSFRESk8weHkzc0RMWWtmN1lDNEJz?=
 =?utf-8?B?eGR2bnFEdmRTd0orZ3VGTENyMy9NRWVJbXhQV3BRMm8wd3Q4RllpTlA0Nk5I?=
 =?utf-8?B?TzZHQi9QUk8wM2Y5cjFIUGR5UVUvd3BzVUx1cFhXRXFBQXdBd0Z2S0xuMmZE?=
 =?utf-8?B?REpUNmJTcHF2QmF3UFlmeVhSeHZEenFqei9Dbit0RUN3OGw3QmFadEQ5Zkc0?=
 =?utf-8?B?dVJVd252djY4dVpjYWwvWS84OCt1ZXhQcktYRkk1UllnRy9uMnpTTW9Zd0Y4?=
 =?utf-8?B?OTE0OWNMdEZndnpzYnFaVmlGbkYzRzlkaWtzUml6MHRqWkNhRWx4c3BaRkpJ?=
 =?utf-8?B?Nk5jVlJic1ZtK3E3cm56eWpnWERhRHErTC9SY2VXVEVyellENUxPQ2d0UHNV?=
 =?utf-8?B?VTJwQmJoRUwvSVJVdnN3MGF1SXl0eFZxMkpGY3E4UlI4RXMzUlJQYnJvSmJS?=
 =?utf-8?B?WnhZbUpZMGZ2VmFZRzdCVGpYYU1pcmxmMWlWQlB5VzlMZldQNFNuZnV1TW5r?=
 =?utf-8?B?MWFscUhWYlpnU09hL0hEaFRXUTFRRktOeFFMZVNSOUpzK0JEb3VveWJkUDRY?=
 =?utf-8?B?NTVLNjk2R3ZWUGVBVnBCeVIyMHJLa0NqY0hURTJieHY2eTdXY2xDanNPaVhp?=
 =?utf-8?B?cmVwSnNrNzZ5VGRPOTdLUmUvS1VKRTJEempWTUhOMDl3NnBNdmdndFczaWVa?=
 =?utf-8?B?cmxTVXhFMXVTdWxMcHJIeUxFelRCeDdmbXcvNkpZaTRhQ2ZpaUtuWE5odUR2?=
 =?utf-8?B?NE92TzFVZnZzS1dPdHczVi91SEFmTlBMeUdNMWxsK0tKbG03Ty9zeWdkYVRI?=
 =?utf-8?B?Y0ZFZ09oZGxQUVFYSExmaVlTa2swSWR1Wnc0ZEtueU5CZlAwUjNBcWVBMlFm?=
 =?utf-8?B?STFGZGtmQmxLeGxMbzFybll2M1RvODFPK0crdk1USUpwZmlRWWs0U0ZmQ282?=
 =?utf-8?B?WkJSMWg0amNxZ3BBMEE2R0FpZWhyd1Z0VWphck5vR3VKZnpndk9WSUtSLzQ1?=
 =?utf-8?B?ZExrWGh1ZzNNdURtYU5QKzJELzlpN2NBNE9mbjYzZUlFb2lNOWk3UT09?=
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46c54043-53b4-4712-653b-08de5892d9a7
X-MS-Exchange-CrossTenant-AuthSource: CO6PR18MB4436.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 02:14:47.4984
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EjKqYE4vrbLiUYrsUARJtWYLNwbmfRAMxJF3WZgkSatofpyfmCqgKq1xu7ZkZurz3XTwrYiTZT2tH0D+8wdjWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR18MB927677
X-Spamd-Result: default: False [2.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257696-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[axiado.com:+];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pbolisetty@axiado.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,axiado.com:mid,axiado.com:dkim]
X-Rspamd-Queue-Id: 770B84F9C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 1/12/2026 12:35 AM, Krzysztof Kozlowski wrote:
> CAUTION: This email originated from outside of the organization. Do not click links or open attachments unless you recognize the sender and know the content is safe.
>
>
> On 23/12/2025 16:24, Krzysztof Kozlowski wrote:
>> The DTS code coding style expects lowercase hex for values and unit
>> addresses.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>
>> ---
>>
>> Patches done with sed, verified with comparing unflattened DTB and
>> dtx_diff.
>> ---
>>   arch/arm64/boot/dts/axiado/ax3000.dtsi | 2 +-
> Ping! Anyone in Axiado is handling patches?
>
> Best regards,
> Krzysztof

We are working on it and will update.



