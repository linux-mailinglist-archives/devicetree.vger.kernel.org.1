Return-Path: <devicetree+bounces-258207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAKUL72kcWmgKQAAu9opvQ
	(envelope-from <devicetree+bounces-258207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 05:17:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 560AE61A7F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 05:17:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4342E78B577
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 04:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB4B41322D;
	Thu, 22 Jan 2026 04:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="W+AUYgJn"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11020133.outbound.protection.outlook.com [52.101.84.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A0842DFF4;
	Thu, 22 Jan 2026 04:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.133
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769055382; cv=fail; b=KEZ6qaV1bkig+aGXc7SxUIHUNgUgqIF1hKB/u/SigrcQTtAbW0w/AFyNJ6gFC6mbdecCGhsjcgR1B+4L3tdVqwuewfwdS3eKqzZtb48JcC2J37ZYZazkqjm/rohc/qLQyMRb05xcSdEHAjoPihRGDcBcZmjHQA6B0UPYG1pL9rQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769055382; c=relaxed/simple;
	bh=TS6QKRC/02YKL95aNqE8tvlq7JhagWpkxnq0vcv48SY=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=P6YNZA2/TlanSX60rMJ3DL9JB9sdgbZkz61zPYlPCHfK7ipJK7rY4mi1CMe7owLjxhrk4dH40bbvfCArPx3MiiYcnLZJyWZTl6DuxD03pZoT8Wle/TXlkFHH9UCZK7Ts2kCRGx2346dJAfEtIrOE9hdiPQOU+vZhGS1vFzuyT6o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=W+AUYgJn; arc=fail smtp.client-ip=52.101.84.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m6vD5NH5EYGX9Q+v3AMIO3OPYiibI6TsRp8BkwcukR+kop4kPmqpHZ7wCLxrYXFxmE+0+USSAsLXEHG5vLI9SWOEQ8XyT6j35KmJUDNmAQ3tevK1itm7t/zeTLC9aQfc/iLazQCcSO9uzFWriKh3GgFVgYSfL6KVxGpHKAzl9Xi8EwrMRQCvlgophB9xTOgaYqhNXMv/e7gNh0Ufu0rYK9Iyq60ByfeQXyOc8iClMu4oMgMEF9pQXFMAZRNyilDOmasIlsWrY8ZTN4RuBP28gMDBTDjcOBQJmhIzKQBr//XUETYb76tn6npq8t/qasZurLoNV+XP/MXqspcH3hmc6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mYK5Fs2yXJjEH/F4pvghhT3wv6284alxFeNdPkj5wyY=;
 b=aCIORbDUm/3TXyz/QuZgTH+Y8CTG2ATSxioXR94WfNWYYlYX/OWxRhvA56jnIcWPgI3OuPHc+ScRn0M+mnKjcRM2bYbxyuih6dy8XJVe9LtFyXthb2b2U+6S5kAkjm41KutR6fr6BTBkAz9If9wn1OSNrVBTQTjEGstHrfmSzYpeQ5BjJRCgEFhQbtpBmeuFnrISxhE/pBA+7GTa6BWvnVrSAM7V3wNGsXR9spDC6dDQqEpbC6NCQNOWy2Zw0u+QI9oPUR6YsC615H+pjQP5+S1bil1FKjEq+cqkE8qWrsCYIMcVCBhDCJz6EyPZ9JwVK+p/C3gwiGIvCKt0/CheZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mYK5Fs2yXJjEH/F4pvghhT3wv6284alxFeNdPkj5wyY=;
 b=W+AUYgJn1CZ05m+eKBC/ukAxI+tAkvP1ZkNkl51GZXuoym+EWxtgPlJr5hRpB1N87bMcVU9SwQOUs2i2nMWlHbJDlqbCDYxCKQhKaxed91HTKkTHEyIkk+LGiLBKJt5EmUw7w38QSgdCJQ2Z/kdnr2K5bGh/aWuf1J/UHZ/VVDa+z0XNKlH5DP23TV/09YPq5+OEq2y8kpiZJPOrc9P3Nm2r5ZnclwMmUiRa/vGmP0dKIQFp57kHLmbqv94TZhjCbiw6O38Ni69aY+88UpLs2TmMelvf4ymqqFCXRpfsMyirKi6dveGCs0c6vjBrIGNsW0mNyXtUWrkqkzwnpI0jOA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
 by DBBPR08MB10771.eurprd08.prod.outlook.com (2603:10a6:10:53a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 04:16:09 +0000
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc]) by DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc%4]) with mapi id 15.20.9520.011; Thu, 22 Jan 2026
 04:16:09 +0000
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Subject: [PATCH v3 0/2] ARM: dts: airoha: en7523: update dts
Date: Thu, 22 Jan 2026 07:15:57 +0300
Message-ID: <20260122041559.240864-1-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: AS4P189CA0017.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5db::7) To DU2PR08MB10037.eurprd08.prod.outlook.com
 (2603:10a6:10:49a::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR08MB10037:EE_|DBBPR08MB10771:EE_
X-MS-Office365-Filtering-Correlation-Id: 5196c916-7b13-4504-e642-08de596cf83d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?0PXoj2jgFFM2GPrN8+lwFJn2vXbpNX0SUwtYULfxx/6WKoeualjN0agRAtth?=
 =?us-ascii?Q?txaTuzrPKidkP5noOXWHuOPC6h9rV2WXJ90X4vyCqplO4HPkR/QqTLZ8Cy7Y?=
 =?us-ascii?Q?trbpxh5jesetIwHO8RlRFUhhjFExEAeP810k6VjnFrVbOFf/25KI7ZaAailM?=
 =?us-ascii?Q?zdU5wDjtNghW6AtUwJpGZBHCQscaB8hWk+47aQBdAiR9W4CLwOGNfm3x9D4p?=
 =?us-ascii?Q?dOVGmPvbR+idnyhEk79kGzGlX6QSu6R6QpGZTizYB4KGqDo1XVkzAgtMhcP9?=
 =?us-ascii?Q?t3qG+BLe16CFczKj7K9qXpsVI6IOiaABC3vi/+JN8nHpRCRtuMOe0YvJMgC9?=
 =?us-ascii?Q?BlnoYznHme/oBhNqTEkLfA2eJjX1+xJGpB+NUJLUHC20ZbBOMLravbTDdCtW?=
 =?us-ascii?Q?O7c8/uzgQE9gIR1SSC6Z3kw4M7sl5AzSczuMujiQV9Hn+E4b0USry9SR27Ou?=
 =?us-ascii?Q?CyysE1fjdN0vQFIk1gRpyQK/9LNqYZzUkN4JNjLZ9lkrw5d07rzCKUzUbDYw?=
 =?us-ascii?Q?obrmqutyQDPzn2CAK07hmBi36A7x+OmaMNst+YqDB2JyebT0PFiNlvhoD4QI?=
 =?us-ascii?Q?4vzwiCMutHgybIN+mgkuIdjIAa0WcnwfMAZ2amWAafpVoa1br1Zd2v2aod/a?=
 =?us-ascii?Q?01CDTVr7b7hBrQGMYT95HK2sBT3qQ84Dw7e+ZvqsUGOwbRSNGSaF7hh0DX9t?=
 =?us-ascii?Q?pX/YpHAfDhkBetYAXKo8afIVjBvjGRzq67CBFdJTtmaobwbYDRu6TaesYfeK?=
 =?us-ascii?Q?qPsU2zjoaqSKIlmKRtHwxhl0tZAUVbHuOAiUY5cJlGf7ohth+2+jfoclEQYb?=
 =?us-ascii?Q?dXptxK37Hvo996s7Hku/Zf8dL5cPyXinz/OImThpRqjMnOiCBse+W6ZI8f9W?=
 =?us-ascii?Q?mZF/WwM0rmipVmbTnTVAeSp/Wh8CaH0mLuTx7bYEOnxKofJ11XueilwTcuG7?=
 =?us-ascii?Q?1bkM98C6++FB67iyR8NkJ8rEXiLcu/AOH/yNxw8kk62lDMRYG+h4mP6W/Bkn?=
 =?us-ascii?Q?cJa44dIhtu7x/QYG7gvVT/gTCZjIJGZnYGMQ1hj1jfv+F5Vjr36UrltuP78z?=
 =?us-ascii?Q?KufsmT+ue/9iZyTJ3aKdiwOZQUvOK6S8bvJvl+7nFbT1WkOpBhSA7U2wYKft?=
 =?us-ascii?Q?7CKzHGkgJOjtXtWLM4iDEkUE6jj7mll58CGiobeg3bPLAu8Fg0nWglQTsYjV?=
 =?us-ascii?Q?HpSpp0kf0eArnzu4byc5EBcFTkA+s3mabt1/LBWdV9Gfs/iVqmcEioHJUSZr?=
 =?us-ascii?Q?ykuyTLhxvErECNnPSTy8d5YXhm41vnN000AlBV5ELF646bMs3tPxXJer7rRe?=
 =?us-ascii?Q?RZ/cdUSRujAjVaYJ4L39vRsvbS2Z15v+2PbkAROMAp6dGcvFVbUzc/43aFFb?=
 =?us-ascii?Q?nML+kr8j2WGwEBAAL+74tgNzVh2OHHR9t4HXypw1EWbNACk/tikQayhgOpBW?=
 =?us-ascii?Q?ufuCajM26/JPAADaksklKZH8h/1IMMbrpwuImY3hdl+cMWhJM4fJpw7j2pbf?=
 =?us-ascii?Q?S5xKOk6JMlPu3VslZZUilcu8If2PoAMCa2KpzIzTjBdzseJNDZdEXP8hP0aZ?=
 =?us-ascii?Q?2HdC63z4MOxNqx5s7O4cC0O9gJ2rY75Lz8w2/ewi8qv+9lcub0dB8xVnA6Bq?=
 =?us-ascii?Q?jWYyV75miwMMlncPhyQyvBs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB10037.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?zIfxsXpytNvh2JcYAicB8tDnID5ZIsHcdlZYcf5db60NPXPAUJi6F+hPXFOz?=
 =?us-ascii?Q?ZJLZxi39mf+0+EWixA1mc/LfXh74EJ88SpMZYtxkET4Tp+U3oig/EtvtSFge?=
 =?us-ascii?Q?jBGbkROyWzK4VdEwt1WCLZoYPD2Jlr2xaP+tKyk40e9d3fq/kDHq8P1Dmo31?=
 =?us-ascii?Q?UjaLlkr9j9pRkWSHGNgxuwG5qfahXZ6IbUJm8H1pFJX7zh5w4jarnNLBT0OT?=
 =?us-ascii?Q?HWoFv+kWH7030mN90WJ5Li/vlJXoTA4ljiViDhOMZ8qNDCAh652QVqLrIgoy?=
 =?us-ascii?Q?d7baZW4p7G/Nt7hNu+I40NI3VoPdSH4QsN/+qwzCZq80+3h25RX90tt8nflW?=
 =?us-ascii?Q?FUqvaXjbM60UnXFKf8JnPN5n+hhOECti1veBIYvKV7siHgSQROECHi0pVR0s?=
 =?us-ascii?Q?Ea4i96bnwbR5ffLKt4xZiniuiZPtUEI+/fwbfgpKRuPhAcR+4FMG6d2Ai45Z?=
 =?us-ascii?Q?Ns0M8fnsLO+/qL2lFb+Jc4JRxmh9zDwxVmtV8f7jHPwD/qtigxRo/dyou3IG?=
 =?us-ascii?Q?0XhfdsZcsbubJbvggIdvOAxVfdvTvkMdLyCBl0k0j8xl1QqyPNT6coGiwg4/?=
 =?us-ascii?Q?CsiTWQR7CnD/8fI9f3y2rdd6iTgSrbfHafszSKXPL1RM1C5k/xPjC6ZFf0D9?=
 =?us-ascii?Q?SfjZxUxt6UROY30nbCWiAfwJQJRqVI7xSsvM99Qr4zqP0a9N12krfIYiYkwf?=
 =?us-ascii?Q?cQVTm6SmlBkKQ1xHejO/ZhObkFoW0TbnX2FTHNXQJhjk7xH85O0BKLC5Oovd?=
 =?us-ascii?Q?EjYfQrAgXrvUppjUdNeNxMqmoZfE2jwd5Oo/KiHnHwxcXjDvtjAWp/nO9zpb?=
 =?us-ascii?Q?S3Y0ilA7QqN+AbrkJ7lVXbtdC6ojeMW8sqNV2bysnArG5ZYFjWAAnCehKsSv?=
 =?us-ascii?Q?QpXsKT9CfNfsa2snXVw/4Z5NWnpo7rqmXb+KDsVfHyNVQSxECd/cyub0/Ajo?=
 =?us-ascii?Q?sIVGPsMdoIbWirDj5e2LNPOQGnKRTtEDTttQYJ0/jKMc9dSfNy20iBqop4IB?=
 =?us-ascii?Q?U/Q24OWOzwk8qg1sUJj//Xzxg47HQXNa8UOkh3Hz3SRCfBsK/BHVfEDI4fT0?=
 =?us-ascii?Q?PZDYEBiNgUkEKbYnJxBh883DQFD9DVEPX4crCKIs8nybSXGRVDC6/qnHvWHm?=
 =?us-ascii?Q?SelLZXhUYnaaNCIxzTk6HnguFjQSIYKCFKW0djjRA8CSMdJenFTbFcWSIQVl?=
 =?us-ascii?Q?W8QzGks//oluyFYUDdlgUx9eqRJ41MrXOg9UvF4q912TV7ynkmOYA7cMjuu7?=
 =?us-ascii?Q?pR7rE+kDOG+2R2Hal4RS9+pYpDh+2GkV3E3SaxeM18i//dYQVBFAjSB0ttGb?=
 =?us-ascii?Q?2h7utrKUo3nsKrIhyEAx7+25aNK0aoudqo8gHXLsY5PFYUrIU1rzrt/2WhCE?=
 =?us-ascii?Q?dYKtRBBDzGMTo+m5sf4CtmFpQlFukkm3Srz36Rz7dVVZEWGMFCkrT3HvztJA?=
 =?us-ascii?Q?LlveBPi2RpOvjStTcxuCNJKlyWfuBbe5sw/b1gmwLICz5GSN8OxUOL4HMVa+?=
 =?us-ascii?Q?iHRLfZpoiSXcr2btyKdnQxaZZkEJPMWvyHsNQJiA7c6mf+74Cm4eZTE1G1a0?=
 =?us-ascii?Q?Vzb0+CMFC5250LLbRLZnmycX7jr3b3/1FtIvwQV18vpNywowXFUOwERZp0It?=
 =?us-ascii?Q?Cg/AVqWpnTdn+icMZCOAbyyKoG8WrTBe3UYmrpEiXGSqMpwlLhx+YNS55URP?=
 =?us-ascii?Q?zHPgui7Jjo3FTLbGPBXT8BH7awAPJmA2fL1Fe/fCfw46IK18d/v1G79WRfYZ?=
 =?us-ascii?Q?1bgY0f8Rr3Z9UoNOafSisVbxlhHExXo=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 5196c916-7b13-4504-e642-08de596cf83d
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB10037.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 04:16:09.3147
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pkRCp8+NapIFAZgV42zhkt/TbPcvsHqqOahfAH4CEUwtz5D8uN3bL1MtitIbHvyaGpOZlnFHpAIfQuEErovePQljiNV4YWARBx4J2Jm7QbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10771
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[iopsys.eu:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258207-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[iopsys.eu,reject];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhail.kshevetskiy@iopsys.eu,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[iopsys.eu:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 560AE61A7F
X-Rspamd-Action: no action

These two patches adds en7523 support for:
 * spinand flashes support
 * reset controller support

Changes v2:
 * update cover letter
 * update patches description a bit

Changes v3:
 * update cover letter

Mikhail Kshevetskiy (2):
  ARM: dts: airoha: en7523: add node to support spinand flashes
  ARM: dts: airoha: en7523: add reset-controller support

 arch/arm/boot/dts/airoha/en7523.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

-- 
2.51.0


