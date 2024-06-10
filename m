Return-Path: <devicetree+bounces-74004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F131901AC1
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 08:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EBCC1C213FF
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 06:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7382E22F08;
	Mon, 10 Jun 2024 05:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="K5yNUOcG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5AEE1803A
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 05:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717999038; cv=none; b=jpO8uIPRh6neTNVGxDRRne6rWu4jduk2jeCLKhmXnbsAodQqTIPqT8M3wyqEPdtlo9oi+ZSOW+4TsPVU8oqrvKr6mQjDZdJ5UjXvQAHqs6lzYkamOmLWlmRw4B090jOi8iVKef9eaH4LaNEHD/exQsANBq5fMlYz0JNEt/V7owU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717999038; c=relaxed/simple;
	bh=1/vAMTbq3ZBiRUGV1BfzxoHRsbHKecxbVfTvTcOo+68=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ecbavNQcJjK+NeELHQ40lrwvj5XbztbiNFHuF0YE0WwO5SAQQRMWS1+g+BzeaqJmM4v56oaM44d8mrwCpNYQp5LsDU7O6ng9382e8Ac7amIzqSJ/zQbT26oMR4OMVfOkUNO4nC1i7uE/eIYTz1krlNEb8EEVEbFj7H6k8wv9yQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=K5yNUOcG; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42179dafd6bso9331875e9.0
        for <devicetree@vger.kernel.org>; Sun, 09 Jun 2024 22:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1717999035; x=1718603835; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c5zOFAazIMlIFvhZhDihadnq9wfYmdHFcKUSAGOnXFo=;
        b=K5yNUOcGY28ABWhgUSEKLA0BhUlePsziiDRJ1CaQpJpyhIsaabUV/WR6DTXP6Puy0i
         myPxC4jmpizmodhoydAxd5GZ3Gq1Ge3GRcmq5/q4i6N06kRvFtB+u2WbCoLwQRra7qje
         Rd4Sd1/Ck6jUOX71fdG3UvOnMOju7ufoXYN53DivL7GaAe5Ymh/6RDYiJ3cgb7/gzFVR
         GUpBDNRqVFTzcQC2B4iEqG4mzt2xwSR2Ps55HQ275kUT893hW+ofgp1pwKbg72MBXAAh
         Tsue8rOHZboxfCzcmcw6X1IEan1pk0ZZx7VLz6nMhjVg8oyHHJNCiBeZXpi9Tmk+1Oj0
         XBAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717999035; x=1718603835;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c5zOFAazIMlIFvhZhDihadnq9wfYmdHFcKUSAGOnXFo=;
        b=TxAbw+87NpqY4Lk5/7wzGe/qYk9YcFyOCOfjMu+5cc2D528LWExg962kTZESMCGvbw
         SfpD/aWLkiANhAGmRNhUzykZJIBGZNCi3DEuEitNM6cv65yIWpzeJUiVellZMyQiD+I6
         E5MvQQLfyssCYG4l7BtZAv/EW3yt53O17JldId7VGV8bICKgLdPSsdFRd9g9s0WkQwFl
         njRFtoyg7gg8UdL6AogneBFN2gxAKfrxtCR+2l6BjVec43C/oHUrChC5Cz+YmvRGQka9
         WPAkyeWmHybo9Cq3FQlGdlqEy6f2sRZwnK0y92x6QokRjO3o6bbzf5ERYR3dmDsTzZoH
         PAhA==
X-Forwarded-Encrypted: i=1; AJvYcCX3BVRkCyOHdnW3lPPvjkzsBbWreIQSOs3aYyR0jIr4isG5KlIJxwPpi9XVrqIDFt/mQrh+NcqItKIy7cHch1PyW8+mYAvemyVtAA==
X-Gm-Message-State: AOJu0YwvSSuISeSB5RTYjReulX32xPktwz/eHnLSGkcnO6kD09bqhqoy
	oPqD4SIB/uLrd74LowCHT4pMGWh7Ti+kRWD4tAduLLmxSOUSakhCMg22eQ00CUo=
X-Google-Smtp-Source: AGHT+IGVumZGSFnDHVppYevQMMMEsdzJ2eDAeIRuctFbzJKUmRaBmB6mVqMLLZKUGMeoRn86QX0pbQ==
X-Received: by 2002:adf:e844:0:b0:35f:1da1:c077 with SMTP id ffacd0b85a97d-35f1da1c1b6mr2999123f8f.5.1717999035187;
        Sun, 09 Jun 2024 22:57:15 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.189])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5d29e57sm10097602f8f.2.2024.06.09.22.57.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Jun 2024 22:57:14 -0700 (PDT)
Message-ID: <a8fa2f27-8c7e-452c-82c7-fb0a0d93b9fe@tuxon.dev>
Date: Mon, 10 Jun 2024 08:57:13 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/15] pinctrl: renesas: pinctrl-rzg2l: Acquire lock in
 rzg2l_pinctrl_pm_setup_pfc()
Content-Language: en-US
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Paul Barker <paul.barker.ct@bp.renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240530173857.164073-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20240530173857.164073-15-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240530173857.164073-15-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 30.05.2024 20:38, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> To keep consistency with rzg2l_pinctrl_set_pfc_mode(), acquire the lock
> in rzg2l_pinctrl_pm_setup_pfc() during PFC setup.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Tested-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com> # on RZ/G3S

> ---
> v2->v3
> - New patch
> ---
>  drivers/pinctrl/renesas/pinctrl-rzg2l.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/pinctrl/renesas/pinctrl-rzg2l.c b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> index 1cbf97d416bf..2be088bbbd9f 100644
> --- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> +++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> @@ -2541,7 +2541,9 @@ static void rzg2l_pinctrl_pm_setup_dedicated_regs(struct rzg2l_pinctrl *pctrl, b
>  static void rzg2l_pinctrl_pm_setup_pfc(struct rzg2l_pinctrl *pctrl)
>  {
>  	u32 nports = pctrl->data->n_port_pins / RZG2L_PINS_PER_PORT;
> +	unsigned long flags;
>  
> +	spin_lock_irqsave(&pctrl->lock, flags);
>  	pctrl->data->pwpr_pfc_lock_unlock(pctrl, false);
>  
>  	/* Restore port registers. */
> @@ -2586,6 +2588,7 @@ static void rzg2l_pinctrl_pm_setup_pfc(struct rzg2l_pinctrl *pctrl)
>  	}
>  
>  	pctrl->data->pwpr_pfc_lock_unlock(pctrl, true);
> +	spin_unlock_irqrestore(&pctrl->lock, flags);
>  }
>  
>  static int rzg2l_pinctrl_suspend_noirq(struct device *dev)

