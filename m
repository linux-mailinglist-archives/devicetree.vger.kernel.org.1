Return-Path: <devicetree+bounces-93101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4D194FC02
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 04:54:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 975EC282FFA
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 02:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B73314A96;
	Tue, 13 Aug 2024 02:54:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SLXP216CU001.outbound.protection.outlook.com (mail-koreacentralazon11021143.outbound.protection.outlook.com [40.107.42.143])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9A047494;
	Tue, 13 Aug 2024 02:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.42.143
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723517692; cv=fail; b=us3rdlaPlCV9P20m/EMUqT2VD78Iq0RQNAQaibFAVlKj46jE9fO68PQFsMcSvJ1bYUTklXF4FMctURA/CIOrlH0hphuVK5ERJF3nKRVGzgQU23dd2xHIUKhGaCIjeWl5romnFL6/EX1JGhfm9zxsdG2CWphBitAOU34DrBpL4fQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723517692; c=relaxed/simple;
	bh=yCOs2KaaRykcL/CK0RN55OzOutyIS5p0YAfllU9lbtk=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=qH7OnbJCRtuPWtoaDOTMhNBiRQM0ZdoyPwCmCvZXY4gZHA81dIcIsoEPmCOAr8qoOuv5eMD4TXx1z+b/JwnBdA0D+dYJ/S1v8iAswOXQxyEVF6UAE2tqir4HbGNK6uq1yjmoiOSOaTj6OYSEOg7FNjUPt2mvxzlFSAQOd9Op4Uw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com; spf=pass smtp.mailfrom=irondevice.com; arc=fail smtp.client-ip=40.107.42.143
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=irondevice.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A1w5nFk5jOOYJctcu+6Xmat7aa3FaBz5DbDiSohNKsAnF2JjbF2zQAQpu1XclUjvkR/kajlLxo2E6UXxofPneof5uQmr0EP0A7rAEjdrlC2dI4SaP+G9FMWjrQF3ElQo/pK+Mimv1DgZ1kgNxgJW0VBtY36dm029EzJYDUWyxXeyOIjXYPJUOBxTXwAsVT9lCW8RVc8pXNWmITk5c4kC2jJu2HohQtCYs0pZ03U4GalOs9rLVvq9QoDHKRMpBrsmM5RSn9WhRTFJ8IhBfjhzRwWiWvb5FOrUlIAS/i8ju6hY8JrDWunKHghdrehJnDdVXsY1/dieaODK1l3Q1j36ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=inUeV3B672KU0SnIRDdRdaHXCpUk//YiyaNsaD/pkGc=;
 b=hczxkHUpcl21YfIiGEZXT7rff5OGetN6qZ44m52ZiNWWl7tsMMg/2cnXWKfF8AyToztsP1ZkUe1TuAT9BhDd1O/sxCQHv5lAvpEo8aj5oTLElVDLL/F/N+dnBfJpvyaHpH4jaokt0xkEC6rvPUYJS1I2IkuIuKn/ffnYKSZlnHyJu/5qTgD1WZA4AquClkV5ec4ENYXK1djBHcetvf7q0tYsh2ZQz+LZFJQWDeER4f80JrQJ20fHMK4b+/GlKjKrn3oZYlNgmRL19Re765obbRWR344VK0TpJDa1ELyFyyuvAOJJK3Mrqyo5aKe9EVFH0rp2OMm+djPwOV0cwHl/zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM (2603:1096:101:14c::11)
 by SE1P216MB2218.KORP216.PROD.OUTLOOK.COM (2603:1096:101:15f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.22; Tue, 13 Aug
 2024 02:54:47 +0000
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756]) by SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756%3]) with mapi id 15.20.7849.021; Tue, 13 Aug 2024
 02:54:47 +0000
From: Kiseok Jo <kiseok.jo@irondevice.com>
To: Kiseok Jo <kiseok.jo@irondevice.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Cc: alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] Add a driver for the Iron Device SMA1307 Amp
Date: Tue, 13 Aug 2024 11:54:34 +0900
Message-Id: <20240813025436.52410-1-kiseok.jo@irondevice.com>
X-Mailer: git-send-email 2.39.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SE2P216CA0024.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:114::14) To SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:14c::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SL2P216MB2337:EE_|SE1P216MB2218:EE_
X-MS-Office365-Filtering-Correlation-Id: 56db999e-2dd3-4aa2-38c4-08dcbb434ad2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?h3Hr8/aMCeTEeFs2X34F7w7MzVQiw2+N+HdBewjfX701lFNrT8Vgs1/LytK5?=
 =?us-ascii?Q?nGpUJk/cjPp5s1k0ZD+bdHyhFxWSGHlpNvB7tcfin0gFs8vTkQS8xgbD/3YQ?=
 =?us-ascii?Q?orYKQytkKGepcStmkz/FsXPszuW5ZndO9dUlpYwi331Z+NsH8BeGLhMQFMLm?=
 =?us-ascii?Q?MPlm5TD5QWzDj5xKDg8zzSd6DwZlYyIuGLfxdzjPHjmAFxl6mRYT3TGeQTmJ?=
 =?us-ascii?Q?QVAzB/hSqLGyo2FfgRT/cOKiyXWSQImtukDGWRxO4kLsbxKigzaamWus8ZPY?=
 =?us-ascii?Q?9EZZcvS/bISzRRtqOUtGI3Z8+8JeaMM1yhUwivnpvJG955fnRC08lPobQyLj?=
 =?us-ascii?Q?tF7F+GUYCu/zdGDFz5PSPztRyNhhp3Hpt19MA7ustkEvV4F1xZO4dbYwcefQ?=
 =?us-ascii?Q?3evnlD3Yfqp9aJ28XkXO2IsiZd4ApRLC/PfG9CYtMnQKxtKryzWjPU3ulyhL?=
 =?us-ascii?Q?2LmTA3CbfimJmAdPOXLpkqstTXiKyvPoEmSY+05J3jgOaKYCywAKqblAXYy8?=
 =?us-ascii?Q?WgImjDpYf0fSRsiI7ri1boiS5Wi6MGVXftr/pYlcMlvPvkAc93kduyHI0XuY?=
 =?us-ascii?Q?uRoJEaFk3gv/J61q+whi1rbXdBWrZEMRsf5kxxJgTmkXonnjfafo6L/nx1hh?=
 =?us-ascii?Q?ody8VnCiMkSi4Rb9Lrv9OBWGBfxkNwDSZSM3effTX/Qp5OCwLJxoV/NkDrQf?=
 =?us-ascii?Q?jWIFRrJvxhRFffBu/gd5wMR7ItVlEBNAzQAllwNBW2l+/NyQyjFEIbm7oAVl?=
 =?us-ascii?Q?MI6gwVTeAO5YGNToy8BpTiL8rGnK1OzT+1p0Kv7z13UAqRV7LQMGLOdqEJpI?=
 =?us-ascii?Q?9G3CcM3akJDeni502vYf9YBHGDIJmiKgnU4UnNKEQ0aSXa7Cg78EgCVbDnBl?=
 =?us-ascii?Q?ZhoWkenKXP6oB+Hw31q9rVMUF9Xq7FWePuSTulefTbCJHRaQ06BGbsuBzt30?=
 =?us-ascii?Q?Up1VQ26S2mAqKZookFfE9rMUsWNl4itAJxAYTizFxvK+sMDvAGrbhmcCM1J2?=
 =?us-ascii?Q?2ud/BsyQXAtniUV9wCAFc0teERPIJWeM/fYVy80ZZBEDR3isHHp3jaGP09eg?=
 =?us-ascii?Q?Ll1IPrTio/7RgpSad0NknHvHhGHjqJTS5adDHo3wzCGaT7DLqS0xIX46K5oM?=
 =?us-ascii?Q?LH9wNuwHILuKRTylQrjIlroEKcYIyUAhdlVlhouXYFi0idpnp7GG4tKsb5qE?=
 =?us-ascii?Q?ei3x2iVAckrbmtRGPFXJrRhcaLmmLsVrveaTdVZif13X9YrnIQOSEw/Ch3GF?=
 =?us-ascii?Q?dzpNB5qSqT6jzLpUb+fmeTCXqHXcbRI0Cek/iuQl4uwe1ZKOuVWaRbHgKeG9?=
 =?us-ascii?Q?B9Xhiq2CrqDQzOqlMv79juoV7amEYpOHGtkzvnVRc/c/cggBoj+gARsMKjJl?=
 =?us-ascii?Q?cD6FbvfpWnHCmJ0z/r+LEwgT4LZrLzqzgwOl1nYf+LDQbGoMzQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB2337.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(52116014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?rwoHmJkRGSM5TzYacT4/iQYlOh//x9Tc2/N5SA0YSjoZ/OdCV2STiEP8B7zz?=
 =?us-ascii?Q?jENcQy4J64DmOBVDjqDgtVWjXRDR/8MHYN053ID74sOgirxGX0kYSyVdB2zA?=
 =?us-ascii?Q?G7C8qEVtsv/MfqAglwlKnR1U2t0367WvtTmLm771xKvCBk1XxEEds4KKqZtO?=
 =?us-ascii?Q?dRURcr5tmp6QYFY8IA7FyxJX4DMqb7dk+ZDQ8wV+F8ONAMSdjwbftZVscPOj?=
 =?us-ascii?Q?k4SJoOkUZe842lvo3igZOmmpbfCIyvNQ6jgXoUWiexC8cClGz5eHxafHAPPj?=
 =?us-ascii?Q?0V9+XRGfRMxAWRdVuk/Imijhnl4a/eyuBxh1vpFMf260fUo8llh3ZlFLo9U1?=
 =?us-ascii?Q?xM8fkl0E3SCNnTu8bqXe9FKcZvOmoQW9r7HnnC9WIJkeVVc9kNwSj9wh9Cbk?=
 =?us-ascii?Q?blx6/tTEtOuLQRC+6z6lxfcO+KJaqB0zeHAnOJs6V7LTOzY2AbPJ5Jax8oRe?=
 =?us-ascii?Q?lfOi6v937dYlgNBjjPtaf+a7h5/55yNkaZL+25o5PJUEZGkYTl+2Q9qgZMOf?=
 =?us-ascii?Q?2S5dglcsuScV4lxD/62ikOCoujuU8PCORm/OMvdLvOVdzzQiaJYfxIONq8ZU?=
 =?us-ascii?Q?3PBFv/UBZdxtcWZm/6YUzuEaZ7gJc/HueKHm9rLsU/aTTZdurE+OVgT5DVcK?=
 =?us-ascii?Q?Ea0WWNUkQc/30+682Suq0nFtTCHGW9EYbDmTp/Xh31EWjMPBEsh8XfkEs4K0?=
 =?us-ascii?Q?M1m5QZlyBMroWCHOX4VOgejDES1WzWuBk3mC4Hxnzs5Qg96O8eF5tOJHOItg?=
 =?us-ascii?Q?MeOmgU2SalRoTU3XZUDs0qB22VY1HZtxh5MX2HRHH+c07MTXl7ri3v/C5H1s?=
 =?us-ascii?Q?ESNjHtUeDhQ++5vTybMDxT1vAi8GoN1zlbxT44t+RHUabEhCH6ADJS8LebkY?=
 =?us-ascii?Q?N5jfrVzkq/YSgMDth+vP0U0yJB1vvSbqQOYP4j1qcR+kFSCLLZAQAHClmXHD?=
 =?us-ascii?Q?+cDf9fOCSj3i9LUSWdYH6b8mgehUholT7CxCU06WG8DbkyNEjvcPQxl/ihTD?=
 =?us-ascii?Q?TwgKfc+zJh7PmxcLATrRhCWHBrtAQKlHJud1wC95gb8bZ1q0r7pxRwWxmkFi?=
 =?us-ascii?Q?qo8tIP8zl4+OeKrrugsbTsJlnGfNJZtn36G7TurZfjsPKCg5Lk47ZUQ6+iuo?=
 =?us-ascii?Q?131RH/UN/T7fm/lfwP4lB2lzrLym95k7mWpOdMF8guaQkxzH77V3Nk8/cCwW?=
 =?us-ascii?Q?y6kUAEoxq0+cPVIbE87132omUKA1ApgXc/xStpvaacdb9SeS6MSXDUPsZS/W?=
 =?us-ascii?Q?Zwip+P3qiFHkvucmRbgvwiQHjLv158EWfagyW7v48J8X9p6C1HVArcxxexvy?=
 =?us-ascii?Q?QD5tXf13Sbtnw6is2nZFB3umUSoNtOwE8DbKlRP7On/1XwsYN9JhVJIu6s5P?=
 =?us-ascii?Q?8NiAmqmjNzxCRDBZPhiIXkzR5ucEW2x5fwrLtKGF4cdyDKMT2qSiqePdLW+n?=
 =?us-ascii?Q?0Ki9JfH1Ltef5P2PHR2spNi44p20hkmEvNfJJr5eAzK3bnN5Jn9dQ69I+yWr?=
 =?us-ascii?Q?f1vxOlXrMLh53ruTG47H+uZfc4PkYCUZeN2zUtPzDaOk9pBk4XE7UtBPTg67?=
 =?us-ascii?Q?oFB8NanNyaXPt86ONdgVmb7hWj+8t+IhxQ+E9J1n?=
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56db999e-2dd3-4aa2-38c4-08dcbb434ad2
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2024 02:54:47.3221
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CHl/wzzo01D0be/EDkVMPCCgT1bUUApNYSL3kY3Sgf8ezIOxksyAazO3+RUtbjj5B4lY9wXzYFM6Of7Tg9KcuhAAo6/mVkgFMn7LurA1+A8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SE1P216MB2218

This adds basic audio support for the Iron Device SMA1307 amplifier

Kiseok Jo (2):
  ASoC: sma1307: Add driver for Iron Device SMA1307
  ASoC: sma1307: Add bindings for Iron Device SMA1307 amplifier

 .../bindings/sound/irondevice,sma1307.yaml    |   66 +
 sound/soc/codecs/Kconfig                      |    8 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/sma1307.c                    | 2630 +++++++++++++++++
 sound/soc/codecs/sma1307.h                    |  456 +++
 5 files changed, 3162 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml
 create mode 100644 sound/soc/codecs/sma1307.c
 create mode 100644 sound/soc/codecs/sma1307.h

-- 
2.39.2


