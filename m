Return-Path: <devicetree+bounces-66531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0008C3739
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 18:08:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97D84B20C56
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 16:08:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBEE836122;
	Sun, 12 May 2024 16:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=marvell.com header.i=@marvell.com header.b="MmKxjzF7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com [67.231.148.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1935518E1C
	for <devicetree@vger.kernel.org>; Sun, 12 May 2024 16:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=67.231.148.174
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715530080; cv=fail; b=kYC6wBMwkN8p69EDFkzZH/+paPDOWQxXTQVVvEKp5noWFM4c4VcbS3B0n0nsfSNvFg2QuuQsYc0WbzuwSHrT+vxVAtmJ9Mxok+ok3F4WlUgEOfMW7CjLAvj728sZo9HjMk9jYIQZnBd2ByDljDcJVFgxiUGF0JIpxKgUGrBcOmM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715530080; c=relaxed/simple;
	bh=mr3J9UUqgMCm+oSNUgo+YmRaMuLUxLWsSete4FO2Rek=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=AmjYDNiz31Eg3zI+1ZnCtMfLKg/ePB5GW1A7YZUSm9+MhwTYPgyoGnAnjltEdo5BJ2BvzRf9l/BQ310kfoxtNpDkP90gPHjOlrPFwoSVazAhepUFYoAaX7KhwGfQkAdbVdpe2i1+RjVrOGXJiHYoqv0rnLdNBBBvzL3IqZ+bwJw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com; spf=pass smtp.mailfrom=marvell.com; dkim=pass (1024-bit key) header.d=marvell.com header.i=@marvell.com header.b=MmKxjzF7; arc=fail smtp.client-ip=67.231.148.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=marvell.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marvell.com
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44CFsUoT007210;
	Sun, 12 May 2024 09:07:14 -0700
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
	by mx0a-0016f401.pphosted.com (PPS) with ESMTPS id 3y261jt8st-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 12 May 2024 09:07:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dw2hjPaY8y5AtT5c34UZPU7EHtB/zCES6JjGTgwM/ihFR28tcpN5tsMxGTs1nPUzZl3oEjyudsKZn+6atDhLROl/bId54Gtkuib93GDlwsTBvuERcDYPNru9tRffJTY3mBKoQgXEB7Tn9Gl0bP0ul2rdvfHldl7YsI9cRGdpB2UBH2ax6Brghp9U4mNT1UY6D0fhs81/2OpB8OvQtqAxVbXYAzGFUiIFdzruV+5O5o5Q/aQG+exLnlR1qrpOPeAGG2QwoOtS8n/fkzPDQzCXiX7CyF6RaOjUkx4Ps7je0t4v0Jd2dM+x+U5AvVr6wWijV3kCkAv6ubiFFEnsNg14aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NXxkT/KamcPUQ0Vop3iQMw2ECjq7+BTPxzetjz7oeHM=;
 b=FrvqgQxdlF+XE6le8Lq0Z8BkwfmjppQqwC21oU5wo3MNdzdAqLBsUOjwFtBRJaiSQY/UqqltX3KSSUDt8jxMjdQqtbGJD+k+0of+OOCM56OR+Huflqs/cSF58SP1gX+2/eqPsnm9B3vAgw4yN76/ydLl9jxRqHVf/YvEWoizHXCjThRj1y0Qd2xyP9CIuyqJncUg5lZjv3CH12fJxHVbe4yQ+ttj36G/DNSEY5FShx9w+ll0yQmTN7g3xZW+2HhkSU6tlOJSq6HHz6FJue8gfJuLZV9nsRAIfn8hDX3Q7Ab4ePMWIQjFc4WmAcnJpToOmYquCYsVY93Ab69pVQbEIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NXxkT/KamcPUQ0Vop3iQMw2ECjq7+BTPxzetjz7oeHM=;
 b=MmKxjzF7OVCzqnTi/KPMThC81lRtGOn1bqXKO84kljMxHbOvD2+fCM/YD103NLA3JzVILRsS0k6eyA2Qlgda5kqK5jpTKPvDX0XKN3cs3/TxMT9QvUoxX6XaprkLv4Dv28/xJHEAN+F//4A2SwOiZhbAraX4FtgseCOdbM7fIN0=
Received: from MW4PR18MB5084.namprd18.prod.outlook.com (2603:10b6:303:1a7::8)
 by BY1PR18MB5277.namprd18.prod.outlook.com (2603:10b6:a03:52f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Sun, 12 May
 2024 16:07:11 +0000
Received: from MW4PR18MB5084.namprd18.prod.outlook.com
 ([fe80::1fe2:3c84:eebf:a905]) by MW4PR18MB5084.namprd18.prod.outlook.com
 ([fe80::1fe2:3c84:eebf:a905%5]) with mapi id 15.20.7544.052; Sun, 12 May 2024
 16:07:11 +0000
Message-ID: <5beb1261-a173-4ec2-b075-9a6d9c79d62e@marvell.com>
Date: Sun, 12 May 2024 21:37:00 +0530
User-Agent: Mozilla Thunderbird
Subject: [PATCH 3/3] phy: airoha: Add PCIe PHY driver for EN7581 SoC.
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org, lorenzo.bianconi83@gmail.com,
        conor@kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, nbd@nbd.name,
        john@phrozen.org, dd@embedd.com, catalin.marinas@arm.com,
        will@kernel.org, upstream@airoha.com,
        angelogioacchino.delregno@collabora.com
References: <cover.1715527166.git.lorenzo@kernel.org>
 <0005610f38bef591b0f97bafcc58dffdfa1f0ead.1715527166.git.lorenzo@kernel.org>
Content-Language: en-US
From: Amit Singh Tomar <amitsinght@marvell.com>
In-Reply-To: <0005610f38bef591b0f97bafcc58dffdfa1f0ead.1715527166.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0078.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::23) To MW4PR18MB5084.namprd18.prod.outlook.com
 (2603:10b6:303:1a7::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR18MB5084:EE_|BY1PR18MB5277:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a48ed4b-c83c-4241-b4fb-08dc729d9469
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|7416005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NmorQXpzNGxZb1pjN1RLY0NsNHZ4TmNYWW42Ym5oUXQwL3ZwcXV2QVJvek5P?=
 =?utf-8?B?b0JNNitSWEJDQmxoZGdLcWsyTXZPL1hmcmdhRFpNNmR0VEZNU1RuSnJnZ3F6?=
 =?utf-8?B?Mk5wVk9aL09QSmlSeDZmc2pYQUJDbS84Z2FWYlZqeGFYSWZ1NVY2dmFSa1Jn?=
 =?utf-8?B?dW1EaFNxYm1HVVhvZjNrY093NUhwN3FvczNLcENodUYxRmJwcmNaaCtNNmNQ?=
 =?utf-8?B?Q2I1N1NkTTBDNjVEeEdPaWxNMXRNNTltci9UYmVNZUlxQk8zQ2RGTjUvb0Vo?=
 =?utf-8?B?RzBQL3ZBUHAvQ1dUTnRvRmM3UXY4eWNwSlh3RzBLMVQwbmYxaDFsZVNhODU1?=
 =?utf-8?B?OVIxeERhYlZZZGhwUDh3eWtBVnlva1E5YzFGQWVlOHBGY1BVQ1JBN3h4Q2Fi?=
 =?utf-8?B?RVIrb0dvWGR4UEVJd1N6WlNBL296TVhzRGllSEF4amIxOXo3NklGVVFOTVJq?=
 =?utf-8?B?Zmo1bFp1UDdLeDhlTlBtMjdzMnlPUmVnd3J3K1M3R3NNOFo2dCs0UmIrZVVv?=
 =?utf-8?B?VWFIQWpyYVN1MWpxVVVaWE9wN1VJdzRKUGpkaGZWQ2FNano1NUE1ajlFc1Fy?=
 =?utf-8?B?VDhLL2tVeE94NFJrYkpqSG45UEdzTFpheVg1bFJJSUlqdWlzeitiaDY2cmVR?=
 =?utf-8?B?dXBOOGxuSkx6ZGdvaTV5a1lPd2dtNXB1ZVRPdEluUWxMMkZ1UUQyRDJlMUlv?=
 =?utf-8?B?TDZKbE5TMVJkZmlIVHp6QXBRRmNXRzBZQ0hwV0N3M2toWmxsQnlvSmJxdk1D?=
 =?utf-8?B?VkNiOXlqZStBaUMvbGxxMWJCbFUvTTdyU0p5OGc0MXJiK1kzV3c4M2lkbjRz?=
 =?utf-8?B?Tm9RQXBpMDhHbVZlL0phbDZQQVpvRXRqbjRSdHRTZGZ1b213ZHpTSXhkSlJZ?=
 =?utf-8?B?cDB5d3k3dmsxejF0RXlHY3Z4VXZoMGcyUlpucXR6L1BvQ09rOC9uMkFuWStP?=
 =?utf-8?B?bWlxbkZaaWJPQTQ1MGUxeXNHUlExemtxT2lNRjhtWGhsMW5zU2o2T0tBRThm?=
 =?utf-8?B?NU82KzhUVW5RZk1lQVUxdWdsd3FqTXVmb24xUGZiaU1rZVlBS2JzcUczUzVD?=
 =?utf-8?B?cDVka0RQZTlEZ2tqTzNKOTQzNVRkekUrRTdjVFh4SCtxTHlMcFAwWnUwa1Z0?=
 =?utf-8?B?TTRST29SNG1udE1vSXMyQjlCaXNZc2w1WlYwOFRlQWhhQ1BQa0d2bWh6STgy?=
 =?utf-8?B?WTlkMHUyMWMwWXlKOEFJeVFDQzROTENrT0VteW5YRDRHVU1qcEp2R1dWYys0?=
 =?utf-8?B?dGZHVkF5cFF3UlpZTTY2cnI3UGtxUVcwRWJTTlgxL041SkdOUm0yUytZeXl1?=
 =?utf-8?B?bVBXc3d3Y3IxVDQ1aUNQMng3RVM5SGo2eGE0NG5wL2FoZjM4R0M4V0hYK1Ir?=
 =?utf-8?B?SE5YMzdxWHFQODI3c1VYWEE0UTRMNWQvaG1TS1dxUk96RUVsSUQ2bXFzM3hS?=
 =?utf-8?B?NGxtQndhVXdZdGZlYzQ4WFdUNUJJVzR4YURzaldWWlNZcWVIYzRlYjVQSTg2?=
 =?utf-8?B?c2F0R0VkTmNFRmNWV0Nvb09vTlFIaytPWllJNjFxeXZMcmw0aURlZ29PcWhI?=
 =?utf-8?B?dExlckVuLzJqdm9WUVRGcGRyNHBrNDFrUHZFbXNMNkxSRmRmWTd4aWd0Q2NP?=
 =?utf-8?B?MndSbFpsNGRlMlVqWFpvTGZ5aE1zWis2WS8zSlVGUm40aGRmVlIyQ21DSDB0?=
 =?utf-8?B?dllramhxRVlvbXl6STYwWWYwMUlFQ0NaTG51cEVOcmNFNmpBU0ZobExnPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR18MB5084.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?U3AvQ2MvMU1lSGtJcklZWElRbG5uM1hIYVFQWXVtMElwQmcrV05GSjQ4TzlH?=
 =?utf-8?B?TnRwRVpqZS9leVRQOWtMelBGQmVHSHlTTEZBWkhDaHQxS0s1d0FIRms5MFdK?=
 =?utf-8?B?SWVQcHF2Ly9UT3VDN3pxZzZibi9JQUxnVFJPNjNaVS9yVDI2YWs0K2J4ZGV6?=
 =?utf-8?B?UGtyS2NSQ0UwSUJBbXFJdG5KMGV4amZWS2xrQXpGNlJLMUR0d2dRVS9yb3dJ?=
 =?utf-8?B?eG52dzQzREcray9WNFEwSzZ3Z2pqZWRvQlhUUllzdktzM24vaWw5Nk13OUJC?=
 =?utf-8?B?N2NLWlJReWd3dFZ6emdCblNBNnQ1d3hPc0NKcXpHK1ZSRFRKcVI4Zkh2SDZY?=
 =?utf-8?B?bHZ2SzNPdVNlQUptdUlVTUY0YkZvbmw0dmRXay9xQjdoOFd3R1BkcUIwUm5h?=
 =?utf-8?B?cFBCMXhqLzRkUnVoT2hHRUJURGdkc3M1TU95ZXd6MVFhM1BoYjlkUUp1Mmlu?=
 =?utf-8?B?WFI0aFYza1lzdDhBVElnd0VtT0dqT1YxQTdxOGF3cmNMWDdvVjV5VjFBTDBH?=
 =?utf-8?B?SCtXRDFTWmZuV0phK3lMMFo4WDZoelFMLzAySnJRT3R3WDBXVktFaXhYdjF0?=
 =?utf-8?B?a1l4dFJ6ZDg2NlZTVDlmSFY5VDJjTzZ3S3J1N1ZUWWxTdFpsZVNnQUVtM2xK?=
 =?utf-8?B?MWc0TGRkMmNmQTJhS3JzY0p3MWlha2F5RWxwcUk2WnNTNGlVa0VYaDQ2Ylho?=
 =?utf-8?B?YVBkd2tlR0hPSDJIbmljQVZEdWtuQk4zcTZQMXFFdFQxblJwMzNTRUNteHQ2?=
 =?utf-8?B?V2hoZ1oyWlcvZVZQYVovWUJ4WXNibjNiaDlxbVNIUmszNm45VHM3WFVRd3Fp?=
 =?utf-8?B?N2o1bStFN2pHUExSbzdpYnhyK1Z2WDU2SHI3ZUdjVnlCRS94UVdjRHlXVFk1?=
 =?utf-8?B?YWI0WmZhMUJnNHhjNlkrZFlGTVVQRHhZamxDaS9tbkVOUm9YbjNacW5FUmRZ?=
 =?utf-8?B?ci9WOXhrM05NWjMrMUFoMldzRGZwdllYbXNxNVFsMTVwZndyeHIyY3hMaDdx?=
 =?utf-8?B?MGVWb2Z4V1BnR0YxaU9kYWV4VGExSmNjZnVlZlJCQ283QUNmU1Q1bFlNa3la?=
 =?utf-8?B?T3NYZThDdmMrUEQvWkp0UWZQSm5NOHpQWjUwbkoyWEoycEtrVHIySE5uVHJJ?=
 =?utf-8?B?TU1UdDYxbHdJcmJxVHpCcmU3b1J2dUFYV2x0dFNEeVl0c2ZXSkNwMTZXb2Jm?=
 =?utf-8?B?b0ovT2l3SEg5eXJSMlBqOUZoQk5pMU9mSzJkWklLb2ZXUUtFYnNoUjQ5U0ZL?=
 =?utf-8?B?NVNKOHR3U29YQy83aGZHbGJiQm5pL0IrOFZiSFhIY0tPSm5leG9HVVo4MUUy?=
 =?utf-8?B?YUczVkpEWUZEY1FvUEZZQW5rYUJINFNGSGZjQklCOEVSSnFKSkQ0Q3RPa2du?=
 =?utf-8?B?azZPVlJDUlIveERBdHUxR09OZ3A0RVVYQk1LSkVzL1ZFNHROTHlWSHlBeVVu?=
 =?utf-8?B?d0U3TlJ0VHYvOEdwYzFYU3hRdVF4ejh0V0ErS0V4VnNaNmhWVU9zZFJFamFY?=
 =?utf-8?B?M0M1cmxNcGNOaTBVWlVydXZpUVhKdmRpQWlTbWpINkhMb244SUlrRmZTOHYx?=
 =?utf-8?B?WmxURXRMT2RkRHNsdkJuZVpGOW42QXJmYmpVMVpiRFRtejJyMTd3dS9xY3d1?=
 =?utf-8?B?YmgyYzhrZGhzQVZpSjZwZVk1T2xUT3l1dXRhY1FXaEEzY2F2ekxvWmgrZTJW?=
 =?utf-8?B?U1VJUzRuODlBQ0pvY0g4OC9EQTNma2JvRnN4MWxyNk1IZGFId3ZVeEY0ZDJ1?=
 =?utf-8?B?K1V6RlYxeXgyY2YrcVQ5aEp3aGZoM0prYk5yejlDcEJ0NThxOWtmU1ZNKzNC?=
 =?utf-8?B?bkhYbmxrbTRFcmpEVStwR3NBbDB4TDJrcWRORS9qanpHVFlTUkxDSFJINEZJ?=
 =?utf-8?B?dWdyQmpLdmVYWi91QjFDc2lmNTBKVmZCcExzVVRhVG1DSklVTmxzZDlWK2Fj?=
 =?utf-8?B?YzVBdm1lMDR1RlorWWtwb3Z3NHBRTkhqbGp5Q2cyVXpzSk14VlE2OFc0SDZR?=
 =?utf-8?B?cUVmd2IxSTNNTVZwcXZ4QUZaL3NZdWpOZXhaMmkxdXdyaC9XWHJ5ZUUxcXVs?=
 =?utf-8?B?WXZJK051Unlrc2FDRm5nSW1OQkRXWjhlRlkvL0c3TXVybldRZ1FHT01WaG9E?=
 =?utf-8?Q?yuPNOBZUrIp1qCLQmqx5JU8iZ?=
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a48ed4b-c83c-4241-b4fb-08dc729d9469
X-MS-Exchange-CrossTenant-AuthSource: MW4PR18MB5084.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2024 16:07:11.0429
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lt8GQhm1a8cPAR/RjpEgucv6rxyO5gq7Sow3SgI0seau2cuxMHLvY/2HEMrZKSNf79htt/W8oaK7ZmJx0jSVrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR18MB5277
X-Proofpoint-GUID: y71A8iLG7Mylk3WmnYfwiB2mkWtYMaaQ
X-Proofpoint-ORIG-GUID: y71A8iLG7Mylk3WmnYfwiB2mkWtYMaaQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-12_11,2024-05-10_02,2023-05-22_02

Hi,

> 
> ----------------------------------------------------------------------
> Introduce support for Airoha PCIe PHY controller available in EN7581
> SoC.
> 
> Tested-by: Zhengping Zhang <zhengping.zhang@airoha.com>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>   MAINTAINERS                        |    8 +
>   arch/arm64/configs/defconfig       |    1 +
>   drivers/phy/Kconfig                |   10 +
>   drivers/phy/Makefile               |    1 +
>   drivers/phy/phy-airoha-pcie-regs.h |  476 +++++++++++
>   drivers/phy/phy-airoha-pcie.c      | 1227 ++++++++++++++++++++++++++++
>   6 files changed, 1723 insertions(+)
>   create mode 100644 drivers/phy/phy-airoha-pcie-regs.h
>   create mode 100644 drivers/phy/phy-airoha-pcie.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ce9fac46f741..d918d41a80a3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -653,6 +653,14 @@ S:	Supported
>   F:	fs/aio.c
>   F:	include/linux/*aio*.h
>   
> +AIROHA PCIE PHY DRIVER
> +M:	Lorenzo Bianconi <lorenzo@kernel.org>
> +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/phy/airoha,pcie-phy.yaml
> +F:	drivers/phy/phy-airoha-pcie-regs.h
> +F:	drivers/phy/phy-airoha-pcie.c
> +
>   AIROHA SPI SNFI DRIVER
>   M:	Lorenzo Bianconi <lorenzo@kernel.org>
>   M:	Ray Liu <ray.liu@airoha.com>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index a53c58584bcf..c0eacced5d41 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -1479,6 +1479,7 @@ CONFIG_RESET_QCOM_AOSS=y
>   CONFIG_RESET_QCOM_PDC=m
>   CONFIG_RESET_RZG2L_USBPHY_CTRL=y
>   CONFIG_RESET_TI_SCI=y
> +CONFIG_PHY_AIROHA_PCIE=y
>   CONFIG_PHY_XGENE=y
>   CONFIG_PHY_CAN_TRANSCEIVER=m
>   CONFIG_PHY_SUN4I_USB=y
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index 787354b849c7..8f9a7a6c4bba 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -72,6 +72,16 @@ config PHY_CAN_TRANSCEIVER
>   	  functional modes using gpios and sets the attribute max link
>   	  rate, for CAN drivers.
>   
> +config PHY_AIROHA_PCIE
> +	tristate "Airoha PCIe-PHY Driver"
> +	depends on ARCH_AIROHA || COMPILE_TEST
> +	depends on OF
> +	select GENERIC_PHY
> +	help
> +	  Say 'Y' here to add support for Airoha PCIe PHY driver.
> +	  This driver create the basic PHY instance and provides initialize
> +	  callback for PCIe GEN3 port.
> +
>   source "drivers/phy/allwinner/Kconfig"
>   source "drivers/phy/amlogic/Kconfig"
>   source "drivers/phy/broadcom/Kconfig"
> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
> index 868a220ed0f6..5fcbce5f9ab1 100644
> --- a/drivers/phy/Makefile
> +++ b/drivers/phy/Makefile
> @@ -10,6 +10,7 @@ obj-$(CONFIG_PHY_LPC18XX_USB_OTG)	+= phy-lpc18xx-usb-otg.o
>   obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
>   obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
>   obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
> +obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
>   obj-y					+= allwinner/	\
>   					   amlogic/	\
>   					   broadcom/	\
> diff --git a/drivers/phy/phy-airoha-pcie-regs.h b/drivers/phy/phy-airoha-pcie-regs.h
> new file mode 100644
> index 000000000000..37543e0faa23
> --- /dev/null
> +++ b/drivers/phy/phy-airoha-pcie-regs.h
> @@ -0,0 +1,476 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2024 AIROHA Inc
> + * Author: Lorenzo Bianconi <lorenzo@kernel.org>
> + */
> +
> +#ifndef _PHY_AIROHA_PCIE_H
> +#define _PHY_AIROHA_PCIE_H
> +
> +/* CSR_2L */
> +#define REG_CSR_2L_CMN				0x0000
> +#define CSR_2L_PXP_CMN_LANE_EN			BIT(0)
> +#define CSR_2L_PXP_CMN_TRIM_MASK		GENMASK(28, 24)
> +
> +#define REG_CSR_2L_JCPLL_IB_EXT			0x0004
> +#define REG_CSR_2L_JCPLL_LPF_SHCK_EN		BIT(8)
> +#define CSR_2L_PXP_JCPLL_CHP_IBIAS		GENMASK(21, 16)
> +#define CSR_2L_PXP_JCPLL_CHP_IOFST		GENMASK(29, 24)
> +
> +#define REG_CSR_2L_JCPLL_LPF_BR			0x0008
> +#define CSR_2L_PXP_JCPLL_LPF_BR			GENMASK(4, 0)
> +#define CSR_2L_PXP_JCPLL_LPF_BC			GENMASK(12, 8)
> +#define CSR_2L_PXP_JCPLL_LPF_BP			GENMASK(20, 16)
> +#define CSR_2L_PXP_JCPLL_LPF_BWR		GENMASK(28, 24)
> +
> +#define REG_CSR_2L_JCPLL_LPF_BWC		0x000c
> +#define CSR_2L_PXP_JCPLL_LPF_BWC		GENMASK(4, 0)
> +#define CSR_2L_PXP_JCPLL_KBAND_CODE		GENMASK(23, 16)
> +#define CSR_2L_PXP_JCPLL_KBAND_DIV		GENMASK(26, 24)
> +
> +#define REG_CSR_2L_JCPLL_KBAND_KFC		0x0010
> +#define CSR_2L_PXP_JCPLL_KBAND_KFC		GENMASK(1, 0)
> +#define CSR_2L_PXP_JCPLL_KBAND_KF		GENMASK(9, 8)
> +#define CSR_2L_PXP_JCPLL_KBAND_KS		GENMASK(17, 16)
> +#define CSR_2L_PXP_JCPLL_POSTDIV_EN		BIT(24)
> +
> +#define REG_CSR_2L_JCPLL_MMD_PREDIV_MODE	0x0014
> +#define CSR_2L_PXP_JCPLL_MMD_PREDIV_MODE	GENMASK(1, 0)
> +#define CSR_2L_PXP_JCPLL_POSTDIV_D2		BIT(16)
> +#define CSR_2L_PXP_JCPLL_POSTDIV_D5		BIT(24)
> +
> +#define CSR_2L_PXP_JCPLL_MONCK			0x0018
> +#define CSR_2L_PXP_JCPLL_REFIN_DIV		GENMASK(25, 24)
> +
> +#define REG_CSR_2L_JCPLL_RST_DLY		0x001c
> +#define CSR_2L_PXP_JCPLL_RST_DLY		GENMASK(2, 0)
> +#define CSR_2L_PXP_JCPLL_RST			BIT(8)
> +#define CSR_2L_PXP_JCPLL_SDM_DI_EN		BIT(16)
> +#define CSR_2L_PXP_JCPLL_SDM_DI_LS		GENMASK(25, 24)
> +
> +#define REG_CSR_2L_JCPLL_SDM_IFM		0x0020
> +#define CSR_2L_PXP_JCPLL_SDM_IFM		BIT(0)
> +
> +#define REG_CSR_2L_JCPLL_SDM_HREN		0x0024
> +#define CSR_2L_PXP_JCPLL_SDM_HREN		BIT(0)
> +#define CSR_2L_PXP_JCPLL_TCL_AMP_EN		BIT(8)
> +#define CSR_2L_PXP_JCPLL_TCL_AMP_GAIN		GENMASK(18, 16)
> +#define CSR_2L_PXP_JCPLL_TCL_AMP_VREF		GENMASK(28, 24)
> +
> +#define REG_CSR_2L_JCPLL_TCL_CMP		0x0028
> +#define CSR_2L_PXP_JCPLL_TCL_LPF_EN		BIT(16)
> +#define CSR_2L_PXP_JCPLL_TCL_LPF_BW		GENMASK(26, 24)
> +
> +#define REG_CSR_2L_JCPLL_VCODIV			0x002c
> +#define CSR_2L_PXP_JCPLL_VCO_CFIX		GENMASK(9, 8)
> +#define CSR_2L_PXP_JCPLL_VCO_HALFLSB_EN		BIT(16)
> +#define CSR_2L_PXP_JCPLL_VCO_SCAPWR		GENMASK(26, 24)
> +
> +#define REG_CSR_2L_JCPLL_VCO_TCLVAR		0x0030
> +#define CSR_2L_PXP_JCPLL_VCO_TCLVAR		GENMASK(2, 0)
> +
> +#define REG_CSR_2L_JCPLL_SSC				0x0038
> +#define CSR_2L_PXP_JCPLL_SSC_EN			BIT(0)
> +#define CSR_2L_PXP_JCPLL_SSC_PHASE_INI		BIT(8)
> +#define CSR_2L_PXP_JCPLL_SSC_TRI_EN		BIT(16)
> +
> +#define REG_CSR_2L_JCPLL_SSC_DELTA1		0x003c
> +#define CSR_2L_PXP_JCPLL_SSC_DELTA1		GENMASK(15, 0)
> +#define CSR_2L_PXP_JCPLL_SSC_DELTA		GENMASK(31, 16)
> +
> +#define REG_CSR_2L_JCPLL_SSC_PERIOD		0x0040
> +#define CSR_2L_PXP_JCPLL_SSC_PERIOD		GENMASK(15, 0)
> +
> +#define REG_CSR_2L_JCPLL_TCL_VTP_EN		0x004c
> +#define CSR_2L_PXP_JCPLL_SPARE_LOW		GENMASK(31, 24)
> +
> +#define REG_CSR_2L_JCPLL_TCL_KBAND_VREF		0x0050
> +#define CSR_2L_PXP_JCPLL_TCL_KBAND_VREF		GENMASK(4, 0)
> +#define CSR_2L_PXP_JCPLL_VCO_KBAND_MEAS_EN	BIT(24)
> +
> +#define REG_CSR_2L_750M_SYS_CK			0x0054
> +#define CSR_2L_PXP_TXPLL_LPF_SHCK_EN		BIT(16)
> +#define CSR_2L_PXP_TXPLL_CHP_IBIAS		GENMASK(29, 24)
> +
> +#define REG_CSR_2L_TXPLL_CHP_IOFST		0x0058
> +#define CSR_2L_PXP_TXPLL_CHP_IOFST		GENMASK(5, 0)
> +#define CSR_2L_PXP_TXPLL_LPF_BR			GENMASK(12, 8)
> +#define CSR_2L_PXP_TXPLL_LPF_BC			GENMASK(20, 16)
> +#define CSR_2L_PXP_TXPLL_LPF_BP			GENMASK(28, 24)
> +
> +#define REG_CSR_2L_TXPLL_LPF_BWR		0x005c
> +#define CSR_2L_PXP_TXPLL_LPF_BWR		GENMASK(4, 0)
> +#define CSR_2L_PXP_TXPLL_LPF_BWC		GENMASK(12, 8)
> +#define CSR_2L_PXP_TXPLL_KBAND_CODE		GENMASK(31, 24)
> +
> +#define REG_CSR_2L_TXPLL_KBAND_DIV		0x0060
> +#define CSR_2L_PXP_TXPLL_KBAND_DIV		GENMASK(2, 0)
> +#define CSR_2L_PXP_TXPLL_KBAND_KFC		GENMASK(9, 8)
> +#define CSR_2L_PXP_TXPLL_KBAND_KF		GENMASK(17, 16)
> +#define CSR_2L_PXP_txpll_KBAND_KS		GENMASK(25, 24)
> +
> +#define REG_CSR_2L_TXPLL_POSTDIV		0x0064
> +#define CSR_2L_PXP_TXPLL_POSTDIV_EN		BIT(0)
> +#define CSR_2L_PXP_TXPLL_MMD_PREDIV_MODE	GENMASK(9, 8)
> +#define CSR_2L_PXP_TXPLL_PHY_CK1_EN		BIT(24)
> +
> +#define REG_CSR_2L_TXPLL_PHY_CK2		0x0068
> +#define CSR_2L_PXP_TXPLL_REFIN_INTERNAL		BIT(24)
> +
> +#define REG_CSR_2L_TXPLL_REFIN_DIV		0x006c
> +#define CSR_2L_PXP_TXPLL_REFIN_DIV		GENMASK(1, 0)
> +#define CSR_2L_PXP_TXPLL_RST_DLY		GENMASK(10, 8)
> +#define CSR_2L_PXP_TXPLL_PLL_RSTB		BIT(16)
> +
> +#define REG_CSR_2L_TXPLL_SDM_DI_LS		0x0070
> +#define CSR_2L_PXP_TXPLL_SDM_DI_LS		GENMASK(1, 0)
> +#define CSR_2L_PXP_TXPLL_SDM_IFM		BIT(8)
> +#define CSR_2L_PXP_TXPLL_SDM_ORD		GENMASK(25, 24)
> +
> +#define REG_CSR_2L_TXPLL_SDM_OUT		0x0074
> +#define CSR_2L_PXP_TXPLL_TCL_AMP_EN		BIT(16)
> +#define CSR_2L_PXP_TXPLL_TCL_AMP_GAIN		GENMASK(26, 24)
> +
> +#define REG_CSR_2L_TXPLL_TCL_AMP_VREF		0x0078
> +#define CSR_2L_PXP_TXPLL_TCL_AMP_VREF		GENMASK(4, 0)
> +#define CSR_2L_PXP_TXPLL_TCL_LPF_EN		BIT(24)
> +
> +#define REG_CSR_2L_TXPLL_TCL_LPF_BW		0x007c
> +#define CSR_2L_PXP_TXPLL_TCL_LPF_BW		GENMASK(2, 0)
> +#define CSR_2L_PXP_TXPLL_VCO_CFIX		GENMASK(17, 16)
> +#define CSR_2L_PXP_TXPLL_VCO_HALFLSB_EN		BIT(24)
> +
> +#define REG_CSR_2L_TXPLL_VCO_SCAPWR		0x0080
> +#define CSR_2L_PXP_TXPLL_VCO_SCAPWR		GENMASK(2, 0)
> +
> +#define REG_CSR_2L_TXPLL_SSC			0x0084
> +#define CSR_2L_PXP_TXPLL_SSC_EN			BIT(0)
> +#define CSR_2L_PXP_TXPLL_SSC_PHASE_INI		BIT(8)
> +
> +#define REG_CSR_2L_TXPLL_SSC_DELTA1		0x0088
> +#define CSR_2L_PXP_TXPLL_SSC_DELTA1		GENMASK(15, 0)
> +#define CSR_2L_PXP_TXPLL_SSC_DELTA		GENMASK(31, 16)
> +
> +#define REG_CSR_2L_TXPLL_SSC_PERIOD		0x008c
> +#define CSR_2L_PXP_txpll_SSC_PERIOD		GENMASK(15, 0)
> +
> +#define REG_CSR_2L_TXPLL_VTP			0x0090
> +#define CSR_2L_PXP_TXPLL_VTP_EN			BIT(0)
> +
> +#define REG_CSR_2L_TXPLL_TCL_VTP		0x0098
> +#define CSR_2L_PXP_TXPLL_SPARE_L		GENMASK(31, 24)
> +
> +#define REG_CSR_2L_TXPLL_TCL_KBAND_VREF		0x009c
> +#define CSR_2L_PXP_TXPLL_TCL_KBAND_VREF		GENMASK(4, 0)
> +#define CSR_2L_PXP_TXPLL_VCO_KBAND_MEAS_EN	BIT(24)
> +
> +#define REG_CSR_2L_TXPLL_POSTDIV_D256		0x00a0
> +#define CSR_2L_PXP_CLKTX0_AMP			GENMASK(10, 8)
> +#define CSR_2L_PXP_CLKTX0_OFFSET		GENMASK(17, 16)
> +#define CSR_2L_PXP_CLKTX0_SR			GENMASK(25, 24)
> +
> +#define REG_CSR_2L_CLKTX0_FORCE_OUT1		0x00a4
> +#define CSR_2L_PXP_CLKTX0_HZ			BIT(8)
> +#define CSR_2L_PXP_CLKTX0_IMP_SEL		GENMASK(20, 16)
> +#define CSR_2L_PXP_CLKTX1_AMP			GENMASK(26, 24)
> +
> +#define REG_CSR_2L_CLKTX1_OFFSET		0x00a8
> +#define CSR_2L_PXP_CLKTX1_OFFSET		GENMASK(1, 0)
> +#define CSR_2L_PXP_CLKTX1_SR			GENMASK(9, 8)
> +#define CSR_2L_PXP_CLKTX1_HZ			BIT(24)
> +
> +#define REG_CSR_2L_CLKTX1_IMP_SEL		0x00ac
> +#define CSR_2L_PXP_CLKTX1_IMP_SEL		GENMASK(4, 0)
> +
> +#define REG_CSR_2L_PLL_CMN_RESERVE0		0x00b0
> +#define CSR_2L_PXP_PLL_RESERVE_MASK		GENMASK(15, 0)
> +
> +#define REG_CSR_2L_TX0_CKLDO			0x00cc
> +#define CSR_2L_PXP_TX0_CKLDO_EN			BIT(0)
> +#define CSR_2L_PXP_TX0_DMEDGEGEN_EN		BIT(24)
> +
> +#define REG_CSR_2L_TX1_CKLDO			0x00e8
> +#define CSR_2L_PXP_TX1_CKLDO_EN			BIT(0)
> +#define CSR_2L_PXP_TX1_DMEDGEGEN_EN		BIT(24)
> +
> +#define REG_CSR_2L_TX1_MULTLANE			0x00ec
> +#define CSR_2L_PXP_TX1_MULTLANE_EN		BIT(0)
> +
> +#define REG_CSR_2L_RX0_REV0			0x00fc
> +#define CSR_2L_PXP_VOS_PNINV			GENMASK(3, 2)
> +#define CSR_2L_PXP_FE_GAIN_NORMAL_MODE		GENMASK(6, 4)
> +#define CSR_2L_PXP_FE_GAIN_TRAIN_MODE		GENMASK(10, 8)
> +
> +#define REG_CSR_2L_RX0_PHYCK_DIV		0x0100
> +#define CSR_2L_PXP_RX0_PHYCK_SEL		GENMASK(9, 8)
> +#define CSR_2L_PXP_RX0_PHYCK_RSTB		BIT(16)
> +#define CSR_2L_PXP_RX0_TDC_CK_SEL		BIT(24)
> +
> +#define REG_CSR_2L_CDR0_PD_PICAL_CKD8_INV	0x0104
> +#define CSR_2L_PXP_CDR0_PD_EDGE_DISABLE		BIT(8)
> +
> +#define REG_CSR_2L_CDR0_LPF_RATIO		0x0110
> +#define CSR_2L_PXP_CDR0_LPF_TOP_LIM		GENMASK(26, 8)
> +
> +#define REG_CSR_2L_CDR0_PR_INJ_MODE		0x011c
> +#define CSR_2L_PXP_CDR0_INJ_FORCE_OFF		BIT(24)
> +
> +#define REG_CSR_2L_CDR0_PR_BETA_DAC		0x0120
> +#define CSR_2L_PXP_CDR0_PR_BETA_SEL		GENMASK(19, 16)
> +#define CSR_2L_PXP_CDR0_PR_KBAND_DIV		GENMASK(26, 24)
> +
> +#define REG_CSR_2L_CDR0_PR_VREG_IBAND		0x0124
> +#define CSR_2L_PXP_CDR0_PR_VREG_IBAND		GENMASK(2, 0)
> +#define CSR_2L_PXP_CDR0_PR_VREG_CKBUF		GENMASK(10, 8)
> +
> +#define REG_CSR_2L_CDR0_PR_CKREF_DIV		0x0128
> +#define CSR_2L_PXP_CDR0_PR_CKREF_DIV		GENMASK(1, 0)
> +
> +#define REG_CSR_2L_CDR0_PR_MONCK		0x012c
> +#define CSR_2L_PXP_CDR0_PR_MONCK_ENABLE		BIT(0)
> +#define CSR_2L_PXP_CDR0_PR_RESERVE0		GENMASK(19, 16)
> +
> +#define REG_CSR_2L_CDR0_PR_COR_HBW		0x0130
> +#define CSR_2L_PXP_CDR0_PR_LDO_FORCE_ON		BIT(8)
> +#define CSR_2L_PXP_CDR0_PR_CKREF_DIV1		GENMASK(17, 16)
> +
> +#define REG_CSR_2L_CDR0_PR_MONPI		0x0134
> +#define CSR_2L_PXP_CDR0_PR_XFICK_EN		BIT(8)
> +
> +#define REG_CSR_2L_RX0_SIGDET_DCTEST		0x0140
> +#define CSR_2L_PXP_RX0_SIGDET_LPF_CTRL		GENMASK(9, 8)
> +#define CSR_2L_PXP_RX0_SIGDET_PEAK		GENMASK(25, 24)
> +
> +#define REG_CSR_2L_RX0_SIGDET_VTH_SEL		0x0144
> +#define CSR_2L_PXP_RX0_SIGDET_VTH_SEL		GENMASK(4, 0)
> +#define CSR_2L_PXP_RX0_FE_VB_EQ1_EN		BIT(24)
> +
> +#define REG_CSR_2L_PXP_RX0_FE_VB_EQ2		0x0148
> +#define CSR_2L_PXP_RX0_FE_VB_EQ2_EN		BIT(0)
> +#define CSR_2L_PXP_RX0_FE_VB_EQ3_EN		BIT(8)
> +#define CSR_2L_PXP_RX0_FE_VCM_GEN_PWDB		BIT(16)
> +
> +#define REG_CSR_2L_PXP_RX0_OSCAL_CTLE1IOS	0x0158
> +#define CSR_2L_PXP_RX0_PR_OSCAL_VGA1IOS		GENMASK(29, 24)
> +
> +#define REG_CSR_2L_PXP_RX0_OSCA_VGA1VOS		0x015c
> +#define CSR_2L_PXP_RX0_PR_OSCAL_VGA1VOS		GENMASK(5, 0)
> +#define CSR_2L_PXP_RX0_PR_OSCAL_VGA2IOS		GENMASK(13, 8)
> +
> +#define REG_CSR_2L_RX1_REV0			0x01b4
> +
> +#define REG_CSR_2L_RX1_PHYCK_DIV		0x01b8
> +#define CSR_2L_PXP_RX1_PHYCK_SEL		GENMASK(9, 8)
> +#define CSR_2L_PXP_RX1_PHYCK_RSTB		BIT(16)
> +#define CSR_2L_PXP_RX1_TDC_CK_SEL		BIT(24)
> +
> +#define REG_CSR_2L_CDR1_PD_PICAL_CKD8_INV	0x01bc
> +#define CSR_2L_PXP_CDR1_PD_EDGE_DISABLE		BIT(8)
> +
> +#define REG_CSR_2L_CDR1_PR_BETA_DAC		0x01d8
> +#define CSR_2L_PXP_CDR1_PR_BETA_SEL		GENMASK(19, 16)
> +#define CSR_2L_PXP_CDR1_PR_KBAND_DIV		GENMASK(26, 24)
> +
> +#define REG_CSR_2L_CDR1_PR_MONCK		0x01e4
> +#define CSR_2L_PXP_CDR1_PR_MONCK_ENABLE		BIT(0)
> +#define CSR_2L_PXP_CDR1_PR_RESERVE0		GENMASK(19, 16)
> +
> +#define REG_CSR_2L_CDR1_LPF_RATIO		0x01c8
> +#define CSR_2L_PXP_CDR1_LPF_TOP_LIM		GENMASK(26, 8)
> +
> +#define REG_CSR_2L_CDR1_PR_INJ_MODE		0x01d4
> +#define CSR_2L_PXP_CDR1_INJ_FORCE_OFF		BIT(24)
> +
> +#define REG_CSR_2L_CDR1_PR_VREG_IBAND_VAL	0x01dc
> +#define CSR_2L_PXP_CDR1_PR_VREG_IBAND		GENMASK(2, 0)
> +#define CSR_2L_PXP_CDR1_PR_VREG_CKBUF		GENMASK(10, 8)
> +
> +#define REG_CSR_2L_CDR1_PR_CKREF_DIV		0x01e0
> +#define CSR_2L_PXP_CDR1_PR_CKREF_DIV		GENMASK(1, 0)
> +
> +#define REG_CSR_2L_CDR1_PR_COR_HBW		0x01e8
> +#define CSR_2L_PXP_CDR1_PR_LDO_FORCE_ON		BIT(8)
> +#define CSR_2L_PXP_CDR1_PR_CKREF_DIV1		GENMASK(17, 16)
> +
> +#define REG_CSR_2L_CDR1_PR_MONPI		0x01ec
> +#define CSR_2L_PXP_CDR1_PR_XFICK_EN		BIT(8)
> +
> +#define REG_CSR_2L_RX1_DAC_RANGE_EYE		0x01f4
> +#define CSR_2L_PXP_RX1_SIGDET_LPF_CTRL		GENMASK(25, 24)
> +
> +#define REG_CSR_2L_RX1_SIGDET_NOVTH		0x01f8
> +#define CSR_2L_PXP_RX1_SIGDET_PEAK		GENMASK(9, 8)
> +#define CSR_2L_PXP_RX1_SIGDET_VTH_SEL		GENMASK(20, 16)
> +
> +#define REG_CSR_2L_RX1_FE_VB_EQ1		0x0200
> +#define CSR_2L_PXP_RX1_FE_VB_EQ1_EN		BIT(0)
> +#define CSR_2L_PXP_RX1_FE_VB_EQ2_EN		BIT(8)
> +#define CSR_2L_PXP_RX1_FE_VB_EQ3_EN		BIT(16)
> +#define CSR_2L_PXP_RX1_FE_VCM_GEN_PWDB		BIT(24)
> +
> +#define REG_CSR_2L_RX1_OSCAL_VGA1IOS		0x0214
> +#define CSR_2L_PXP_RX1_PR_OSCAL_VGA1IOS		GENMASK(5, 0)
> +#define CSR_2L_PXP_RX1_PR_OSCAL_VGA1VOS		GENMASK(13, 8)
> +#define CSR_2L_PXP_RX1_PR_OSCAL_VGA2IOS		GENMASK(21, 16)
> +
> +/* PMA */
> +#define REG_PCIE_PMA_SS_LCPLL_PWCTL_SETTING_1	0x0004
> +#define PCIE_LCPLL_MAN_PWDB			BIT(0)
> +
> +#define REG_PCIE_PMA_SEQUENCE_DISB_CTRL1	0x010c
> +#define PCIE_DISB_RX_SDCAL_EN			BIT(0)
> +
> +#define REG_PCIE_PMA_CTRL_SEQUENCE_FORCE_CTRL1	0x0114
> +#define PCIE_FORCE_RX_SDCAL_EN			BIT(0)
> +
> +#define REG_PCIE_PMA_SS_RX_FREQ_DET1		0x014c
> +#define PCIE_PLL_FT_LOCK_CYCLECNT		GENMASK(15, 0)
> +#define PCIE_PLL_FT_UNLOCK_CYCLECNT		GENMASK(31, 16)
> +
> +#define REG_PCIE_PMA_SS_RX_FREQ_DET2		0x0150
> +#define PCIE_LOCK_TARGET_BEG			GENMASK(15, 0)
> +#define PCIE_LOCK_TARGET_END			GENMASK(31, 16)
> +
> +#define REG_PCIE_PMA_SS_RX_FREQ_DET3		0x0154
> +#define PCIE_UNLOCK_TARGET_BEG			GENMASK(15, 0)
> +#define PCIE_UNLOCK_TARGET_END			GENMASK(31, 16)
> +
> +#define REG_PCIE_PMA_SS_RX_FREQ_DET4		0x0158
> +#define PCIE_FREQLOCK_DET_EN			GENMASK(2, 0)
> +#define PCIE_LOCK_LOCKTH			GENMASK(11, 8)
> +#define PCIE_UNLOCK_LOCKTH			GENMASK(15, 12)
> +
> +#define REG_PCIE_PMA_SS_RX_CAL1			0x0160
> +#define REG_PCIE_PMA_SS_RX_CAL2			0x0164
> +#define PCIE_CAL_OUT_OS				GENMASK(11, 8)
> +
> +#define REG_PCIE_PMA_SS_RX_SIGDET0		0x0168
> +#define PCIE_SIGDET_WIN_NONVLD_TIMES		GENMASK(28, 24)
> +
> +#define REG_PCIE_PMA_TX_RESET			0x0260
> +#define PCIE_TX_TOP_RST				BIT(0)
> +#define PCIE_TX_CAL_RST				BIT(8)
> +
> +#define REG_PCIE_PMA_RX_FORCE_MODE0		0x0294
> +#define PCIE_FORCE_DA_XPON_RX_FE_GAIN_CTRL	GENMASK(1, 0)
> +
> +#define REG_PCIE_PMA_SS_DA_XPON_PWDB0		0x034c
> +#define PCIE_DA_XPON_CDR_PR_PWDB		BIT(8)
> +
> +#define REG_PCIE_PMA_SW_RESET			0x0460
> +#define PCIE_SW_RX_FIFO_RST			BIT(0)
> +#define PCIE_SW_RX_RST				BIT(1)
> +#define PCIE_SW_TX_RST				BIT(2)
> +#define PCIE_SW_PMA_RST				BIT(3)
> +#define PCIE_SW_ALLPCS_RST			BIT(4)
> +#define PCIE_SW_REF_RST				BIT(5)
> +#define PCIE_SW_TX_FIFO_RST			BIT(6)
> +#define PCIE_SW_XFI_TXPCS_RST			BIT(7)
> +#define PCIE_SW_XFI_RXPCS_RST			BIT(8)
> +#define PCIE_SW_XFI_RXPCS_BIST_RST		BIT(9)
> +#define PCIE_SW_HSG_TXPCS_RST			BIT(10)
> +#define PCIE_SW_HSG_RXPCS_RST			BIT(11)
> +#define PCIE_PMA_SW_RST				(PCIE_SW_RX_FIFO_RST | \
> +						 PCIE_SW_RX_RST | \
> +						 PCIE_SW_TX_RST | \
> +						 PCIE_SW_PMA_RST | \
> +						 PCIE_SW_ALLPCS_RST | \
> +						 PCIE_SW_REF_RST | \
> +						 PCIE_SW_TX_FIFO_RST | \
> +						 PCIE_SW_XFI_TXPCS_RST | \
> +						 PCIE_SW_XFI_RXPCS_RST | \
> +						 PCIE_SW_XFI_RXPCS_BIST_RST | \
> +						 PCIE_SW_HSG_TXPCS_RST | \
> +						 PCIE_SW_HSG_RXPCS_RST)
> +
> +#define REG_PCIE_PMA_RO_RX_FREQDET		0x0530
> +#define PCIE_RO_FL_OUT				GENMASK(31, 16)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC	0x0794
> +#define PCIE_FORCE_DA_PXP_CDR_PR_IDAC		GENMASK(10, 0)
> +#define PCIE_FORCE_SEL_DA_PXP_CDR_PR_IDAC	BIT(16)
> +#define PCIE_FORCE_SEL_DA_PXP_TXPLL_SDM_PCW	BIT(24)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_SDM_PCW	0x0798
> +#define PCIE_FORCE_DA_PXP_TXPLL_SDM_PCW		GENMASK(30, 0)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_VOS	0x079c
> +#define PCIE_FORCE_SEL_DA_PXP_JCPLL_SDM_PCW	BIT(16)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_JCPLL_SDM_PCW	0x0800
> +#define PCIE_FORCE_DA_PXP_JCPLL_SDM_PCW		GENMASK(30, 0)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_CDR_PD_PWDB	0x081c
> +#define PCIE_FORCE_DA_PXP_CDR_PD_PWDB		BIT(0)
> +#define PCIE_FORCE_SEL_DA_PXP_CDR_PD_PWDB	BIT(8)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C	0x0820
> +#define PCIE_FORCE_DA_PXP_CDR_PR_LPF_C_EN	BIT(0)
> +#define PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_C_EN	BIT(8)
> +#define PCIE_FORCE_DA_PXP_CDR_PR_LPF_R_EN	BIT(16)
> +#define PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_R_EN	BIT(24)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB	0x0824
> +#define PCIE_FORCE_DA_PXP_CDR_PR_PWDB			BIT(16)
> +#define PCIE_FORCE_SEL_DA_PXP_CDR_PR_PWDB		BIT(24)
> +
> +#define REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT	0x0828
> +#define PCIE_FORCE_DA_PXP_JCPLL_CKOUT_EN	BIT(0)
> +#define PCIE_FORCE_SEL_DA_PXP_JCPLL_CKOUT_EN	BIT(8)
> +#define PCIE_FORCE_DA_PXP_JCPLL_EN		BIT(16)
> +#define PCIE_FORCE_SEL_DA_PXP_JCPLL_EN		BIT(24)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_RX_SCAN_RST	0x0084c
> +#define PCIE_FORCE_DA_PXP_RX_SIGDET_PWDB	BIT(16)
> +#define PCIE_FORCE_SEL_DA_PXP_RX_SIGDET_PWDB	BIT(24)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT	0x0854
> +#define PCIE_FORCE_DA_PXP_TXPLL_CKOUT_EN	BIT(0)
> +#define PCIE_FORCE_SEL_DA_PXP_TXPLL_CKOUT_EN	BIT(8)
> +#define PCIE_FORCE_DA_PXP_TXPLL_EN		BIT(16)
> +#define PCIE_FORCE_SEL_DA_PXP_TXPLL_EN		BIT(24)
> +
> +#define REG_PCIE_PMA_SCAN_MODE				0x0884
> +#define PCIE_FORCE_DA_PXP_JCPLL_KBAND_LOAD_EN		BIT(0)
> +#define PCIE_FORCE_SEL_DA_PXP_JCPLL_KBAND_LOAD_EN	BIT(8)
> +
> +#define REG_PCIE_PMA_DIG_RESERVE_13		0x08bc
> +#define PCIE_FLL_IDAC_PCIEG1			GENMASK(10, 0)
> +#define PCIE_FLL_IDAC_PCIEG2			GENMASK(26, 16)
> +
> +#define REG_PCIE_PMA_DIG_RESERVE_14		0x08c0
> +#define PCIE_FLL_IDAC_PCIEG3			GENMASK(10, 0)
> +#define PCIE_FLL_LOAD_EN			BIT(16)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_GAIN_CTRL	0x088c
> +#define PCIE_FORCE_DA_PXP_RX_FE_GAIN_CTRL		GENMASK(1, 0)
> +#define PCIE_FORCE_SEL_DA_PXP_RX_FE_GAIN_CTRL		BIT(8)
> +
> +#define REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_PWDB	0x0894
> +#define PCIE_FORCE_DA_PXP_RX_FE_PWDB		BIT(0)
> +#define PCIE_FORCE_SEL_DA_PXP_RX_FE_PWDB	BIT(8)
> +
> +#define REG_PCIE_PMA_DIG_RESERVE_12		0x08b8
> +#define PCIE_FORCE_PMA_RX_SPEED			GENMASK(7, 4)
> +#define PCIE_FORCE_SEL_PMA_RX_SPEED		BIT(7)
> +
> +#define REG_PCIE_PMA_DIG_RESERVE_17		0x08e0
> +
> +#define REG_PCIE_PMA_DIG_RESERVE_18		0x08e4
> +#define PCIE_PXP_RX_VTH_SEL_PCIE_G1		GENMASK(4, 0)
> +#define PCIE_PXP_RX_VTH_SEL_PCIE_G2		GENMASK(12, 8)
> +#define PCIE_PXP_RX_VTH_SEL_PCIE_G3		GENMASK(20, 16)
> +
> +#define REG_PCIE_PMA_DIG_RESERVE_19		0x08e8
> +#define PCIE_PCP_RX_REV0_PCIE_GEN1		GENMASK(31, 16)
> +
> +#define REG_PCIE_PMA_DIG_RESERVE_20		0x08ec
> +#define PCIE_PCP_RX_REV0_PCIE_GEN2		GENMASK(15, 0)
> +#define PCIE_PCP_RX_REV0_PCIE_GEN3		GENMASK(31, 16)
> +
> +#define REG_PCIE_PMA_DIG_RESERVE_21		0x08f0
> +#define REG_PCIE_PMA_DIG_RESERVE_22		0x08f4
> +#define REG_PCIE_PMA_DIG_RESERVE_27		0x0908
> +#define REG_PCIE_PMA_DIG_RESERVE_30		0x0914
> +
> +#endif /* _PHY_AIROHA_PCIE_H */
> diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
> new file mode 100644
> index 000000000000..66d8bee93ee6
> --- /dev/null
> +++ b/drivers/phy/phy-airoha-pcie.c
> @@ -0,0 +1,1227 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2024 AIROHA Inc
> + * Author: Lorenzo Bianconi <lorenzo@kernel.org>
> + */
> +
> +#include <linux/delay.h>
> +#include <linux/bitfield.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +#include "phy-airoha-pcie-regs.h"
> +
> +/**
> + * struct airoha_pcie_phy - PCIe phy driver main structure
> + * @dev: pointer to device
> + * @phy: pointer to generic phy
> + * @csr_2l: Analogic lane IO mapped register base address
> + * @pma0: IO mapped register base address of PMA0-PCIe
> + * @pma1: IO mapped register base address of PMA1-PCIe
> + * @data: pointer to SoC dependent data

The structure below lacks this data pointer.
> + */
> +struct airoha_pcie_phy {
> +	struct device *dev;
> +	struct phy *phy;
> +	void __iomem *csr_2l;
> +	void __iomem *pma0;
> +	void __iomem *pma1;
> +};
> +
> +static void airoha_phy_clear_bits(void __iomem *reg, u32 mask)
> +{
> +	u32 val = readl(reg) & ~mask;
> +
> +	writel(val, reg);
> +}
> +
> +static void airoha_phy_set_bits(void __iomem *reg, u32 mask)
> +{
> +	u32 val = readl(reg) | mask;
> +
> +	writel(val, reg);
> +}
> +
> +static void airoha_phy_update_bits(void __iomem *reg, u32 mask, u32 val)
> +{
> +	u32 tmp = readl(reg);
> +
> +	tmp &= ~mask;
> +	tmp |= val & mask;
> +	writel(tmp, reg);
> +}
> +
> +#define airoha_phy_update_field(reg, mask, val)					\
> +	do {									\
> +		BUILD_BUG_ON_MSG(!__builtin_constant_p((mask)),			\
> +				 "mask is not constant");			\
> +		airoha_phy_update_bits((reg), (mask),				\
> +				       FIELD_PREP((mask), (val)));		\
> +	} while (0)
> +
> +#define airoha_phy_csr_2l_clear_bits(pcie_phy, reg, mask)			\
> +	airoha_phy_clear_bits((pcie_phy)->csr_2l + (reg), (mask))
> +#define airoha_phy_csr_2l_set_bits(pcie_phy, reg, mask)				\
> +	airoha_phy_set_bits((pcie_phy)->csr_2l + (reg), (mask))
> +#define airoha_phy_csr_2l_update_field(pcie_phy, reg, mask, val)		\
> +	airoha_phy_update_field((pcie_phy)->csr_2l + (reg), (mask), (val))
> +#define airoha_phy_pma0_clear_bits(pcie_phy, reg, mask)				\
> +	airoha_phy_clear_bits((pcie_phy)->pma0 + (reg), (mask))
> +#define airoha_phy_pma1_clear_bits(pcie_phy, reg, mask)				\
> +	airoha_phy_clear_bits((pcie_phy)->pma1 + (reg), (mask))
> +#define airoha_phy_pma0_set_bits(pcie_phy, reg, mask)				\
> +	airoha_phy_set_bits((pcie_phy)->pma0 + (reg), (mask))
> +#define airoha_phy_pma1_set_bits(pcie_phy, reg, mask)				\
> +	airoha_phy_set_bits((pcie_phy)->pma1 + (reg), (mask))
> +#define airoha_phy_pma0_update_field(pcie_phy, reg, mask, val)			\
> +	airoha_phy_update_field((pcie_phy)->pma0 + (reg), (mask), (val))
> +#define airoha_phy_pma1_update_field(pcie_phy, reg, mask, val)			\
> +	airoha_phy_update_field((pcie_phy)->pma1 + (reg), (mask), (val))
> +
> +static void
> +airoha_phy_init_lane0_rx_fw_pre_calib(struct airoha_pcie_phy *pcie_phy,
> +				      int gen)
> +{
> +	u32 fl_out_target = gen == 3 ? 41600 : 41941;
> +	u32 lock_cyclecnt = gen == 3 ? 26000 : 32767;
> +	u32 pr_idac, val, cdr_pr_idac_tmp = 0;
> +	int i;
> +
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_SS_LCPLL_PWCTL_SETTING_1,
> +				 PCIE_LCPLL_MAN_PWDB);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET2,
> +				     PCIE_LOCK_TARGET_BEG,
> +				     fl_out_target - 100);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET2,
> +				     PCIE_LOCK_TARGET_END,
> +				     fl_out_target + 100);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET1,
> +				     PCIE_PLL_FT_LOCK_CYCLECNT, lock_cyclecnt);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +				     PCIE_LOCK_LOCKTH, 0x3);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET3,
> +				     PCIE_UNLOCK_TARGET_BEG,
> +				     fl_out_target - 100);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET3,
> +				     PCIE_UNLOCK_TARGET_END,
> +				     fl_out_target + 100);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET1,
> +				     PCIE_PLL_FT_UNLOCK_CYCLECNT,
> +				     lock_cyclecnt);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +				     PCIE_UNLOCK_LOCKTH, 0x3);
> +
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR0_PR_INJ_MODE,
> +				   CSR_2L_PXP_CDR0_INJ_FORCE_OFF);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_R_EN);
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				 PCIE_FORCE_DA_PXP_CDR_PR_LPF_R_EN);
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_C_EN);
> +	airoha_phy_pma0_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				   PCIE_FORCE_DA_PXP_CDR_PR_LPF_C_EN);
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_IDAC);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_PWDB);
> +	airoha_phy_pma0_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> +				   PCIE_FORCE_DA_PXP_CDR_PR_PWDB);
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> +				 PCIE_FORCE_DA_PXP_CDR_PR_PWDB);
> +
> +	for (i = 0; i < 7; i++) {
> +		airoha_phy_pma0_update_field(pcie_phy,
> +				REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				PCIE_FORCE_DA_PXP_CDR_PR_IDAC, i << 8);
> +		airoha_phy_pma0_clear_bits(pcie_phy,
> +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					   PCIE_FREQLOCK_DET_EN);
> +		airoha_phy_pma0_update_field(pcie_phy,
> +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					     PCIE_FREQLOCK_DET_EN, 0x3);
> +
> +		usleep_range(10000, 15000);
> +
> +		val = FIELD_GET(PCIE_RO_FL_OUT,
> +				readl(pcie_phy->pma0 +
> +				      REG_PCIE_PMA_RO_RX_FREQDET));
> +		if (val > fl_out_target)
> +			cdr_pr_idac_tmp = i << 8;
> +	}
> +
> +	for (i = 7; i >= 0; i--) {
> +		pr_idac = cdr_pr_idac_tmp | (0x1 << i);
> +		airoha_phy_pma0_update_field(pcie_phy,
> +				REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				PCIE_FORCE_DA_PXP_CDR_PR_IDAC, pr_idac);
> +		airoha_phy_pma0_clear_bits(pcie_phy,
> +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					   PCIE_FREQLOCK_DET_EN);
> +		airoha_phy_pma0_update_field(pcie_phy,
> +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					     PCIE_FREQLOCK_DET_EN, 0x3);
> +
> +		usleep_range(10000, 15000);
> +
> +		val = FIELD_GET(PCIE_RO_FL_OUT,
> +				readl(pcie_phy->pma0 +
> +				      REG_PCIE_PMA_RO_RX_FREQDET));
> +		if (val < fl_out_target)
> +			pr_idac &= ~(0x1 << i);
> +
> +		cdr_pr_idac_tmp = pr_idac;
> +	}
> +
> +	airoha_phy_pma0_update_field(pcie_phy,
> +				     REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				     PCIE_FORCE_DA_PXP_CDR_PR_IDAC,
> +				     cdr_pr_idac_tmp);
> +
> +	for (i = 0; i < 10; i++) {
> +		airoha_phy_pma0_clear_bits(pcie_phy,
> +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					   PCIE_FREQLOCK_DET_EN);
> +		airoha_phy_pma0_update_field(pcie_phy,
> +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					     PCIE_FREQLOCK_DET_EN, 0x3);
> +
> +		usleep_range(10000, 15000);
> +	}
> +
> +	/* turn off force mode and update band values */
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR0_PR_INJ_MODE,
> +				     CSR_2L_PXP_CDR0_INJ_FORCE_OFF);
> +
> +	airoha_phy_pma0_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_R_EN);
> +	airoha_phy_pma0_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_C_EN);
> +	airoha_phy_pma0_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_PWDB);
> +	airoha_phy_pma0_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_IDAC);
> +	if (gen == 3) {
> +		airoha_phy_pma0_update_field(pcie_phy,
> +					     REG_PCIE_PMA_DIG_RESERVE_14,
> +					     PCIE_FLL_IDAC_PCIEG3,
> +					     cdr_pr_idac_tmp);
> +	} else {
> +		airoha_phy_pma0_update_field(pcie_phy,
> +					     REG_PCIE_PMA_DIG_RESERVE_13,
> +					     PCIE_FLL_IDAC_PCIEG1,
> +					     cdr_pr_idac_tmp);
> +		airoha_phy_pma0_update_field(pcie_phy,
> +					     REG_PCIE_PMA_DIG_RESERVE_13,
> +					     PCIE_FLL_IDAC_PCIEG2,
> +					     cdr_pr_idac_tmp);
> +	}
> +}
> +
> +static void
> +airoha_phy_init_lane1_rx_fw_pre_calib(struct airoha_pcie_phy *pcie_phy,
> +				      int gen)
> +{
> +	u32 fl_out_target = gen == 3 ? 41600 : 41941;
> +	u32 lock_cyclecnt = gen == 3 ? 26000 : 32767;
> +	u32 pr_idac, val, cdr_pr_idac_tmp = 0;
> +	int i;
> +
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_SS_LCPLL_PWCTL_SETTING_1,
> +				 PCIE_LCPLL_MAN_PWDB);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET2,
> +				     PCIE_LOCK_TARGET_BEG,
> +				     fl_out_target - 100);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET2,
> +				     PCIE_LOCK_TARGET_END,
> +				     fl_out_target + 100);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET1,
> +				     PCIE_PLL_FT_LOCK_CYCLECNT, lock_cyclecnt);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +				     PCIE_LOCK_LOCKTH, 0x3);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET3,
> +				     PCIE_UNLOCK_TARGET_BEG,
> +				     fl_out_target - 100);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET3,
> +				     PCIE_UNLOCK_TARGET_END,
> +				     fl_out_target + 100);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET1,
> +				     PCIE_PLL_FT_UNLOCK_CYCLECNT,
> +				     lock_cyclecnt);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +				     PCIE_UNLOCK_LOCKTH, 0x3);
> +
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR1_PR_INJ_MODE,
> +				   CSR_2L_PXP_CDR1_INJ_FORCE_OFF);
> +
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_R_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				 PCIE_FORCE_DA_PXP_CDR_PR_LPF_R_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_C_EN);
> +	airoha_phy_pma1_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				   PCIE_FORCE_DA_PXP_CDR_PR_LPF_C_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_IDAC);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> +				 PCIE_FORCE_SEL_DA_PXP_CDR_PR_PWDB);
> +	airoha_phy_pma1_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> +				   PCIE_FORCE_DA_PXP_CDR_PR_PWDB);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> +				 PCIE_FORCE_DA_PXP_CDR_PR_PWDB);
> +
> +	for (i = 0; i < 7; i++) {
> +		airoha_phy_pma1_update_field(pcie_phy,
> +				REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				PCIE_FORCE_DA_PXP_CDR_PR_IDAC, i << 8);
> +		airoha_phy_pma1_clear_bits(pcie_phy,
> +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					   PCIE_FREQLOCK_DET_EN);
> +		airoha_phy_pma1_update_field(pcie_phy,
> +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					     PCIE_FREQLOCK_DET_EN, 0x3);
> +
> +		usleep_range(10000, 15000);
> +
> +		val = FIELD_GET(PCIE_RO_FL_OUT,
> +				readl(pcie_phy->pma1 +
> +				      REG_PCIE_PMA_RO_RX_FREQDET));
> +		if (val > fl_out_target)
> +			cdr_pr_idac_tmp = i << 8;
> +	}
> +
> +	for (i = 7; i >= 0; i--) {
> +		pr_idac = cdr_pr_idac_tmp | (0x1 << i);
> +		airoha_phy_pma1_update_field(pcie_phy,
> +				REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				PCIE_FORCE_DA_PXP_CDR_PR_IDAC, pr_idac);
> +		airoha_phy_pma1_clear_bits(pcie_phy,
> +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					   PCIE_FREQLOCK_DET_EN);
> +		airoha_phy_pma1_update_field(pcie_phy,
> +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					     PCIE_FREQLOCK_DET_EN, 0x3);
> +
> +		usleep_range(10000, 15000);
> +
> +		val = FIELD_GET(PCIE_RO_FL_OUT,
> +				readl(pcie_phy->pma1 +
> +				      REG_PCIE_PMA_RO_RX_FREQDET));
> +		if (val < fl_out_target)
> +			pr_idac &= ~(0x1 << i);
> +
> +		cdr_pr_idac_tmp = pr_idac;
> +	}
> +
> +	airoha_phy_pma1_update_field(pcie_phy,
> +				     REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				     PCIE_FORCE_DA_PXP_CDR_PR_IDAC,
> +				     cdr_pr_idac_tmp);
> +
> +	for (i = 0; i < 10; i++) {
> +		airoha_phy_pma1_clear_bits(pcie_phy,
> +					   REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					   PCIE_FREQLOCK_DET_EN);
> +		airoha_phy_pma1_update_field(pcie_phy,
> +					     REG_PCIE_PMA_SS_RX_FREQ_DET4,
> +					     PCIE_FREQLOCK_DET_EN, 0x3);
> +
> +		usleep_range(10000, 15000);
> +	}
> +
> +	/* turn off force mode and update band values */
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR1_PR_INJ_MODE,
> +				     CSR_2L_PXP_CDR1_INJ_FORCE_OFF);
> +
> +	airoha_phy_pma1_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_R_EN);
> +	airoha_phy_pma1_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_LPF_C,
> +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_LPF_C_EN);
> +	airoha_phy_pma1_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_PIEYE_PWDB,
> +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_PWDB);
> +	airoha_phy_pma1_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				   PCIE_FORCE_SEL_DA_PXP_CDR_PR_IDAC);
> +	if (gen == 3) {
> +		airoha_phy_pma1_update_field(pcie_phy,
> +					     REG_PCIE_PMA_DIG_RESERVE_14,
> +					     PCIE_FLL_IDAC_PCIEG3,
> +					     cdr_pr_idac_tmp);
> +	} else {
> +		airoha_phy_pma1_update_field(pcie_phy,
> +					     REG_PCIE_PMA_DIG_RESERVE_13,
> +					     PCIE_FLL_IDAC_PCIEG1,
> +					     cdr_pr_idac_tmp);
> +		airoha_phy_pma1_update_field(pcie_phy,
> +					     REG_PCIE_PMA_DIG_RESERVE_13,
> +					     PCIE_FLL_IDAC_PCIEG2,
> +					     cdr_pr_idac_tmp);
> +	}
> +}
> +
> +static void airoha_pcie_phy_init_default(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CMN,
> +				       CSR_2L_PXP_CMN_TRIM_MASK, 0x10);
> +	writel(0xcccbcccb, pcie_phy->pma0 + REG_PCIE_PMA_DIG_RESERVE_21);
> +	writel(0xcccb, pcie_phy->pma0 + REG_PCIE_PMA_DIG_RESERVE_22);
> +	writel(0xcccbcccb, pcie_phy->pma1 + REG_PCIE_PMA_DIG_RESERVE_21);
> +	writel(0xcccb, pcie_phy->pma1 + REG_PCIE_PMA_DIG_RESERVE_22);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CMN,
> +				   CSR_2L_PXP_CMN_LANE_EN);
> +}
> +
> +static void airoha_pcie_phy_init_clk_out(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_TXPLL_POSTDIV_D256,
> +				       CSR_2L_PXP_CLKTX0_AMP, 0x5);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_CLKTX0_FORCE_OUT1,
> +				       CSR_2L_PXP_CLKTX1_AMP, 0x5);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_TXPLL_POSTDIV_D256,
> +				       CSR_2L_PXP_CLKTX0_OFFSET, 0x2);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CLKTX1_OFFSET,
> +				       CSR_2L_PXP_CLKTX1_OFFSET, 0x2);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CLKTX0_FORCE_OUT1,
> +				     CSR_2L_PXP_CLKTX0_HZ);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CLKTX1_OFFSET,
> +				     CSR_2L_PXP_CLKTX1_HZ);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_CLKTX0_FORCE_OUT1,
> +				       CSR_2L_PXP_CLKTX0_IMP_SEL, 0x12);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CLKTX1_IMP_SEL,
> +				       CSR_2L_PXP_CLKTX1_IMP_SEL, 0x12);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_POSTDIV_D256,
> +				     CSR_2L_PXP_CLKTX0_SR);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CLKTX1_OFFSET,
> +				     CSR_2L_PXP_CLKTX1_SR);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_PLL_CMN_RESERVE0,
> +				       CSR_2L_PXP_PLL_RESERVE_MASK, 0xdd);
> +}
> +
> +static void airoha_pcie_phy_init_csr_2l(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> +				 PCIE_SW_XFI_RXPCS_RST | PCIE_SW_REF_RST |
> +				 PCIE_SW_RX_RST);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> +				 PCIE_SW_XFI_RXPCS_RST | PCIE_SW_REF_RST |
> +				 PCIE_SW_RX_RST);
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_TX_RESET,
> +				 PCIE_TX_TOP_RST | REG_PCIE_PMA_TX_RESET);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_TX_RESET,
> +				 PCIE_TX_TOP_RST | REG_PCIE_PMA_TX_RESET);
> +}
> +
> +static void airoha_pcie_phy_init_rx(struct airoha_pcie_phy *pcie_phy)
> +{
> +	writel(0x2a00090b, pcie_phy->pma0 + REG_PCIE_PMA_DIG_RESERVE_17);
> +	writel(0x2a00090b, pcie_phy->pma1 + REG_PCIE_PMA_DIG_RESERVE_17);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR0_PR_MONPI,
> +				   CSR_2L_PXP_CDR0_PR_XFICK_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR1_PR_MONPI,
> +				   CSR_2L_PXP_CDR1_PR_XFICK_EN);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy,
> +				     REG_CSR_2L_CDR0_PD_PICAL_CKD8_INV,
> +				     CSR_2L_PXP_CDR0_PD_EDGE_DISABLE);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy,
> +				     REG_CSR_2L_CDR1_PD_PICAL_CKD8_INV,
> +				     CSR_2L_PXP_CDR1_PD_EDGE_DISABLE);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_PHYCK_DIV,
> +				       CSR_2L_PXP_RX0_PHYCK_SEL, 0x1);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_PHYCK_DIV,
> +				       CSR_2L_PXP_RX1_PHYCK_SEL, 0x1);
> +}
> +
> +static void airoha_pcie_phy_init_jcpll(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_EN);
> +	airoha_phy_pma0_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				   PCIE_FORCE_DA_PXP_JCPLL_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_EN);
> +	airoha_phy_pma1_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				   PCIE_FORCE_DA_PXP_JCPLL_EN);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_TCL_VTP_EN,
> +				       CSR_2L_PXP_JCPLL_SPARE_LOW, 0x20);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_RST_DLY,
> +				   CSR_2L_PXP_JCPLL_RST);
> +	writel(0x0, pcie_phy->csr_2l + REG_CSR_2L_JCPLL_SSC_DELTA1);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC_PERIOD,
> +				     CSR_2L_PXP_JCPLL_SSC_PERIOD);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> +				     CSR_2L_PXP_JCPLL_SSC_PHASE_INI);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> +				     CSR_2L_PXP_JCPLL_SSC_TRI_EN);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BR,
> +				       CSR_2L_PXP_JCPLL_LPF_BR, 0xa);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BR,
> +				       CSR_2L_PXP_JCPLL_LPF_BP, 0xc);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BR,
> +				       CSR_2L_PXP_JCPLL_LPF_BC, 0x1f);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BWC,
> +				       CSR_2L_PXP_JCPLL_LPF_BWC, 0x1e);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BR,
> +				       CSR_2L_PXP_JCPLL_LPF_BWR, 0xa);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_JCPLL_MMD_PREDIV_MODE,
> +				       CSR_2L_PXP_JCPLL_MMD_PREDIV_MODE,
> +				       0x1);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, CSR_2L_PXP_JCPLL_MONCK,
> +				     CSR_2L_PXP_JCPLL_REFIN_DIV);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_VOS,
> +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_SDM_PCW);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_VOS,
> +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_SDM_PCW);
> +	airoha_phy_pma0_update_field(pcie_phy,
> +				     REG_PCIE_PMA_FORCE_DA_PXP_JCPLL_SDM_PCW,
> +				     PCIE_FORCE_DA_PXP_JCPLL_SDM_PCW,
> +				     0x50000000);
> +	airoha_phy_pma1_update_field(pcie_phy,
> +				     REG_PCIE_PMA_FORCE_DA_PXP_JCPLL_SDM_PCW,
> +				     PCIE_FORCE_DA_PXP_JCPLL_SDM_PCW,
> +				     0x50000000);
> +
> +	airoha_phy_csr_2l_set_bits(pcie_phy,
> +				   REG_CSR_2L_JCPLL_MMD_PREDIV_MODE,
> +				   CSR_2L_PXP_JCPLL_POSTDIV_D5);
> +	airoha_phy_csr_2l_set_bits(pcie_phy,
> +				   REG_CSR_2L_JCPLL_MMD_PREDIV_MODE,
> +				   CSR_2L_PXP_JCPLL_POSTDIV_D2);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_RST_DLY,
> +				       CSR_2L_PXP_JCPLL_RST_DLY, 0x4);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_RST_DLY,
> +				     CSR_2L_PXP_JCPLL_SDM_DI_LS);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_TCL_KBAND_VREF,
> +				     CSR_2L_PXP_JCPLL_VCO_KBAND_MEAS_EN);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_IB_EXT,
> +				     CSR_2L_PXP_JCPLL_CHP_IOFST);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_IB_EXT,
> +				       CSR_2L_PXP_JCPLL_CHP_IBIAS, 0xc);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_JCPLL_MMD_PREDIV_MODE,
> +				       CSR_2L_PXP_JCPLL_MMD_PREDIV_MODE,
> +				       0x1);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_VCODIV,
> +				   CSR_2L_PXP_JCPLL_VCO_HALFLSB_EN);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_VCODIV,
> +				       CSR_2L_PXP_JCPLL_VCO_CFIX, 0x1);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_VCODIV,
> +				       CSR_2L_PXP_JCPLL_VCO_SCAPWR, 0x4);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_IB_EXT,
> +				     REG_CSR_2L_JCPLL_LPF_SHCK_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_KBAND_KFC,
> +				   CSR_2L_PXP_JCPLL_POSTDIV_EN);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_KBAND_KFC,
> +				     CSR_2L_PXP_JCPLL_KBAND_KFC);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_KBAND_KFC,
> +				       CSR_2L_PXP_JCPLL_KBAND_KF, 0x3);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_KBAND_KFC,
> +				     CSR_2L_PXP_JCPLL_KBAND_KS);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BWC,
> +				       CSR_2L_PXP_JCPLL_KBAND_DIV, 0x1);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_SCAN_MODE,
> +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_KBAND_LOAD_EN);
> +	airoha_phy_pma0_clear_bits(pcie_phy, REG_PCIE_PMA_SCAN_MODE,
> +				   PCIE_FORCE_DA_PXP_JCPLL_KBAND_LOAD_EN);
> +
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_LPF_BWC,
> +				       CSR_2L_PXP_JCPLL_KBAND_CODE, 0xe4);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SDM_HREN,
> +				   CSR_2L_PXP_JCPLL_TCL_AMP_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_TCL_CMP,
> +				   CSR_2L_PXP_JCPLL_TCL_LPF_EN);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_JCPLL_TCL_KBAND_VREF,
> +				       CSR_2L_PXP_JCPLL_TCL_KBAND_VREF, 0xf);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_SDM_HREN,
> +				       CSR_2L_PXP_JCPLL_TCL_AMP_GAIN, 0x1);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_SDM_HREN,
> +				       CSR_2L_PXP_JCPLL_TCL_AMP_VREF, 0x5);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_TCL_CMP,
> +				       CSR_2L_PXP_JCPLL_TCL_LPF_BW, 0x1);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_VCO_TCLVAR,
> +				       CSR_2L_PXP_JCPLL_VCO_TCLVAR, 0x3);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_CKOUT_EN);
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				 PCIE_FORCE_DA_PXP_JCPLL_CKOUT_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_CKOUT_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				 PCIE_FORCE_DA_PXP_JCPLL_CKOUT_EN);
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_EN);
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				 PCIE_FORCE_DA_PXP_JCPLL_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_JCPLL_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_PXP_JCPLL_CKOUT,
> +				 PCIE_FORCE_DA_PXP_JCPLL_EN);
> +}
> +
> +static void airoha_pcie_phy_txpll(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_EN);
> +	airoha_phy_pma0_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				   PCIE_FORCE_DA_PXP_TXPLL_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_EN);
> +	airoha_phy_pma1_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				   PCIE_FORCE_DA_PXP_TXPLL_EN);
> +
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_REFIN_DIV,
> +				   CSR_2L_PXP_TXPLL_PLL_RSTB);
> +	writel(0x0, pcie_phy->csr_2l + REG_CSR_2L_TXPLL_SSC_DELTA1);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SSC_PERIOD,
> +				     CSR_2L_PXP_txpll_SSC_PERIOD);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_CHP_IOFST,
> +				       CSR_2L_PXP_TXPLL_CHP_IOFST, 0x1);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_750M_SYS_CK,
> +				       CSR_2L_PXP_TXPLL_CHP_IBIAS, 0x2d);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_REFIN_DIV,
> +				     CSR_2L_PXP_TXPLL_REFIN_DIV);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_TCL_LPF_BW,
> +				       CSR_2L_PXP_TXPLL_VCO_CFIX, 0x3);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_SDM_PCW);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_SDM_PCW);
> +	airoha_phy_pma0_update_field(pcie_phy,
> +				     REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_SDM_PCW,
> +				     PCIE_FORCE_DA_PXP_TXPLL_SDM_PCW,
> +				     0xc800000);
> +	airoha_phy_pma1_update_field(pcie_phy,
> +				     REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_SDM_PCW,
> +				     PCIE_FORCE_DA_PXP_TXPLL_SDM_PCW,
> +				     0xc800000);
> +
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SDM_DI_LS,
> +				     CSR_2L_PXP_TXPLL_SDM_IFM);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SSC,
> +				     CSR_2L_PXP_TXPLL_SSC_PHASE_INI);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_REFIN_DIV,
> +				       CSR_2L_PXP_TXPLL_RST_DLY, 0x4);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SDM_DI_LS,
> +				     CSR_2L_PXP_TXPLL_SDM_DI_LS);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_SDM_DI_LS,
> +				       CSR_2L_PXP_TXPLL_SDM_ORD, 0x3);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_TCL_KBAND_VREF,
> +				     CSR_2L_PXP_TXPLL_VCO_KBAND_MEAS_EN);
> +	writel(0x0, pcie_phy->csr_2l + REG_CSR_2L_TXPLL_SSC_DELTA1);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_CHP_IOFST,
> +				       CSR_2L_PXP_TXPLL_LPF_BP, 0x1);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_CHP_IOFST,
> +				       CSR_2L_PXP_TXPLL_LPF_BC, 0x18);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_CHP_IOFST,
> +				       CSR_2L_PXP_TXPLL_LPF_BR, 0x5);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_CHP_IOFST,
> +				       CSR_2L_PXP_TXPLL_CHP_IOFST, 0x1);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_750M_SYS_CK,
> +				       CSR_2L_PXP_TXPLL_CHP_IBIAS, 0x2d);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_TCL_VTP,
> +				       CSR_2L_PXP_TXPLL_SPARE_L, 0x1);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_LPF_BWR,
> +				     CSR_2L_PXP_TXPLL_LPF_BWC);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_POSTDIV,
> +				     CSR_2L_PXP_TXPLL_MMD_PREDIV_MODE);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_REFIN_DIV,
> +				     CSR_2L_PXP_TXPLL_REFIN_DIV);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_TCL_LPF_BW,
> +				   CSR_2L_PXP_TXPLL_VCO_HALFLSB_EN);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_VCO_SCAPWR,
> +				       CSR_2L_PXP_TXPLL_VCO_SCAPWR, 0x7);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_TCL_LPF_BW,
> +				       CSR_2L_PXP_TXPLL_VCO_CFIX, 0x3);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_SDM_PCW);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PR_IDAC,
> +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_SDM_PCW);
> +
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SSC,
> +				     CSR_2L_PXP_TXPLL_SSC_PHASE_INI);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_LPF_BWR,
> +				     CSR_2L_PXP_TXPLL_LPF_BWR);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_PHY_CK2,
> +				   CSR_2L_PXP_TXPLL_REFIN_INTERNAL);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_TCL_KBAND_VREF,
> +				     CSR_2L_PXP_TXPLL_VCO_KBAND_MEAS_EN);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_VTP,
> +				     CSR_2L_PXP_TXPLL_VTP_EN);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_POSTDIV,
> +				     CSR_2L_PXP_TXPLL_PHY_CK1_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_PHY_CK2,
> +				   CSR_2L_PXP_TXPLL_REFIN_INTERNAL);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_SSC,
> +				     CSR_2L_PXP_TXPLL_SSC_EN);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_750M_SYS_CK,
> +				     CSR_2L_PXP_TXPLL_LPF_SHCK_EN);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_POSTDIV,
> +				     CSR_2L_PXP_TXPLL_POSTDIV_EN);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TXPLL_KBAND_DIV,
> +				     CSR_2L_PXP_TXPLL_KBAND_KFC);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_KBAND_DIV,
> +				       CSR_2L_PXP_TXPLL_KBAND_KF, 0x3);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_KBAND_DIV,
> +				       CSR_2L_PXP_txpll_KBAND_KS, 0x1);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_KBAND_DIV,
> +				       CSR_2L_PXP_TXPLL_KBAND_DIV, 0x4);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_LPF_BWR,
> +				       CSR_2L_PXP_TXPLL_KBAND_CODE, 0xe4);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_SDM_OUT,
> +				   CSR_2L_PXP_TXPLL_TCL_AMP_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TXPLL_TCL_AMP_VREF,
> +				   CSR_2L_PXP_TXPLL_TCL_LPF_EN);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_TXPLL_TCL_KBAND_VREF,
> +				       CSR_2L_PXP_TXPLL_TCL_KBAND_VREF, 0xf);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_SDM_OUT,
> +				       CSR_2L_PXP_TXPLL_TCL_AMP_GAIN, 0x3);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_TXPLL_TCL_AMP_VREF,
> +				       CSR_2L_PXP_TXPLL_TCL_AMP_VREF, 0xb);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_TXPLL_TCL_LPF_BW,
> +				       CSR_2L_PXP_TXPLL_TCL_LPF_BW, 0x3);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_CKOUT_EN);
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				 PCIE_FORCE_DA_PXP_TXPLL_CKOUT_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_CKOUT_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				 PCIE_FORCE_DA_PXP_TXPLL_CKOUT_EN);
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_EN);
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				 PCIE_FORCE_DA_PXP_TXPLL_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				 PCIE_FORCE_SEL_DA_PXP_TXPLL_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_TXPLL_CKOUT,
> +				 PCIE_FORCE_DA_PXP_TXPLL_EN);
> +}
> +
> +static void airoha_pcie_phy_init_ssc_jcpll(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_SSC_DELTA1,
> +				       CSR_2L_PXP_JCPLL_SSC_DELTA1, 0x106);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_SSC_DELTA1,
> +				       CSR_2L_PXP_JCPLL_SSC_DELTA, 0x106);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_JCPLL_SSC_PERIOD,
> +				       CSR_2L_PXP_JCPLL_SSC_PERIOD, 0x31b);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> +				   CSR_2L_PXP_JCPLL_SSC_PHASE_INI);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> +				   CSR_2L_PXP_JCPLL_SSC_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SDM_IFM,
> +				   CSR_2L_PXP_JCPLL_SDM_IFM);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SDM_HREN,
> +				   REG_CSR_2L_JCPLL_SDM_HREN);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_RST_DLY,
> +				     CSR_2L_PXP_JCPLL_SDM_DI_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> +				   CSR_2L_PXP_JCPLL_SSC_TRI_EN);
> +}
> +
> +static void
> +airoha_pcie_phy_set_rxlan0_signal_detect(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR0_PR_COR_HBW,
> +				   CSR_2L_PXP_CDR0_PR_LDO_FORCE_ON);
> +
> +	usleep_range(100, 200);
> +
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_19,
> +				     PCIE_PCP_RX_REV0_PCIE_GEN1, 0x18b0);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_20,
> +				     PCIE_PCP_RX_REV0_PCIE_GEN2, 0x18b0);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_20,
> +				     PCIE_PCP_RX_REV0_PCIE_GEN3, 0x1030);
> +
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_SIGDET_DCTEST,
> +				       CSR_2L_PXP_RX0_SIGDET_PEAK, 0x2);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_SIGDET_VTH_SEL,
> +				       CSR_2L_PXP_RX0_SIGDET_VTH_SEL, 0x5);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_REV0,
> +				       CSR_2L_PXP_VOS_PNINV, 0x2);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_SIGDET_DCTEST,
> +				       CSR_2L_PXP_RX0_SIGDET_LPF_CTRL, 0x1);
> +
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_CAL2,
> +				     PCIE_CAL_OUT_OS, 0x0);
> +
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_PXP_RX0_FE_VB_EQ2,
> +				   CSR_2L_PXP_RX0_FE_VCM_GEN_PWDB);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_GAIN_CTRL,
> +				 PCIE_FORCE_SEL_DA_PXP_RX_FE_PWDB);
> +	airoha_phy_pma0_update_field(pcie_phy,
> +				     REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_GAIN_CTRL,
> +				     PCIE_FORCE_DA_PXP_RX_FE_GAIN_CTRL, 0x3);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_RX_FORCE_MODE0,
> +				     PCIE_FORCE_DA_XPON_RX_FE_GAIN_CTRL, 0x1);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_SIGDET0,
> +				     PCIE_SIGDET_WIN_NONVLD_TIMES, 0x3);
> +	airoha_phy_pma0_clear_bits(pcie_phy, REG_PCIE_PMA_SEQUENCE_DISB_CTRL1,
> +				   PCIE_DISB_RX_SDCAL_EN);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_CTRL_SEQUENCE_FORCE_CTRL1,
> +				 PCIE_FORCE_RX_SDCAL_EN);
> +	usleep_range(150, 200);
> +	airoha_phy_pma0_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_CTRL_SEQUENCE_FORCE_CTRL1,
> +				   PCIE_FORCE_RX_SDCAL_EN);
> +}
> +
> +static void
> +airoha_pcie_phy_set_rxlan1_signal_detect(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_CDR1_PR_COR_HBW,
> +				   CSR_2L_PXP_CDR1_PR_LDO_FORCE_ON);
> +
> +	usleep_range(100, 200);
> +
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_19,
> +				     PCIE_PCP_RX_REV0_PCIE_GEN1, 0x18b0);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_20,
> +				     PCIE_PCP_RX_REV0_PCIE_GEN2, 0x18b0);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_20,
> +				     PCIE_PCP_RX_REV0_PCIE_GEN3, 0x1030);
> +
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_SIGDET_NOVTH,
> +				       CSR_2L_PXP_RX1_SIGDET_PEAK, 0x2);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_SIGDET_NOVTH,
> +				       CSR_2L_PXP_RX1_SIGDET_VTH_SEL, 0x5);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_REV0,
> +				       CSR_2L_PXP_VOS_PNINV, 0x2);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_DAC_RANGE_EYE,
> +				       CSR_2L_PXP_RX1_SIGDET_LPF_CTRL, 0x1);
> +
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_CAL2,
> +				     PCIE_CAL_OUT_OS, 0x0);
> +
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_RX1_FE_VB_EQ1,
> +				   CSR_2L_PXP_RX1_FE_VCM_GEN_PWDB);
> +
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_GAIN_CTRL,
> +				 PCIE_FORCE_SEL_DA_PXP_RX_FE_PWDB);
> +	airoha_phy_pma1_update_field(pcie_phy,
> +				     REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_GAIN_CTRL,
> +				     PCIE_FORCE_DA_PXP_RX_FE_GAIN_CTRL, 0x3);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_RX_FORCE_MODE0,
> +				     PCIE_FORCE_DA_XPON_RX_FE_GAIN_CTRL, 0x1);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_SS_RX_SIGDET0,
> +				     PCIE_SIGDET_WIN_NONVLD_TIMES, 0x3);
> +	airoha_phy_pma1_clear_bits(pcie_phy, REG_PCIE_PMA_SEQUENCE_DISB_CTRL1,
> +				   PCIE_DISB_RX_SDCAL_EN);
> +
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_CTRL_SEQUENCE_FORCE_CTRL1,
> +				 PCIE_FORCE_RX_SDCAL_EN);
> +	usleep_range(150, 200);
> +	airoha_phy_pma1_clear_bits(pcie_phy,
> +				   REG_PCIE_PMA_CTRL_SEQUENCE_FORCE_CTRL1,
> +				   PCIE_FORCE_RX_SDCAL_EN);
> +}
> +
> +static void airoha_pcie_phy_set_rxflow(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_SCAN_RST,
> +				 PCIE_FORCE_DA_PXP_RX_SIGDET_PWDB |
> +				 PCIE_FORCE_SEL_DA_PXP_RX_SIGDET_PWDB);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_SCAN_RST,
> +				 PCIE_FORCE_DA_PXP_RX_SIGDET_PWDB |
> +				 PCIE_FORCE_SEL_DA_PXP_RX_SIGDET_PWDB);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PD_PWDB,
> +				 PCIE_FORCE_DA_PXP_CDR_PD_PWDB |
> +				 PCIE_FORCE_SEL_DA_PXP_CDR_PD_PWDB);
> +	airoha_phy_pma0_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_PWDB,
> +				 PCIE_FORCE_DA_PXP_RX_FE_PWDB |
> +				 PCIE_FORCE_SEL_DA_PXP_RX_FE_PWDB);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_CDR_PD_PWDB,
> +				 PCIE_FORCE_DA_PXP_CDR_PD_PWDB |
> +				 PCIE_FORCE_SEL_DA_PXP_CDR_PD_PWDB);
> +	airoha_phy_pma1_set_bits(pcie_phy,
> +				 REG_PCIE_PMA_FORCE_DA_PXP_RX_FE_PWDB,
> +				 PCIE_FORCE_DA_PXP_RX_FE_PWDB |
> +				 PCIE_FORCE_SEL_DA_PXP_RX_FE_PWDB);
> +
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_RX0_PHYCK_DIV,
> +				   CSR_2L_PXP_RX0_PHYCK_RSTB |
> +				   CSR_2L_PXP_RX0_TDC_CK_SEL);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_RX1_PHYCK_DIV,
> +				   CSR_2L_PXP_RX1_PHYCK_RSTB |
> +				   CSR_2L_PXP_RX1_TDC_CK_SEL);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> +				 PCIE_SW_RX_FIFO_RST | PCIE_SW_TX_RST |
> +				 PCIE_SW_PMA_RST | PCIE_SW_ALLPCS_RST |
> +				 PCIE_SW_TX_FIFO_RST);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> +				 PCIE_SW_RX_FIFO_RST | PCIE_SW_TX_RST |
> +				 PCIE_SW_PMA_RST | PCIE_SW_ALLPCS_RST |
> +				 PCIE_SW_TX_FIFO_RST);
> +
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_PXP_RX0_FE_VB_EQ2,
> +				   CSR_2L_PXP_RX0_FE_VB_EQ2_EN |
> +				   CSR_2L_PXP_RX0_FE_VB_EQ3_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_RX0_SIGDET_VTH_SEL,
> +				   CSR_2L_PXP_RX0_FE_VB_EQ1_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_RX1_FE_VB_EQ1,
> +				   CSR_2L_PXP_RX1_FE_VB_EQ1_EN |
> +				   CSR_2L_PXP_RX1_FE_VB_EQ2_EN |
> +				   CSR_2L_PXP_RX1_FE_VB_EQ3_EN);
> +
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_REV0,
> +				       CSR_2L_PXP_FE_GAIN_NORMAL_MODE, 0x4);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX0_REV0,
> +				       CSR_2L_PXP_FE_GAIN_TRAIN_MODE, 0x4);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_REV0,
> +				       CSR_2L_PXP_FE_GAIN_NORMAL_MODE, 0x4);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_REV0,
> +				       CSR_2L_PXP_FE_GAIN_TRAIN_MODE, 0x4);
> +}
> +
> +static void airoha_pcie_phy_set_pr(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_PR_VREG_IBAND,
> +				       CSR_2L_PXP_CDR0_PR_VREG_IBAND, 0x5);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_PR_VREG_IBAND,
> +				       CSR_2L_PXP_CDR0_PR_VREG_CKBUF, 0x5);
> +
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR0_PR_CKREF_DIV,
> +				     CSR_2L_PXP_CDR0_PR_CKREF_DIV);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR0_PR_COR_HBW,
> +				     CSR_2L_PXP_CDR0_PR_CKREF_DIV1);
> +
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_CDR1_PR_VREG_IBAND_VAL,
> +				       CSR_2L_PXP_CDR1_PR_VREG_IBAND, 0x5);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_CDR1_PR_VREG_IBAND_VAL,
> +				       CSR_2L_PXP_CDR1_PR_VREG_CKBUF, 0x5);
> +
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR1_PR_CKREF_DIV,
> +				     CSR_2L_PXP_CDR1_PR_CKREF_DIV);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR1_PR_COR_HBW,
> +				     CSR_2L_PXP_CDR1_PR_CKREF_DIV1);
> +
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_LPF_RATIO,
> +				       CSR_2L_PXP_CDR0_LPF_TOP_LIM, 0x20000);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR1_LPF_RATIO,
> +				       CSR_2L_PXP_CDR1_LPF_TOP_LIM, 0x20000);
> +
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_PR_BETA_DAC,
> +				       CSR_2L_PXP_CDR0_PR_BETA_SEL, 0x2);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR1_PR_BETA_DAC,
> +				       CSR_2L_PXP_CDR1_PR_BETA_SEL, 0x2);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_PR_BETA_DAC,
> +				       CSR_2L_PXP_CDR0_PR_KBAND_DIV, 0x4);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR1_PR_BETA_DAC,
> +				       CSR_2L_PXP_CDR1_PR_KBAND_DIV, 0x4);
> +}
> +
> +static void airoha_pcie_phy_set_txflow(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TX0_CKLDO,
> +				   CSR_2L_PXP_TX0_CKLDO_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TX1_CKLDO,
> +				   CSR_2L_PXP_TX1_CKLDO_EN);
> +
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TX0_CKLDO,
> +				   CSR_2L_PXP_TX0_DMEDGEGEN_EN);
> +	airoha_phy_csr_2l_set_bits(pcie_phy, REG_CSR_2L_TX1_CKLDO,
> +				   CSR_2L_PXP_TX1_DMEDGEGEN_EN);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_TX1_MULTLANE,
> +				     CSR_2L_PXP_TX1_MULTLANE_EN);
> +}
> +
> +static void airoha_pcie_phy_set_rx_mode(struct airoha_pcie_phy *pcie_phy)
> +{
> +	writel(0x804000, pcie_phy->pma0 + REG_PCIE_PMA_DIG_RESERVE_27);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> +				     PCIE_PXP_RX_VTH_SEL_PCIE_G1, 0x5);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> +				     PCIE_PXP_RX_VTH_SEL_PCIE_G2, 0x5);
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> +				     PCIE_PXP_RX_VTH_SEL_PCIE_G3, 0x5);
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_30,
> +				 0x77700);
> +
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR0_PR_MONCK,
> +				     CSR_2L_PXP_CDR0_PR_MONCK_ENABLE);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR0_PR_MONCK,
> +				       CSR_2L_PXP_CDR0_PR_RESERVE0, 0x2);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_PXP_RX0_OSCAL_CTLE1IOS,
> +				       CSR_2L_PXP_RX0_PR_OSCAL_VGA1IOS, 0x19);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_PXP_RX0_OSCA_VGA1VOS,
> +				       CSR_2L_PXP_RX0_PR_OSCAL_VGA1VOS, 0x19);
> +	airoha_phy_csr_2l_update_field(pcie_phy,
> +				       REG_CSR_2L_PXP_RX0_OSCA_VGA1VOS,
> +				       CSR_2L_PXP_RX0_PR_OSCAL_VGA2IOS, 0x14);
> +
> +	writel(0x804000, pcie_phy->pma1 + REG_PCIE_PMA_DIG_RESERVE_27);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> +				     PCIE_PXP_RX_VTH_SEL_PCIE_G1, 0x5);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> +				     PCIE_PXP_RX_VTH_SEL_PCIE_G2, 0x5);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_18,
> +				     PCIE_PXP_RX_VTH_SEL_PCIE_G3, 0x5);
> +
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_30,
> +				 0x77700);
> +
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_CDR1_PR_MONCK,
> +				     CSR_2L_PXP_CDR1_PR_MONCK_ENABLE);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_CDR1_PR_MONCK,
> +				       CSR_2L_PXP_CDR1_PR_RESERVE0, 0x2);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_OSCAL_VGA1IOS,
> +				       CSR_2L_PXP_RX1_PR_OSCAL_VGA1IOS, 0x19);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_OSCAL_VGA1IOS,
> +				       CSR_2L_PXP_RX1_PR_OSCAL_VGA1VOS, 0x19);
> +	airoha_phy_csr_2l_update_field(pcie_phy, REG_CSR_2L_RX1_OSCAL_VGA1IOS,
> +				       CSR_2L_PXP_RX1_PR_OSCAL_VGA2IOS, 0x14);
> +}
> +
> +static void airoha_pcie_phy_load_kflow(struct airoha_pcie_phy *pcie_phy)
> +{
> +	airoha_phy_pma0_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_12,
> +				     PCIE_FORCE_PMA_RX_SPEED, 0xa);
> +	airoha_phy_pma1_update_field(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_12,
> +				     PCIE_FORCE_PMA_RX_SPEED, 0xa);
> +	airoha_phy_init_lane0_rx_fw_pre_calib(pcie_phy, 3);
> +	airoha_phy_init_lane1_rx_fw_pre_calib(pcie_phy, 3);
> +
> +	airoha_phy_pma0_clear_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_12,
> +				   PCIE_FORCE_PMA_RX_SPEED);
> +	airoha_phy_pma1_clear_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_12,
> +				   PCIE_FORCE_PMA_RX_SPEED);
> +	usleep_range(100, 200);
> +
> +	airoha_phy_init_lane0_rx_fw_pre_calib(pcie_phy, 2);
> +	airoha_phy_init_lane1_rx_fw_pre_calib(pcie_phy, 2);
> +}
> +
> +/**
> + * airoha_pcie_phy_init() - Initialize the phy
> + * @phy: the phy to be initialized
> + *
> + * Initialize the phy registers.
> + * The hardware settings will be reset during suspend, it should be
> + * reinitialized when the consumer calls phy_init() again on resume.
> + */
> +static int airoha_pcie_phy_init(struct phy *phy)
> +{
> +	struct airoha_pcie_phy *pcie_phy = phy_get_drvdata(phy);
> +
> +	/* enable load FLL-K flow */
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_14,
> +				 PCIE_FLL_LOAD_EN);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_DIG_RESERVE_14,
> +				 PCIE_FLL_LOAD_EN);
> +
> +	airoha_pcie_phy_init_default(pcie_phy);
> +	airoha_pcie_phy_init_clk_out(pcie_phy);
> +	airoha_pcie_phy_init_csr_2l(pcie_phy);
> +
> +	usleep_range(100, 200);
> +
> +	airoha_pcie_phy_init_rx(pcie_phy);
> +	/* phase 1, no ssc for K TXPLL */
> +	airoha_pcie_phy_init_jcpll(pcie_phy);
> +
> +	usleep_range(500, 600);
> +
> +	/* TX PLL settings */
> +	airoha_pcie_phy_txpll(pcie_phy);
> +
> +	usleep_range(200, 300);
> +
> +	/* SSC JCPLL setting */
> +	airoha_pcie_phy_init_ssc_jcpll(pcie_phy);
> +
> +	usleep_range(100, 200);
> +
> +	/* Rx lan0 signal detect */
> +	airoha_pcie_phy_set_rxlan0_signal_detect(pcie_phy);
> +	/* Rx lan1 signal detect */
> +	airoha_pcie_phy_set_rxlan1_signal_detect(pcie_phy);
> +	/* RX FLOW */
> +	airoha_pcie_phy_set_rxflow(pcie_phy);
> +
> +	usleep_range(100, 200);
> +
> +	airoha_pcie_phy_set_pr(pcie_phy);
> +	/* TX FLOW */
> +	airoha_pcie_phy_set_txflow(pcie_phy);
> +
> +	usleep_range(100, 200);
> +	/* RX mode setting */
> +	airoha_pcie_phy_set_rx_mode(pcie_phy);
> +	/* Load K-Flow */
> +	airoha_pcie_phy_load_kflow(pcie_phy);
> +	airoha_phy_pma0_clear_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
> +				   PCIE_DA_XPON_CDR_PR_PWDB);
> +	airoha_phy_pma1_clear_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
> +				   PCIE_DA_XPON_CDR_PR_PWDB);
> +
> +	usleep_range(100, 200);
> +
> +	airoha_phy_pma0_set_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
> +				 PCIE_DA_XPON_CDR_PR_PWDB);
> +	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
> +				 PCIE_DA_XPON_CDR_PR_PWDB);
> +
> +	usleep_range(100, 200);
> +
> +	return 0;
> +}
> +
> +static int airoha_pcie_phy_exit(struct phy *phy)
> +{
> +	struct airoha_pcie_phy *pcie_phy = phy_get_drvdata(phy);
> +
> +	airoha_phy_pma0_clear_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> +				   PCIE_PMA_SW_RST);
> +	airoha_phy_pma1_clear_bits(pcie_phy, REG_PCIE_PMA_SW_RESET,
> +				   PCIE_PMA_SW_RST);
> +	airoha_phy_csr_2l_clear_bits(pcie_phy, REG_CSR_2L_JCPLL_SSC,
> +				     CSR_2L_PXP_JCPLL_SSC_PHASE_INI |
> +				     CSR_2L_PXP_JCPLL_SSC_TRI_EN |
> +				     CSR_2L_PXP_JCPLL_SSC_EN);
> +
> +	return 0;
> +}
> +
> +static const struct phy_ops airoha_pcie_phy_ops = {
> +	.init = airoha_pcie_phy_init,
> +	.exit = airoha_pcie_phy_exit,
> +	.owner = THIS_MODULE,
> +};
> +
> +static int airoha_pcie_phy_probe(struct platform_device *pdev)
> +{
> +	struct airoha_pcie_phy *pcie_phy;
> +	struct device *dev = &pdev->dev;
> +	struct phy_provider *provider;
> +
> +	pcie_phy = devm_kzalloc(dev, sizeof(*pcie_phy), GFP_KERNEL);
> +	if (!pcie_phy)
> +		return -ENOMEM;
> +
> +	pcie_phy->csr_2l = devm_platform_ioremap_resource_byname(pdev, "csr_2l");
> +	if (IS_ERR(pcie_phy->csr_2l))
> +		return dev_err_probe(dev, PTR_ERR(pcie_phy->csr_2l),
> +				     "Failed to map phy-csr_2l base\n");
> +
> +	pcie_phy->pma0 = devm_platform_ioremap_resource_byname(pdev, "pma0");
> +	if (IS_ERR(pcie_phy->pma0))
> +		return dev_err_probe(dev, PTR_ERR(pcie_phy->pma0),
> +				     "Failed to map phy-pma0 base\n");
> +
> +	pcie_phy->pma1 = devm_platform_ioremap_resource_byname(pdev, "pma1");
> +	if (IS_ERR(pcie_phy->pma1))
> +		return dev_err_probe(dev, PTR_ERR(pcie_phy->pma1),
> +				     "Failed to map phy-pma1 base\n");
> +
> +	pcie_phy->phy = devm_phy_create(dev, dev->of_node, &airoha_pcie_phy_ops);
> +	if (IS_ERR(pcie_phy->phy))
> +		return dev_err_probe(dev, PTR_ERR(pcie_phy->phy),
> +				     "Failed to create PCIe phy\n");
> +
> +	pcie_phy->dev = dev;
> +	phy_set_drvdata(pcie_phy->phy, pcie_phy);
> +
> +	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (IS_ERR(provider))
> +		return dev_err_probe(dev, PTR_ERR(provider),
> +				     "PCIe phy probe failed\n");
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id airoha_pcie_phy_of_match[] = {
> +	{ .compatible = "airoha,en7581-pcie-phy" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, airoha_pcie_phy_of_match);
> +
> +static struct platform_driver airoha_pcie_phy_driver = {
> +	.probe	= airoha_pcie_phy_probe,
> +	.driver	= {
> +		.name = "airoha-pcie-phy",
> +		.of_match_table = airoha_pcie_phy_of_match,
> +	},
> +};
> +module_platform_driver(airoha_pcie_phy_driver);
> +
> +MODULE_DESCRIPTION("Airoha PCIe PHY driver");
> +MODULE_AUTHOR("Lorenzo Bianconi <lorenzo@kernel.org>");
> +MODULE_LICENSE("GPL");


