Return-Path: <devicetree+bounces-264554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EUPHF7Ai2l6aQAAu9opvQ
	(envelope-from <devicetree+bounces-264554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 00:33:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB6E120083
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 00:33:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 35ED3305A231
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 23:33:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AFC832ED34;
	Tue, 10 Feb 2026 23:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="GZXo1c+N"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11021096.outbound.protection.outlook.com [52.101.70.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C8B2DC76F;
	Tue, 10 Feb 2026 23:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770766412; cv=fail; b=Yu4iLIUTIDrLl/lVXhUMseIwLJK68io0IE/dZ6KOEvV1qLOdVBNxjpzHw8GcCZRmAjzrbiXc1RD1o70YwF9hD1ksCOoypaPBBhgP4El+1ueDgkYy1g2N5uhtVJy3luM/WEra/b7Ic46XeRkNuGQM5NloIJqbUswWfyexNQQMxG0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770766412; c=relaxed/simple;
	bh=TS6QKRC/02YKL95aNqE8tvlq7JhagWpkxnq0vcv48SY=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=PbEd07fy3QaXVa8NK7wJLGFzADUV//Nx2xhulEmdoOj4JwIa6pBm6yx/C2+wMkc93Co5Hv36Fmx5DRPAAixptGIesrsmtHQVUTBMX3mK0U53T/80/yhrP7ZfynZdujJP9gYyGYqUaf8tQU8KaywDmrUil5YuRq1vm2A+wC2RQXM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=GZXo1c+N; arc=fail smtp.client-ip=52.101.70.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MMJERc2zclL7rVN+EE3biqoBPiJrFQcca6hCHG5UEc2ArnpCaKE8bhym2AkYR1ENd5102bkoNLY2bT3alLR3rnMypl7vo2eyHKyWWKAS6lBm5ZtLlY9/PP5lKb6cveSg6XyeCPWlxAxqFC+HmhcSdeb6OHaIiITXGH+M/NjkUZ6eiTAYm49Nfaq+dzNSKz2PPvsmL93Wb+LJGx+BJJUKbemrR6JJkBn/2BIcRLFL63fb9UptVoNGY/PuU6Xcjiy/WvjjNmWj2ulEDJuOGNwqM2eOx0U4BjLhTn4Yu7S+ebv9NQfRku5+gEzCcDjff614qhvS23gzq/rX0QTJDl+w3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mYK5Fs2yXJjEH/F4pvghhT3wv6284alxFeNdPkj5wyY=;
 b=cc/q/5LVNPxM/JoqoWfCgpkMEOf45MIKMiO25OjAYxMB5wl+oVUQzwK2SMx0GJThvwDLRjJOoIDn62DEkZD+dAXztjb1Wa8fb6WZyDlRj5pyOxBYiIQZPwTmFRHOxJBqQ44c3Cah8OUuMFcu0JAL+lywMksjdZ4d06/xNKE5uCbQKxIcNQPWpkcWGubslcWuY+yGLqB/uGB0StNDnAdQkKleR2Os5Ldou/2FM935VORZIzZr96u3URVt3TC3LCTpzKcK5/Hvh1yeGl7mFq873zQokSxsJjg5nWaq+oQygE1Nw9Tu/yTycGjMsW+LZ9vt2dTo1t1EPjdD+EGrbLwXPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mYK5Fs2yXJjEH/F4pvghhT3wv6284alxFeNdPkj5wyY=;
 b=GZXo1c+NytkkWhreKG0PoMvKrKGf6I8DseU5JmtorFlIpowBsEBCruKS7oZYu7mYGWtqW5wa6so/PGbEEjS3nxvtnTct8dN8zfIkMKDjN0UWfVSf6Au55KMoqfIVeW/5vVsP7TT9Mq3KJSJPGgomPz1jrNb8RAbd/+GhfpDjqGlo/hfETPdoZ8YNYxTMlMqsP4vfLbbyzpCU5PUDwK7L/IQtx0lfqUzgUuPettY/CkTv8Sz9zEhMLijPVMkfB1w4N+ez/7RUoP/vvwu07qY9+Ap70bdB56cBNQizPgxJodZh6GHS2cskD66KKwbWbwg73B0zAvnSJZ5K6ieOYnpv4g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
 by GV1PR08MB7313.eurprd08.prod.outlook.com (2603:10a6:150:1c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 23:33:25 +0000
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc]) by DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc%4]) with mapi id 15.20.9587.010; Tue, 10 Feb 2026
 23:33:25 +0000
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Subject: [PATCH RESEND v3 0/2] ARM: dts: airoha: en7523: update dts
Date: Wed, 11 Feb 2026 02:33:10 +0300
Message-ID: <20260210233312.199766-1-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MI1P293CA0016.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:3::8)
 To DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR08MB10037:EE_|GV1PR08MB7313:EE_
X-MS-Office365-Filtering-Correlation-Id: b783858a-64e2-400a-1ede-08de68fcc8de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|376014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?UbxD4TZncfxbqWc5fG8MZYCPVIrym8UgqjtvClUb/w/MekrdM2YGZZvNrbT3?=
 =?us-ascii?Q?dBODKTkotMKtEPQarDg8thIhVw9QcOmw40MYK3SEem4FWQarVq41HbHZteM1?=
 =?us-ascii?Q?EegHkycWPGREgOu946B7cS9wzhkv6sVkO7hTlpmJwwOzOmRywvyEdwQ1kjQj?=
 =?us-ascii?Q?yKNWS1KRzPDVPq1NsvRu/EYtq2V4T3tkBu3UvIcAtpjdXVwgwRcZkX6BVxQA?=
 =?us-ascii?Q?wb+5Mwvz5V0dqRF8hnQqEjUx0bt8heMRkIYL7RyqpvkcaFze0lbmyaOFOw8p?=
 =?us-ascii?Q?4SlKsSFIlF2viT7OKSn16iVHIcKAw7QVZ81jIVJVZjGlK0UkdK7b7NAclLeD?=
 =?us-ascii?Q?PyvsYeuXwXYwgOsWaDvi2VWLRPs94lXokjeXDyQlZEQbqVWhD+a8nQZsAnHC?=
 =?us-ascii?Q?uVMp+6pQoBjUY6Ce+iJve2kp5QFfPBZMSrrh/NQY+aYVX35GivTI8d38Lhrf?=
 =?us-ascii?Q?LXBwtQDcSStpFCqDB39pASEZyI+RS6mQz8wloOsrJiUAKH0SNatPrKpNkFfA?=
 =?us-ascii?Q?IozUqcX7CN6c3ocDdz4jCwbV8rB9B00NaZMtUq3/6RLaM9kBRzIQ86tUK3GT?=
 =?us-ascii?Q?ZKxKt9GY/IyKOdKHXn5b8T4wGI3ItdTv7cWbGItJLW9ByyMgGhAlfoTjCpDs?=
 =?us-ascii?Q?pCT1Voa7NV5r2ogXx/0d6br+Vo4dpuZTLH7ahMsTXKPMHsUGs4Q+ndAPEZZ8?=
 =?us-ascii?Q?rEBUpbutmUIIkNQb+aHw9nIRjHlQKmG7MluJiz7NchqiOo+X5hj0+VRHJ9a8?=
 =?us-ascii?Q?lSZvaY+frLR1vU83k52f3sZpld/lCIyrrybsOGgd42Pzxt0baPPUZpFZGYG7?=
 =?us-ascii?Q?GV/KvUYsphPurLeHUVNwsx40+q3l55y2kZaaXXG8kfKmMMthK9MMRtXP7Rcj?=
 =?us-ascii?Q?autPnipxyY+Mn7E4EB4IJlJK7N94pdRWFxPyzNs2Mg6U9icH+kFwYiEZvLNz?=
 =?us-ascii?Q?S8z+SRszzpQRNlcql3ZKxNAxDzicb/l2adS+WLgilGo1LdidhLpEjyrorQ2/?=
 =?us-ascii?Q?sCPCN5Gwj5kzuaRZUqz8zpNHXevB/PkRCiNPTp+2T/e9xouP0FY7lpFwZHct?=
 =?us-ascii?Q?JkWsWw9dvBQWwB/9659qXs6sdppXY0+2fAJkk3zwLWOGSLgg4fgewZ6MSHiE?=
 =?us-ascii?Q?CcbBFK+/ur2VxNSSWShE7kE5K9H9zWWJEI3Fcb/1RgUgjlCfIFMIPSb6Sjt6?=
 =?us-ascii?Q?Q3m+7qiFck90MnIvkp3NkeylrnSI4DpNyJKMleKDIc9H4pYtx67jETOD4yUb?=
 =?us-ascii?Q?kjk3cgdPgEmMiTCl4YemoZjfVC2bEIMAmnrZdOL/Y0Y9CIks+dNagoOiIlwy?=
 =?us-ascii?Q?d+ArkcLVBNx2dYtNu06hFuuN+om0KTXXRSORPQ6XAKy8/PXhvzhuhLeakFcC?=
 =?us-ascii?Q?0SgDQ+QgaArABSN1O/F92i0enqfifJvJYu5/Mn2UUQsRF1OKCptQ41I4GphS?=
 =?us-ascii?Q?Sbz6uWwqwX28WWt2kPD1IBS+XmdZPEMo54LtmKlY2XyV4Xy9yaXvoMyC24cl?=
 =?us-ascii?Q?NPS5aAviFs1UN1S88S7mhaRD5vDX8CupjzkyxX01FW6porLvcBDWsjeapABU?=
 =?us-ascii?Q?njQufP4mxNLnVEnFSk2BBYA5U6fEfSSXBB2o2SGwJOJNZM15anh8SWtWvAFs?=
 =?us-ascii?Q?DyQmG13d9wOZeE42bK5BHCc=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB10037.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(376014)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?XXQDk58CQf5lGuVRCqx1ETqrJH+IryjUTfr0KCeSpBAzJDiWZ7d0969Ax65p?=
 =?us-ascii?Q?pCXbgEh1XzUjfBNUxlxYDdGmWwfdTpBtWEdtl8RTnHzIpl/dbdQi4ZXvyIFp?=
 =?us-ascii?Q?R/Z3rfe4uEv83V72CBt37Hjaat6RKmEpBMiegl57/OIXxQFIh1MeOYyYNupi?=
 =?us-ascii?Q?D3ykBr93SuZSNpIrPyOrNsHVfamrDGpauc1LPT2bY24oY48RAjqEB89DlISS?=
 =?us-ascii?Q?27PKZn68PxvHKnNe36RFWNWUFYcLNVFdnzia5pcembvByOLpKl6kpa4IIaGo?=
 =?us-ascii?Q?86nKhp3jKB1C/PPYFmVR6Kgh66et8n0yfOSUxddIA8aIIKxr5or2SBKcQmMD?=
 =?us-ascii?Q?2vvRa+1AZ/0cLdPnh2yMi5cktNlGoYjzS8ydI+ko5u/2vU+36775koXtXQJz?=
 =?us-ascii?Q?KeXLVjHJwYMoIWDN59ChUKcp9gwfm+fLbhTLxvg+2nCO7+f5LvZqsvhkIklP?=
 =?us-ascii?Q?1simEohilYJLy23BwRyX9USe+HDNFxWsqTy5eTr4pQ77Qny+q31OU+uMnYWE?=
 =?us-ascii?Q?FMBd/QqA6aeVkElm8VmgYyoQp+5NWp6ZqEffHny+fPUKjGkh0TCYxbfLUaQF?=
 =?us-ascii?Q?k0o9htwkFDCvOsEIDDdOTZ5u9Rdv+OUkUl8Jn2Ht+g3Ag5HxlISG4u2SBLlw?=
 =?us-ascii?Q?PkfRjndKyIJPZQy8Baoo7Rgg7pftDQnye7Kxpr18J47H9UhSyMFXntZjrwdt?=
 =?us-ascii?Q?fm6PvcutfRDmqTIGWOAYabZyqk01kU7WSSfhyb6hOA6QjsAes7dtdbXofhui?=
 =?us-ascii?Q?piQvKfUXzKmNNxfx65+YjJ/+MHyxbmJLGMV0zYmdiFBJKoP0JfFu94rys3om?=
 =?us-ascii?Q?6ms5n3ZEWUzBpTiEzEEZv8rSVTkfknW13nk3efZFGemkGiHH6Oh0Mju3gn9u?=
 =?us-ascii?Q?WBqLknC/Y2Kq3n9J2dGfzGz78tZFVxryaA5jGYb2uHdX46V+TiSdpO55uima?=
 =?us-ascii?Q?O2wDMDVI6eo60Vyyi4JbxtTHFYcgTVB2LWZ30f/TwulxkFxo52qWCQgSvV3T?=
 =?us-ascii?Q?narULLlZXfDnHfZavh/kMQdmTFu1wdL2YYyW2l0+bm8hkA0qzDgtwwFKf8nd?=
 =?us-ascii?Q?INR20eCvBF16OTO2eCBA7Io3SzwpJoetXFJjFtxXGsVQmCsMocvqQ6m7fjbV?=
 =?us-ascii?Q?izCDsJCS0jzOa374oSd892Ljwt4qwwzF9RAloNNSq3drkmBQwC072+oonlSu?=
 =?us-ascii?Q?YTn0HHp+DmQCLK9PXAt9gkyxL2r6fakWU6WQ0pP7FIPNt/qpvnT/CWVwO8Wx?=
 =?us-ascii?Q?wBYNEqdQHiHaTNrGr9Z1TulHrgtov1VBe0ktESkuiDiOjBLKCo8BUYs1NgIY?=
 =?us-ascii?Q?iPdDk34SVHN5ashXeT8p0RovtbbHFhZqZJN69TUe1LWLFU+zWFzE172z0KJI?=
 =?us-ascii?Q?ZBr6dUCgn7XXRWf4WX8Pw2Kslazvf3nBNpAJghg1DF4Ilc3KgBUXHrebj5b0?=
 =?us-ascii?Q?Q45sbzr3Uu3RPtna/96hAI9MjNR1Zmbgcmonl9pOC6HB4VCd6dh26HiwjfRG?=
 =?us-ascii?Q?CGuT7U+b1UyoPx2KtsSFEGSVnW6H8pgHdGmGxK65GamU/MCgzn/X3ZwAB1L/?=
 =?us-ascii?Q?PdBDLDiskk7k0bw6fS7al65+XiJ2Vri6S0q97lakpYe2iMoMoazsojli8EAK?=
 =?us-ascii?Q?oz9QevxAEJrJDcMJ5/Z/P606iEPLuCN+kEUNbtKOOO/f2mHMLSE2jcDIKJFW?=
 =?us-ascii?Q?cCbkoDb43CHhoCaL2XBCY1irvvzX9b0e4eIU1d5xfOdPuml72CNEmOx5k+RM?=
 =?us-ascii?Q?eGigCGka/DbKye2/2HMEldTK2fKVZ4A=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: b783858a-64e2-400a-1ede-08de68fcc8de
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB10037.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 23:33:24.8983
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ntZ/aM2FrcE3RXFApai3Vg5LBhezzTbcLhPB1v9mTiIe9PusYjdg80DVDLE/JY1h73aruO7rg01qorlz1P+M/vqeWNG6HOtN4lY6lP7meAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7313
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[iopsys.eu,reject];
	R_DKIM_ALLOW(-0.20)[iopsys.eu:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264554-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhail.kshevetskiy@iopsys.eu,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[iopsys.eu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0CB6E120083
X-Rspamd-Action: no action

These two patches adds en7523 support for:
 * spinand flashes support
 * reset controller support

Changes v2:
 * update cover letter
 * update patches description a bit

Changes v3:
 * update cover letter

Mikhail Kshevetskiy (2):
  ARM: dts: airoha: en7523: add node to support spinand flashes
  ARM: dts: airoha: en7523: add reset-controller support

 arch/arm/boot/dts/airoha/en7523.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

-- 
2.51.0


