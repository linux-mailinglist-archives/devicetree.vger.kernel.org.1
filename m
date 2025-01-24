Return-Path: <devicetree+bounces-140807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B2FA1B834
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 15:51:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E5117A5597
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 14:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF110143C5D;
	Fri, 24 Jan 2025 14:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="ib584NwX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [207.246.76.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2736653389
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 14:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.246.76.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737730304; cv=none; b=Yc6+w2oBrnETxFheZYXS0WlVT6LhECsMc6H0falO0KL2v1eo/w0jp9awYAOhtcSOU6Jr8XDH2j/z2kcHCg43x7ddFCIHipsAT1URbPOj77l6DzwHw0RbSojJGfTb8JST779bGTMw8hB8+1ntOuRyoIvTDnyaoqFu0YJP6RCVqG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737730304; c=relaxed/simple;
	bh=DOW7ZQCoyBFfJmoCI5MTQFFq9YjIfjcsUIXQyLyB98w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qs//k4kcFMZIBfJ1AA/UX7gnB88GNcZ/fQbJbSRmGtxzGTqO3YHN2v0xixA9X7M1FH8pJNF+FyIKGAFbnk6C3ObYVYr7sRpzyJ48X9kQSh6TdEDq4eySsH87yBbEBckXgH3b4lHjjuT5uYj0DHePJm+a/F/pNj3QUyEXOu7QsDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=ib584NwX; arc=none smtp.client-ip=207.246.76.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1737730301;
 bh=MsYLWrXefMP5m34iCp3jAP9mKY5iNXf4rWORER2MwmY=;
 b=ib584NwXehaHFS8jPjUg1LbanMFRvH+XFgwD61X6Y7+BYY+lPUggGyU+AeM4wXwDiMtVF4ITR
 3AatVKo33gI9nzsr8Jg/NNwy7cpyZUrslHcbe4ShVlanFF3btup6mWc/cr/Pghi/P3cszxfsVsx
 Q8qQR6oQ1MoAyHPnr/io3ef1mQJXyLQJoTSFwBYHW164jTofUvjlW8gUxahly5MIf1RrQEgbnvC
 SlY/EhjMckjzzn1vlK+CWx428qjsrZ8UUyiHqB64SL2cjCauVjs2jhU282HQDmRlc9Pnnku9yvA
 V+TiEtg8oYCoHghW7686Rwk+Rb+eqfhwNAeOmtM93ggg==
X-Forward-Email-ID: 6793a67f3e07d3fa850557b4
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d95d317c-5f6e-42bd-94a9-e1a6c7685e2f@kwiboo.se>
Date: Fri, 24 Jan 2025 15:40:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] Revert "clk: rockchip: Set parent rate for
 DCLK_VOP clock on RK3228"
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, kever.yang@rock-chips.com,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250124064619.13893-1-zhangqing@rock-chips.com>
 <20250124064619.13893-2-zhangqing@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250124064619.13893-2-zhangqing@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Elaine,

On 2025-01-24 07:46, Elaine Zhang wrote:
> This reverts commit 1d34b9757523c1ad547bd6d040381f62d74a3189.
> 
> RK3228 Only GPLL and CPLL, GPLL is a common clock, does not allow
> dclk_vop to change its frequency, CPLL is used by GMAC,
> if dclk_vop use CLK_SET_RATE_PARENT and CLK_SET_RATE_NO_REPARENT flags will
> affect the GMAC function.

Please explain how CPLL and GPLL is affected by this? According to TRM
the hdmiphy is default parent (reset value), this is also how similar
clock is defined for RK3328.

  vop_pll_sel  
  Control vop clock PLL source selection.  
  1'b0: select hdmiphy pll clock (reset value)
  1'b1: select vop dclk

Maybe the dclk_vop name is causing confusion, or am I missing something?

Regards,
Jonas

> 
> If the client application does not use GMAC and CPLL is free, make this
> change on the local branch.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> ---
>  drivers/clk/rockchip/clk-rk3228.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3228.c b/drivers/clk/rockchip/clk-rk3228.c
> index ed602c27b624..9c0284607766 100644
> --- a/drivers/clk/rockchip/clk-rk3228.c
> +++ b/drivers/clk/rockchip/clk-rk3228.c
> @@ -409,7 +409,7 @@ static struct rockchip_clk_branch rk3228_clk_branches[] __initdata = {
>  			RK2928_CLKSEL_CON(29), 0, 3, DFLAGS),
>  	DIV(0, "sclk_vop_pre", "sclk_vop_src", 0,
>  			RK2928_CLKSEL_CON(27), 8, 8, DFLAGS),
> -	MUX(DCLK_VOP, "dclk_vop", mux_dclk_vop_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
> +	MUX(DCLK_VOP, "dclk_vop", mux_dclk_vop_p, 0,
>  			RK2928_CLKSEL_CON(27), 1, 1, MFLAGS),
>  
>  	FACTOR(0, "xin12m", "xin24m", 0, 1, 2),


