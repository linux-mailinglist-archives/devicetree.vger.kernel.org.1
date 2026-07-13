Return-Path: <devicetree+bounces-325282-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QsioE42jVGqCogMAu9opvQ
	(envelope-from <devicetree+bounces-325282-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:36:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A025A748C58
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:36:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=mt.com header.s=selector2 header.b=iEtnmm+p;
	dmarc=pass (policy=reject) header.from=mt.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325282-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325282-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA5173048A0E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 08:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DCA73AE707;
	Mon, 13 Jul 2026 08:26:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011054.outbound.protection.outlook.com [52.101.65.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3063AEF3B;
	Mon, 13 Jul 2026 08:26:49 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783931212; cv=fail; b=tQ7oNnZ/KtvLpzfd+MkG6X0DWtbPMbruGiKRVBjTWhexrW1tjHqH87hEYPInB2GpN9Zduis1MBf1a/VwwNUDUY8/SDmKVZKg/mkBqCeXArxjmRQFXq3dPlPECFKNfoaWul/9WKwBitx6n9T1Yin5Gel6sjfjwEiLfz/6etwPrVw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783931212; c=relaxed/simple;
	bh=aspiDVWL4GH1uw3O0EeNy5ARwTlCJCos7yfn6i6C3zI=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=hJOhXj5lEYf/N7xLmDvf95aZQm3f+Vudx8CTXqZ95yfeTthVNfuu71iCDukZKoGiCZFFx0yud4yCyU57zOsqmg9Q4iSm3cWvLANGATjIqzBijrNos2dFL+YnroTzC3BeTN42TVzL+x9RClkoOgdWIu8F9Gt1jxKdJnKeJEsC1KQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=mt.com; spf=fail smtp.mailfrom=mt.com; dkim=pass (2048-bit key) header.d=mt.com header.i=@mt.com header.b=iEtnmm+p; arc=fail smtp.client-ip=52.101.65.54
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZDVp/ZWbUpzkSzCGK0JoZmCg9g/87ddYmin7o1kWRSLFYhGupePT4kV3pK+C7uPJrFw3NkT3RPnDWPFBztyTZ0B5rjp7zyt4vWwS+wj/A2SKjZDAoqNpyxD/D4Ygg4E+6j+0ZoqMZ9ks59L3xQaj7Ufl6ICchqt+QHnz2rNr0KMO3QG+aQvAxRjQxnD5a1jy8gmOHE+7+U49kTAuMU7pvS8+lvgd+gkDjG/BUeghjCzru5HzSK+rL4+oDi+euxVkVt/wDoALG240ktjaANUwmcwFGLPLPdMGTTLRpeckqc4GB8LpKFP9DR8tva8a8q+KtGazygEsgmyr/qNXpNGJOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q2MMB5V22pvxi7Xdi+kk94KsRFxR5c1QV9lf2hD5EOU=;
 b=EU36EeXpEIumTpV4GTbWNS2AcRa33FzaQhf+cCRPE8dV8PCvB4CqujYBrDNW0pQFoh9pyifUKnKTM4lcv0ItSaLLB/DGHR460sczPgR0tcO7DDxlVLYtu+yjw3fiDAdK8ekeNe+oHsQ3JZG6RCuxHtDDfssd1kXEkLd0PrP6kWkN+IOn7fUyH39c8QBba18OThKYc/R6UJ3+jY9f1aYeJ8qqO/LSpwt7T01mdjpYczYeHeQNp7the0kOkf7yzA9O0dHWyWpxpnIxzGkZ0uzeeuTBcy/3XdlFUvN9cAY5NBLfNJz7p+JyGcpWCNne7Su1Te52Txz5KQ2iirHtAN5YYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mt.com; dmarc=pass action=none header.from=mt.com; dkim=pass
 header.d=mt.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mt.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q2MMB5V22pvxi7Xdi+kk94KsRFxR5c1QV9lf2hD5EOU=;
 b=iEtnmm+pW3Q2SvmC6lVPREwc+bX/1HcfShRNjNyNJu0ifcvwzjOdgBOG2nIrYcbc3oDCE0Kkj7OzNzyuBaqtJhcTIM8PYInIhM7eG9hGd8tWmJ8PVTbuoq8qNXyjNOXSVTXRD4x5M+VRk/k9sx/d1IOQ4NCQEmivxJStUNk30VVK4L3b4et2SBi2AaDN9jOVp2DiVjkgYCV/rcsOu2iP9CjCiQxlo+6LuxnTXuVjQP0ephR3zohoIMksQPw1LUSjnv0odrH+UfLStUWDk5ahc5iWhs9NMjbGc/iT/l+ugPCYyUx0+TFuENGY2e7HlEk/nU+J3QnJwXIps/zJ7jGSHA==
Received: from DB9PR03MB7180.eurprd03.prod.outlook.com (2603:10a6:10:22d::13)
 by AS4PR03MB8604.eurprd03.prod.outlook.com (2603:10a6:20b:587::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 08:26:43 +0000
Received: from DB9PR03MB7180.eurprd03.prod.outlook.com
 ([fe80::6fd2:12a9:4423:8ddc]) by DB9PR03MB7180.eurprd03.prod.outlook.com
 ([fe80::6fd2:12a9:4423:8ddc%6]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 08:26:43 +0000
From: Wojciech Dubowik <wojciech.dubowik@mt.com>
To: linux-kernel@vger.kernel.org
Cc: Wojciech Dubowik <Wojciech.Dubowik@mt.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Marek Vasut <marex@denx.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/2] drm/bridge: ti-sn65dsi83: Add reverse lvds lanes support
Date: Mon, 13 Jul 2026 10:26:18 +0200
Message-ID: <20260713082622.52985-1-wojciech.dubowik@mt.com>
X-Mailer: git-send-email 2.47.3
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DS7P220CA0077.NAMP220.PROD.OUTLOOK.COM (2603:10b6:8:259::8)
 To DB9PR03MB7180.eurprd03.prod.outlook.com (2603:10a6:10:22d::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR03MB7180:EE_|AS4PR03MB8604:EE_
X-MS-Office365-Filtering-Correlation-Id: 52869f89-fa2c-43c4-eb20-08dee0b87806
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|1800799024|366016|23010399003|376014|7416014|18002099003|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info:
	WxWx/ETEFGkqB2Pj+HvRP4kVpx4+Ydcv5mRMc12kxvEnnfy1FxBjJU7oGsoYvdT06AJeMwZIwg7ORfhDm2EKt4ZmqjuWE8sDh2GFLt9aN0T9O3t7G/oD5v6qZ6EbMXNwk9+wjx4yUFn1612tGFbqX+vnyHIcB5siE+Ry6jC+SRQppzixQUs7TpdatlCNn5XFIY7Mge1/y6E2q4rYkiq11G0QCxVjy5AkCTVsMdQgd2ibWoFKGlNzI40kSTDX+mOS5vjdagaMM1IcSTWH2veztGpllulWjVinn4oG638TsWtumLZVTGGZ44TfoS6NVeU8GAl2mmbKOkbLti2KIWytrBTOrynncXHRRvRhaWjCIZmWt6l5+B7C6aj3OXBlHZw/+kbU69PiKaYX5Y3R1hRgkY9WWsopkZwd4NPJiAKL3MmYFsLWZxH3/UxwF5DdVNGkXQ2YAtAn2niy4pTThkpHL595imHVUbAbHzYbWJsGvzLZBiF1yOvNkd2KHB8OiIjjFFtz+Zipr7aqSxKIK8V4CUdMvSIP9+CvLT9xZrdvfM6znbVdaP5bLTLQUjAeHLBu97pNgIcGofUJE/cjHkffBRb6AKDJUJdEyhfdGz/gs2Bp4fWP5ez+Cbpi5byrESbxmnL1xwUmkKctGF1Trvuw+rw/8DvfRjfThU49Y0pSjss=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR03MB7180.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(366016)(23010399003)(376014)(7416014)(18002099003)(3023799007)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?ZXQujeN9tNVI4qTz+QF/MoJ/FZkXF5q16tjKQYd2Qs9M0c7IS/EEbt+aak5C?=
 =?us-ascii?Q?aNgqkbxT7GGIoU/uOKjjQVNFmCbxpPmK1roK0zlA112jZpk2B/17XF3+ibME?=
 =?us-ascii?Q?ILyrMxG2VqHlmlOmBUqflrEpVzjhDxj5PQwGlQ5iyoYqr8lB/IwoGY1cVPV6?=
 =?us-ascii?Q?AkFMU1La8uvxB+T1GlhAg8H/NYdYVgizV3lIwnlHJ+Hf4OiEde13l0bFm2Op?=
 =?us-ascii?Q?C/xd/piYO2IDXACO0Ncr0Che40LNGRFNhC4RC04dlLAk/1pbZ847O/fdYsB7?=
 =?us-ascii?Q?w/FlG78CWOxOrpgvRprwWnFw8FiimMXfkcMQeCyu7xZEr+YsHGI0JjkayE6M?=
 =?us-ascii?Q?SCtInbdoKKFsN5Qhx87OlxiXEiw1PlfZ5U8TvDORfbbfpA1OqDfj+pa9wbRN?=
 =?us-ascii?Q?1EQ9pLmLnLfRYYc2h5VT9zmIJVcKXVfHiMeEju1ICafDBtGC3eia5NVGqYP5?=
 =?us-ascii?Q?ztsSApJAdvEztO+4wvD96rbHG0/Bm7kHZwITUbILdyfd4edqeS5meoU+L/Jz?=
 =?us-ascii?Q?bxftjLCFuGxdkGxl7gUJqcEjhvxPTXFk2A0GRO49Dr7qqyVzlDBl64L37x62?=
 =?us-ascii?Q?0afaE3KptSa5YnR3do9uefYzaFprSSakp2ns91tn2+io5WRnmxuc9L/OvJJs?=
 =?us-ascii?Q?mpMGRrlhQJdMN4eHUuX05XlNmUeeLg3vUhR3cZ5Q1mWgKVnLB73Vju5uJsN3?=
 =?us-ascii?Q?4HaTv2I42VBRdZRHVWZdYUX/lRmZpmEcXcNXO+/QIB/61o9X1QTLHBGqpZy0?=
 =?us-ascii?Q?CnT91nli6F9eT7YnlER7xsrY/6gHnLrjO2g/wPcudP/NuDvIRHXIRzLhf7mp?=
 =?us-ascii?Q?5t2VPaYqjMsIBoPBRR8G/xSs0n5HNswjjNInF8ugHiH3EniHD9KCHs/tVWvg?=
 =?us-ascii?Q?fZQviaDaqrd9KEY9YlJmHeGBhuOKBQAah3FNa2UNeP4HY45lO1cTIo65YKGu?=
 =?us-ascii?Q?irllslfqY7Sf7Hn/IOroUtOtdyVunbdInhCm+0BoYvGvTut8gfdq5RhjuUYV?=
 =?us-ascii?Q?8vUQiBWBLh2rRV6uNbBwkXRwRPgS3cULHkGDKDpBe5gBF99Wv1LZKlM1Lw0x?=
 =?us-ascii?Q?axaHE8Woe0HEb2wDleE3ICer300k6eZD2WbvRrfD/a8ImvkVo6RDa3gqKfZo?=
 =?us-ascii?Q?zRFuDnQMUqWiYhlvGqPuXi9I4Tf0mbJt65ttWCElf3kA6Z8raYDXSa9cFi6N?=
 =?us-ascii?Q?7zIS40HI7qpUAq1wZ6xsB2g57Za8R4DdBnMtsKHrPcCwoOZgjkwsm3nFKmFz?=
 =?us-ascii?Q?OFsoFY3NEjtPPO/wUS1q+ccoGMp5wzj4udZ9vOD2b6f2TNCNwNM4T/RekWap?=
 =?us-ascii?Q?cZnabjb3gwJwkTVUJc7CzIcr/WqEvZJwAjakLu00ku71VT/1hUOCAJIJ6T8u?=
 =?us-ascii?Q?UI59eWn8VOITASlUJf/sitrzspzkWUgeFfSLLmz7uL5XTiDAI4f3BtNJSDip?=
 =?us-ascii?Q?xdpmtFaP/5NvpsrZF4c6U7sNJ+i1eHWSLqlhHZuV1ad7fMQU3tvgv9ZElFVc?=
 =?us-ascii?Q?q2qdoUyM9EmSkUpMaJvhc3tCUOZhFpQc5sxMtHxCwtJDnUdYA06alSwjlxhN?=
 =?us-ascii?Q?oZJRkV3mEA118Ns+ifTuJRHFpXzolZk5Q/VU/OVj85+5QZqcNPyfx5saNjlr?=
 =?us-ascii?Q?0W5gY4RGySFxMHYS6G7dDEc2H6DaQTeN/KSf5GqEnaeV73+OkKA9PQut965I?=
 =?us-ascii?Q?AqsVmGDcW9IWUV1IJXe+FXhO5/60LB8BXbrThuKNBs5Ccldw5bp5KF4r4ilq?=
 =?us-ascii?Q?Vs0H9xPb9w=3D=3D?=
X-OriginatorOrg: mt.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52869f89-fa2c-43c4-eb20-08dee0b87806
X-MS-Exchange-CrossTenant-AuthSource: DB9PR03MB7180.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 08:26:42.9342
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fb4c0aee-6cd2-482f-a1a5-717e7c02496b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tN1a974K3Nh9pRkmzxJRx2dyOjDFfYS3mvo6ahAgBgcvAaYmyH6p3bNYYN+8S8re7q5noUrE5/1QT7z/gavK1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR03MB8604
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[mt.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[mt.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:Wojciech.Dubowik@mt.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:marex@denx.de,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-325282-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[wojciech.dubowik@mt.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[mt.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,bootlin.com,ffwll.ch,linux.intel.com,suse.de,nxp.com,pengutronix.de,denx.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	DKIM_TRACE(0.00)[mt.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wojciech.dubowik@mt.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mt.com:from_mime,mt.com:email,mt.com:mid,mt.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A025A748C58

From: Wojciech Dubowik <Wojciech.Dubowik@mt.com>

Add support for reversed lvds output lanes. With an optional
data-lanes property one can support default layout <1 2 3 4>
or reversed layout <4 3 2 1>. The property is optional and when
not set it keeps the default output layout.

Signed-off-by: Wojciech Dubowik <Wojciech.Dubowik@mt.com>
---
Changes in v4:
- Fix data-lanes bindings to be under endpoint subnode and not in
  the node itself, discovered by shashiko-reviews
Changes in v3:
- Add optional data-lanes bindings for output nodes
Changes in v2:
- Parse existing data-lanes property instead of ading new DT
  bindings
---
Wojciech Dubowik (2):
  dt-bindings: display: sn65dsi83: Add output data-lanes
  drm/bridge: ti-sn65dsi83: Add reversed lvds lanes support

 .../bindings/display/bridge/ti,sn65dsi83.yaml | 52 +++++++++++++++++++
 drivers/gpu/drm/bridge/ti-sn65dsi83.c         | 50 ++++++++++++++++++
 2 files changed, 102 insertions(+)

-- 
2.47.3


