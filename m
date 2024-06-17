Return-Path: <devicetree+bounces-76268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C01BB90A0E9
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 02:29:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5DDB1C20A40
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 00:29:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61FD91862;
	Mon, 17 Jun 2024 00:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="GbmrRac4"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2072.outbound.protection.outlook.com [40.107.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D7C17F5
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 00:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.114.72
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718584186; cv=fail; b=RGUStfXHxGPYGxYvwC2RYKr9YCMnpIyb9aHJUgkfJcHXXKGEq/Nk89OiexoHOeBY4yLzb71sL/AwxD1XA+v10IoszYZxZRb4kioQxO9uf5F4oYcFkMK7H7/OnNAqEsls1GjapM72fuBN9teeHE7lRPln8Br3fgHFd2sDHfrHCaA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718584186; c=relaxed/simple;
	bh=Zp3TbVBTS+6RrM8AaC0NOv6gdddIZ/RSy32bcDmfTpU=;
	h=Message-ID:From:To:Cc:Subject:Content-Type:Date:MIME-Version; b=UGwzLp1kFK46g5c7oo5G5iE+ffxzhKV1mS27z3snO1b6aQMM4jI5g+5bQ3UQZcz6JOxcofflFzpFO/ZLaR4rdTvrmOlqHnAEIKvY5ycrpfV8VleAAfGlJPUeC3pUWtsuomo3vDp94TnDyN8Prbj0pnyPj64yY7GRFWJLqpuhBLs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=GbmrRac4; arc=fail smtp.client-ip=40.107.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCKi3SfUbuBM/GeCbkVMrrE8DaVPiOIkqxj2UHu3qqsEABymKIR3KwKjp5tHu0inltmXeIvZeqZOf7Owz4WWiGvZ7XMGqdf0bSw6sBrLjTNL+ToL7Qj9oiUxTvTgvVtunBcBS49J3GBobrGTSE9Qm42euYgc3KhavCwi+2MQ0nmVQoxFt3baLd7WVmV+swDVlcCiBphVMarGUMTMrxl7tYDv1GRXNiex7NU5Ce1m80LgNq35mXnGj/uRlKWx2tLPe76VhjPP/60dVfJqKzdtGjC5Vl68do+dt2fFrMgKJuymx7/ZBPifAlPfwY0a7rGYP0ksGdVa7jtmevVbf4pF5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EEtkexwYJEF7be+FVRc4CMx7b2DjydGQ9TpWbi5cNR8=;
 b=jQZU1KY3I2TPg95H9mikVzop1uMuvE6iuJfAdbayNbJq1sgogBH3LeVsLlJ6WpsK89FOuATT4kElkuGqRnTUT1LLfoe7F92zbum+SgfIE+m1xGjKWO91vV79djkG3cwn7Pf8219q4LUuPIQFXM+Lovvoc9pzY4F4hY7MYxL8cV3ZSLTEY5hOd8x2EzMOn6evYiU8BpSD18rMcK/byWe6c1CSjX70oz4olfOC7nGoF+0jCTDN9Vk/0MHAwPRGrD4N7kL0vWB4fWx/jov7LU5j1eVePULXwdExvm3NBRi6FeXZC9uJ5NhqWQcYYOm/hydzuzuIW7TNtcd00SJydPCr7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EEtkexwYJEF7be+FVRc4CMx7b2DjydGQ9TpWbi5cNR8=;
 b=GbmrRac4TLKunaGPDbGwxu4aiW1PZ346oD/6jEUd6EhyD6JUhrd8DMES+kMdSIUbtiri3+i+NSMnAO1lWsqS8Tf/ep1GjgHGu9W0IZA1VKNO+0zmlqn+y+YxUXaG+zzKsjtvcSvnX/Ywg+9+IpVmktKLb4lEl12y3LPmol1kgyw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYYPR01MB6715.jpnprd01.prod.outlook.com
 (2603:1096:400:c4::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 00:29:40 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 00:29:40 +0000
Message-ID: <877ceotnrg.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org, Khanh Le <khanh.le.xr@renesas.com>
Subject: [PATCH 0/2] ASoC: Add ak4619 codec support
User-Agent: Wanderlust/2.15.9 Emacs/29.3 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 17 Jun 2024 00:29:40 +0000
X-ClientProxiedBy: TYCP301CA0066.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:405:7d::7) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYYPR01MB6715:EE_
X-MS-Office365-Filtering-Correlation-Id: a4d26474-5c3c-4558-9cf0-08dc8e64938c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230037|366013|376011|52116011|1800799021|38350700011;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?+Tw9AY0wjCd2TYepxzxBv85PQp3Gk/Xp/KkL90Kimt/bdelZ6OzfSa5bq4oe?=
 =?us-ascii?Q?mvLPtERmcaKC2MyGzEHASD2bsHsrx5yqnUh8fnk02VRv3wTs79hOMi7M7LNn?=
 =?us-ascii?Q?0QMyArEwgD7iQR/ORfmjmISoc4DpsF3K26JILN5IcqZJv7WfnaE4sIv1qULN?=
 =?us-ascii?Q?VcOK65x10/HLQtEdUSxOaQIxutLNWawtYxNY37dZDxGUhlTkuFz7GuZ6b2LY?=
 =?us-ascii?Q?fRv4xOd5LVRCbst23CkjHMjKQ+hhngAKm1HxxEI1IIIbhCdqKout6Mx7g35n?=
 =?us-ascii?Q?Cy7KxH9KzPXLTB3OTP2kuiJF9Ry0FtncavHIGXHGIY116sZ/yCWc093bfpO/?=
 =?us-ascii?Q?z3+FeV4U8jR3luc7hDQu1mKDUTNnfZ5Uy8P45P0RitRxRk+OSObvOEBylYXh?=
 =?us-ascii?Q?WJI20/uD7TZ2Fr17CBDylHWAFathCEJFec0O+gdL59STROFJkawiNAe56RxO?=
 =?us-ascii?Q?+ANMCqihGVq1EguZZlPAua/asJZ1Uuquvr9GV9jPI+ctMkgBginwEnwno9B2?=
 =?us-ascii?Q?eP//kuEePd/Kx11ulLW+XX82555itBMgN8MQU5JU+eZc3J5zyHrIzxpJjQUZ?=
 =?us-ascii?Q?CHzTeldce67nzb7CMSF6OIGNy0YaeXgJvkmXFAB/ni73N7TMwjVQRXLoWioa?=
 =?us-ascii?Q?exoF81Gj2HSNAUI/88O8LrBbvrSco4O461tOcMDsU6C8ZVhQprba+3hPjFvy?=
 =?us-ascii?Q?kPCbuzYK5mEYqUvYCK63GG2WnPN0zA8Tyb1O2jjIqrFl04k8BKb07CTEJkJ+?=
 =?us-ascii?Q?mMfSWQ3UtTGZUbQPdveN0VIqoZo6yTZ5cPSU3utdR9KsLalfcjSqd2wMvGXv?=
 =?us-ascii?Q?b39jCve7pT/B+wALZhTio/ifMXzfu+XMdLo7hZZgWyNooJtpvuFnfpn2hH3u?=
 =?us-ascii?Q?wKqis4+DGqhbsf8MB55fVMrzotgqhHoItmHXZWK2NUMPgNHRm6ZTWpj9+JJy?=
 =?us-ascii?Q?xvgwyH+41JAigvjAPR5LmajxKVVJznkQF/Y+mT5T9TFylkI0zF35h3++/UYb?=
 =?us-ascii?Q?pOrvZ8AkbTCuk0uYb/wX+L3SWP4QqvzAHwn61jFtZuZdoRTJjXD58VS9Vwg/?=
 =?us-ascii?Q?pH3UWP8+mcQtNytJg/v0i+ZUZjyYNMjnhZs/HiCgqXYE4AixudLpPjlB4Ej7?=
 =?us-ascii?Q?9Ck31Dmdxylzg110DPAo5mdH0wTon639tMEwvy+566jrJE67ubxq6TQHmnGv?=
 =?us-ascii?Q?ptiCWIgopL/u45wLiaXMvG1Q5X878q/+ag8000CKzXm6UE3Rxe/kAegITCyf?=
 =?us-ascii?Q?29OCjxPXB/rGKhVswqrvuaR7+vBn6SVySZULJtqlhlPAnJLpHXi2RrvQD2Qx?=
 =?us-ascii?Q?78GGfMta8WkvBKofzLeKwjhaQiY3nLkHPySMFD3P1tfEuAgb+p8Nsk4cLzOj?=
 =?us-ascii?Q?Zr5ZG1o=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(376011)(52116011)(1800799021)(38350700011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?vt5dYQMQzCnESvTv8JKzfNwcCAo4AumUTf/tfshsIV2mCr3DBJftiVhoFbeZ?=
 =?us-ascii?Q?Qof45117ZFqzgPSMDMSbqc3hwuGGsLYWsK7Blj9YsvPsPRlQAUP4jUIEQfzz?=
 =?us-ascii?Q?YrXrk2skCVzopsDDpY41/73qD6H0NCp+P8GT4/vta812hTXBGboLXFphigFp?=
 =?us-ascii?Q?SpCGD0yLOQ8bZ5GNYtgKeNraR0scAOxi9MQmbOkperGDqpWo1HRNYavxqOLR?=
 =?us-ascii?Q?b78d0B3SXeBaq2vz5MFZvOyeBQInFdQkB2jQbxdSbp3sWJf7AeT+QLC3QBvr?=
 =?us-ascii?Q?aeETRMTxR6dx7a309rXu3eHJFEtjn6DOG1Yej7/fMXtfCmUFZjRLDKUILpRB?=
 =?us-ascii?Q?b7gTTxxetMbwJqSzHPql37YBx8cHvu9MyBrIsJS9ca3jHdzCPayg/emUtHU2?=
 =?us-ascii?Q?Uny6Kfcce3w2qfgY2rqpnmLyFNQk3wAsWmjJNXyF56USY8X67icWry4DGVa6?=
 =?us-ascii?Q?pqfdKgEURsEhOvgOemgBsQ1UukEb3k1Sg0+JvhoeszPkatpZy5PApX35y7oq?=
 =?us-ascii?Q?aP4dn3PPwtJLs5sNQ1qBPKTG6k14YK0YNhgDRF+K7PMXBIyn+5OnzX73lQix?=
 =?us-ascii?Q?TaJ21j4s1yckuvCBxAvhuFYZ5D7qKAKS0sNZr/vd69aVVuNxBFEO44xWgHx/?=
 =?us-ascii?Q?PtmahKMwrihhlLQOSdzGhg2UVRR/kFlJFO+Yjlazz8JMV+GKjYLxxJkMllg8?=
 =?us-ascii?Q?6WOCzZdBWzTWMW7yk0OSHWXc534JD+pNp6y4nSecJAbpgUYEC7674fShQnCo?=
 =?us-ascii?Q?0Y9yrE7F4j6fUINKCTFvN7ESWm813O4um4xzIyKhR2xiZqcryfm+ocMOX/Nw?=
 =?us-ascii?Q?D1W5QwsDlEZXTnHQWRtzJswjQJyw0x2VWECA0cUGfiBMHRcFidsSvDNlUc01?=
 =?us-ascii?Q?tz3fCJMsz7uQEGU5yAaYVMsNpYqTCxNRMhvNIxPrNHNzlydz8GJ+gwejrgBL?=
 =?us-ascii?Q?D8sBPU4qwmiVH1nQUgn3F6XVfSJqUou7ryryt8Z7D1cdUCRqrjqT0jBb7ymB?=
 =?us-ascii?Q?aibFh+O+N5c5ib1fk72jG2g3qqOc1xuAMkdWjwHhs9nc93kEIS0yOPDA2xJn?=
 =?us-ascii?Q?urgQuAvH+vqx34ofkvZij+O6WHzuC2mAMC+g3ZYZF33FDNBWzbt8zgCuGpma?=
 =?us-ascii?Q?YAmz2oQzymUefe03Xrx/Bg/mUYciD36XsALHONcSUxDliHhVoqIlPoXMGZHF?=
 =?us-ascii?Q?NwH2TIRuzpE1PHNo5arQyKRBLdKb33KKzbBNkm090WtzgDmAduniha+M9JLK?=
 =?us-ascii?Q?Nasj+O9IG3eygqYRMmNyTekXAAi2xU3Tn52qz9vIMwb51vaMm5X3imrSmRw0?=
 =?us-ascii?Q?sf4ClYNgfJFlGDWkX7/CX/LwkX53ZICmLvhOyBX4w4QqFvZ3di4jrSHhF8YX?=
 =?us-ascii?Q?ZzjN8LvD9DIF9t4+ecRDrEvnBfA0IRnV5w7nvyXfk7v9OO2LjHNbFMzAjgVG?=
 =?us-ascii?Q?K4M4VnDjWmKNeQDoL6zPCU0cb56q8F5AQFpx0d3KryAH1HzFVhWiHlcEYpQU?=
 =?us-ascii?Q?R4mBznYzhbY7A+KnD+H5m87jnCsPl0iiLobLTkyXmwuQk7aCzqQiv9rp4t8Y?=
 =?us-ascii?Q?1ykeq7775YtFUlIcCraG94RhEHKwXXjHEQF/AA4dMcCIpWGM/EGE5vByPgEg?=
 =?us-ascii?Q?J2uz+cja40DJq3kYCLsYEmk=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4d26474-5c3c-4558-9cf0-08dc8e64938c
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 00:29:40.4307
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g20c7K9VaD0TxC5orE1+2di6VD9cri2bz3ZCoAiiw9Q6wPkRZsAZdRFmQQZE/A8btOJdcoyNOs6GzivitF7W57OC3eE1U45qWYpBXjgL+6ZlY3OnvDr068+83HbbV7db
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB6715


Hi Mark

This patch-set adds ak4619 driver.
It was created by Khanh, and I updated/adjusted to upstream.
It was tested on Renesas V4M GrayH

Khanh Le (1):
  ASoC: Add ak4619 codec support

Kuninori Morimoto (1):
  ASoC: dt-bindings: ak4619: Add initial DT binding

 .../devicetree/bindings/sound/ak4619.yaml     |  48 +
 sound/soc/codecs/Kconfig                      |   5 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/ak4619.c                     | 903 ++++++++++++++++++
 4 files changed, 958 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/ak4619.yaml
 create mode 100644 sound/soc/codecs/ak4619.c

-- 
2.43.0

