Return-Path: <devicetree+bounces-253875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03354D12354
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:15:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 50102301AE16
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC37C3563D6;
	Mon, 12 Jan 2026 11:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="aDNaH51h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m32118.qiye.163.com (mail-m32118.qiye.163.com [220.197.32.118])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63518239E79
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 11:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.118
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768216544; cv=none; b=OzYNu/B7zmKCHtFudCwTrnkpL9nOvhMkDn/8lCuKRmlUWGilxfN6Cvkcr9PCMXDek/czzZdc63MIs5DLU44V6OIZg/Tma2mwk557TXr3/Zvw0Gyu9YFW32KAno2kUSlEvL/xMIgMJmVJZ4Csy/XkP4uyzkD2NLG8QCbl7NnZxSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768216544; c=relaxed/simple;
	bh=eV/l19tz0eZqAQ99QsQnKXMgC7Zd8Kqta7M3IT+bWxk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E7l9cCQMWkHZZSaE+xiK15mYLCBEiDL4xTJ26Msg0jbdDDJUAWYnkzIA/tio4nOoJrrBzp0LTo3abqlKHD6poEjXpNndYIZMGnPcz3ay2Im1rGw3TekG8EcXv8nNBg6d8p5h45eiYb44otsIHCED7+IVWdSjSiVO/loa7ZlZTJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=aDNaH51h; arc=none smtp.client-ip=220.197.32.118
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 305501bf3;
	Mon, 12 Jan 2026 19:10:23 +0800 (GMT+08:00)
Message-ID: <07442e8d-f983-4559-a259-3f84828ff2f9@rock-chips.com>
Date: Mon, 12 Jan 2026 19:10:19 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON
 definition
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
References: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
 <1768189768-96333-2-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <1768189768-96333-2-git-send-email-shawn.lin@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-HM-Tid: 0a9bb1e65d4903abkunmb79b198a5c4f0b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUgeSVYeHxgYGRgfTxhOTUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=aDNaH51hDVuRO/bA9HO1jY9sHyXgfOQdTQx9985PbRirxWNkwdzTJgL48lk7X+I49bBgVIpiQintPnFRjVnx+JvqtdJAYM7A55V/v4b0uzUdZ4gIsMZG3Ul0u//b0ufQnEImK9+HipyCffFxCzufWQl8wq2yVsb1dGCZb4wSV+o=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=mJ9TWEXd0lPwIrpUp9uqI/2FaTrtCpdnq3CQ5tUYyIc=;
	h=date:mime-version:subject:message-id:from;

On 1/12/2026 11:49 AM, Shawn Lin wrote:
> RK3576_IOCGRF_MISC_CON is IOC_GRF + 0x40F0, fix it.
> 
> Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/soc/rockchip/grf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
> index 27bfa09..8974d1c 100644
> --- a/drivers/soc/rockchip/grf.c
> +++ b/drivers/soc/rockchip/grf.c
> @@ -146,7 +146,7 @@ static const struct rockchip_grf_info rk3576_sysgrf __initconst = {
>  	.num_values = ARRAY_SIZE(rk3576_defaults_sys_grf),
>  };
>  
> -#define RK3576_IOCGRF_MISC_CON		0x04F0
> +#define RK3576_IOCGRF_MISC_CON		0x40F0
>  
>  static const struct rockchip_grf_value rk3576_defaults_ioc_grf[] __initconst = {
>  	{ "jtag switching", RK3576_IOCGRF_MISC_CON, FIELD_PREP_WM16_CONST(BIT(1), 0) },

LGTM :)

Reviewed-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>

-- 
Best, 
Chaoyi

