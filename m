Return-Path: <devicetree+bounces-99187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F3C969345
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 07:44:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 652A41F243E5
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 05:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 453BA1CDFA3;
	Tue,  3 Sep 2024 05:44:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SLXP216CU001.outbound.protection.outlook.com (mail-koreacentralazon11021118.outbound.protection.outlook.com [40.107.42.118])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FD29A32;
	Tue,  3 Sep 2024 05:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.42.118
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725342290; cv=fail; b=A6QdHJrEJ1CE8lQs8tO4Nak3tERviZHYAuGcC/h4F3rPKsW+MGz7FPRRa/zt7EczbYsJJrfBuna7yFyBLQYbknDEGL1v5ORMm98TtlfJMlbnVnY2jhXXU/WQmeZHqlPTUFyo1a7fqd0soqt7t4N6FXvp2PKeQlO3zmJDjc+wPXg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725342290; c=relaxed/simple;
	bh=JG0CIN7HKbfX/Ly7I0J/JBHVj7lFObJRbViJUVmWrgE=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=jz3UUGu6uAxhaUsZVDrBZPLoCM4sa6J4c+ee7FB33vW0rA9ROOR5IFOF/njHtSnMLG5erGWS2ufpqyHNRQoHV3SG3SQDw7aHinqZht0EGIwooFecuoAE+CqKvFN5m7njDjjCJ/tzVGHLvCdlFV3YCYeJ7NLepBAG7cNtQoXaPRM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com; spf=pass smtp.mailfrom=irondevice.com; arc=fail smtp.client-ip=40.107.42.118
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=irondevice.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a1A/lFLmHrowMp6PaSpA5SCgPhXhf0T4x9t3snl5Tj8bG+ELbpmfeOQK0N3roiwY93K62QcLQD+ZIdsL9TlEP8R13rzJ3XHvydZRnvqKWxfh0PbedW1iyvKTNLVB5CllgU/M2xduznqTjqW599Pp/6WxpnVpEAnGToAqowGIiWtnecL9BkYO+bIJ1N7Rdu4u7yPSISw6YdmLco63iTpyhl6BTRA28heDsoM4XMkIY+NKB/vYqZVXCFNOsdRUja8WJG1EQQsvW8VbjTZceeHOw4GSyEFsvz8XgsKF/pf89OG+bkQSiX4xqlx3+7myJmsS9Kq3aqJscBOMerNtolcOUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nqnYnQChZIr4fIVThBRa0BmRuXg1/5loPBRtAOM57UA=;
 b=o5jLlC7LPShhrLI+UpJmigyIJMf+Z+BLrSMnkc5esbXvNVK3uKjBnOAQeDPGLM0l9ivxXQMUsaa3bPSdAO46+QlDfSrYQY5RdNuW0KqvolndiUdHDcuXD8My/Tl313xqrNTpea2AA5R8OGtY+uEO5CShhNvtXdu2SWspTP6V+7iIaa7yt1de15ShE3XFh57z4s3f6w+N/iGCuHn9+vRZBY0JvzXoIUTimCV1v6o6F1xu8waf1mezO7C0diZCOcv+ZaPeZFI1AQKKaz2Iv/d2D38gYO2Zdfa3aYShtJQ9Nf5LjvQ4r7LuarYJ4qn1+7ki+gYx4PnZPf4fsDNFoxTStQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM (2603:1096:101:14c::11)
 by SE1P216MB1543.KORP216.PROD.OUTLOOK.COM (2603:1096:101:29::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 05:44:44 +0000
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756]) by SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756%3]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 05:44:44 +0000
From: Kiseok Jo <kiseok.jo@irondevice.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	application@irondevice.com,
	Kiseok Jo <kiseok.jo@irondevice.com>
Subject: [PATCH v2 0/3] Add a driver for the Iron Device SMA1307 Amp
Date: Tue,  3 Sep 2024 14:44:32 +0900
Message-Id: <20240903054435.2659-1-kiseok.jo@irondevice.com>
X-Mailer: git-send-email 2.39.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SE2P216CA0056.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:115::7) To SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:14c::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SL2P216MB2337:EE_|SE1P216MB1543:EE_
X-MS-Office365-Filtering-Correlation-Id: b76ebf10-fbab-4044-83e3-08dccbdb837c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?4DnCVyFbCKQbdSaVvaRH1qiPRH078jdUDYyBXhRAdBJ4Gn+WK/eSG4hKEU9r?=
 =?us-ascii?Q?yyRRvPdz6VB4K5r1yZ+rKo7Sm6ghEMWu2kQYOMSl00MpTfVpoqa2hnpc9PqQ?=
 =?us-ascii?Q?HwsReAPMH5hEplWokzbMkvydQwvAaynQRyP6CfFJFbs+hmsKygAGLxsBaGbU?=
 =?us-ascii?Q?Pu/bvdjx5IF3Zh1zz+z9ubmdRWQx3IBkVBd80v2rlWHRiqmhboYIOJ2Q/ddw?=
 =?us-ascii?Q?30j+8279rWF6Kx85o5z347PwyJ2PrSm/gGkkwUf0EPfC4zMfdM3HWiFfQ3Fz?=
 =?us-ascii?Q?ttCYhnggKXct2PpPEUMYqdP1f7FY/w66K8i0Fl5A4oIosIJXdd0ctDsReQnS?=
 =?us-ascii?Q?yxfGEKvtljVcbGBWpe7UVJwbArv4nyndcew2mCsKVov1OiQ+rJ8tVP7+8Sxm?=
 =?us-ascii?Q?ImDLowDLJ8d2brO6m/+HlHiAxwo1ztmNrwYb+C6JN+iq7us6U7muN5PPE7yS?=
 =?us-ascii?Q?OuoVcZk6NHEJ4XTxmt0aOLoMQz4xE2+KhgmF0683i+pQSpQbtQ6Nf4mtlol+?=
 =?us-ascii?Q?ptVecC2jPGZ5Pmf4ERKeb9GFg3dcaliqUso4anCWusiCGudmcYtStMhLpzW3?=
 =?us-ascii?Q?miX7PBF+EDTlVbi4o2656Mu1S2hyXuZMSK5WHovF8ARRUBhynuwT5FrhEeGX?=
 =?us-ascii?Q?2ouFS3fiNCOQD4V1iX0ny3S9vh2ykgioQx2T3cC2HaJMTlum8BusB7xqM/iU?=
 =?us-ascii?Q?8MJqArYNKt9cjgtfKvVb+jrkSh4XqlPxUAUdk2RjDax3vf7fjtRFq91LOE4S?=
 =?us-ascii?Q?tpXEYwygW0fTPXljQz1q/XKzapQ8VQS2vp+qYGKVVDxnZ1MF8OxTUPHJTDmr?=
 =?us-ascii?Q?zxRg4KbIksZeGXPNzewnpcakA1HeYUkI1LtQD1FN9nsOpBCVO95TvDK+ceb5?=
 =?us-ascii?Q?OysTWygcZr1TRsvZbCQ7hMMx9fn5j57SDxJX0FI9cADYVCaFF0B6uXKhHtYF?=
 =?us-ascii?Q?Q5zeilAKF0DKuQUVgNdDf5q6MEXChZGUwr/IpeiHeTumCi2NrbD4ds/ZrQKr?=
 =?us-ascii?Q?OyDnWrMt08TKYGBNLeOkGfEw2Quw8h8KJ9zXLjTVt/uQ/T5/OHuUBQZ4yo7k?=
 =?us-ascii?Q?d3hQPdNlLDPa+tS1q/Q0tbmTKyj4w3MDz4KnRrGGpVLIsjDM6n2Y7qVRS5Oi?=
 =?us-ascii?Q?3DD4xupQbRPgR2ILbDXI0mVuVYO5QrBhTLKHVZbsSC8H/7kkWa33PCdDOBmq?=
 =?us-ascii?Q?UwAGd7go0AjluggZ3ssmr+7kxFYbSs31n5bgDp/d30hh2U6RqNsjFH4hNUEv?=
 =?us-ascii?Q?linrS3jo7ZFzsonvR7FXQKcdxHFGM+Vojncldg8KjskDuF0yWMXAiHGCF9gj?=
 =?us-ascii?Q?ukjiYT4/7JF7q00YrvGUb0Vgk8XacKL806g0F4WTAZAzlLqUldzxVBVqHfa2?=
 =?us-ascii?Q?wTBq9yw1AO1GsRras1kPUuWK5wwd?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB2337.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?yszIpI52EmWGXLIta4Syohh5YV9pxTOV7HuV2elH/UHZeRDodTTmtN9XG0mP?=
 =?us-ascii?Q?LktZEH1QN8kqjEQ8MXu2Tqg6fi5Kognp6nN7o0FUWvaL6vmlRWiPygqNQe11?=
 =?us-ascii?Q?KTW1j31oPMLEcazWvmxQDHXTT2bSp/PzurZ635EFJX0jAl8a6q+UzUjgL8AA?=
 =?us-ascii?Q?AHQRnWLZ4Qp/plP9QOPcX1r4WXK+AdGoUxrtB/BCpFeMh8G86zEZaTZt+eUZ?=
 =?us-ascii?Q?gk5Bc1s8miZo2DAXVa0lK97+pE24Se+P4LK7tWahyrZRcYzHAn+9b/CUfUCH?=
 =?us-ascii?Q?Df1tX6oicbBbycMkqI4U5NNufFb5kh/CKjkA2Iv+64oZU/ZP2Mt60qfvG8F9?=
 =?us-ascii?Q?hfQAupiEGyA4YQgZ21NFD9WU24/hMmP/4plYpxM/oEDMgWmVBxaxqnPs1fuR?=
 =?us-ascii?Q?9otp2dYz+B7mzdwFOG4n80iM9NoLfcR8TL8BFBj+zc68TtmdSs+S6g19fqwo?=
 =?us-ascii?Q?9EMdE6QOrf/gYf2TrhwsmmqYgvonv6ANFN0uvWZV4IXRuv4G9F+QlJYRAR3+?=
 =?us-ascii?Q?U3MF7H4OFmVmO/WpWpdQ/y902TpsmwdaxwfZX5B5Y/9Cl7Atw+6yp65Ta3Cf?=
 =?us-ascii?Q?zY/J1KFcPxEp2a5Q1n1T13PJGRk8C0g5LViJrWhhJsRnRJkqkmQRK99AZaR9?=
 =?us-ascii?Q?nfy3BwVTUbv7ifdkgYQf3zFFkg+f5flL6tM9xwvWJxp55dbTc33Gq0Db1Uxl?=
 =?us-ascii?Q?Yh5hBIK8k6p4o7SwJbvOdpqSdwqkz7ru7I7WtcPDoDUCyrkGUvYj8FkAyRut?=
 =?us-ascii?Q?3j9UCkbGjiyJyZ1b0ivKp+ox+ciAQ3s4gXieU/o06ufjtdEwaen9Eqn5PtHg?=
 =?us-ascii?Q?ELZ/b0mI6XKLEvXd0TpSexxR+RRmD1RF1PfuwayVG5Bjg4MBBOxUaoRLvgw7?=
 =?us-ascii?Q?ifMxAx9nZ5Deu5fmCQAbeSzQTz1MrbqmdwXji65cLJp5Iyqvr7kwQWEEFBni?=
 =?us-ascii?Q?ovcAMtbgpQreEW/YwRtae/FMjdImzQ8/JPgEmp2xLNC8SBkIAMVc0bL/+/2o?=
 =?us-ascii?Q?hgoJRdiNwbspVNFWJrMcZEzwoNCmxrQwixV+Iy9TToBAuiBOTSFvu9YBb9aw?=
 =?us-ascii?Q?4BXHrXMb2zMunR6sK+c2hDDdNBHb0TdIHkK32Z/foGplSUiieZup8tYnmPCt?=
 =?us-ascii?Q?u2bntNa2aRiJKpGCBSppns+ow5GOsRR188shx+/eFg7kL5//o4uAkwa+VSXo?=
 =?us-ascii?Q?SohQ+vMFCuh/nX+hUj1MXU9wDWdwoUyoHqO7r1XTFxop0QROkntyp0RfliU/?=
 =?us-ascii?Q?cWLYOYgVXkWDHNRbxwkCUfIpnPOqW74ukowxW/8sNCLyZGcsr9ocKdRy33JH?=
 =?us-ascii?Q?8wNlTHZob9fFkdO6eU2B7sfUIJU9p2rCizpM4DQDC/0NLSd1EhwwMIdPYOVU?=
 =?us-ascii?Q?Ai3miQsazbQ6+K0bApSghF3wOM5U5Aesgr7+q8AEgWGWqZMcaa0s2+LpOn1B?=
 =?us-ascii?Q?zbKdyEaFWOoQif9hNS/1bCm2V+8887LAn7+zwL0+BNOEkwQzcF+aIgnfpAi6?=
 =?us-ascii?Q?ASkwyOabdSJxqTvfqejm7I9bXINHJlBWZXRZ3FW+3rYXO9Bd0LbEKINF/+LK?=
 =?us-ascii?Q?TZ77buVt2qMSgTqd77aNyVE8V06XAfPu1r6gWjON?=
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b76ebf10-fbab-4044-83e3-08dccbdb837c
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 05:44:44.5988
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rEaLp6v9BbnHT44v+l4aZB6tuIIUZm96TmuOtBdurPy36IApT0u5Wo6IBy+F9yh5Yh1aJt4+zOPIuqh6pGQwnINNLUR404+oRH1mRikI5s0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SE1P216MB1543

This adds basic audio support for the Iron Device SMA1307 amplifier

Kiseok Jo (3):
  ASoC: sma1307: Add driver for Iron Device SMA1307
  ASoC: dt-bindings: irondevice,sma1307: Add initial DT binding
  doc: ABI: testing: sma1307: Add support for SMA1307

 .../ABI/testing/sysfs-bus-i2c-devices-sma1307 |   17 +
 .../bindings/sound/irondevice,sma1307.yaml    |   54 +
 sound/soc/codecs/Kconfig                      |    8 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/sma1307.c                    | 2191 +++++++++++++++++
 sound/soc/codecs/sma1307.h                    |  454 ++++
 6 files changed, 2726 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-i2c-devices-sma1307
 create mode 100644 Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml
 create mode 100644 sound/soc/codecs/sma1307.c
 create mode 100644 sound/soc/codecs/sma1307.h

-- 
2.39.2


