Return-Path: <devicetree+bounces-2725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 212C77AC442
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 20:02:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C731B281E06
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:02:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49CAF210F7;
	Sat, 23 Sep 2023 18:02:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CB120B1B
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 18:02:53 +0000 (UTC)
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E3A2136
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:02:52 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9a65f9147ccso483565466b.1
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 11:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695492170; x=1696096970; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fyFVeqB6utZDh9GVjHOfgFse9+GghiI4681cEKbsRig=;
        b=Uendx0O+2XKgVzsabUdLBOB8xFf6hn6CvLk1UhXvjCWB/D5iOzLvWqfXYZBdSWLMTs
         kp0Rr+dOimGy5hZgfe4mE8k1MEhyaFstsXe3XRueKR742RJKeRstVsrvnscLMJfVEXqU
         f4+Yf1dB5CjTB7z8XQuU3mmRRThGtYHhcqdZXxdVguhNrIHiWrHYno8OklvXCFUc61yE
         0NPRTFjaBPI4bNkIX+LNsosrscQ5dK+2rfZz26yDnx1QkWvjdPiKXnoA7ORQMK9pAo5u
         1N1duRQZP5qfs8jgml3k7J4vGrl+Wd0Wz6D4DIEGjmjf5OLQWubDSvv7aDNktcRojbph
         T4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695492170; x=1696096970;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fyFVeqB6utZDh9GVjHOfgFse9+GghiI4681cEKbsRig=;
        b=dRoDTKljsSaFtphZuEb2gUO6oVTyy/PcbhORIHBrTP69VLSW5CYwsXIMNQVPDiMq7X
         oYyTUKmTwvTfEgoJ58AfnhCDpdnJGYe+SKLZaK5QbLVWrJqLnuoifFQgleLy1uMAixcq
         5j0LUu4rP+oTDakrcBW+4Ay/aI+5HlitC5Ch7clpYgnUgXZRuYBzV+tb8c8fOoK5+4eI
         KA6wC+cnYSVf6/VN7930AqdL49BaZb1IdWIEnR+6radqLMoGnK2jOsa5FT22T09+FL2m
         DX2iGStR5a4bwdoRUZc9IM2lxjXRSQ9N8jRltlch9hdOLYuUY37WXA/521smO6dtyCZA
         tXXA==
X-Gm-Message-State: AOJu0YwHyzv2xrAuFM0nXthPdsyW3ZBp3paQtKqbNUjMBWosyGApojQ9
	FgsE7zvNFoTy2cjCXuwDtuuZ2w==
X-Google-Smtp-Source: AGHT+IEzoIT0eyHgVB5pvxp9pVgGOLU17x+cfcW4hEsmequbeIVUUbsvdCtIG8lzr/pdPnUj/8VHlw==
X-Received: by 2002:a17:907:7888:b0:9b2:6c31:c500 with SMTP id ku8-20020a170907788800b009b26c31c500mr1764699ejc.35.1695492170664;
        Sat, 23 Sep 2023 11:02:50 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id e5-20020a170906080500b0099b76c3041csm4131586ejd.7.2023.09.23.11.02.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 11:02:50 -0700 (PDT)
Message-ID: <95f61cb0-f0a9-111c-1541-88d51c3e5748@linaro.org>
Date: Sat, 23 Sep 2023 20:02:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 06/15] mailbox: mediatek: Add cmdq_mbox_stop to disable
 GCE thread
Content-Language: en-US
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Jason-ch Chen <jason-ch.chen@mediatek.com>,
 Johnson Wang <johnson.wang@mediatek.com>,
 Elvis Wang <Elvis.Wang@mediatek.com>, Singo Chang
 <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>,
 Shawn Sung <shawn.sung@mediatek.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20230918192204.32263-1-jason-jh.lin@mediatek.com>
 <20230918192204.32263-7-jason-jh.lin@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230918192204.32263-7-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 21:21, Jason-JH.Lin wrote:
> Add cmdq_mbox_stop to disable GCE thread.
> 
> To support the error handling or the stop flow of the GCE loopping
> thread, lopping thread user can call cmdq_mbox_stop to disable the
> GCE HW thread.
> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c       | 6 ++++++
>  include/linux/mailbox/mtk-cmdq-mailbox.h | 1 +
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> index 4d62b07c1411..8bd39fecbf00 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -469,6 +469,12 @@ static void cmdq_mbox_shutdown(struct mbox_chan *chan)
>  	spin_unlock_irqrestore(&thread->chan->lock, flags);
>  }
>  
> +void cmdq_mbox_stop(struct mbox_chan *chan)
> +{
> +	cmdq_mbox_shutdown(chan);
> +}
> +EXPORT_SYMBOL(cmdq_mbox_stop);

1. EXPORT_SYMBOL_GPL
2. Missing kernel doc (full doc)



Best regards,
Krzysztof


