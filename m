Return-Path: <devicetree+bounces-271811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +H0YEt9HqmlkOgEAu9opvQ
	(envelope-from <devicetree+bounces-271811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:19:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A74E21AFF0
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 04:19:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A79FD3021B04
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 03:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C80936A007;
	Fri,  6 Mar 2026 03:08:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022131.outbound.protection.outlook.com [52.101.126.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233D12D839C;
	Fri,  6 Mar 2026 03:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772766494; cv=fail; b=SvEXEJWMRQwa1IICocHqSUaXJK3XsbgJp1PUbydglDZH2PGoouLKCK6jS0zdCbKHmuFc4ThwgueYVbZKpNbBcUQIIBxL0dBgGscFQxPsEuHw0o309/275nXv8rNTYVzkSSGN808DYLi/1TAQbw6iFWZyjVjNI9URuZanyGSAc9A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772766494; c=relaxed/simple;
	bh=4AsNyBNeAu778p1fy+Fr0lfiFmXlfrta7asKRbel7lw=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=oyXuGVZQYxI2NY6UMxvPdnb9xG8l4oMaL3iVljq1TzVx/hII1OKMkCh1B5nWI+m61NxJiM1WwT7kuYsU4aeSzrXi5qdlBinhrFh5O0CiAYTWuQjwzFKV9CvRiJCyUZHroUPWuSQsH5qbuV9l8va4m3/AQq34f5RbCWTk+kX34eI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com; spf=pass smtp.mailfrom=khadas.com; arc=fail smtp.client-ip=52.101.126.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=khadas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=khadas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e6ggImIg9w8RDspotnJjDFZreoo0GNGYWZ/QqSKeZtmPhUIZM2ouxSBKMKiDx4okkcVHqKb1r70xwBYcG0w8aCY2APPRbEYiAkAt4+rpUKOmitkPTFkr+fK3qyGWF1CLBJxBLSaMiykhzv51aAb5nwhRX6wtnx9oNE74821vzWOlrMgflMjgFIblV+1jh71fUj5ueEJt22iafgeFaLWJ7twMJ7zaVVWhxzF84bib55FTL4AFX4uuXFDLyz3+eXWzyomFI3FfRC+l6XIr41RpXRe6sLrKZ6A9HW3lh8CgIFFvZvzuEh6LBrlDNkZ+bWwXRfS4lQbnv7pVLnY0y26B5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m+Jlh6OFRaQjJbYusefR/wyCPIG7gE1+hdr4Uw2RhC8=;
 b=g7k/bDbl6VuBMMj7WoCCECbLMG2OtCpY2zuKneJ7bBbc5tCH9Hm6jquw9kXvIzAZuqsdSvGKo+YeA5YzDDlgElUp5a17XBqtbSkrKQ/fFTgDttQ6phKDR3fCCucBkKRejkAjItD1m/iPNDfmnnC7yhZ4LLT1WWhhb3p5t1H050wO9/y9Qs25uaK34/6QgAfBQReK0M4Ehqp9p1zW8/L/QVJNjn2kPv8+mJcy0JDEPltrX30cbWbV6b0qSzxBgougfL3uK3Wxoiy5yYNW3cZ7n1MPsUux0zi0yKz/HMrT9pDYl0ODhn1japPN4ND1wXFmYXQnlFQK5PgUKv7PbdoTdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=khadas.com; dmarc=pass action=none header.from=khadas.com;
 dkim=pass header.d=khadas.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=khadas.com;
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com (2603:1096:308::2da)
 by SEZPR03MB7267.apcprd03.prod.outlook.com (2603:1096:101:73::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Fri, 6 Mar
 2026 03:08:08 +0000
Received: from PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::20a2:a696:ac88:2549]) by PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 ([fe80::20a2:a696:ac88:2549%4]) with mapi id 15.20.9678.017; Fri, 6 Mar 2026
 03:08:08 +0000
From: Nick Xie <nick@khadas.com>
To: neil.armstrong@linaro.org,
	khilman@baylibre.com,
	martin.blumenstingl@googlemail.com,
	jbrunet@baylibre.com
Cc: krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nick Xie <nick@khadas.com>
Subject: [PATCH] arm64: dts: amlogic: t7: khadas-vim4: fix board model name
Date: Fri,  6 Mar 2026 11:07:56 +0800
Message-Id: <20260306030756.2421841-1-nick@khadas.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2P153CA0015.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:140::21) To PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
 (2603:1096:308::2da)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PS1PPF62EEA9B1D:EE_|SEZPR03MB7267:EE_
X-MS-Office365-Filtering-Correlation-Id: da8ad934-ccd4-4a98-2df7-08de7b2d9794
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|52116014|7416014|376014|366016|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	a+41BossUh0qZrohgICZCFlyqHEOG/PZH1L2gPSIXhJk2xP5FfAfs2Qz8EUcxX81YlquREhXesCgWMHs+lguHBQYT9qt7PcRsGP3igeXAgif+0YHyeDaQRZLJrsrBd97FkYQ+EaNhCWphbF1aUx+QjoxVY1Zt2ygvSIVeWh63TpxRHOyzslZW3bi3obNvHxxhtBAWlEyrsCNz5PeGFU+jl4t7JQ01IBCPoGdmTT6Z+8oVVcSIhyrXvBSHQPJ3RZzkMks1rupuvrCaCGfXpM3MfSblAhQku0qR1OE+GzCxLIs/+WF3JJ1jq7dl0nOwHarvUgUV9gc8r24HBodCOWdlNkTcWhX8Wk+RRUuIBfv5Yb6mkjEpfi1yhD9x+yKR/cFNu+2a1ohOb4iGtq2lGreXWuXiPCFHORQD1cDcBC7PFitVMOhFCKDB4jLlxRgbNHIIXhf6uKnijXpCfU3F8r1gL+eOXOa4YWrLjda3GWywQ6ImLOcMwx8ACm9hMHnshj21lmPtoLB602VSzr4CFO78zC/D0nJq+abvlliTDYNeDlUTLnnaZJx+zkhGOXXOd0sUGFYvYhWAVXoja/OmokHF1msWvbQf5QgkRuZy8YkNrDQ16mgWFIFR2Xcxe+374wp4cO9eqDpRN8tLyUYG5fmEr8ytXNASh/da10sdO4k7gq8/4whkkC/y/uEQ3z/p92qoCcQM5SErPnRKg8Te6kn0bRQNGbT0jJKg6pYq2AJ0MvTRhzVVpKWqQrG0w6UVPrfzzjtP7+0NUf5k5jsK81HKp3A5RmmARLGNpyy7czoQ1c=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1PPF62EEA9B1D.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(7416014)(376014)(366016)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?9Js0kKQnn1nynnJbqlAt/C8qgX+DXCZWh16yk3bUwEWw+mgvjEO2qVuN9Imw?=
 =?us-ascii?Q?YHnydJJAJqTf5D6nYKBjXdpj6HsHWNcZIQORXWJ/Ar/cpFOXa4orcC5dsF/6?=
 =?us-ascii?Q?tF4oImi8pIjGq27ldg9CLJraVo08PB+Ojo6N2+Q6A3rxTztbCpOJj08gQgmQ?=
 =?us-ascii?Q?Eo0lpj/SHkcPogH2P0n7lXm28q9sFaJQyqKhgVbRIDaIOh4jhEvTyNhuAkYX?=
 =?us-ascii?Q?HHZlAb519HqPZtbPENwG7RUtAIcXJ9GBMYOU7ylwR802nVXxPq8cUfCKZpe7?=
 =?us-ascii?Q?ZOfWK7payvbgyWwC8kugt2H/vWz7yPwZVIKt6mSxdDGdEkP3LW3Fu63kDR5t?=
 =?us-ascii?Q?/yl15DS5QhMWW+d+qWbTqJntB4Vnq0LTsGjVpZJChn9iuOu04T/v0zNTHHLM?=
 =?us-ascii?Q?XUVLPM33B9A4mB9s3Bfwrle2gpMOQ8wbszOKJ+VTiECQyWXPYheeE7vjEoDV?=
 =?us-ascii?Q?3K1TjVdR3DcRGEiNyNY3VXsZ83dNeGsiSKTVIzs3wmjHMAk0kPHlW1XnaR2K?=
 =?us-ascii?Q?QbQLAQzONFtvh85ltr8v/NWWVdZlHiZuN9xMyGjFwHzqdL6Nju1dFM6RmArP?=
 =?us-ascii?Q?GAjaI6egWObcjNrXUOPHsjPa/ZluEDQJYqy/xAUORNawvGCQCjGSOvPuuwMc?=
 =?us-ascii?Q?mnax2Ud9t4RcyD7KR34rCH9cQNcSuAiW721NQSXkFilLTDKY8LXEwZ8Vwisa?=
 =?us-ascii?Q?UaAGmOkELJyZ115iD0q7y5tXd9GEpOPCrYo5krvoPyHUixsTpZHRdPkUApMl?=
 =?us-ascii?Q?nipGbZKeggkhVF2SbhKIsywQn26E/U8z59GjBStWWH4rKehmU9x5eG27QjLD?=
 =?us-ascii?Q?Kacjv9DpUvUqwD/0meEXnEgd+ib/RCw14hjoH7PZzSGkNqqU34pdwpbfHyxk?=
 =?us-ascii?Q?Ay7YucmhDfp9vJKQrMWL2dI7lL0CRo8vFzsVdxGKYxCNSjeKlW1i9I44glB9?=
 =?us-ascii?Q?Z45NA9JnBYghsOLLsnQ4BG5wA4dnOPqVE8nrChRFuGNDvtcv25counzl5lWy?=
 =?us-ascii?Q?amRI9JlJ7Y13TMaqczk/9KmOVY4IGE+7CjHxJbx+raScDWoGoBAnGmRkJWAd?=
 =?us-ascii?Q?0V2dRHTThyNB7c9tvPfFlxjimQh1F0+YY7hvtxTLaorbb4VlQmaEdBzSbOIV?=
 =?us-ascii?Q?scPFzsQhF+xVppm1jDSA3eRNnQ1YEYBcS6GdCuE18HFSME/X6sld7KVl3mMt?=
 =?us-ascii?Q?umjUxsF56tZPxQqoD4Rltc0kkeFLuw7Zm4ulALhO8YvNI1fR6O4wgwopxZjz?=
 =?us-ascii?Q?PaJHQcgAe0e/0yRQAbbTsePOHujAIGu5bCreed3E7yBHDm0BM+OyYCTc3yKy?=
 =?us-ascii?Q?BVXiwe0hAg1aA+uzI831pTnFmVgEWmcwMFQuljfLCKIgBUSTUrLejwHBSgUW?=
 =?us-ascii?Q?Jo9DbrAKoUFKbR77zHhkZSiWN7Yzvrr0xmp8/DEqM7kWLOeD8G94fKYhiyw1?=
 =?us-ascii?Q?9KLPjz6w24fjqkACMGJ3eZalfSywfyPyoWzyBSI34PsCLeqaaWZxtbxu+4bw?=
 =?us-ascii?Q?OQ5fHAKVx+wzyLpR2lF5PQcaavT/WWHbkICcynDmi7xViNcEklwpSNnG7STP?=
 =?us-ascii?Q?dIQscJhuKvt+cLixXveOXpGp+IeM/Mp2/PhWwuHsZ03hSCI+MwHURkYDlzzY?=
 =?us-ascii?Q?fq4tDikz2WiOXkrcSDSPTGd+OngLKBrgyTHJr3VyExwCZ1rNjRerYX5L9jN4?=
 =?us-ascii?Q?eZhB3nu3wkZECy4KtIGvkmhi/E0jw1IhUnyZvQSaG5zw9ean?=
X-OriginatorOrg: khadas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da8ad934-ccd4-4a98-2df7-08de7b2d9794
X-MS-Exchange-CrossTenant-AuthSource: PS1PPF62EEA9B1D.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 03:08:08.2684
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rnX///FkSJT1seBf7jme6ywOYCxSfK0avFXUuNWUQ2D7vhrsOocp7W60+v755eW2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB7267
X-Rspamd-Queue-Id: 9A74E21AFF0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.04 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[khadas.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[linaro.org,baylibre.com,googlemail.com];
	GREYLIST(0.00)[pass,body];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-271811-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.806];
	FROM_NEQ_ENVFROM(0.00)[nick@khadas.com,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[khadas.com:mid,khadas.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Update the model property to "Khadas VIM4" to match the official
product branding and maintain consistency with other Khadas boards
(e.g., VIM1, VIM2, VIM3) in the kernel tree.

Signed-off-by: Nick Xie <nick@khadas.com>
---
 arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
index fffdab96b12eb..25b478e106451 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7-a311d2-khadas-vim4.dts
@@ -8,7 +8,7 @@
 #include "amlogic-t7.dtsi"
 
 / {
-	model = "Khadas vim4";
+	model = "Khadas VIM4";
 	compatible = "khadas,vim4", "amlogic,a311d2", "amlogic,t7";
 
 	aliases {
-- 
2.34.1


