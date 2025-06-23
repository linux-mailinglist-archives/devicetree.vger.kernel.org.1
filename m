Return-Path: <devicetree+bounces-188794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A41AE57F9
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 01:24:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D117C7ACCA5
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 23:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B56522A4EF;
	Mon, 23 Jun 2025 23:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="qUkOfUu8"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2069.outbound.protection.outlook.com [40.107.212.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570531ADFFE
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 23:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.212.69
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750721049; cv=fail; b=f6Gp424/g69Ez7ZUKqgk8t+XgvRJkQ8Xtu8VF3fs8VwoufPn+jy18amKCzl2w2iJhYFCkjbt7Jb4FFy/HH4Ksk4ebTEVGK9hSUZyZv2+GjzkAFkLdvNJc4SSPX2S8QPu/oltxH6kXXtQ/x1kQFg/w3vIQKxH9KTIN82Hmu+hJbE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750721049; c=relaxed/simple;
	bh=zJxsgaGUQToPB7QQwt7CzxyxMS3nNyYJzXSgaVzdLMM=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=JsdtkXD7YfMSWZJfY9i7Gl1h1V1Iq7qtS50YX65nyaOW6Tk4j9JorIfAXnguCyI4n7iscdi9UigNBnRedaSHLf14Fdif+SbN54UqwDAV5Mqddrtg3qLcuttDlRiSR5Bkh51/08o95/nFGJ4jtdDejy7UQ0yLmvgCIiT39eu0lxw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=qUkOfUu8; arc=fail smtp.client-ip=40.107.212.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zNga+2d9CRJfAF9mPQkLrAVTEJ3XNizlbuXpeD2GF4shcKOP9E3h/VDgZfaegHfzRhtqxHCvIEBQgs3FvmnHWY38+evwVgxwRAwEM/ex8UbK6BENJGyepd6iQg1VufCmJhWRo0DQUqq8Fi+CF6UFdw7oqhDZ7E6plk8PHpoLUPNIkMAe/SSRMRqtQzIs7/kwkg9jmV3FVA8VsxhPX325j//Q2S3ljKqTQ40P1ZzBS+G2xMoUv2nA61Hhm0rnlPJRqFFhmBAmCQfdnXD1H+lLRM3SYyIY/n03zERTBn8lppBh3q/ymDh+43SwJw8ZVNMdsuLMGRJmZgq2H8BuWhUFmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i7DXCgRcryzdVxZwkIPq5Vvhcp4tr9GBYmHf0NUAtjk=;
 b=HBA1vTBh+ucO/+4OlGkcqs9JS1QSFTBDiySqOoGwriVOtAO0rWyEfkiaHRBoE2QQRUuWFwXYACIUEsbAOl0JblhXE4bAtq87GtBJdeR5rctpbIZ06L+W3ziGvpMFkeFuA83x7rPfMceIiJ+QUAsRCAc68JcNsdZWHZ9SWqlNke2FHTg6lj8FdWJh7dRHkWAVEUO0BqF4s22xBK7LfKsGXc/87yWTbgsl/+SLZinIMr2o/fVHpaRuBfgbM3gDBs4sC3H9Cvqs01E1G/PDVtxVOgKDPJ/+AFtAsDno9MynaIDqQHlqWObJUlgLyC7ECiGRQS3+JW6AEs41zSoYdv2I+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i7DXCgRcryzdVxZwkIPq5Vvhcp4tr9GBYmHf0NUAtjk=;
 b=qUkOfUu8C9jTgh7RasicQbDrjZ7HpLjOGDCyeOKildp2Hw06VU4iRTBFurNXvpOQGGhFsBXtMALZfX3iDJbe2i76sFxypmBG/SZPjb9JqH1A+jYFqx0H0tN9Ac+vq6RxHoQNxyhsX1IigNvLmxg6Brvd9+SPsUCcHca4/LoF0Ig951y5pA4c2bzFy+BfdX0yT8FMiea6IPk+8a6eUmpcDa7IP+aXgXn4qmWl3ldCdqoxSvdh3x1Fapz1IdE+fn+ggydvc+vegBFVIemg4/xeCae1vFSKzN/YEsOAXlB1JXt64670Ir+TfHiYFrSK47DxFRHvnqbCdjz45qaC365yDg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from BYAPR03MB3461.namprd03.prod.outlook.com (2603:10b6:a02:b4::23)
 by MW4PR03MB6394.namprd03.prod.outlook.com (2603:10b6:303:121::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Mon, 23 Jun
 2025 23:24:03 +0000
Received: from BYAPR03MB3461.namprd03.prod.outlook.com
 ([fe80::706b:dd15:bc81:313c]) by BYAPR03MB3461.namprd03.prod.outlook.com
 ([fe80::706b:dd15:bc81:313c%5]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 23:24:03 +0000
Message-ID: <b97b3ca8-b65e-4e68-8995-ef11bc488930@altera.com>
Date: Mon, 23 Jun 2025 16:24:01 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] dt-bindings: memory-controllers: Convert Altera
 SDRAM EDAC .txt to YAML
To: Shankari Anand <shankari.ak0208@gmail.com>, devicetree@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20250623195741.300644-1-shankari.ak0208@gmail.com>
Content-Language: en-US
From: Matthew Gerlach <matthew.gerlach@altera.com>
In-Reply-To: <20250623195741.300644-1-shankari.ak0208@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:a03:254::19) To BYAPR03MB3461.namprd03.prod.outlook.com
 (2603:10b6:a02:b4::23)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR03MB3461:EE_|MW4PR03MB6394:EE_
X-MS-Office365-Filtering-Correlation-Id: 523a2660-80de-4a53-b624-08ddb2ad0a20
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TTNrU0hyVkVDb1VqK0E3UjRuN1FYb3MvTVQzZ2ZENzRDMWltSWFUVTZ3VXBR?=
 =?utf-8?B?aGtubExEanJKc01TNkl1RHdHeG1nT1JsbmdCMnlkUGp6ZllDQkVmekJVa2JE?=
 =?utf-8?B?eWJROExLc2pHNHZKOE9ETkV1UlEwQWUyNFJ6UGJnY1BQOVMyQmVEV29tN0dZ?=
 =?utf-8?B?MG9pcTlUTFZQNFNoTmZ5MG5NSXFrTmtsbTRBaS9RTHZLV29KQ3BqQmtURUpv?=
 =?utf-8?B?Mnc1b3VpbnRLVzNPcGZiUFRTTktvS3RKUUxhSG9hS0dRcjNmWVhCb0hjWCtt?=
 =?utf-8?B?V1VXUmxNUm1KRlM2a0Q0VXFPMks2YlNYS1J0ZjMvQ0V4ZjhsM3ZycUlHMzAz?=
 =?utf-8?B?OE9hMUo2YlFuUmJtM2xpVHhBUkl3czhDd3FiTXpoR0owbkhadjVpTnE3M0ZZ?=
 =?utf-8?B?VjllRzlVUjFEeFdEL0ZKbm5KamYrNHYxR1pxZzJKSjhpbHN2OXRqbFVUSTlN?=
 =?utf-8?B?ODJGbFNKNEhVUWRja29hanNXN2J3WUcyVU41WU1GU1lJK2lSVEFJeEtzaTg2?=
 =?utf-8?B?eXpOVnRwVFRiUFhIWDYwM2owY3AydnpHenA2cFBrMEdjZ3VKaVdLcnZyMTQr?=
 =?utf-8?B?cXc3bG92ckpVd08zY0Z4d0lTdG5CNHJDWW5TUmYvWGFDL2FoQ2RnalFxdkN0?=
 =?utf-8?B?V2FhOVpyZ0NDZVpxUy9RVXN4eEZVOEplaUtVNXVKdW5nR002blBFSlI2SldQ?=
 =?utf-8?B?cnliV0E0WGZpSWtobjJZZ2VFc25UVXhBSnFsSWIzV21FZEJ2YUdyUFdBejIx?=
 =?utf-8?B?Lzhzc29STFR5bFVqRUlEUUIzQ1lFWEpKb0MyVmtrL09icCs5UzRPMVkxMGlU?=
 =?utf-8?B?Q1FHajd4TnFWdTdzOWFRc09ZT21FYmpwbUFORkpwODNKck1pekthNjMwUG1C?=
 =?utf-8?B?d3BUbUhaRFZ3UmY4QVJpVXduTVNveUlGOTdYTG9Rb2dUNldXNncwTThieEJT?=
 =?utf-8?B?bzZraVRaSHRsTXZZeGVjM2lXYnFDWFM0MmVCbFdiM1dWTm9CcDUrdGs3anJw?=
 =?utf-8?B?MURjMzhoQU1lYm9DajBKVm54YnJoOWQwSDVNck8wUWE3aFBxUW9ndDJUMzRq?=
 =?utf-8?B?a0VYM2Z1TlpPVW1mYkVXdWc5b042NmFva3AyamZrSGROdWp1eWI0cmF3cmd1?=
 =?utf-8?B?SWptbk5QVkw2V1VRMml4ODdUYVNOR0c4dWJqZVJSME5QYWtOQUhRWWduN0dw?=
 =?utf-8?B?a3ZSb3huRUFXZ0dmR0FpREZROFdWbnlESUVFVWRZSjZZdkFSZ29zWStRelUw?=
 =?utf-8?B?cUNKSnJBbkVFZVVlOHhKaDhqNFhHWE0waUpMc2NyODl3U29HUURBRnlOVjdQ?=
 =?utf-8?B?dm03aTgrWmhJVWFqdkZQRzZkU2RxK1FLd0hmeXROSm94bll2a05tR21Kazda?=
 =?utf-8?B?NzJHc2J4eW1yM0lZZ1M0QURMOXk1Y2NrVTJsZ2xSV0lJV3hESzNlc2M1bnpa?=
 =?utf-8?B?dHJleTZwS3VLZ2haTjdROWNKclJXRFgzNTR2eTRVV3RUd0RFd2oxZFdoTWxi?=
 =?utf-8?B?azl2QWtPWm82THduUW03TURrMm9JSmQ1MFFwRTNIN0hOL1NLVUtpQ1VvTnI5?=
 =?utf-8?B?Z21uUzlxQXZ4b1BoOWQxUWJyRWJVV2l0bG9scWM2dG5aMXpoVHBxV3ZKRmZo?=
 =?utf-8?B?dlVKOHdHc0c5bVYzRGt0eFdjU1MxWXUyTHZYNXFOcW5GcEZ2UC95RzNuSHZZ?=
 =?utf-8?B?Q2dYN1IvUnJWSnV1eTgyM2ZpRmVCS2ZnS2ZNK3QxcWJyTlIvODlKQWR5NFZp?=
 =?utf-8?B?M3ZoODZtNmhIVkhOTWFORUVENU1UVFVNdUpTNzVvdkw4OS9DWS9UVExSbG02?=
 =?utf-8?Q?7Swvb9Oa1bD2AB2ieaVpPpMrY/3cxIZk7BSf8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB3461.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?UGJIWG9WeFJSRHU1Ny9sWnpudy9xUlJ6QVpVTjlQQ3U1blFDMC9wZTVVTkdG?=
 =?utf-8?B?aW8zMnVBM1J1aW1RNGRUT1U0NmNINFZ3MHZJQ29wbjlydFRnZkNmckttSzM0?=
 =?utf-8?B?SExDOXhWVGFLQi9PQVk0blpGc3VVdUZ6STdkMXBSRGU3ZXJxSEI2QW9RNklB?=
 =?utf-8?B?RFhtMjhodE9zUytQUGpPSXFGaUk5RmZ4NTZ0cU1aT3g3K3hpMW5FOXArRmtu?=
 =?utf-8?B?eHc3T2lLMVpHV0RSY2tSWHNObzlvTmFXY3VPeVN1UTRpa25QRXlFZnlRLzNR?=
 =?utf-8?B?OXZkYnVKRVR0SmorREk3WUJRTmowcmRCd2Z6Q0JQZXZYay9JV29BU0JqRStr?=
 =?utf-8?B?TWJTODVuZXJqS0NlcFBzR3h4RUhBSzhNc1hoUElxenc3OUVOaDZVY0l3NVVr?=
 =?utf-8?B?a1Y1U3Q0SkVjWnVpTmU5SC9JYm5NcVVURm1OLytuejU4czZNeWlua3J4REl3?=
 =?utf-8?B?dXcrbmtPT3hrbDlZNWFOSzNZU0NkbXdJK0xIcGQ2OHM0MTlWZW51cUtmbzRt?=
 =?utf-8?B?dHY5dk52R1VubUVFWUV2d0U3UjBMQ1hVeXI1ck9mVEd6OVFGNXZONjBCUkZG?=
 =?utf-8?B?enZ0UVBwQi8xRjZ1VU5ENnVOWGhDRjBGMTJZS3hNV1Y3ZWhIdXVOU01TNG9C?=
 =?utf-8?B?L2tTeS9vNVpFSm5vdWpOUENoY2hGU1RIOWw1Uy9ITG1DeUdVU1BpQU5BUHhM?=
 =?utf-8?B?TGgzN2lKeHcxQ0FLenNsaHRnb241b1F3UEliY1NLRkErT1BtaHIrUGQ2dER4?=
 =?utf-8?B?TEFMYUVIZnFiN3JNWVpUN1AxUnNCMTd4N3JyU1BDeTIvbVRONUFKaDV4blRt?=
 =?utf-8?B?RDdFdkpYeERuNHVDRzBGL0tzMnQ3S25FUUEzYnBKSWZXNjRObWlrQWU3RHJw?=
 =?utf-8?B?eUZoR1RSTHhYMXV2MUxqNFNwMW0xVTl6U0IxUDhuYnJ6MGVTcUp0bHpIQU9o?=
 =?utf-8?B?b2g5R3pDQnlxZjRIRmgxUElkcXJsYTllZ2c3MnlxalhZYWVHSW1kTzFOK3lz?=
 =?utf-8?B?WkdPUEx3UXA1d2NFZy9yV0FIZDRYWG82dUl5MjliNGpNTHhSVDdJQ0lqL2Nl?=
 =?utf-8?B?Ly95TVczOC9KRFNaQXcwcW5xRUtZT3dsVXVyMHFXbmtEU3FxVjBYWllVSk94?=
 =?utf-8?B?SnF0YU5FdVVQaUs5UlYwTFl1MVptOTFIbkZ3ZHdSNGt3RDJOTFFUVTBYeTZl?=
 =?utf-8?B?TWJIeE1HOGk2eU9DZDJpMUk5QlRrdkhPZ0JiTjFaWmdETHZKZ1JYTW9BRHZM?=
 =?utf-8?B?ZXpIZE9lUENjeG5jdDg4VFhhR1c5M2ZFQUxLK01IRjFkUURnbDVJUVdGNCti?=
 =?utf-8?B?b0NrN1F0R3A1MWtwK1VtRDBPRERoV3NlZHh3U0VxTU5RRG9CbWtMN1I1MHJJ?=
 =?utf-8?B?Znc3dVBJeDZGRyt4bDZwcCtydVhwT0oyNHBIdlFHV3lQUU9nZi80SGtTOWtN?=
 =?utf-8?B?NHA3RzduUTFNMjQ1SEJhYVZoejRCQU9nQlRiODFHOG9ZWlIvTWVDUWxHQjB0?=
 =?utf-8?B?OWJoVTQrYktJK0hUOGdPc3AybTBjVytacjcvRGRQeDNSY1BhVnc5SDJjbUgw?=
 =?utf-8?B?OWJudkYxc2lyUGJqNXF1QWdSc2NJazZycEdkaHY2NjY0RFNnRm0vT1dRM0h0?=
 =?utf-8?B?NTg0aEozd3U1cklDb0VVSzIyM2hsV3M0R1VpSm5ONmREMWoxbFo4SGRuZEIw?=
 =?utf-8?B?MFpyejRoeWxXZGYvVW83VWx6UlhaM1JrOUI2N2djL0QxY2YxS3gyMXFvTGFY?=
 =?utf-8?B?Y2RUWjNLQjlrK0VMWEFjak56c1BoalNva2prWExKNmVZVnJyQkN4eFI0VFFi?=
 =?utf-8?B?anhSQU9yR0hsWnYzTGFJbmdCaTZnTk9wM2ZjaytCY2lidjlMRnVHQWJpSjFn?=
 =?utf-8?B?b0RFQlVpMExEWTVQVzlrblZjMm51V3FRL0xPbURmQ1JxaXloWDlLYm04ajIr?=
 =?utf-8?B?dGJLS0l1bW15Vlovd2tpYUNBbi9KVWFKT0dYdU9LUDRqWTZ3d3hpWllPeG5Z?=
 =?utf-8?B?cUd2b2NwUVdhTkJGN3JrMERkQjdQNEo0M2VuOVUxRzloa29SbU1uN1k4aHlz?=
 =?utf-8?B?K2N2UVhoR0U5LzZJRjdJK0RQeVR3SENveGNKaEx1cnU5YjVRRkxOL2Y5Q1Fo?=
 =?utf-8?B?ZFpVbDBsanBXQzJoSk5MZnNaMEEwOGVkV1hXaUVvdkdHTTQvMm5icExYN3RO?=
 =?utf-8?B?UkE9PQ==?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 523a2660-80de-4a53-b624-08ddb2ad0a20
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB3461.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2025 23:24:03.3181
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EGutFBIKt22yNE9MYzGxbZ0rPKyzeFfDZyRfd6K8xixqxJdkey/w9UaBtIvxShss0tHgk8h+EcncocvRgInpPWIajZ2bSnxBnGmZeywEb3M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR03MB6394



On 6/23/25 12:57 PM, Shankari Anand wrote:
> Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
> .txt format to a YAML schema.
>
> Added a 'reg' property as dt_binding_check flagged its absence.
> Dropped it from required as it causes warnings in altr,socfpga-ecc-manager.
> The controller is memory-mapped; address is confirmed from Intel's manual.
>
> Also added two strings: altr,sdram-edac-a10 and altr,sdram-edac-s10,
> compatible with altr,sdram-edac but use two interrupts;
> Schema enforces interrupt count per variant.
>
> Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> ---
> v5 -> v6:
> - Drop dummy intc/sdr/model/compatible from examples
> - Make reg optional to fix warning with ecc-manager binding
> - Reduced the examples to one
> ---
>   .../arm/altera/socfpga-sdram-edac.txt         | 15 -----
>   .../memory-controllers/altr,sdram-edac.yaml   | 65 +++++++++++++++++++
>   2 files changed, 65 insertions(+), 15 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
>   create mode 100644 Documentation/devicetree/bindings/memory-controllers/altr,sdram-edac.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
> deleted file mode 100644
> index f5ad0ff69fae..000000000000
> --- a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -Altera SOCFPGA SDRAM Error Detection & Correction [EDAC]
> -The EDAC accesses a range of registers in the SDRAM controller.
> -
> -Required properties:
> -- compatible : should contain "altr,sdram-edac" or "altr,sdram-edac-a10"
> -- altr,sdr-syscon : phandle of the sdr module
> -- interrupts : Should contain the SDRAM ECC IRQ in the
> -	appropriate format for the IRQ controller.
> -
> -Example:
> -	sdramedac {
> -		compatible = "altr,sdram-edac";
> -		altr,sdr-syscon = <&sdr>;
> -		interrupts = <0 39 4>;
> -	};
> diff --git a/Documentation/devicetree/bindings/memory-controllers/altr,sdram-edac.yaml b/Documentation/devicetree/bindings/memory-controllers/altr,sdram-edac.yaml
> new file mode 100644
> index 000000000000..96677fdfa7f8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/altr,sdram-edac.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/altr,sdram-edac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Altera SoCFPGA SDRAM EDAC Controller
> +
> +maintainers:
> +  - Matthew Gerlach <matthew.gerlach@altera.com>
> +
> +description: |
> +  EDAC-compatible controller for SDRAM error detection and correction on
> +  Altera (Intel) SoCFPGA platforms.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - altr,sdram-edac
> +      - altr,sdram-edac-a10
> +      - altr,sdram-edac-s10
> +
> +  reg:
> +    maxItems: 1
> +
> +  altr,sdr-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the SDRAM system controller (SDR) syscon node.
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +
> +required:
> +  - compatible
> +  - altr,sdr-syscon
> +  - interrupts
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - altr,sdram-edac-a10
> +              - altr,sdram-edac-s10
> +    then:
> +      properties:
> +        interrupts:
> +          minItems: 2
I believe the above if/then is causing the following error for the 
stratix10 and agilex variants:
/tmp/mgerlach/git/linux-next/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtb: 
sdramedac: interrupts: [[16, 4]] is too short

/tmp/mgerlach/git/linux-next/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dtb: 
sdramedac: interrupts: [[16, 4]] is too short

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    memory-controller@f8004000 {
> +        compatible = "altr,sdram-edac-a10";
> +        reg = <0xf8004000 0x1000>;
> +        altr,sdr-syscon = <&sdr>;
> +        interrupt-parent = <&intc>;
> +        interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
You need a ',' instead a ';' above.
> +                     	<GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
The line above gives me the following error when I applied the patch:
Applying: dt-bindings: memory-controllers: Convert Altera SDRAM EDAC 
.txt to YAML
.git/rebase-apply/patch:104: space before tab in indent.
                          <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
warning: 1 line adds whitespace errors.

Matthew Gerlach


> +    };


