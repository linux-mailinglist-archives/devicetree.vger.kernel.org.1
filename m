Return-Path: <devicetree+bounces-256608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8D0D39C34
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 03:03:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B147E3000B3D
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 02:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE77F21CC5B;
	Mon, 19 Jan 2026 02:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="eGg0hpml"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013066.outbound.protection.outlook.com [52.101.83.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF6E1EB1AA;
	Mon, 19 Jan 2026 02:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.66
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768788200; cv=fail; b=AU8jMHvCXPms5NQ0i9AXPn9xPgY7TgDZmENL1qrkKaeic4u/noDUlgTxmQ4te7tey/WOz2Mx89+HAr46kGqaj2WOQ8u94aCe41/jlzW/XBLpfMPdv49hM7zl6svkc5SfDAB8+tdAD5y3gWqZ7VxkStBJSeTBAwk25xj7Tx1ZpaY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768788200; c=relaxed/simple;
	bh=UTfIPthcw467H16iI3aSif/h9GhuVG3QWo7caLqQGI4=;
	h=From:Subject:Date:Message-Id:Content-Type:To:Cc:MIME-Version; b=EVZWYO10/z0VuWX6RH62+LVGTB/2yuWUJLNnyDnqfRyw4XUwY9vrbXkXNzRkzjVRJ6RCDJfheRXm4mpA933EJHPrt60oRXnCZhkduaXk4LjUcvCwoWdUuFSmpt4uRqBcaPE6isiftOkTePxnExMg1sez4mQMOIzsf376mzqnYbQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=eGg0hpml; arc=fail smtp.client-ip=52.101.83.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gq60oEjR5cM2ztF167WSZsdehI7StjOE+25ef7dtIvUQ7bOcMvbrRC7Df69FJRFwmGtW8iCZxSkaDmyUJ5woBVzd2i8jnLGJrgsPFKWTwS6Qxg1IIk3mLULfNVFEsguGTvVI+VDf76S2PPOz+Bmt/ak5g/o2D167C8Kr14sw7BnCII5Gqoxhgw5jF8qlfECJUu9WeHb+MIO1KA9EWBAYl990fCMkleYuBphksBXngCYlkwOf4aUpI+HemgvhZUatDiT6yEIcxPwigBr9YZBYMXEUB1+xEHf++3VNOewk8VsW+KO4TTWFSbR9zvhMahnsReMauoKdjomGH2v2Yp185A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6xt4ik62TxcYL/oWh43rULT/NF+Mj5yGYuBuLjQbdWE=;
 b=vgGPxAxKqhzRhRoJfgi8NgX1u8YKG4/g6Bvd1e0MlZV0RGMtoSRn8qeQraTKlKNofRISC0UTDBGdfuTTQ+lb8phF6zStXJr4jrY5pv2QtooYJKCFhT4N4sLHWiQn0r5Zki8ns46kmihS1geTtYMMkd/2dBKf/Qg0WLQr+a22KHaIV+EMOWStkO+Gy91qRlR4IJln971Y/wFj1DX+fker/9iqbz5eLqDNidwPm4Si9751acvuVbHsD166Q6IfSFM2tLd36fUMfiZxKL7md1kHInHoS6tmYAX2eskIbp91zb3HOJ4t4NMpg1xKSUId/THkY2RpFpMW9ZyAC8idwU0+9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6xt4ik62TxcYL/oWh43rULT/NF+Mj5yGYuBuLjQbdWE=;
 b=eGg0hpmlWY9uEhFPWDD2jpzi1wFJqFutTPrWDK2xsrTVWsb6Mdw2kJBsip02ORIsofG3WyMIQEbCmNInufrcm4kkDOo/u9+U0Z/hl7wicEXX474D6p1KwkwvGngoEdeF43vpd3naJ2iMwgea0n2jRRPyWUySvLjgULFlihnReASxdjj9RhmKxD3p1J6YuZ77hQY6odkxurn9U5Dc7Z6LvglvVqG9P13SrrjF6Dhjuw1JkoBEPzIoRJhvTt8Eeq8K8aRxPPU5qrnyw9p1Iu73dnLrmTLw4ZQo1Bag3Ffh4NkAyEsipoluWoVkruoe5vQ23HszyW71Fy9QC5X/dIvaBA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by DBBPR04MB7658.eurprd04.prod.outlook.com (2603:10a6:10:20d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 02:03:15 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%4]) with mapi id 15.20.9520.010; Mon, 19 Jan 2026
 02:03:15 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Subject: [PATCH 0/5] of: Introduce *_read_*_default helpers and convert
 regulator drivers
Date: Mon, 19 Jan 2026 10:02:53 +0800
Message-Id: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAM2QbWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQ0NT3cSUlPiUkviU1LTE0pwSXZPkREvTNKNEs+QUcyWgpoKi1LTMCrC
 B0bG1tQBzcT9uYAAAAA==
X-Change-ID: 20260115-add_dt_default-4ca95f2a6cd7
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
X-MS-Office365-Filtering-Correlation-Id: 8ebfd979-d101-44e4-0aec-08de56fee804
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|19092799006|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MjJoYUgzeHpBaCtVcHZXc0lrSDl4SkVpRmM2NGFVSGtlSDI4YmorT1FwRHVB?=
 =?utf-8?B?a0FRWFRrVjU1NUc5TXphNjNRUEJ0NFozQTRMdE5aLzRTazJPbExYL2dvbXRJ?=
 =?utf-8?B?T1VrRWUyUmtiZys4MnQ2d1NLUTl5WE9rZmNaRy9JNXh1MldNeTljdkQwZS8v?=
 =?utf-8?B?QWViQjFNYmZlaDBvY1RXUWpScWxwTFloTlJuZ0ZqZWpCVENDY2g4OUdTdmRo?=
 =?utf-8?B?ajV3TlluN2NNei9iTEMwVmovWUpmUXorNm1RMmd6VDJYTkoxZ3dnUkpJMlR2?=
 =?utf-8?B?QUlUTm8wakZrV1pFMm8vdXUzMTBxNGtla1FxZnN1UXJpczU3VytBTEJuNm5m?=
 =?utf-8?B?UUxyNSsrWXdtZ0pDQ2NpU0o5LzZ0aU1RUHhuNGVBc2pJTEtraG9zREZTSEVU?=
 =?utf-8?B?eFhuc2JNbVNjbE4xa2ZHaVQzbUtPQkxBUStuVWw0cDd6YWRQYmh2UCsxL0pS?=
 =?utf-8?B?WmVnNXd6NElSdUk2aVBabFM3Q0ViMHlSWlJmUDlCaXlCN09KeW9EaDhjOGQw?=
 =?utf-8?B?bjdUQXlIQm5pSnhuSGtvdC9YZExXZEFxREpmczVvQkVsQzFxK0ZlVWJJZnRF?=
 =?utf-8?B?UU5RbHpMQTQrRlk1azlFZFJEaGJ4bHBGQUx5MDJwVG9QNEhjSXJUeUVnN2Fu?=
 =?utf-8?B?SXpaeHF3bHdna0ZOaFFPdDBKQXFpOGtnQW5kT2piTlEzOTlXb2ltMGdWVlNT?=
 =?utf-8?B?UzVNNk9JQWMvL0NVL01xTktJZXRjeEZrekdiMzB3QlNlaUpVSnYrZERjU1lT?=
 =?utf-8?B?Umg0dG1LeXJZWFEyNFZUekFLQkpiMWdiQmZQSURTMGRsRzA4ZUdITk1abUtE?=
 =?utf-8?B?NFA3NjJUdEcvUWFGNjZ6aGdOSG4yY3JaaHloTHdFU29xYkpaV3JNZGMxd05W?=
 =?utf-8?B?WUtNVGVQTFptWjNJR3dWU2NWaXFZTjRWS25WbXVnN2gzNFVJRWc4bVpPdTR3?=
 =?utf-8?B?VDR5VXcrWmx4d1prRjVYbmxvakhzU3VGVndSMjYxay94ZWUxbUFQVjRWejVJ?=
 =?utf-8?B?a2QzS3B2WEFGT00yYW5VbkZ3YURDMVI4SldLWFMxcVlkWDlXMCtodW9LbWhL?=
 =?utf-8?B?b3EycENETHoyMEp5SEIycWFLdTV4UWM2YTBOT1VWUzJpVHQ2Q3oyeGpUcFNB?=
 =?utf-8?B?MDNJUTdUTEsrZll2dHhwSm1CVmI5Vm1iVkVKTlpKYVg3YU1GRFVVMU9PY05H?=
 =?utf-8?B?VmEzRFIxUlY3Nm11bzVCaG1udUdPallld1VMT1BaMEN6cGJkeGk0djlZSlcw?=
 =?utf-8?B?aFhkSTh6aFROSTNzTzNDbTZSL3pDSXpXbE96ZkpUc1NGYk1tWlViK2IreDJK?=
 =?utf-8?B?ZTVqVVNBZFZOLzZpNUNoamdEd2lwcmUxY21xakdCRDJkang0ajVGOXhTWU5u?=
 =?utf-8?B?Yi9Oa3QwNllRdjZCM2FVVm42TGo5d1g3M3pTZXZZaFNxQ1pxSmZwcHA3R1Ri?=
 =?utf-8?B?bkdkekhkbzhKSDFOYmNYZ3B5cWx3YnBMVjhXZzZQd3JxeHFaQ1FOckxnWkkw?=
 =?utf-8?B?Nytudm01anJyMXFtcmk5N0dwNExyU2ZoYkhybVBKbEEvb3lHeFJpQ1RDUURB?=
 =?utf-8?B?Ky9rSUlvOGllZUswNDRJUzdvdEptMnMvc3VwdVRlUGUwaDVKVjBieU40aGJI?=
 =?utf-8?B?MGZ2ajhyK2p5S1AyczhCM3dYcDlTcGpnQ1B1ODdpamM1RWtNbWh5WXIyQ1FF?=
 =?utf-8?B?RHkrZWtsaVFDZFlNajlBRk9tT0lnbXpId3dhVjY4bkNvZi9WTTI2clREODY3?=
 =?utf-8?B?VDdjZWtVbSt2UXRaZnBpOW52eUxZZHJKUkZYdURSNFFWZmcyTHJrLzBmem9I?=
 =?utf-8?B?cmlCUXRSM0lJMk1sMkZYN05tcmR2b1A1RXpOcE5tZTMreTV4SjVLZEc3VVJo?=
 =?utf-8?B?OUM3T0x4VVBoNTNIeWdIVEc3UmsvajBXSTR5bE5NeTNURnZYazdJZVJIS29I?=
 =?utf-8?B?MkRrVzg5OTBFR2NTOExaUTBXTnFBRkZXZjFLa1JpNnF1ZDJTUks4aGY4MDVT?=
 =?utf-8?B?a2JrRnpqSWY5dTYyelN6NGpMamtFV1dZczVjQUZVRFl6cGRqOVVnSFdydzU5?=
 =?utf-8?B?cXpKbWFNeGRWRVIyOTdKVVNhZFdEdk1NNnZpenN2K3F3RElWWkdDWWttVGlm?=
 =?utf-8?B?RWUxZTRHL092RUJIV3BXcCs1bUJSdjhoOUpnRjNva01WcnQ5cVpLM0VxaVpF?=
 =?utf-8?Q?dyP1WtwC+EHWNa7eABKgMgc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZjJZdVlNNkdIZHNXVkJYQ0Z1WklTeTZ2MUt0cHptZ1BNNVdkQ2JLdXk4VUdR?=
 =?utf-8?B?TVd2elVMOEtsS0lNc014V0xKN0dlZzVxYkdKblAyUVJZb0VEdFNKODd3amI4?=
 =?utf-8?B?T0ZKWkRxS3VFUnRuUHRmSUFyeVVpdnBndVRENUN1VnVWZHpHYTY2T0k0TEZp?=
 =?utf-8?B?aytUSnYwRDVyamxwUzZOejRzT1Z3aUZwMWwyTndlSWY1d3o3TGtXWkVjeU9m?=
 =?utf-8?B?eFJCa3ZXK2M3M25uakhrK0pGcE9WNnpYYnlBak9ZcW5lbEdYbVd6Tms0UUd4?=
 =?utf-8?B?aFJYMVAyMU1WaGZXcUdFQm01ZHExMzcxdUNTVE9Mc0xseWhTQjNGcGt2Rnhr?=
 =?utf-8?B?c05vOW9qZmNZSk5ua3hDMTkvM2NrK2V4VnpHd2k5Q3Q4UUo5Wlg5dXBOMGVN?=
 =?utf-8?B?VWV4Z2ZNY1d4VWc4UFRsalhvM2psK2JoK3VnNXFpKzlOS2U4Ynh0bXhBMVFi?=
 =?utf-8?B?cVhLUFF4VkFxOFFlV1gvRHFaVUlyMmh1d01PNkVYN1MvdFhpUkxKYkVDU2dY?=
 =?utf-8?B?czQ0eWhiWUV2S3dlMHBHYTBsdk9Ld2cvVlFlUFF0ZUQrWlIyZzM2Y2ZEK3Rk?=
 =?utf-8?B?ME5Hajl6TUhKUXNFZmhsb2lwV3BuNnQvUDBTSjFQdENsbU84NE9XQjFJUWp0?=
 =?utf-8?B?MTB1VUc5RjlGTzFwOCtGNG52K29TU056RTVyZWQ5U0p1OVJRUEZqVmdzMkxF?=
 =?utf-8?B?Yk9mZHNqM0YzS0FhZ3pXRmZZbDJLNHJIcS9SOEJTSWczeC9NVWpHTldsUXlm?=
 =?utf-8?B?dFIwc1o1OUZqM0tUN2pEdnFiVUxUdDJQZEVrS2RiNHZ3R0tqUHN5a0ovYUZT?=
 =?utf-8?B?UjdCdHBuOTF1c2phTUpieGpvdnhvcGtPd1Q3Y1dQa3Ftd011WlBldUh2NHdI?=
 =?utf-8?B?TjRVcExrdUthcnp3M1F6RGkxN3ZVRTNuakRHNWNxUStjTGE3azJJQWN4OWYy?=
 =?utf-8?B?dWtuRDErVkhuWlB5c3hmbEVsbTd3MjBWbzhvaVk3UXhxUW8xQm1yajJyVGNM?=
 =?utf-8?B?RjZIZExtOWRrdjBtZXZrV2FUU0lqc2JpT25NaFFDb2dPdmZneWh2eTVPTkhD?=
 =?utf-8?B?cEg0aHdtRXBVb20wTVZqOFhnRVp5dWlwNnIxRFEra3dqTXNZdldnZEZRdFNF?=
 =?utf-8?B?MklhNXZ0QXBtRzFFU2VLY29MN2hnMndVNjNzc2J5bHQzSmVZNXhyeDdRTUVr?=
 =?utf-8?B?YnNveHRxbGVtTjhwbk03Tng2aUpzM0xjcVJLWjRKUENMQkRPUlhKR3BwUndR?=
 =?utf-8?B?b0ZtM0ZWTDd0Rk1mQW9yK3lRdCtySENQNU1RNDBXSndabzNkUm1rZURkeUFE?=
 =?utf-8?B?RXVCUno0b3UzSWFJVWR2QnlnMWNRaVdOSndlOFA2Z1ZNQU42Q1Z4WWhPV3Y5?=
 =?utf-8?B?ZmpOZ2Q5Q1VnU1VMU3d3anAvZkNGQi9RM3JiclR5VEwzUHdHOWhnbWlrYTdt?=
 =?utf-8?B?UDkyZE1LeW0yREVhWVJqTThUaHhvbXlyRHBxUHM3U2pBekh5TmU0dXFWWHEw?=
 =?utf-8?B?QWpoaWlxYzZvbE1KWGxpd091VTBpNlRPeWNPWTVHbXNvSlFTVUVSZlJBc0Fh?=
 =?utf-8?B?ejUxZFhlNWZLVVNqeVIvVlVYK2VQclVEM3BXSEg1QUFOc3N0bkwzRFMzYlJ1?=
 =?utf-8?B?b3VpNHJYdkxQQ3hoazZMcTVWS3R3RWV3cEl3bDIxZmx1c0FrT29JelpoSHQv?=
 =?utf-8?B?VDd6cUM5UUQ0SSt2R2dFRTNZcjNQcnZlcE5Zc2RUZzNsYWk5d2hNQW42T0RF?=
 =?utf-8?B?UzNqTTcxTGFNbVphb1Y4N0NSbFo1WEUrQWVWNnBZeEpOUmRlT2NjRDJIRTM4?=
 =?utf-8?B?SFpQL3h4U1kxQ2JSUm93TlZ0YXVGTkU2elJuRnBPY3dZbzVTTmFpVS9QV3lN?=
 =?utf-8?B?UVFvK2lyNzdvaFYwb1RxdUlITld5U1A0QmhidVpIVXRGR0JaakNvOWZFQ1dI?=
 =?utf-8?B?MnVrc2NmaVRhbG90OEcyVlZsR2M5czBSS3R3VmV5bGpDVFNSRzkxbjBoMUc3?=
 =?utf-8?B?MXpCUE05OHhlM3QyMU1ybDduUlkzMjY4dzV4UEVVT0Y2R1JDSDVSa3A0UHJl?=
 =?utf-8?B?aXFSL1BibmViS0haOVk2M0JBWm5GaVNuS0hLTUFyVDNQdTVrZUVtQUlqeWhZ?=
 =?utf-8?B?blNRRVJvZkhzTFMzcXJndWhOUm1La3pySWRzWVBzNzhxMnc1VmZlcUVTaWFI?=
 =?utf-8?B?dUY3cUdzVHIyVmh1M1FTeEQ2b2Y2cmJZbGxSNjdSYVlFd3h3K2NqK2YzNE1P?=
 =?utf-8?B?L3pNRkpRS2I0SXYwdUlpZ2U5Y1I3eGpURDU5dWNXdjA1MGRoODZzV1BnNW1S?=
 =?utf-8?B?cFRRWU8rSkxaSnI1TjNtUzl1OE9NTG8yMkN3dGdGK0xRbG1WS2thZz09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ebfd979-d101-44e4-0aec-08de56fee804
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 02:03:14.9482
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iVWm2HdwdHOVka1UcSRfV9MDobbhvgMX4duQ0rkcFd69tH+1RGUIw2jCSf1dfB+CD6bnDBD3VRSVQZ9N/ZTZ5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7658

Introduces new helper functions of_property_read_u32_default() and
of_property_read_s32_default() to simplify reading optional Device Tree
properties with well-defined default values.

A common pattern in drivers is to initialize a variable with a default
value and then override it when a DT property is present, or to explicitly
check the return value of of_property_read_*() and fall back to a default.
While correct, this leads to repetitive boilerplate code and obscures the
intent that the property is optional.

The new helpers make this intent explicit by directly expressing
“optional property with default”. They intentionally ignore error codes
and are meant for cases where a missing or invalid property is not
considered fatal and a sensible default exists.

On top of introducing the helpers, this series converts several
regulator drivers to use them, reducing boilerplate while preserving
existing behavior. No functional changes, except for a minor fix in one
error path where dev_err_probe() is now called with a proper error code.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
Peng Fan (5):
      of: Add of_property_read_[u32,s32]_default
      regulator: of: Use of_property_read_u32_default()
      regulator: adp5055: use of_property_read_[u32|s32]_default()
      regulator: max77620: Use of_property_read_u32_default() for DT parsing
      regulator: fan53555: Use of_property_read_u32_default() for DT parsing

 drivers/regulator/adp5055-regulator.c  | 30 ++++++++++---------------
 drivers/regulator/fan53555.c           |  8 ++-----
 drivers/regulator/max77620-regulator.c | 40 ++++++++++++++--------------------
 drivers/regulator/of_regulator.c       | 18 ++++++---------
 include/linux/of.h                     | 38 ++++++++++++++++++++++++++++++++
 5 files changed, 74 insertions(+), 60 deletions(-)
---
base-commit: 0f853ca2a798ead9d24d39cad99b0966815c582a
change-id: 20260115-add_dt_default-4ca95f2a6cd7

Best regards,
-- 
Peng Fan <peng.fan@nxp.com>


