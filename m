Return-Path: <devicetree+bounces-240718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A7339C747BA
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 15:15:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D6B894F3E86
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 14:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B379346773;
	Thu, 20 Nov 2025 13:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="h58aRXaI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317D2346772
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 13:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763647173; cv=none; b=hjcbXDh1829wZNkFj9jJyt3JPhlkZKIAf3s6af6x0xI2K6IJGkuDH1WDjXk7cC+RA9N2RkWr7/rrYflnCxl1XrEVFEufqicuyCWadJ4K1BQqiR1AVRtT4GMS2njaLz/a9n5uKwFp3SULXnZbRZTEEQVLWHZyEPYThWriFX2pKfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763647173; c=relaxed/simple;
	bh=03SXIA4oKWP90BK304MihS/+V/7odb5PoMgrN/1p/qk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tYlEvx+Qmh7JIGJFVin8C5WRLqddrjks5EH0KgBJ8FAHW+q5TEOSerwE8+nBE9j0IlaISIP0i+nCK1OjAXhWWdimpfw0jq/zKhzYIyno9zhBYrEVVwTgX7ddy/mBqpE3zVeHXffqBCkh1HIzD4MUZI5Z2muMaUKRGnVPiyaEs8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=h58aRXaI; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 5BFF54E41804;
	Thu, 20 Nov 2025 13:59:27 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2896F6068C;
	Thu, 20 Nov 2025 13:59:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 71FD910371C4D;
	Thu, 20 Nov 2025 14:59:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763647166; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=+RFWFftAzDHWnw+Z+hitcu313UCuMoXyrlJUegc6J+U=;
	b=h58aRXaIUEhQHztbSUQ9G5QXd6HneKsqBpdqwK2apQY8NzSBZQ7hcSYp39u/g+t1e3rgNR
	ladPfOIlvHj+eVCWuJh+gXQtSdRz0TlhW1gr5Rm4GQGcIoAjuxaBqqD2jX/gfU88155+1X
	j25nTt/+SgmT304me5EPfEami95SgB9h6DM0dTNSgJFi3jfadO9QFaX1kzg0XTkwuxwvzA
	scuCg0jXDxIFz0/nj+UrUnkCz5WTAYyH0MBaHcFQ2NIBl4dlV+h1lziO4QLT7RCdc3InsC
	bTVFkzIKAEdttHp6pwmLLpauZGjr11+4ijYHQRouhm5y/hSlbZf3AfmCfqL8gw==
Date: Thu, 20 Nov 2025 14:59:20 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: ot_shunxi.zhang@mediatek.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Eddie Huang <eddie.huang@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>, Lee Jones <lee@kernel.org>,
	Vince-WL.Liu@mediatek.com, sirius.wang@mediatek.com,
	Jh.Hsu@mediatek.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v2 3/5] rtc: mt6397: Fix formatting of platform driver
 structure
Message-ID: <20251120135920cfea853d@mail.local>
References: <20251120121805.6775-1-ot_shunxi.zhang@mediatek.com>
 <20251120121805.6775-4-ot_shunxi.zhang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251120121805.6775-4-ot_shunxi.zhang@mediatek.com>
X-Last-TLS-Session-Version: TLSv1.3

On 20/11/2025 20:17:59+0800, ot_shunxi.zhang@mediatek.com wrote:
> From: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>
> 
> This is a cosmetic change to improve code consistency.
> 

But, is it?

> Signed-off-by: Shunxi Zhang <ot_shunxi.zhang@mediatek.com>
> ---
>  drivers/rtc/rtc-mt6397.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index 692c00ff544b..b8f44a00de5d 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -345,7 +345,7 @@ static struct platform_driver mtk_rtc_driver = {
>  		.of_match_table = mt6397_rtc_of_match,
>  		.pm = &mt6397_pm_ops,
>  	},
> -	.probe	= mtk_rtc_probe,

I guess the original author wanted to align with the members of the
.drivers struct above. I won't take a patch to change just that as the
next guys wanting to improve his KPIs will do the exact opposite.


> +	.probe = mtk_rtc_probe,
>  };
>  
>  module_platform_driver(mtk_rtc_driver);
> -- 
> 2.45.2
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

