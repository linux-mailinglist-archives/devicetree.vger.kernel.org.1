Return-Path: <devicetree+bounces-93023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC71994F555
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 18:55:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B9E61F2157A
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 16:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5390187550;
	Mon, 12 Aug 2024 16:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="Q49R/y9y"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11013060.outbound.protection.outlook.com [52.101.67.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF804187346;
	Mon, 12 Aug 2024 16:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.67.60
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723481698; cv=fail; b=hqA4B5mWrLL8OgybiEgpUpMJ3RQgg0mAoFMQgOp7r/6tObQNOjEysCClYgbIOZf2jZ14isUBKNxQayQ3pww1gqdMxQq3qAA2vRltzmdrWQhx12k3KOOF1bEWxcPfTLnwwt5uVyzP8buulHqzqsTkJp3QrfrpK61JqdNmZra8Abw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723481698; c=relaxed/simple;
	bh=DnrihKLt7UcY3T2N7TVwrwlUuGB5r8YQkF2dvehto54=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=mQTKAJI2ib9Pt4mrBVy4w15IJ1a/w/y84LMPoj89IIQIlnUrUNGqgd5xbUMXCYf5uDr/vALCPpvOop6BmwogCplgZuv0N3QS/2JcMYr7/mgjiuzx5cgFEcX4ufAehP+JPRwE6EssyKt2wRNm4Rx5zIJZBTFMiSjtKg4Gyle2DJs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=Q49R/y9y; arc=fail smtp.client-ip=52.101.67.60
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bybsd9a4Kfy0bot9V/CFZKC+wmFUoJeJ4rs9bO0BU5PIuym6EXqrXc0CjZUA559MqSTo+EORITy7kPZYx9wUvG4zzwCyGyqgpScGW5OEBYefuhLcoK7k7MqnFGllJeE8HlgK8sUQjzdq4KY+9U9tecXhnUqjon/VyKoC5EGHqFcAgy7Szq2OoVi4Yl9F8m/HRTfZbOUVH+dYDkg46wK35eyiMCG75higkAYTik3bmeyzjri2hT7WSpV7feindP7i8K26LKJ6Wy/y7b4+cSA639sJCi1F8K5QXf3Q6ky/LXA8FXcydAg5YmQOBB+1TJ11a79sQ/Odnk75Lz+1YuGxjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sH4TFML4O7AeuJjnmwdVRPDfXKh+TlI+ere7g7Stt30=;
 b=jIH2AI+P8VfTviweHVCqs3XHYE8zYZNAfC7oWeXGCnqnu46OihndcBPkNF7iV1RvqSA9hSu+zbHnKwmD0k1Hch6MbO/XW7XWbcR07kKedrQDCSKlTrOPBiGhoYiv6795Hf1Sov5JfZwh5TbHr8CElkztCAXUAbU3fwxxo9HKyXO+xruVvQRQg+1rgjZXDZmIwyqYkFTb4my4e3jjNx4RuAzs/hRP/DVO8ssIZoGuASQ0YQcAiBxPXHBteMvgrXr+HHBZ1eLawQi+FJBuRfsC3UFQsovdNq5B0tj1YxeHFiVadNFfnOLUiE4aR8d7R4ii/pYB4c/m8OtFnMa1Hd6O5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sH4TFML4O7AeuJjnmwdVRPDfXKh+TlI+ere7g7Stt30=;
 b=Q49R/y9yHRoC4pYM9Cxl2CHyPvhPShVrJ9gpBFXue2I54T0LHYb0ASGHNBHEOeka3ppbjVydhRiNk4SkbnHiXXyAvTz5yVeWPaRYZ0iJ9kmjB5DQz7pUCNfArQh/rT2CYmePwwCY7soNlQAlbWtI25DrLCHR0ICJBdqgPduGePNCP9SRPy4vXPe6q1sHailQgXffwskGxYJBCUACcih6HE9papW1MD6dSvdYBrFz54qVsQr6J7VJ9v7xfgqFftMp5/YtTaXw+X2x+xRK/bfPKu9ZWH/MAK/FDYOoA/nvwTAJ/YXr43OifnaREpL8Sm2iRILYvC/x+K6UzlJswLoa8Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by GV1PR04MB9101.eurprd04.prod.outlook.com (2603:10a6:150:20::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.20; Mon, 12 Aug
 2024 16:54:50 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06%3]) with mapi id 15.20.7849.019; Mon, 12 Aug 2024
 16:54:50 +0000
Date: Mon, 12 Aug 2024 12:54:41 -0400
From: Frank Li <Frank.li@nxp.com>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	"open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:FREESCALE SOC DRIVERS" <linuxppc-dev@lists.ozlabs.org>,
	"moderated list:FREESCALE SOC DRIVERS" <linux-arm-kernel@lists.infradead.org>
Cc: imx@lists.linux.dev
Subject: Re: [PATCH 1/1] dt-bindings: soc: fsl: cpm_qe: convert network.txt
 to yaml
Message-ID: <Zro+UYRtSrBvLrfp@lizhi-Precision-Tower-5810>
References: <20240812165041.3815525-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240812165041.3815525-1-Frank.Li@nxp.com>
X-ClientProxiedBy: SJ0PR05CA0208.namprd05.prod.outlook.com
 (2603:10b6:a03:330::33) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|GV1PR04MB9101:EE_
X-MS-Office365-Filtering-Correlation-Id: f5e36655-5a97-46a5-8bd3-08dcbaef7acc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|7416014|1800799024|376014|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?NWgeXmr/3HGsFkcyBBQGsnFlDhuvipB/JVRvdwr0py9Hfw8wrgH8VZiXoY8R?=
 =?us-ascii?Q?TW9mKPi6H115yVId3xaz6QLf0QDFpYsSFLpBRzYYfkprk6+UJ2Ep3zAhYRwc?=
 =?us-ascii?Q?Gn81AlZLEBgp2WdosQBS/4tvlEyl51UyrO4tT0n1Rap49YQ8pkUWHuOTkTGl?=
 =?us-ascii?Q?pQkmSBpXcbWG8r/qXbgjqbhlQY+A3pfNh8HlIAR3xFJ0lYN21nDD3eZQsVZQ?=
 =?us-ascii?Q?Sh+09lRVXgz2/SZhsckAZ6lUyW8IB/7hJUXj3k1Wo2IwkUktFe22CZVxZeYU?=
 =?us-ascii?Q?EgsHyb18hvZhEyj++OhbRwZnLJ8+beZzm18jN7JKuM7YnU2bzM256za3kGQC?=
 =?us-ascii?Q?thUDWDxJfAzxBQHICfe2Am+QbieXDnnrnEMeycuxRyaCXH6BnwL4ggxLfb1M?=
 =?us-ascii?Q?MjdqGBDwucdXKI7TsqmvaAFBMnToc1//bzlOfEUO1Dc2lA0mNKPcwrWW8b/Q?=
 =?us-ascii?Q?Xv2yz/T/wsxDumS40Uq5pSOM+bmKLX0vkjFXAGxHLoNagMXgSnGUdzAspVao?=
 =?us-ascii?Q?uyfer0suZr2pelek+EIbavK9m0XZ1gTU+7kec8qGLPa3tsi8SGuMYdHManu3?=
 =?us-ascii?Q?TuKSZB53geicDMqWA01+sx5RfLRqtwgJ242eF4NSSnu/6aw+WkkBEeSgUjwK?=
 =?us-ascii?Q?nX9k2p8KHjtguysvPN9Bgp2SeCKiJvuuo9gkkEhJHzp9w2gzirdj3K3tTQaE?=
 =?us-ascii?Q?UerORsFHN1yAjw+Fnic5e02v8Xx1UaAorpcE4aGpCwSBdrXRAPDSEtNTctfD?=
 =?us-ascii?Q?Qxc1Ss5vD+S5eVWAtODtdcPtik64QtgIimZrHhMFmjx4ffB61PoRIO+LoqGY?=
 =?us-ascii?Q?7P9DdvVGfsM2KAKADyv68cU8XWP2PMnpsIDfRvsnuTdlrGoK0ZZH3TxN4Ri5?=
 =?us-ascii?Q?7PUzbCN+5swsPKYOTeDE4bYBm3HlBQT3FkD0hPt5AtKcd7+3397xIZlxSU80?=
 =?us-ascii?Q?hZ/1dUFur+C8dUOs8PWB98bcmNLNtUh1lxIXg5h24oMuOr7d1WocNAHRHTCp?=
 =?us-ascii?Q?VnAFsIzMGI5CspRzzphSm7IbEw1buTlISKNsT+tSrnj3YSKr5egeyqQ1D5eM?=
 =?us-ascii?Q?g/L0XNsYfdRWMtJiUos7Zlslq2nlVSiW41QcFuv/t3tAhgtRbBzUoqXC5FaZ?=
 =?us-ascii?Q?9DSI7LCGWqbMy6k5OKtDzDDnPSOBpezysuwvGJ9q++igpi4j5fvAiH85ubav?=
 =?us-ascii?Q?bxFKuBcbGXee/T5tHaL5f6717tZxOkxiRh+IFunH1cNhvG7E1s72XQGx8wfe?=
 =?us-ascii?Q?r72vnHLExLrbLa8gM/Ccqajz0r+VRp/DzspAG6KVL6GP9qjDIN75+zHurCeU?=
 =?us-ascii?Q?F4bJR1ar/9PKIZprD9fTu7NeC/y4aTt37MKYChxCe5PCGQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(7416014)(1800799024)(376014)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?hhlIVXUVcXP1iaKsDaLrbgTukKYl+gPaGNgpMfIJVk9C5zmnapPZ4w0yrZPV?=
 =?us-ascii?Q?5xTjwEhGpHwp+FqgDcvjdUFNFHGwdggBuoxtv1IetHChKQnzlu86b8EPIpFi?=
 =?us-ascii?Q?9IOcfNnp91q/+Nj2uv7IXmVe6F6zij6sr41+WstBh+ZrLqb+mkVc576jd+il?=
 =?us-ascii?Q?Sb7+4Fu/CZu3RcpZuDLOtJwUkYIRx9F2ACKVMyygulFGhvV2MmbM1+W4D+9d?=
 =?us-ascii?Q?/qY9nzApGJduReKoCniEQQdQtGl7xcgcGu2skE0HRs5lyFa/rJFaK7Ne1xFC?=
 =?us-ascii?Q?pV8wOXf5ARXPD4MqBYwQGJNRXyBHDsGOBHh3i+KB+hEphUSg2LhHZQPd/0Es?=
 =?us-ascii?Q?jtHvDGU1Stx9/sXjPaoqa1B/IaroB39il1ReeFczSDadadmGlwxcynHUKe/3?=
 =?us-ascii?Q?IYt6XyJzo8JX/487nzkGy1A/0c5IcRuvauJFmg7ILb/hJn2PErYzM8HFy6bX?=
 =?us-ascii?Q?cD8q7RMSNS//snOrEbAW8uS1O8xw9Sw+dr8PX0lkRNR1wPYYieAwwc8wE5jK?=
 =?us-ascii?Q?jkP6XS4fDeP4Kesxz0bUTEqOEAO7wnVN7DE6oNA2ZbkpX77k2T25WN+I0X/o?=
 =?us-ascii?Q?qpggF08ucN6gzDdn6/l1uXNCJ76bvrl8BUtzfTHRDdAntCw0mk4GOS1mgHFJ?=
 =?us-ascii?Q?zFuAbzY8zd278pTXpqGd9taBBSrsITgudZ0YZEoSqBQHaOvlS2Q6r08zf8po?=
 =?us-ascii?Q?Qjb77Yv2vs012XEF7Hp4LmCGUY9gp8MpFc8tqvtHIkYJInrZP5fLnzK14CXy?=
 =?us-ascii?Q?yBd9kn17gW8cGtnVeTTFJcsNRTtIYsfLAUuZq5g6XZvFPiWAUmaN/UbslrU2?=
 =?us-ascii?Q?K+/5gogHIIX06tGawwhvdvPXuHAIbDyIjSvqYMR2ZGmynZpStcqX6XCaTfTD?=
 =?us-ascii?Q?jqDIkdEkXsDRmn7CvQNfnQRherGAN3PT5EcVmZksm9qH6BBCEMMbXKpCWKgv?=
 =?us-ascii?Q?Xzv4LTWFI/JNw4H6QubgQBsJHfQDhlKwmbU8qMJQOKNxWzWuRw98X+ZifIXT?=
 =?us-ascii?Q?Y7SH+bXRLxRG70wM62uNNvJBwb7VZa88n39XYIfDA/4lf0n8P1oFLCc5eToe?=
 =?us-ascii?Q?9DbCWY87nJHmnL4SBY5VQSjMBxrpEbthpC/yAGMZj48FAj/mUwpcCR3ogwe8?=
 =?us-ascii?Q?1R96ylzjN5sQfWnhBRoKL/pxZzhfIsxRb0fw2V4s4YhjW1gUnEehIFHi4N/6?=
 =?us-ascii?Q?ahcxvqX7SQw5Hnyy+knKENsbcUvfxgsKgLBhW5VAQcqdBoSWAvScfYtnHL7k?=
 =?us-ascii?Q?Tf2ouwIjUchHAhrNpcfFt/lEx+6Y10CsxTk2lPGYuYCpX5or/05tOE+ws/8U?=
 =?us-ascii?Q?lybOgghdxgHLyrXb0wiOK3oKe7D2OAUoahp9CyZRZCnesoqtSt+bSP0iA4zH?=
 =?us-ascii?Q?eHipdCwvgm99X8uAq64Uh4WnneTPlYQPGEKIAr/T296/tSzGIAMFpiM/83C5?=
 =?us-ascii?Q?e/9tt8bHhKx4k8wsP3Q1pCRFI9JLOMsWHJAhECDvpPUbNJHR7CAqp8ZnPUp9?=
 =?us-ascii?Q?qtnDsa7FT7va/UxxaKgCyav8/JXvxBS+5cNaf5iNdd0NV6EEqI+mjes84WJa?=
 =?us-ascii?Q?WQjGm47VuB4yAFV10L0=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5e36655-5a97-46a5-8bd3-08dcbaef7acc
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2024 16:54:50.2316
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SsFn1EmnH1ygbf7agZbut6jOwQPEwuZciN312DeyoYSIbD0vVcAgh6rB1YhaJDXvQyRfqfOA3VRfep1w0RIW1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB9101

On Mon, Aug 12, 2024 at 12:50:35PM -0400, Frank Li wrote:
> Convert binding doc newwork.txt to yaml format.
>
> HDLC part:
> - Convert to "fsl,ucc-hdlc.yaml".
> - Add missed reg and interrupt property.
> - Update example to pass build.
>
> ethernet part:
> - Convert to net/fsl,cpm-enet.yaml
> - Add 0x in example, which should be hex value
> - Add ref to ethernet-controller.yaml
>
> mdio part:
> - Convert to net/fsl,cpm-mdio.yaml
> - Add 0x in example, which should be hex value
> - Add ref to mdio.yaml
>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Sorry, It is sent by accidently. it was already post at
https://lore.kernel.org/imx/20240809175113.3470393-1-Frank.Li@nxp.com/T/#u

Frank

> ---
> This one is quite old. The detail informaiton is limited.
> ---
>  .../devicetree/bindings/net/fsl,cpm-enet.yaml |  59 ++++++++
>  .../devicetree/bindings/net/fsl,cpm-mdio.yaml |  55 +++++++
>  .../bindings/soc/fsl/cpm_qe/fsl,ucc-hdlc.yaml | 140 ++++++++++++++++++
>  .../bindings/soc/fsl/cpm_qe/network.txt       | 130 ----------------
>  4 files changed, 254 insertions(+), 130 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/fsl,cpm-enet.yaml
>  create mode 100644 Documentation/devicetree/bindings/net/fsl,cpm-mdio.yaml
>  create mode 100644 Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,ucc-hdlc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/soc/fsl/cpm_qe/network.txt
>
> diff --git a/Documentation/devicetree/bindings/net/fsl,cpm-enet.yaml b/Documentation/devicetree/bindings/net/fsl,cpm-enet.yaml
> new file mode 100644
> index 0000000000000..da836477e8bad
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/fsl,cpm-enet.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/fsl,cpm-enet.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Network for cpm enet
> +
> +maintainers:
> +  - Frank Li <Frank.Li@nxp.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - fsl,cpm1-scc-enet
> +          - fsl,cpm2-scc-enet
> +          - fsl,cpm1-fec-enet
> +          - fsl,cpm2-fcc-enet
> +          - fsl,qe-enet
> +      - items:
> +          - enum:
> +              - fsl,mpc8272-fcc-enet
> +          - const: fsl,cpm2-fcc-enet
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 3
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  fsl,cpm-command:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: cpm command
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +allOf:
> +  - $ref: ethernet-controller.yaml
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    ethernet@11300 {
> +        compatible = "fsl,mpc8272-fcc-enet",
> +                     "fsl,cpm2-fcc-enet";
> +        reg = <0x11300 0x20 0x8400 0x100 0x11390 1>;
> +        local-mac-address = [ 00 00 00 00 00 00 ];
> +        interrupts = <20 8>;
> +        interrupt-parent = <&pic>;
> +        phy-handle = <&phy0>;
> +        fsl,cpm-command = <0x12000300>;
> +    };
> +
> diff --git a/Documentation/devicetree/bindings/net/fsl,cpm-mdio.yaml b/Documentation/devicetree/bindings/net/fsl,cpm-mdio.yaml
> new file mode 100644
> index 0000000000000..b1791a3c490e2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/fsl,cpm-mdio.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/fsl,cpm-mdio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale CPM MDIO Device
> +
> +maintainers:
> +  - Frank Li <Frank.Li@nxp.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - fsl,pq1-fec-mdio
> +          - fsl,cpm2-mdio-bitbang
> +      - items:
> +          - const: fsl,mpc8272ads-mdio-bitbang
> +          - const: fsl,mpc8272-mdio-bitbang
> +          - const: fsl,cpm2-mdio-bitbang
> +
> +  reg:
> +    maxItems: 1
> +
> +  fsl,mdio-pin:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: pin of port C controlling mdio data
> +
> +  fsl,mdc-pin:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: pin of port C controlling mdio clock
> +
> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - $ref: mdio.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    mdio@10d40 {
> +        compatible = "fsl,mpc8272ads-mdio-bitbang",
> +                     "fsl,mpc8272-mdio-bitbang",
> +                     "fsl,cpm2-mdio-bitbang";
> +        reg = <0x10d40 0x14>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        fsl,mdio-pin = <12>;
> +        fsl,mdc-pin = <13>;
> +    };
> +
> diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,ucc-hdlc.yaml b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,ucc-hdlc.yaml
> new file mode 100644
> index 0000000000000..64ffbf75dd9d2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,ucc-hdlc.yaml
> @@ -0,0 +1,140 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/fsl/cpm_qe/fsl,ucc-hdlc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: High-Level Data Link Control(HDLC)
> +
> +description: HDLC part in Universal communication controllers (UCCs)
> +
> +maintainers:
> +  - Frank Li <Frank.Li@nxp.com>
> +
> +properties:
> +  compatible:
> +    const: fsl,ucc-hdlc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  cell-index:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  rx-clock-name:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    oneOf:
> +      - pattern: "^brg([0-9]|1[0-6])$"
> +      - pattern: "^clk([0-9]|1[0-9]|2[0-4])$"
> +
> +  tx-clock-name:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    oneOf:
> +      - pattern: "^brg([0-9]|1[0-6])$"
> +      - pattern: "^clk([0-9]|1[0-9]|2[0-4])$"
> +
> +  fsl,tdm-interface:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: Specify that hdlc is based on tdm-interface
> +
> +  fsl,rx-sync-clock:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: rx-sync
> +    enum:
> +      - none
> +      - rsync_pin
> +      - brg9
> +      - brg10
> +      - brg11
> +      - brg13
> +      - brg14
> +      - brg15
> +
> +  fsl,tx-sync-clock:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: tx-sync
> +    enum:
> +      - none
> +      - tsync_pin
> +      - brg9
> +      - brg10
> +      - brg11
> +      - brg13
> +      - brg14
> +      - brg15
> +
> +  fsl,tdm-framer-type:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: required for tdm interface
> +    enum: [e1, t1]
> +
> +  fsl,tdm-id:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: number of TDM ID
> +
> +  fsl,tx-timeslot-mask:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      required for tdm interface.
> +      time slot mask for TDM operation. Indicates which time
> +      slots used for transmitting and receiving.
> +
> +  fsl,rx-timeslot-mask:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      required for tdm interface.
> +      time slot mask for TDM operation. Indicates which time
> +      slots used for transmitting and receiving.
> +
> +  fsl,siram-entry-id:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      required for tdm interface
> +      Must be 0,2,4...64. the number of TDM entry.
> +
> +  fsl,tdm-internal-loopback:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      optional for tdm interface
> +      Internal loopback connecting on TDM layer.
> +
> +  fsl,hmask:
> +    $ref: /schemas/types.yaml#/definitions/uint16
> +    description: |
> +      HDLC address recognition. Set to zero to disable
> +      address filtering of packets:
> +      fsl,hmask = /bits/ 16 <0x0000>;
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    communication@2000 {
> +        compatible = "fsl,ucc-hdlc";
> +        reg = <0x2000 0x200>;
> +        rx-clock-name = "clk8";
> +        tx-clock-name = "clk9";
> +        fsl,rx-sync-clock = "rsync_pin";
> +        fsl,tx-sync-clock = "tsync_pin";
> +        fsl,tx-timeslot-mask = <0xfffffffe>;
> +        fsl,rx-timeslot-mask = <0xfffffffe>;
> +        fsl,tdm-framer-type = "e1";
> +        fsl,tdm-id = <0>;
> +        fsl,siram-entry-id = <0>;
> +        fsl,tdm-interface;
> +    };
> +
> +  - |
> +    communication@2000 {
> +        compatible = "fsl,ucc-hdlc";
> +        reg = <0x2000 0x200>;
> +        rx-clock-name = "brg1";
> +        tx-clock-name = "brg1";
> +    };
> diff --git a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/network.txt b/Documentation/devicetree/bindings/soc/fsl/cpm_qe/network.txt
> deleted file mode 100644
> index 6d2dd8a31482a..0000000000000
> --- a/Documentation/devicetree/bindings/soc/fsl/cpm_qe/network.txt
> +++ /dev/null
> @@ -1,130 +0,0 @@
> -* Network
> -
> -Currently defined compatibles:
> -- fsl,cpm1-scc-enet
> -- fsl,cpm2-scc-enet
> -- fsl,cpm1-fec-enet
> -- fsl,cpm2-fcc-enet (third resource is GFEMR)
> -- fsl,qe-enet
> -
> -Example:
> -
> -	ethernet@11300 {
> -		compatible = "fsl,mpc8272-fcc-enet",
> -			     "fsl,cpm2-fcc-enet";
> -		reg = <11300 20 8400 100 11390 1>;
> -		local-mac-address = [ 00 00 00 00 00 00 ];
> -		interrupts = <20 8>;
> -		interrupt-parent = <&PIC>;
> -		phy-handle = <&PHY0>;
> -		fsl,cpm-command = <12000300>;
> -	};
> -
> -* MDIO
> -
> -Currently defined compatibles:
> -fsl,pq1-fec-mdio (reg is same as first resource of FEC device)
> -fsl,cpm2-mdio-bitbang (reg is port C registers)
> -
> -Properties for fsl,cpm2-mdio-bitbang:
> -fsl,mdio-pin : pin of port C controlling mdio data
> -fsl,mdc-pin : pin of port C controlling mdio clock
> -
> -Example:
> -	mdio@10d40 {
> -		compatible = "fsl,mpc8272ads-mdio-bitbang",
> -			     "fsl,mpc8272-mdio-bitbang",
> -			     "fsl,cpm2-mdio-bitbang";
> -		reg = <10d40 14>;
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		fsl,mdio-pin = <12>;
> -		fsl,mdc-pin = <13>;
> -	};
> -
> -* HDLC
> -
> -Currently defined compatibles:
> -- fsl,ucc-hdlc
> -
> -Properties for fsl,ucc-hdlc:
> -- rx-clock-name
> -- tx-clock-name
> -	Usage: required
> -	Value type: <string>
> -	Definition : Must be "brg1"-"brg16" for internal clock source,
> -		     Must be "clk1"-"clk24" for external clock source.
> -
> -- fsl,tdm-interface
> -	Usage: optional
> -	Value type: <empty>
> -	Definition : Specify that hdlc is based on tdm-interface
> -
> -The property below is dependent on fsl,tdm-interface:
> -- fsl,rx-sync-clock
> -	Usage: required
> -	Value type: <string>
> -	Definition : Must be "none", "rsync_pin", "brg9-11" and "brg13-15".
> -
> -- fsl,tx-sync-clock
> -	Usage: required
> -	Value type: <string>
> -	Definition : Must be "none", "tsync_pin", "brg9-11" and "brg13-15".
> -
> -- fsl,tdm-framer-type
> -	Usage: required for tdm interface
> -	Value type: <string>
> -	Definition : "e1" or "t1".Now e1 and t1 are used, other framer types
> -		     are not supported.
> -
> -- fsl,tdm-id
> -	Usage: required for tdm interface
> -	Value type: <u32>
> -	Definition : number of TDM ID
> -
> -- fsl,tx-timeslot-mask
> -- fsl,rx-timeslot-mask
> -	Usage: required for tdm interface
> -	Value type: <u32>
> -	Definition : time slot mask for TDM operation. Indicates which time
> -		     slots used for transmitting and receiving.
> -
> -- fsl,siram-entry-id
> -	Usage: required for tdm interface
> -	Value type: <u32>
> -	Definition : Must be 0,2,4...64. the number of TDM entry.
> -
> -- fsl,tdm-internal-loopback
> -	usage: optional for tdm interface
> -	value type: <empty>
> -	Definition : Internal loopback connecting on TDM layer.
> -- fsl,hmask
> -	usage: optional
> -	Value type: <u16>
> -	Definition: HDLC address recognition. Set to zero to disable
> -		    address filtering of packets:
> -		    fsl,hmask = /bits/ 16 <0x0000>;
> -
> -Example for tdm interface:
> -
> -	ucc@2000 {
> -		compatible = "fsl,ucc-hdlc";
> -		rx-clock-name = "clk8";
> -		tx-clock-name = "clk9";
> -		fsl,rx-sync-clock = "rsync_pin";
> -		fsl,tx-sync-clock = "tsync_pin";
> -		fsl,tx-timeslot-mask = <0xfffffffe>;
> -		fsl,rx-timeslot-mask = <0xfffffffe>;
> -		fsl,tdm-framer-type = "e1";
> -		fsl,tdm-id = <0>;
> -		fsl,siram-entry-id = <0>;
> -		fsl,tdm-interface;
> -	};
> -
> -Example for hdlc without tdm interface:
> -
> -	ucc@2000 {
> -		compatible = "fsl,ucc-hdlc";
> -		rx-clock-name = "brg1";
> -		tx-clock-name = "brg1";
> -	};
> --
> 2.34.1
>

