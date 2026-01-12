Return-Path: <devicetree+bounces-253870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA7AD122E1
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:09:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 259E53002D38
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE515321422;
	Mon, 12 Jan 2026 11:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="gQGVaJ5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49219.qiye.163.com (mail-m49219.qiye.163.com [45.254.49.219])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184CC2D47E3
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.219
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768215873; cv=none; b=V51mWzlc76LJs++84pqug3sns1rIccNIFmOzE/f0I91CXzjLvG3Z+R5Fz7cM9ghkbIK+/he2i/YW/Vfu2jNILhaCARZBECHD/zyAvYqz1nFbpve9IqLgru3N3ctfaKNIeljXS+cJwdy5bu3mubkkauYU5tnVfeYRLidpX0FLl5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768215873; c=relaxed/simple;
	bh=XrYFxiLfoSzZLdP1QtHm1WgDPPwdB2asQac9Dip/J9Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gmixp//QS6qrAHpySPpbU9Y6O91JVFfDXU42ST5PIGuOwnOtBTtCFsBbnNLWyxHitr9OM4g7RLjV16q44+gucnNEbXSuRwpru847ib4n0NHscF+kCiFEWR2k2ev5XL34Ds6jXIjrISGyq044MuJVSk9Xh7x+3s7UTTTnbXJN444=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=gQGVaJ5s; arc=none smtp.client-ip=45.254.49.219
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3054d7495;
	Mon, 12 Jan 2026 19:04:26 +0800 (GMT+08:00)
Message-ID: <5ee40807-79b3-4ba0-a9c6-6f0cfd2173c9@rock-chips.com>
Date: Mon, 12 Jan 2026 19:04:22 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] soc: rockchip: grf: Support multiple grf to be
 handled
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
References: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
 <1768189768-96333-3-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <1768189768-96333-3-git-send-email-shawn.lin@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9bb1e0eb7b03abkunm9ead88385c3b5e
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkodTFZDGUtNQ0IYSEhIT0NWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gQGVaJ5s1nTjOA7kv8FtOXErHev5yauFMNRTXOLTa5hSjJ9/61H/e+13LZE7j1aiNAlyP2p/lJWR0WY1zX5bZpDpPLiK/7gNjaVlNRm+pEt/LZPoWOBQa6pZ3pnfcgInCV6srXmnBnmv08wfX/U8Z7UWDpTBoSgzF8kXyRyBod4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=3hi2cD50khIEG/ArQOWPFeNoiV/AAAhVoZnQWKnnERk=;
	h=date:mime-version:subject:message-id:from;

Hi Shawn,

On 1/12/2026 11:49 AM, Shawn Lin wrote:
> Currently, only the first matched node will be handled. This leads
> to jtag switching broken for RK3576, as rk3576-sys-grf is found before
> rk3576-ioc-grf. Change the code to scan all the possible node to fix
> the problem.
> 
> Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/soc/rockchip/grf.c | 59 +++++++++++++++++++++++-----------------------
>  1 file changed, 30 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
> index 8974d1c..6d1c624e 100644
> --- a/drivers/soc/rockchip/grf.c
> +++ b/drivers/soc/rockchip/grf.c
> @@ -213,40 +213,41 @@ static int __init rockchip_grf_init(void)
>  {
>  	const struct rockchip_grf_info *grf_info;
>  	const struct of_device_id *match;
> -	struct device_node *np;
> +	struct device_node *np, *from_np = NULL;
>  	struct regmap *grf;
>  	int ret, i;
>  
> -	np = of_find_matching_node_and_match(NULL, rockchip_grf_dt_match,
> -					     &match);
> -	if (!np)
> -		return -ENODEV;
> -	if (!match || !match->data) {
> -		pr_err("%s: missing grf data\n", __func__);
> -		of_node_put(np);
> -		return -EINVAL;
> -	}
> +	while (1) {
> +		np = of_find_matching_node_and_match(from_np,
> +				rockchip_grf_dt_match, &match);
> +		if (!np)
> +			return 0;
> +		if (!match || !match->data) {
> +			pr_err("%s: missing grf data\n", __func__);
> +			of_node_put(np);
> +			return -EINVAL;
> +		}
>  
> -	grf_info = match->data;
> -
> -	grf = syscon_node_to_regmap(np);
> -	of_node_put(np);
> -	if (IS_ERR(grf)) {
> -		pr_err("%s: could not get grf syscon\n", __func__);
> -		return PTR_ERR(grf);
> -	}
> +		grf_info = match->data;
>  
> -	for (i = 0; i < grf_info->num_values; i++) {
> -		const struct rockchip_grf_value *val = &grf_info->values[i];
> -
> -		pr_debug("%s: adjusting %s in %#6x to %#10x\n", __func__,
> -			val->desc, val->reg, val->val);
> -		ret = regmap_write(grf, val->reg, val->val);
> -		if (ret < 0)
> -			pr_err("%s: write to %#6x failed with %d\n",
> -			       __func__, val->reg, ret);
> +		grf = syscon_node_to_regmap(np);
> +		of_node_put(np);
> +		if (IS_ERR(grf)) {
> +			pr_err("%s: could not get grf syscon\n", __func__);
> +			return PTR_ERR(grf);
> +		}
> +
> +		for (i = 0; i < grf_info->num_values; i++) {
> +			const struct rockchip_grf_value *val = &grf_info->values[i];
> +
> +			pr_info("%s: adjusting %s in %#6x to %#10x\n", __func__,
> +				val->desc, val->reg, val->val);
> +			ret = regmap_write(grf, val->reg, val->val);
> +			if (ret < 0)
> +				pr_err("%s: write to %#6x failed with %d\n",
> +					__func__, val->reg, ret);
> +		}
> +		from_np = np;
>  	}

You called of_node_put() on from_np/np here, and the next time
of_find_matching_node_and_match() is called, this function will
internally call of_node_put() on from_np. 

Would this cause a double put?

-- 
Best, 
Chaoyi

