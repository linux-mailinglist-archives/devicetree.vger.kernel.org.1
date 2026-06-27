Return-Path: <devicetree+bounces-316328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Rsq0DWwvQGpqcwkAu9opvQ
	(envelope-from <devicetree+bounces-316328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 22:15:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF3F6D290F
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 22:15:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=altera.com header.s=selector2 header.b=fdSsO4PF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316328-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-316328-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=altera.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4D8553006203
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 20:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C847C2F7F04;
	Sat, 27 Jun 2026 20:15:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010011.outbound.protection.outlook.com [52.101.193.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A55E71A3165;
	Sat, 27 Jun 2026 20:15:32 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782591334; cv=fail; b=uifOgV6jdAEs1FTER2yNhq7qRWsQrjKhSGIgbq8y55XY2vxFwHG/ipKOzgZu0oJKQUUxqXHp56CczBU1c+SdJ5Irz1hQCZPZsZse97E799VmaDRvN5zeoSQ0DnFKoFbxxMIepHr8T2I3MspN79s1cb58158S5BhlUyi79B+mX2E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782591334; c=relaxed/simple;
	bh=fNpVCV78XBeliKfoI5PN5UX+pBxqCd7w9lZtddV4bEQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=cku/+e+e6TW3SsnmmDmPUtbr24FB65lKGzj4qNvBuzmGn4akUH4zejPZcE8AooJ9O9DJuXDEtnMbWeYyLR2YK2PdTOouRBtfkCpUHyqx3ZuU3uNhI0gRaEDc98e2UHVfLxwBBMtU/DGVP+3IPcE1ITAyAsWXP2VL88jiq974E+4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=fdSsO4PF; arc=fail smtp.client-ip=52.101.193.11
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BYH9yT0VgXdXcGJDlQ4psIBktpAQi/i8MFYiH5SxGZy04wlFV0KTQJBtmJUFCfsjqH2kgCv7xGjGL3tSeUiSY1k9Ucgn6VpdWy5XW9u6ZvmE9LiBfh7GvszYeSt52/HI1OxVa6nHAPayqfx/5M9cF9auDKhCpXQ3Br07coWRhpfbnPOpl6PRiZR8MwOBNItKUhgyI3V8/m23tHKhbRxpzwnC1aF9RWSZjrXLNKp+DHUZEjNQf7vF7gWH4tOA+WNk6CsQykIZljUJ4j14lAcD+xGigMGnnZUHsOpEwVIrWuJHVu9VLDUiCbIQdb7qHW2ecXML7LQYEgdqux+DAn+Fag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVUl07ExKTTWhRl8eI6l4RtqvGpOUY5YwEJHu3+S87Q=;
 b=fT6nnoobHxzYvFuryCOmgtSAHoHHlWH4JAYysceuhZ/iijRfFiQ6m1jDClv6cvY98sOXMtEENFKLFWORwxNvGeQjw/nydwjckPhzVz6Co1ntwbpMApflZUo+sw99hkjdmEHUe9RJ+uexkextpK1svgpHvqdVUZ002XPJqA+Pos4HseUlX7HVZUp9dG20ARr97xA4LbNyRCOXlrN3qIEnNfhjMGiNo9GMhBU1xNineXhVsuE8WdCdpcJjnhVNAdnyzDUEQ8MmAqaUKp3LHqvvbTGkZ1d5apHDWi3UyJP5ZiD1n8TrhYF5p6mLhz2wJOU64992Gd1h/mkHUsBiqn/iSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aVUl07ExKTTWhRl8eI6l4RtqvGpOUY5YwEJHu3+S87Q=;
 b=fdSsO4PFe7TpEkLQ80N1ld2OKP0YGX7YcARF5r0KJRGmW3cy/9qUbJ3H08xQkmcYLSNsJfml6f/Dsown1RbDaewxwkuUfuUziA7huOu64NFvgx1EiphhUPxuqwXPoJtuL4a4rlbtZEtvZFqNghWwajhV/zdiZ+zFpoVagkI7pAsnx1o7J8wi/LH0ofxzcjrAUDNlGRWmtLinnfS1KiKgx2Zow/IlUxJRzDPskMytSonIZY35Y3RyWvJoP/BuMFg6Vr3SOF4demwmNdgi07CE7Kt7vaKB+hOwMqgsbY+hvtSzYB2ephvelFoCVDHXEAU+pwB2i9HNM44ypGO5OW180g==
Received: from DM4PR03MB6208.namprd03.prod.outlook.com (2603:10b6:5:39c::19)
 by SJ0PR03MB5837.namprd03.prod.outlook.com (2603:10b6:a03:2df::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.18; Sat, 27 Jun
 2026 20:15:27 +0000
Received: from DM4PR03MB6208.namprd03.prod.outlook.com
 ([fe80::2216:93ef:67b:9e04]) by DM4PR03MB6208.namprd03.prod.outlook.com
 ([fe80::2216:93ef:67b:9e04%3]) with mapi id 15.21.0159.018; Sat, 27 Jun 2026
 20:15:27 +0000
From: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
To: linux-mmc@vger.kernel.org
Cc: ulf.hansson@linaro.org,
	Tanmay Kathpalia <tanmay.kathpalia@altera.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/9] dt-bindings: reset: altr: add COMBOPHY_RESET for Agilex5
Date: Sat, 27 Jun 2026 13:14:46 -0700
Message-ID: <20260627201457.12318-2-tanmay.kathpalia@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <20260627201457.12318-1-tanmay.kathpalia@altera.com>
References: <20260627201457.12318-1-tanmay.kathpalia@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR05CA0058.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::33) To DM4PR03MB6208.namprd03.prod.outlook.com
 (2603:10b6:5:39c::19)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR03MB6208:EE_|SJ0PR03MB5837:EE_
X-MS-Office365-Filtering-Correlation-Id: 2811b753-646f-4916-79ce-08ded488d3e5
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|376014|1800799024|23010399003|56012099006|11063799006|18002099003|22082099003|55112099003;
X-Microsoft-Antispam-Message-Info:
	p6OSRCmJ0EdzMynubxiM4KrF+9PpFcYMlPov0l/Mikr1K4y4YtePrWMbEW89bBjXi8ksUZU/JoaQBvhlUxG5uw2fpRGptRxHiI+up3wl5yn4mrNKJ/I8euDdGTl7yohmxNyYphwqV9AncKiFb6lOtO1dGAz49uFUxA0GGcpbzXc+cSlg4znvccqO+RfK0a4tiCxv0XjGhuGrtnqyQ5xD+laxz4qmT3dsg1Pfa0luy/3tdUIoBEIt+wMLs+dSrV65sYOGcg/K81JhKLSCoO+oAIZ14PyqfvsVCjznQ9AJqUoQQh9jPH7tzoP7tZQ4npCWrIrmabJD8g59ktUOiSLjXJsFd6jDIHpaHebIFlpG2HRMKemTOnk8FE3BOJLW/tvN6Z/4LZfePq11ZoyWzvuD+2gNkggPWBA9Av8WR59XrZNt8euwXrD9vEFujLEiOHNJgOlWGIuD6ObYb+Rg7boJU17743FLzQynYqVYC1uTYmEs5anQz0oBZkHcmkR4pQMwrkLJte8t/fBioWExCw2yWkEJb533lY31KnYffNAy1GsT49/+GXMnuvEYCiM4zOm3AHq1trSAm41EN+adymxR5lYtD4lsN3HuDbKsm3PDn1BOpeaCJbgWhsRCrDHVrkXCfICQBL5YzH1tY+kq3BBcYCFeZ+PDghdSFSajUlRj6xE=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR03MB6208.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(56012099006)(11063799006)(18002099003)(22082099003)(55112099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?3kFSjI8abKMq1O4XTY7r/3UosbuSlbgqTmxvU3PWkXnheE56Ac4xd7X9g7dC?=
 =?us-ascii?Q?7S4adN+qowOLSB4U6S6/nxRyy1RK7yV2LTfW9GAPzQzKE3ddKn8LjB8LhnDb?=
 =?us-ascii?Q?kP/sqEn5rEgnbI2SHVNaYjxej/PSulHWgA+cb/og8s0KmYzfWRjLLIc3sTlF?=
 =?us-ascii?Q?FbUhZYpYAKS8ixjOn77yQ/ztbuliGpXTwr0P537APfM0JLynKYok5T4OAEtc?=
 =?us-ascii?Q?A6mkTsW5SHScNELtKNTEGA/+4iifPQ7S3TsASm0JNR4xjkKSgZ2gIB07NqKr?=
 =?us-ascii?Q?z+3AGDWENsqe+pCDBMQjQJ+/tUd+UmJjhoJWF8t+9sQoCG977fWEmQzR46gk?=
 =?us-ascii?Q?ucj5PkVOgqMpu3bNZY1Pk3cXm+FzZKa2G/ue88cE4nbnrit6vsEaN8JUdhFo?=
 =?us-ascii?Q?VB88wPlyic5cm3WiUUirClaJt+SZS4LBSx0JI99+Oi6yHb8KJKmx3qPloEVO?=
 =?us-ascii?Q?IfhHSADYRFOpNFbPY4YqDK8617NMVAQTtKXc5Txm8MmA1o3lULqG9mZt11Y/?=
 =?us-ascii?Q?00xw9ETE/XLdrDvou9HfkkktTCBfTt/HRRL0WgvSLodyuCtsyNufGOGxkWwi?=
 =?us-ascii?Q?0XhqXlD8hzbxTi2W8GEmnus27+no0pffDzq/fHqeMlIF64ik3rlSHPhJJFyJ?=
 =?us-ascii?Q?YfvUlwvpddKAFffDx3eTYS3dtS/UZBTcOTQu0vLAsJqPnxX3S3JKuIvmI1DI?=
 =?us-ascii?Q?OPFwDgOz9y+0QUzjh3pD9En4DYNYFWezR9XBz3VSHgIKfXi94aBS6mYLRPA3?=
 =?us-ascii?Q?6FNk296VGImz6tXZBTww+UodANgXdxiSWKlagQKWizF6qdlr9N9kpijbB8FA?=
 =?us-ascii?Q?3YdjD+1y1oTgUaAikaO9NGWW8HNN+RsDf9L6Q31gMS+Lcr3PkI1fLOIOv0/V?=
 =?us-ascii?Q?HQ23My4cpCjYmn4bWRkxxhytG1JdzSS7ugeJ/0u+Uvhbja78nl9w3TxGu2L6?=
 =?us-ascii?Q?26yHE1GiWoPXeAyUt6dBTEHiG125zsuYb29DbEmS9Cpza16w5Bsx68SNuPZP?=
 =?us-ascii?Q?tLZvx+8Mzby0JD4hWCTp+rRl0xVJMJorcE52zK0raK87TpO39ma6zPTwQ8RD?=
 =?us-ascii?Q?D40tKxx1bjXEmer5DK8Drcj7317IlPsHl+gAp9i5PPyd/n3lBFzX4QGtlYwY?=
 =?us-ascii?Q?mg2h3nJdJxlvCKllPFC3gXlmH/KqLfBbU55RmW+TqFTunc5EvgbsdRi9PqIO?=
 =?us-ascii?Q?0zXa5hA4ecrNGb+vHq8S94YDCX+oZkJWS9hFvdeauzQtjROoxqxhjQ5aT2qt?=
 =?us-ascii?Q?edFYd/CJ36f8z0eA2FOvlXe3FsozEQJyruNOX2LgGBPN5YnNloPm6IFsuE+p?=
 =?us-ascii?Q?CnP9fuIFnDZrDVrGLPTA+r75LmRPOOlLIvlcuXM5hkJtqFtu7jEKUoZZLA+O?=
 =?us-ascii?Q?YCV9JGYujPF3A0XCdzIRa6brsYmRnAGtMoxepTFrUBUD6CN7rD+2mWSnitXz?=
 =?us-ascii?Q?1ed+lGXL8MQJ0mkRTNFE6fbxERJvPUJB46j+c8deSelnnczPs4pUi6oRTtNA?=
 =?us-ascii?Q?hGqPmO/z/wWaHmxkc5xt0DrW2WcWdVBEJlmeWTwEVkywhRmrObqQgpEXlpvt?=
 =?us-ascii?Q?JO/TcXXERuxitkvJMqCOEvnA+5ZptmI+TEq7ltMaeh3g7HrrcjH7gCPV4fbo?=
 =?us-ascii?Q?cmrvn8jGX9pC50shXrG70GztgxJBUScaUiBupUXdcoV72YxEYpHSqlyAPJ3L?=
 =?us-ascii?Q?w7SigzgCHMOqVrJYGrRMqK4qbi1AHlCBmg6lERNF7aOnu5e221ojYpQmJHP1?=
 =?us-ascii?Q?rEdtGdFpDjIEeOcQluJWNDqephTIG6E=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2811b753-646f-4916-79ce-08ded488d3e5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR03MB6208.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2026 20:15:27.0707
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Rh/YOmuXdyCHtnBJJ4ry/lou5hQUfsmrMltghWt/If5JniRfwWTsgxLWEX6cLRPZw+9eNKEgYkTDnKmdZW8Cpc1xouM13FW89R7AacStSA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR03MB5837
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[tanmay.kathpalia@altera.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-316328-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-mmc@vger.kernel.org,m:ulf.hansson@linaro.org,m:tanmay.kathpalia@altera.com,m:conor.dooley@microchip.com,m:p.zabel@pengutronix.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tanmay.kathpalia@altera.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[altera.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3AF3F6D290F

Add COMBOPHY_RESET definition at index 38 for the combo PHY reset
control on Altera Agilex5 SoCs. This reset is used by peripherals
such as the SD/eMMC controller that share the combo PHY.

Signed-off-by: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 include/dt-bindings/reset/altr,rst-mgr-s10.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dt-bindings/reset/altr,rst-mgr-s10.h b/include/dt-bindings/reset/altr,rst-mgr-s10.h
index 04c4d0c6fd34..c2505b9eb63e 100644
--- a/include/dt-bindings/reset/altr,rst-mgr-s10.h
+++ b/include/dt-bindings/reset/altr,rst-mgr-s10.h
@@ -22,7 +22,7 @@
 #define USB0_RESET		35
 #define USB1_RESET		36
 #define NAND_RESET		37
-/* 38 is empty */
+#define COMBOPHY_RESET		38
 #define SDMMC_RESET		39
 #define EMAC0_OCP_RESET		40
 #define EMAC1_OCP_RESET		41
-- 
2.43.7


