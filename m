Return-Path: <devicetree+bounces-76288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AA490A190
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 03:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A576AB21C47
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 01:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210B98C05;
	Mon, 17 Jun 2024 01:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="Psef+oAU"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2075.outbound.protection.outlook.com [40.107.113.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A1C1758D
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 01:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.75
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718586380; cv=fail; b=dtXXY1uNxZw0eThYXA90KxuKLYNCuZiECLCIyuac53pPZKLawIkyrENYeSlAfYef/bn3+/d60GqcmaRWRkh+to4s+5YcqjYFAySTohiCSzHNVWjBItfTo19j+d39MTELFTSKWjPAWI6FfayDhZJlRylma+fWcKN3RDIG8zrMM7E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718586380; c=relaxed/simple;
	bh=03uB/d8tck9+3hJtypAzEbkODmpEbU9w9fjkhcH6mCE=;
	h=Message-ID:From:To:Cc:Subject:Content-Type:Date:MIME-Version; b=H3n7dG2BM5xH8WC366BQ8gyF+zECwfffYosz22Qw03UdSlSzs3h9EozuRoiEFTQaNLMMf3jySXZr4hYbC++1NWaygvlmDAERJ6Q6fw4WEdW3M1EyJJSvlGzqkQU2UYNDyV8kIq9C/GM+f3XRAZ9i6yP4OBANPDvJj7d1t56Sk5s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=Psef+oAU; arc=fail smtp.client-ip=40.107.113.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EsTK2BD6fx+kyFRfvF5cSvOpT1aFxjFK5D57vv+/wmonKZ2pAzyq/pCo6h2P4eoZoyaDy5jBcvD4zfE2BaQ+oYYIyfJ2f9gL9Lm1Ht73k16OUbHwDM0sVHMJQJwdwqO7yBGyo2l/p9XtEN/LqKRS9CZj3rl1frt1m7F3WZjjU8bsGDlerNY2Ax0bS+k0RsdgDyuFaBpS1D1IGM+HidMM2Phny4GeHfW+h7SzTYqvcujIFL17Ob4VZwmFIOzqPIyVtAHxoMmo+lToy9178hMTCPtRrzLNx4u/K0HjZl3a7TKjsGhd+OySNkelG89nU5mLD5047xgLAr81UVSvSOAvgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z3aT9sNPCAx5T2fjw+FLbi8qtmPe1erKMfA+sEAlzNY=;
 b=doKp/cPJL4s7I3ur8tWfhY3WhLvqOixfZAMPN2Iyo+QCAs1ISKMdI87OLGHwotf35iUUYH8n/GEkWBkXC3z5bUGhHGTNLhOiY/tyDRcTj/+jm5kD043unlbrItdrWZLRkrHp7ElmWpkw3t+rUbIy11vC0ohQTzBiQ/gTxyY/kwCskq+kj153HLi1sugRujihu3UsdP09RYwGBB3YaQz9ITl18P0rCxOdi+zuOfw0qLSKNoUiUik22RXolgyvkinbE464cBEuRj4f7Utj9ijSSlVkILKoXq7eb0/KLCIoECCJueRUZ4r5pitRWnP+GjYt4VWC2HfFCIzNfJLQaAmYSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z3aT9sNPCAx5T2fjw+FLbi8qtmPe1erKMfA+sEAlzNY=;
 b=Psef+oAUnYdtWasIlUb05WnecivDslZ6n88f/EZMIV98HO0Qj0EDD3EACnH+6xLih5D14M6tJAblif7iJTliZlwXt2/qvb11SMNXXq3pLAh4U+6nmY410FnwQx/p7/yXQWZp//t7MCBRrmB1/9yn25QubiG5ILW9hNaiLmQujfk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYCPR01MB11912.jpnprd01.prod.outlook.com
 (2603:1096:400:38c::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 01:06:13 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 01:06:13 +0000
Message-ID: <87h6dss7i3.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org, Maxim Kochetkov <fido_max@inbox.ru>
Subject: [PATCH v2 0/5] ASoC: simple-card / audio-graph: add link-trigger-order
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 17 Jun 2024 01:06:12 +0000
X-ClientProxiedBy: TYAPR01CA0239.jpnprd01.prod.outlook.com
 (2603:1096:404:11e::35) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYCPR01MB11912:EE_
X-MS-Office365-Filtering-Correlation-Id: 187ba3e6-1846-41aa-9036-08dc8e69ae72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230037|366013|52116011|1800799021|376011|38350700011;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?vcuSzoeUFuUtIZ6D3AGMJ7Ue9pLPjNXwl40rC0/vJnXjtUPE0gMMxcjriXlF?=
 =?us-ascii?Q?T3zDfqv6rSTJsw7n1pNHeLIGrwivl3tlZbjYfncc4GedKWSY6JwAR7uEiu7m?=
 =?us-ascii?Q?uS7EhN8tVAerwSSWJ/O1Wv+UJ4K/T2h/XsXqLmVSP2TwtgOqph85spHmt4GY?=
 =?us-ascii?Q?5HfMKBHeAtW+ZB2gjdLN1gxZnUfhxSNJvxcPHCydG7uUX147x2g8+sYPDb3N?=
 =?us-ascii?Q?0txGqI7cOVtVc6BObE3pPJ2GFvaz0l0E/l8GR13O+GY9ccrZ2pkddb4Wcd5B?=
 =?us-ascii?Q?Unm+9AHBa8lRf5NYgB9liUgzsz6QMcKFpCOWpYHfPr0nH9O6NAWpEnd7pyy/?=
 =?us-ascii?Q?kAybQZYKnqMUjSHRUN5Ka/2joJrIjwash62uQEMdHt6auOZ2UEDH2B6Qm1C4?=
 =?us-ascii?Q?bXcBCk8cGA9kKkCp/kYH6i1MVBw6NDDoeTEah92zSdqyc0QW2LqvN8x4LUSX?=
 =?us-ascii?Q?Nkfr05WnBpwMI21jdqIKlBPE8w8N4LfJRpmNTkZjArN4eniGS2S/LdtOlaZE?=
 =?us-ascii?Q?HrJ/Q5sT5Vr+EDRYb0ZYV5VsA1V6aJIbwORdlbYX2DqJu1I4t3ozL1Jj2RtZ?=
 =?us-ascii?Q?clW+pP1REo2ylwkrQevUtZkOI3q8hsFnKUfnAuboF6TGHMjp0dA68t1pGrKf?=
 =?us-ascii?Q?v4QCMtZMYrkxzXKWbl9pfUHLemVVBQZMVzSrB/mk2ESc31+jH6MbDQf6Hm+l?=
 =?us-ascii?Q?e4bB2MFWgkXTlRQIb4m/W2fOT6vqhYNQzqGxzAPAvf3/YBEd0K2rXFC8mFJx?=
 =?us-ascii?Q?4PZG8I1TDlVbDHS1EjGoBLD7KBlx1xPxHmZhj8GO6QFaAO9A7vCjBrTNcBq/?=
 =?us-ascii?Q?YxDV/sAiHAtr8mISTniJ3VOKA1nvaJhJ0iZZbwWtgVq0rnK+pADzIIeO8qLy?=
 =?us-ascii?Q?pba4h5vo4Amb/c5i2uN0EQaABLvXQ1EajZu6o/UPux4mI3wuBoixTQS02ULL?=
 =?us-ascii?Q?B630i7J4CfyEh0neYasibtQlCeGjbJ8GBIy9N01VpSy8f/tTm9l+EAmVZ9qK?=
 =?us-ascii?Q?5v8kwbUy2fuRzQpFDLrAuMgqAKOWMDKm8ssLhIWfWmXMQ/rXdjEj8GbrIz+U?=
 =?us-ascii?Q?/BzxmHRO7zMLD8HJJnSynDGufeOB9NJucsbvdW7mtQzUkqPXX7bUKb/jLy8H?=
 =?us-ascii?Q?4LeW9T3sTB8kKTH+ph72AxSdea5JicfcGzr2trDgINWdwsnXGePUo+XUmpKq?=
 =?us-ascii?Q?x2OKSlg0GR3J1J0t5Tbbd0HJbkb4JPm08lWoxiz2hcTvdNVTFpX47pgzEIVE?=
 =?us-ascii?Q?UW1XM/C4fsI91748sWWdAtBxMeDrbrDmtXdNaOQX/BqVVNJdiHaYVsjbRJXY?=
 =?us-ascii?Q?OGMm/6TjoNcMxWAj0fsV1Ssw?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(52116011)(1800799021)(376011)(38350700011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?wZXOnKXpgg5b1iJt2/8i/4185Z1geEEWiZLn4rwX2LqCiTTZP6jWhDUYQSgq?=
 =?us-ascii?Q?y+eQcsCrM2/4MqJZfzi1OIqBaMHI3BJjuVrSmiAvpkS+R+6n/mU1BOxFuXnu?=
 =?us-ascii?Q?uHSQpTTTChkMy27KkOuC6WQ934DxwVVSDXfwl833zIOZGHaCsww0COTDNgfC?=
 =?us-ascii?Q?xttYVMThLZ+yrkwjP/iD1gIzj0Ayhy11K1edIrCwANBG62BD9BdTI/MnrHgq?=
 =?us-ascii?Q?yW3xn0s9FveVQmcapn0iNuteaXunQbZ7BMsu2bOr1m8itl99PvA9WUJtx4KG?=
 =?us-ascii?Q?0XWYvl6KRs7e774HFGM3MbstAgtdpvVvuYmooDEaUJw+iaeTPWyLSr1BzvZL?=
 =?us-ascii?Q?Hkdy6ib6hcGM9HdJYKHdv2NCk3NYZiZVYWMofrqPitfZIriOGpalr8rGBHXl?=
 =?us-ascii?Q?UlBprnebbPZkoy3M53VBW8r3qgXWDXMHJf+JYfzcvkMhmzHgd3a+gs6qc9kd?=
 =?us-ascii?Q?qzu2MLL5PMJxGDSfYeDFkaok4J2c/HckuNZZZDUN5Ldx2Lx2fWqvPQ7F+puw?=
 =?us-ascii?Q?77eFp4PkWN4tY3M0la/CGefrol1nkWudcVtn0ZuciJueXcQPIN6Jqcx/iDm6?=
 =?us-ascii?Q?S7ZjIr/DJ/wW/kFwnFvSKD99mc3c7rDq47dWEjV1jXsmUlV5ssnk8fjBWc9O?=
 =?us-ascii?Q?6IH4W4v2WVoOxZ4Mk69GcvOMxhBQqAqVlEWZWK3ZyWhuE8mlxPk6VarV5Bvi?=
 =?us-ascii?Q?TM6Uqz7agmmZgaKGynkpIWyPdjwfKDCYBz3UG7pzl2a6yNPxzT9vej3HfS94?=
 =?us-ascii?Q?FBwq6gRAqZ/2S7ef9p1qVgsw33NaYsyvm4rPvUiCG9sij4LP4llmZ7p1z281?=
 =?us-ascii?Q?s+5mOxV9i5hWKtFyXcqSeitSWJBxvzpyJAzXDuBlJdNCO/5IcjRHWD4u//br?=
 =?us-ascii?Q?pCHXhIv6mP9kpYW2p4Pkvf7HUGyPqsrzpmyE3VI1rKEH7UJ3hyVlpDOZf1iB?=
 =?us-ascii?Q?foVo7aJ1jwYFUYvw4U0TxQFYMuWOlYol0oacgt9W2QKe3X1dI09GapN/K0+X?=
 =?us-ascii?Q?RWYA387AZjBIzAHRX5UKUO34uCEyONqBEvgDBKARks+kN+lzfZUF7+FBRes0?=
 =?us-ascii?Q?KCgWEEudgTMpbRdFAodLiFVUuIHY7wTIjRlnnRSUMesKhwduJGxjZNxkoqQj?=
 =?us-ascii?Q?x8CsszNHC+0RP7UAfsGtdU+CuJrB40gVTMgOmFJGbPG3PR+bIeGjTeeyZkyD?=
 =?us-ascii?Q?/L6Q5DqxOsKigI+u2AftlwWWbmpZe921oQNBRihvu8M+6MvC+OeKGzd73ve1?=
 =?us-ascii?Q?ytziCRXVp27ARIxV4QMGpvIGCqz/Wl/wGoVz5O2KBFPibe6yg/FXB0cGigC3?=
 =?us-ascii?Q?JWbdJVJ8fz84hAsrDtGQZggsGlaG5+Lu+AinLFWARKPMaJiHrkwB7Vd7YifY?=
 =?us-ascii?Q?dntmjNxvDwj3jK+6z/o6fINjq+oZ4vGK3GjJKiOH6V/KZM4SE8HJlNj05Ap0?=
 =?us-ascii?Q?pFVgZrTFp2Wnmyfvo+wLmuHeAki933ZUfhmZdO3glG2lAU2oXyRJQV0Xmzzj?=
 =?us-ascii?Q?UzwvVYIayYoZ95IEqQ69/2VS8Ox4gqyEs9DvIG7/KXVViWri6N2+qA/cfLCe?=
 =?us-ascii?Q?2zCeH4ndOH+c5q/fBZyxLlz3kHAMkcC/TYElXj9E7VVF/YtTnwUCrex72OfP?=
 =?us-ascii?Q?5H5JV3mS2aMjHD0UbiQxAus=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 187ba3e6-1846-41aa-9036-08dc8e69ae72
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 01:06:12.9919
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yu+siqFrfYgAYeN1kCDBuYHoW2lLitJriTvph824cwr4XaAuxQrWULEkRQpGeXrHZAWAygOx2rQe3UWEuEmMhy/mjMvNVZMZ+cmXGtUXHU59v7Y2Di3SiO7i09euL68e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11912


Hi Mark, Rob, Krzysztof
Cc Kochetkov

This patch-set adds link-trigger-order to Simple-Card / Audio-Graph-Card.

Link: https://lore.kernel.org/r/87v82ls82e.wl-kuninori.morimoto.gx@renesas.com

v1 -> v2
	- merge header into Doc
	- update git-log

Kuninori Morimoto (5):
  ASoC: audio-graph-port: add link-trigger-order
  ASoC: simple-card-utils: add link-trigger-order support
  ASoC: simple-audio-card: add link-trigger-order support
  ASoC: audio-graph-card: add link-trigger-order support
  ASoC: audio-graph-card2: add link-trigger-order support

 .../bindings/sound/audio-graph-port.yaml      |  9 +++
 include/dt-bindings/sound/audio-graph.h       | 26 +++++++
 include/sound/simple_card_utils.h             |  4 ++
 sound/soc/generic/audio-graph-card.c          | 13 ++++
 sound/soc/generic/audio-graph-card2.c         | 13 ++++
 sound/soc/generic/simple-card-utils.c         | 71 +++++++++++++++++++
 sound/soc/generic/simple-card.c               | 10 +++
 7 files changed, 146 insertions(+)
 create mode 100644 include/dt-bindings/sound/audio-graph.h

-- 
2.43.0


