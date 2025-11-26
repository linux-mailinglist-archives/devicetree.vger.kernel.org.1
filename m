Return-Path: <devicetree+bounces-242204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA6CC88147
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 05:45:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DDF7F4E3CD9
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 04:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4A8D2248A0;
	Wed, 26 Nov 2025 04:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="bKhDp5du"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023107.outbound.protection.outlook.com [52.101.72.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B830210F59;
	Wed, 26 Nov 2025 04:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.107
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764132291; cv=fail; b=KgFts3kq55IH9aI3gwZJwcYgK6CPZd3r8JcGqcRKDfS8me7OiwERVtnq124/ThcF8qtljUhkFneay+NEvHiFFYmi/kr0/zT8E/Cn/IfRJY/aHdcnZ5aF+942IXhdqM0AzpAuHPAPphIPe9Kx6bhzENBFLwMKbtv47sN6MRfppPU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764132291; c=relaxed/simple;
	bh=Rruj1vQg7BKNZeUoxpwTvqzaTImSppVdhLk6+Gd2ShA=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=VNICTHiNz6bixcECVoB+arCJweAhqP8P8ob+g/sXX6m28o6DpzFP6ZuDzDFpZvIS+EaLNY5zVRZxX3nX2mz8D5sKBwcgSDzdmkdCoFTFk4iFQY4GgW/nVGECJ9hgpqymPkkmoC+vkbWs3omoNK0k8jCtsS88ym+RaVir8GJmCNs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=bKhDp5du; arc=fail smtp.client-ip=52.101.72.107
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VcdDUBoxIhHLIxW0qNUqkUgdV0aiLglVsYmR/vrkciE6itFqJnmqSX/spHYX+8RitaMhfr4i2VUKHGyQmgPzA27I7MjCo3Gr0ksTXrwO0zCD0uQj7mXO/iRQPzA51cSY49e/KxiD4ebBZpN1RTuKh3oFRfUzWQVdAvx9bhTl/D/qBmJ43OCQIJ6vqWZNGA6dhXV4JBlyVHGMqnwehIDw2pbruJiHYDV7IJqa9Vf88cQhbD6DQ53Nl66sdecjD0YAzppgkcAKJgp65Mr8W6YxUDewZ32XoVPdfTxy8ZdTvSTOn28B4E7o4T5OxQKF4XjSuIDFCA7FzVSLUO0AxJqTUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=74feoSvIUeG+O2DvyeYEqghXYHPFT4fA5WGSBUTmJ30=;
 b=Y2JuJrEAiJM/B+6kYWh0xe9aQ/HfVLw/CKaG5IVyo7B4Dx5ybbxnMNaTHnyebn1dNQPrk2xbxhuOLtaqa75KZrW6CpeYJbBAhPs2CZOzWkUyMzUDdkyrWIjN+SQuYaQPaJB3k/qVAgjOY4uKzFyTj1L3sVUnGtNJiXx3aWDntFwOlJytW4jBBtTi9CJTT+yPLyVsGF6SJKDQRcuc20Mccp5YFbq5OvmFg7PqjIhzT9wIobQHAFWKC84tZ8scVoXtp/Lds8429Ym1Qe95l/Hhmcun7LL6J3BXHF1OtpRbKdACDHvIPgQNp58rr5f19TAv5UM/6cpas7EBu/b03SefdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=74feoSvIUeG+O2DvyeYEqghXYHPFT4fA5WGSBUTmJ30=;
 b=bKhDp5ducoRB9943VWl8Ctia0c5VdYZnIPD/ALeZGLU1LEW+EUODnMjQvKb+ky0PEajVjVo18u1bAFB1j1uwgY6TX7sxLW63Fdwh5uyibBXvA44HDXW1XIjrsx2nD1BLr3f7/nX1W7AS/4jLVGe3fbmLVutKjpyI6zbXpio7jNB346eeJX2zsl36mPHiv9r5fv3stngyHgh9L6BD/D9iVvSRqrdX4lSj3HBNZgnOl1/+MFWape+/hCDMNtLaBPQ+Zr1g99ia4B/RtuBtUqpfqeWuJoRZNyu6xdCvVCNej7nZDR0lAGx9TQDGKaKyxEPqB7N5wPGnVDxGmHN2GI6nSA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from GV2PR08MB8121.eurprd08.prod.outlook.com (2603:10a6:150:7d::22)
 by DB3PR08MB8841.eurprd08.prod.outlook.com (2603:10a6:10:43c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 04:44:46 +0000
Received: from GV2PR08MB8121.eurprd08.prod.outlook.com
 ([fe80::4cd3:da80:2532:daa0]) by GV2PR08MB8121.eurprd08.prod.outlook.com
 ([fe80::4cd3:da80:2532:daa0%3]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:44:45 +0000
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
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>,
	Andreas Gnau <andreas.gnau@iopsys.eu>
Subject: [PATCH 0/1] ARM: dts: airoha: update EN7523 dtsi to support resets
Date: Wed, 26 Nov 2025 07:44:29 +0300
Message-ID: <20251126044430.1136427-1-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF00007A83.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::613) To GV2PR08MB8121.eurprd08.prod.outlook.com
 (2603:10a6:150:7d::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR08MB8121:EE_|DB3PR08MB8841:EE_
X-MS-Office365-Filtering-Correlation-Id: 393ac185-b546-4f14-0db9-08de2ca685a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|376014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?X5oKYjFofTGE3sHRX7mDvU3TgExWLnLo8KomcKwh9lmZ8o5roFeoUlH50a3q?=
 =?us-ascii?Q?4ivVRDzkXkC1smq+HC0m/wCdLszWcvK2xN4j6MQHjjA46+lbph/e+MJCMOUO?=
 =?us-ascii?Q?zE9U1JZFEXNAzVy1VpDN+8AJly0+VNg6FjFKU+bvuO7O7/pFW6ZNPKPXy1fJ?=
 =?us-ascii?Q?UFdUEEizVmV1t03sfI4UZ2fljHJNFWTbA5Bkd5zuBVInLMjrzTbl94k2s0cw?=
 =?us-ascii?Q?tBlUz9EvJHdwMhUfHj3SHNNxKjT/kBgdauTnN9wL7hcLhzR2hFTE7D7qthMO?=
 =?us-ascii?Q?6U8DxK/4K2OAnDpz5GDIVeSUjKuSl2qBIwsjE7k+WuAiuLvbGIJkSyl/TxY9?=
 =?us-ascii?Q?LUQGFJUlmpdsSs6r4OeGk3y0WWD2oUtgtFP1gu6h7u3e0ivYr6klVReTNE2y?=
 =?us-ascii?Q?djnPq2iV4eN/my9X2YZBF01AToQMW9hsSwd8TuIkvD/WmEp0lqFaoSSPv+H1?=
 =?us-ascii?Q?8P/FaOpxjy2XqmN0vmGp/joHcIML3xIyRtjmsW6Iukpg1BJljb7SgvSPW6Zv?=
 =?us-ascii?Q?a1cUwlguWybydgPHmvszdxelf0OdHy1cbxcBpEdxLG2PYKZccjUTBx15dVJU?=
 =?us-ascii?Q?Xy4+mXXitwWUZvJVTpAJpe8zxLrR6wwotOyT3ygKUfFzypxxAG9KMXd0KL4o?=
 =?us-ascii?Q?1LWIa7FOgyjcHM4n/T/0IecUaGo57uJ6l10JhWxZQ5LwNV90bRyfV7CfZr3W?=
 =?us-ascii?Q?2n+K0/YPQ4tHQn9BWjsnew5uXY10ahpbZgA94rH7TeGuXrxuZ5cknZRGGd4G?=
 =?us-ascii?Q?15YDQG4xLguz9wsHidbmglTNFHaf3U+FkGnXBWS67GlAN+iE7PmrxfsLfUHG?=
 =?us-ascii?Q?mKoXegpkndxoDKfbieleoQeTD41yHNCSi5cUvfVprRj9WC8JtfPqJoXmBW1G?=
 =?us-ascii?Q?ldYCwX/zkUQ0QCIH81UdEfWclswC6IbcIkRKEWlxtM03k3UNi3n+YsWnhroS?=
 =?us-ascii?Q?AiF5SaGQbLu37VjS9Mj6WwpYrrqrQJVaoVOBdvpsTzn2cjw5KuqbswtLvrKP?=
 =?us-ascii?Q?KCMfqdRGNOgTpi059ewdqhUhbsDYsceU6mVps3KDgZ+SCT0y5Eh+EmLBi83d?=
 =?us-ascii?Q?PPZOvU0IUoQ1P2WgRaIQNCQyBhwd4tpy5uK1dTkDHkkC3Ri5PhscXYjN6Y8A?=
 =?us-ascii?Q?APYe203Hio9q9l9NetSkz//cqkzxQObKH7n4WYM9c038YPv+Z9Vsx4f65mBv?=
 =?us-ascii?Q?MCjvQL1BaSjVJaZ36KkOceuaCF0h+xGNvEfyXPFLpzGUzVzVwitkPXQKaI0i?=
 =?us-ascii?Q?vCyalm8faO63CHjYKC5peVBYpufeRyBqaTi7VhLEYFFUKNFoj8qagtAQzfZu?=
 =?us-ascii?Q?9tYGy6uP+kUvHfTx2zQ/xsdRGwsrWxrXqtabMiRsZdgOwJ/oIkgrlBl13NQB?=
 =?us-ascii?Q?kMcZAUYUyAH8s8VxoqGyGlg/wvFhzapcmUeYoOh6+i3sXZEz07LPpuAFe8OE?=
 =?us-ascii?Q?OsWjllf8FSzgkdHvsKBp7wWTGj/4xcXI5r914xNvpA+7bsb/WXr4l7+AEVdD?=
 =?us-ascii?Q?hz+dMYl73cBl2jUmjskDTkWrLeHX0zpi2BEZ?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR08MB8121.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(376014)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?QEFnmzoy1QPEiGWgGTsak4DFlck+PCGjCVhg2vpV5ZBVNm9EsgWnsObUg2HW?=
 =?us-ascii?Q?0sBW6o4U33QkJ1n0BGtgg8fwPUB6EbzO+cYS9HcUq71CIXvf0VEQhlsVmslJ?=
 =?us-ascii?Q?VdD4MtrTf488fDPE7G7w1FGVcK5wz1hTg5yYWqJz3bsTg1H7xy85aaYfukms?=
 =?us-ascii?Q?/fnkvsBEA2m0GYXp0xYEx91O0vPgHLTaIvFdi+J8thafVeyRo3xyQKBcUQVw?=
 =?us-ascii?Q?ITknzcz+tBLw/nGTJzMpgK2e+DxUEJtsgDw0WsLppmN1RQFthZ8wF+ZmHdBt?=
 =?us-ascii?Q?XXd2oJaXDCxXxwUeWu0TkBamiUT+8e5GOIW8rTebbmF6QX30NbM1PbmGrNHl?=
 =?us-ascii?Q?iFzWsrp+NiJO7hR8qKXBsPJZbs5i8xrj47CmsbxXtLLJVo5Gr3OYxsExqTii?=
 =?us-ascii?Q?+4JahO54UAMK86UcQ0Ygl6TYn+tVs4j2dGKxk7zD4aie78ONQHdp/ShG+fnJ?=
 =?us-ascii?Q?t4N/UfHVBd2Jze/pmvA9IrwyYvNmlrkzeH58p4t7OvH1rDg2uNLuKhaJf46i?=
 =?us-ascii?Q?9ASQfoDLaX8JCkxl3iX4Bv5wIL2CzIciZUfZCFWX2jAeEhyosE+PeDCpPQjs?=
 =?us-ascii?Q?2BfzOE2CLXX6fDKI7Zue9OxEFmOxvvpke67WRTQhoVSPwUrApfmMUo28kBRt?=
 =?us-ascii?Q?kSy0XZH82eERmLDHkz+TMGrbfPZJgH5maeCTEWWV7lYHjNjejy+TxdT7dpHv?=
 =?us-ascii?Q?9F2n/Ki/AQUw9YPPVzQQzy0fy4G3VQ3FfRqDozUze04d7qostzw95MjK2LBj?=
 =?us-ascii?Q?3PA7bP9YR8BAECY75JxPl2gTOn8Ak90KmHKJ+y2xYVKz3XPg/EmKzpCC7Qu5?=
 =?us-ascii?Q?TqYtg+WEyBkyD0wqlL1sucnjV9UngDz91IixfkY5rdTTOm+nhiEUdczG9nQJ?=
 =?us-ascii?Q?f2b4qKDxogph3/xB3FrufHnutihQ8PNyRDAAOH7jrnGEO3yf3+0p1+67obPP?=
 =?us-ascii?Q?kmTZorubnMvE9tz13b63TyWuK3p4q2qWlcIi0f0WG2opEU/7W3SiWVs/a4HH?=
 =?us-ascii?Q?vmyNQZZVYe5aa0l3Wx+2oTbpWZvM5rP1GAFFEg3CG6yhaQQUqklNFR9Cswb7?=
 =?us-ascii?Q?9mDF1O0FTc7qCK3JrrpJSIE2iMbu5vpX/4/RpanACkNdRaVp5G/6dUkC2sws?=
 =?us-ascii?Q?2rgODaAE/F+n43HFbUlZAC2Ra3piZ5wbIxFjLD9z5UUNcDG6aBEfYJch3Pwd?=
 =?us-ascii?Q?h/76ytNOoE9B9kTXdjMwMJ2W55B7kanbUxbhdfMiBUxBSpmopa2KeMV9xY3V?=
 =?us-ascii?Q?I9ma1QdWGwuU8eEoRrcTdd9YWvc2usYOdYlPb1lPR0zLCUEJio3IZ6SnlOtm?=
 =?us-ascii?Q?Xiv8dNwtB4UC6Q10cI0OWBkweA26KVTJv1+FAG/U/nsrBkHhZa1zQSeF0jAO?=
 =?us-ascii?Q?NwzHsglwUzxtVKK/JUA4Hz3VCeDFgcp4uEa30FvSvXXmXO5tUL5AWNzVXmbV?=
 =?us-ascii?Q?22CxvjQ2m9oVMYtEUkMAtUDIhCYUEKsEXU9gaMM24lrWnwZNsTBgfhQpQAMb?=
 =?us-ascii?Q?6sR46jdPMmvqevCi4vD0FtDSiNXwAogvCvJn3tcCEQkQi7kMmjqBVfv/qilo?=
 =?us-ascii?Q?4chLZiKQYMJqSn71+rmdm7pD3k5rk8VgFXGke3Is9qaI9oxOHVbKzqSscWLw?=
 =?us-ascii?Q?ZUYvdQej5xUfmBP/uPq1tyI=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 393ac185-b546-4f14-0db9-08de2ca685a5
X-MS-Exchange-CrossTenant-AuthSource: GV2PR08MB8121.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:44:45.6916
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bA/h8QlriOE5JoO3atydh+h4HSNqfaNUiDCXAU6uO1/o7dfScvvzWio1h/c6lOmAqlPdC8oG3JsRKFSSv+cAdRdpKydgy5YJgT7CuDA6hF0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR08MB8841

This patch was a part of a series:

  https://lore.kernel.org/lkml/20251110035645.892431-1-mikhail.kshevetskiy@iopsys.eu/

Other patches of the series was already accepted to linux-next.
This patch get lost.

Mikhail Kshevetskiy (1):
  ARM: dts: airoha: update EN7523 dtsi to support resets

 arch/arm/boot/dts/airoha/en7523.dtsi | 2 ++
 1 file changed, 2 insertions(+)

-- 
2.51.0


