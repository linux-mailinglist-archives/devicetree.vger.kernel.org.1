Return-Path: <devicetree+bounces-106619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B3998AFA2
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 00:08:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6F76282F09
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 22:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E64E187878;
	Mon, 30 Sep 2024 22:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="pZ2dsJAq"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10olkn2085.outbound.protection.outlook.com [40.92.41.85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1F6170A22
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 22:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.92.41.85
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727734119; cv=fail; b=VnUAJp2yvyfTdYfvK8I6uPXO0AwBBuaa/bofo9NCOZbFb7IiSGRNQAF0e/JdUt4MbmxyLUgDYlW9zY1bs0wq9SK1T+31/QSRX9Q1mEHRzQ1xZWY57lKALIAwf3VTmXZ0AG+APWeTPrdyWUC20BDWRDNbbutaTWRNT0e6Q21x9Xk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727734119; c=relaxed/simple;
	bh=URgeeAz6BLtAOFm6E3OOxJh8abWthitdhM4FDJBuKsI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=jrk/JPzrn4bb28E9Qmm9aXxVjQ7255DwCJTaUTjv5Btw5DKlr0qkVLGaF29KHfpN4YbAE+9nQe1U2tA1KCdtLnnIy7NullxIxLRgXcTxnKqlUHj3MtN1xgPGQZ0fsWWpyvP3pfewYL+pQSMuSqR/uDsN7AclC7weESrOCVMRrGk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=pZ2dsJAq; arc=fail smtp.client-ip=40.92.41.85
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IebNcm42+09Kk22Yzhl774xUXp2TBJE0xctZ39pCdq7X7lMz4A0eZnTeuF32AsBhar4ZXkDWg1M/i9h7kqTUkVnNU19ITFSC3Fv3rtDIQjnznER1wYEUpS3lLk9yW35rEo/wyVU/HDhQfP8BjBlRbffgbO3qkD/rPlks4O221D6pmtZOiArHp8eUPkJ84vVkXPADWB4M+PaMYKfLNvQEXGz3/4MLpWfX31UnaCcknWP8Q9DxTUbHt267VyojWeSWhLkxE+yrAN5she6YNsgV4bIKMnhKin8BiLBCwktcx5oteWEwDNHvOx5km5Vyj6fuS8JhyOmmSxF3v+tU2fHevQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u/sDmzLpUfENu6DJcUbR/7nUm/X31iofIloR6g7ePFw=;
 b=OfSzSXZZqpGK8qNtmhgrxqrBK5Dr2PRlyBUrtomKit7GMq/u6zk5eg+rcIqzpytQ8lbR0XwMq3nX76tpBDoc7k639zLI8ODi5cyv0oTx+/snQuJpf1StTQM8iJ0oC2Oy9yvQ8NIJR/sKCNFP+1gDG+608L8f0iOu899KGyFjCn3ZyNH0WFdoq8VKqiFHpmKDlrdMqGLz0HTKuZnzSkA/Qki4QM6Mmczfr1xqhdavMgrnYFJ3gp0mfkOZHrpuZdIms7Vpi/a3bjjCcXmKi8zvOO8xB/H7yp7DXtt+P/OX8rXX4uWuMNEn3eOO3Je78j4voZsRB2oPbp6G1hl4tZyRaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u/sDmzLpUfENu6DJcUbR/7nUm/X31iofIloR6g7ePFw=;
 b=pZ2dsJAqsJiLDshpV+jGJS5W+w7xfngFXcUdbI23ikJr9ewcMh9b1vYW1E0BKyJQPp6PcwOU4X9p2rAjjNay6V6fnCZnIAuPYoyPRz+9jCB41xt/NcQAwis17PjgmqeBk7GrZ7njNo9IjMXJnBwh4A+hL1N/ZJ1EMp6rb+POVpduIX+VLgJZ1k59VTS4RKR5Qx+RCOMjisHxhkpG+oC1C62PXNeq+NvNG9W5DQUXqOyvdJFLlDYeQD6V/VNs6A+8yGU2SSxe+T4Gicei4SRsk9iCK228EBD6A3AI+UrtuqjV1FCpi2E3Fwd+G0uExxKFReFGd73LHT8uiQFwaHPOhQ==
Received: from MN2PR16MB2941.namprd16.prod.outlook.com (2603:10b6:208:e1::15)
 by DM8PR16MB4328.namprd16.prod.outlook.com (2603:10b6:8:23::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8005.26; Mon, 30 Sep 2024 22:08:36 +0000
Received: from MN2PR16MB2941.namprd16.prod.outlook.com
 ([fe80::9d62:95ae:c373:c490]) by MN2PR16MB2941.namprd16.prod.outlook.com
 ([fe80::9d62:95ae:c373:c490%5]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 22:08:36 +0000
Date: Mon, 30 Sep 2024 17:08:32 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/8] arm64: dts: rockchip: fix i2c2 pinctrl-names
 property on anbernic-rg353p
Message-ID:
 <MN2PR16MB29411AEE45D1961B14002DD4A5762@MN2PR16MB2941.namprd16.prod.outlook.com>
References: <20240930210112.1993625-1-heiko@sntech.de>
 <20240930210112.1993625-2-heiko@sntech.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240930210112.1993625-2-heiko@sntech.de>
X-ClientProxiedBy: SA0PR11CA0069.namprd11.prod.outlook.com
 (2603:10b6:806:d2::14) To MN2PR16MB2941.namprd16.prod.outlook.com
 (2603:10b6:208:e1::15)
X-Microsoft-Original-Message-ID: <ZvshYCbA7JYUrWp4@wintermute.localhost.fail>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR16MB2941:EE_|DM8PR16MB4328:EE_
X-MS-Office365-Filtering-Correlation-Id: 11822048-28de-4935-5f38-08dce19c6e1d
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|15080799006|7092599003|461199028|5072599009|8060799006|19110799003|6090799003|440099028|3412199025;
X-Microsoft-Antispam-Message-Info:
	OD6+GlbzEnXSPTDkPDP0cw1bcLWxFp6vj21n1601fsQzTMbaSHr6b6MVL9mGbagO+NBxuD+3AcQ7iY9LM+vZVlqDkVaOHJFlFkIk8mjU6Wm/pfIE8MyQPUsEgxRYZxJXFI8YW3NBn0zyRn2UdSq9Ph6kJNj76zDNJt7lGIyCiqNfqQTE7HQvvzxoxGuiNbGFGzf+BGkKzkoWZsbmY1sVLlkEIQa03SAVjUPahrrkhhebHXreQGv7M62ESHiUS0EX+tNQsH6wNRPCOX2l9RojaYbm3vRJYrJw8u9h2rvvguffRqKrq01ehq5Y4LfV669ChuF0moor9CEl7+zC9Mx38F3bj6Of/2ZcLEf7T0oDmlXGsvSrwLVs4MLgd04yl1zfnfii1Fqrb+LeTPxIBkRkU1if5vIZT55TzQS0oLRwd+N+3RVv1nN9TdvYvw1JsBzgPy9/Tlv/YeNlQKw8q2grJ4XV4zdh9Bwv13hQesgFmdqwNs5rJxt4jexoJPmlzkkaynunrpZ08OdX/jCJQ3O2UU3bnlbSRD0mTz4i33ZBIzrJ6qLOjxfQuVpX19HRxYXXFctLZxXFY7EWeuC2p0fJc9CflNB1+e/Z61Io5JKgp9Cxj3YNVOykSwqkpOlWvaOBaVu7ukIARRiKK4RYdqRmKJ9t5UM2tpX2yotjDeXq8mv/HXgviAqiI1L+ACVA5SNkBC9der7xw3AqACiXbYHjSRsN8oM1yKx1FcYXXkhih4N2CgBaTCCfd0WP9GdqK5BW5sUjTfDRNORaKb+7h6G/hQ==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?DMTTS3KJWSKq/32RIYij6uLhP0+VBFk3X9TSTUN2hioLzs8XuVyxAx9RnKcf?=
 =?us-ascii?Q?3oqvr0D4QlFLfj9x6axHmLL9zViPC7XyQeL9uo6ZP6Ic+IHH0VX/RYiFTfZh?=
 =?us-ascii?Q?f23lURem5XDXYdLGgLQLO+8b/EU2jvVf4SI+Df0EsKVjpfoMw7oTKTOYmVmf?=
 =?us-ascii?Q?QsvXoe2bWgB511wwaHR8I2h4cjJe18muYZyMfE+/d+2UAKf4CEKPp9iF3HlJ?=
 =?us-ascii?Q?Sq1MBlUF0MptYZ3zC+HFuuTK3XSBkiw5eKQQDIjAbYubvbNb4/X08aXAloku?=
 =?us-ascii?Q?2Y79aeJtfzbTg+hO6FxgPD3lkOYdDceEqjpgMLmSWDCRKgSAxXZ8oEVBEpjJ?=
 =?us-ascii?Q?/pG2/XmnqupMJ8ERzYBYbFyXbh0wmuJoPWVyTyR9sz2yLmmqovugBDgAqdLx?=
 =?us-ascii?Q?Zf99cpp4RlG6jmxQNJxVN1xSfom7MV8n3ThYwQFG7ZuDBzlDfRkjz5/8JfIQ?=
 =?us-ascii?Q?+CF8eCCDvUiD5rGsQUXyU1dva/AbaPVcFjKwjsnVfN7wFnL2gywkvh3OeTVD?=
 =?us-ascii?Q?gaR2qBVm8U2lqGjhXFUMX2DJkCQb35jXMx7Y82Rlc1G+gKDpGsYQQ5rUls9+?=
 =?us-ascii?Q?l3vw94d5DVLrH3fnfnTMVBejdfdnzTobP+AkfDGhYPf9JZzWnnna/AlYYjzL?=
 =?us-ascii?Q?5lAO8rC69ohn2LZdCPNudE6P+Fxz0WIIzUxq543RXMEgUDjoQwJM+pYGJx5I?=
 =?us-ascii?Q?mppuGm2ICK+MRq5DGqdmwEE8R7/DIJPO2uNg5BeA1Y4TfGQWDZZbcSybQj4n?=
 =?us-ascii?Q?1rBZCjC52PV55yJGPEcQELEyLV5qvquowKvp/MTlEShpm6leG5wRn6RskQRT?=
 =?us-ascii?Q?/D8CLktSqNLQoOupZm1J6Yael8ABGhDrB1h9gQEx3ZhqsaQjdJglI2mF+ZxT?=
 =?us-ascii?Q?2DmWmI9yjtj+Xw6cy2ILTghG+u7UYKQex8hwurpGYBqaVMwwan850DvuEtrT?=
 =?us-ascii?Q?52iF1e7G5m8Bbn58kfdEWMJ+2SlP21JKhyQ9k7TxiaM3+/remHoNQUcTmEfa?=
 =?us-ascii?Q?CfXeQGg4a8oq4zYrZvkYJYuRCx08hXDBBcoWVntxsSkwBOBLr6ijoxXTcKGO?=
 =?us-ascii?Q?i+iSJCqaAhV08uUpk2bc4H6G3sJ89oVBwL9Flrzfv/6lnu/LGaOHTPuZvnOT?=
 =?us-ascii?Q?UmTHAbs4u+wI/pXqufdgQln9swAXEpXGBR4G4x1GjYIs+l/i/mzcE52Y/i8S?=
 =?us-ascii?Q?Ko/QNHukGw5bir1lKZqjHJ1cFJycjGFm8KDIVCOrjDAXjozbX2T5AAvwvC33?=
 =?us-ascii?Q?hFA3SJ/YlM8fKMqi80tP/ANoGAhBvYWuWfBDKySWxQ=3D=3D?=
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-559fc.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 11822048-28de-4935-5f38-08dce19c6e1d
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB2941.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 22:08:36.2363
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR16MB4328

On Mon, Sep 30, 2024 at 11:01:05PM +0200, Heiko Stuebner wrote:
> We want to control pins, not beer mugs, so rename pintctrl-names to the
> expected inctrl-names.

You may not want to control beer, but me...

Thank you for the catch, not sure how this first happened but
subsequent instances are likely a cut and paste.

Acked-by: Chris Morgan <macromorgan@hotmail.com>

> 
> This was not affecting functionality, because the i2c2 controller
> already had a set of pinctrl properties.
> 
> Fixes: 523adb553573 ("arm64: dts: rockchip: add Anbernic RG353P and RG503")
> Cc: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> index a73cf30801ec..9816a4ed4599 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> @@ -92,7 +92,7 @@ button-r2 {
>  };
>  
>  &i2c2 {
> -	pintctrl-names = "default";
> +	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";
>  
> -- 
> 2.43.0
> 

