Return-Path: <devicetree+bounces-145257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4D8A30C38
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 13:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D12B3A7983
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 12:58:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6D60214804;
	Tue, 11 Feb 2025 12:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b="CBNPrdmB"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013025.outbound.protection.outlook.com [40.107.162.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA742144D0
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 12:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739278688; cv=fail; b=EezKG5aizYh5xn2UIPtPb72Sn7kUPGLiba/C78HgrXnhlxTLgx5DS9rhBISc+HCEhQVcosKi5RjzQxYadx/IpKqKvlp9jc+dm4dXHbpZ9wC8Llw/nM7MKlxQvrJkNsBhFCp/UjTQ/8f2vA1r6fOQuYn4YVugME7chmpAm4w/nFE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739278688; c=relaxed/simple;
	bh=QXsOdSkYhOsXEs+E2XFT4aa975ylKzbE4qt7YDZzvHc=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=QM3ny9OSeqRYMGVaPLu2uc0rGfL7uk42A9FplZCRbpBXD+rUEXlc6k8AaVxqtgqghpNnxRXjvZNhBUBb9EeJKL1jK52pAP0oaSpSo5gg9QbUNTkSjxxrH9KUgKyeCq0y8/zqI7EMGc9XPGD/t0MXIyzyj6eRkZWpLInBAfORTfk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de; spf=pass smtp.mailfrom=cherry.de; dkim=pass (1024-bit key) header.d=cherry.de header.i=@cherry.de header.b=CBNPrdmB; arc=fail smtp.client-ip=40.107.162.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cherry.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cherry.de
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RrmGa9g+LU2VgBjf+03jsZGVvE34zl2ACwhqu0iHA7oXCFG7nrCJGz0FK3tVnKvPFpJtcFSCb2X+lKA/veXyQ+yBsq45UTVf/chipUtb2VZ42wyBA6so5t0KyFk4L5/SzXMo/oWNkuybvM+GC1vHynfgCvdy8x8EHjT+JujFB9+ehHqA208JdpeIqGiX08d9sGY/oX/+3NgSF0v1aKoXLkRMgkQcNMVdMy4Nd0RabLRNoqwxHjxkgKu4l8zLVQo80pRqI5a49Ubnf8P6HjFoqwNtMxXAd6zNRSR/018t4W/f1DWox8pkWuytgMQTMIWVX3btlowdBrrEq4835OQb/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dm9ZUOlhfPfz6fpnzRN/tYaVvNMfiXwYdX1t1BFZR/8=;
 b=CRkbshu92VY5pbAGevj11JPhZbHC4RAdQ74/aH7bHEBd0OcuKdtXTuhKKVomGodzLjBp7ER0tziPY6MJn1IM2YUxEZ/T17odAbWT3XHUDLMed6UOrx81cquLXpbv/dIKDNFr+mk6cEcOGOTueUlkjeFG6Lloop1VXZ2boCpFYoHEpB+1iQftQ7hzM4QtPcOm5dGOdfSd20C1HRuWuPJVREMXcVbx8CIto0JIc9P97+Y2XwRo9zR1XECFEv8WyLij7oty5FXIx04wVat+8CAy6xS+vk5EwPoN0Bb1niSSow7giIAylSH1sdAlpIynMbnmovBFwcrDx2ukGRLJKfn0GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dm9ZUOlhfPfz6fpnzRN/tYaVvNMfiXwYdX1t1BFZR/8=;
 b=CBNPrdmBH2ehh8F41wwmiYPpF+MHBgKN+2ZiREgiiljc1EzLaa8fNEyE08RfLnUwBb1aFW8zmVznblQ5/I7xrS/n237ET756Dn1eFUopLNXVPkL805nH83VVoILiPCm2+NX6gTbJznmHN/AoHJ14qgxJ/bwpgBS900frwbWMo9Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DBBPR04MB7611.eurprd04.prod.outlook.com (2603:10a6:10:1f4::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Tue, 11 Feb
 2025 12:58:03 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.8422.012; Tue, 11 Feb 2025
 12:58:03 +0000
Message-ID: <eadf4de0-9d87-4fac-b043-fa8cedf72cbe@cherry.de>
Date: Tue, 11 Feb 2025 13:58:01 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
To: Chris Morgan <macromorgan@hotmail.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org
References: <20250130181005.6319-1-macroalpha82@gmail.com>
 <40c37c4e-b98f-47bf-a4ad-b977be5a6d49@cherry.de>
 <MN2PR19MB3728A89B77464B7B10543628A5F42@MN2PR19MB3728.namprd19.prod.outlook.com>
 <2925297.Mh6RI2rZIc@diego>
 <DM6PR19MB372282D74E6B093C00033BF2A5F22@DM6PR19MB3722.namprd19.prod.outlook.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <DM6PR19MB372282D74E6B093C00033BF2A5F22@DM6PR19MB3722.namprd19.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR0502CA0016.eurprd05.prod.outlook.com
 (2603:10a6:803:1::29) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DBBPR04MB7611:EE_
X-MS-Office365-Filtering-Correlation-Id: e63b3dd8-67db-4341-2d7c-08dd4a9bb84e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eVVkWG95czJEUWRWQ3d1S2NEcGtEYVptcjV6aVREVmcyQ0JmeEoxMEhISUEx?=
 =?utf-8?B?azhwaVJMYkg0RVlnRm91U3htVW8rZnh1T1ZrMmhVWitTbHNPSVhnd3lTWUp5?=
 =?utf-8?B?L01nV1RQTHVaSnUvSkxISDBHZXVLWTVEcjRjb3B3L3N0TjIxalMzOHBuU1VU?=
 =?utf-8?B?NnJDazRSSHduaXRnS0Q5WWdLNnI0RWFGUG5YQUc2WmxmU3drVit1aXdkbEx1?=
 =?utf-8?B?cXFSQWV5NXBURjFtVTJ0Nm5xMXlSd2FwZGhKb3lYRmdCTk1FWnlQSDhRNHhW?=
 =?utf-8?B?Wlh1ZUNPMjNEdjdUbk5sVk1Jc3hYZmhqRkRmdjJSQ3huUmhDdmlGWHo4Rkdj?=
 =?utf-8?B?WDY1Mm1mT2JBNnI2ei9yV3dqN2tnQUpRNzlmT3pReTZjSnZHdkl3NE9NdW1o?=
 =?utf-8?B?UDFNSFdnakpNb1FodEJMNUx5WFBuaVJtYWZMTzNYU05hNWQxN1FLdE1JcEFB?=
 =?utf-8?B?Uk1ZWmZTWURxSm1KMUFPM0lXZGNZNzRnVitOanV6eWV3UnBhaUEzdDA5dEJa?=
 =?utf-8?B?NnUxRUE4MEVsYm9ZTXkycGVjZjRBUGp5UzYxbXBqRS9JQXhITlRtTUpkWGpR?=
 =?utf-8?B?MFFMTmlGbmJnMG1jZFMvS0gzMWlXV1lxUExNS3YwK2U5eE9nc2Nwa081QkY3?=
 =?utf-8?B?QWVsYlhld2E0YXdSZE5sSUh3WVNFQkwwc3g3RzJ1VkNqS1B2eE5UZmxTbVFZ?=
 =?utf-8?B?a1I1ZWVVWjZRcnE4MmtJeHl3MlpPbnI2R3dVTWNTQ3RkVklMaVhyclcxc1dj?=
 =?utf-8?B?Z2p6ZzlBaS9rb1ZlZW5qZldtbDA3VTd1TlZ0NkQwYlEzQ3E4KzVudDVJUGRE?=
 =?utf-8?B?Y1pZVFBFdEdkejREMmxCS0Izbm9lMWZGbjN0OU1DREZOWXcrWW1JVllKOVhB?=
 =?utf-8?B?RGZXMHhaRWtreWswdG5qc3hUdWlHTEIyU2YvZWdYMm9zTUpUZ3phSzk4U1Bn?=
 =?utf-8?B?cmJER3k4ZTBjMzdkNmZFMm9WcEU2QVMwZHMwOXZaUGMrSUsxUnl0VDlIVGlR?=
 =?utf-8?B?L0QveVcvZnhDYUZzVm1rNHBhL002VXR0TzhjUnBqN0lVbGNNZzQ4YjEyNG1M?=
 =?utf-8?B?a2xBTmNXejJ4Z2w3Q3ZSVjN2a3pmL25JUDNPLy9zSjYvcTQ5R04xRXpsTnlB?=
 =?utf-8?B?dVQ0bjFKMndKazlXVUNTcjQ5UlFjNVJEb0dNRkdQZDNLdHhQRTJtck1sV3BO?=
 =?utf-8?B?U0J3SmFPblFCc20yZVJGTWVEVnFaRytnemFLbVc2azJYTXVodlppWG9YSWJG?=
 =?utf-8?B?alpIR0Nha25SOFA2QVlTRVJYVGo5b3k3RVExVjVRZWNhSnY3WnJhUmVPd3dJ?=
 =?utf-8?B?SG56byt2MURLVm1Bek9vMXBSVlk5N0pRNWdZVjFGQ0l3Y2RIR0lFOXRwS24y?=
 =?utf-8?B?SjVqRTJtYjhydjRoRW5kSkpkcGkxMlU1T1hhSWpsV1ZZVUIzMm00cVdZMzVq?=
 =?utf-8?B?NCtrVGdQeEZmT0x3TE5CN1lCbEh6eUhtdWorOEhQcU0vWXhxU0RNSHhKc2pm?=
 =?utf-8?B?b3grbnZTYUplbE0ycTNpUkVhRjA4NXpDTlRnVjcvcE5UaEEreTd2S2YrV1Jv?=
 =?utf-8?B?Y1F6Ry9wZENjRnUzNVZDc1drL3BLbzQ1V2FTR0p6NFVUYmQ3eURnWWNKT1hk?=
 =?utf-8?B?NHFqRUlrQmVKbkhldDlaUk5iYXQrRkw4MW4xOHhpRnBrZkJtVlVjNGJPcW5V?=
 =?utf-8?B?eEJGRUFQY2JIN25VdEY2VzVXK0pxWVNHYlpBR3ZLSExiaFQzRXB1c3FQTTho?=
 =?utf-8?B?cUdKVjZuMW44bGtWRFp0V1RBYnZvc2MyOUduZ1BDM3VURDJtWTY4RXZpSm1L?=
 =?utf-8?B?UmlSZEtDTkRNaUNmT3FKK0ZZWG4rdGFKNDVjU0MvMC9ZVDZCNThRYUhLUFVG?=
 =?utf-8?Q?Zr6ZmPGie84Qv?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UUVoczBQQWJHdys2ekZSTHpnMFJlUHBwWWJnaDBqVHRJR1YrL3Axei9sZVl2?=
 =?utf-8?B?TzdHdUUxM1lWc1dlajh5WGRSamMvK1R2azlDNmFpZWNOTVFXS0xlbzZpZFlw?=
 =?utf-8?B?U0ZwcER0eVdJMkRYZzR2em43YjBNb2NQR2I0Z1FkTXZ4ZnZiSXdLOEpMam53?=
 =?utf-8?B?ZEFleGRQOEdYenF5VGN4eVpCS1ZzcDduRG1RWnFBbCsyRGt5aHRXZEtDZy93?=
 =?utf-8?B?T0tJcUVzWXRicVE2b1JKK0dnL1BpclNmbUNKa1NCc09DRFliU0V4VWllb05R?=
 =?utf-8?B?VjZlMTBKZTRLZlc0cTMwazFtZHMzQzZhSTZjL0xNZzV6NkFFWEUrOTdVMU5E?=
 =?utf-8?B?ck9XaFlNZ1pWbytRcUx4UmNlMy9VbzZhdy91RGU4bVhKYUtKSFVtd3BjOEhO?=
 =?utf-8?B?b2xMVmJiS1hkOEM3R0tFekx3QXpJa2JWOFMzQjVZTjVXc1RTc00xMjdkQlB3?=
 =?utf-8?B?eEVEbTlKL2dvR3RhY0tJNlhqZ3RneEpvZGhhTjk2Z2FucW8yb1NRdGtlaDJL?=
 =?utf-8?B?Y1Z2RElqbmhubVRxZTBKWThHaE94NXoyUERwUlQ1N2hIKzFRNmFZa2FyVzZI?=
 =?utf-8?B?ZEJYejNWU0hpZlBJcE5pTWxPc0d2WVRFOHBFUkc4Z0h0TDJzcml5Sk5ieE5Y?=
 =?utf-8?B?MExFd2lvcXRsOXpzNm53eWIwZFVQemlmSFlPREUyZDBEZFNXcnFkS2hjbVBs?=
 =?utf-8?B?UU1FUXEzZS9EalA5VjBET25Ccy9meVFxU3ZVT3NKKzhzclhKSmNJSTRlUjZp?=
 =?utf-8?B?RmZXVDZyTFVTbi9COURFYzVSb2M5dXFHc0RTWVdmNTllaFphcmROYnFoTU00?=
 =?utf-8?B?Rk5IRHhaSVd1c1ZqUDQreEl0cE5jWk1JeW1vcmx5VFJUTE4yZjFOcTJ6K1Y5?=
 =?utf-8?B?MVFYeG1HUC9rMWRuNk9za0U3MzFTQUorN2MzWXVxQmdpMHhJY1BqN1AxUlNJ?=
 =?utf-8?B?Uy9Ga20wOTFDK2QwNGFNRURBbkRiOE90K2l1cWxReVNYdldLNzVCZktBQXRV?=
 =?utf-8?B?ZkNMRDIxUzFqT1h1dCtHQ2xpdWtsTXVjUkVhQzdVNzJhZXlwT050OWNqd0Zh?=
 =?utf-8?B?NE1WOG9pSTYyRklYZTk1aEl5emFONURqU2JWRVIvYTQ4YlRiMHEwR09QU0xz?=
 =?utf-8?B?bWVhdGc5S0o5OWowZ0ZvNFVnSkd3dC8vVmhJVVBmZmk2SSs2RWU2TGd6aE5r?=
 =?utf-8?B?M25FeGI3U1VMMkxMQ09rZGRoL1Y1eXdvbGEzZW1vSUxEQ3lyd1BXMlltYTE1?=
 =?utf-8?B?NW5hUnlzeEVQRnkyQzFJYzBERlpRUU82RmF3NnVuYWdDMUd2RTRROHJ1Z0xa?=
 =?utf-8?B?MlVlUnBWV1g3eFFGZnd6UXJqRnU0UTYwK2t1SUZZY3hKOTJpQWpMamoyZWVx?=
 =?utf-8?B?K3RrV1dWTDJIQWpMWDd3ODUzYkJmdG45Q1g2eUFWNHUxenNxU1ROOE9NTUlR?=
 =?utf-8?B?ZGVBRnU4RlRyYU5yNXJhVSt6ZUJkZEpRaHVEY0FhdXg5WXlsa3N3bnZHaUww?=
 =?utf-8?B?UlhCK0hjdm92dWVINDB6QTQzUjdQNFErdytiQUNsUjVCVjhIV0JLMCttT0Fu?=
 =?utf-8?B?NWV6STRBc3B3VTVmYnFqdFJKeWpvM3FGZFdTWTBHZXVCeTZQaThlRGZNMGtv?=
 =?utf-8?B?aHdDblgzT1hSQ1NiSW05WmJKK1V1WTVYNnJaOGVjZUZDZWpaMTJ4U3hXTDVE?=
 =?utf-8?B?S1IvRFpoazU2Y3U4V1BwdWhPdWNJSFlUNS9BWWJZbUppNUw0UU9BWjVlbHcz?=
 =?utf-8?B?WUhDdHprSzFYOTcwbVRGVDlxRFRhVmZsM014K1gzL2F5OTZaL0YrOVdocFh3?=
 =?utf-8?B?a2pRbWF0K3NHYlZmOW11ZVhPRmJraytrMkl5WTdoSk1oNEs5a3BraVU2a2pl?=
 =?utf-8?B?cHhZVEtnNkpEZnZ6R0ZiVVZMV3dOUVUyTXFCQk16NW1rZVZBeGdzbkNONjRB?=
 =?utf-8?B?VG5sRnp1aGpiN2w0TUJobEdvZlNKYkluL1I1UHV0TUdtWXdzTU1maWNoUEFM?=
 =?utf-8?B?S1Jzc24vblpWQTQ3RDNKczdRZWNGS2pTcC9wMXVTNXBjM0hBQnUyTCt2elV2?=
 =?utf-8?B?QXBCRUNQSkRkQ001OHd0cWM2NkJ1eExDaElVZDBXV1ZSK3Y5ZGZDNHlWMGxV?=
 =?utf-8?B?dHlBVUNKMzVET0hZK0RtTVFIZnFpNVVlYmZ5K3ZLOUF2ZVh2SEVhRzdUUzNU?=
 =?utf-8?Q?dqVCXrMicXRdXhweH/dxRxA=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: e63b3dd8-67db-4341-2d7c-08dd4a9bb84e
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 12:58:03.1008
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N+1ps316gQprP7CRsXN0aNkupDGs6LiZApwEQdhYqmItRFYAiAHSD1VbRqcpehvJH6q6KOWN2jurPTBNb1S4UDFcvBNSQWbmCUlbe3/PuKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7611

Hi Heiko, Chris,

On 2/10/25 6:06 PM, Chris Morgan wrote:
> On Mon, Feb 10, 2025 at 11:20:27AM +0100, Heiko Stübner wrote:
>> Hi,
>>
>> Am Dienstag, 4. Februar 2025, 17:16:22 MEZ schrieb Chris Morgan:
>>> On Tue, Feb 04, 2025 at 10:12:26AM +0100, Quentin Schulz wrote:
>>>> Hi Chris,
>>>>
>>>> On 2/3/25 10:27 PM, Chris Morgan wrote:
>>>>> On Mon, Feb 03, 2025 at 05:32:53PM +0100, Quentin Schulz wrote:
>>>>>> Hi Chris,
>>>>>>
>>>>>> On 1/31/25 5:59 PM, Chris Morgan wrote:
>>>>>>> On Fri, Jan 31, 2025 at 05:46:20PM +0100, Quentin Schulz wrote:
>>>>>>>> Hi Chris,
>>>>>>>>
>>>>>>>> On 1/30/25 7:10 PM, Chris Morgan wrote:
>>>>>> [...]
>>>>>>>>> When Optee is not present or used, the node will trigger a probe
>>>>>>>>> that generates a (harmless) message on the kernel log.
>>>>>>>>>
>>>>>>>>
>>>>>>>> And what if we have OP-TEE without this node present, which would be
>>>>>>>> possible if we have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set in U-Boot?
>>>>>>>>
>>>>>>>> I guess we could detect from U-Boot if a TEE is loaded as part of u-boot.itb
>>>>>>>> and fixup the DTB otherwise to mark this node as status = "disabled"?
>>>>>>>>
>>>>>>>
>>>>>>> Based on my understanding of how each of these projects communicate
>>>>>>> with each other, Optee can only work if you either include both the
>>>>>>> Optee node in the firmware AND the reserved memory nodes yourself, or
>>>>>>> if you have neither and let U-Boot do it (by including each of these
>>>>>>> patches as well as setting the CONFIG_SPL_ATF_NO_PLATFORM_PARAM). So
>>>>>>> basically just this node alone is insufficient for it to work today.
>>>>>>>
>>>>>>
>>>>>> Therefore I think we should either have this node defined + the
>>>>>> reserved-memory node (with hardcoded address and size if guaranteed to be
>>>>>> stable forever) added or nothing.
>>>>>>
>>>>>> Can we mark a reserved-memory node as "disabled"? If not, then we should
>>>>>> rather have nothing at all I believe.
>>>>>
>>>>> I honestly would just rather remove this node. The reason I say that is
>>>>> while we support Optee with the RK3399, RK3228, the PX30, and the
>>>>> RK3588; howver only the RK3588 has the node already populated in Linux.
>>>>>
>>>>
>>>> And we have a product based on PX30 that has OP-TEE OS running without a
>>>> hardcoded node in the DTS, so that's a valid point of comparison to me. That
>>>> seems to justify the deletion to me!
>>>>
>>>>>>
>>>>>>> The core issue is that Optee requires you to map the memory as
>>>>>>> reserved so that Linux doesn't try to use it. You can either do that
>>>>>>> yourself or you can have U-Boot do it automatically. Having the Optee
>>>>>>> node in the devicetree makes no sense today unless we also carve out
>>>>>>> the memory.
>>>>>>>
>>>>>>
>>>>>> We should patch U-boot to add these nodes to the DT if an OP-TEE OS is
>>>>>> passed and either SPL_ATF_NO_PLATFORM_PARAM=y or we cannot detect the OP-TEE
>>>>>> nodes in the kernel DT. What do you think?
>>>>>>
>>>>>
>>>>> We would have to assume some hard coded values in that event as I'm not
>>>>> aware of a mechanism to grab them at runtime from Optee except when you
>>>>> pass it a device tree. That said I think the concern above where you
>>>>
>>>> Yes, but that would be the same as BL31 for example and an expected side
>>>> effect of using CONFIG_SPL_ATF_NO_PLATFORM_PARAM except if there's a way to
>>>> provide information back from TEE to U-Boot without using the params that
>>>> would be passed by U-Boot to TF-A had we CONFIG_SPL_ATF_NO_PLATFORM_PARAM
>>>> disabled.
>>>>
>>>>> mention "guaranteed to be stable forever" is the problem, as even now
>>>>> the current address in the Optee upstream project conflicts with the
>>>>> kernel_comp_addr_r in upstream U-Boot, necessesitating one of them be
>>>>> changed (I'm attempting to change the Optee one, for what it's worth).
>>>>>
>>>>
>>>> I think it makes more sense to change the load addresses in U-Boot,
>>>> especially since those are just the default values for variables which are
>>>> configurable per board type, per board or even per boot, so it's something
>>>> one would be able to modify without necessarily rebuilding anything.
>>>> Essentially, it's easier to move that around than checking which OP-TEE OS
>>>> version one is booting before providing advice on where to load the image?
>>>> Up to you though, no strong opinion there.
>>>
>>> I think I mentioned this but in IRC but the consensus was to change Optee
>>> to match the same addresses as the PX30 and RK3399. No strong opinion from
>>> me either, just trying to get it working without stepping on toes anywhere.
>>
>> glancing through the thread, did you come to a conclusion whether to drop
>> or keep the optee node?
>>
>> I.e. from what I see, having this default optee node _without_ the needed
>> memory reservation would mean that _if_ an optee runs, the kernel would
>> either possibly write over its memory, or we'd end up in an exception thing
>> because the kernel would write over firewall'd memory.
>>
>> So at this point, having the optee node here, makes no real sense to me,
>> as firmware that would need to add reserved memory to the dt, could also
>> just add the optee node in the same run - as we do on other socs already?
>>
>>
>> Heiko
>>
>>
> 
> I think if I am hearing correctly we decided to drop this node.

Agreed.

Thanks!
Quentin

