Return-Path: <devicetree+bounces-75890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC57F909072
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 18:36:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED99E1C2490B
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 16:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5CA715FD04;
	Fri, 14 Jun 2024 16:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dYBtm24e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1320249638
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 16:34:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718382857; cv=none; b=MvJ1JzhIt2K1HpAOtXxpbVfD8/yraaMVHS+u6YcTqfnnsPMeiwbadDz97t+ySzXT6kb/AjK41WYfA9Gy6c3HLZSQsdht7bV0fen29sWLmA2FET/pPvC72dfzyyf3Lq0XZ1y5DrMhxWsqc209inKKzXxN38F2tKXyTfGw9Ii2EpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718382857; c=relaxed/simple;
	bh=0nEb3gSfbpNCQF05a2LHM3iK60Zt11N7GPw8rCKzca0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VZn1AqoB5YKVdJiSNaqh0XpIZqBagU8wCGZszGBp/SWexcTqxm3B69BF3F+U+MlSB0R3ZPRFsVtEojRsToB2g1aR25WWlWxBSMr4V58Yl79KEyQeNzpq+Uu82IyBYVBIKD7xg3EfTfUMXWGEM7wEpklpnN7KIPWnqVdT2G7RLeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dYBtm24e; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2ebdfe26217so21432481fa.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 09:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718382854; x=1718987654; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GsvUggwl2iaq+7ID95/kPZJoKFES9T3PhHRwe3ICtG8=;
        b=dYBtm24egFiBj0gwws5FWLCaNWd7UtbuWBrunGND0YKQZXWDOOTrym7iqQyckKwjJr
         Kse4W5zUV9b7VweGY/BQA+vIxNzaeKVnE6V9YHDDYf+vgRS/1t4YakziDHwqNmJF2zwY
         zDBcHFCTkJksu1+No9el17BfQFkGeEW07QFHR6yPew+Ema2ucWCVocpfY37NZ/wDhx09
         U9BA+82G4HAEADtVQEbysfgOse3DqAgPJXzZvXx9iQ1kChEuBFJLLvBauSi+mm0T9zWT
         I4jO8iZeFH71Lc9326yDnRK5QwKudpb9X7xTLlwjOtCEkFUeRIDA/ntm8fDmkdpdBTrl
         2Reg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718382854; x=1718987654;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GsvUggwl2iaq+7ID95/kPZJoKFES9T3PhHRwe3ICtG8=;
        b=kdRB+P51frgKIwc3oMhaDgT1K1b14Bgje95VSqkqUfdvbalc8YvHLkpVwKrxokaxul
         rTBepaz3gFScUXD3/5QjgrC3h37PT1fEtcuOc0CeU3mDyw6HRiy0xaWu1l9RuRo3/V+H
         TXh4nQDRLejhm7M5RxviTvziwfyrsYbi2J2Gk6pUzlYU7HUiAENsthhrPNflRlWdErUE
         rCtQ1viKAX749q6kZ113zKKAef3mG0PWzTzd3B+qu51TgTUuX68kuRwagzvuFYxhNREk
         l1mK8Hvn6JeXjH5GKccGAI8dXUnE2A75K1oJYWGzgrLygqhOV0rr13px32bp4KGXmBfN
         JW/A==
X-Forwarded-Encrypted: i=1; AJvYcCUgoWoYNaIXGTE6eRs1TSHLUUUDxRGyNHu2GACAkM9Spx6j9bfpCOrpeBzbK1LoHh2xl/YJ1mrB+WxLqADEdSvVZ/1PSgjJItzjKg==
X-Gm-Message-State: AOJu0YxwDjlEufj5w6vE0K7ySFepA9qv8zCAe1DE7AU167v2t/v50kZ3
	DctIdfznM8c4b7dnIVb0wnSoUietjFrWcXEk4XuLaRIY5hpIhBIlZ2yczxZqbE8=
X-Google-Smtp-Source: AGHT+IGWO/+8GdkVi0zVWi4kRTQ+VAxP+yfG1FPOfEgKx9zHhcN/3noH2wJkYSc+zOPvMmPFAKBvSA==
X-Received: by 2002:a2e:2281:0:b0:2ec:ff6:3bcc with SMTP id 38308e7fff4ca-2ec0ff64128mr16860701fa.5.1718382854165;
        Fri, 14 Jun 2024 09:34:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c061d3sm5763841fa.50.2024.06.14.09.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 09:34:13 -0700 (PDT)
Date: Fri, 14 Jun 2024 19:34:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.co, dianders@google.com, hsinyi@google.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: display: panel: Add compatible for
 kingdisplay-kd101ne3
Message-ID: <plucbf66gjhmt7bmtalqiopunqxnfjxljbt5flvjy3ssntx2vr@ou2pnejbvpg2>
References: <20240614145510.22965-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240614145510.22965-3-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240614145510.22965-3-lvzhaoxiong@huaqin.corp-partner.google.com>

On Fri, Jun 14, 2024 at 10:55:08PM GMT, Zhaoxiong Lv wrote:
> The kingdisplay-kd101ne3 is a 10.1" WXGA TFT-LCD panel with
> jadard-jd9365da controller. Hence, we add a new compatible
> with panel specific config.
> 
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
> Chage since V3:
> 
> - 1. Abandon the V2 patch and add kingdisplay kd101ne3-40ti binding to 
> -    jadard,jd9365da-h3.yaml again.
> 
> V2:https://lore.kernel.org/all/20240601084528.22502-2-lvzhaoxiong@huaqin.corp-partner.google.com/
> 
> Chage since V2:
> 
> -  Drop some properties that have already been defined in panel-common.
> -  The header file 'dt-bindings/gpio/gpio.h' is not used, delete it
> 
> V1: https://lore.kernel.org/all/20240418081548.12160-2-lvzhaoxiong@huaqin.corp-partner.google.com/
> 
> ---
>  .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> index 41eb7fbf7715..6138d853a15b 100644
> --- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
> @@ -19,6 +19,7 @@ properties:
>            - chongzhou,cz101b4001
>            - radxa,display-10hd-ad001
>            - radxa,display-8hd-ad002
> +          - kingdisplay,kd101ne3-40ti

I think the list was sorted. Please keep it this way.

>        - const: jadard,jd9365da-h3
>  
>    reg: true
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

