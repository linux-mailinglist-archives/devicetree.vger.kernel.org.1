Return-Path: <devicetree+bounces-256613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A1080D39C38
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:03:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0452B300289F
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 02:03:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AE3A225408;
	Mon, 19 Jan 2026 02:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="IajznKEk"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013066.outbound.protection.outlook.com [52.101.83.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C9921E098;
	Mon, 19 Jan 2026 02:03:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768788224; cv=fail; b=qhawlF6XojQQFxo1DCe2FbtgebIC3GkdZ5xGK4e0twfF4fEoRiWS+FmtX8ZGuBeprYAw8uvkaEllE8HYdpYCBs+qcYpaGDEi5emlphtG+GRoNgiYjg6LL0kjA2vJEat5i0/fJDT8eocFF2bQtmQRSAd3OAKqjfuls1ISDe38sKw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768788224; c=relaxed/simple;
	bh=vEVQq7Wl0U7XPkMGVmWcgb/jxKdcrfRFodQuw/IL57Y=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=SbpPdRTWZbRnoy2V5PCs5MQDUIW5bdSj3DjsLw8mcLkR8Kpo5btcvj8VRQH1ldCgZac230Huv0kg9Co8kue1FaEAU67bseBPAy3b51AB0VxuVQ8hUJRbNAtgaaOJjbCanvncZuZ2mPpeLrJYOroCx/IG0moHXE9+BgcRV6QxUDI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=IajznKEk; arc=fail smtp.client-ip=52.101.83.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y2QRDuxngMYTxB7BrZiMwvHnebY+qzBRCzmKlnUTCYstjQf2Vp5/z1HPDjhnTE5yNe4Khr0ed/001Wz/j9NVLNmukZJRSpqEGm03w3XSM+ZTjFFF0ovdYjzCekZysfx6rxh6rxWzbFKbn2AQEGlchgJxot3MV3q36LRS+K2n/qA+xsEBlYpZ4iEKyEbBfRIltt8Cxgtpyr0XPLxHMP7CWMD+JQVNc7mXm8qnIdrBnQApqQeTnDs35ZBjMl0CC0AAE+IJrvOEwe4dE55QlNhht+ITES3BF2Fh/CF0BMUv0B2HN611m2wrYP0gatxcfXp0Xv40fegxf4uCLq4WGKJzjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6XwvQCKd/4FNRajaAq1z/UBYGmIBRw/RGbzEhxrjWO0=;
 b=s0GCluQsCxlNYOw4THCZMWSjoIvYHlA2vXMQxAcbCwgz3Qqp9Yia7jitJ7cRMI1emmGG62lIrVO/Fc9HcfaNSeEPIoXqUsPm5k7arFg9BYt/7JREbDOQKkFezix1P0dAMGLBI/V8RBRdklFyyjAn5h0BBqycEGX1YC9T/m7dPvYY5Nm2xFfw5Nfguzg+T6hIBZvZGsyaXR5ctrxg4QKaF1vs00M+lZVxJzaPgfkgbSU/llC4XxvpamtTjYQZJLfe7OZnPSGxq/X49UKe1DZM4rXW5LG/xs4s2HBaiNwRVfMeuFS1vARzlJq+rQcohU91Y+bCaxLpR3HtEIg3SH+irQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6XwvQCKd/4FNRajaAq1z/UBYGmIBRw/RGbzEhxrjWO0=;
 b=IajznKEkgwLhRKeNoSluIk6ZgEqaEeZmrCZNNK6NDkN6qV5Ja0fC/pt4xCd36fa/ehtLLuEdSjr5dNjwhqNFk60hAw/iJ8I3Qvi0nzG3DteUr9XIsk+6kigi0tqzwh8nde9P8ooPOc0rp6sI+au/dfrfHLqKZiG7tLFVhcnrfbf7qeGwFVg4AH885/m9Xb1v0c5/XnChlMIYqs1ch6riXT5DDmeyhzIXdwZg/Vvb34QT+xhCc+sRvsniGabfoFdGr920qRxLpkW319maIED6Zgh8DrmpAPoVOb2s6h9QjGOrpY31NRwek2cPA4sj1BbqJjrL8VX3xZQ9LApwr8i5dw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by DBBPR04MB7658.eurprd04.prod.outlook.com (2603:10a6:10:20d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 02:03:28 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%4]) with mapi id 15.20.9520.010; Mon, 19 Jan 2026
 02:03:28 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Mon, 19 Jan 2026 10:02:58 +0800
Subject: [PATCH 5/5] regulator: fan53555: Use
 of_property_read_u32_default() for DT parsing
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-add_dt_default-v1-5-db4787ea7a9e@nxp.com>
References: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
In-Reply-To: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Alexis Czezar Torreno <alexisczezar.torreno@analog.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: SG2PR03CA0116.apcprd03.prod.outlook.com
 (2603:1096:4:91::20) To PAXPR04MB8459.eurprd04.prod.outlook.com
 (2603:10a6:102:1da::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8459:EE_|DBBPR04MB7658:EE_
X-MS-Office365-Filtering-Correlation-Id: 5651a034-e2be-4f87-c452-08de56fef057
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|19092799006|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?dEFZVllocURmVVZwY1I2T2wwOEtUOGxNc1JRQThhalZQdmF3R2MwcnhhNVpQ?=
 =?utf-8?B?d29uWDd0VkZzb1ZYZGw3RmdxQmw2eDZLbXQzS3c0aXFubWFlU1k2T1NZeVNy?=
 =?utf-8?B?N0pGbFIrdG5XVURJUmhwaEVqQ2tSYmZTK3phNmlwbUtraE9vS1NXU0RNR0gr?=
 =?utf-8?B?b3M1MVBQUnBQbDU0QnQrZGlNT3ZuQktvSDFyMnlYdU9yeFNLL0hjRUFBNi90?=
 =?utf-8?B?ZEx2NjIzNEtLR1M4RkthbVpnSlFyQVdoZ0ZmZUNXUUpHcWlHMFpBbVNMM3lI?=
 =?utf-8?B?ZTRVNkpzQmlJSTgwMUloZktmbHFtSVI0K1hmTlgvaWNFcGNTTE9wRS9FTXU1?=
 =?utf-8?B?T1NhOWh1VmpVMmhScEppRi9WazZjMGFXRHY2a084bzFDQTU2d0VKNGt5UEpx?=
 =?utf-8?B?TWFPTkE2YWhqa0d3TDBtU3VTMEl3RG94d2RlZlJrc2h2RnhUVmdJODQ0MDlt?=
 =?utf-8?B?Z1VPaGFBQlhWL2IzMU02dFBlS3RGRGZicDg0NEU2Sk5wUGR0cFpBRTh2Z3hs?=
 =?utf-8?B?Y0pYOTN3ZmVqSjJoUzFzOWFnQzdGeFVhN3Y2OFFrdm5zdW91d3dOWlZ1TzFT?=
 =?utf-8?B?SGZSaWVycWNCNHpMLzMvZlRlWHdJQlFmR1pUY0ZTL2RZQzdEbFczVjJNOCtJ?=
 =?utf-8?B?UG4vcVVFdDQ5ZzNpemI3Tjh2L0w4V3k0NXh3WjlxRWMwOEZ5MDNQbXJmdEZi?=
 =?utf-8?B?a2prTzdNQnE1OFJNaHdqTkxoNG0rZXJPcmZpbEw1WHcyY240RkpiaHg0OFla?=
 =?utf-8?B?Wm5kclNiSm5VN29DYmtCY2xJM0hQZmNGZTN3anlUWW00NFF1cERqVmJ0c0VN?=
 =?utf-8?B?ZHQ5OXd0ZjF6V1Npc3B6MmJxWEhHK1p1RWJaUE5YTXN6ODk5UHA5ZFRzZFBL?=
 =?utf-8?B?cUd1dGFZWFhtbVZxaEJsaTVKUnk2T1pIYVdac3NUZ3Y4cTZXNXowVm42S1k0?=
 =?utf-8?B?am1FVFNrQVNhclh2RWs4NnozRkIwY1lNakNRZU1hWEdlRHZsbnNkQmdKaTNm?=
 =?utf-8?B?SjBHU21RQ3AxNjZpYjlGckdGc1VyODBYN2NGVFhsbmU5c0F5ODc2b0RIUDZv?=
 =?utf-8?B?am5zSU1RSnVzZERVSnFBaVRsNGxaVlVJa2h1V3hHMmFubU9lZTlOdWx6NDhI?=
 =?utf-8?B?WjVnbGVYa3hjT0IxMEhTeVovc2Q4bFdzTlBXbEFmeTFkQ3NrTk9JQXg2K2NN?=
 =?utf-8?B?MGoySkJEVHh0RkxrL3MxL0h6QXRncmErNlI3dG9QZUtaVTY1Z3pmQWIwMkVP?=
 =?utf-8?B?NTU1RkVMdDR6Y3Nkei83Sy9ES0dtZlU3dWM2c1I1aDRiUnlsOCtXTzQ1QWdM?=
 =?utf-8?B?N25adDZ0WUtGR2ZEaUNPcC81c2ZleThzUyt1SVJnanpudDJQUWJsT1k0Qk94?=
 =?utf-8?B?eUpEWXVuSFYzSXoyRnVqeEg2Y1NKYXVoZi9EL2FKSVRQTitwVFhjVXBXQjdq?=
 =?utf-8?B?ZmgybitheldLRjl6QkJFT0d3Qm1DeU5lNXN2MENxcTNMZk4yY20vV2h0cC91?=
 =?utf-8?B?STA5TXpWZU0wTE9QUERqWkFWakZXU0tUNzRUazh0bUhXcEViRmYwbVl5Y1RN?=
 =?utf-8?B?ZG1hVnpEVnE1ZVlydGVVcjdPdUVTQlVaRTRUZGZEaHhmd041YTVIQVFjVk93?=
 =?utf-8?B?QlB2aFJjQUZDZE9keTB4dHl6SERIUkxvUnRHaTBFanRpc1NtMWpGZ2wyYzRM?=
 =?utf-8?B?S0hpczBjKzc0UENPbFE3VVFSSC9jWHIwTzIxRGtsK1o1L1dvTUlKaW51bnVy?=
 =?utf-8?B?NU1HZ0JkNEw0ZDFLMTZqbHF4ODRhUllNMENLKzlRQmJNVDNUZ0hwTmxIRTh6?=
 =?utf-8?B?Zit2eEVJRXgzOUtCZ0p1MDNNak9ndVFtNEN4eVEwajYzQW45eFZZQUc1dk84?=
 =?utf-8?B?ME9tdGY3OHVHMVVoQmRyUHFSVHpEeVZKM0dJUTJnRzFjMmJaSDdqRmZ4eEh3?=
 =?utf-8?B?emR3Ly9FQ25LbmUvOVpMYmR3Qzd0bUVtc3JGTnNMY0VnMkZZaytpeWtxd1hi?=
 =?utf-8?B?MVAvcjgwVmprRFd1UVo5TUxHZC9WMnBCUXU1SDVDZ3EwbmpwV2gxSnRnT01L?=
 =?utf-8?B?SmY2YW5NbUtLbmU1Y0tkTURmSnVmUzlrZ0tPVHhaTVMxZVdibVFNOUFqNDF2?=
 =?utf-8?B?WmREVTZwSTVNZVlFbXpZZUFOb1h0cGMzUUFUYmwyNzFmREt0TklCTm5hR0xF?=
 =?utf-8?Q?QV19eK2ltXWow86b9zLzsMo=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?czZ3OVVwMFhrUWtPUlJOMHpEUFhlY3lMQmdFZXBmZmZlVjE2Z2l5RDdRTjFZ?=
 =?utf-8?B?b25pZEdpQU9IRkJ1T1kwVTZlT3lESS8zNE54d1lWY0xvSnBZaVZQZTZ3bnR1?=
 =?utf-8?B?OTUwL3B6dVkzQzErVElUTWRHUEhVZlFBQXFCdHNPZllMTTBFamx0MFpTVXBP?=
 =?utf-8?B?SFlvcFV4NXlSTGFKakVWUUsrck5qcmpySFNPNHg5bFQ2YWNWUzdzWTMwVFZj?=
 =?utf-8?B?bkg3SDdsbkFZZk1CNWVRSkQ4ZWF4cWlUWUxVeExXOU9jNEdVeEh3Z1NCdHF3?=
 =?utf-8?B?VW1HOXlkeVZ2S3QrWXNlQ0FGdEIxSDQ5OTlqME5neVpqV01GUGxpNkdnTGxv?=
 =?utf-8?B?clljSW5DZDdxSW1IVEIrSFk0Q3FNbVM1NlJwL1BWYVVqeGZVcXNya0lJc09u?=
 =?utf-8?B?M0JHUjJDQjBrU2VRRUxYdTcyTTJPZzZYMThKK3lmOEJTWXdRMlA1V0tYSm1P?=
 =?utf-8?B?amNWZ1ZYY1p2OWdESEtXUFdjUDJRN1lpaHhuV05BZ2srazlUNUEzZjRKYWQ2?=
 =?utf-8?B?T1FqUUIvQU5uU0RuRnBsbEkvTEoxVStTZ3AyT3hwZTFpNko5ZDhSWCtSU0VO?=
 =?utf-8?B?THA0N000bUVFekRHTDlXNFRqQVl3YTVLUldVL3Frb1dDeUFyMkFzaXdkMzhK?=
 =?utf-8?B?ZjEyTHJwODY4ZFN5NU51NDdNMHFzR25sUEE2QndMOWdSVXFEU0lQT0dsQTZa?=
 =?utf-8?B?NVJzRmR0czFHcGZDMStHUFl5aWNUdmdRZjlvMXkxTnl2Q1VZMFdvclFTRFdo?=
 =?utf-8?B?SForUXhxbkVNRldJSGx5enN6bmw5MmFybXpYdjNkYVBhQ3NHSXdCcHJFbHRX?=
 =?utf-8?B?Z1RETWx3S2RsQWJxMGhWUXNRSjIySmpPUUlPTDMwQjFkTjd0S21STTF0b0dJ?=
 =?utf-8?B?VE9VQzRuT1hqdzJwOEtiVVRlY1ZGU1QzUUJtMXd4TW05Yk9qQ2p3cFlIT0Jq?=
 =?utf-8?B?UGRiMVBGN2lFOVlYdDFSVWlKa3VvMTd6MnM0VGtKd1djejdZaFk3WjJ0UHkx?=
 =?utf-8?B?eXJobklxSTBhWWRHdGdGRGpjOGxVSjljUUR2WCtUWWpoK2EwSkhrTCtpVUNU?=
 =?utf-8?B?VTh0a0wxYUN4dm5LMnZnbE9oanY4Si9KNmk1M2IyRHhHVFhjb3Z1UzFiQms2?=
 =?utf-8?B?L0wzdHNDS3dCMGlxUncrTzhRcTZFR1JWUm1veWZZUGFvN0U3TTZQUG1NR3JX?=
 =?utf-8?B?aEVCZ1RsaGlHZUM4d25NM2dkUml2eFgydzIwaGo0WVlRTjRUcHpQVXF5UVMr?=
 =?utf-8?B?L3k1OXRnQ1N3bTBuTGkwNU51ZXA4TmlhS3J3bGt6Y3V1eXpCNjZianpXUDc5?=
 =?utf-8?B?ekE0MXZaY3BoR2FOd2JGTThKZnhUc0FMMzJzZWV4ZkJRN2pOODZwYmZydnQ0?=
 =?utf-8?B?MWdaQkwvaHlVZUU1Sjg0MXNNeWhiQUxBZGszSnFYTXdySGFlZm91SzJIYUJ3?=
 =?utf-8?B?cUtaNlpySjJMeVhCa2tOMWErdCtBRlhoOHM0Mm5TcXVGbURzYzVueDVZclRP?=
 =?utf-8?B?d0c5cndGZitTaXNWMVVESW5zeEQyajdDc2JNM2trNkhnWk5IblRtUGVKQXBi?=
 =?utf-8?B?eXVWWVB2MTl2QUY4bDJqRnFObEJiTk8vd2FaRjl4WnRDVnZxNDBRSkxoYUcz?=
 =?utf-8?B?dm9SbEpQMjMvZi9GckcwOHd0dytUN1R0M3o2dlNZeFI3UkZHMjlSM2VDTksw?=
 =?utf-8?B?OU5rM0Y5SFluYXdUbnBWdS9KaE5CZWNXN2srbVVHcktUQmlGSkxHZWFYQ3R4?=
 =?utf-8?B?U2dncVlKM3p3aHFKRmxETE81cVY3WTczeXZLbFgraWlNTXNqRjRyTUNCOGov?=
 =?utf-8?B?WXlGN0JQdmpTN0hKL1dKbHRGMWw4RHJiN3laejgzVEVpZURTMmUzSFc2OEJV?=
 =?utf-8?B?bC9Bby83emFWK0MvaWp4Znd3Y1hEMzVQWUl1WjZlb2R3RmluTzkxa3MxUTA2?=
 =?utf-8?B?NHpvVnE2TTc0ZjhHaS9DN0laT0hvbnhoeGRlVGg2NGI2dHRpbXhRbTFGSk1t?=
 =?utf-8?B?RkZqalQ3b1l4VEI5a3lpN21Sd0MyTUFZODltbUdUSCtiaGsvNVluSTRqZU4r?=
 =?utf-8?B?eTVuZXFGbjBUMmhNbldvWW04UU94aFJnWDBtT0h0czdUdkRUSWF0VlkxelJW?=
 =?utf-8?B?R3gzV3U2V3NCUHNBU29uY3BGdHRIU1FlUm1FQjFoUHEzYTlIRXJNVnlKTVZt?=
 =?utf-8?B?aktBQmF5TFhkTnNKK3JjMW9VK09QNVExdWxQK2tFYzM5eDNGNjBLQWEva09a?=
 =?utf-8?B?NFV0Z254MWRRb0hoQXc4OFhKME5OWkgrNUYrSmNEcFRJSWtRZzhxSmdwRG9t?=
 =?utf-8?B?QzRkZXJVZFQzeGtodGNVMEZ3bzI3OElzemx1ZU43MTgwQ0F6VlgwUT09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5651a034-e2be-4f87-c452-08de56fef057
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 02:03:28.8189
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ug/UzS+Cl5CgYyebTG5ZEfH52lBN9S+c7kzcxbUueXEYvlZ2vUER5WGlzJM2R4r8tHsocZcoLKKLLMS1Z7xRQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7658

From: Peng Fan <peng.fan@nxp.com>

Simplify DT parsing of the optional "fcs,suspend-voltage-selector"
property by using of_property_read_u32_default().

If the property is not specified, default to FAN53555_VSEL_ID_0,
which matches the existing behaviour where the field was zeroed
by devm_kzalloc().

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/regulator/fan53555.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index c282236959b1803e3cba8f4b9cc15e458f6e8436..2e2b5822fc9ed0399056326d838661cb4752f767 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -624,8 +624,6 @@ static struct fan53555_platform_data *fan53555_parse_dt(struct device *dev,
 					      const struct regulator_desc *desc)
 {
 	struct fan53555_platform_data *pdata;
-	int ret;
-	u32 tmp;
 
 	pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 	if (!pdata)
@@ -633,10 +631,8 @@ static struct fan53555_platform_data *fan53555_parse_dt(struct device *dev,
 
 	pdata->regulator = of_get_regulator_init_data(dev, np, desc);
 
-	ret = of_property_read_u32(np, "fcs,suspend-voltage-selector",
-				   &tmp);
-	if (!ret)
-		pdata->sleep_vsel_id = tmp;
+	pdata->sleep_vsel_id = of_property_read_u32_default(np, "fcs,suspend-voltage-selector",
+							    FAN53555_VSEL_ID_0);
 
 	return pdata;
 }

-- 
2.37.1


