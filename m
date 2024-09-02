Return-Path: <devicetree+bounces-99136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4A2968E8B
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 21:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 745892822DE
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 19:48:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9286419CC1B;
	Mon,  2 Sep 2024 19:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="J2O1efp0"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2084.outbound.protection.outlook.com [40.107.21.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F791A3AB0
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 19:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.21.84
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725306534; cv=fail; b=P7qBmTLQ+OPjh9ty1dze5oYpNhCpvjI1b504lIRoCqCKocut144wHDHAM9fMQl/6Y9d724qWbaz4BhPnfff3hNkBGn2Y7/S8h5nT3goJm+gaC3aI3/52OGgGAiL2nvoNuFkc9S+YWnxEGlajVjsAXLMrYYa0OUF9ZLBihAGJbg8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725306534; c=relaxed/simple;
	bh=ClF4SJkqinmW//wc20p8SXieAPXWIBZrPm631G0qZBk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=jzI6NHK1pZXSaRMcjzP9fJBxcWohSHksC2wZ8KXSM0aF1dvyO9aDutLF+KXJl6H4AQUlyOj3KpECFFZSdUfs7uzpI2iKgKV5adnK334X3sKQJV47xdEp13XzUpWuyJdS8JMEF+D9vUDFeQACYTrkMpaXueKMAgfKDkZUuAJ7mSg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=J2O1efp0; arc=fail smtp.client-ip=40.107.21.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QGgndPOPr55dYac9cPKtuShNZV1P5qs5tjLVPjRQIigxA5Kc97JcOrsXwnDN8gaBlqHEJVkeoOTl7jXiEMB9mbJfaDJqttlRCmuWVJoMaB5l5Vonj7ppJLt4G/D2uDDha3H3n7QHHb36FEOlfSEWJ8boIXLPjLlX1VK161Km7Akn5VVbaoMEETA8VpTASpU0ip2eeorGkZvdY/z3w7qioQ1S+1gXExzq0OECfYo/IGw88yZNw8uLU4mJ4ZmRrD+FfUaO7q1+1aG/sa6J33PQwKvUkrs1wkkqaVKH0y2Z4HJ8jY7orOHvQ6ILI0qxRScKsTJoUKyjeIBnFAYyz+D9Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KJXtbqld8JgHa7p+9C7w8fMK0vQUJ+fqw2YL68ouF5o=;
 b=DDTlLNE/vHlf+IouBvQ9/7463CyeYpQFSl3r8UxhCJosPzc2qJmegW7SVzZCDsNhnY119B9ZaGrcFwBfg3zy14qy1rSNv0vOtOjA7W7sOhgsmCBBlaEPzBVAGAMZwDvpQDPStyNiVTU81kz2S6Ji+TXJ2pBuxDiXSfvoZIDullPEzvvWtHC4yVd5jgYXHZIFtp5JqUbnJcHWwx+t8HDCqg1Ih5jxnN1P/yj7lWevOQ+kA8Ly0l4AxQFmW0vicxcKuiLDLlMhgWqvgu7nf7GGQkrqjI1tGHqah++K8RnGI2WHb7atjTGKSCQNaRZ6LPdK94moUnF663EVAdB9GhYNwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KJXtbqld8JgHa7p+9C7w8fMK0vQUJ+fqw2YL68ouF5o=;
 b=J2O1efp0WVD4oxC8DTOl5L8KbcdkHLsnCsvbfUI5yfHFmqyri6QqUcBeNXOarReyRQ3OCjrNDAwiC1FZwy/BXlrGhNz/+uUh8o7D9k94f4ucf7K+1LAbleozYW+3O8GzCZHaxKiNtn5bl7Qj/h+0ODpZmdA2QY8EE5NhUhfhMgFqWN9Zk+KfGvV5ChNw916yT0tY/soygfMWSb953z+4zKzJILyKP8dIm7pxWN9kJGnPQQgLimLIJXRaJjez58V8f/gjHEmQGB6dy3X03WZ0+42UCsMuFkERG7u49PbramlLDXsK/ESlsCjpMUdt+Byw88JzA+cBkdiuF5ZdkfR/xg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by DB9PR04MB9578.eurprd04.prod.outlook.com (2603:10a6:10:305::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 19:48:49 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06%4]) with mapi id 15.20.7918.020; Mon, 2 Sep 2024
 19:48:48 +0000
Date: Mon, 2 Sep 2024 15:48:41 -0400
From: Frank Li <Frank.li@nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org
Cc: Fabio Estevam <festevam@gmail.com>, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org, tglx@linutronix.de,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: interrupt-controller: fsl,irqsteer:
 Document fsl,imx8qm-irqsteer
Message-ID: <ZtYWmVDa1P8IXNWq@lizhi-Precision-Tower-5810>
References: <20240701204106.160128-1-festevam@gmail.com>
 <1c1e3224-1b3d-438c-bce4-56143292462c@kernel.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1c1e3224-1b3d-438c-bce4-56143292462c@kernel.org>
X-ClientProxiedBy: BYAPR06CA0018.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::31) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|DB9PR04MB9578:EE_
X-MS-Office365-Filtering-Correlation-Id: 94add1fe-74a4-4cf0-e22d-08dccb88434d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?gJy+QogaF7dVy7Hy4u/HLIkGGVPFEXFelBC5FcN7MwMl0nLDuqlaBLDewSTc?=
 =?us-ascii?Q?1rYovbpxKl+BI9NXRc6ds3zo2APcJvUICPYtwpigcrhdMhEGIWNZULtsemZn?=
 =?us-ascii?Q?U90BEM53hoK5038kkdF9nyvmBUdNDRH0YWp9xOc3kklztc/d8EBhpAefRqS2?=
 =?us-ascii?Q?Hc2YKB3IqCzpBgfzKsUKMn4bRYt2XeiLS8pX6MbTbuhNXD+nGlfIb4O6GX+j?=
 =?us-ascii?Q?Eoumr/TXm0y6SWabDm4ePigEI3+dWWCLFD8mpaFl3PqjsumHepeIoGiICi4s?=
 =?us-ascii?Q?ZQMT1IGSg0T0jd2X122LPoBR4ciYKmYAwiIsbS3xoCmfE0okvo8Ea+xUoBpE?=
 =?us-ascii?Q?tVU1qACgrhMELjSi52vqNvrGz4Bif2n4mRSfBVBdlNGOgrJ9HWK2KBr9CUcY?=
 =?us-ascii?Q?/dZA2og5RRlIGcwc02qlgReqI93ethFvANaojov+tt54Tm5223jYCXPXk22q?=
 =?us-ascii?Q?8zUnZ7GmMQCdgg4yVmvTXJfadJakBAY9IXI1sjrp/oBVOH7TGqqVOchbU/kV?=
 =?us-ascii?Q?rZ0Arki3tfnfp38RmQOM+BUQjP6Qu9Km/xisfTC3jdfDVG2BuykVwxSDJLGz?=
 =?us-ascii?Q?gwAKAHyB8TAs/EhIWbPqy1jDn3u6NUXmJi8/BjOWuJwzWaEafsI5nnNAI8mZ?=
 =?us-ascii?Q?tef+ltveQSKWYo1uk/0me5gBYlt+i+Xxwpx4Jys7fteF/WJj47trUWehzyOU?=
 =?us-ascii?Q?wI5ZML21QttqvCQzW4+WI6PqgglSCJ01ObZeFjYyErh51adqiqxMdGSWIyGM?=
 =?us-ascii?Q?5Z5JNVnwHCQ+FT1m16f/0Ki0/Fstk6Wko4LQ2GWZqPessVW1yogQqxBpA4rX?=
 =?us-ascii?Q?auByBbwC5z+Shk+b6dq5qx4mVvYCOCyV13gG/h6JHssDslDjhAKZpBddIwan?=
 =?us-ascii?Q?iMslabKAC7Rmtd1YP5nblLX/S1TYYYxEDZbHlVwlOZl42+WaxDZbFXXn90fM?=
 =?us-ascii?Q?27n3VjdPmEk2yYbbRbBNCvT6CBA3GAc8U4OhOo7gT0xYSj55cG70lwpM6e+r?=
 =?us-ascii?Q?962wOAHDhettCZvBhmM3B4tLLBMqSlwZ6nyoNcXVS6eKVyHmPTSpDnddgfye?=
 =?us-ascii?Q?HfgNWxwbfAzThjuHrjIpFdrMfUr/U/sskUz6jmYcIrKcqdUrgkdz2Si6XgTf?=
 =?us-ascii?Q?h0auPnbuYBW1W6px6tpRW/u9EezdyBYmuJmqPxMbRMNKAksZ1Ntxr2V0W2Az?=
 =?us-ascii?Q?2SVHYMgXlv/ExlWGV2/fujXnwpuTLyMsnYxX/89shiepX7XSDwUlFUbMfrCP?=
 =?us-ascii?Q?H1k2r0ayu/82IdeHGq31czLrjf0g8FIqWGsoEGt810HVuvReErwJ++0Hl1Bl?=
 =?us-ascii?Q?j6Ntg0mkdPL/N73vs0Du1dyUehM8hMWy0p9nk9+g8CMGdNzQatApEHI7jbmf?=
 =?us-ascii?Q?5il+dhcTK8cvEl06Lxav2mGKgwxaOuRTlz/JetaqakdW22NSkw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?uIz/NVVdNAGmq5k9+n7Rx/KJhga2Z7u9PJYMVAUJWSa9hhcJMfdaG7Z5CUcx?=
 =?us-ascii?Q?3dityCYCxNsLjv4yZ2CZ61FLiHshqr6uWAWWPY4cGaAUsMdfMLF7oEh8VKpi?=
 =?us-ascii?Q?uHmrTwT+hJh1ZjuLrC+hTR/Mzyd5stPHgnNvaOmjDqo7TzVzJPwj4H9TuQ9M?=
 =?us-ascii?Q?SpkbicaHU4J3U+2jawlfxSSdXBMtaxyiQT2ZcXysu+B99/68gf2wpM/jqQxg?=
 =?us-ascii?Q?6NT5W3gjntYcuFESjCn1gW0LVuoFKau3Edp1bdA8y08CRkGx52EGvKcQ8MzQ?=
 =?us-ascii?Q?smrAUXF3BHdC26CWqJva5PH8fwuTOKUTQ2KxRGuEc/4jByNH0vWGizC5vLY4?=
 =?us-ascii?Q?zhJnFKwgq9r+Ux+4XFWyg88uGuSD+4+dxV1HKqorOZjd0y0kPkz7iVbTVwUV?=
 =?us-ascii?Q?jPh5b59LpcJ9G3MOFTtwOstr729DaqdkOLzf55QPS5faHAx+nFgYc8MJwLmQ?=
 =?us-ascii?Q?DDAbpmYK/2hhajAgYnFuSlbF0kTyDZdD1FxOCBuE2kcUXe09YFNoWTY3ZE8z?=
 =?us-ascii?Q?MPb/rrsVptaJ3bBFw2H6y9wOM5BpX60Q8Mrk0dR7gXVQiOEIX72s/H4x+wKy?=
 =?us-ascii?Q?eq8Ii9B1jpsnDUvgyvdds4SC0YBlz960DjTAJrhIXuWgFuWM7r+/RAzW+Soe?=
 =?us-ascii?Q?V1bS4Fb7aKYtVM1wJdhLEqORsdB0SKVl5ZVbKfMxFVr45KJBw3gJBwXEC5Vs?=
 =?us-ascii?Q?2UY6J6+b4w9ncD7OHY2Edms9n9b71WISdTdPnzZzDKT0YWhs6HjbfbFtxRPf?=
 =?us-ascii?Q?ZhxXwQxFTA6zs1bNy4+KXTwJQDP9pRA/pUUitH8dkdFPmqY/EUqxmCAZKrnx?=
 =?us-ascii?Q?sA+R69vPcT6rq4x9uoDmkuGqXrUwlpumHnYgMvDxP46Uy0pUMTXqy6nf02oT?=
 =?us-ascii?Q?YbYt0UnQlt7mddsWUgr/H+rgeGqKfxRMElwv/8CUwGMlhO4BFCtqsGWmLCju?=
 =?us-ascii?Q?i6jKVN6wWmNM0h+mF4FtXky2wN/e5k0DdwKctLBezigJvPYeT4YnaaPOaCoG?=
 =?us-ascii?Q?MZBEXYEh3oiwZNBPko01YLB2T5CaCECfpoQJ3nd5kqPJvMk2bxF9X8PLa9hg?=
 =?us-ascii?Q?nE2QHBOuU7ebadeT5qTYj83ViE+zvcUh65qCygnkFpQOSy/qVxzp0/yfHLx+?=
 =?us-ascii?Q?aImnevzzTtnbvQ4FktkFQBkOxrP1c1/EixmKFEWmKVGgr9+8aX9K8mm6blqU?=
 =?us-ascii?Q?ud4jjVeIvR8SmxmGw0aJX8SxiJFBm24N/fEJT6bbh4W/n1lnoJZv48covz9r?=
 =?us-ascii?Q?xBseHkmoqanhDSLIK8ypCSVw4f3/q0T3QaKr8BQY81m5mhqxBKW72/P8xaLa?=
 =?us-ascii?Q?Ho6+Gkt4rciL/ncpDTRRhmMQfyqygmN5v9wTStwDxHsmtU2FlzriMhOase7i?=
 =?us-ascii?Q?Wm1O2yQOWtNZcKTe3TVyheBYyzuS07d7g0OnJi7lnPvt7wH/xbYoOKsU69DB?=
 =?us-ascii?Q?t8WL+q8UerqvNkduHm7zBI9jbSzCUGeidwG80S2iRLL4LpLUvX3rKo0qa2td?=
 =?us-ascii?Q?83k8W5Fy4yE79qbmfX4OAQyKsBvqVOksN16A8XsWCZmWPzpscPweZBYh1SAK?=
 =?us-ascii?Q?pjBjfodWAv81dQrrJ7q1tYdyVxd3KsTuNfpgqREU?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94add1fe-74a4-4cf0-e22d-08dccb88434d
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 19:48:48.8370
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U+jr3aoRJghvsdoBUTm2Cz/5GlPQSlhbI2THhQerhCZ3LU2/feMFktiEqR3yESdIxK2Bi5cPkf/eD+SJgarBAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9578

On Tue, Jul 02, 2024 at 09:16:20AM +0200, Krzysztof Kozlowski wrote:
> On 01/07/2024 22:41, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@denx.de>
> >
> > Add an entry to fsl,imx8qm-irqsteer.
> >
> > This fixes the following dt-schema warning:
> >
> > failed to match any schema with compatible: ['fsl,imx8qm-irqsteer', 'fsl,imx-irqsteer']
>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Rob:
	Could you please take care this patch?

Frank

>
> Best regards,
> Krzysztof
>

