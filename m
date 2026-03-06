Return-Path: <devicetree+bounces-271903-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKPEOO6Tqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271903-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:44:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 817B321D3F2
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:44:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 805AC3016885
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A9D7379EEC;
	Fri,  6 Mar 2026 08:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="LgPyX1Yg"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11012012.outbound.protection.outlook.com [52.101.66.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BFD378D7E;
	Fri,  6 Mar 2026 08:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.12
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786668; cv=fail; b=he2itfw7oJd0q8tzT/b72emYaKzpoJ+Xe9Ma/cyE/3I61lhw2eohbd2DN9RFzc+Vds7bEsqpEUzpPethh6tqBxJIGPKmw4woIGaFji8mmLY+BMeBp69jpMg4rWw6Vo27RpaGAr2GNxqG3Gg0/9knzLkIplvGattyLKkVXj3ibhk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786668; c=relaxed/simple;
	bh=L3GARdbmATGCbaC1+1YvGWqnnyZN3a8eVfMpetoa+5E=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=SoEok8HtQOMcpzjxAuvBzQe8qDGgrmzWCIYYb1P0ruU6YoHXQfifKcm95s/nNWlO0HPSvMbnsKVnkIjuNQ1kfms3rJJn+x74yCcC9i5mfpX6orUc62naVftwqkqNFo+7BsIZYUMzcQl5vrBc6ZFRab10RDEYIMH+vOd1ZoBctgY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=LgPyX1Yg; arc=fail smtp.client-ip=52.101.66.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BrIoAsYfKG29E6rnFz0LsQ9uPh3Blhq6JZEsLhqeokp1CQpOSu8JV+qDvvVruqDktWEyHYCSnJPKHWT8ydkmMMlFCQl+3YV93qhf2RUvfebEywKI67wjxpfq2xYvwDsNKVqd0Ob4nw0s88tCCVKDyRY2ilAuLgJw9yw9JXsLx2cLbLQINE8jANyFB8CK+4LkGohjqct0VPNvXGU/Eaul23cX+sRQ0i02QU+gDaQtsojF3xE+ngI/KDKS8Q4eZ7S7bye1VFSes4/6oo9/3pD/3swM3v22trg8EDXQWxf/Be5N7xAwIg2IUasygH4N26TjhxttPbgzV0DWXO3JF+VdOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rnRTR9KPewoeaSpuxHLaHlCnvmn8CLefGOOtkhjuIo0=;
 b=SZSopVBN2Tkx1iHESO8n9cGZSY3XX6ZN1cUTxbiCfiIk9iE5oXubWnuYRJPgMWCzPJWM+98JNQGC76G5ZTFNOiHEyIW1XGk5wvzkM02sj/U2p+2kWww3a+3SlIPA73s9Vc9LTGNTyTA/1YVMHReY+ms5Vi257ncs+rCXAdI6VOtBaNWVoUq/o1JeNjhkSlsrwg/5Zy5ie5D2CXghMoyaR50kUtHa6OZFTBoTkyOMJPCs642GPA4scZKjN40gQvx54pnZ6Kt56avxVnLdrAtDXHf/OlqC7Fvmmq7RqCwI6ZZoL+1NhD/tvrAxCA7irYRGnsIYaw7wvTPmeImhts38Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rnRTR9KPewoeaSpuxHLaHlCnvmn8CLefGOOtkhjuIo0=;
 b=LgPyX1YgYIa0Ca0on0fm8oK0ZC1eVG/ah2bCpLJdIca5ur3Y25Hi2ZPmWxoBa0ZHPKPzrXboiTk7CqBadDoC0RLnfMEK/EbYgm6j0XKcavkaQBC3SMouWHML0GU2hiAAn4WGOnLo4vkbuP3SpDhuQ6QARSoyKCu1LL1yWv5LH5VWJ6xiu3dovATC7Gr/ylJbqU+OhPEzCblzgbvtU1iDqQw8lX6e2nEEHRBMz7foKcieLF1AnucvH2xocdWBExZWm0Ov3ekH7fiZ1+mHzjdTGmCMAP+GOD4Jct746e+42R+h2dPPRnY1GCWbk8zuXNeZ4shsfPSNmfI7PDw55lAO9g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by AS8PR04MB8357.eurprd04.prod.outlook.com (2603:10a6:20b:3f1::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.19; Fri, 6 Mar
 2026 08:44:22 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::4609:64af:8a4b:fd64]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::4609:64af:8a4b:fd64%4]) with mapi id 15.20.9678.017; Fri, 6 Mar 2026
 08:44:22 +0000
Message-ID: <1a3d466c-c1b5-49f1-a9ab-1c827e906e91@nxp.com>
Date: Fri, 6 Mar 2026 16:45:25 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 8/9] arm64: dts: imx943-evk: Add display support using
 IT6263
To: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, imx@lists.linux.dev,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260304-dcif-upstreaming-v8-0-bec5c047edd4@oss.nxp.com>
 <20260304-dcif-upstreaming-v8-8-bec5c047edd4@oss.nxp.com>
From: Liu Ying <victor.liu@nxp.com>
Content-Language: en-US
In-Reply-To: <20260304-dcif-upstreaming-v8-8-bec5c047edd4@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM7PR04MB7046:EE_|AS8PR04MB8357:EE_
X-MS-Office365-Filtering-Correlation-Id: d271bcb1-2f36-4f61-86cb-08de7b5c9074
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|19092799006|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	suPOOSRtYsLMv38aoX+D79LGGtTVkwpYkPGYRJMyGgKVYGX3mDZfKQwVF6LFkQnJRpvfx/DRpGHjmBz9CU+OASLpHJnECNBbLGqwnENT6J7+2CrEiQD72YDgT8DeNSNbQDnCV8PBqSwphfDQzN8wd8757NS/1+63CFPmx3pNYcjHOWHoD2QylPOT0qGuxfmVaU4ZwQSMBBBsv8NjqmQGWvAanmlcR6Rf2S9YLdlGSE8UX0TizOCORUlboHc0f4js0q9MIeNDS9OF3ZH22d9jE6M0e9GXPPJDP/iWERalWF5NWRnHx8pMbyOU9YH41F8w928w9XvCWqwtFU/udI2rBdA7KwM3xNRtHUhFhb/2Fm/av8U2sDMhfwzBm5wz6X4TGJo5Cll85TnE3ao+hxKXBkWH4rrjOCoBBTt6Q0di0p4nHS1TIjtO2XiwCkIRQRWt6yhrGVTezd1U9gRRjco4+BaC77j2VZAAAUS6fTuzckeiM8jFtiAJHA/OtxxHlI/eGXUzsvuFs/GUgZye/DNeIi95eIlomNo9+B0J328zLGLn+WeZbD9oggxv+nuyrBC+RHjigXftRUQjokLsLQEpLO2+AVg7V5v3emQ3coPYDRDz9ULAE/JaovD2Fcoc1KoEGbeyLx4WUJLBk86G/4Weenit92WegbMHi0TpjXiYsNxkTXv99GDypJ1gkos87u5P68bR4X2QegW2JG+l60mUuF0HeH6QqHccmq/ZzvoQaro=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR04MB7046.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(19092799006)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NTJCVzJ3Qkt2UFlmUGxxdkNXbFJ1Vk5ZeWhnUklsS3NXRGtRSWRuOUs3Yll2?=
 =?utf-8?B?SS9nTWQzWEZZM01TUEVSaEU4N21rYUZ5c2xvQk91ZlVtNDY0QzQvSG4ybTNl?=
 =?utf-8?B?ME01WVlxbk1xN3c1QjhrYjJoelVTWk8vUW9mdDBZLyt5clo3WGZ6b0ZDQUpD?=
 =?utf-8?B?M05BWTY2cVZ4OE9CNlJNeXRQOFl4QUl6L0ZwMzVmYWJmRGJaLzhVVEJBc2Rx?=
 =?utf-8?B?TENHa2lNQWFWWVhHWmE2ZFhHdEZUeDdZaFlYdllJZ0JRbVlHb2Z1WWRMWURR?=
 =?utf-8?B?L3JBbnVmVnNHaTNoV1VXT3pEMDJRc0pPck9vQUk1NVdxOFZNQlJMMDk2cTdz?=
 =?utf-8?B?ZytROVFxOTNOWlR2cy9BNjY4NUxuRHYwT3lBWi9iM3d1QTBJRzhHSG10L25S?=
 =?utf-8?B?eS9rVWlDdUpFTFVhLzkvanlYV3VXNTZaNGo5cFA4MVFaWXR1dlFXNDVXbWl6?=
 =?utf-8?B?UGxJME5WV3RVZ1pkZWEwcktHWWxZeTEwcnl5NWpKOWh0R21tZ0VFazFKeEIr?=
 =?utf-8?B?eVRFVGtrelRWRmFhU092MVlwVmgrZk5QTlVuSyt4cFhnZTRMQ1RHL2dSYWds?=
 =?utf-8?B?NndtTU9ucjJxQ2IrbU1pN3I5eHE1ZGJjcEJub2NoN2hrb05YNHMzSmJzQ3Ju?=
 =?utf-8?B?ZUUzZGY3dHN5Y2w5UkhwcEVCa3pPVEwzbjJzcFZYVmpkRFdXbHVGQ2sxVWt4?=
 =?utf-8?B?a0s1RlF3NTRaSW1VNzB1RGlYcTc5TXJJR05YYWI3UjJHeFpHSVFTRUJBWjEz?=
 =?utf-8?B?YjNyeXNlaktXZDNMNXhIMlp4U0VkdElydENEamJ4QTM5Qi9aRkt6RDBLRmNt?=
 =?utf-8?B?OC9BODU2MERNek9TNUNPNmozSjhxdHJtM2ZaNTlwU1hIaUxURDFPNDZxL3pn?=
 =?utf-8?B?U0lYRlFOK3dQbG9rYUZlWGJxQU1DRnN4Q2pVYmQ0MGc1cjRkNGl4MC85a040?=
 =?utf-8?B?elVrVGhDZWNnWmVrOEROcmgrVm1sNm1kOFFHekJqVUIzTnN4T2VERWJQVm5G?=
 =?utf-8?B?WjYyQkRDWCtqdm5NemRGMjZUeTUvVDBmL2dXYmJtdGZoU1hDZC90L2lXb3VR?=
 =?utf-8?B?UWphVjNGQXpEOFJyVE1xNUh3U3dRd1JKeXNzZWhWeWRZVFFhcFNROFFZTVVx?=
 =?utf-8?B?SVBuTjJXZTZDM3FKV1ZPTnRnRFFiMlJXWVI4OUU3UVo2UjdzZ3g1VTNiWEt2?=
 =?utf-8?B?TG1TSzJ4Ymt1UHBNaWpQZXI5NjE2RDM1SVFKK3VTb3ZSY0cvMkwzMnNkM0Jn?=
 =?utf-8?B?OFFlOEZXMExzVDVhajM5OTA0UHBsYUJJZEliNS9aRVl0N1Z5MldiemlaTDRN?=
 =?utf-8?B?cG5mdUo2MlMveTkzRzBWMlFzQVZqRGY2alcyZzZObFlwZ1JSR3N1UXAwRCtT?=
 =?utf-8?B?UHBoS3hBSGhJTkRzM2dRamRPT2JkQmxaWWpUWU5sVC81R0F5WnJWN0RWOWxv?=
 =?utf-8?B?UWticFFibUFvOEt4WTAwMWtoUncxazRieWxNNzU1ajd2LzVVWU1SMENUWjd0?=
 =?utf-8?B?R0VwRjIwSS9IcUx6cWsyY0JRT2ZGNmg5TXRvMy9HWndhV3ptUmtzZ2FCQU9y?=
 =?utf-8?B?WCtFbVhHUHhoNUdjTkRRQ3NnMjFBUWpjUVlWZEtvanB5NVZmdVMxN3N4dlY2?=
 =?utf-8?B?UDZXcnU3L3NMVS9tNTJ1K1NpQkkrM2NBMmpvalRwbFVRZlRCN2c4NEs4TUdE?=
 =?utf-8?B?cEJxUTZjYVoxUGFsL0dMZzNQOEwyUEhhVlVwcmZlOUhLN05CVHplU1M4UGs1?=
 =?utf-8?B?dzRsMlBJSS8rd3hicDRhZ0FZRjk5UHQ4YitMemVkTWNzelYzKzJ3Yy9CUG42?=
 =?utf-8?B?VUpIK3hqZm5nVGV0UE56bXRnam5QTmdob3ZVV1FKZGk1TGdXZWdpaFpWNVhs?=
 =?utf-8?B?OWU4MW9YbzBNc0JUOUc1M3p5RXU1OEhwMFQ5VkNQNkNxQWtCN3JmNmRxaUNp?=
 =?utf-8?B?NTJiSW5USENVR3poTWVGajdhSEc4dUtwUmxLb3BKTThoQWRoQnpOazEwalY0?=
 =?utf-8?B?SEpQSFZ3YWhTZDNmeTBFbU8vVGFUNTFGanBLL29IRzlFTG0xMm5nM2Z1WHJa?=
 =?utf-8?B?Zy9BbEk0VTZwc0dmTlBRTCs4WXVPUm5OcFA1RXhwQzdoQllUNWtkRWdVU1Zn?=
 =?utf-8?B?VDNRbXdJM0hlM0pjTUU2dWZDVmNVZG1TSjlPTHVpeHkwVjlBditxNDZQV3Bo?=
 =?utf-8?B?b2hmOWMxdXNwa21BbDYvVS9FV0lIZERScHdNcG42TXpVY1FCS0xzUlgya0hm?=
 =?utf-8?B?dnJQVmhBdlVudkNlaXUrTndCTDBlano3bWZFcGl3MFlKUTIxNllDc1BFb2E5?=
 =?utf-8?B?S2h0REdCamNpNzRsTUZsZW9kVk5wQm9oYnBqMkJMZzZvNnBiTUhBUT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d271bcb1-2f36-4f61-86cb-08de7b5c9074
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 08:44:22.6669
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qJGwxQBz4n9/ulnbke63KTKMo4GwhDDbJZxy8KuJrjMcJGnb/e6pw+Oay3A36ZZ8o8dEWpnibnjEg6ya/tQL8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8357
X-Rspamd-Queue-Id: 817B321D3F2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[oss.nxp.com,lists.linux.dev,kernel.org,nxp.com,pengutronix.de,gmail.com];
	TAGGED_FROM(0.00)[bounces-271903-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[victor.liu@nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.2:email,0.0.0.4:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,nxp.com:dkim,nxp.com:email,nxp.com:mid,0.0.0.1:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,4.196.180.0:email,0.0.0.3:email]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 11:34:17AM +0000, Laurentiu Palcu wrote:
> The ITE IT6263 based NXP LVDS to HDMI converter can be attached to the
> i.MX943 EVK board LVDS port using the mini-SAS connector. Since this is

Since the LVDS to HDMI converter can be attached or detached to the EVK
board, it would be appropriate to use a DT overlay instead?

> the default configuration for the EVK, add support for it here.
> 
> Signed-off-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx943-evk.dts | 86 ++++++++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx943-evk.dts b/arch/arm64/boot/dts/freescale/imx943-evk.dts
> index c8ceabe3d9239..0b69450566159 100644
> --- a/arch/arm64/boot/dts/freescale/imx943-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx943-evk.dts
> @@ -55,6 +55,36 @@ dmic: dmic {
>  		#sound-dai-cells = <0>;
>  	};
>  
> +	hdmi-connector {
> +		compatible = "hdmi-connector";
> +		label = "hdmi";
> +		type = "a";
> +
> +		port {
> +			hdmi_connector_in: endpoint {
> +				remote-endpoint = <&it6263_out>;
> +			};
> +		};
> +	};
> +
> +	reg_1v8_ext: regulator-1v8-ext {
> +		compatible = "regulator-fixed";
> +		regulator-name = "1V8_EXT";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	reg_3v3_ext: regulator-3v3-ext {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3V3_EXT";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
>  	reg_m2_pwr: regulator-m2-pwr {
>  		compatible = "regulator-fixed";
>  		regulator-name = "M.2-power";
> @@ -179,6 +209,10 @@ memory@80000000 {
>  	};
>  };
>  
> +&dcif {
> +	status = "okay";
> +};
> +
>  &enetc1 {
>  	clocks = <&scmi_clk IMX94_CLK_MAC4>;
>  	clock-names = "ref";
> @@ -217,6 +251,21 @@ &flexcan4 {
>  	status = "okay";
>  };
>  
> +&ldb {
> +	assigned-clocks = <&scmi_clk IMX94_CLK_LDBPLL_VCO>,
> +			  <&scmi_clk IMX94_CLK_LDBPLL>;
> +	assigned-clock-rates = <4158000000>, <1039500000>;
> +	status = "okay";
> +
> +	ports {
> +		port@1 {
> +			lvds_out: endpoint {
> +				remote-endpoint = <&it6263_in>;
> +			};
> +		};
> +	};
> +};
> +
>  &lpi2c3 {
>  	clock-frequency = <400000>;
>  	pinctrl-0 = <&pinctrl_lpi2c3>;
> @@ -258,6 +307,43 @@ i2c@3 {
>  			reg = <3>;
>  			#address-cells = <1>;
>  			#size-cells = <0>;
> +
> +			lvds-to-hdmi-bridge@4c {

Maybe, change the node name to be "hdmi" to align with the nodes in
imx8mp-evk-lvds{0,1}-imx-lvds-hdmi-common.dtsi.

> +				compatible = "ite,it6263";
> +				reg = <0x4c>;
> +				data-mapping = "jeida-24";
> +				reset-gpios = <&pcal6416_i2c3_u171 8 GPIO_ACTIVE_HIGH>;
> +				ivdd-supply = <&reg_1v8_ext>;
> +				ovdd-supply = <&reg_3v3_ext>;
> +				txavcc18-supply = <&reg_1v8_ext>;
> +				txavcc33-supply = <&reg_3v3_ext>;
> +				pvcc1-supply = <&reg_1v8_ext>;
> +				pvcc2-supply = <&reg_1v8_ext>;
> +				avcc-supply = <&reg_3v3_ext>;
> +				anvdd-supply = <&reg_1v8_ext>;
> +				apvdd-supply = <&reg_1v8_ext>;
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						it6263_in: endpoint {
> +							remote-endpoint = <&lvds_out>;
> +						};
> +					};
> +
> +					port@2 {
> +						reg = <2>;
> +
> +						it6263_out: endpoint {
> +							remote-endpoint = <&hdmi_connector_in>;
> +						};
> +					};
> +				};
> +			};
>  		};
>  
>  		i2c@4 {
> 

-- 
Regards,
Liu Ying

