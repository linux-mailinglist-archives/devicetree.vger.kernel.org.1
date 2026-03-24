Return-Path: <devicetree+bounces-279577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAQjGJMkwmlOZwQAu9opvQ
	(envelope-from <devicetree+bounces-279577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 06:43:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEB53025EE
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 06:43:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 806C4305C30D
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 05:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F0A2386C03;
	Tue, 24 Mar 2026 05:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="EM8+QQ68"
X-Original-To: devicetree@vger.kernel.org
Received: from PA4PR04CU001.outbound.protection.outlook.com (mail-francecentralazon11013005.outbound.protection.outlook.com [40.107.162.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5893137BE87;
	Tue, 24 Mar 2026 05:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.162.5
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774330981; cv=fail; b=r85yUEEfPZP6G4L4VzLuDEutqZQxay37+mMLWytAXJ9u/BCYntnWc/o2lfmlNZuH89tVrxqkFYukTCEiy2Bj2IhKbtoL/bT6JDROTarBipYPnNbaCIctdOjZ7fwxZjjiPlt2MYJsG2CKgpFLQ2Oy082HO1hKOiva5T5cSMs70NM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774330981; c=relaxed/simple;
	bh=FSZVzggv/EyqvNHG/7lg5tUEcdKhdUXgfIAIZ0y4ThQ=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=qu6/T7iECC6Q5ZsrwcfBY3ZxeVz8l2wCy6VbXFd15eoMYJArYJp6/mRpugR7X0QZN77NsnVO31grUBhxxKROuYmGfniYc9xoQRE39tICWSbAsn8A5oBxy4BeJtIoVpIOR+UDM+sjqESKFma6sNF+lI0kZ97x3rIInzeWbpnHWPY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=EM8+QQ68; arc=fail smtp.client-ip=40.107.162.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=icHjOagvJdqV1QysAZl32WZQ3BHj4xnoTg5JNLx0N33XJu2hBHUhdIvTyOMofG0739cBpZIFyYqSjLnMIqDAMkhykQ7KEtw4DPgNUpjOqV38LFZPRiDwBeO1KejQi+CeiMpOuc5Ygi9dY1J9vFWtRVc0BMtvEbpl9u+oFbL2TYn6NYEeOuUKBQni6YL/4Ds/ciR4tCpnfqLwd5Bpqyvwzq8Ko+zI1E4fOsMmTZ89/RvLmacDUZRpaWxbBc8CxqCMGbMLTQIBuh0063JFpETAzZ0Znh1xGR9Q/C0SnCJ/APN95eTI8CYkNnoX8eRQGqk6qMibMGwGdVDn0OZBEHnhwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yIhcX7zBYi+uuaOENl87+TE5N4NZFI0ZS9S1Alswqxk=;
 b=e6zhH+HSZaKL4HRdC9cVh+o/ocMsjuhUOyBCewebNrOfkCS+42UZdj79M0NQCopMGIVShMYNXlE6xJn0T32UH0MntqH29HOTBjRgRJtzXDeCEQDzbOuIYLfQ3W7iLqNMadjR+olWJgFm5MFWf0JqpWwtWyeTy0z08a7+BjH0chPQ+aq8HqCzJNm8tqY7EMpgMhYqItTCzXINFSIU+JKpEfp6XU+UOKbnDdCJeCUOWIVaYsOCLifXvaG7Xdfso2JWWqBcRX5Y7o4YkGf4ybIZSWeNnEs4MJrVrJ92zomRpfH2k5+nib6PFUiTNmA8o2DWgT5DJJn+LXFQyn/YvcRd8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yIhcX7zBYi+uuaOENl87+TE5N4NZFI0ZS9S1Alswqxk=;
 b=EM8+QQ680TBC2IDBoSBt+v30dDJ5x7NUO02kp2xnllwzRfPlsz86WB8MmKi2Hm3rJSzEOZmt8wwwl4daHIbOBHeqs9MLHhkdOOt8w+Ve8Lcx4USMaFAf4BKSkVnXbtbhBOuHjYjh7OZcEeLqj8BhL8uBo/KWBCW2jUb2On+V16Cj0KitgvD+tktSlQiRP5tdUW1OMeomiWcIqCvq48G6fhBv5rdQq/WsqzIgSU7+OUIx2n8AcsfrLW/5eKEXEgaMVy1TNtPONeXBg8kVPjRS/DUJJiH6eE66/UkvN0vrVFzYvxZHd44npvQLH39lxkpjQfyqTje4lNsXdUJSvZW93g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by DU2PR04MB8967.eurprd04.prod.outlook.com (2603:10a6:10:2e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.31; Tue, 24 Mar
 2026 05:42:55 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%3]) with mapi id 15.20.9723.030; Tue, 24 Mar 2026
 05:42:32 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Tue, 24 Mar 2026 13:44:10 +0800
Subject: [PATCH v3 4/7] arm64: dts: imx943: Add thermal support
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260324-imx943-dts-v1-v3-4-b33bf1f1c254@nxp.com>
References: <20260324-imx943-dts-v1-v3-0-b33bf1f1c254@nxp.com>
In-Reply-To: <20260324-imx943-dts-v1-v3-0-b33bf1f1c254@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>, Joy Zou <joy.zou@nxp.com>
X-Mailer: b4 0.14.2
X-ClientProxiedBy: SI2PR04CA0004.apcprd04.prod.outlook.com
 (2603:1096:4:197::22) To PAXPR04MB8459.eurprd04.prod.outlook.com
 (2603:10a6:102:1da::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8459:EE_|DU2PR04MB8967:EE_
X-MS-Office365-Filtering-Correlation-Id: 90dbe5f5-15d2-467e-1a0a-08de89682533
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|52116014|376014|7416014|366016|19092799006|1800799024|22082099003|18002099003|56012099003|38350700014;
X-Microsoft-Antispam-Message-Info:
	Jh89hMOVM6H0f0kTknhoXTJDvMM5L4zKC2fOZ2lOVcXyRX8HZafvn/JiTRNL+NfLNWkjNWdhoBWUbiRWt3ObvkvbXPkwzJwdGnEnkCtOoqpeGHVKLCE95Vfyxt8GMqZpEvdG0hx7e6XL4ianKSAgESc2cCZO4uXmBw2hdEmBO6TIh5QGkMz+aGKGvzS5FpJH+tB2ML0qwW5SNr/6vHcrAFNmByxzOzqT7u2YSvnom+D0mWsVhS7sD+UzftwSpcN7Va+93XaCmqiDTOCpKM7u+Z0ScLr0CEbfiFo4Rc4sYFIiel+jzZ+NTBV9BbUDs1rjdhLqcQ1teu4zEhEDGGM+DI2D/qvNdo4oMmN/BwAR4s8Zk/NwJH+jWm6OIMc/35J8U/siXZjqQRhV9PrzUILu0eiw70NNcnpWx5TCDyQ8pgKb+QYOEJ/slQhHIpR3ooTqyMhaqewpil525+VTurvnc06QexSeliWIYcESaVBnV0RS8ZOqAgysQRDNpVCf/TizGRsnXipecKpWwtx9ItCLRNdSrPCAa2jTtE8DSxYcUcVZMXlfLboOBy1WUdRzVdyh76TCt0HQpGwllN63obslTtZxuXAn+/NOv7aQEOGKeJgqTh/EGZbBHtLRoma2pqpVEaFjYl/dS5gsifW7BZLTUsbQVQ5z5QdmcLI+Xf8aCD9M0QIdLpSjOUt5AI+7/ruTw4YK48LoAH01f3MhsvtkdPo8M4GScvXg6hgX9TOzCebhd9epjOb1ymj7XI6g2eQcJitcaP/gMqcQf1S6mFMphUWACv1/xG33UQUyruJ1TFY=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(7416014)(366016)(19092799006)(1800799024)(22082099003)(18002099003)(56012099003)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?dUhreWlweFFuOE01UmxqSjVNS2RZRXk0U2wrRm12cDB1Q3JhYlYxWFNmekRs?=
 =?utf-8?B?WERDdXpYTzhjQnZRbERRVTBHZUxFRGl3akdPRWF1dU4vYnJWamNMa0N1Z0dF?=
 =?utf-8?B?dkZqSXdGbjk3bGpXSTQ1RWxlZmN5SlhrL1VMYVhyRW9FNEFORXQ1MU5jbkgr?=
 =?utf-8?B?M3lWcWdWaDJPeDJpSkU3ODByY1YxRDhsU2xxODRuZFhjY1Z3WnEvVEc0MHdI?=
 =?utf-8?B?dy9kRW1NUWVIT01kOXRyYUsvU1dQU1A1dFJxUnpDclN6NEZtdWtIRTlMb1A0?=
 =?utf-8?B?TDU2UHp3TVZEQitZUUFPaUZmL1E3MGFnNDRTQ0U0NFErbXJKQ0pGdmV1aFcx?=
 =?utf-8?B?ZGFybEt0a3NJRTNpbHZoR0pERjJWZXhzdmtjKzlJMjhNcjdieWxLWUoxVkRC?=
 =?utf-8?B?RDVkUEUrTzhsRG1vdHdRYVYrNW9IeFFtWXZoaHdrOXc3ZUsrWVVEVDRNMUkr?=
 =?utf-8?B?bERjQTZSSGRxUFlyaGtUUnd6NWd6bEUwV3ROaUxwQ2IwSnhiUmQ4OFA4R1lx?=
 =?utf-8?B?czBZcHlPNm15TEtwTzJod3VYMThva1AyOUJuN2lKTm85by9jOFBwbzRvVnE5?=
 =?utf-8?B?elNJWWx1V3l0OFE1SXpNTlNGSjB4WXlrS1FtcDdoM3h1NjBteWRlclMxeGVy?=
 =?utf-8?B?Qks1clNBamVibE03S0RFcEI3RHREck9XNjhWYkp1RktDbmp3dVBPRjhUUWt6?=
 =?utf-8?B?ZnluZWtId20yU0dEdzNFZ2FNcURsd3pUT1MrOGVuZXJhbkh3RE9meGY3R2Nl?=
 =?utf-8?B?UGNSTkVOcXdLMlVsQTRBMktGa1ZScE1xdzhkS3ZYUnhwQ1dONGMwK1RDNk1s?=
 =?utf-8?B?YVlRaUJPREhsSDhJS0QvQ0RBanJsemtUSnlIQmNMRkJCcCtrSWEra1cydDFI?=
 =?utf-8?B?YnU3R3hGS2YvK0F4UHRVM0dlQk5BNzgyKzBJemtqMVFnZWVINExJT0o0cHYw?=
 =?utf-8?B?YkRQbVk2RWJhUnpFdXhqdTZFc3VWcjNyU1ZJWUhUcUZxeGRMMXZiVWtKdFBv?=
 =?utf-8?B?VXhxUWY4Qy9tTnhRQk9zQWJjanRTZWp0dWFzTkhiM1BaME95cjZuL2JMdm4v?=
 =?utf-8?B?NU9leDhLS3BPMFlQZEJMa2hXSFRCb09oT3I4VzkxWW1sRTMrTVF1cmpVeWsr?=
 =?utf-8?B?OVp0TlFHU1lKVk1IQi9rRHpzMmVrRXJjZVZOTGhtNzVYTEgvN2ZJSjdLZjM0?=
 =?utf-8?B?MVhkVlNsQ1J1VWVCQ2dTN01pYzdFWlRHYmhNWi9BOVZMNkdaM0d6YkxTRlRz?=
 =?utf-8?B?STFhUjh5TlIyS0NIT3RjRldjY3lveVYyZ1NPVE1RSnQ2eGU3b0hlcHM2RHg4?=
 =?utf-8?B?KzNpMTR2dzM4bVNDbmJoZDVmbzdOb3l1VXQ4dW94UWlzL2gvR0tqTFZ0Um1h?=
 =?utf-8?B?K2p4RlVKSUZPK1h2UFM4OWdDMmdJSmJBVTBmVkRzTlhPSlRTY012S3kra2Qw?=
 =?utf-8?B?aHRQOEdzT3ZqSGZMSklUVHdQTFFqanlyRU55dXdwTTYxdHVpR1U0T0VtMFFm?=
 =?utf-8?B?bnFlNW0zLzNkTDZFdDhrZWhtalRORWVqQ0xDYjIwL0tSSDlWN1hqbWVaMVpi?=
 =?utf-8?B?UnkxVWFsMXhERTU0UE42OTgyM1FyOWRYTGZZZGpQKzZXU3c1WFFTZkUwTDZH?=
 =?utf-8?B?UzFscDdTN0pDb2llYXF6T3ZaeWhEcTdRRUYxOWoweWM0Y2x1OERGbDVEQjdW?=
 =?utf-8?B?S2lIOWxmbTRRTVlDbndrckFDME9hSU00azNKZG82T29pZzFITFVBUGNEbTVP?=
 =?utf-8?B?OHVJcHZQaDE5dHhrazFneVg3dUZ0RnV1QVJRUThNdFNlb2hxWTdxaUFROGdu?=
 =?utf-8?B?QlgxY0hYNm1tM0ZjS1ErUWNZRU9jT0hqQytLT0gwc1FvTnE0KzZObllUeTI5?=
 =?utf-8?B?NVp6VS8rWDU1TnQycFFnMlh0RkljZkV6MXVheFY0OHROU004NUpyTGNKV21Z?=
 =?utf-8?B?bHFHZUVZOXBLZTduR1p4NHJoUktDZXNNRDZuY3c2U2pHVC9hOHZRVzVqdUlX?=
 =?utf-8?B?dEJya2NjcmcxWjhBODY1MEJUaW91b2tqYmduMWRkd0t2VkNja2RMSTlIRnU0?=
 =?utf-8?B?QjVZeU9OYXNDcnhlWmVlWlEzNVVjYVMyMUNGc3FDcTliM2poUmJRa2RyeU8x?=
 =?utf-8?B?bXU3NGNYYUxhNXhpQ2FBOTZLN1hZOUEyM0s3Q1ZnT3NjazVtRzhOZDFHK3NT?=
 =?utf-8?B?SndTV2ovbmhSNEhUY2g4ckFWT0hyUXlrOWxFQU9rbUNVc3BmVGZSY3pLa21S?=
 =?utf-8?B?R0VxbWRpR2Q2L1YxbGVBYTdBMks1MVlwWkdOWmRUTFRsNTgrb014dUNka0NJ?=
 =?utf-8?B?QnUzSnVhMDJQUFM0eVM0eEhOaCtJTHFPdVJvU0dZeG9iUzlDcUI5dz09?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90dbe5f5-15d2-467e-1a0a-08de89682533
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2026 05:42:32.8442
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WxXzauGFUBJiUwZ6g0fI9cAZ0a8n3LZbkL0sa1UGm+gC6KjpnSXiOE0Cz/GLFnnHhJSpFXj7jqUVr1Nk+Zncxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8967
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279577-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peng.fan@oss.nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nxp.com:email,nxp.com:mid,NXP1.onmicrosoft.com:dkim]
X-Rspamd-Queue-Id: CCEB53025EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Joy Zou <joy.zou@nxp.com>

Add A55 and ANA thermal including cooling-maps.

Signed-off-by: Joy Zou <joy.zou@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx94.dtsi  |  1 +
 arch/arm64/boot/dts/freescale/imx943.dtsi | 62 +++++++++++++++++++++++++++++++
 2 files changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx94.dtsi b/arch/arm64/boot/dts/freescale/imx94.dtsi
index d779866d5bb2d425a496065d6f7f3f7532f15298..45dc1905549274bae118156f425ee5daa9ae10bb 100644
--- a/arch/arm64/boot/dts/freescale/imx94.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx94.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/thermal/thermal.h>
 
 #include "imx94-clock.h"
 #include "imx94-pinfunc.h"
diff --git a/arch/arm64/boot/dts/freescale/imx943.dtsi b/arch/arm64/boot/dts/freescale/imx943.dtsi
index 45b8da758e87771c0775eb799ce2da3aac37c060..5091a5c3d5815d88b7ae94b7e1776de7403b9c00 100644
--- a/arch/arm64/boot/dts/freescale/imx943.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx943.dtsi
@@ -145,4 +145,66 @@ l3_cache: l3-cache {
 			cache-unified;
 		};
 	};
+
+	thermal_zones: thermal-zones {
+		a55-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <2000>;
+			thermal-sensors = <&scmi_sensor 1>;
+			trips {
+				cpu_alert0: trip0 {
+					temperature = <105000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				cpu_crit0: trip1 {
+					temperature = <125000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_alert0>;
+					cooling-device =
+						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		ana-thermal {
+			polling-delay-passive = <250>;
+			polling-delay = <2000>;
+			thermal-sensors = <&scmi_sensor 0>;
+			trips {
+				ana_alert: trip0 {
+					temperature = <105000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
+				ana_crit0: trip1 {
+					temperature = <125000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&ana_alert>;
+					cooling-device =
+						<&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
 };

-- 
2.37.1


