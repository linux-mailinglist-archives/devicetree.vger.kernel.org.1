Return-Path: <devicetree+bounces-145030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E389A3025F
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 04:58:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 468357A16B0
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 03:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAD4C1D5CF9;
	Tue, 11 Feb 2025 03:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="moioQhPX"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2056.outbound.protection.outlook.com [40.107.249.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA5D26BD8A;
	Tue, 11 Feb 2025 03:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.249.56
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739246321; cv=fail; b=LvTcZqD8K0Knhd1R2TFQAPWZRITqGPXDqSteuIDoWSwtkuw+BWwErbO8QwhP6ZVURPSQk3wJGktZlicu9kY3m2dKQ8Os4ELXXE3k7iPI4JsPYw2M86DpcPa9sq0vi6pkB7FJxk70Kr3iDG4NK9xvginI4eSJerGt/9iLmI3hUgU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739246321; c=relaxed/simple;
	bh=8fJf5Pij0+aAgXNGr0ahQqRvwk+GtCrxfBmFDGqm0K8=;
	h=From:To:Subject:Date:Message-Id:Content-Type:MIME-Version; b=cbWM40GhMJgiDslhAizJCItkxzPAYRQoZdHMLGdnUR6xwcABIIJNoJalFrr/ztBHQkHBsACJ91oy9G/hoAte/oIPVG+1mprCHFsYotQPztUrNiIOMbbLdwU1588cgl9co6a4MZoUSudN3VSeL15UFScjJoxy1ZUiWL6Hp4CoUZ0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=moioQhPX; arc=fail smtp.client-ip=40.107.249.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y5mtD3BPuFjEWhFuSgVd8OwXVtKmTf/Q0QpuvUZVvM9y0lGIqOHuOiK0OfAaIgB6WF8Wi99YtdEFiATySgAgJF8wJyL9soOxNfcrKZj9+JTK1wLgW9mpKnRVY7r4nbj83mOWVYl3K25ujQSFv8rzKMkIiurXfWB13gcSuYwZx4IRWjHWcUe5rcPz3aaqOzRTof/4bmrUn4+1hbzxcbWPzLPqvvemGf6nPtP3Dttj29lsye5QZVN5p6a4QM1mwlb5ctan8rI4c8X1Y7rVIdZvbtFHgN9VG+F5PNDnbocCLBSLDxYdqsBfSkjBMkuJAhHvgDvK0lDjbNS5Ixa5ZxI8Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nOUx0sc3xw06PFDBKSCrBLAsZuZbVbNGYlDN8iWhksk=;
 b=M8ARdXNxlG4vd2LrccHDpcfQCVFfUsL9L7/aJDhc2ivcJdtlw40AVzJEBJE6P6wf8nJ8M8gxr23eU3/j/+0POjwAegV+5rLKs64638O5uzBnET1C3agwg9unPHdcZ92swkD9t7wBc48gLcq/vwofOappLAs2iC08rsZ4otL4AHfg5aj5z/DAahL/EsJY/poICPgWWR5H8+s7+qZ8FQknziqoNpKdIKNSIvD88fxePPHV6eL8pjqlCdMyu0gju+q+KlDclZpNfjBbTr4BW0aQszpjS0xo/BDP679qxIb16WvxZNyXfhXjBUzG1wsJztgdMFL/S6+CgopxefzNfDBKMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nOUx0sc3xw06PFDBKSCrBLAsZuZbVbNGYlDN8iWhksk=;
 b=moioQhPX30RT/OwEsNO13BY+reURDhjb1OZI8/TLqUXGLWXW05h1ZYP1z1Pn+u4zjsa1pOKrj+5oHeobXx0FP7AVlve1Fkaq6KnACthPeSErNbybh76cruUbClZta9rapPz4UTa+BuchuVNKzkN6WW6cnI2vUTZl3JwwBrVf6X9mL8dDWKEIKQ0STH5+YNAzw+OcoIF+ZjKQba5uAagS99pgckN52S3EuuOU7Lw5QfQUM6YJJIPWbYLUafSBavpO108nezIdEi3pEg/b4jLyZgeWwBffEtKvdTd3Ja6kLcxwJCcYU/wXF+3LhR5AKPuXdaIYT6Z/5Hh+0WyG1TzgOA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM0PR04MB7044.eurprd04.prod.outlook.com (2603:10a6:208:191::20)
 by DBAPR04MB7304.eurprd04.prod.outlook.com (2603:10a6:10:1ab::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Tue, 11 Feb
 2025 03:58:37 +0000
Received: from AM0PR04MB7044.eurprd04.prod.outlook.com
 ([fe80::7be0:296:768c:e891]) by AM0PR04MB7044.eurprd04.prod.outlook.com
 ([fe80::7be0:296:768c:e891%3]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 03:58:36 +0000
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: shengjiu.wang@gmail.com,
	Xiubo.Lee@gmail.com,
	festevam@gmail.com,
	nicoleotsuka@gmail.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	linux-sound@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] ASoC: imx-card: support playback or capture only
Date: Tue, 11 Feb 2025 11:57:35 +0800
Message-Id: <20250211035737.3886974-1-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.37.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI1PR02CA0045.apcprd02.prod.outlook.com
 (2603:1096:4:1f6::16) To AM0PR04MB7044.eurprd04.prod.outlook.com
 (2603:10a6:208:191::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB7044:EE_|DBAPR04MB7304:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c5a4aaf-5d80-43dd-83e5-08dd4a505c6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|7416014|52116014|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?0cODYNWzoJKsjVkYAQ1Nc1Fr2v06/ATihbRHdAKf6Z797l2+FaHN1HzC7TOq?=
 =?us-ascii?Q?1ec/0heJY3fSJ5BKfikNQ2GtN6uMOgcVUeA73sThh8wfS2IGqpEDorArZ5Vl?=
 =?us-ascii?Q?35uG6ISrSGsftFUFWzcYDIrFHAUHdNTok7N+yzT8mhX2stg7VBdk4EDC9kDg?=
 =?us-ascii?Q?vhG9JGBQwNYh4U3KZXmof93UhlJD9mugh04xKL0w+/rd+jMNrZuNrhz8RndD?=
 =?us-ascii?Q?Xo4ZoMZnF9HX7TpxYSmYOXVcnVQ3Se+SBNKPFLzNqrXLvnzNKpBzeT93asSM?=
 =?us-ascii?Q?GVImijjq5bSrCncDyxYMj968i+sRVoOfyZzwjyqO7D6GqRZbjKaeohapkLux?=
 =?us-ascii?Q?KH5w202eO2FQc1h+PrHf2VDZoRTm01FKPaOrqDyGkwWgRbxYQ0zsAslz6s0J?=
 =?us-ascii?Q?/ixs4eB400uwFGfnYbwdqwwn4sdy5nZg79Vejvzg4O/2xjBNi6uDpzHCWmO1?=
 =?us-ascii?Q?CDPyNCJtbmJ3iBYGhlWSAf0OZb0Um0jHPkUPA0pHlZMT2w8CRP2UcdXq8kiZ?=
 =?us-ascii?Q?H7DYiBxdxhAvSfyCeuLjLdzpEzb4ITtZRUbPLJQhH/IdRRBNOsQhOU2z76OK?=
 =?us-ascii?Q?AAxEeaN7fZ5BZ94SHwkNC9/sntymZs5bMDGXXSVmZ0yj3KUviW8p8XiaJ/Em?=
 =?us-ascii?Q?oQBgkYyYvebl23JxEQkFSeMqwjEBzYMvNpgLL/Cg96pFSGZv6bIiG5VZB/dh?=
 =?us-ascii?Q?RKJ2/c2x+n1pA3XiFZ72UfDURSG75/4Arwi7lFOGEiH8xzAes79pGF06P0F0?=
 =?us-ascii?Q?+FIZDvyYmpZDE7t+FJUKlglwP+ONtTQN3QiALlSNUTUE07ChS3r+n1n3iNO0?=
 =?us-ascii?Q?03F4x81YnCAsFeXezQn5yksJsa6xsQmiGhhLIP7kbuNf6GCRBT7lLIKalC6b?=
 =?us-ascii?Q?fQcdZBhfSWA778mcovEyIHOhiceGVouePzy9fX2niCRzdrOf93GiYXv1/rw4?=
 =?us-ascii?Q?3vhO6tbOMJrnjwYdblAl1GhKBGbDAK3aD7lpCZCgbqxwaIhV9ph36gnIn4Ws?=
 =?us-ascii?Q?urL9+DCxDuqakXhRJ6cPkVd+mOFXeQ+QqNqsSoGUI9nAlSvqQHr40whJeXJJ?=
 =?us-ascii?Q?NRrv8cqCFWMM2tMUuBRK9xsRsBEtGc/wu3ntIp7fISA4ZNm2B/qn8guPEXh1?=
 =?us-ascii?Q?lh0z3mL6EBOAq2mTIN+HpOdy+8rzJG9RjO7jbNl3H2MUKy5ejWCkQrCowOng?=
 =?us-ascii?Q?ccxqjqKL8xSiu6oW3GpdsPPoTCT6VkPDufgJZVWCFd80+KU0ShXp0iPnlL7L?=
 =?us-ascii?Q?6lZPgaeoqgYkA4vfX/IHUkpWnHc0MD8IBQmiu/ZdRx+b8lfD8rdb5c0lnokU?=
 =?us-ascii?Q?Ps0MTUzC6j7fGUuWV32P/0AdWeJk1Gzy+LJcGWlh8bVXm8rqeZvrfEpkUFGE?=
 =?us-ascii?Q?1IkdlT7Ih3tWbOIs1WSvSemYpyGRD21YG/tliVtY7lWlKf9PVwvEK4hyEnHz?=
 =?us-ascii?Q?f4s77tPlEJxoCVdsB9dSs3vN5ILw64OECKidq4XueSCLdbzklRTH4Q=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB7044.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(52116014)(366016)(921020)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Xi9ibGsARwq2UhGDt67Z/Dzu5nOwhBDJa38VHYfYAbjFWHkqIYWaVvjeUxgO?=
 =?us-ascii?Q?NTR5iQzAdabMiLcALETbgS2N82G4ShdOk3MQuaUfbpLrQu0UYJ0r7goI6h/8?=
 =?us-ascii?Q?Hkyy2e/jC0c7LPO+hRs1TTvNfIGrsfrYZxwoCB7jHUauYdh73nSrPbRF5LYF?=
 =?us-ascii?Q?lCQ3m6xoW2hD0495ZxYHWRpsfbPRsykuaquoIESGEweq4Y8QTj9LBL3yrgtl?=
 =?us-ascii?Q?h8l2J/4NtNRnb6l1AyiIX/+SAUMO5/xymHAX0me6gv3gssYWknubBbcQXqW0?=
 =?us-ascii?Q?cxepFGiDa22EHzMFmWgzrUCluXQc2ap/CdeY5YpnzwxJxy5HBjOOrkAz00fX?=
 =?us-ascii?Q?e51juXNvB63f++nhF4+2winzkjDtXL2VOoVuhEbT6aFCuqCdSqYzgh5DwAN5?=
 =?us-ascii?Q?cHxDl9grN1N654o2kk+9NTW1bIJLWMqlQm+SGLsZ5tgBpWG2KcoaHemNnn3S?=
 =?us-ascii?Q?DtSWhau3yk8hmgQHskpT4AjXRVBi2pDvdahZOTzLU6N2pg9w7Ld0DDCOWO93?=
 =?us-ascii?Q?g9VhDwbVCOUQIjPpgI5s1oXnbKp++bFHuJ3u0TnRhPjmOwQ3QtvK4deLWX3d?=
 =?us-ascii?Q?ep9GwFFqW3A4Uc4I9i8zgHRJTvTVdQVV7lftNPSymTb39A/dDsbuqQrWEbfH?=
 =?us-ascii?Q?SOefdt4UI/w0HEV7xXQHBrfc6IoEKQxL+ocIZObjgNDRSygmSGpug3aHB9VX?=
 =?us-ascii?Q?9uQqjhCaybmj19cDcviUaz5K5kZDIlP/I563ChorWv6PcILwFaqNNm1oIm/G?=
 =?us-ascii?Q?5UdgWE+rm1V8xp5F5nAuXcRSsN9ClplMom2O15yh0Z9n7UFv9Ajqb1g54DS1?=
 =?us-ascii?Q?+2qFL6iGZMTn34scmmU3oGvOxjzrL0nxhctkoFIr5GeQ4EZh1dipW9RkbHFG?=
 =?us-ascii?Q?YRZwCle+k2xiDpmpdBCXAcpSWMx94WAsFJ7pUp5PKKLkSS2Aeh8gNbBs+co8?=
 =?us-ascii?Q?Aa+CAZ4N/0mS2mf4KrX/uvu+N8soZ3bGoxzhr7/fGwFIuauXz+/0LNC1NXEt?=
 =?us-ascii?Q?asm7ne32qdWYsYNwsaw85ErNCbLlDEp62MJgdi6x/ioSrTGOqlWTFDNrCit3?=
 =?us-ascii?Q?SS6K0VeLd9Ma/Af4OGDtsf7S8tLxaof1FGJh3ESxfBGrE2ri5eV+3Rm4I06B?=
 =?us-ascii?Q?gfNiv/cOmmHKP+Smg07iomscIV8FjTRQVUGf3K62ACQei+EJj6i5EjCLb0pw?=
 =?us-ascii?Q?6FcPJ1UoaaudQ/9Vay/otXCUhBpSdXyM9XZsXdJ//nyXi6HluUKnS4BiqYLI?=
 =?us-ascii?Q?b1S5j2plzL4JCgzvQY2o5gyeSUvep1fDWMqg2x/aE47AJXjz/YsDYH58UvfW?=
 =?us-ascii?Q?yyL1QI4PtsuHth+BCGobI0i/JVhzFjQN+tpjwnDCpC42Ci/SE7FLf0v4/BrL?=
 =?us-ascii?Q?SxcZjFNzv+balCNWgEGRhStkhZLgcYkicIdl+jGjPPxtWGM50qD6n0hN4ksF?=
 =?us-ascii?Q?6ZlSnifaHc/qvLxOwSmUda/2Cmp0WaKzidSF2W575jJ44eaivvO8rsTrafKm?=
 =?us-ascii?Q?ygvtR//LM90oL3F4YAIoQyE38pJjWCIi7B7Z7oMPU9pWw3kxj5hwrCc5jJOo?=
 =?us-ascii?Q?V37dGjqD7CLjYhCV+YYk2ibWjM1KtEM3t+JDSiZX?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c5a4aaf-5d80-43dd-83e5-08dd4a505c6b
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB7044.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 03:58:36.8806
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PwVkkY+SksHyhIriWDaaO0yOdAnvuRaL/KSkqB83lwcFbiAdqlDnI7u0kRw8TvL7dIfwAQDhbbahEa/4d8MkFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7304

Be similar to audio graph card, support playback or capture only
for imx-audio-card.

Shengjiu Wang (2):
  ASoC: dt-bindings: imx-card: Add playback-only and capture-only
    property
  ASoC: imx-card: Add playback_only or capture_only support

 .../devicetree/bindings/sound/imx-audio-card.yaml         | 8 ++++++++
 sound/soc/fsl/imx-card.c                                  | 5 +++++
 2 files changed, 13 insertions(+)

-- 
2.34.1


