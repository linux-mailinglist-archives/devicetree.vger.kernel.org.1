Return-Path: <devicetree+bounces-317401-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XtPzI6NdQ2qYXQoAu9opvQ
	(envelope-from <devicetree+bounces-317401-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:09:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8127B6E09FA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 08:09:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=sbGxZ7wS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317401-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-317401-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 71771300B80E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 06:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47CA73033E1;
	Tue, 30 Jun 2026 06:05:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013054.outbound.protection.outlook.com [40.107.159.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D337F31F9AE;
	Tue, 30 Jun 2026 06:05:41 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782799543; cv=fail; b=UMTCdtZlSp/qDyJmWJMRI7T5MovBfkAw6C864XRIxoaxHohco3BamZ6oqEKv9GrmvO9eQgKwyApvOELpT+84/zI5QMEvOf3IDr7M6E5TDLJALbzliIzfE+pW0Gi3Kp61SF5Ze15JyPfn0ijJIYHNuXXZS2xS1T6ujrZu105mW78=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782799543; c=relaxed/simple;
	bh=Q6oDSdAD74Pgu3oqUoo+mPxJQ3MQG1Hnw3kAqB1flNo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gCBePOwXJkvEWEkmhKSFi3rFQxu+TnQSgIqbhKG08uRAqZmboeptWJoBrLxJFq+wJ/4ZG7maTUP1GdWyvWw7KbYFWGPIi7sfTW9WYd06NM/Cq7yZyUpH6VoTGktRFUyfeyW2h0ABKgv4XM8O9JeferAL3FsyOWpCgO58yNzpM+0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=sbGxZ7wS; arc=fail smtp.client-ip=40.107.159.54
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vd1s+fgcoeN3uM4fbrVuNmy0yvPvXM0fMc08/FkpbXa8ZgF2hVfhhDDJNGT2jCc2ClLpBBT1zqEWQ3B9H12p0L9KrJ1ZChvlTK+dmf8vZ3JZfjLZ/0Z9Ap0dB99uySLX8kQz/wELLDUd6shb8WuzhHFQeeOTRY9D5SdpSLz+wsLkQSnwJAZiuVtTvYCO3mb6lZtDvXPSdn7METNeu5KpkIYBtYxOMfvfxauIT9gyi57yP4lgWh1uSrXvwwuxskkyt9vW1UvtAZ7EWhrcv2NSQC1s/aWESKGzOdUObzgJ5pW34WF0xJz4S2vM252tX0J4jCZjFbLmcgMfq6h0xhp4qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fa2fUnWoEPcu1H1RxdwNHp6nWsmIA/l2vFZnSknVJHw=;
 b=lCikCbI83CIkvp0Q2ltrjejmzYkJnZ34qKaxMj67tQaehsyblekFWFfBAIxAQgMAqVhKctPIfTEsBR6HUf9x63v7Hguf4qGvlb3uLvfc5VbHWOzNW1r3TDATuEJ5OehKCIGNsr8186tKJuKbvt/CafU5SMRVsItxX9GcRQ8J2INbtzWkxWCI773i1+Vt2Pn5Mg09a57RnDztRh5/vu93V0roomLBmcbeTREYzG1cHMb4VT4D5lwpjD8VHPTNKBbExTxYFabIYqi8fbsMRak568kd4l7grGm3I1IUVYLWbuEtHtHd5IuBQgpJ+eg9XtkDlTHwZ4cHzUN2TgiwG8Fy6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fa2fUnWoEPcu1H1RxdwNHp6nWsmIA/l2vFZnSknVJHw=;
 b=sbGxZ7wSA3LIFCL6EWRWYwG88FdZYgczOsZhd+V+eeI7hGiQAusz1cQCW4gM+rgQsv4+eSO77hCCXOd0pXx2dsxvarhq8i/dDiH1HbVKzPBl5xohLv9yx5bOEUs83WyZ2WqtSGIVCCFSBKV7AGi6fyjUQutGTYALomcOhuWBNn1zXOxP5m7rTdCV9n2MkL7o3ov4VYjBHDI/AZDoAMQ42vLZFNcrrY52PCDJx77cbOLxNMjo9+SIBfG34RV9z/5gyrvP1DB1tD+Bd5unmIA8Abl++m8H/GcwtInIloW3m2VnTRSJEBQ1Q7foCcsXmOD7YlKqSNShWBvYN+i88aeX6g==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by AM9PR04MB8748.eurprd04.prod.outlook.com (2603:10a6:20b:409::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 06:05:39 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 06:05:39 +0000
From: "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	hongxing.zhu@nxp.com,
	l.stach@pengutronix.de
Cc: imx@lists.linux.dev,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	sherry.sun@nxp.com
Subject: [PATCH V4 7/7] arm64: dts: imx95: Move power supply properties to Root Port node
Date: Tue, 30 Jun 2026 14:07:10 +0800
Message-ID: <20260630060710.3294811-8-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260630060710.3294811-1-sherry.sun@oss.nxp.com>
References: <20260630060710.3294811-1-sherry.sun@oss.nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA5P287CA0068.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::16) To VI2PR04MB11276.eurprd04.prod.outlook.com
 (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|AM9PR04MB8748:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ae6aa50-92ff-4a31-b3c5-08ded66d9bd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|23010399003|366016|376014|7416014|1800799024|19092799006|22082099003|18002099003|56012099006|11063799006|921020;
X-Microsoft-Antispam-Message-Info:
	+ej5nNTxUf0nATGzgLQkz/mDE2pav/F3MYTt78n7NopGTTlYhaJd9DrSH9aUArMLbkt1ylWhm19Mk8fNAQTGe2la41iorFyFF33nkLRrAUil5oQ4DQ/G+fQ80zt8FZ+mzsUigPSQWHFJpaov+zh0Noorzm7O2KfMIFVlklffy9fIYTKJ+zeQAjcEfCir1GuvpNJsLSIN+VjcAxiSNjDoOQTojHUXqfwZpuBf8wBwxPo5Ac66uiMxsZd9N+31I+JqcHtLbBzzhBAl/w1DCuOPq5P38Jv+qWzD0zeMxPGqyg55pF6zqmdK/4Cn0iUDAD1NH4s7b8Leoql4Dj0nHW5WVj0BzMC0NVcWwOZi20KJCkHyk0Tmgnr0LNL8KHA3XqGgvDz42L9FQvREy6+2lof4wRkBD5HJS6m/j2tCq0mWkZhMoYGH0wj09HujErmOQw+kpYSQFPWVyGRtkjoIbH/Q9rca5skzbk1FPfCyRRQJbrXaOI17uWmupE9JKhLrZxtVQ/NSmDcPvu9YZksvbEe18Y4QXwMQUjHibGJT/O2pkh8uE9b3/825Vbokf9XNZq4Vlri9Y2XK9sCYoD68HCmwNLLtywRCTCgpB0KVGVRJg2gMr23mLOcQ+9lEx+atN3Z4FljYXZf978Xb8TkZ5PwLOqJMsHx68L2OPSxZcc0PNkj/dqXwETbMijRqUqOaWksiqzj9VahFMlLYy5Tr6yQvSA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(366016)(376014)(7416014)(1800799024)(19092799006)(22082099003)(18002099003)(56012099006)(11063799006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Qg2r6fP2nGr1WXuvAYN6CgcaGWGuBoKkpK9VEk0mz4bEz7o9cY0cUbmjtn0n?=
 =?us-ascii?Q?nA5nWeUXSZG45CmMAfKr8mCcR/DUA0w+9/+SG4IgJNWVmf+ct8ahZAIe4omv?=
 =?us-ascii?Q?Pw0d90pD3j0wCPZJyF8SBt7Q5gXuU2n2FWBiiVtjXL+5eJliZKeFnJAA09bM?=
 =?us-ascii?Q?ppZePsaIO0UU9ojQjlGY7Wjomqok2CM44h3iGXLB75a9ZENsR2vv5OZAs9vQ?=
 =?us-ascii?Q?2EHQiHFBYhEJ+OKZIuvY6b5BA07YePVyShQsYdFvh+fthNPRZKc8NDJO3e27?=
 =?us-ascii?Q?bBQkfh2gKrVPWSVPhCT5TZk54kcFrEQt76EA0Z9Xz2W4LAW3UU5qHFcvX8YZ?=
 =?us-ascii?Q?0K76WtcE1hYZmPhPTUBlhmR5dTysxNVq4p/TcUkc5xNUumNzpuydnZFupe9y?=
 =?us-ascii?Q?3EaBXemTX0+8HN63a9WULR8c4z5XU8SxsVoGOuM1qDXzrtjzjRpwpRlmXmFL?=
 =?us-ascii?Q?2Ouw6AaVKLEDpUDST8Y1SfAv3HqnzX609ZnrvOfbyJhVOe9/PYvHh6Z4f/u4?=
 =?us-ascii?Q?3fXGvAcdcQGqIAppR6jEseTY9/psx6Vd1UcQsvGi/lLXI3WyaL2r3F5InbG8?=
 =?us-ascii?Q?VDAwSucUy12mXzdqTL+ddO+yYAFUn2oTNutSMsU5PRUiHEmLAmSEpV3aussw?=
 =?us-ascii?Q?L5H5KnFMsxri4nMBEk4OAZbIyE03/j/TErNIFI4yl1PL02Md+8F1a4O/8mKQ?=
 =?us-ascii?Q?s/Bwd+DP1W058mpgDbHhbBLdpzBXarCcUROFHn7hoPrlOphEf9gXQKMKvCRC?=
 =?us-ascii?Q?bsYiROOzDjyvPMv9T7Lg3T7CXBt4EnvASlXjYP4w4Z7MjOoJYZeN62tTLlFI?=
 =?us-ascii?Q?mJ43WkyMSXvu8gXnqsgwYFMMtkmx7Z+GyiYEDVzpqZS7Nt9pwzNxjJISoyKp?=
 =?us-ascii?Q?wYMRDo+UBwRO7eK1ifI1Qr3vC0s1Nd/deuOijYzf5Z+NNrNqmHG7M6TqwH5E?=
 =?us-ascii?Q?S98fD/S3/HpRlJaryvEtD0fS4n39+uquY8Ah/9HmgMqRKPXSVirmktMjc3md?=
 =?us-ascii?Q?BCnDnwBUShTTIELsDO6f97I41nUGQWVWi/8bak585qAkjZEVP0e+gBk6tPSb?=
 =?us-ascii?Q?7VcKOzUPnF2CSd8/T+wqOxev9qIZL/LJbm5bzvLvUR/MZhVlFIHkbVqGjPqA?=
 =?us-ascii?Q?4RoUt3btzuDUKXBcaCJSrsStj+Ld7mH6VdxhvOIPX1/9pzskdegIlLUc0vmg?=
 =?us-ascii?Q?TmxPNqQ+F+3Sew9RYMRuY0ODMFz3M49l3f22Jwl0XVoBsHQgoOMsS64tHb0G?=
 =?us-ascii?Q?hVhUI/m7vbPGXPHPmwQwbiTb4GhOYmMluUACJkYJJTC+disYaoh3DFvlSqXf?=
 =?us-ascii?Q?ntbkACIOJjC5P2iw+R8MeIf7mN9+vPqZr4ex//IyB53wXfkCYKdssxl2sWC/?=
 =?us-ascii?Q?Btv6QMUM/ECSjVnTWzuwwFcvTWX7cQUraOt5RZ7CPNqfW+CzlUIoAKXykkUl?=
 =?us-ascii?Q?Hjb/e0Hnrw8ThXicydVyLTbjBOVX+spKlmyREMbZKKIDzXy/Od2e1TgEpqlP?=
 =?us-ascii?Q?2tuo6z96wAfuIhW/iM64gyRaTX7/F7ewqYMVydi8D3kl2JGPoD85hGC/cxGu?=
 =?us-ascii?Q?SfxrlsVlYcwIYhhlLkDUBBFF/E0GFnT8LbMldnlm08KBlM26lvC6bXAvf87M?=
 =?us-ascii?Q?VWJEP++72FhrNTW1aJ842EFgsTCaV0thzvK05nNCn9ROPiNVQMmE/iu/lrwr?=
 =?us-ascii?Q?lkg0se7EEl+P6zlY1oFCqJe6D1d4WYzdrpjONmCxXC34Pq5o6gy/lfbkcI6r?=
 =?us-ascii?Q?K+ru27TynmQTJiWi/h87uQxT5uEBJpvXmvDFRtVCf7nwxKEPYLkW?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ae6aa50-92ff-4a31-b3c5-08ded66d9bd5
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 06:05:38.9995
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QxE2ihSrz93fXT2g/6V4UEenoGJWBvNvHxoqQsQn4+IWlybhjB/Jn8Otc7+Vzhk69FzanQJFgEpiR3RftEU/VFCnewD8ZoSSU5Nvkvo1guXkxGPSwKeUxdh6y5ncQ0Hn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8748
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317401-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:bhelgaas@google.com,m:hongxing.zhu@nxp.com,m:l.stach@pengutronix.de,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:sherry.sun@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[NXP1.onmicrosoft.com:dkim,vger.kernel.org:from_smtp,nxp.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.nxp.com:mid,oss.nxp.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8127B6E09FA

From: Sherry Sun <sherry.sun@nxp.com>

Move the power supply properties from the PCIe controller nodes to the
Root Port child nodes to support the new PCI pwrctrl framework.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts | 4 ++--
 arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
index 7d820a0f80b2..6aedcbbe915a 100644
--- a/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
@@ -555,8 +555,6 @@ &pcie0 {
 	pinctrl-names = "default";
 	/* This property is deprecated, use reset-gpios from the Root Port node. */
 	reset-gpio = <&gpio5 13 GPIO_ACTIVE_LOW>;
-	vpcie-supply = <&reg_m2_pwr>;
-	vpcie3v3aux-supply = <&reg_m2_pwr>;
 	supports-clkreq;
 	status = "disabled";
 };
@@ -570,6 +568,8 @@ &pcie0_ep {
 
 &pcie0_port0 {
 	reset-gpios = <&gpio5 13 GPIO_ACTIVE_LOW>;
+	vpcie3v3-supply = <&reg_m2_pwr>;
+	vpcie3v3aux-supply = <&reg_m2_pwr>;
 };
 
 &sai1 {
diff --git a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
index 2e463bc7c601..340ab0253ec2 100644
--- a/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx95-19x19-evk.dts
@@ -542,8 +542,6 @@ &pcie0 {
 	pinctrl-names = "default";
 	/* This property is deprecated, use reset-gpios from the Root Port node. */
 	reset-gpio = <&i2c7_pcal6524 5 GPIO_ACTIVE_LOW>;
-	vpcie-supply = <&reg_pcie0>;
-	vpcie3v3aux-supply = <&reg_pcie0>;
 	supports-clkreq;
 	status = "okay";
 };
@@ -557,6 +555,8 @@ &pcie0_ep {
 
 &pcie0_port0 {
 	reset-gpios = <&i2c7_pcal6524 5 GPIO_ACTIVE_LOW>;
+	vpcie3v3-supply = <&reg_pcie0>;
+	vpcie3v3aux-supply = <&reg_pcie0>;
 };
 
 &pcie1 {
@@ -564,8 +564,6 @@ &pcie1 {
 	pinctrl-names = "default";
 	/* This property is deprecated, use reset-gpios from the Root Port node. */
 	reset-gpio = <&i2c7_pcal6524 16 GPIO_ACTIVE_LOW>;
-	vpcie-supply = <&reg_slot_pwr>;
-	vpcie3v3aux-supply = <&reg_slot_pwr>;
 	status = "okay";
 };
 
@@ -578,6 +576,8 @@ &pcie1_ep {
 
 &pcie1_port0 {
 	reset-gpios = <&i2c7_pcal6524 16 GPIO_ACTIVE_LOW>;
+	vpcie3v3-supply = <&reg_slot_pwr>;
+	vpcie3v3aux-supply = <&reg_slot_pwr>;
 };
 
 &sai1 {
-- 
2.50.1


