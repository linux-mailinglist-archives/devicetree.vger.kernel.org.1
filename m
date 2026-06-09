Return-Path: <devicetree+bounces-308631-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IAdaLhuLJ2r+ygIAu9opvQ
	(envelope-from <devicetree+bounces-308631-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:40:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6F165C166
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 05:40:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=pMXw3OjB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308631-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308631-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A733D300517C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 03:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FAD938331F;
	Tue,  9 Jun 2026 03:36:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013026.outbound.protection.outlook.com [40.107.159.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7F7348C5D;
	Tue,  9 Jun 2026 03:36:29 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780976192; cv=fail; b=lU3c2eyD4KTpkv0fIC9hjI9KB018jNNv/RCVZdiACHaao4YYv7ABPncaGvW3g/EYKKsoTatGzv6nkhHSewAsZDFu1wa1dB9Wl8C/qwvSaf/aAbuM2yESVfw5ISuoc4NU/Z1+9BDJrltLY2gTPu1vc1btrjimOm18L0Znk5q7mSg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780976192; c=relaxed/simple;
	bh=WBHe2/FD+iKsNqb5w2nnMZ3dOExKHnWQ5LEhO3mSXFU=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=kEg0QbiM9zhlp47PkMY7eXWwnm9zDW/IquWM516tPw9miicenlNeSo10fFf+EYYK1t0nk7AW1qh9M8f83Fy6cYb9wKVdUiPC4rhs7R8x27SwWjHQKJsYRzlZgP1cnIl+3uxR12wgFnpRJ/VNfu6JnzHWDagjS4UgXUCvvnzvIP8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=pMXw3OjB; arc=fail smtp.client-ip=40.107.159.26
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vjAqf3AU4AMyd3S4tPMCrTemWWsmR+Gfap1geP7M3C+T/XJUGYikNomxlXTapwENhKXleyHhJcvPkAuHJbODjDb08Kr14TXvExpFwwQwYJ5aczlgtUkjFhYC24GW0mgI8US8jJxIPcswjy0YoUw5JfamxVQpfqTSVQ9O1rqUqeCp4kkzBTOznpo4trJS11DwqFfJJ9avWXPFBwHJqNmmaS13q39Zin+FV1cb1h+6haS7yYIVLOhIuIJ8BQYCvBLRXUi4NAA9hEsKanjDIDc7EJPTIHZZn/ZPab9A4xxlYsFeyu4MteM4IyNMFfA+EF/cvVtfqroZ66YivYHe1WCyBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sIFqq7XmjYhG70Z4AGLyKCakI/qet9fqxCInuG1D3ko=;
 b=xx+BNEk2XXGMsKdRoaQ9cHJuUzl74idJlb2UNpk3+QI7KkNIDqk7uJMmSYs5YAr9bXmTQMuMcGtequDPTFEcKSZiJIvS0t4Lj9tWqjdANEVSUvDXTt+naPRJ4Xzol+n6aT/R2nm+XTGzWOy73U9jshic6ymv8lP7DZqJhLVCZfYmT4YIBOrKro2eLIlfoq4YkdulbmZSQ2TyTH+TSwm5qyNMuQOzBzkF90ERi4f1AzwhFL1BEGKcCgjfaO4ZH4vySBJTfADv791b5qwZuov3I4/Vfvw/MGwSzTfj/Ap917DTj4LXW6YrfaQ/oryGeQtGLKOgMCoUyI2aIumOLQ3fVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sIFqq7XmjYhG70Z4AGLyKCakI/qet9fqxCInuG1D3ko=;
 b=pMXw3OjBt9U8NzuU2iOBIYvFtRZicM8ISq0rpEkJdEL8ytexQEMv1NpdtN924jxaaHOo7VWUDUKrjKF1a2jz3mI5cdfUz1gf8xGw5ix2nm+wK10QplR6rYQp3HwHCvL5oIsTKq39otcaOUn1dpEAd9+3p73HjRRhJA4mkuY/8zZoHLgVLtOXTyIQQycE72JmcUncQQqGB7zchw+DDtS+/5Rs0/IPT1xgBh3sHnp/ajGyZ9QhlYul0htygf6rCImqFH+L4wibJOb+tdwJcxhOE02fqOxWFGLDQ6A7N/x4knC/7RFQ9L29WJ65Ux+S1Tfz8np9ruBslO6d5J93QHRI7Q==
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com (2603:10a6:800:296::7)
 by VI0PR04MB10543.eurprd04.prod.outlook.com (2603:10a6:800:25a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Tue, 9 Jun 2026
 03:36:23 +0000
Received: from VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be]) by VI2PR04MB11276.eurprd04.prod.outlook.com
 ([fe80::60d7:a8e5:eb88:9be%5]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 03:36:23 +0000
From: "Sherry Sun (OSS)" <sherry.sun@oss.nxp.com>
To: mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	brgl@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	Frank.Li@nxp.com,
	hongxing.zhu@nxp.com
Cc: imx@lists.linux.dev,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	sherry.sun@nxp.com
Subject: [PATCH 0/2] power: sequencing: pcie-m2: Add 3.3Vaux supply support
Date: Tue,  9 Jun 2026 11:38:37 +0800
Message-ID: <20260609033840.2006078-1-sherry.sun@oss.nxp.com>
X-Mailer: git-send-email 2.50.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA5PR01CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::11) To VI2PR04MB11276.eurprd04.prod.outlook.com
 (2603:10a6:800:296::7)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI2PR04MB11276:EE_|VI0PR04MB10543:EE_
X-MS-Office365-Filtering-Correlation-Id: 998b5561-94b6-4077-3e6a-08dec5d8471d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|7416014|366016|19092799006|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info:
	3sfQtQCDlDkDqRPnw1YJPyhxd3z3a9zi/0gvVJJbDL8+Cm+sbaSl3zTyhNpYJzE275rExV3nrjHFxy9fDhaXaZatIMW6c3AwpxqlUIV8cgyu3g6Ew0Oz6xKmSaTr5d5FInojpPEvWXpCVsWWpkUZ0zaAJBE0WPMOA0+QRU/NE3Os1Qxy3OrhToogaIC2xSScC5QMhoPMJvvhi9rf+pkKEMEO8lDaVjRNHjcX9tmrjhjMx9Pf7xzprtSt+ifY6XDdF+1eXiRzdc69j9zsXeA0nk1J7yFTt8YAoZ9GPu7uhjLFcreq7VkV3BxRjBPW+cARJ9X54e6FoIn3kmxHWe4VXy+OLYO6gNJOsfd9Hdj52O0DBPnsd6SOosBrG5JKiT5+C+2wEO0AJRYxD7gvG+vIwQaRtgrnm3hV8nmr8jx1gZFThWxVzkhlXOaKUAC2Y7K+DC2cXL84S3d5faWXe07LJN0NLDrRwKsMMfHzxXJtCzAqTOYnuCUdyLewsmdYrIKUlyOqX+oLi4N4PLaA8a/2IBrsoQfFHLDkiMnXLVEaI4roOPi8yBTL3MiIRKVzpxl/JI9lbifc9q02q6Jnzm+DzwZ7h6aCHuXIpYWuvHieYeaFsBOYb5t8yYJsdLRZMEO/oWktRbL+Vb/Mhx46zqCwwQG4zdcX5+DO26nmNRVf+Fm2hrv2IuicBH5cn4NTPgL0
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI2PR04MB11276.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(7416014)(366016)(19092799006)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?d225JsLGQvewn34WZocnVd23bYyB2YBQn3WwriZJttHWwylOBzLbTCFJwYV8?=
 =?us-ascii?Q?+30wPt5tDFmhoxFtMsFI6PrEozpNnwOwjXWZipVtVywLfgz4YHWOPnlfN9pP?=
 =?us-ascii?Q?oE61rsyn4bKc2ZCR4W6fammL3p/BQMD97K9TFB9DjfG/KVpQ0/P9993ZijX+?=
 =?us-ascii?Q?OLXA8+nTviODHRG8HQY+IMsBNI65VRtbkwDxes2/4cq77fLQd4AVQPzi5KSl?=
 =?us-ascii?Q?caOw29zSrWgusQRiSoYrFSz9XzGfSze3oqd8BIXszO5qw4wvZeXRk9XvEdNk?=
 =?us-ascii?Q?fm46sCiYoEwD9eYi1hgaALcrhnPNvb1tsR73R/PG4txnc2Oj7XzmyRpHKBll?=
 =?us-ascii?Q?Uehf6kaNEbZyeO2MXTdVHAncNlLfuj+P4xeEIZyfQ2o3vBZqRBwUdpuwfo0t?=
 =?us-ascii?Q?QlCzmFySzz9y1panDIf/8EfhlxPDOMQ/3ts+QzToIah92hvvEI+/hZoeHbNV?=
 =?us-ascii?Q?qN/D8I5HYw/t5F5sX2VeTAPVb7n03CzqVgpVMX8+HDbdSwD0CxEWea8NJI7v?=
 =?us-ascii?Q?DE8WGzIjJlPYYP4FU+z+I7wuGpLfdzPiyW5mUwt+i1fGQNFAdrrpfs3oeeHX?=
 =?us-ascii?Q?z9IAA4VeFqlH6Y30EobgRJvidwFykqkYTrqGvp0ru9+SBsh7Ce99qy0rWtTr?=
 =?us-ascii?Q?/f2t9gimH5NQ/ngnrflIF3ZrAsRQUCZDFwz8pXkzrWmeeAx6FB0HEZcXdahr?=
 =?us-ascii?Q?bEbSbB9sAxYXrJB09Z4K2KgLDxa/vMLGAbB5MFUXw864qJ3fEFYsfL71alDU?=
 =?us-ascii?Q?0rSTq8W7rI6NT6hJKHDPsQlLlZHMKjGHy7T9v2UGCV31zJDN2IWNe+vMDzdD?=
 =?us-ascii?Q?12xqFQKMivs5TT6SJkB2csVWHLi8KLv7XPmxaCFye1HIzji93q8P79lDdiia?=
 =?us-ascii?Q?asqLRYbjoQ1TMR5pemKMDNbDtJJ+ZBQx7hQdp2i+8ukveDPEBevviUxNX2+4?=
 =?us-ascii?Q?RlIA543+bGzwDXTqrygfOGTi1sinEraNvQe8wwUdjeWPsxP3vA7TsRgPa1V5?=
 =?us-ascii?Q?Gmbwi5AFdY53cnmYR5gkeO8K9exHDCLJ1ziPeHRBS9TnZKPCWbdx6WzmiX2v?=
 =?us-ascii?Q?hzZsTOQbs+cJ/CslFLeGQe5SNlwd1xoBIPnUwktIUxJcMxel5bwx+PD9ICHp?=
 =?us-ascii?Q?OzFw7BfwyqNsmGB9MXXuuUcFo0yqUVkLgmtVDT4aTZ1j6S3qH0u84J14CW7f?=
 =?us-ascii?Q?YJnjGR5n8sktY3GLRUQ8r/T3HYUjZK0WMnK5gTB2Xq0hXjfhuPRrXl5B83D9?=
 =?us-ascii?Q?uSwu/RXUbKKYYzxByVk1Nzpa7UnqmNpbTvlrESxcXQqRTsxcyyHfnBcUI6az?=
 =?us-ascii?Q?DnWEcqMVf1o9BTyc84x2m17d/dv3DnJFcOUBaLQHcceT6osWyz543QVj1rsD?=
 =?us-ascii?Q?scHUcvL/22EACszLF8FRf+oG107q2dCJzD76waWXLAc/gQ94MANFPkVgJNWi?=
 =?us-ascii?Q?DejfBXeRQ3O4iz2eyKgJ/MjERINcu07N7pUfWuWhXXDJB37oAGqZzVpJ23XS?=
 =?us-ascii?Q?kvoOJBGGIakbJW17f7Tsk9a1aB7Ozj2BRaCwXRwdDWXDlA31YjdYOzSwbeqE?=
 =?us-ascii?Q?1bc4F+s8MVGRzuxfpKKN1dXhJ6huzMEbKH/+0R0k7O9iC/Y7i/aZwXzrXeFq?=
 =?us-ascii?Q?OOMRbT+ERsRXyPT3qMvEVZv7a8GG7yp08vLaH0YSmB88HrWP9gYoewGiYGfS?=
 =?us-ascii?Q?B8aQcIpjg6s7zu4yI7cHPsPf+GeTMeGAyJkvjUKVPbH11wPNZLdUvthaZuVL?=
 =?us-ascii?Q?oudh3Is9so0mNi9FzxQ7OPljqwnBOeVNRMzHTgnVekOXHL8BqsL0?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 998b5561-94b6-4077-3e6a-08dec5d8471d
X-MS-Exchange-CrossTenant-AuthSource: VI2PR04MB11276.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2026 03:36:23.3813
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X8PMijtk4hryBHFGli1qAx9NpSoLUufPxjY3UdfILfGL5l/gZqEMHPT+A2oiW+w0hmgEQgPm7Waw0nRVPFigweHTygOxuVIfRpw34PS24brEUemJhq/0rhCQOEZo34ja
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10543
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-308631-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nxp.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mani@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brgl@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:Frank.Li@nxp.com,m:hongxing.zhu@nxp.com,m:imx@lists.linux.dev,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-pm@vger.kernel.org,m:sherry.sun@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@oss.nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,nxp.com:email,oss.nxp.com:mid,oss.nxp.com:from_mime,vger.kernel.org:from_smtp,NXP1.onmicrosoft.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C6F165C166

From: Sherry Sun <sherry.sun@nxp.com>

3.3Vaux supply has different power lifecycle requirements compared to other
supplies like vpcie3v3. It must remain enabled during system suspend to
support PCIe L2 link state and wake-up mechanisms. This is a requirement
for devices that need to maintain PCIe link presence and support remote
wakeup while the system is suspended.

This patchset adds support for the 3.3Vaux supply by:

  1. Extending the PCIe M.2 E-key connector DT binding to include the
     optional vpcie3v3aux-supply property.

  2. Updating the PCIe M.2 power sequencing driver to handle vpcie3v3aux
     separately from other supplies, keeping it enabled across system
     suspend/resume cycles when present.

This has been tested on i.MX95 & i.MX943 EVK board with a NXP Wi-Fi/BT M.2
AW693 module that requires 3.3Vaux to remain active during suspend for
wake-up support.

Sherry Sun (2):
  dt-bindings: connector: pcie-m2-e: Add 3.3Vaux supply support
  power: sequencing: pcie-m2: Add 3.3Vaux supply support

 .../connector/pcie-m2-e-connector.yaml        |  3 ++
 drivers/power/sequencing/pwrseq-pcie-m2.c     | 42 ++++++++++++++++++-
 2 files changed, 44 insertions(+), 1 deletion(-)

-- 
2.50.1


