Return-Path: <devicetree+bounces-258679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFSTI7/ecmmNqgAAu9opvQ
	(envelope-from <devicetree+bounces-258679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:36:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 455A36FB5B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 03:36:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C091230263FC
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B7BE388873;
	Fri, 23 Jan 2026 02:23:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023115.outbound.protection.outlook.com [52.101.127.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21F73815D3;
	Fri, 23 Jan 2026 02:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.115
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769135018; cv=fail; b=Ruqd6gSqttD/oolYNT6UO6+SUgMdZWZxBt5GU094lpuvJ3DP6pTdVGVD82qONIeX7CvXZH5kAGf1oEKxCt1KQygCbe0atKfY7Vbuhpy/ygc25YiUq+3bLJLw/yUdeHHi+eSHawjozHrLTXAJR3QknpgLyucizZXrvCHpV2d1tDE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769135018; c=relaxed/simple;
	bh=g3u7y5UCbXFjmbZbllyLysNTkWbHCKx3EhT5daaeSs0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=itSiDJq/7iu5rRRLKAdrEhSxObzXp0+60bCOeSqccptvplDQ7EZKHhtZdKEGTRJXGg6mI66taKDLU0QjT/oV1JxClkWYtkkUbFuXplN4Tnal2qZ8++BiExJm0qyaLJWeiNKZiIkxlYBlsh/RQ6jg3urRuYg0N/j40tQvIjzAbao=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com; spf=pass smtp.mailfrom=khadas.com; arc=fail smtp.client-ip=52.101.127.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=khadas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xkhqntaEggcypLAH4GHxtNbMZgD6SvlsvgDjBJTjT1WSqzmV152ubxbNLzt1z7BUsfWWaRDUu7FVxnB2mWyKBehXHD4xgd74qm3rK70IndQaK/dYfeqO6cRAjOa+iUzDf9mzwiSA69kYd+RUWv+vZbtYUUnAatBek7c0nMObfQkmiE80ggmZrntZchXtKIouQudvyLQz60NBU/Kw/AMa0Vh9L2NuI2HP36gNaMp1fbcDxSaFMcjsB//7Ro7LtWy+qnQcALy9JzC9iBQuHSPo+0zqpRU3BAGVtooEU0K1dECZY/IvG+ahPWy+/Q674zAJP49oy/doNxattV3jMJBoaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qy8sDL9s8n7tnNyG2sp9nrtfGGQx0CnzPDUaeIJwNQM=;
 b=EjW8SXiWb5ftKaEjMSkos3HOyfEwxhBGx3o+g29b3UAv5EwiIJL4+5IkeAZtcE7ZgRC8E4x1gBhKh/7YPQfou3pRQgs3L66aCGEs4n+sFa7GUUsQ/Qq1RHZrSCq2b2xa91dbRgFAqvVOVTFtz3IP2r67t25C/9svDQDsMsJC9tuGG9kRxe9Lcu+dRjmixRiLJh2thwPRZzOfaA25SYfaNK+Kl7koQXXmhka+MSzS1J7BM++zg6LWrZrLA6UbUoOPQpTC0Tp5cMFQylBUEju06/FtmbenMSRdvVI1qlSIrPZkZywpI/RYQXAeAkDSZ53lXINyiT+WM0vABdEyj2L1pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=khadas.com; dmarc=pass action=none header.from=khadas.com;
 dkim=pass header.d=khadas.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=khadas.com;
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com (2603:1096:308::2da)
 by SI2PR03MB6590.apcprd03.prod.outlook.com (2603:1096:4:1e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 02:23:24 +0000
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::af44:7e78:1133:adec]) by PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::af44:7e78:1133:adec%8]) with mapi id 15.20.9542.008; Fri, 23 Jan 2026
 02:23:23 +0000
From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Cc: krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	xieqinick@gmail.com,
	Nick Xie <nick@khadas.com>
Subject: [PATCH 3/6] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s: add PWM LED support
Date: Fri, 23 Jan 2026 10:22:55 +0800
Message-Id: <20260123022258.136448-4-nick@khadas.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260123022258.136448-1-nick@khadas.com>
References: <20260123022258.136448-1-nick@khadas.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0024.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::13) To PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 (2603:1096:308::2da)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PS1PPF62EEA9B1D:EE_|SI2PR03MB6590:EE_
X-MS-Office365-Filtering-Correlation-Id: 83ed5f50-a743-4705-589f-08de5a266203
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|52116014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?Z27rPtYKrMYXKoiv2F7DSpz/pHC0rUUaadchtydHtwxr2lhRI9qauMFJCQ9o?=
 =?us-ascii?Q?ZGlkoSEnGxAelho03O7worwUpwuo444tje8uV+K3ueDbu5oiHCkxGDlzW/01?=
 =?us-ascii?Q?kOPX/+WJJm2IdWOnVsnRHW4OgffAX+i1yPqcOQD4o0Gd16WXL1qLJ2a+Kktj?=
 =?us-ascii?Q?1FPm8rdhoFwg15m1BBdp+fITX8WeOG0PaYlTqr3IQ/nNG521u+9auyrhdn5h?=
 =?us-ascii?Q?uvIDowOM8Cnxh0gG9N/EFUD79K5INYOaoL5C67awZ1nYI0Dz0CS6Dfqh+jp1?=
 =?us-ascii?Q?KCO9z6qcpGkakOXryHfh30RDEJGHFOmt91VZFGbG8mGxFK3OQqg0p8aMAkhm?=
 =?us-ascii?Q?VTcIuCUdeqKsMngFgONJqsWvqVzbGBjRXTGiZT6tkIx0YKORnYidJnfdbZig?=
 =?us-ascii?Q?sSH4kfktGrv/cT/zWmF5abkoNaJWPRmHJkshF2Tt1g/jDD3c7BhVwc57q9qM?=
 =?us-ascii?Q?egeb458+cQUgG4DMohiALu3vwZ5+K1VyPCiSVzLQ6sg97KfqnY3VNoE2wafu?=
 =?us-ascii?Q?JUJ3Si16loYESVSzIJjy6akXYepI+yYjsDe5TcS/g/suhdsa5KQbGwSObpOo?=
 =?us-ascii?Q?2HR7OSRXml2T+JSwnVMqbik0jbY2O9ammEe2AIz6dTN0hoTaBl04LGfevaF2?=
 =?us-ascii?Q?Y2trRuArBDqe5Vfou/QHYOhQYwUSq/+7cBbshwAIG8qyAHyZb7CrEL/g3PPG?=
 =?us-ascii?Q?S6TPtZ9Ct3z/HBatLnVVJf3SBrkMEbpmNvpeKYhCGgOLfqzAnQPpbEgPWc3B?=
 =?us-ascii?Q?Pn33L5JafSKX331H/9wJmq3KQu14qmnC8VRgabJSPFcjor/1SKpVevsVGAFk?=
 =?us-ascii?Q?MFwxDbyavZAyrznyF3PXZKVoXonarkovKD3wfpmMFHqxV8M4LZHwSXylUJrz?=
 =?us-ascii?Q?/X6ygpO6B6piLMDpOKE5fOyMy8JKWhzBGhA+pA+AXyrnemhA1vP0wZe03x1H?=
 =?us-ascii?Q?v8rDJGSRzXbe9iiPl73EBLbvWs7yzVDlul56USDEgZAEBU5F7zJgb+Gif1JR?=
 =?us-ascii?Q?f5zDiRhz4YwvF4Yya9+TieqMWsrO1v6UVoXAHknBNOof5Hmsz6VvW1yHBJTZ?=
 =?us-ascii?Q?Au7scKE+xRR469ZoON6soMuO+H9QbUbgiSXw7DWdLOTzzFjt2JSRHwZI/qhF?=
 =?us-ascii?Q?aGOVaTVxsj/r7Sdbk+GrWGVn1lxxCtv4wvk6dMYuW5Ikm7LraKB/W5IEMiDu?=
 =?us-ascii?Q?wy+aqexrbsdhn0naXQhbnpPRm2Es8Ig9qJgQViRKotIz6h1bw0YF6zQGmzvO?=
 =?us-ascii?Q?6+uYf5p6mJWnT9a+K1paTcSPf3kX2h2qJYYwYuJV2k6DMOLkNBmO5PI2IDgw?=
 =?us-ascii?Q?rAxhQCtTOxEhoM9d0KeZMj8mSIalzaAoJwBaVYz9g+3Hs5dV5R10n+MgozfQ?=
 =?us-ascii?Q?m1uBziExKVufcUoG8G2FO90pfrL7kJQKonRrTKjEyrnacUjqiJRs52hDTsyS?=
 =?us-ascii?Q?a/ajabzSCYjyg6lGF4kffWZXy3Sjzrrv7Po35Qd4d2FipLARNriC0gwyTyO4?=
 =?us-ascii?Q?qmlWiWI+Pm7qNvSgcoawcKwC9AriiNagGlsWKKIGkBHEcBGosDYkhuJaihbS?=
 =?us-ascii?Q?N3XIorl8LyfC4sAIUTCqxOtpvevKdYZxgOubyDTQZc5yILc46z0NlJcgLonZ?=
 =?us-ascii?Q?UxEAlA+GDW0Yv275B86tYhs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1PPF62EEA9B1D.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(52116014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?REplBkxfBzV8zslzwHFaA9yc5XyojYmUsyghtQipkaY7l5sjUJp8VoO+ho9j?=
 =?us-ascii?Q?tDARWqyEn/f5OT6Z6t2Vdrp6mW9G4sAB2RkH6aogu9pTdx5lM6vRM+Vj2+ux?=
 =?us-ascii?Q?VawVmqSJQXiTC9GCTc1CEquDKoLq7Ktv9TLtSiIcIHC0INgC3wWE7cEw+HLb?=
 =?us-ascii?Q?Es3gyFRdaljcgDfHrcZrJDsX74xoiGlYtBIz1FPYRaZHze8Xe6M/ONeRoHkp?=
 =?us-ascii?Q?HoiQZ2L3OLW868TpijM43LGKwDyIx3ybjgJMiQ2B4/KXGjCilgIoA9yN2/NQ?=
 =?us-ascii?Q?vQtLlOds0vv1J2EWcM/pt3HcqkjXonlTiRttlf6S8TLDI/sFYFcIznynvHhE?=
 =?us-ascii?Q?j+0TeDDFRuai4lfxohNH8aerb5sR99JuHYr8zqTrooqdEhqsnUc4gKiHTHGu?=
 =?us-ascii?Q?AHt2pezgm3wRS+5pPcDnGh+VCRxB6kymsoAQIVOBm5xcs/D9NILVYHk9bIhU?=
 =?us-ascii?Q?yCMFKkN4kvhSeHIY7/UwScjLpRKMv/yloyCSpFao8E+nvgcNn4fy0NWZPM9Y?=
 =?us-ascii?Q?OtKtFWB4Gqlp8zQ2ZqENgHLmk2o95t89IppRkfBpKehLlvy4EZVvKVR2Rlpa?=
 =?us-ascii?Q?P1EpZoQkRe4A73YXgapFc9mA0cmtJapL+PMisXVJYaNZI6ZfNlctfDAQhx3C?=
 =?us-ascii?Q?uMD/A6tCCkcJp2Yopqe8nriuBjcTH/cMeNZgHNBmzDtDOVCj9XhsZHMOKRzQ?=
 =?us-ascii?Q?Bs4D2rp0xIb/hSM/wmNpIDjNOmnHxspatyBYjZimPYP95mZU0r5wpSUWtdZB?=
 =?us-ascii?Q?Ql2PfdxD/ROEsLuXFetfGmNsFHS8EuDMGcdS9gV6tVK32bVEcVHGPeo8uUz2?=
 =?us-ascii?Q?a2iNsz5WfIF7xtojhuf5BKZGbvdXM4Gtw/BBZnexIFm3zOfUL1+sEhj5xSQS?=
 =?us-ascii?Q?GzGCQqFC/WaL/zuk5UpliNwS57hQCvC4ax0T2PAV8Lx0kuB853xxrHUuXD9B?=
 =?us-ascii?Q?OjivohAC9JN4TX+T1jFMYsu7glsbGulZS7V0U2OwDTsDQpxy5+ke2IY8ZHTQ?=
 =?us-ascii?Q?U5imHOC3qEkqa4FjNk4Du/6Q6GmZBTE76RRgeg2MesciV/CNGkdwHNjDX7W4?=
 =?us-ascii?Q?ukH46NyNe7apZ1vHUQMvrxoYV+pUCZTUTvgZfOb8mjDAXMgVADh7KG31za9/?=
 =?us-ascii?Q?LcfbtL+pRQW2TULfB+9swzqCgonI34KjnLoHWOdpKP8qKi1FdjuyoqKBeEIM?=
 =?us-ascii?Q?lbA9K9pW7lOhUPzIRPrhFQPbkjQae5RrUAqg/qB4rxotS2Kev7m+yI4GxcY7?=
 =?us-ascii?Q?/EqBOwUR1WZfFFQhCjDGUvxttM7RVWTtbfsFNq9ImpGmCegFcmF17V9Olx0B?=
 =?us-ascii?Q?38A3/x3m+akUSHC0z4MMPnprDLg5LQ8+GvUgdsO03Cr+209icg28L8k8St8n?=
 =?us-ascii?Q?J8Y457TYNerQBTt8jUV435j9LiCFnpEAWAetJwYcPOkBpvlK8ipLdB59BBL7?=
 =?us-ascii?Q?fbCDYtPqn5GxxCSL64towtU3g5UKJs5/BX5nG8MJ6en9mbzMYyrjJG7uaAZ9?=
 =?us-ascii?Q?8N4rvbgvRMg3IzYsXvsL4Mhb6da4Jbyn+eMUZNTRNuW71bKHgTXBFJ3owTPj?=
 =?us-ascii?Q?O2LyCzQ3klWcaMZMgedslqF77RH1Xa0JZRemYbPbv1DnMnOntc4zxmZvQmSJ?=
 =?us-ascii?Q?CYKXQlsD9M9Kdj1+16xYu5KhHBDRMM5dIdLRVYej5sZ2Pve/QJMXQK+gxYnL?=
 =?us-ascii?Q?T7KplSROFzsmK7umKnAsxAGlxzKIrReIKCK0beRyEkekcgts?=
X-OriginatorOrg: khadas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83ed5f50-a743-4705-589f-08de5a266203
X-MS-Exchange-CrossTenant-AuthSource: PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 02:23:23.4756
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ud4+dDVzygPIry5aWXj8vmSmmdMBCYjRSK3J9ZuVdKmhWYYfEw5uHmPXZNoTMSns
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB6590
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.04 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[khadas.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258679-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com,vger.kernel.org,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick@khadas.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,khadas.com];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[khadas.com:mid,khadas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 455A36FB5B
X-Rspamd-Action: no action

The Khadas VIM1S board features a white LED connected to the PWM_G
controller (PWM channel 0).

Enable the PWM_G controller and add the pwm-leds node to support
using this LED as a heartbeat indicator.

Signed-off-by: Nick Xie <nick@khadas.com>
---
 .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
index 041291999bc8c..4bae6d46defb5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "meson-s4.dtsi"
+#include <dt-bindings/leds/common.h>
 
 / {
 	model = "Khadas VIM1S";
@@ -43,6 +44,18 @@ emmc_pwrseq: emmc-pwrseq {
 		reset-gpios = <&gpio GPIOB_9 GPIO_ACTIVE_LOW>;
 	};
 
+	pwm-leds {
+		compatible = "pwm-leds";
+
+		led-1 {
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_STATUS;
+			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			pwms = <&pwm_gh 0 30040 0>;
+		};
+	};
+
 	sdio_32k: sdio-32k {
 		compatible = "pwm-clock";
 		#clock-cells = <0>;
@@ -196,6 +209,12 @@ &pwm_ef {
 	pinctrl-names = "default";
 };
 
+&pwm_gh {
+	status = "okay";
+	pinctrl-0 = <&pwm_g_pins1>;
+	pinctrl-names = "default";
+};
+
 &pwm_ij {
 	status = "okay";
 };
-- 
2.34.1


