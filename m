Return-Path: <devicetree+bounces-93135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B15E94FD30
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 07:26:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17DFF1F22F56
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 05:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 371292233A;
	Tue, 13 Aug 2024 05:26:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEVP216CU002.outbound.protection.outlook.com (mail-koreacentralazon11022115.outbound.protection.outlook.com [40.107.43.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E395339AC;
	Tue, 13 Aug 2024 05:26:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.43.115
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723526783; cv=fail; b=ElL2I40MBEGg/9XopB7AcQZvUJIdd9aAuLwkUUPgd7/DvCGupEyiQCw0RJxEpQ6HvCGe2mc077NNR8xiIK9ueDG/mw/JJWTn9cLLbZWafB0xYB46hKH1F904+ld8J5HXY1rO48sszs/ETa6QksGY8Qij8s5tXLZoi0HP3VevNkg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723526783; c=relaxed/simple;
	bh=B3mG+kfjakc5UBBFZFl28yCRzGqVGuXiJuw460PvYAA=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=JODYlD+RPmjjM1NYc4XMxnvfdrb3CR1ew7e/NQO2Rad1CdDXDyAwuSGi1llcvRHDlbzbk7WNfD3GpgbPVGmQuTP8ziKiiBFJyP6mqc22wqmEPUnIdBV52TtnV49FZLu18CM9Efj5wVhjk3yI8kaCEkK0V7DD1mt3QYxpoF1ZTtk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com; spf=pass smtp.mailfrom=irondevice.com; arc=fail smtp.client-ip=40.107.43.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=irondevice.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=irondevice.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vyrXvb2l+E+ZhMs5mokN3wiJe05PSYZqKZg8xRGFQlX4tyH+fxLHefxfm8ZWkSGTgIItZjMNJq+nrgKtsMYmjdMzAKVnIw7bvV5E9hoM+w2sABr0Rq6lIeEwIw9gpVzhVJfNSjTJek9xh+7FeZECo5Iuez3drm1LHTjDk/lZreBDOsPNY2IY498Cnf0DYK8gXLXXOJzALmnMfjVr8Z4twsq1J7q8344F7Kfqi2Vg4uMWHHM7jvNiOGDSRp4jsaiQkaRKRe5Tf/ASqlV4PtqTtHCJP5O8cuRJnWuYIXaTJGdAEqA+BUupWNOaGnho1VPmn/rhVckfAZboI3ofs8EU5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hniFXpeXFM8f/yDu2tCjvFtUja1kcLrRI9rmqjXpJTk=;
 b=jjD2i3urNPTDPRrH96UUuMLU4zrR/68eDCWy18bxWHp1EZuXpVIKfm2eINYnbmiUsJ62pzLZ2xzIFJdcA35hoBKa+uObO/huqgfnuXKRLV6CG/m1D7HolSrdf+I+T7TimPZCGfalLd7jr88LNQ8aRSHf0Xe0EFd/jZZ7Lbwwzn7ExC+Xdt7RE6ye/NwFZwf18drLl2EYHfod3YNY6e2kRsrwjLJ43eCSShWilCOylcipl2TGEJqUTfeEk+2Nw08uOGsqO/uk0BExle9SlgYUQhenXAsVektluEEXXfSflNrlx6PYCo7ZEWjX7C2+I0T3XOVTXjjTptyMhj0S7Li3wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=irondevice.com; dmarc=pass action=none
 header.from=irondevice.com; dkim=pass header.d=irondevice.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=irondevice.com;
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM (2603:1096:101:14c::11)
 by PU4P216MB2027.KORP216.PROD.OUTLOOK.COM (2603:1096:301:130::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.22; Tue, 13 Aug
 2024 05:26:17 +0000
Received: from SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756]) by SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 ([fe80::7e8d:9550:c46b:2756%3]) with mapi id 15.20.7849.021; Tue, 13 Aug 2024
 05:26:17 +0000
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
Date: Tue, 13 Aug 2024 14:26:07 +0900
Message-Id: <20240813052609.56527-1-kiseok.jo@irondevice.com>
X-Mailer: git-send-email 2.39.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SL2P216CA0078.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:2::11) To SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
 (2603:1096:101:14c::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SL2P216MB2337:EE_|PU4P216MB2027:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d4b6ad6-083c-4b59-e20a-08dcbb5874da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|52116014|376014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?+vxA+zBrSoguUKXvd8dhu8tTQ+Ug0yKb+tYNVVtmp3+RJ+yXccIRvIE1xjeB?=
 =?us-ascii?Q?e6RpHzumFitMONkuv9pEh5On9JcQpHkz0V+oG6M8wZGid17EMTHW2NqbrJXW?=
 =?us-ascii?Q?qR9zmlWFb72+25xHTheiyo3C+O13QdBa5M/1cZ3QXP3Ey//87zGCke57/ZYu?=
 =?us-ascii?Q?HtDQSfcKFbTvXAEBs5BNFutMkfDVEfBAGqVagKfbOgOEZhzccIH+OYoEj0dV?=
 =?us-ascii?Q?NcgTpimP/jPiwfT911LSu2R7mXtB1E9hpkfPR2nUVVufKelnyKOKrawCytTv?=
 =?us-ascii?Q?3dkzmZVA1cdlPLN9Kf4d0M+5FNV8tZxmdCho2uMTQAi38zayuMkErgdDSvfO?=
 =?us-ascii?Q?O4whGnUs9DirgAAasYkRp4Of0H/ceYdr6q9QR94DX6HyhMoqfcC/mE06vfzZ?=
 =?us-ascii?Q?E7t9GUgjRO32xrWzitxTA5SQtlhn23o6HMLwupFoaTcNQoKyV0AVMpc/vQRN?=
 =?us-ascii?Q?JaMVO6OjXzZS7YlshUttoZfjztLMk0UoZ/HruFTeZHuJXqOBM8SMafN3K54c?=
 =?us-ascii?Q?0ITPpupJiQdJ3TkDboQvEDNbtvHWGKJdnP/UUFHwGG3W1JQtmkXzdl4ARRKN?=
 =?us-ascii?Q?lX9W/doA4trslyblyGtVKM3FHveMpeBlDgMgpn0TzuwvwDvRjaX7MdzInFIx?=
 =?us-ascii?Q?eWwlQ3nWAcIFGxFdodJClTQvREUBXEPEaj7UoXaP0bfIwAFLhDqhaymopRgC?=
 =?us-ascii?Q?DfZ6nTF758FKyJLAY2tgLoZXKJFxBTJ2Ef5F/xb1UDMGQKkQaXu7X7ox6/5/?=
 =?us-ascii?Q?oFEux+3pq1CmO2bvQjdEjbrQ46DXYM8gkbHHas5CW7GjEjif5ZlZL4qD0kRu?=
 =?us-ascii?Q?XZCaNKvw5UxHsOAVQ+Kr67q6nf/V3cIgThQM9FB4SYx3JiD1fnRr3JzZ1ssC?=
 =?us-ascii?Q?kK9KLQvErNxqcFaWD+K8ZBqEj6gYAcuELb5p/nPTsB0jijkJVDA207Qs6I4i?=
 =?us-ascii?Q?nkrj0iIqhe5fVN8d0YTIdKLXKN/wanvreAW0AEQ6u7AxHVCgmiqq2eBV/jVb?=
 =?us-ascii?Q?WrtkGr6rYJjwWblDoIS9ZQVXB85wTuZwjYAlDzeFqj9ltxpedJy2VtleyIl4?=
 =?us-ascii?Q?58VV3Hnpy1u+YBh0IBcjoxnIH10rxMfkoZN3Eu9swOaUGeRoYVFzEiqP0/PV?=
 =?us-ascii?Q?dBoGcnZ5z3tmXO8iTlYJ3Ond9GEnlD/SK4V9QbnWPSg/k/pzqqTnsq2Ya0y4?=
 =?us-ascii?Q?RODX+7KGv5FEGPT35fMg8RsHSF2FfH6+CdjDxBs+T7U6rRBAYQD7j9E40+OW?=
 =?us-ascii?Q?wnrTSQnzT/5VxcLpDKG0knpjqvOCT/NMQrrTh6uKbHXXIKnyg6l/vuAcRE32?=
 =?us-ascii?Q?HhJgy/HvTR0fpFIPgkcrSaM1dS2VWmgv/3meNbMtxNlBgUtFubRe84KmRJto?=
 =?us-ascii?Q?ZaNFrig+LNy8KxLFK7U8X+ktTe+1W29M6c5ey0qjVPI/keenSg=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SL2P216MB2337.KORP216.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?yBjGNjXW0Jg7829FxbQtOR+NogfIQMGS5HZU+jBapYSD92sxD3+e46WIv5kg?=
 =?us-ascii?Q?lyTF0YNEcSGIRa0QVaU484P7MVVUSr3OaFw5vRHIqXc6FzG6H4sA5wqVs87b?=
 =?us-ascii?Q?KC0xJ2urP1lW8DFYcaTqqT5FjPbmA17n0Ok6hlYNTCKn4aZFh962lpzHHDdF?=
 =?us-ascii?Q?btARuMuooIw1ZzBmzODdlLH+PfJfWVRW1UYnrKyNJa2ikixHISt9USHA4v61?=
 =?us-ascii?Q?vMU/JYYB3OMv8YcW8i+UrbIsDXmxTQSqv68eqwKOtaZBRVJDyBzvlmXO1V2W?=
 =?us-ascii?Q?63vBpSE5cTzeYv71GfOgOTgkm6+JPLPnTqLU63QmgOlU1jJp1XfT/VBJTX0Z?=
 =?us-ascii?Q?EJZL/GMJNr4f/1kF8RSY4WNZz5ZSjpu++3qlTYQEC6YoHI23eNR8e46SGLQ2?=
 =?us-ascii?Q?kndpdYvxTPx1dT4DAofj0DMHb74rurXmTt3v2lYF4/lnOGQKk6Ky2x0kk7rT?=
 =?us-ascii?Q?Vp4bKsZLFzf9lVLUTTl6JX2mXeltSObesoKYOOzokp20IkRS9yKo8FiX78M4?=
 =?us-ascii?Q?1HpfF/f4FuM2j5jTIH/LZEHpYYvowJKiyF9Lkdapejx8pTMwudvfWiJ5C0Mk?=
 =?us-ascii?Q?6T0pAV3qgrMyoajS3jDsmjtMoRhqsKZRY1OBsOILPW00zl7Lw38h2xLyU4Fy?=
 =?us-ascii?Q?tDga2bNFHDRHJPLQcdaWWxS5mcV6gU1OBVIuz1t6ZTp+RP4iFQ7jxKo1AEPK?=
 =?us-ascii?Q?WGR50Ii21HONEfFzCaVlknMs/1Iw4AhzHp1/MBJBk0ZjAgw5Ce35+dW55/Lu?=
 =?us-ascii?Q?4zEYajK1fpZqEuaXHkWu5gs1gDjSmVDIVYfBS+EDOAeSExdK2L6j1nO3rax4?=
 =?us-ascii?Q?z1zkGiL5i6Vx3kGnoWkqNtFkqJDCF+CBvBmOI8ZAkNNaQiEQgSnv8wFn/M1S?=
 =?us-ascii?Q?SODhvRDsyPCYjVHiAe+utNQ4PD8kumAULVR4LB99rZV+dZjUu6PhtmJi0TZ+?=
 =?us-ascii?Q?x+6/cSQh94h+g2vodzggoehvakdpKlk8Lg1mQGUhDGjPcmjGvrW15zzCJl7O?=
 =?us-ascii?Q?YXP/1mqf8N6mEAwlMU9nCVhpKVta3LD+qbl+ro2M5Vffoit0A/i48+NfROip?=
 =?us-ascii?Q?rmzlafD4wKgxpB/7vPaCdkllhmQpZmsqKC4qPBiKkGhoJ6X/Alta4UMTQp7m?=
 =?us-ascii?Q?ij7K1bRpjvD5zWJubsAclayJytyk2G/0W5BoeDJOTd7CTB0W+WKJgHsEmHMs?=
 =?us-ascii?Q?iPxcqZrNILXrFYk5TV8SHFYiQ5rwObw0A1yFx0NaBfZeUXD4Ved9vdIahPOu?=
 =?us-ascii?Q?UL3B/P7Y7BNGI0qcKdAzVx/m7zukonLiEyTqd7CZVM4u1exAxXQ5fq9uyK3w?=
 =?us-ascii?Q?R0FOH/iENXN59JJhOSvyLqaCls+5A6sjHRE3ywXYYdu0mU1qOZmM7nk+BGUW?=
 =?us-ascii?Q?YaZKnErEPCEqpZ8U6mTTkpFD4mTExfuorUf6YGmiR6NPFH63POLvVbcNYF+X?=
 =?us-ascii?Q?QkUIhdOkUw/VhEYUoDcMGxKMow1W2A1bKzLXeXNfeh+3fgYzp7ST58uuAdVw?=
 =?us-ascii?Q?KEcMAmZmnZN2E3dgxokM1QpWs1KYKTd71xnG8Fm8w7tuasd5YFrRZQM3vvNt?=
 =?us-ascii?Q?UYcwGZG1w3Zr2P9lE4XwugZxTaO+IQUW4NLYl7ZW?=
X-OriginatorOrg: irondevice.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d4b6ad6-083c-4b59-e20a-08dcbb5874da
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB2337.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2024 05:26:17.3036
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b4849faa-3337-494e-a76a-cb25a3b3d7d1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EJm08jXzZF6ZVfx3pktOyMk3hzk0q+Gh7zsl8+YzZBy/pYcArWSvTbtETTJn8KRMNN23HCluxeRfCrf/8X1oMNtvCNhNs6V65uXQIRRnnjs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU4P216MB2027

This adds basic audio support for the Iron Device SMA1307 amplifier

Kiseok Jo (2):
  ASoC: sma1307: Add driver for Iron Device SMA1307
  ASoC: sma1307: Add bindings for Iron Device SMA1307 amplifier

 .../bindings/sound/irondevice,sma1307.yaml    |   67 +
 sound/soc/codecs/Kconfig                      |    8 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/sma1307.c                    | 2630 +++++++++++++++++
 sound/soc/codecs/sma1307.h                    |  456 +++
 5 files changed, 3163 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/irondevice,sma1307.yaml
 create mode 100644 sound/soc/codecs/sma1307.c
 create mode 100644 sound/soc/codecs/sma1307.h

-- 
2.39.2


