Return-Path: <devicetree+bounces-2718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A36307AC40B
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:38:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 079F4281EFA
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 17:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D852D20B34;
	Sat, 23 Sep 2023 17:38:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A929420B2F
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 17:38:21 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63438136
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 10:38:19 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-40535597f01so38410625e9.3
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 10:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695490698; x=1696095498; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V10gzi2RlVQOmrv/zaocoqbYLQ49RKI1zclTkXbhh6E=;
        b=qHRpuCk+zZZenbhV9rlmHo+SQ5viQqIHa3HNxyyJfHOTssYG3D0U/1ds/naEiuCatl
         ExvFiun7pThXb49Z/R7hiKpVDxrxPr8XbwzrBEXgE52deOwYXIhOZ6NLzd6A6gyD3kw1
         VND3hgiV4+LXakH6+p2KnrRiH+lSU50o3RKyju6srNWqMugQD8yYi6fiGBfGg4Af+98H
         +y1jQdaKPZDxbNxsWbsxNp/PP+zuzjb9+xc9NGT2nlME38JlBbX0c6Hjt00Yos0qWJsf
         t3JRVzEzdf2ROYsKzLPM8jjyctjD7FQStZBBiKvnjPM+Nkv8UM/ynNPIkkmuoKTwvjYg
         JFKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695490698; x=1696095498;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V10gzi2RlVQOmrv/zaocoqbYLQ49RKI1zclTkXbhh6E=;
        b=EpdVcUea5JMfGsPlWb+mztM2SSIK21jeWkBDWkGy38w23fGSLw78D3NpYxo50ZczPM
         N32/XffAkHmpoCpJNP9+EDpbDK0xVUFk0xK2KFEKqwCqIMem0pkW0MICuXR6CF9ZFHQn
         Do9YLBaM06s/K0gsznne7hPgfxKZAMG+zrSn85wXKskwUCDCfTyHdX69SYCfUy87ZwCI
         TcDqx6rFR8hHzeCXJ92goQNDL8xbLJVp3f0eT7EDaheled9DYcglUm4bjf2XHrnGBowt
         Q312OAIXY7ENLI27S7e8ocBBp6/Fjc9weFF9LbgHexGVjknLvMx39jKGjeoUcYMoYQ2A
         vjRQ==
X-Gm-Message-State: AOJu0Yzx6ZSZZ7psLr1BC0+j2EpPRSSpEy+cwtR16RDvQ8JNMWjmOo8R
	k0huknlfmc7ErLWvfOiLwEm9gg==
X-Google-Smtp-Source: AGHT+IFCjRZIcLO+0g8diFjimp5gtGgP355llzi7E+8lc8YGycCcAJHapljUSf7AamsNzyP9lncAsA==
X-Received: by 2002:a7b:c38e:0:b0:405:37bb:d942 with SMTP id s14-20020a7bc38e000000b0040537bbd942mr1967658wmj.4.1695490697643;
        Sat, 23 Sep 2023 10:38:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id 11-20020a05600c248b00b003fee567235bsm10604723wms.1.2023.09.23.10.38.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 10:38:17 -0700 (PDT)
Message-ID: <e4311804-bb06-ec04-8479-dfa0466e4b35@linaro.org>
Date: Sat, 23 Sep 2023 19:38:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/2] media: dt-bindings: mediatek: Add phandle to
 mediatek,scp on MDP3 RDMA
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 mchehab@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com, moudy.ho@mediatek.com,
 hverkuil-cisco@xs4all.nl, sakari.ailus@linux.intel.com,
 u.kleine-koenig@pengutronix.de, linqiheng@huawei.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, kernel@collabora.com, wenst@chromium.org
References: <20230919095938.70679-1-angelogioacchino.delregno@collabora.com>
 <20230919095938.70679-2-angelogioacchino.delregno@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230919095938.70679-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 19/09/2023 11:59, AngeloGioacchino Del Regno wrote:
> The MDP3 RDMA needs to communicate with the SCP remote processor: allow
> specifying a phandle to a SCP core.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/media/mediatek,mdp3-rdma.yaml       | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> index d639a1461143..0e5ce2e77e99 100644
> --- a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> @@ -46,6 +46,11 @@ properties:
>        include/dt-bindings/gce/<chip>-gce.h of each chips.
>      $ref: /schemas/types.yaml#/definitions/uint32-array
>  
> +  mediatek,scp:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the System Control Processor (SCP) node

Why? Why do you need it? For what do you add here phandle? Your
description should explain the purpose.

Best regards,
Krzysztof


