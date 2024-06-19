Return-Path: <devicetree+bounces-77295-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B65CB90E104
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 02:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 481C71F22820
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 00:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEB8D17F6;
	Wed, 19 Jun 2024 00:58:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="BXc6urIc"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2068.outbound.protection.outlook.com [40.107.114.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18CEAD24
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 00:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.114.68
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718758724; cv=fail; b=o1T0PCaGzjw22SwaP+fwyAJUlHNkSumqA+Eoi66Yrk/jioJXcLQsz+AkSEmERwA5wGW617vcCQSZfAsETC4xJg4wY6Jqhkr7uJa4APC5z7Pq69hYj/RfE/7uiTHyfZyts2Ndm5HstMsyE/sRXPMPAeFGHAEcLgqKCEWNk6k/VO4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718758724; c=relaxed/simple;
	bh=gr1iX4u6gFiVb45xwr9pZ8SKnEeOKmRjxBhH4o0xYx8=;
	h=Message-ID:From:To:Cc:Subject:Content-Type:Date:MIME-Version; b=RkM35AwBSGqldzJLTeUliqosI0RpAv+4K7oLyl1Ip5YQH/MConsruLlZna/4JubRSlqhDYqyXck1zWd5a5KbuTi7G446X7sjHs+IEb+tL5N1jrGP7ZtYtORhIXtyE2/OrhUBS6GQIt43Sq2eWJaxSrz7n+1w1T07CEpTS7iYPSU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=BXc6urIc; arc=fail smtp.client-ip=40.107.114.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IisVbqLeUbrIz+mwHvBk7xGFwqYoB4v9gp7bOuvbeMdsPtLZ1kbo2NJgSmXjrc3RWEK4TLmPUNeT2OC5eSYidj2jvxonUJmcdWU1nl+ZkNL6jHGX0m/FOk43qeoMcE1lto/z4788YFlvsVmzyM8X4FxgY21kdWn2pNnDsMwvWtKMt/qpJ1uGWF7mnPyGQ3xMxsUSyAKj0zQyeDOeBNtO+bGFY+JL3M13slkP0py0CiDNoYHhheKJOaOqcwy3d3w/AO9K2y0utCC54Yc6hgl2oVt5XqLGdQG91rDBaT6I+SxXXMXWryNsmBU/hjMpG4IY6kyLdEcrR2QgtKa7H6AUOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sFBB6CPnCULOckhzrBYgpyKqk6Z3LQ/cGhg3GatuBrQ=;
 b=Myn15vISVLXzZakqVkURRnN/atmVA0uL7rjdFsAU15cNC3+H6kKrQhTk00XdbmsB6yYCENnBzWUuq85bAz1gsmvLnP1JpSYEA98YnuXglM5LfUrGiZLs61x47Opi7rUgjlMjzV1HGpDEMYwoyzavlLKqrVVMCn/LKP9fpPqQp3AMICeCdNIJfAfNZEeVs9eY9lH/zAYo1hGjXjSdA5FXCqtg3d2HM2WfYI8CTg1frXYmyhvRcDnMx9hTXxPbqdLPn+7+cHas1BuvWh5tw8Yl86DBOgORRH5Mva1AVevbr1ANUeNnVnTtHUTN+AF6SqnqMOQTZ3vWKAGY7VYUpwtugg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sFBB6CPnCULOckhzrBYgpyKqk6Z3LQ/cGhg3GatuBrQ=;
 b=BXc6urIc4hLBJzeoC/3jW7dbJe2tNMuu4dPnGLq57nr7ZnWcz27BQmaBjv4qp1gJxLG3SOcdrtAQ2GGPpPgnFFFSKy9vLHRhhhdbb0SshkTq/jRZ56qeEp9w4VD2yS+8JgYaMTeG4t15aAW19pi2INW1OAHIsvCxgf1RUK5l4cI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TYBPR01MB5325.jpnprd01.prod.outlook.com
 (2603:1096:404:8023::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Wed, 19 Jun
 2024 00:58:39 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::c568:1028:2fd1:6e11%4]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 00:58:39 +0000
Message-ID: <87jzilwxxd.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Linux-ALSA <alsa-devel@alsa-project.org>, devicetree@vger.kernel.org, Khanh Le <khanh.le.xr@renesas.com>
Subject: [PATCH v3 0/2] ASoC: Add ak4619 codec support
Content-Type: text/plain; charset=US-ASCII
Date: Wed, 19 Jun 2024 00:58:39 +0000
X-ClientProxiedBy: TYCPR01CA0161.jpnprd01.prod.outlook.com
 (2603:1096:400:2b1::11) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TYBPR01MB5325:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cefc6b0-571f-4d57-bf53-08dc8ffaf4d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230037|1800799021|376011|52116011|366013|38350700011;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?r9+qsCqQ9ukFDHNLsopSjQs0Iqw8qwBc0Sf8btXRt2NZTrIMcM2Zy/dZuSyi?=
 =?us-ascii?Q?6c5//oQSJM8S1uV9U0ndorvRPoGEAWzw8c2LmZHZtZcTYjOMn7k6ahNI+FaL?=
 =?us-ascii?Q?5JyC4AKAHbapPjBy5FrGYtpXAUEDMMJjm9YhLJ56SXSHXskbtnF+MvFGS+9c?=
 =?us-ascii?Q?xOv2mNU6Ccs8eUVJxs9dLZfCccRfNOL1Qvcoz94dYDr7Pz9qU2Xg3MP/v42H?=
 =?us-ascii?Q?Jv9ECYG4OfVxTpVdCygK4JMhLQXh4Z9qTJlYm+tN8Omn4wZXLqYHfZV6pkd7?=
 =?us-ascii?Q?v3A5l/yDLauu8fgzYgGdjjxe+a6/8bBjAHd/wa2hWFXY8ezZynWFIlZ5U9+S?=
 =?us-ascii?Q?gqcFtumqoEBS9PkOgsQSUDVYTBUjtw71dHsSEEZgWOBal2LLXP6NtOE2eJMJ?=
 =?us-ascii?Q?alZiRAvN9wouCG6Zzi6uQlfujHaNEoGYS/1G0HX7ZfZJi1wu9mdiMaymjCKj?=
 =?us-ascii?Q?NG8DS2n0yU0CbCCrD+PIyHjVV4bcBmquvwykniyvdt1K1xx9Jk0yBM5bbncj?=
 =?us-ascii?Q?1YWoryo62UqKa+98LmLwGcIMjn//L820bjZ8RYF1y67wd40zjAhtGiEeruLJ?=
 =?us-ascii?Q?aQW3QZhNaAbgifHUbLyvs3RkdKyqBGeI8joSaWqw8nui0Y7ujW/S0CEBxMqd?=
 =?us-ascii?Q?D93wLWpU1BME4XTdIy3phCNCy9hjPaJ6lrD22hAVJQzDOfY8BcsmgXvBsGlJ?=
 =?us-ascii?Q?OawbPtv2IYkel956ZiCdkRRamhONODGPIHPZ0msDa1K8vCSzV/OYtyJ9sH7o?=
 =?us-ascii?Q?WhzmaBzq5hkyYe4ywA913yaeNNZMEXbJeg6fALnEd3jqlESrzG1mgVgBkgu/?=
 =?us-ascii?Q?l+gGp0azF7vkK7TerHAanAe9TRyJuEuZteXOZ5YMmI2nWY+eJyahc6kwDJnW?=
 =?us-ascii?Q?fhIMT/Rw79qmcOFzYAwCt9QXIOrjynPvZCtk68qi2uvS+fKpwLwD1JRJZvtN?=
 =?us-ascii?Q?pdf3vp6e5ZqkO2K8fpv/wXiqNknZSBd9wZxZ8YMbzghlEtOXjQ1Xe/EUCMNJ?=
 =?us-ascii?Q?Vaq3M4wf6IVo+XFCzEpQ9+azfrAEXqEUhx27D8Ms83PdzgxVTUbxKBgV0pOV?=
 =?us-ascii?Q?tv/5rcz8mkLjbpbcMz+PI+PGzHSIexxlxeEzRFQTdtDrAnHE9TriyFqSC2BG?=
 =?us-ascii?Q?o5KFcIBopqFACsWbD4/gj/wE41q2lgTUgsnmb9vG9jyhoXjUtqxn2SixZmZx?=
 =?us-ascii?Q?CT/zALY3s7O9iUtW3jK9X4McFUQOlS3s5NFQZ5oE0U3RdITQL/izKEKP9t7e?=
 =?us-ascii?Q?03oMCQT7XGImPUXaEWqqpiSHj105bu5s/K0MInveOniP1CRv73Wdwb5bNLqn?=
 =?us-ascii?Q?TbuBHLUwJsKDcDhGWRMnn4+e?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(376011)(52116011)(366013)(38350700011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?JEg5I9Q/MB48f2ox/p0UAY44jn0Wqyw99UjVk3Xa7PjNr/bl96kp6gTWVK9Q?=
 =?us-ascii?Q?eA/PrtfrSMwKpQybiSJ8Hej+dxSMhMvEgyYaEeQJzw5n+EdjUndpDNFtinV8?=
 =?us-ascii?Q?3kxko2rq20XpVV6UiJl20qyC3tLIj1rqH0u2azCJq/8pNOlQDHx3D5uZ8dnN?=
 =?us-ascii?Q?nno4vK0/IyCK0Pk7jDGQq/yiGov8fJ20YfDntrXwEqz3HNWWrCnsvnf/j4NC?=
 =?us-ascii?Q?1DgyTnDau7FXIsYX5B9/MeY30MNwvQ2PZ+9F+Vq8I1MP4+6/LU8CXGSbKagw?=
 =?us-ascii?Q?l3vMKSwxK0OJTnV+FzgWyuBwIttIK3ZKV/whkr6FTbc9De7UbUlq2mOUR8gH?=
 =?us-ascii?Q?5iCAiU01mIm5gfRtcu3BvJ4NZiTOOZFQFNGi5vHLFIanQj+8rQUA4Ic2Z433?=
 =?us-ascii?Q?Na325RFac+Wvg/FsjykirWz2bMKa+7gBJMbCR4XsMo+6jC4Tu5+Bxx8FlNw+?=
 =?us-ascii?Q?oGhbVYG98esl5zQr1QlQFlhpnkF6XmpuBbZq/zlW5z2ZFin0+tErwaD2RLvB?=
 =?us-ascii?Q?RvY+yFE9TvlKz0Gk7u0qke0mhL5HlUlU+DbSH4njMFfFXQCReybLmkjHqGe6?=
 =?us-ascii?Q?UO+HGaQ7jLAMa5TuU5RX4UBxYqo9NTiM8uOzNqYDig5O2VAaEvOmbNpmZp49?=
 =?us-ascii?Q?nVUGYPkSf7vTMH2JaIEtqA+vtPbYk2kLYxdPWwcP5Vy5Gq3AfCDuGVciMAZA?=
 =?us-ascii?Q?6A/Ots6hCGXM/IaPOmdI0Rwyzc3Yj4r/xjn7z/8z9f9gDLD8UzOrkc5SClPG?=
 =?us-ascii?Q?/eV+qw1wtOGhByZOdYBSuslcq0udP5lsbUj1uG3pvHKK1guXxMbg1pg9ek67?=
 =?us-ascii?Q?Kz4AFYnDAv32EYRqQcth5fpRNBvLIwVVL9HbppQzj5g1wzDsqsEG3bkRAX9m?=
 =?us-ascii?Q?XTku0quMXTs0hyP2123J+O17v6HPCAiSC2S2FeX90QNxO1mHM7SAD1uZPs9V?=
 =?us-ascii?Q?OIK6ciQAN8DoTVOIn4wpQLFFi6cEjCM2E5ZSe4gDt5doCRCZFRvQM7Qaokny?=
 =?us-ascii?Q?gEMRhSfI5tXhrWG54eapHgNlnsJIppkza1MKaA2rDDmAKtGyEAJ263ASNNzW?=
 =?us-ascii?Q?KjLaT4ukn6ROs+0HCpYP59fNCfsyWTTYzbcszfxocP/5JcLBXNRBkgAwr9H+?=
 =?us-ascii?Q?tm5WnVilmEJNlWTpTj+TIST0quO4RkqQQUoHl1d9RX5AxSiggNjhQxrOxuPT?=
 =?us-ascii?Q?8ndHcSD7yMpOrQkkSK8hzuVjkgk15h1nlWOdV/IjbKoTR5Frcu67vKUQpNtC?=
 =?us-ascii?Q?xxvecpzORbXPuuAtroYoZH05tue7vJOQtvAGjD/BECKmNM0jag+Hs2+AvPg3?=
 =?us-ascii?Q?j5oj9bxaEIn0w/XejMJaC9S+Vn/xLpONQWJXSKWGyXfTQrU/ErA9Sn10/RDJ?=
 =?us-ascii?Q?5f2AO4Y03iJilXS1k5w2qKabOWiibbXFucMqYszWDZveL2PcTaiku8HL3SV1?=
 =?us-ascii?Q?iLcZP3/zN+y09XuL31qU+znq8jDzD9/s13cetr88sRZ4Jg3zunH1M8xT50Jv?=
 =?us-ascii?Q?KMWNN3Ym7+XSPZe8grhYLe+XaAGlR0H+B2IDXNly00+nagiJpu9W+klBeJu6?=
 =?us-ascii?Q?WlZuF9fRd6XY6T+OlSeba9eug3yWZGvxBMFiIW+U1/LtlLDyrx558xqFABkn?=
 =?us-ascii?Q?IthWbcUb03FAI9Tock+CbRs=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cefc6b0-571f-4d57-bf53-08dc8ffaf4d3
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 00:58:39.3516
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yq7uvR4/Npr4v7bhLi2bgWumFDHBVa0gj7HkhoBrbqdusoD3+dso+1OK/65BvGFHpPPSDMww4QHlO//e7tPkXwUDd7MekhQ/FgwiYxnp3jVMVUGtJnFkvZYhDDtqMejJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYBPR01MB5325



Hi Mark

This is v3 patch-set for ak4619 driver.
It was created by Khanh, and I updated/adjusted to upstream.
It was tested on Renesas V4M GrayH

Link: https://lore.kernel.org/r/877ceotnrg.wl-kuninori.morimoto.gx@renesas.com
Link: https://lore.kernel.org/r/87frtb3x4k.wl-kuninori.morimoto.gx@renesas.com

v2 -> v3
	- checks negative values on ak4619_put_deemph()
	- return 1 if value was changed on ak4619_put_deemph()
	- use modern SND_SOC_DAIFMT_xx
	- use _MAPLE for regcache
	- add Krzysztof's Reviewed-by

v1 -> v2
	- fixup git-log style
	- add vendor prefix for Doc
	- remove "ports" from Doc
	- add examples on Doc
	- add missing property on Doc
	- add const on driver
	- use sizeof(*) on driver

Khanh Le (1):
  ASoC: Add ak4619 codec support

Kuninori Morimoto (1):
  ASoC: dt-bindings: ak4619: Add initial DT binding

 .../bindings/sound/asahi-kasei,ak4619.yaml    |  62 ++
 sound/soc/codecs/Kconfig                      |   5 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/ak4619.c                     | 912 ++++++++++++++++++
 4 files changed, 981 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/asahi-kasei,ak4619.yaml
 create mode 100644 sound/soc/codecs/ak4619.c

-- 
2.43.0


