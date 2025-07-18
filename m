Return-Path: <devicetree+bounces-197659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A92B0A170
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 13:00:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B9565166FCC
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 11:00:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C864929E0F1;
	Fri, 18 Jul 2025 11:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="VPZjAuiC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DC020B7F4
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 11:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752836426; cv=none; b=oDfkcVD1QNr3/Zekt9eCP1thNgmlEiYfqN54zoUS/i+Ycfb7k2O2Zeukt/NT78EMB/qks9EptcQ+JumWb7ZHYKi/PHLAkBRxpHiQm6Q8hBrVWUl4Kd09EARDurn6lIlAZmaHghssCRCJTFcYssqszRDb5H31MAQEl/BcBtUa3s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752836426; c=relaxed/simple;
	bh=QshWU78gg8gxdee5BtQnCbEaY6Tmctropapxb3/nbNQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bB6IEsIl+/MRfRq3lUveTpiZPpHDDyiD7W6Ow2WcKDt1P0d9/PDjRh4poV+yg+o1/S5TiyP+ldZA56MrmcHvhwrdiPNRWpNuC6QjpiYXwGdD3usy9cgn13pCnrK9Q9TEtEeEGGghvuQy4MKgYjPDo9LVGciQvPCNmSL1lVFS48c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=VPZjAuiC; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-60707b740a6so2674854a12.0
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 04:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1752836423; x=1753441223; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8G9viKp190Snv9/y4e9WNoJDJ/21KIBMuhohTjZv+R8=;
        b=VPZjAuiCRDQlyRZXUbdEEgMkAx5+kvoVXSSkuu5glSS53EFs40C1HE/ejxlVaAFtAZ
         unrnZOdLNWlPwWdARAxip2qPmmeTfAEwsqresnVKND+NazfMPVsVTWdnX+zxlB390ivo
         pSu1na3DUHlh2eHQtZ79blm2qo1Nm59CkEqEJvxdqNBjupm5B6yuahdIXKnadPWWTuUL
         lTpM7/wJucUe7U8qhJMIdDCINh2gXnPEY5spnjCS186c0HC44UMJipjj6HTa7TucSfSK
         8QCABujtK8GVluGDcIC0vhJmwnDQfhn6Tk/PAsuJL6xWNi6gWxLLy1Zsi/yetlioBARl
         nWFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752836423; x=1753441223;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8G9viKp190Snv9/y4e9WNoJDJ/21KIBMuhohTjZv+R8=;
        b=gIVY182A3NHYKZ/0iGkVzuDae5RPQYmzqBDbMVIQ2LECP0BUl5mmucO18RsGhy8CBq
         UYO8Yp2illKgfBv3afxnxbgGolEJbQAAjnayS6wJVX9iujpNh+xUConLi66GvJX+kTq8
         57fhPqUDefhJ9y+ysLYTvbQT2e/Rg4qgw2l1AZWh+0YiZ8284//bK5lhOawVmp9z68z9
         Q2ugEJj209aRdyLrBs3HTrHl8RlpSHZZqaszxK+0weGg5xMdiEFOIbXMwlR3Lq0CJlaY
         L7b+lZqv+Wn3UbEhdPzgVW6mnjCfwlnXkE+reuXGm+oxQ/zLwgsk7Trr8TY+o80ZZF5w
         AfbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWoSRDnW0ViIXLTMI3CMiGk59zWA+X55J2iOKNaqxKt7VyqjF4phfgAfGlJUX5iALJFJAqUi7NbSsaX@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ18zXKFdtgF0L4sPV4SRn3Yz5EBHTFpQHhxHtc6xQ2wGV77ar
	6qBVfsXBHaQ1/HQVhzmH1cdSm/C4sOAB4a/qVzvM/CC6OUi2IHs4sEBB8WoKl4NerQc=
X-Gm-Gg: ASbGncvCwAIC2RiRjO5z1ODXUGvPHCtErw7xsWyT26YRpuYtFhvHWf5SEe1l5eWYNT9
	JjlzzkzmZNBG9tsLcjtDe/u0n0553rtKOSH0onxIb5lCYLcDNAlepPMKQfijSlc6XCbI0Dh8qOe
	Mmr+3uSDv6KBItMF23oJQf08KMykRUqtC5QZkAkvHGD+P/QjQab5ZifGHjT2xgtIuzfOdYplS4E
	34PxixPAbSvdKtTeqbgGCs5wTnQwx6FODkkimvjoaMEns5hLf49icIwCostBsW/d82G3/u6IB7c
	a/tne6n0sFtvQQZruUU/q5qI4+7krViI/a+xfgKQ9bBqFZuJduujOrt3TDaRpdzHKb5GuLpTYLA
	bVDMadiSBkgcJK5uqBS/0OP3WJEW/9g==
X-Google-Smtp-Source: AGHT+IEWR5nv/oQJzwgF0qcajAF2Z8LBQapmjvceGu3HRHJPS7XWZrDCVWw4hyx2KUGl8xQpn1ru3A==
X-Received: by 2002:a17:907:c5cd:b0:ae3:6744:3661 with SMTP id a640c23a62f3a-ae9ce10c4f9mr786897166b.44.1752836422360;
        Fri, 18 Jul 2025 04:00:22 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aec6c79c6a7sm101144766b.26.2025.07.18.04.00.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 04:00:21 -0700 (PDT)
Message-ID: <fe20bc48-8532-441d-bc40-e80dd6d30ee0@tuxon.dev>
Date: Fri, 18 Jul 2025 14:00:20 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] net: cadence: macb: sama7g5_emac: Remove USARIO
 CLKEN flag
To: Ryan.Wanner@microchip.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1752510727.git.Ryan.Wanner@microchip.com>
 <1e7a8c324526f631f279925aa8a6aa937d55c796.1752510727.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <1e7a8c324526f631f279925aa8a6aa937d55c796.1752510727.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 14.07.2025 19:37, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Remove USARIO_CLKEN flag since this is now a device tree argument and

s/USARIO_CLKEN/USRIO_HAS_CLKEN here and in title as well.

> not fixed to the SoC.
> 
> This will instead be selected by the "cdns,refclk-ext"
> device tree property.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  drivers/net/ethernet/cadence/macb_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index 51667263c01d..cd54e4065690 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -5113,8 +5113,7 @@ static const struct macb_config sama7g5_gem_config = {
>  
>  static const struct macb_config sama7g5_emac_config = {
>  	.caps = MACB_CAPS_USRIO_DEFAULT_IS_MII_GMII |
> -		MACB_CAPS_USRIO_HAS_CLKEN | MACB_CAPS_MIIONRGMII |

Will old DTBs still work with new kernels with this change?

Thank you,
Claudiu

> -		MACB_CAPS_GEM_HAS_PTP,
> +		MACB_CAPS_MIIONRGMII | MACB_CAPS_GEM_HAS_PTP,
>  	.dma_burst_length = 16,
>  	.clk_init = macb_clk_init,
>  	.init = macb_init,


