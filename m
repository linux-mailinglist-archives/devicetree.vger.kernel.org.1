Return-Path: <devicetree+bounces-266192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKEcDDiElGlBFQIAu9opvQ
	(envelope-from <devicetree+bounces-266192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:07:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C918C14D685
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:07:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 33D893011361
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 15:07:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 079A736BCEE;
	Tue, 17 Feb 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b="g5jxTbCH"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010056.outbound.protection.outlook.com [52.101.85.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AED2A36C5A1;
	Tue, 17 Feb 2026 15:07:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.56
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771340852; cv=fail; b=EAEmckqD4xfLD8XEcpxfESyJ73R8UM1fp+0K0PAXt/cB4J4aIMxXPWNd7O3d8QJmzTFSaloJj6Aaz82STe6617/dfSWs9LCIn6ZHZSuoCf5Oqi+W0fJwCAew4uIJI9+R9Z5x5uO3mGNvPZ6ZsyEqWK7F04qu+02etGCzhkmdouo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771340852; c=relaxed/simple;
	bh=86iilHbMPH1BK2iceuhKVb8svbOwAQK/UKenWy2sW20=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c+hTLL5OzdUObU55kM5SRVLL1CPjXkG4kONWir10dj7nRFlY2bp5Q1K5OWAxaOboJTkMYhxivqcy+YmhvSGGRU9MdLlU5P2wjt07o6SDXnKWT3tx9U8f/KPH8GxpftJYB1s9ndexhsXfrUq/sEkjWLt2YksE4d99TYYNJ4gFZr4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com; spf=pass smtp.mailfrom=gehealthcare.com; dkim=pass (2048-bit key) header.d=gehealthcare.com header.i=@gehealthcare.com header.b=g5jxTbCH; arc=fail smtp.client-ip=52.101.85.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gehealthcare.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gehealthcare.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L6q2JsU1UlHOJrtYCSTH9Srx8Twdcv57BCJY3Z5TzSz8AvLn1M0YNBZJT4jc3CPkDW/fotIt/7wvhN1zp1ViNk+YLsauaXsUgWxsdCMANynLJoaQf15pwS/kH+8LkJzLaSaSxWrBX8QjLdpJOF+dCDTB3iMpJbbAc/v0K1VzX9PNurc8JkO8QXmzRXkaK5/2rHN5qPJLnomXbj+/ls9AuqRgFci19xoyEUWAdTc74CXcOG/3NC/WANfhHs5+aD3W+ClqIzZ5MdwNsWLDrg5iWQZuQNooz4RgQH4s3q/o487CbnF/9aLTt56Da3kjaf1jcvppJNs944fns+5z/VTu0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cbm/bJsi/ugzWpy1XB2PlzFUz3kFRq0DO90f/pDUTK4=;
 b=ngSQeVcoQYEXqQ9wUoknKUyNLMjXw9i0Ch4jgKiI22ovwyaitD0pmuEUR0s9OYolEJjqlJErnbeI8e0PsRHnukHSTZwToG5Z92zqvZDaexr0Ek9plcaioJi7Z7YfxrANdnOB/AHZFK9zR2nwJI6ORUpyw00lcc8ZvprawO6cAu8khCe3iNhBScKT62KIkTI5FGq8JZL/eKeGE8xo3Fk1uc8VEm1NgHRta7INh+750+5yWh1LfhVWjuvTUv/9+2atuyyEQpmEklIQqkMNct5+0g8Vcq7rnTDk4s3HLwTwbPMJejRrdhMk6dEVA5B7+0fPYOteY+Xcbl/9dpFcAi3kng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 165.85.157.49) smtp.rcpttodomain=vger.kernel.org
 smtp.mailfrom=gehealthcare.com; dmarc=fail (p=quarantine sp=quarantine
 pct=100) action=quarantine header.from=gehealthcare.com; dkim=none (message
 not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gehealthcare.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cbm/bJsi/ugzWpy1XB2PlzFUz3kFRq0DO90f/pDUTK4=;
 b=g5jxTbCHbnIK9MeaL07Cmt1awjdXw6wtV+0TTVeSdVb8WTjMlaJt/PWrt8K4vylxP0CQf4MWb000ihPg0D5Fiv6U9yJs507OAMvng/J45ie5IC8KxQyFRjr+TtA+DfmKmNZLFJl2flBgd1I5w5oBSd890k7s6+YPTjKiPLMDT3IxwEJ9kvxAa2XyquKjYigXGW7+f6XeOgZPuTzFEqfSND3ivlzA0Ysrx3+U6ApuI+azyEFSO5vG4IvAG6kOmHNBclzyrS1qGWcyp7AHYYOzjpV5NADV36z3DhocT6gq68lgLKaR/hi78xKa+U2kjfSWx8O3Y1VfDd9WdOkPWaW6ig==
Received: from CH5PR05CA0012.namprd05.prod.outlook.com (2603:10b6:610:1f0::10)
 by LV8PR22MB5616.namprd22.prod.outlook.com (2603:10b6:408:233::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.15; Tue, 17 Feb
 2026 15:07:26 +0000
Received: from CH2PEPF00000148.namprd02.prod.outlook.com
 (2603:10b6:610:1f0:cafe::60) by CH5PR05CA0012.outlook.office365.com
 (2603:10b6:610:1f0::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13 via Frontend
 Transport; Tue, 17 Feb 2026 15:07:22 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 165.85.157.49)
 smtp.mailfrom=gehealthcare.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=quarantine header.from=gehealthcare.com;
Received-SPF: Fail (protection.outlook.com: domain of gehealthcare.com does
 not designate 165.85.157.49 as permitted sender)
 receiver=protection.outlook.com; client-ip=165.85.157.49;
 helo=mkerelay1.compute.ge-healthcare.net;
Received: from mkerelay1.compute.ge-healthcare.net (165.85.157.49) by
 CH2PEPF00000148.mail.protection.outlook.com (10.167.244.105) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Tue, 17 Feb 2026 15:07:25 +0000
Received: from zeus (zoo13.fihel.lab.ge-healthcare.net [10.168.174.111])
	by builder1.fihel.lab.ge-healthcare.net (Postfix) with ESMTP id BFB18E8F41;
	Tue, 17 Feb 2026 17:07:22 +0200 (EET)
Date: Tue, 17 Feb 2026 17:07:22 +0200
From: Ian Ray <ian.ray@gehealthcare.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] ARM: dts: imx: bx50v3: Configure switch PHY max-speed
Message-ID: <aZSEKsT3f2paG0gx@zeus>
References: <20260217125952.53997-1-ian.ray@gehealthcare.com>
 <20260217125952.53997-2-ian.ray@gehealthcare.com>
 <6dc304c8-2e65-4090-85b2-4b69a5751823@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6dc304c8-2e65-4090-85b2-4b69a5751823@lunn.ch>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH2PEPF00000148:EE_|LV8PR22MB5616:EE_
X-MS-Office365-Filtering-Correlation-Id: 376845d7-234a-4696-031e-08de6e3642a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aHNycmN0Si9BSWwrK0wxOUR2cEU2SkNob1JyeWVsUkYrQUxlOTB4cFNabEtr?=
 =?utf-8?B?d29rWGNWN2hoajdoV3ZrUTNYdTBWeUN5b3Q3eEIyVk5OT21WbGlVeWJZdVE2?=
 =?utf-8?B?Vk5HWGlJbk5MalV4aWkvaDJaQzM1OHZzQ3lwMWlMV0xnYVlicWpBV0Z5andn?=
 =?utf-8?B?MnhqaVJuWmlYVmx2MVgvWXZuU3RUOU9BV0pvVm9WSmVGTmdJVGE3UUUzT1cy?=
 =?utf-8?B?bGFTRDF6dnpTUEx3WVNtc0oyKy9qclFQY0pXMlJnNEd6cHVoK2tZaVlHRzE3?=
 =?utf-8?B?bzRGWG9aT3BBYWlmaEhCSENhRFN2K0FFcDkzQjY3VDVzVFdBcmVEYiswcXVy?=
 =?utf-8?B?SVFMeWxXY3QrS1N2amMxWjd5UjJFT29zL3B4RHM2d25QZUVteWd1K0Nuby9G?=
 =?utf-8?B?Mmw4L1Jsa1gxaUV1bUpHUDRGMUlmU1VCRnRQeU5ncXBwRXVGbDV2V0hrTGtm?=
 =?utf-8?B?Ry9ZU0pQN2FmLzRVWU9TNi9ET0NGT1NFUWd2VlcvUmVJajZvRUJsKzZ2aklt?=
 =?utf-8?B?NFI1aEFrcjBrRzMzMDJqd2RvQ1crVnJicHJPUjlTSjlxTUFNcFl1LzY0OHNW?=
 =?utf-8?B?QUppcWZlaERpRlB1d3dwNjFjdnp0VnJtaUVOcnJiYWk1b3dXN2t2TERXeFJ0?=
 =?utf-8?B?Rk1hbnFWbVpiUnBhb1pVKzBRSWFSc0NueDh1NzNzVXNtRUNlTnBuSXpMaERS?=
 =?utf-8?B?YTZHTENkdU9zNzV1QUhMdU5uVWRNT0VsQkxJd2FST3RUMjdYYzJFY2gwRjZ0?=
 =?utf-8?B?cmpYU3VpeEFTQTJrS2pQSlBUZXJVdHhTUzJrOFd0VmQxQjVhVTFlTlRNa2tr?=
 =?utf-8?B?OFB1Uk9zNUhkWkpFYWVjeTRMWkMzQnRxcXUvU1Y4T1RHeEpuQkkyNElDYlc3?=
 =?utf-8?B?WmlkaWtxcUE2Vmx4Y2xKSmlJSElpdUY4YmJ4bWN3MWtsQzdrTmNncGx5aEJa?=
 =?utf-8?B?Y2ZmSEgyaEN6MkVUTUEvUFZiY0xzY3NCNVM2eis0ZTB1NjhXaHlyOFpQT1Nu?=
 =?utf-8?B?VHV2ZnY0RjE0ZHNib3ovZE5IS2EzRkVlNTgrRThhZlJZRkN4T01VTk9DTkhU?=
 =?utf-8?B?YldWQ3MvdCtOVnhKT2Q1cS9ocllWR1R4d3V0bW83aDBZVFJOY1JlWUlJRmNC?=
 =?utf-8?B?MnhDaDNraHZmMm85TS9iOHBXQjlIN05kbWRGUG5wMVBpSlExSXVPQzVGSDJm?=
 =?utf-8?B?TjErYjZiUnJLRElqT0l5QlNOd05DK2NaU1RUdkNTS25ucWdybWtEOVQ2NFZz?=
 =?utf-8?B?cXZ3aU83YU1VeWJBOHg1THRLOUZNeHJsWk45VlhEdTRJOWpwYkFNWGZzdU9y?=
 =?utf-8?B?M3d0Vkw3YnZtL3h4Z2hNbFRXbU9ha2libXJ0OGg4YjBmWHZFaThkcStudEw5?=
 =?utf-8?B?cHlVVXdkOE01NGdQY0N6aVVEZFg2cHdKa3NyVThKSFlvQW5LQmtWN2pzU1pn?=
 =?utf-8?B?Z2RFbG1oa1UzMTZMMndlenFobnpmT2pMNlMzK1pGd1FZbzU2cjA0MWNPSXhp?=
 =?utf-8?B?emZpdjRGLzBIcHBWdmdlZ0d5VUlBYnh4U2Z0bUdrTXN4b3BoVUg4dWhVNnZM?=
 =?utf-8?B?ZVZvU0RVTTEwNEkwalcwMllEd1lkOVNuaXlTdXlVWEx6ZEMvbHAxVkN2K3Bk?=
 =?utf-8?B?bVNhQlJXS1B4NlFxWlM5K3F1NEVWeWM0M285T1NubEhnQnlFYzFTeU80YmtD?=
 =?utf-8?B?aEwvQ3VrOFVCeHdFemptZWJZd3NzY2xYeVdjb1hkOGEzb0I3eHVULzdjd1BQ?=
 =?utf-8?B?cEN4U1ptbE4xYllvYkpLMlFoSWc0S1cralB0cFNNMndQTS9ZSzJsN2tnNy9I?=
 =?utf-8?B?OGJ1c3UrV0pVWXZZUlc5UnRUdzNkQmVWdk9HN3ZlN1VUNHFQOVhIYXN3R3M1?=
 =?utf-8?B?MzVVU2NOdEg5eHcrWWxhWVJFUWxNQ2EyaUlHTW0vdWE5Ym4yNzJ4eUh5QkJR?=
 =?utf-8?B?d056ZVA1Um04eGw0NlFjdGY3SzlxT1pkOTBzZnBLbkx6bmk5aVVtTjZlUzhL?=
 =?utf-8?B?clRJR0VvYVkzQXNlTTBHNXQ4cTA4ZGJXZEJ4UGIvTWhkU2pmbWtRQWlKQW1v?=
 =?utf-8?B?UWh5VFJncEhsc3RIUHpWWjgzUVNvbVduazE5c2RVdm5pVHlibkkySHZkMnFu?=
 =?utf-8?B?OWM5Skk4c0srSDJ4a24weFFoT2VxOFBMYWN2L2JkaXladTNKeHl1Q29NbDBm?=
 =?utf-8?B?TnFqWG82VW5vMmxyOHYrZlMvM2trNXRKNEtMWWEyRUUzVi9zVUVaTloyM1lP?=
 =?utf-8?B?ZURxdXBWVHhnbmZZbnFzYWtoNjFRPT0=?=
X-Forefront-Antispam-Report:
	CIP:165.85.157.49;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mkerelay1.compute.ge-healthcare.net;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(1800799024)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	bSKUhMI/gKBPQns32on1DKlUptkidyY0iPj7MKm+EMDhIbYueU8gw1dhh2mG2EoOqleJUmAY8zo2McmgPg0rcIk9vclu4vVXDBtmoYmsiSdzVoHHJYfC8opj9R6qmXFSV+YwFpuVZAeFdjiSfHGEM1FrQTD/6wekAuvluFTO2unSL2G55lYDUMWbKNJMF4Zy3mMKTTXuduaDfQhLDxG5yJzNZMcKOXojrTQmqIKYHHhye7ukVa28HhlenJ77Sq4zLlUajcUy8nhbWk0OQgRAdicInkHUJbXbp4btzCgwarp4Vv8kbrxj9jTkcYDVzE57owR7P7/gOf7o4aHNmxzxrwuQ3cLLFqImMA761FSbT1AX7acbKXN71GzT//ZAEq87jr1k/xmq2CAk/vZtn+fvOp6kIWrzxcZbXW31YEp1VFowlkYIXwTBeFvttPorcK0m
X-OriginatorOrg: gehealthcare.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 15:07:25.7110
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 376845d7-234a-4696-031e-08de6e3642a6
X-MS-Exchange-CrossTenant-Id: 9a309606-d6ec-4188-a28a-298812b4bbbf
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=9a309606-d6ec-4188-a28a-298812b4bbbf;Ip=[165.85.157.49];Helo=[mkerelay1.compute.ge-healthcare.net]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TreatMessagesAsInternal-CH2PEPF00000148.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR22MB5616
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gehealthcare.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gehealthcare.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266192-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gehealthcare.com:dkim];
	DKIM_TRACE(0.00)[gehealthcare.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ian.ray@gehealthcare.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C918C14D685
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 03:53:08PM +0100, Andrew Lunn wrote:
> CAUTION: This email originated from outside of GE HealthCare. Only open links or attachments if you trust the sender. Report suspicious emails using Outlook’s “Report” button.
> 
> On Tue, Feb 17, 2026 at 02:59:48PM +0200, Ian Ray wrote:
> > Configure maximum speed for the switch PHYs according to the electrical
> > connections from PHY to RJ45 connector.
> 
> Are you saying only 2 of the 4 pairs are connected to the RJ45
> connector? And i assume you are using a 1G capable PHY?

That's right.

> 
> > +                                     max-speed = <100>; /* only 100Mbit/s lanes are routed */
> 
> lanes generally refer to SERDES interfaces. For twisted pairs we use
> pairs.

Thanks for the clarification: I will send a V3 in two weeks time.

> 
>         Andrew

