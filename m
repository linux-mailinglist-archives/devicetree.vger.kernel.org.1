Return-Path: <devicetree+bounces-295787-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKCgGJE6AmqSpQEAu9opvQ
	(envelope-from <devicetree+bounces-295787-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:22:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B29515BE4
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 22:22:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 53154307C438
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 20:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 208B038239E;
	Mon, 11 May 2026 20:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="SrsLMAZN"
X-Original-To: devicetree@vger.kernel.org
Received: from CH4PR04CU002.outbound.protection.outlook.com (mail-northcentralusazon11013033.outbound.protection.outlook.com [40.107.201.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83E213822B2;
	Mon, 11 May 2026 20:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.201.33
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778530909; cv=fail; b=UvD3wtXo1FILDxmboykEdN74KlVc4HFcN/RwmHCh8y0wfBT8JKLdny7IVTqlcxGDZOF7Ha6jKs3kMHxdgZPXIcpJXraG2LI7p2BCMewgHSycIiG+WT5RHwGU6xlm1M2wnARIlLTWN+DyK9cTkQwzZGKlAfDN2gO7+RBVmIf+ACc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778530909; c=relaxed/simple;
	bh=DEYW0IBmsy/5/L/8TqmFgnvM0W9QN+/rRvUlt4cN2lk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SMFkGagtJP1EzLvml8YPj0vSJGzLKBqRtdTJ01le8bup8F+GlL+VuztSvG2HQ8Dg0qe0lr+a7X8hL5YsPpBn4wff+ZduUBdz2Sy21E3ZShkDo//ZEUpHPiK2FTJpcN9J+81e6CnXkIqEqj1O897Zw9cWTg7WIP2yfcO543EOyOA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=SrsLMAZN; arc=fail smtp.client-ip=40.107.201.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZRiV8fRjJLVjMelI+NXT0emF/kIWHyel3/YODUP0ImKY8fcGzZx8+4Xo+s733CWF/SQTr1DSL12MWVLRCcpZpMqGctxozb6CaGTl1LK/ECDPjDljhPxUhxR2LkPjci1ztSaaxPtb3JfAbd04ALCejt4kMpMg8VEM1OQLBlKlQXe86xLLzVYerWi5RK1INsQt6ZhJF5ISm/98AUEFS+mZdgWSwDF4hDKT+c90/1mp3YiY9D5srtC9NTjaokGn0rERgN71g4AethDUmw4Tz5ofbKDSZpQJ6HBrEg89bG0ZWKId9ptYM0fwta78oslqf+l1oa+aCL9CuWetd8nBUINVCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hExPS2epJiVBIlwbjhpfZnN8SK/A9KkCg8r3aemBIM0=;
 b=YOR8dN3mp2hxm6qEBtxdbVDUv2E69v/GhZiIY6Xfui+Dr7szh4tt0d8XPVY1hW+hyv4bp2LueDA3r7xocOiErAiT4agPR0qJsRPuG5dxmYGI5rFWLLPH8GeT0IKVfGsBcCVJ3e4EJ4BDHfUICqUPxyPhvZKQH86YVBfFtGbyJ+S2TNJiaPGX1V9fGLjrATTL7Qfef31yd8hRO0+76XbJkRS2jVWAfJfWKOJvbyQi0aoMJMntF3VD5/0OL0L3PGAkAHIOO2NQxPAUQG8vZNnbSGYkrcVaXvzsBw1tA9fgAu7lnROm76hZgWNa79AgBZLOYRGj/YVAGWLX0OxNVkL0RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hExPS2epJiVBIlwbjhpfZnN8SK/A9KkCg8r3aemBIM0=;
 b=SrsLMAZNA0VtGSMF7vnJX4vcQ+clcDyOkq/R0eJ6Hts9f65incHivmvnwr0d8vLvBs4/upLQ5+Oav6KuQgchUoQ7FuplVw17S9hprdZDhN9sLJyu5YFz+3Jdbar+GdEFobGi299ExJk+LpS2WsAoTOQ0Eo+pnEahZbOdoRkm0JJP8CnTRn13n/S36r3NgAcKjVr0EF8z1MA5tdU8RJRWvBJm5hxYXYg5wkfceeJnyB9arEMDI95GKMi/VxqkuQAqbcTI0e5BXwHEoS5DH+1H9CreJ6mNgXP+m6O8eN20aXnK57H4mFdfR55zqgxC7pzvNNMAbm6oYcx9nvhkU3dwkg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from DM4PR03MB6208.namprd03.prod.outlook.com (2603:10b6:5:39c::19)
 by DS0PR03MB8296.namprd03.prod.outlook.com (2603:10b6:8:292::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 20:21:42 +0000
Received: from DM4PR03MB6208.namprd03.prod.outlook.com
 ([fe80::2216:93ef:67b:9e04]) by DM4PR03MB6208.namprd03.prod.outlook.com
 ([fe80::2216:93ef:67b:9e04%6]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 20:21:42 +0000
From: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
To: linux-mmc@vger.kernel.org
Cc: ulf.hansson@linaro.org,
	Tanmay Kathpalia <tanmay.kathpalia@altera.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dinh Nguyen <dinguyen@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 4/9] dt-bindings: arm: intel: add Agilex5 SOCDK eMMC board variant
Date: Mon, 11 May 2026 13:21:26 -0700
Message-Id: <20260511202132.5597-5-tanmay.kathpalia@altera.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20260511202132.5597-1-tanmay.kathpalia@altera.com>
References: <20260511202132.5597-1-tanmay.kathpalia@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR06CA0066.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::43) To DM4PR03MB6208.namprd03.prod.outlook.com
 (2603:10b6:5:39c::19)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR03MB6208:EE_|DS0PR03MB8296:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b2327ce-29b1-4060-810b-08deaf9aea36
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|366016|55112099003|18002099003|22082099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info:
	v6tIjb17nXypRO4EZeKUPrdKGBTx49/6GNV3y/cqbOpl7JGjJTOeKe7K+ppfWxvGV3Sr0jqKU86UCJuaE3Dxnyg6Ku+1CZ0qw0Z+j+ggMXNB/KdxqKRtNgtCjyZWSJOOAFXudPk/QezLNm1LW9peXB7ds6M1wqOdpHgBD7WyZp3ZB4nVkymTCLbfkLBdqlILp/L0QttGbYEzEzQ39AJ5NtlVnVGPdxKfPE3LV5svs13IFXvFEdimLdTAl2BI7WNb58vwZzAlSB4QvWbj+g0hnCzuBzIcOol18csTp04EXnoza1X8v1YwMn4vw4avi6cm9acmHeFBNl+8oNehZG0e254htW9r2Zkb/xwZG+XDD1G3DVExWMsONFSjqU3I1YvKNiSh3R8+Wk60PpOmJDpFrfYuDfX/fb/CaX9Et8f0Ze46Cdw9EnfpkSZA2rk9gIu47URf8LnnmDd5Ah1PD4xDiMy2YA9MKWPwVuKFoiQixUc1XGm6C16yO0p0MdylcQVYpYMX1BRQVhvsq4SRW91JrTOLoTQD8/FUKsu0lYjYVWnWhVQTrmmM1WYFdt77X1nHtPzZyMqIFxziODCKjDrpVJT/O6gqDaLctqJoXGQKqICzPXj/ypF0arbiTAckBUPYqFgoFIHAhZ5iNr+/T7HYM53x2QqPpiqmnqj9sZ58lDrsI0yAzfijo4Rl/5DdR8qX
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR03MB6208.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(55112099003)(18002099003)(22082099003)(56012099003)(11063799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?WkV2FikrT4I0mNr1CCt+ar8ANXnyZrM8UTsR2qZCuwRV78amWJ2YgMnD/SVC?=
 =?us-ascii?Q?7/2jJHt1wIpYXFPeadqsznRmY+pY9pL9I+7xWhBArG2Qz3czZUauHPpx+0tg?=
 =?us-ascii?Q?TCst0tZTjIzkdwbe+8EdH7flb4wGUpCM2BPjZKJByXMRmYRr60u5WwPFvUV+?=
 =?us-ascii?Q?BHxVfI/SvfZe+pQ7cmhc6qiy66YPyu+3NwB9S9Eufd/iLaNRN24+wskE0qPO?=
 =?us-ascii?Q?TPqB6/QQ4ayLoIfv0mIkp5v1cXBGztmwHvFaOaBF722HZdpAT2dKAa1CEADF?=
 =?us-ascii?Q?iudAvVmueix453XVo26vXyF7DpXa2Ok5WH/RxyL6D1HRiO0swHZ5HJKnk58C?=
 =?us-ascii?Q?SDylt3almxEIQzgtNbas9WvjShl3QpqqF6mc2Qmc/sWTDzsvtTniXx9kX6e+?=
 =?us-ascii?Q?r2Jut68tgknAs0eYzxhm8g6SHA5vfvQeRIvvczrZHES8+xifOBsDqsfrAm/R?=
 =?us-ascii?Q?rivtkVEFey+ehay6fmf+Ct9+ZjB+bhKDA4RON4FUiMRIH6rqsRxfTiyMzInj?=
 =?us-ascii?Q?ip9runrwFvT2KN991NVyYr65Xz94qJ7omj3qJRTH9Wy4TDFVTHrgcTD37QOX?=
 =?us-ascii?Q?RxZUykiuz3Uo6U8NniQrnpVeGH1n+hILgv4w7Jly72n8sWlDyfrnv3yg/XhK?=
 =?us-ascii?Q?9TPbe7O3dPz24oSqipdQggKG+jUv7LW14J6x0pIIUCMKiKaQ187ZViI1h6U5?=
 =?us-ascii?Q?fq8yeYu35mh1v8qhoogepz0A7cNy9MlHJ008esLzKC3tCYQLlfdXTMaLUNi5?=
 =?us-ascii?Q?NNIdmGaswS/5GnBUEwFY811hHr7wOr92azAvskzWsQ0l4ndkwHHpj3C4Y6LX?=
 =?us-ascii?Q?NHlStUs9k95Ro82dGckaNtX3wOOlFCJkuxvCbPmtEQ84p1EXpPR2fWrA+x1g?=
 =?us-ascii?Q?PD3LvgFiYdlgnQ4CTqfQA30vv6YY6J6NE/WmT3m36qU1ZlnzKQPIOXSzP8ek?=
 =?us-ascii?Q?ULNcQjYXhaPyUm3OmoGpuDmffbxnlhwmbs4TLLiLNzI10KiUhIAveok03PJn?=
 =?us-ascii?Q?SjCCcExf5gBgVwnEvwdVqXOGlBKSvadGf/NMB8XxLBiyoAkHqVWARJ1PBSbA?=
 =?us-ascii?Q?N8xAzhvzDu2AMb9+aWZqhcO3JGjqpMGdDkJRclUajvqu98f8n9KY3WNnwa6a?=
 =?us-ascii?Q?pU3nvbpp5FoxWciXWom2Bc6dD6ybYeSBn4kh17m6OgFu9An9zXZ2+o34/lil?=
 =?us-ascii?Q?FJITs/s49iYg2NxfQL2835S5CEoMtQPh647KlZ+iY5NoWe+1OT1Z1a7FqCqe?=
 =?us-ascii?Q?wgbbQOAEwItOXHBUlCyJob2BDEIE6UZ6m1zbbAsSSVF76VbFTHWNQz2ZRHSR?=
 =?us-ascii?Q?K+u4U67gCjhHDVknDh90G6njwHyfIjqD6gr6UCggjaVSC/5VM+PY+Rvx8HlV?=
 =?us-ascii?Q?KsRyfu+TFiYqB57vLCvGWK+TVxaXt8rOwgST2m0Ezrk9Pr0tgTbtRjyVh+6s?=
 =?us-ascii?Q?+ioAXLJ+tkKhvAMWcKbDaUuyMWGvnO6xi+IIsKg2QDyP4B9IyAMMMXZPngDn?=
 =?us-ascii?Q?NNR5wkw9++RjDDymCOyUDxhMA7o8oHJSRE4WYJlKW2n6+vnIeu9eFaEjnkyN?=
 =?us-ascii?Q?mph8n33nwSL3qUZrdma6/YOsWhQ5YXsFwSNCHF9lCKRc1X0ehKKXiKL2+GUq?=
 =?us-ascii?Q?sju4K/zJegU3lWkQgclWgOJl6NEKJ5jOlEQwBkOZ88CXOTW8GAVc6hx8DbDG?=
 =?us-ascii?Q?Im0zXl/jNzIR4hC4Gtad6rF2milJ5XOcdWKy9EX7MA2DHTBSMTySyzEZ7REj?=
 =?us-ascii?Q?B0/7yHa0jrDV66LInmY6iHnbAyOgo6o=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b2327ce-29b1-4060-810b-08deaf9aea36
X-MS-Exchange-CrossTenant-AuthSource: DM4PR03MB6208.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 20:21:42.4071
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vo5H9YVzM6dNzlBaI2wjmTKTsVx8ukVj2vRwH/PdqwAi0XQWa5p3gNG+olt1J3fQAHZITKhPhw8IiR/dZPrawYlAyRbuSWhSklmMyRbYlDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR03MB8296
X-Rspamd-Queue-Id: 18B29515BE4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-295787-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[altera.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tanmay.kathpalia@altera.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,altera.com:email,altera.com:mid,altera.com:dkim]
X-Rspamd-Action: no action

Add "intel,socfpga-agilex5-socdk-emmc" compatible string for the
Agilex5 SOCDK board variant configured with eMMC storage.

Signed-off-by: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 13a3a9696821..198692878e99 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -106,6 +106,7 @@ properties:
               - intel,socfpga-agilex5-socdk
               - intel,socfpga-agilex5-socdk-013b
               - intel,socfpga-agilex5-socdk-nand
+              - intel,socfpga-agilex5-socdk-emmc
           - const: intel,socfpga-agilex5
 
       - description: SoCFPGA VT
-- 
2.43.7


