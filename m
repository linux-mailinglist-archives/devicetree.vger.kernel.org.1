Return-Path: <devicetree+bounces-2715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 361AD7AC3C8
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 18:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BE0D3281E0B
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 16:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450D71F60D;
	Sat, 23 Sep 2023 16:44:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECF301D547
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 16:44:05 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3697292
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:44:04 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-31fe2c8db0dso3398499f8f.3
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 09:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695487442; x=1696092242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rwXDdCQptEP/nw6d5R5qSVoajNpgD48V9SGyZsJIHbo=;
        b=VgAtCuhG9WB82v3Ua+ACr0m2DmqeDJ9kvZXXqQ5yV+NiZn6vuh2jLZmMERfJqtoeMh
         4BKqC9PsNaz7mmh82rnZagu4AkOsxXFMvT4sD7HHjReeVIDZgZ2eeFZlVVkxA89FbLVv
         HIy55OYhYpyKY7UMOS3CKu63piMW/U7KPDVxXQRglbdNgbtADaA8PMuyxJ5nDlIgk362
         TTZipco/PhPqcdew8f9PgIDAjZqn4sZkDrBpXd82aP3CX29S0SV+tjmv5bjLQazDH6Nn
         Ocu90pWGVGQn4rzD1h8DOaLXrOIkPOvgzy9Hx/kIiXjSxVJCczajW80SjwkNpxPvmeFC
         YLTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695487442; x=1696092242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rwXDdCQptEP/nw6d5R5qSVoajNpgD48V9SGyZsJIHbo=;
        b=m9Oa/0hLvvQf2xaLK0k7bjvww0T+xDJwuCuVbTMau6vnzRrGvkoaJa65aruFdvyTzI
         bepwy3cBjVgwkWqmCmcvemw37zXr9eZIvqK3qq/l5ArAbSnGJuRjxXDIRroH2jBGORy7
         Mxcc1xUn2ngBuqTAVwIyfzK0eizLzYWJsxcROGb1ngcMNVKLl7A6OEqfeBk8u10RJQ1X
         EuIn5m5nNV0ZPc7HykosjUXm+g3WxGGODBHTETbIxU95goOitwnLVzTit6QfSOfeiFo7
         CEyw9+EN99mIKos44QdQBUKLptkKoi4zw2u5JVShFOngRItSoEL0jK4zpjzte3qv+qsS
         /k4g==
X-Gm-Message-State: AOJu0YwKsmpJMCFiGHolNeaAlrL8QhIgvncyyZnNKf29jMdrIWGVo0Yx
	0G6YuMRTuoxM1ObhhB4F9ZqsFw==
X-Google-Smtp-Source: AGHT+IGUp9vWURoqWCtTYN6CKaYvUBZmRKeL0YoxcxOlYDVcQJOgyOxbi3Pq3R8mE4CSABKxCOgFMg==
X-Received: by 2002:adf:fcc5:0:b0:320:b2a:4ea6 with SMTP id f5-20020adffcc5000000b003200b2a4ea6mr2618848wrs.9.1695487442674;
        Sat, 23 Sep 2023 09:44:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id s7-20020adfea87000000b0030ada01ca78sm7299990wrm.10.2023.09.23.09.44.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 09:44:02 -0700 (PDT)
Message-ID: <4e21d965-b7b6-8b2a-5e78-37b9da69b2f1@linaro.org>
Date: Sat, 23 Sep 2023 18:43:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 03/16] dt-bindings: media: mediatek: mdp3: include
 common properties
Content-Language: en-US
To: Moudy Ho <moudy.ho@mediatek.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230922072116.11009-1-moudy.ho@mediatek.com>
 <20230922072116.11009-4-moudy.ho@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230922072116.11009-4-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 22/09/2023 09:21, Moudy Ho wrote:
> To minimize duplication and standardize the document style,
> include the common properties for MT8183 RDMA.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>  .../bindings/media/mediatek,mdp3-rdma.yaml    | 43 ++-----------------
>  1 file changed, 4 insertions(+), 39 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> index 3e128733ef53..0539badc9821 100644
> --- a/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-rdma.yaml
> @@ -4,7 +4,7 @@
>  $id: http://devicetree.org/schemas/media/mediatek,mdp3-rdma.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: MediaTek Read Direct Memory Access
> +title: MediaTek MT8183 Read Direct Memory Access

How is this related to patch? Why rename is separate? This is poor way
to split your work.

Best regards,
Krzysztof


