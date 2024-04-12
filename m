Return-Path: <devicetree+bounces-58787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 245F98A30BC
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 16:33:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8AF7D1F24F28
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 14:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B358286ACC;
	Fri, 12 Apr 2024 14:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="RNyxt2K9"
X-Original-To: devicetree@vger.kernel.org
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazolkn19012004.outbound.protection.outlook.com [52.103.11.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CEC13CFAD
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 14:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.11.4
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712932383; cv=fail; b=LEBLBPw7U8OrIIIhzlhvP3jM5z1+Q5IFPUrbYymMS6/yjawirrMfzLMZMa8OOE+JyywUyMo1lqzb4Hb1xM0tDJiRVFWOeVnbZDm2UdWu7XfS52slrRt1EO/97Oy+Io9NqED8TXxvB9iPtOrug8retCcMnx4KCaQ4J9bsPTCQKS8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712932383; c=relaxed/simple;
	bh=XgxML8VY0poWKnBjOXSla9wZ44VJR+R1bOLrbVjYY+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=NpTB9xBqocMQmAWA1p/rT3t1u1IKSnG5wXu1ILl8Xw+UR62NI+xW4zP6HNVM6LlY5R8qeaU+e7dCdc+HSJESrrJKR599ogdZFd8/lU1gMhKeGb59oCKLaT3vktR03mohT6wqhn+Be5Algwm2EK7cmsiajEBu+r/A7QA9/BgXNM4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=RNyxt2K9; arc=fail smtp.client-ip=52.103.11.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NHz1F5zkTzeClzb4gYRJKMx8uow3BKeZ0rbLgyMQdoIqnN5RQJO0CV5UVpDUUv1msUqlXdGnNrGt6bBsbvMQq5fShYiHm8O5RQsC9ERUQKC18GX3M4eOUdgzVePs/WVTCiVoyAtUqYVZcIQxWoxaZM892MkYh0mBc+Ubxa2LLtTLmNO/C6fPHGx/mWNP5GQWtjWfXrYvvh1QNyA+mvjYED6xmYsjelowqpkIxXD32NengShL1VF94lLXc7V5M1Ylh6Q9OGCrqAea8WZjzcqbc+TLHy/fxgniItJVlBPANOgqssFQd5db/6Uh/zujjsj7nr+3rFKgJPcW+EVdD1kJ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0lbDEp/UnZ/F2+FYSung/2eQ/W8c93WJqrcg/4d231k=;
 b=QXaek4ts5pKMZbTyzcI5VwEOHxf9qKzUHE4bmcKQxqy/SqtJShy8dxiyTbag9glGKAXkvpqbJlRHkZYeGyuf84Aat6UD4k1YEBLUCIR5UmLvJjjKGi2bfF0vQwCYk8FImrNwSne6deTqUFt7LlVcA7vR3Zx8DwmHz1z7vQXhgQG8iv9AI6RNEkEqwCU+/F4tVMGUTfCcJKzgbI2ZIXXzJ27MAG7FMibSHaUkecFBjhEGhlYo2ivtVKp6PUvPl5LlbrIxd8djlZX+YCB2t4MMvbJTe3NBhAIZ9feF2ZPo1wh5q+ounoMl+OxvZvoSTGQqyqhKCqUMQFw2es3Egr260Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0lbDEp/UnZ/F2+FYSung/2eQ/W8c93WJqrcg/4d231k=;
 b=RNyxt2K9WtbxQABp1zelCENC4yrfnJMmLwnQhaoWWiGGXX/GpBeO9MoQDCG06TZuteFpuEtZAG1WdlHdM5X+YEhLHUB1g7CdyqkGywLFdMXhYtzLa47rW2oI+XDiGAE0wSE+6a/rCwzBFtm1WlP7qjfHyjIohaKbjZ2ZZQBIVAYmy0L9mFnSpD6k6Txs0f/tHt7Z0FI6MHK878aKGgLCdQ6hh6Pm9l94lGqDbyvnctFHGyOTjxGvJSRtYQTSLbuOgTQmEtIgXySVklrGZXbh/knSWVyKy8drv6F7FkVNDith3hnkkydI2d/VX4G6PmkaNuBwWMyCdomsx1G40BZQXQ==
Received: from DM4PR05MB9229.namprd05.prod.outlook.com (2603:10b6:8:88::20) by
 CO6PR05MB7732.namprd05.prod.outlook.com (2603:10b6:5:343::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.55; Fri, 12 Apr 2024 14:32:59 +0000
Received: from DM4PR05MB9229.namprd05.prod.outlook.com
 ([fe80::148f:6016:501b:93f4]) by DM4PR05MB9229.namprd05.prod.outlook.com
 ([fe80::148f:6016:501b:93f4%3]) with mapi id 15.20.7409.031; Fri, 12 Apr 2024
 14:32:58 +0000
Date: Fri, 12 Apr 2024 09:32:56 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, robh@kernel.org
Subject: Re: (subset) [PATCH 0/4] User Requested Fixes for Anbernic RGxx3
Message-ID:
 <DM4PR05MB92293BE4D1D6CACE94C41D0EA5042@DM4PR05MB9229.namprd05.prod.outlook.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
 <171286007456.1886699.5340406203472105907.b4-ty@sntech.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171286007456.1886699.5340406203472105907.b4-ty@sntech.de>
X-TMN: [4HcBsupZox12U9+ktWBQQL6aitjv3piw]
X-ClientProxiedBy: DS7PR03CA0149.namprd03.prod.outlook.com
 (2603:10b6:5:3b4::34) To DM4PR05MB9229.namprd05.prod.outlook.com
 (2603:10b6:8:88::20)
X-Microsoft-Original-Message-ID: <ZhlGGH728cejixmf@wintermute.localhost.fail>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR05MB9229:EE_|CO6PR05MB7732:EE_
X-MS-Office365-Filtering-Correlation-Id: ae2482bb-ad17-4567-55bb-08dc5afd72ff
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	NCmE9zSkjJF0alKexrUXXaMU4bBgilFF9NCwKsHzYYCL9gAAckUGrRTE0Pc2gUzHZGzckoPH8k6H+lWQ1taVRxohd24/KoDhz5HvhQIolDRLk7a1FPrTfTKjHZ5fkftaVcueughbk/0PD83o7gnxO0r6NeHIIYCIFYv2Hbkl8/qHTMXRw4sLNjlRTtCMUN33Kj1IiZ+GakMcETOSGcaFbg+AFU3o4pbQoTMeWYo+hgJKLBV5Oyu1e8y+N15w2OMj/J0MsFKBFUkC1VXvK6p/qFTQT6WMleEF6zyrbN7wGYu8IzTNGlZ4DEpnoHQMvMaQvIyTisl5ws15AOsEXeCgpjog20tq6ibozzvzW9sajyzMRFXbdH7aeXS0Xl0x21ECMNeQKnHIfgsXWlZtUyKPSz+xeEuoA0rS4IEIIgFz6BTAt1HFWXlC93xIyOzBZgPXsVrH3WeZ+gVIMmgqDKeNCc67/t0um8u7t4Y66APRbxkq1zpHr4WL2Y9mwoSoEqdQ50NNmxU/S3k0pxxmKvFHmeBlt8n8KOh3pAuP/qu2DXlIme8nv9T67Mz0s+cjat4t
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?fLzWNi/Fr7xwyOceYTm1YRbSIj5O+ZUkZwBTzbjpqCyNmbgd8mw8tXa/GCpR?=
 =?us-ascii?Q?6S+pautGQAdBVLtPm45OF+eGNzeilvZPFSLxukzRJb24JUvA0O0BocVwd68V?=
 =?us-ascii?Q?zj+eWXUBBroaJx0BW8j83cv00l0eRj1h6wSdsmFhkEyDI4ODriUIMFszV8X8?=
 =?us-ascii?Q?KKoA5Iiov8JObL+i/v2FOalDDBdr3zXzQx5AcLLz2ucl+HZjiAT+0oSwnpw1?=
 =?us-ascii?Q?M3q33UhibeWafLwiUeLGimSLtWLe6A6tkysUxRehs4asieYz8sY0pLj8UD6y?=
 =?us-ascii?Q?boBJUGHH1XJH6NisJg/I6pZVOa0jslADJZXBVwGdS1obPTQ/+BzAx6uPPq+I?=
 =?us-ascii?Q?oBkaJlIAjvVBNzrvQ2YO22XN7ECU00ROvhjpyrIAjvUR5z8zQvJFVnmUGCCs?=
 =?us-ascii?Q?DWpK3U6MU0mM52giu4V3ssGqJ040plU0T4DS7z6wtFk13CospkvIM6CgjEoW?=
 =?us-ascii?Q?AM+vValHP9G6jUuqk9sHZSYvIgyIa+xvRMZgo95Br8qs66adyCisUTI/P2Zf?=
 =?us-ascii?Q?QPBWXj01keFWIiJXoKaAEuKG1zCfUEJpUBIQyLTMKI4hWigLU112APWHurVy?=
 =?us-ascii?Q?9mcZYVzdySAuj6eGCwOelj1R3qBhBH4dp5dZzMmKKfj+PN/s9lkfBnDM/wMj?=
 =?us-ascii?Q?S9KO783hr9t1VuwvTkbTFnOFVIX3We0i5qFNRmO7NV6iDUzRtHqGXSs1fXjB?=
 =?us-ascii?Q?QPsQTSItRgZYBby1m1mZXaLzvc55HfZ9dyDMb2erkzunqUgWLb9XFqh4w4Va?=
 =?us-ascii?Q?cW0CHJqAc5H71/9RN6t7XfwIwna43LH9j48ADaK2s2nWcfPL+GsRwxfnPwDD?=
 =?us-ascii?Q?JLwhJXa0oiK4PSC2J0u2jf7ERLo/s3m0sJnohZOyChIckXzkkB2lQBnncH85?=
 =?us-ascii?Q?9QipNHwb5WAO1Ofqg/Tvo9nx/RIsgjMq1RgmcDTua1bRB79NPjoQDSXkO+aK?=
 =?us-ascii?Q?rZKyvoB/Z7WD5zYHMH+pdKDHb3723vNm17FjehHeuQLIGEOKW5BDU6wMgFBN?=
 =?us-ascii?Q?p2Y2NM+xAbVS7fh7HCuoDL5H8+lwQhKHD0OjTUHVv2z+Ob2sb/VvXxeFyDba?=
 =?us-ascii?Q?42pIyY29YCAwFBqqRiH4TD/SojbQfYqGt9RI3ZHbuTueCZInwqoIx0aBXQPb?=
 =?us-ascii?Q?/6Pw6UGacgflVCSbf2ucXmJiVLYtW7NolgUis2CmX4CIw5HxUN+m3mp+nslq?=
 =?us-ascii?Q?brwL1jAKm7rolbEPcPiXUWHpiehDk+PnzWKvyDJZlrAbYcoYgBRVJvWQN0Y?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: sct-15-20-4823-7-msonline-outlook-84f76.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: ae2482bb-ad17-4567-55bb-08dc5afd72ff
X-MS-Exchange-CrossTenant-AuthSource: DM4PR05MB9229.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 14:32:58.8392
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR05MB7732

On Thu, Apr 11, 2024 at 08:29:52PM +0200, Heiko Stuebner wrote:
> On Mon, 25 Mar 2024 09:37:25 -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Users have requested fixes for Anbernic devices to help with some
> > intermittent WiFi issues by adding additional properties to the
> > SDMMC2 node and by making the sdmmc aliases consistent across the
> > device lineup. They have also requested that the model name be
> > represented consistently with both the manufacturer name and model
> > name.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/4] arm64: dts: rockchip: rgxx3: Add additional properties for WiFi
>       commit: 6bc8e01c7284ea1f56c6506f38c2ba9474db497a
> [2/4] arm64: dts: rockchip: rgxx3: Add optional node for chasis-type
>       commit: 8db673210ae24ed44acf15642f4abd6d4b4cae52
> [4/4] arm64: dts: rockchip: Correct model name for Anbernic RGxx3 Devices
>       commit: b41b83b701056421bdc494c8e1488d38f2990c3d
> 
> Dropped the sdmmc alias patch.

Thank you. At a minimum, could we reorder the non-boot mmc devices? To
at least ensure that the wifi is always mmc3? If so, I can submit that
patch again.

> 
> Best regards,
> -- 
> Heiko Stuebner <heiko@sntech.de>

