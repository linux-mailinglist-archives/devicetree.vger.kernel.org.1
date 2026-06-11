Return-Path: <devicetree+bounces-310576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +LhMNWAPK2oT2AMAu9opvQ
	(envelope-from <devicetree+bounces-310576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 21:41:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D41EF674CF5
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 21:41:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=nxp.com header.s=selector1 header.b=UmWq4MYx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310576-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310576-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=nxp.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B2D4C3006203
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 19:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC4A37CD47;
	Thu, 11 Jun 2026 19:40:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11010050.outbound.protection.outlook.com [52.101.69.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C18E378D77;
	Thu, 11 Jun 2026 19:40:32 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781206836; cv=fail; b=TdDQyn7dY8vAZY2uA1qJUiiv3KPNIMeN4HLBCRa2RL+P9AjZSIvLjcvgMmEA6fM1CG6sZRxauvKK4x3nnC73nzbbFOhaUqvdpSpsimz2Wr6rRA8Ow7lRGpZtadWrjWLg8V88HeJf02+qOdgnEK9vK1XX3zMxq60w3bv5Dtd/9vs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781206836; c=relaxed/simple;
	bh=AfzSjmEjdd1t9I8ka1hLQwDWuQJDzlOQLpHUhEq0pLI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=bdkrCUhe5pvlu5Hrs9mghJr+4Vn6z8H/UYsugrO2Je1nC0E+M3rvoV9qPGDa5vSvor3/LA2+oiP6QyS4JmI4jF4JlRhpK3+cSdgZPrXTjpH3BCPFBvpKdZWtseuY2qKtnqsuWedGPAd8ZfudS12b4P57y/BQ5oWxl7Y9gAdkBcc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=UmWq4MYx; arc=fail smtp.client-ip=52.101.69.50
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ETofhTKfzFXaeGO7sr0MnMf83pTn6k+m/nADpgKNiAmjRMKRhc/Usoi/jSmDAc9Gu7ljOc3GKjilPwY+vMDQo2o9XuTOXwB+Hi262NN38AbEEyNG94g9zGnATude1IBb3o3aHWKiqEVDjN7jtu2AiQAVNTD1E0AvsgDWdfFs1D+aSehU1DPHyhgBhZ00kxd4ifeCJQkINGnGLxGqvHVS+qvvzTtzTENVQGzj7pGUAB3+Ah5X3X5YY/k9u/GL9s3rQ+jOkj6UDHO9zvA74xYtnmve6sRvEpJothcdpz2XVXgpTZvHUSSUxRPQukMJbVOMMp/84eAmpQIkiTEba5rPsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=whGa75IbpHw8TmVGKr0kEe5dfQC4HtD5P5gDQJtmmAU=;
 b=a5QX1VErYHriFv+FSKbLwZvJY2oi8MDoYSGixEiPJi/7RUe2XCEEqHA2h6rZ683DvmcgcNmRVNtEBwvuqoVH1F0rgmv0LlNCrXd+I7SlMucvDoa4klUfVb/+Y1IY5jU9pbJGxkKzIFMJdAbiCIxM4tLbl6n7wGT/Bfpz3AvgoTeU5jox9bA/KcrN6ZsRhMVb5wAB3yF+Rs9TLXN4ksd7Qf8xChG8nRmpiV8mzxsf9FjJdghpO/uxmt82zI3jYUtVSLxQh6LbsWnIVaA/yYXUZOLi1VVn4OAI3btzuwA8MRwoFrkUXJn6kiCiSe0FUz7jH444xJqWoRY/V+c5NwN92Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=whGa75IbpHw8TmVGKr0kEe5dfQC4HtD5P5gDQJtmmAU=;
 b=UmWq4MYx63T3lF1fZcEtOq+G9iQndl6PT1oEBnITPVrAWIyTc3JIomFcrkqD0f6SgjdF4WEGab18r24FJY/1oajMvTWuilJUOUmbMZJEoTJUxurgsDP8hNEwuCBT3Imn/GL4UdDD3msrt4hVi80bmXRlrbzFQ6UPoZleod9LIjPVxk9CPGaQ7yYkPXolbJdgEoZUT3XGsdlZ+GXWefo1oXZuB5XXRJUHSHQtAk2atRy6y6Ymz1k7yH+o2I3ZQt9XRWCw/6OQRjpWnNQDi+7m3jSglYSJU8cWpMs054uVolk0aDhpRacPe+UltQqzkXsR9CPz8zJWPtNrVleAb+/fdw==
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com (2603:10a6:208:17d::10)
 by GVXPR04MB11017.eurprd04.prod.outlook.com (2603:10a6:150:21c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.18; Thu, 11 Jun
 2026 19:40:21 +0000
Received: from AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023]) by AM0PR04MB6900.eurprd04.prod.outlook.com
 ([fe80::7fda:8431:ca1b:b023%5]) with mapi id 15.21.0113.011; Thu, 11 Jun 2026
 19:40:21 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 phy-next 2/8] soc: fsl: guts: add a global structure to hold state
Date: Thu, 11 Jun 2026 22:39:34 +0300
Message-Id: <20260611193940.44416-3-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260611193940.44416-1-vladimir.oltean@nxp.com>
References: <20260611193940.44416-1-vladimir.oltean@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: AM0PR02CA0129.eurprd02.prod.outlook.com
 (2603:10a6:20b:28c::26) To AM0PR04MB6900.eurprd04.prod.outlook.com
 (2603:10a6:208:17d::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6900:EE_|GVXPR04MB11017:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ed5e05a-2c91-4ae5-ed09-08dec7f14657
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|10070799003|376014|19092799006|366016|7416014|23010399003|1800799024|18002099003|22082099003|11063799006|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info:
	78ch9LNb/zwHL5xzu1bI0xsg5+P+h6ivZHRaXjzX/pTW3WS/K5iDGOOk6L/VJTETslz0C9qxjmFVHLVPrRGMqH4+GAcwIK2F+7sGQTdIfX2vp+cN+kXGQUhQDlKMgmfbwmZ7o2fZ/s9dM/Q+wmXdMeYJslWVf9qxSYaKnMf3GsZ/SazRmhJB7mdZ09fTfOuZyIYA+Ma7Jla59PI1I33gPZJH+vn5Oxv6GwmuWy2QwW0b5+fbChysV5qUECHvot9IvRuA/yilhlW0O/crQOLwFLWcc92GpD/SM0s6YonBfutE5Pz3NQfOUKaoVlauXvRCVsHSPTa4F0gfs5jcWljiVhdFDfG+noP63HJB2kkC1n7zO4ttswbxwiOfPt0ZpOyaaadQ9p+ToOBM6aY/vZ2kVEHtKtrXzyUvw7UUhiA5qy8K61EJtUrOJxPsul/drX1UPb6XtRvH5nQM15svyxUxxFUMg2ikV/ICQszg9SV942VhbHzOPasDhOYAgogbyO3USr9l37D2NVP3VTHCBjzoTnOEw4G1f/fsSkdK3RjKxxRMZO5Q4brcpZ+dqCBN3FG03cAawCqPiySU72qPrps9tU05WDWSIMLe8RZIKN6cGTBgxgi1M4FFUoQAIe+Rkv2Yt3bA72HhP/d4iXm2/ngSopx2Tzzf0mKza+++eO9VjdBLHY8aXIc2MxepqjJh9TKE
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6900.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(19092799006)(366016)(7416014)(23010399003)(1800799024)(18002099003)(22082099003)(11063799006)(56012099006)(3023799007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?VHpUJBONhdRgpmlhBKw6T456JGfLlQpVtiLaJvWjyulfwFyKC1ixLoSp/tYe?=
 =?us-ascii?Q?REKBVdZQY1AwA096Y65PuOYMsrvO9wjda4/DyfErT9yk/DnrtOkdyI9puBnY?=
 =?us-ascii?Q?wnXlaGmmYv8R+quBPJiqfA9NK/DXKrhvCfCBBmrdTjHIoubm0+YAukqi32gW?=
 =?us-ascii?Q?1Oah+HFVfEBueZeazGHIJtgC8075reHAbp3XEcor2Oww9ghLiV3F9hn57clN?=
 =?us-ascii?Q?kQoPtzMgSXS47n1ytkvhxY8X1OuCMQinIPBe5U/frG1q1PZ94/N2k6lKI+uL?=
 =?us-ascii?Q?3/GA00XFM/B7DB92qGB67qy0JBler9EGNZxlQ0CHC1sRGM4jMulSk25mrCj1?=
 =?us-ascii?Q?ng8ZefyM72MIcEOiD4Tbbz64gs2tOWUxiDWAV4F+FfLLI81K21WUCakNbfu0?=
 =?us-ascii?Q?VB2D0I+3C+yHU87/ddK7cLet+3doVag6zKrBMsVwhVilCyzW4HAO/Mu5SGuX?=
 =?us-ascii?Q?dl5mVYkjiACHVyUSwSMUuB3J0Mxhr1+9dimWwpu6e+8iK2MenepNsXRCC3Tq?=
 =?us-ascii?Q?0xwtkD2ExrYjCHsAtwqDA3Bo4Qb50GFxjo26y260LNJgxbCYByHIHLrRJKd5?=
 =?us-ascii?Q?iZ82YuRL+Rbb7YlEej8VI/Pw0D+4/W8zCaKB11UkcwPS+ikxV9M1dyFCd5lf?=
 =?us-ascii?Q?tTsxmT4LIQiZr351TyRV3FPOi585wEasz2ldghqRmZC66uED2g6HEBziFEI4?=
 =?us-ascii?Q?hJWPPDQXhvQMKoSr8kwbp/uwFW4aQaxFnY7ukqtDCJ958hX4B0tpu6WFzzD9?=
 =?us-ascii?Q?NB56dDV6x2mVW9sdgaL4lH/OCqem/lX6mgvEd4vLew0iqvLfgInNZsBp7L1S?=
 =?us-ascii?Q?j7+XwknHTsj+VF2VpqMJ6tmF/mGWUT5/UGvMg1XAPKlr/1MITRg01tv3bObt?=
 =?us-ascii?Q?6q/zEUoSU+8G42G8fVk8HtBPdgCp7jkM8Qv1nWjpIgTJI20tPRpcmKfI0/2y?=
 =?us-ascii?Q?XrenkyprVWvVXvTkdA1sPEIBGXtc7aAp/guRx3Gb7k5TSlIn+PqSqUNuZYOo?=
 =?us-ascii?Q?ZwxRUW+SpElMhSX4xCbmiSDQOK0dcIhSeOqcCAXBDQlOc0sXFarWnznDK5y2?=
 =?us-ascii?Q?/HTHYc4uRyqfToFFDVSMlwjVx9Uy+21R3/aH8yQtxiRpWTEOtE+Ub6TgW8OA?=
 =?us-ascii?Q?WcrBhSCpkc2m2EVI7+DpFvJQRKyQ+dtGk9ZIVjMDXzEo9T1muZ/VRAJhOapZ?=
 =?us-ascii?Q?wwFMcGanIBNbyneVUNrimz1TyZNMBtUXRh/33Guz6MMkxvM42acf34vJz6Ne?=
 =?us-ascii?Q?wzu6q0ZcuOCdPAqQgsu67IXq8y6ue2OS8DQhmGABVr3e567C4yHM7RkMzHur?=
 =?us-ascii?Q?nMGzYEcniozjbLOTYq6myTxNH/0srkYRT5w4MGZqgdFAbjI19iWsz7jLj52n?=
 =?us-ascii?Q?hVOrKV8iRLua4U/R/97MrATzMkUT4lSy7TDLQdMBIh0JtPymuUo3EfK/k8HF?=
 =?us-ascii?Q?XsPfOiswUGkaCy5GWwjOcfv498UGsDbgyAMm6ML1V0tE+l+aD9Ub6B4vfU0Y?=
 =?us-ascii?Q?u9rYKGSoYcHO7DA/gboq1BoatuqAVL2NBkrIAwcSPpBN9PWxh9t0kAzcOwIh?=
 =?us-ascii?Q?WHbUkkC0SWWjlCuUYxwvkIauMAmZYtCNWW5baNb4ztEX2hBQCTEaumaXBnYU?=
 =?us-ascii?Q?g4kIXBvegaBqdW98IV/LvLbWDPZRBiW05NFw+aWu42woZmdUjmzdAN1JzQNf?=
 =?us-ascii?Q?6MiiKpwWETKg4BhpdgsYB160/7gHQuxBqJVq9nuKEBiodrXFHINxxvgwUfwn?=
 =?us-ascii?Q?1+XbIGj3eQhMu9fOPqgJ+72sB2L5AMJ2zOdRI1OVpxMXn4IgD4O9?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ed5e05a-2c91-4ae5-ed09-08dec7f14657
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6900.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 19:40:21.5427
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IQLjCBLRnuQNQa1tuA2JT0ktutfr5S0FVzCGWdGBpQrj2xb/5TAXY8Rk3Z7lI/xQjJ+M/rg21RtMVa556ZByiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB11017
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310576-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[vladimir.oltean@nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:linux-arm-kernel@lists.infradead.org,m:ioana.ciornei@nxp.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:tanjeff.moos@westermo.com,m:chleroy@kernel.org,m:mwalle@kernel.org,m:shawnguo@kernel.org,m:Frank.Li@nxp.com,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vladimir.oltean@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,nxp.com:dkim,nxp.com:email,nxp.com:mid,nxp.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D41EF674CF5

From: Ioana Ciornei <ioana.ciornei@nxp.com>

Add the fsl_soc_guts structure in order to pass information like base
addresses, endianness etc between the init time and the runtime
operations (RCW override) which will get added in future patches.
There is no point in mapping and unmapping the DCFG CCSR space every
time we need to make a read, just map it once and keep its reference in
this new global struture.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/soc/fsl/guts.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/fsl/guts.c b/drivers/soc/fsl/guts.c
index f87ee47c1503..a0a52a5603a5 100644
--- a/drivers/soc/fsl/guts.c
+++ b/drivers/soc/fsl/guts.c
@@ -106,6 +106,11 @@ static const struct fsl_soc_die_attr fsl_soc_die[] = {
 	{ },
 };
 
+static struct fsl_soc_guts {
+	struct ccsr_guts __iomem *dcfg_ccsr;
+	bool little_endian;
+} soc;
+
 static const struct fsl_soc_die_attr *fsl_soc_die_match(
 	u32 svr, const struct fsl_soc_die_attr *matches)
 {
@@ -187,9 +192,7 @@ static int __init fsl_guts_init(void)
 	const struct fsl_soc_die_attr *soc_die;
 	const struct fsl_soc_data *soc_data;
 	const struct of_device_id *match;
-	struct ccsr_guts __iomem *regs;
 	struct device_node *np;
-	bool little_endian;
 	u64 soc_uid = 0;
 	u32 svr;
 	int ret;
@@ -199,18 +202,17 @@ static int __init fsl_guts_init(void)
 		return 0;
 	soc_data = match->data;
 
-	regs = of_iomap(np, DCFG_CCSR);
-	if (!regs) {
+	soc.dcfg_ccsr = of_iomap(np, DCFG_CCSR);
+	if (!soc.dcfg_ccsr) {
 		of_node_put(np);
 		return -ENOMEM;
 	}
 
-	little_endian = of_property_read_bool(np, "little-endian");
-	if (little_endian)
-		svr = ioread32(&regs->svr);
+	soc.little_endian = of_property_read_bool(np, "little-endian");
+	if (soc.little_endian)
+		svr = ioread32(&soc.dcfg_ccsr->svr);
 	else
-		svr = ioread32be(&regs->svr);
-	iounmap(regs);
+		svr = ioread32be(&soc.dcfg_ccsr->svr);
 	of_node_put(np);
 
 	/* Register soc device */
@@ -263,6 +265,8 @@ static int __init fsl_guts_init(void)
 
 err_nomem:
 	ret = -ENOMEM;
+
+	iounmap(soc.dcfg_ccsr);
 err:
 	kfree(soc_dev_attr->family);
 	kfree(soc_dev_attr->soc_id);
-- 
2.34.1


