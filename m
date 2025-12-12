Return-Path: <devicetree+bounces-246117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEADCB8B9E
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 12:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95AD73066720
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 11:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A225531D72B;
	Fri, 12 Dec 2025 11:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="NIEq1cHr"
X-Original-To: devicetree@vger.kernel.org
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013000.outbound.protection.outlook.com [40.93.196.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D449331AA96;
	Fri, 12 Dec 2025 11:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.196.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765539331; cv=fail; b=CsZJ8CugbxjN9tNDvfRX6qhj9HKXd7CKLASkllhcpImxlgX+/r8+3n+FDk6C5HpM3U0Cpl6pheZpUnaRLh6dJJqIrlushoM0xBc6syfMpGUL8y7MYP7xBJzxbREea/7QEa2XSeuauu1RxNiaRLq2qXyXAiwVrYklDtCw588XqB8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765539331; c=relaxed/simple;
	bh=orC8iOjzCrgNBjTngEYtePCwzg1UooxqUousjp4b2zM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=HrwFAKMQZkmeXd69VcxUMCs/Y0rt+tg8u/jZ4FAZmYfm+2K2pGkxli2MPqN5OU9HCpo2mBOqSslRV807FTCYQVEEBcA3w4qtbFVctctAX3V3kKbWzMRnQZU3JgEJukozkNxFYgw8yo+y96/Ah5bpxzM6UUdHkuwrxUnsTVHg92M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=NIEq1cHr; arc=fail smtp.client-ip=40.93.196.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yf97xu7YC++mZP/S4BxmOSNs2SqOVXWpXUxFVGbdDnLQNlRaoFcD+xutrn5FT0TFJBPWxucNflhLhCCJFHOt75nma2HWOLWGKD3jUDz3y26gw2gohHPdS34/cNCe0qkGG316VPPYQNh5BDU8wC6cD0xunMkRFFy+NWcyBZufC8NWobilHdvnH/Bhp98EXSpz005tmFcQdj1lSlGc2sA39TiE29luwqNZyHZw16r4Y5aiSJiIwCsWKpDny2gaMEOoTWCPDlYEXNQWwrLoYScvZG+AN2f0qmAluOdQcyHJtcguQXPIhmoGl46o9UpA6Aryr5mHWw8Ctkeb2E0paUsQhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ai0vBzMoqhdbdIz3tZ2vjCz9iZZww6HQ7+QjZ2lrhbQ=;
 b=RReT/Y1A2oD6yYfgaJcu2FKR2fIHX2jayeIs/9zfpYOmGa1AkP34R31zFKwqFCS3P8y+eeygQW5smLGNbsO1eTfgSY9Cik6wzQoVMrVrJjVdaPkCHXOd67/bziJojksvvgUC75Sq6t8d6/AXZ02ClQuAJ/ge9zpp7OSBWgtL44G5Qmm4bADJksc7TvxXNPrblIyN3LvBYzYEqJn7Xf5Le067ioUOOOpTylTxazlyyXEWNm8H3/Ar683D7iriMJ8qOWi9joFu7HK96ELgyfsixNHv1PupZ3kvFdcivBeeLCLieE+SQ0ZlTXPYhltfzKJN0qtASvROphI9EBfezhOEuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ai0vBzMoqhdbdIz3tZ2vjCz9iZZww6HQ7+QjZ2lrhbQ=;
 b=NIEq1cHr5NogjPgJraojWCNkaWmgQcmvZOimg5j3ivTT+I4kF63Qu5B8FK1eRks3aRYW949xmizXq1pTxMeOgYtJoezAStrrWbMH8mJ16mPw8vN0lvNbfbEmKEyJ/Vd+5l8UZ82GvOzh6RvojWNexD51l8q1WUo23zEk2pswdjsIizGnQE+kqTSVk+xPS0MaZrOHTiUzUlEM8bUgorCRy1qyQ3g7fSe2SRwCInVL3Q3ROrlrpAd0doZCglwtqZ+r1MOsfk5kRywIr9/w4ep8ZB/Um1gyYcVQ4UBmJKn+Mf7+Uv76DkAz7MPthMPMgTXdQKIdMHq0GKvGLOv6vLX0gQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from MW4PR03MB6555.namprd03.prod.outlook.com (2603:10b6:303:126::12)
 by SJ2PR03MB7473.namprd03.prod.outlook.com (2603:10b6:a03:554::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.12; Fri, 12 Dec
 2025 11:35:26 +0000
Received: from MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb]) by MW4PR03MB6555.namprd03.prod.outlook.com
 ([fe80::9efe:fcb2:936:c1eb%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 11:35:26 +0000
From: hangsuan.wang@altera.com
To: linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Thierry Reding <treding@nvidia.com>,
	Lee Jones <lee@kernel.org>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Andrei Simion <andrei.simion@microchip.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Mahesh Rao <mahesh.rao@altera.com>
Cc: Marek <marex@denx.de>,
	Simon <simon.k.r.goldschmidt@gmail.com>,
	linux-drivers-review@altera.com,
	Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>,
	Khairul Anuar Romli <khairul.anuar.romli@altera.com>
Subject: [PATCH 1/4] dt-bindings: misc: agilex5-soc-fcs-config: Add binding
Date: Fri, 12 Dec 2025 03:35:19 -0800
Message-ID: <f14623df4725f66c5ab6a9f75f0a5efd062dbd8f.1765534135.git.hang.suan.wang@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1765534135.git.hang.suan.wang@altera.com>
References: <cover.1765534135.git.hang.suan.wang@altera.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0372.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::17) To MW4PR03MB6555.namprd03.prod.outlook.com
 (2603:10b6:303:126::12)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR03MB6555:EE_|SJ2PR03MB7473:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b9d3f66-cdd8-4979-5a20-08de39728b3f
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|1800799024|366016|921020;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZzJUUktOMnV1RFlNZEYvYW01RFdodVJOcEI4ejM5YmpkRXc0QWthMGdLNUZl?=
 =?utf-8?B?NmxHNHN3K3VTdGZCeGJ0V1NpcEpZK29kQUQvWHRqd2Z6S1EyQ2pLdzZqUm83?=
 =?utf-8?B?M3Q4Q2tIc3NnZ0xyTWVZM0dZRFJvaUtMNndaeWFtc2RZbytLS3BXRElvUTBF?=
 =?utf-8?B?Wk11ZHRrM1BxV0tXZ1VSNDhKMnIvWGFkR2sxUURESVRhS1lDZ3AraXFEWkJl?=
 =?utf-8?B?REY5ajRkclRHMzNZckY1Mk9zSmVnTFIzSnM3Mk1DYStTUGRKb2FxdzJxalZI?=
 =?utf-8?B?aTlBNlExZnFMbmJCQXA4VzV6RkczQ0w4V3k0VlBCSWU5NE45NUt1b1JqYWFs?=
 =?utf-8?B?YTNEZGg5UnE4Q0JaVFNsRkNmZUsrd3hLT2s4VFc0bUd0MnM4WlFkejJYS25R?=
 =?utf-8?B?dFFYSXZQdi9HVDNhQVBYbE0raEJWRzN6NDR0RzUxTDhBR0prSmx2WXlmRVFO?=
 =?utf-8?B?Q0ZTeEltOVdQWW1GREpyUnNHK0hCaHZrUS8wWjRoQy9UWFo0NHpXSkVSaklp?=
 =?utf-8?B?Zi8yajUvTDF0L05HWVVrRnFyN2RxcnVUaXgwU3Q3MVlXM1JJeUhNbk10dVVi?=
 =?utf-8?B?b0RmV3ZFY1VzOVcvdDVEak5WVXZQSWE1UW1Pb3l6YzdzTXQ3cGo4YmFDenhJ?=
 =?utf-8?B?VU1Fdk96VjBWdnF5bTkzMmtFVE42bW84bE55VjROclM2MVJQOFZsaTIyTkhO?=
 =?utf-8?B?dDd5VXdibDV2eUkyd3NYLzVFQ1pYcERVRlpxYnJyVGdkcTJwKzVyZ0R6M3pY?=
 =?utf-8?B?RnJzVlR5SnNqM1dwaCtFVEpLK01VZmthV3RMTFFmdFRTSlpJbE1hYllQd0hB?=
 =?utf-8?B?cEdKaW9OWktnNWdESVpEZ29NRDhTUGdCTGJMRGEwUU1DcHpKQ1hpa3dOOUNq?=
 =?utf-8?B?ZmovaU9oYkdYUVoxMmFkOUJUZkFRa0tmRk9OK0tka3pMVUtndWtoS3hjNXNX?=
 =?utf-8?B?bDlMeis5eUVvUWdFWGMrTlE1SXlwOTlrNUhsZm4rMisrRng5c1FwMzlaMXFi?=
 =?utf-8?B?bVJkUUJRSVRtOEw1czkrbGFTT2I4SEYxU2JUL2ZiejBZd3VYSXJncTlxNTR3?=
 =?utf-8?B?dVgraTNJbEVVSE8wb1d0SnlWRnBpMmlTZ1ZUaXNYeFJNcWl0K0x1d0RTZ2Z3?=
 =?utf-8?B?aFYwTU4vS2FZT0xLS1RZQ0hLS3N3ZjNubTZ5ekx4UGRIcjFGOVZlSlN5dUZz?=
 =?utf-8?B?VEJLV1JYcHVVUWx2YVpzOEs0bVZJM3RpU1ZFeUVlemVnZStPUWdDZVJnRXVR?=
 =?utf-8?B?TlZJZ043VHA3bktWa0syQUxiODZxSzFqNlpacW13SmFGYS9rSGVYZForR1kx?=
 =?utf-8?B?aXJFVjNtV2NkQUJRR3dkdXVQL2xlVUY3Rm9SdW1sbkhBUHBadk5YTGlsZlVu?=
 =?utf-8?B?Vmx5ZXpmNlZBRDlZTFhJTmpXY1phS3p0VjVnZGVWOGR0VlNxNThMdVdUMkxS?=
 =?utf-8?B?UFFVbnBkdmpnMzRjbDc5b0RFTzIwOTFKTnFEMlFWMkNtT0RWc0dWeldMZGpS?=
 =?utf-8?B?Um5ZQmo5SFFidm5qMGR0TTZOWm51YjJPM1lGSXdQeWhsVDlLVnB4MnNjSWZX?=
 =?utf-8?B?ZFpTKzltMVFGczdOVnI4TURZNTJJYWtIc2tNb0pRQnZMNUF3dGxKYkZHd1BS?=
 =?utf-8?B?bWxUOHZsVldwbWg3Wjh3T1E2bGJIOElHajVoNnNVaWt0WnVlTjR3eEZYWGs0?=
 =?utf-8?B?UTdtN2FwL3ZSRm5mYlFLMis5TmdpaVZONXducklNaEo1QmFMaTd1Q1c4d29t?=
 =?utf-8?B?R0JJNGo5VHh4Nm9Qb1c5OFhmKzRrZlBsdTFmbVpQeG42YjQyc1FPTWc3alBs?=
 =?utf-8?B?YnphTnpIMTh6TGpLcjZjNWVCWW0vMExFTDdTSzlmRGJ1YTBoQ1c2Qm5kOFlM?=
 =?utf-8?B?bGs5bndDbklNSURyTncxYnJ1TGN4NUFEeDFQaytFL3ZHWW5ySjluRkY1Zzh3?=
 =?utf-8?Q?B9EvHbiFizQQ8rQVJbW+AwozOrZ0CafK?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW4PR03MB6555.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?aHFVRmUzdFBVV1Z4NmZyemVWQzQzbGo3bm5Jc0JNMlJQOTExZEVKUUZ5RXdv?=
 =?utf-8?B?c2VBaUdGNXZsaGk3OGtsTGQvS204TS9CSTA3Z2l4SlJaRGxHNE01MzkyRHRL?=
 =?utf-8?B?SStRWHVFNUV1TG9lbk1RSkJxSDhyM0ZSZnJHeWNocitsVml2NHpHRmN2VmFB?=
 =?utf-8?B?ZXYvRVJXMS83VytDdkloZi9hUU13elpPUDFMRzBBQnhNakFFYWFYeXBzd09X?=
 =?utf-8?B?OGxQUmozZitQV3lhMVIrbjM5cVdpS1BGRXFMTHA1Mkt3OUdFVUtGL1pmVWN6?=
 =?utf-8?B?aDVhbFY2L2lYM0l6SFFoNXZTUUtLT3VJYk5Id1QwdXBhc2gzaDUyZFowVUZZ?=
 =?utf-8?B?Z0VhNkRlSitSbkh3bWZrWS9HL3NsUUVlSjcvOG04V3A2WTIzSHpxQ0RQTGdC?=
 =?utf-8?B?SlhpMDRKMHlDSDBrR05abnNBTytuMGN3UWJtd1dTMmVHTEt3WW1aUHAwamVG?=
 =?utf-8?B?amJ1OSs3MC9FUVRldzZadVhBbWhhWG9sY1lENFhNY0tRTlpBQldPVTNjbXdh?=
 =?utf-8?B?OTQ2K09ldGZCaThSV284Sk1oUTAzN1VKZnhvRlpGTUZKb3VDUmk5STYyYm4y?=
 =?utf-8?B?ZU41dFRXSGRweTBwcGVBMUJrUXd6Vk0raGpYMkNKK2V4RUR4T3MvWENqblNh?=
 =?utf-8?B?YnR3eExBQjZTMG00VlZMRktOMU9OQmFMTnFGdkd6c3lsTm1Fdis2SDdXTWp5?=
 =?utf-8?B?bVFLdXpKZlJKcHRUMWlsL2pBQzRScWVoOEZ1NHFmZmN5RE5VU1ZhVzR1bk1m?=
 =?utf-8?B?cEo0NDlSNi92U1RJNkxXSUhqRFI2d2gzQWY3UWFnY2N4di8xQnNKLytlVGJ5?=
 =?utf-8?B?T1N4N1k4RHBLaGhTZ3JRT0MxTFdmbU1kcko2aGgvZUxqeWNranRJZzA0UFNI?=
 =?utf-8?B?cEJSWmsvZHZVQmFOdDZPVnpnZXdKMmlPeGg0MVYzaHJDNnpQRzBBZmVUZFB1?=
 =?utf-8?B?bGErUFJsQ2RYQno2YnNYWVcwVWttUlowTmVaeHltUWdldUpkVTBUM2h1bnM4?=
 =?utf-8?B?NXBTTFhmVHU5akMzZTlsdFg1RWh6SlFiQ2JubU5nZW5tVmh0aFVXZUdBdjlK?=
 =?utf-8?B?aHJibmkvKzhuM2UzZkh4c3cwY05BeWkwdHIyZ0JSUTM0OVNKYi9rN3Y0ZGVS?=
 =?utf-8?B?OVJ4K3ZvemZCQmJDUFljK2xzMWxUNWIxZlp1YkpySUNjU0FyMVJZRHozdWVt?=
 =?utf-8?B?cTZtUWxmM1FWcW1sQnNzRExVVWI0UVVuNi80cXBuY0p6eVY4U2U0dS80MXNG?=
 =?utf-8?B?SXl1RHkvbHJZVVhuSmVlTW9LWnFtOXRyMkxJTGRTb3N0dUFBb3B0M2VjcXYy?=
 =?utf-8?B?YlpsalBEZjVMRlhBZGQ1Z2tLTjMrcUpwRkVGOEVkakpqQ24xekRUd3pnRXli?=
 =?utf-8?B?STAxS0l1K1B4bm9KV2NYcmRJaDlxRElyYUpNa3pFUGVjRzByVEtmb3RRNnlN?=
 =?utf-8?B?Tkt0LzhTdU4yaTR3WUFmMXpTRTU1NUllNVlwQXViNFdwWkI5N3V5aWtlNUZ1?=
 =?utf-8?B?c3lSL1E1WlY3bjdFcktzSUVMQzZKSTFjWi94VzdxUk45RlM3Z1h0bm01YTFa?=
 =?utf-8?B?MU84WGdkaFR1QmpzNit6Y1lQSFA3RzFTdDNhdmRzRHBIM05WVzBLeUdESTkw?=
 =?utf-8?B?NmJ0dFlmKzZIUWZaeTJobUdsRUlkTGZiL1YzdnpqMTFCdktRSHQxdEJaVGZO?=
 =?utf-8?B?MytRVXlaa0RWdG5pS3pNbVVld2t1NEVWc0Mzd20zK3NRdEk1anFzVFpyQ0tN?=
 =?utf-8?B?R0xvVVhpS3ZHRmM2M2ZBcG02dCtEVXducEdoK3FPTDhTK2dNbzBMQjJ5MnJ1?=
 =?utf-8?B?N1hBTUI1ZllQY0txS2IwRmVzaXIxdWdlNllEb1dXK05vbk1WRTdhekFpZnVm?=
 =?utf-8?B?TU83WjRCWDNMWnlnTkVNWWdhbjdLZzl6MlRYanZXQlVsKzN4b3RCQVlOL3BQ?=
 =?utf-8?B?OG5NK2NRR0VDdE0xK280SWFGQUZ1SGpFa0h0ZTQ2aDl2TkQzM21pYlZNdDJs?=
 =?utf-8?B?dFE5SmxtcGU4cTViVTA3S3Y2VkRnMGNYUjZzTzZMM1pPMmptdHZHZXRCclJP?=
 =?utf-8?B?emt0TGxldC80cTVCRFhkT2pxWnBKSVRvT05IZmkzOEVLZjFIcjQycVRLWS83?=
 =?utf-8?B?bE04N21NUU4rRW1ZdjFZR3FCSjFaamF3OGt6SzZyYXhkUm95UmRuNVZMK2xh?=
 =?utf-8?B?bkE9PQ==?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b9d3f66-cdd8-4979-5a20-08de39728b3f
X-MS-Exchange-CrossTenant-AuthSource: MW4PR03MB6555.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 11:35:26.0337
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wGrU367S2PpV+DDO5pWqKYg+hXG47feu1hFq/ghc1yGZvztmyKxwtXbNm2gB3bdFZ51ChxXgL6h1hU0T14X9Gdcb12D0cj7S0PGxhKUHNaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR03MB7473

From: "Wang, Hang Suan" <hangsuan.wang@altera.com>

Soc/Hardware FPGA crypto services (fcs) by ensuring optimal performance,
secure isolation, and robust system management. This will allow dedicated
system resources to communicate with the high-speed FPGA hardware without
interruption or software overhead.

This results in faster, more secure, and consistent cryptographic
operations compared to running the services entirely on the
general-purpose CPU.

Signed-off-by: Balsundar Ponnusamy <balsundar.ponnusamy@altera.com>
Signed-off-by: Wang, Hang Suan <hangsuan.wang@altera.com>
---
---
 .../misc/intel,agilex5-soc-fcs-config.yaml    | 32 +++++++++++++++++++
 MAINTAINERS                                   |  5 +++
 2 files changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/misc/intel,agilex5-soc-fcs-config.yaml

diff --git a/Documentation/devicetree/bindings/misc/intel,agilex5-soc-fcs-config.yaml b/Documentation/devicetree/bindings/misc/intel,agilex5-soc-fcs-config.yaml
new file mode 100644
index 000000000000..10cd793f8fc5
--- /dev/null
+++ b/Documentation/devicetree/bindings/misc/intel,agilex5-soc-fcs-config.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/misc/intel,agilex5-soc-fcs-config.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Altera SoC FPGA Crypto Service features
+
+maintainers:
+  - Wang Hang Suan <hangsuan.wang@altera.com>
+  - Balsundar Ponnusamy <balsundar.ponnusamy@altera.com>
+  - Sagar Khadgi <sagar.khadgi@altera.com>
+  - Santosh Male <santosh.male@altera.com>
+  - Mahesh Rao <mahesh.rao@altera.com>
+
+properties:
+  compatible:
+    enum:
+      - intel,agilex5-soc-fcs-config
+      - intel,agilex-soc-fcs-config
+
+additionalProperties: false
+
+required:
+  - compatible
+
+examples:
+  - |
+    fcs_config: fcs-config {
+      compatible = "intel,agilex5-soc-fcs-config";
+    };
+
diff --git a/MAINTAINERS b/MAINTAINERS
index 46126ce2f968..2208d611f73f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -923,6 +923,11 @@ ALPS PS/2 TOUCHPAD DRIVER
 R:	Pali Rohár <pali@kernel.org>
 F:	drivers/input/mouse/alps.*
 
+ALTERA FPGA CRYPTO SERVICE DRIVER
+M:	Hang Suan Wang <hangsuan.wang@altera.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/misc/intel,agilex5-soc-fcs-config.yaml
+
 ALTERA MAILBOX DRIVER
 M:	Tien Sung Ang <tiensung.ang@altera.com>
 S:	Maintained
-- 
2.43.7


