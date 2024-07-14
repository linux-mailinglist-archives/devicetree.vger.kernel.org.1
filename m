Return-Path: <devicetree+bounces-85582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4473F930A30
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 15:39:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB97B1F21542
	for <lists+devicetree@lfdr.de>; Sun, 14 Jul 2024 13:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55C051339A4;
	Sun, 14 Jul 2024 13:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ghOS0W+R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F8BD132106
	for <devicetree@vger.kernel.org>; Sun, 14 Jul 2024 13:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720964338; cv=none; b=j13BzSyH+RLFjd73zoz6/asBscvJQoRJvcf93V45Cv2E4udW9h0OFv5ladcwwQs0ayzvdlpYJevtZqKK56eaHvU8R2drtzdVpuO+vV3CbAgHO/wgr2Z06/C251LAQB5UD39PNm4MgE9WuKvBWTpIdrauXJ3epkfSLI1aPP6OD4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720964338; c=relaxed/simple;
	bh=B3xuHRBuHoa230RyJGbZ5wSJRZMe9eb0eEMIE4pfxng=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=MQ7HduifWAMA1eQVi9nVZbwuA+FDFeq5xMUhpGtBhhJKS+Y7q/JZ/L+FDfad8e0MgWwDHazVr/xWSJ1Fs9CFRjYNa0kdL9ljLdZbcdufT95Wi8Jcm5M1Wo1rTx4/SSeY+1P6uSjWqiXkPCoQrfJxrp2H2D6m9+jzty4Abzend7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ghOS0W+R; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4257d5fc9b7so26806465e9.2
        for <devicetree@vger.kernel.org>; Sun, 14 Jul 2024 06:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720964334; x=1721569134; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r39c9BCN+jg7BbDLwYi3q6RBwDCZYgJj4DGme1UyFk8=;
        b=ghOS0W+Rv5e+9STuJ0x5VdBI6oWU1jBwiwBg7g4MX3v6gIcbqxvncnSju/9WQDDmQU
         +F1OCm0daxEAoKyKwCnm+3ooeaQZt4duJftqD9DB2eeU289JLSMRC34N8k+3HfbMCO+V
         sgE1QsSx+l0Skjvw5gbWmpdQDkxjlXhi1LiRS/mLGt78raolAaYnxR4t1Co9aKRR60uz
         5DfPtRgk7DNyu5oY++cYm1HYlPSpvNrjFVJgc18fFH22Wga9ct8YVTa2ilUm4B5yXmjh
         TiRVdC8HEWgmkP6c8ILl4U9N0N1weweuguKrKxQZbKdGkIQpGfB1PUe1+vyX0gwiSBbH
         Ccqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720964334; x=1721569134;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r39c9BCN+jg7BbDLwYi3q6RBwDCZYgJj4DGme1UyFk8=;
        b=XEL07oaflNeuyAwYbQE9joaT2mjcMzdmLi/0fzAOLIYEBXQd0ZD9GzjPK/bLBuXqj5
         d46PYCsf3SdXeNR0O5Mh7ZhABqvzDWHWQ7GQXJFUjgWq2L42M1Amhl1ypwXE+h2FLwuy
         6PeFfVgN9XUTLwUBB11XmE5qLnsXcUR/CjoDENFw7hH2mPGtoOvM2s6HCRGlSJ7aku3a
         LzQ0Y+NmCalmltTWjj33HfpE4ANgneWBUvvCKoinGIBvYOTSgMRTRgnhKo4rMmxvMhAz
         S4BvLWPfV8kjKlmuaMFrw+aJOhGQmYe33Hu6lexRdUETH/K8mIe7cg2VVWYyILmA5FVi
         OgDg==
X-Forwarded-Encrypted: i=1; AJvYcCVZTuZ4BPrOaJPOjxMUzJg66U0lMpex8YZFuIkAXrmLaMwsyuGlA+jML2DZ+nygmbPDn+flYigzxAfaO3bFM5/k7ikMiGe3vDRONQ==
X-Gm-Message-State: AOJu0YybiqI3GmRVmHXJyhCk/q8QlrpgUcw3GNvBU5K/dvTDSRcjmXZJ
	6HP5ZjfDNcAVRODOQAmemXe4mvmGYBRnYG+FcmijBMwBuZaYKygXSqV2e73KE40=
X-Google-Smtp-Source: AGHT+IE4jtSEO1yWmx3Qfi8/Ckim4CjNiCjfZEXUY8ozTD2+o0rwCjYBEaETyLa0t6w2X2UpuO1rHg==
X-Received: by 2002:a05:600c:22d4:b0:425:81bd:e5ee with SMTP id 5b1f17b1804b1-426707d07c5mr146355945e9.16.1720964333986;
        Sun, 14 Jul 2024 06:38:53 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680dafbea9sm3871306f8f.82.2024.07.14.06.38.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jul 2024 06:38:53 -0700 (PDT)
Message-ID: <c6e9f1d7-b262-41ff-87cb-6087004b6fdc@tuxon.dev>
Date: Sun, 14 Jul 2024 16:38:52 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/27] dt-bindings: clock: at91: Allow PLLs to be
 exported and referenced in DT
Content-Language: en-US
To: Varshini Rajendran <varshini.rajendran@microchip.com>,
 mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240703102011.193343-1-varshini.rajendran@microchip.com>
 <20240703102749.195907-1-varshini.rajendran@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240703102749.195907-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03.07.2024 13:27, Varshini Rajendran wrote:
> Allow PLLADIV2 and LVDSPLL to be referenced as a PMC_TYPE_CORE
> clock from phandle in DT for sam9x7 SoC family.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
> Changes in v5:
> - Updated Acked-by tag.
> ---
>  include/dt-bindings/clock/at91.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/include/dt-bindings/clock/at91.h b/include/dt-bindings/clock/at91.h
> index 3e3972a814c1..6ede88c3992d 100644
> --- a/include/dt-bindings/clock/at91.h
> +++ b/include/dt-bindings/clock/at91.h
> @@ -38,6 +38,10 @@
>  #define PMC_CPU			(PMC_MAIN + 9)
>  #define PMC_MCK1		(PMC_MAIN + 10)
>  
> +/* SAM9X7 */
> +#define PMC_PLLADIV2		(PMC_MAIN + 11)
> +#define PMC_LVDSPLL		(PMC_MAIN + 12)
> +
>  #ifndef AT91_PMC_MOSCS
>  #define AT91_PMC_MOSCS		0		/* MOSCS Flag */
>  #define AT91_PMC_LOCKA		1		/* PLLA Lock */

