Return-Path: <devicetree+bounces-258208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +E69HvSlcWmjKwAAu9opvQ
	(envelope-from <devicetree+bounces-258208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 05:22:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB1E61B18
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 05:22:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8E1AC541D6C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 04:16:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 691B243E4B4;
	Thu, 22 Jan 2026 04:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="XKer2m7y"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11020133.outbound.protection.outlook.com [52.101.84.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D853136D4E7;
	Thu, 22 Jan 2026 04:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.133
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769055386; cv=fail; b=kD3/0gqlaCZSz5yAn354L/B0b4mQK3f0Y/wGsL2sqovD0P1X7gEytPD/mXoBsWkC5LAhNurYRsUwZo28RDp5GnlAq7/VB8c3yMhuxTQ9xd5pKxjphzZ0bIWZFWerk6Aft29niEWN/IZZwxadiJpFxpZCp2KxBYRWLdrSQTGllWY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769055386; c=relaxed/simple;
	bh=PzAEtVC1OAN+ZsbmD15x5iHLCTZxgoR9+x01WEeARqs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZtX5awGpbpALBVsptnkZxGhnrlUHjaenP7qoiNVod5/a6sKNU+4Whl52LRUFQ3OmYa+sggKi4q50/q6sCpLXAO0osDMLG4d6bLk2RkWyX0xr6FJdPrSk0E6fLx1AtjM4A/c9XkZKVWPh+dszwOG9DZeBbqPMV2qriHz7uoiwtOM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=XKer2m7y; arc=fail smtp.client-ip=52.101.84.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nm7cLDp2KaeozC+1E9n/UI8ANVCglGwmE95svz24bjdTm0TDFPF9QvueARMVJ8BVBsXvFe/3t59kS09TuiDQYT4XHEIiN0Tzc7H0yG/TrMrTf832ha2GGVt2+6WpbmMXFBV5OhjpwxvicwaH2xCPuUlB3C5xqet1Qcq6UW9ZEoFKS/vT4IvDwfwXjp1m8FKdpkOc/Uz8eLsuwAw1nmoglvHdjpEgSHVlk9g7raQcnOdxWd8s7Y+W8m/xVaf9PJBUfhS37ZVYJd5F5w8rVjHbV+1YuQ3ZZqOy8SpYlh3fgkUl80MePlHsoxo9Reww9Nfqf7m7qW3uSKUDcD0G7pDbtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LcjwgzJuu4GKdW6MOzMtH4k6Gjp8Fj9ec0RGvqyijPg=;
 b=AYdLXGbbGhnN7GDzIswEu71enR3SPS7GszhEpbOqteVZRk+K1TNT85tKkAZUqOihURGWyAQy1jtQb5iHdjXui2gpI5mRec0p0d7sCMspiUZMPOt/JwmjaNqkPJjK0ZHPWcicmM/yotLoDuAHRKUVcENunDC1VudRwn+b8FfmjaTF5V07xGnZB/dSY10YB1qzyDLBEb5H8sKKg0YiwW+ZRDUNd1a0XQZ5cnQN/9BmfS0Njbu7x36aeVn+Tq9+5guis2KM3H7lKoNoo9rOo00fhyLP4ZoQzKhXje3wiAPOKVHgSYTv2SmTG2OapP4OQdz/DYRts0ssA3poZIJrMrc8Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcjwgzJuu4GKdW6MOzMtH4k6Gjp8Fj9ec0RGvqyijPg=;
 b=XKer2m7y4x8f0PBKcrTxqHRzWu1yqJkrPsbCeZjj8Hi7PTKR8xEaJL1Yf6wbueCRbRo590rdd58EPjOwbiMFHTIJi+14NvdfEpKYLz2CSDtKnVjQ1GDDKH3zdCFBMhNFwURwbakgxG9hnq+zDwm7YZ5+vnq0gx9wsMCzeF+GNQPB1YXzDeUR59mak4qHcnHQzTMe6NzrUs5pBwge9UrCJw64Sc6q087FUCUPRJd0TXDhM5Y72/Me4G15UtR2/Q1LYFRNZSuqaG7MY/Itn3TEnTITBwwl8WXdXN+7iG4DPDPp3xTN1heLU+EyieKpXABoRz5rd7ADQ8pH1uU4A2Tlfg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
 by DBBPR08MB10771.eurprd08.prod.outlook.com (2603:10a6:10:53a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 04:16:11 +0000
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc]) by DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc%4]) with mapi id 15.20.9520.011; Thu, 22 Jan 2026
 04:16:11 +0000
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
Subject: [PATCH v3 1/2] ARM: dts: airoha: en7523: add node to support spinand flashes
Date: Thu, 22 Jan 2026 07:15:58 +0300
Message-ID: <20260122041559.240864-2-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260122041559.240864-1-mikhail.kshevetskiy@iopsys.eu>
References: <20260122041559.240864-1-mikhail.kshevetskiy@iopsys.eu>
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
X-MS-Office365-Filtering-Correlation-Id: 85dcde18-57e0-471f-2873-08de596cf98c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?9mvciN84Y2WAu+60YyIvpDwuj8IBv6S3JsN+AWsMvxNksI+Q/U9KrShVSY5I?=
 =?us-ascii?Q?hJ/wLDmBGcaiiZ4hpwKkUovoFmHLprUKYR/V46UH0KbVavrgoxI+xfnaHEDs?=
 =?us-ascii?Q?iR650GUlwhcqRo9G2B6/KQHcy7JwiAwj6FqT8Z/yphvytHaRakLlPoGeKduT?=
 =?us-ascii?Q?FG4pczv5ey4+tR22S0/aj4x7IUW0rr53+e+9FfFcchHExyuMZ+0z1jSd8sjj?=
 =?us-ascii?Q?Gs53LYFovofR3JQ9Crm9H/faDEpmPKqzCJlyeRlYNn5MP5zEi+61J26MxsPt?=
 =?us-ascii?Q?J+itSBk1s2I/FX2ZeFM6F2swoLigzRpLChdUzK+dyR45OncXuiUNvCc6bvlK?=
 =?us-ascii?Q?phHyRlAYZ1B6oIPUPRp0eSK9+flUzc4qFh3ECpXd+lj42EkiRqrQaGJqO9ty?=
 =?us-ascii?Q?zsHNWWq4LefDYhmeKWA8hLrnlTJCaoT/PPm9/2msaLPQvMa2Jm5vzwz1tNyX?=
 =?us-ascii?Q?9Buh2SwV5JdqTmChKaKJk+AVcnMYZVJKgOd8R7k2kpXe7SIohsz6La44s/BQ?=
 =?us-ascii?Q?NDdIGPsjm8jzYb71WMnTPE4oedOvrDqhCWyYaYGlRs3HurUL4LwcjCby2a+s?=
 =?us-ascii?Q?l4maAvE5O/1J+8ZUi/z9igQnUD5VGshZ3SevVKo1p5os+0TFCJqVMcaNTh7Q?=
 =?us-ascii?Q?8BmvG+xqN7SsV+jg7eVSTZYejYZ8wNBBbT0gGkg5kUfoc6ujU4M5Tdb5C0nd?=
 =?us-ascii?Q?9npM5EZjOeffC6DhrX7yGftZb4/bE8JVmKh2+qRXn1873puao6igqbJ24aDr?=
 =?us-ascii?Q?hhne4qF+sBrKFRAAs32TJbxTPyigWvw5FprYug+U6SMSnlfIeWdNQhMF2vh0?=
 =?us-ascii?Q?0jBw+ohX1dIjfsYDgeqy+wDdl47Rw7yzdejIMGqolzzAz3FEtiRXe7+P1Xyz?=
 =?us-ascii?Q?WGrO6otnkstSF/fTIAgv3/+2NuEPTXzsF1oFoJ+rTPFEJlSYzQgHDPCEq0S3?=
 =?us-ascii?Q?hxYLjihs7IiPT2l7yz+qk1ihfHW6MW4Y06hFR3LHNvfrQrCs8C9wo/BZPjwt?=
 =?us-ascii?Q?US/dSPpJ/V5izkd9pzO+erGuNjkZuHdgLHz8BtEsGLsu7Vwcu08OpQMYbQYk?=
 =?us-ascii?Q?cvtWZr/Wu+APYqtGqiJqq2wZletIHJgTtGsIiYNsqGuAu2xuFGav8GS9Q+Hq?=
 =?us-ascii?Q?LmhzvxNByOTcm89wrXYYl80hxjh9q8RjbQCwbLPl988KRqd06M0fzqOD6are?=
 =?us-ascii?Q?svrAkbxFr40YgjL+0OHG7Xkl2U/0IEgF4Jxb+Fk2nFasmEroJg6Ja1jCxxWe?=
 =?us-ascii?Q?ZdA/BL6EUORTG9+glRWcURyQ42HsUObpzBrKGC2/ZdKH+lL5WOHs2Us8yEIL?=
 =?us-ascii?Q?njHzbBMGy6UovvvG6Tm40AMSbBZpNdP9fMFkufCG7Fx7ymw12UVDu/+p9cSr?=
 =?us-ascii?Q?N6lwg3oc8xBJ0gooJnlHomC1UkvOcFJKO/ExVK3L2WwxiwB0YpB3VxGPuWmh?=
 =?us-ascii?Q?o9jD7qWnjsZEpN70Jko/sXxbJ7bhckXHK7We91GqEwRk8LzwOcsqnrED3Xy7?=
 =?us-ascii?Q?uOf27a7zUYk8jbzcBdnqMfa1LCWt5qxn6Uq+C9fes6seDwlwL5eHD7dNVCy7?=
 =?us-ascii?Q?5SFnlKNKdc0BF9Fbk1G0UjPZzyP06IDmMcIgPby8bJOFk3e3gKGvWpuh4C9j?=
 =?us-ascii?Q?Cc5HamHigAUZB6pUQiEisc0=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB10037.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?/PMxK0Md4PpanGShHqAT2Fufs0Iovyv4aOO7ExWYuk5xXnSfXJMsJLN2POPK?=
 =?us-ascii?Q?A2qR1WlgCzzBTBBeVoREqSfylekgtDPjx69/71acGQGqIcA75lDIHyMlMZZP?=
 =?us-ascii?Q?IHszd7pK77b8gnTwsF7XY3WwWGZgNiWIh7KbDIWAzeD5ANY186aqI+scaOQt?=
 =?us-ascii?Q?ZLBS8WSvGFQ762xN2T782gCX40SSpuaUwH7wwb9SkpebfSrsVQL4YPjRiR8a?=
 =?us-ascii?Q?jTCTcyV31X6jGMTMJo/ibSWFQeuG7Xs87r00zxLcADXRJwgPQfRKU/KZ5bsy?=
 =?us-ascii?Q?sAeGKcIzJ8bHEhE7EtpvrWQ4LfjsTeRpFiaEHVXPIiX58yeWDIKBJe22sW6+?=
 =?us-ascii?Q?zX21asyPAf0QGlKFbB9lWjTJiWmQsRvURXISNohh5EcCEeLvYu1IJzxWaslC?=
 =?us-ascii?Q?vvq74ytq3pRd+2rGI3kyAZEZ/i9HSjhKzq2fDZzbHzLI/ZtZwEkJh5hZPC2D?=
 =?us-ascii?Q?hGaqSu0XdW/9FBVgA9mt0oIzl4ZDGfGDXQs462tVlywJTj3s0QO2+FBuulRn?=
 =?us-ascii?Q?IqNdzaqb0Unjny5yGD4p2RRvWlt2z2mRseCIaJxqW8EqWFWle+rKm6FIK5K0?=
 =?us-ascii?Q?shkizdoQTQgkGOYHjKfAhf4Wxo6dvGhwFh5Y6v8XOD2zKG7pQInWaohRQpcj?=
 =?us-ascii?Q?Wl2Ut2bQV+1sBEsY4BbaX344B4vTs7lcpFX2w3ABW3ta1zj7eFvQZWlKHChj?=
 =?us-ascii?Q?w+YlU69gdv+8WRRHDaKQTK1IdRzRBccjPi4dC2XTDnNsQxheRy836/n8hF1t?=
 =?us-ascii?Q?/KtfGH4m94IhAndkoVrhc8npCJRBkyYKlo71aWICa/yK22xR3Uoh8aJ9kzMW?=
 =?us-ascii?Q?fuvBCzUwMKbCAo6oyvrF3VAhe9cCvjqoCKDsQ8zSvYO1JP7mX5C3+SCSJUJZ?=
 =?us-ascii?Q?hBSZ+wuHz2DDzT9sLo6hCFcv34vKe6W1MYZYQWySlOPM1PDZ2fiK3EjMJBa8?=
 =?us-ascii?Q?McUNMEGXqD/jqjCOP2FPLItofU1hB3IBnekGZJjatOPvxdg/Q+g12lEeTwxd?=
 =?us-ascii?Q?sPhLFJKlO7SLAa2+ByL5JE8dFsF8gI7D3a8TJGqktYn/I4+wlsBuMXnFm53s?=
 =?us-ascii?Q?OApe/JWy4MO718Ww+J8MTIdsBYFc7cYhxcFB0LWr80mX+bfxHbN6LUUFhsrR?=
 =?us-ascii?Q?ST1phIpYAtrTPvM3+EBa0U7Pjaw6p3TEweYoBfyNJBb0rigA2r2cHfWS0nkm?=
 =?us-ascii?Q?DZsersYrsWKgbvyFh7rieS++pdwgHzdfx8FZFJu6+7F4u0Yt51ubdBzKoYz3?=
 =?us-ascii?Q?g7w4gtq+WwR55oFjdnEXW4P8UxfoIMhM726Ga16xVz8HbWWnQ3fKfLeBdkzv?=
 =?us-ascii?Q?E/JiQmhCu2LmmTNXxhdemDX/lz2ynl2ryZCyi2LXZA/aGYssecdf2+Kzt7ZU?=
 =?us-ascii?Q?MyxA30DpJi6ZGG7ZAxGAhJFuoGm5U/EltYT8RAIiw9xjetueP4k2rT8ee2BU?=
 =?us-ascii?Q?0LnIF78FWmdoCkPWOqZ++ym8Y5lyDROkduAKkdqdTZBwzn5IGWJ0TFjq9qH/?=
 =?us-ascii?Q?7WqcyDK6kLB+AySNVuM/u0B0n2m1C1ySYtWFR/Mvd+JKxk8IfFgfr5iXlDmj?=
 =?us-ascii?Q?QJJ91+0AN8soHpqDnqs6tCIhbbfiB7j8iAgapWp8Wb8OrlIRpCFhQZXd8wNG?=
 =?us-ascii?Q?1hYumHM48lLHrGiqQD+pEqeGHe3Tn7cXm16mf2sIAWjTcCLiqGxYh8voTuWV?=
 =?us-ascii?Q?2EfFXxzYRYgOmqHH8ReMCs+oA+UeBg0hadf/S4xHKYUsV6Dipi6d1IUGnvwE?=
 =?us-ascii?Q?+0FdWzKh60M6imVoKCdlXNMN2zQk6HU=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 85dcde18-57e0-471f-2873-08de596cf98c
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB10037.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 04:16:11.3745
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0vSYv7aTEbExCYZfZron06M6bq4bG2xjprNuDAKx3m0RORbmvMAF8yk17D31cld5iPGKodpIEjEW35wJMvoKCY5PsRdlODJXCt9xZbUIQII=
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
	TAGGED_FROM(0.00)[bounces-258208-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,iopsys.eu:email,iopsys.eu:dkim,iopsys.eu:mid,collabora.com:email,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 0BB1E61B18
X-Rspamd-Action: no action

Add SNAND node to enable support of attached SPI-NAND on the EN7523 SoC.

Signed-off-by: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm/boot/dts/airoha/en7523.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/airoha/en7523.dtsi b/arch/arm/boot/dts/airoha/en7523.dtsi
index b523a868c4ad..31191b8d1430 100644
--- a/arch/arm/boot/dts/airoha/en7523.dtsi
+++ b/arch/arm/boot/dts/airoha/en7523.dtsi
@@ -203,4 +203,24 @@ pcie_intc1: interrupt-controller {
 			#interrupt-cells = <1>;
 		};
 	};
+
+	spi_ctrl: spi@1fa10000 {
+		compatible = "airoha,en7523-snand", "airoha,en7581-snand";
+		reg = <0x1fa10000 0x140>,
+		      <0x1fa11000 0x160>;
+
+		clocks = <&scu EN7523_CLK_SPI>;
+		clock-names = "spi";
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		nand: nand@0 {
+			compatible = "spi-nand";
+			reg = <0>;
+			spi-max-frequency = <50000000>;
+			spi-tx-bus-width = <1>;
+			spi-rx-bus-width = <2>;
+		};
+	};
 };
-- 
2.51.0


