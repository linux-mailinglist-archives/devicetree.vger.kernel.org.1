Return-Path: <devicetree+bounces-165648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F1DA84E27
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 22:25:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE8017AEDDA
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 20:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6EC428F92D;
	Thu, 10 Apr 2025 20:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="B9bDHhPW"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (mail-vi1eur03on2052.outbound.protection.outlook.com [40.107.103.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBE528EA73
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 20:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.103.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744316682; cv=fail; b=hWZ1yNf16DrT7WonUMWFZKqer6W1b2cwHoqOtYxLi4fFyPHMjnyhSijUeONOe/GC6YJX3Y7IWTTPmiKxTH4g94suzHXMPepQU92PljBx/19Z94J3fK3+XcvpbA0T+GBJzcx8T1yo3ytu3og7A10FFDfWloMZ9P8fCxFdPyMbjow=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744316682; c=relaxed/simple;
	bh=X84kBrswGOWImbqgYIY7a7dJq2yvVuH0Dz5tk/twtSg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=k/pIzc3NrgCVWk9JSNaNTw1eIh0BOgPr3eofz2U2Qfjn+zoCndOMcKFM7X1mGsM7lZmNABrIoBvueR+v0gGHz1wD92sy8X6MZetTAflwrJeQS7xXU/PUU0hiiClAAI/N6MjJldvMhgbHYd7fNYEkziatxu8jhqIBTm2VarsG7vg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=B9bDHhPW; arc=fail smtp.client-ip=40.107.103.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JYIMbCTMAxH1Z6y6VFFTYlX6Xx2iavJ16Jz13xsuWuVdA9u5HnQjPTf47KuWsND2HKMlnIWdiZXppJJ16SUALoYKdCu4C8jwrA3dllchG7GVMAb14eGedB7RHVB1iBhHHKvTLP0cGpWfQq+NHvS7nJsZVv3YWJrJDa3t92jjDD5EdSXIoXSmF6Mkwa0uz8xDr3h3WHyk1RBton5wGJqKH0svpoVzRN2Obv7mGhEH6wjry/z0Rkx/QXZZIY1HYcuG37kmlArsd1Bqop3FCSyw0UCBCflECuRy30eLGDj5HBmdop/aQ6TnrjPNjeoSJThGWRq5HhPQdO2ayT3niH80iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mazPp4zSgWivvS7NPVlwDA5zKRLj9Sslt7Tb/2Y4h10=;
 b=fcu13YdUXjQ3qnDkN2tmMEJweRRltnbE6vYc3FTeUsr5UnW0/puUP0tf2a8thsD+utJWlq5egSqp6vBAYYFtn+pdOrLPnh0yrtVMg7pI5hEsohR6r+ldLtoVjLsqzywNz9igU9OqEJ0I8cKpVNCI0hSah1bCst1e6bv9F3hKzyouO1KI+SPWo+aRJyGc6vY1LRHqOd9+OO539SXzreyGuwwQuQ0f/SC1gUzURXERpki2yfpUU8r2XPEXWWDpUl1BqSh1Swi+CaYVpGqiDKkEiSSIrq7T6Cy7TGJoVVy2x5VSNa76IfHPIREbbmpG/MBcwSdG2Dl6Be8D7pruOivDew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mazPp4zSgWivvS7NPVlwDA5zKRLj9Sslt7Tb/2Y4h10=;
 b=B9bDHhPWSyawf+quczlZ3dROfqhYzJajSNuyxR9bjFRB1UrkQLuFbXP7lK5goMNGgGomMlqV1JEUISm22m301au4NJyZU5zVF/IH7EL0c1rqX10i+Xjd2k/eRLDT3pHMFUBJm9KZ78oYgZNwHmeFPX9Q59m8RlsIDhRHykiFaRs0wt/8z96w8KOy/yVjFic2yIrhCrmjlTPWAIhKKSWOkDfzEh6YuBKx7qUp19mfmIgL7WfBtWjsKVXRE3gKsSYkcTzVd44gMP1CYwuzwoEu1q3EIwWfnNxn551hsoocTf/ShgCCB8gECUOUH21H8f292ZgF2wsyb9cr6Tqy69T/hA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by AM7PR04MB6853.eurprd04.prod.outlook.com (2603:10a6:20b:107::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Thu, 10 Apr
 2025 20:24:36 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06%2]) with mapi id 15.20.8632.021; Thu, 10 Apr 2025
 20:24:36 +0000
Date: Thu, 10 Apr 2025 16:24:32 -0400
From: Frank Li <Frank.li@nxp.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: fsl: fsl,ls1028a-reset: Fix maintainer
 entry
Message-ID: <Z/gpAHQKVRjpNpBi@lizhi-Precision-Tower-5810>
References: <185e1e06692dc5b08abcde2d3dd137c78e979d08.1744301283.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <185e1e06692dc5b08abcde2d3dd137c78e979d08.1744301283.git.geert+renesas@glider.be>
X-ClientProxiedBy: AS4P190CA0025.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d0::12) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|AM7PR04MB6853:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d4dab60-24a3-413a-114c-08dd786db679
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|1800799024|376014|7053199007|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?4ZgdL7pwGpU/sCFjzlDhbcBhsSxgpNYHnJGBPEaC4XsPl2lEHxWCa/Lh5/D+?=
 =?us-ascii?Q?9KNFvKynrgVpGXnjLdwe80MS0nhHnqyTkAcsAefB6ZL1vWAad99OfKD2o87E?=
 =?us-ascii?Q?dDuRuOEvPvMGcsbiRUIuiNH2tmMGIcFSaPTfMKAHMmejB/xFYaGoy0pp0KsI?=
 =?us-ascii?Q?xD1Ieb6xJeG43GVmTp8xPR5JfL7CtJJM5g1zBijoJi6PB/5OGr1tsxaW6PZr?=
 =?us-ascii?Q?XdMZ8Es/Fn3p1Zvo3M33LcFAkI9zWSlPQW49wRX4vHCmBalezCDH/ziXlhZt?=
 =?us-ascii?Q?DGvKD5pGo5uyYVlY1lKG4xAjjyhMVJQamrPKMw8X94Pu90KYHF/dD0bJBO4u?=
 =?us-ascii?Q?zLiCnntIwMV0L40kliMtwS+IobdKXTxRvwyKC42ARwoqwGjWqhQBRjsKltVQ?=
 =?us-ascii?Q?2l2GwsBa7efIUJIyt5eeyNSgiV0uAeQREcjRA4JgVAnN+oRxrb8W3msSfIlc?=
 =?us-ascii?Q?yhzeSQ+NALwf0KsZyWyq856owyXw1wy1McAn34JGLOh70JLGWtquazueJRh6?=
 =?us-ascii?Q?y0U9cwaYUkzprKzjXJpZFZSt0WV1pJt0FY0uWd557cpeuWboIVBytHTqYSI0?=
 =?us-ascii?Q?J8eTvMBVZYoV7pphAqK+IEn8rSxo3UuPBsRngQX96LvD61cS4wKJHJ4ptfSD?=
 =?us-ascii?Q?YcnKFRx5T0D58rDHj2WLqaTZRUVJqrgbOWz4Kw4f4iHxkZkwLhYeZhXKq2TI?=
 =?us-ascii?Q?syo3Jyi2Eyp2MZVoJOqVk1gTG+l+0m1Scw4qkN0a8+dStbHPSYG1/DIUy4tk?=
 =?us-ascii?Q?b1dKeWbWNdCoPWeLZZ1ICU8f1ZecT3tceCTIxWY0qhhwqPjVyX92+FfE0kxv?=
 =?us-ascii?Q?yT1OHlUY8Nr/63JQQSpcdsTc0UVRLn/YoaF7F8zMCyWvAfTlzT/Hp+SZPggV?=
 =?us-ascii?Q?LwvQbH8vrRbHIFqruzFOf3GCGDbxvy7i6w68V0GVefj375MnYhbR+AWO3icZ?=
 =?us-ascii?Q?8gJe1rB+CTUFkxfRdfQJ3gzG448jeMWwUZ4WOxUqXMhfyGkLgR6OyUz0vbZU?=
 =?us-ascii?Q?Zvs35Qhk02ZyH9qWMbECHD6yTTtfNPZUb5iCXqIpXPw7kd0Rs46PjZQP5lFR?=
 =?us-ascii?Q?sgH/gqsiWsZ+4RIn3fIaFnDZUjCuTTNt3xsvGcs9mnEv7/1rggGq8zd2QQox?=
 =?us-ascii?Q?hQ1VCAz3wzbyrUNVWDbJDV5yJ0CNqfjHXgvKcDvaH1woXGAX9oZ4BEeW9mgv?=
 =?us-ascii?Q?bFFZbMVXA9AJ19uCZhGIwDmD4r4hJiiAs8hKncWn+i8SMUS9VZOPMByUZG7W?=
 =?us-ascii?Q?v7dv6WShphT5vVaKJ2DYVN/Ww2XN6rV/3qLev/Kn8CPbXB2JfX9Jy6vfpjwM?=
 =?us-ascii?Q?F5l8olTprSI8/J4d/bfxFDwLc3XTtg4Pg619HtsowG22zkKRBh5p/yYtsDAa?=
 =?us-ascii?Q?4CysH7I3MD5j7178W/m7mSBZhByt?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(1800799024)(376014)(7053199007)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?WgNMfY8NMNejoC2i9H+PYndsge/2MIPaIoRTNCTHbP2eZj7IlllHZmOev5jV?=
 =?us-ascii?Q?LEWVy+eFysnDe/0+WxU+WRrRhVJTq/LA5jmMelR+jO3gIrD1t5YfGzjT4F2Z?=
 =?us-ascii?Q?jePFy0v/7RZiGWfaCa66zaRoQKe0kRDsleUMovEgIa/BJHGvN0WcwVq1vDh+?=
 =?us-ascii?Q?0RUC+X0WMc16yYmGafMfrxPcrnpcqcIKwsdvhXTPh0iEe5kzsF2qhoCFDn0J?=
 =?us-ascii?Q?mO9fOrBcHBBBxbe5s8mGjcPRWWVJmcguHb5xcK7+sp2XsSsmIvv+HVyg0VCB?=
 =?us-ascii?Q?CiHZZQN0nknb0forbjAscuTvJj1kBP7RAsGpeZzDRqpd45j9Rt8+9q5BCE6v?=
 =?us-ascii?Q?tUJiXZP99GA5dkifjcaIY78LEna2ySqlX46rhYN7Pq586tdJrxwBBr4DrHCw?=
 =?us-ascii?Q?jASuhyLKNlGaN13fueeU+PRyeWREgVNoMh//mJOoojV5D801wUZHYvJnF8li?=
 =?us-ascii?Q?31QHaZlAQwVptHJfPafq/4R4zMbFVSG+1sINQXjFdWFG63lBwRV2cJPZyJ9E?=
 =?us-ascii?Q?UH5VHDchDvfKaUQndkhMU4lbz9yrmnNTTDzQxWb6MVAWbWDatMDitJCgqO85?=
 =?us-ascii?Q?qWXCwiEy8y7x3ynBevmlh1cVm9OsaHJVaDObBldwqbiIYRCm9r6jbmAvhRBX?=
 =?us-ascii?Q?dzLmnUwMnqjJSYFSy6oke3BRgsKSiY2WTC+g+lvvYSNNf7JdsnvBF1Ba3iUH?=
 =?us-ascii?Q?zjbXoIVzaRuAaq8azJLMeIr1QAX5Xdk3w/RgA/uBLIXAXKpaQGkivCzjyELL?=
 =?us-ascii?Q?EAGV4SI9QB5pgGetx4YuSKbSwXkgE1vq1mDWGhp2j62y3tAOPlonMTpxM0dK?=
 =?us-ascii?Q?23v8F2DPS1Ik15wk47xJ3kisefOiEltxwlnAUOpexkAz24GQY7wzUV0HLSL7?=
 =?us-ascii?Q?Gqu8aikwReMaPaTPT29Wp1d5eRAKd+pUeSwu/C1nWT5dzKYBjegAPjXSb1Tb?=
 =?us-ascii?Q?7gqDhpZwmTR1XbLE0GG5wVhVmaztmJYSNhLAJ//TfxbuQrdhgirmvIbfDwvS?=
 =?us-ascii?Q?H9UsyWjiPKegbcvU/9Ii5yzxgrVxTZaundjt+CJqGMmBVRJVjza9iht1bKjI?=
 =?us-ascii?Q?JjPrpOZYhgTCw7vNZbvBNyIMXtN6jHf/hgaR5v+Gs3KxHIgmq5QfOCXMV4QQ?=
 =?us-ascii?Q?6CPFv/ldtInqKZ//yVMXp32n4yG8ZQJS7NM8ClCBADZk5xolS6ko2IMOkV0e?=
 =?us-ascii?Q?c1RlUjtplusyVfiIh3go8QBahuPqTD1cprhwrbbfud12UTn2jpB8ygssiP5j?=
 =?us-ascii?Q?3Bbnradry7MIDUqF+tuJBlRQXCN7ujGN0Vb8y6njergZBpahaYcR0NqqhXNR?=
 =?us-ascii?Q?159+BG/f6a5R6NOaruCNeiVB7ln9a+WW+zL9WAUbcTlLCPF4azCCwq42AIYh?=
 =?us-ascii?Q?mcbY6ILPY8xM5mBZNurNH/Ffjn0G0NUVJF7GkBLxlQcyukGuscwo7wV5s6lb?=
 =?us-ascii?Q?WgGXcHJ6eeGFeRC/1jNurZ+JfncxY/awPxNbgA/Or2lzlKDXOTGJ6djfQs1C?=
 =?us-ascii?Q?lheUmhLSCR0VIn30TOjOPRTKNZeYEWEZgYT2qejLMkHGHkTR9boundeY/1S/?=
 =?us-ascii?Q?uUb0cU6Ti79GVcmu7/c=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d4dab60-24a3-413a-114c-08dd786db679
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 20:24:36.6298
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SE5O+/tmlpbRoaKrZMhNU0tPRYQq/Ez5Cv0dSzdO9P1Mnehal//1UbETTM6Qw3nujIlM39DrQq0POFKuKBxhLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6853

On Thu, Apr 10, 2025 at 06:11:12PM +0200, Geert Uytterhoeven wrote:
> make dt_binding_check:
>
>     Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml: maintainers:0: 'Frank Li' does not match '@'
> 	    from schema $id: http://devicetree.org/meta-schemas/base.yaml#
>
> Fix this by adding Frank's email address.

Reviewed-by: Frank Li <Frank.Li@nxp.com>

>
> Fixes: 9ca5a7d9d2e05de6 ("dt-bindings: soc: fsl: Add fsl,ls1028a-reset for reset syscon node")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  .../devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml b/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml
> index 31295be910130c2b..234089b5954ddb97 100644
> --- a/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml
> +++ b/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Freescale Layerscape Reset Registers Module
>
>  maintainers:
> -  - Frank Li
> +  - Frank Li <Frank.Li@nxp.com>
>
>  description:
>    Reset Module includes chip reset, service processor control and Reset Control
> --
> 2.43.0
>

