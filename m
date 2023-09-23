Return-Path: <devicetree+bounces-2716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DA17AC3F6
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:34:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 11BCB28137A
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 17:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85E0820B1E;
	Sat, 23 Sep 2023 17:34:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B88C208BF
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 17:34:13 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18072AF
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 10:34:12 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-32172a50356so3778605f8f.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 10:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695490450; x=1696095250; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h8e4WOeV3uP0Avl4Q9o2tfB8fRCYhZPCMlDY4X+oryg=;
        b=qXuhAV2rOIAwHcKLt/EiVugltt9sNos2IzIFcYeAKX3zpewWJrXsbVE/SdhwpHRKkW
         6XeV8nszUQ7HMQxkJNcgDtVge9iY3/8tnsKXYInX7xWT+l9jibsh1+FJCVoGdUBUGf7J
         JDAanN4S5th2E1KqzI/CrURkOqfpLcECgbpWByv9uRygaRAu0wqra5sEx2PU4TFt1bnP
         CxnvacEbrxNAOQL4SWs0+CXA0nbYFjz1Y6nYIvJv3iRn1OMiLKP2HLGxKRgorLe8KNIP
         YWsAOcrnUd0UtpBs4dXHrmMR24wP4P5iA6Nr6su6t2TmJoHEqD/WmUIxHyy4qIFR3hpS
         d97Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695490450; x=1696095250;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h8e4WOeV3uP0Avl4Q9o2tfB8fRCYhZPCMlDY4X+oryg=;
        b=QGOPUSo4OR/+MFCvZSscVFZxJxmcg2/4ToBl1ZeQ4yL5Hth4pMkyDJyt8XZd8W97Ye
         kgvQ5QWDExKR47sMcLnicOLceH4MzDNArMceqv6hpwdR5lZZnNlmfcmiB67cM68GmFMu
         FcM8g4BY8RuuawdUpwfhdecCcqLEtgvwlcpdUrhNt/wTUI3vnesRvvnjriIeXxvogW2b
         ukHTeXf1KKn2rL5JfxvePGkee37PKB6C2NB1KBxjCFggjDTN6t1lgzevxClsahmspMMs
         5xZynJhC4BctYqufkTK6t4FJhlU7kd6+ADps+w6DqzRyeqwTggmsbhVIKaUK1pjsz+jS
         3jWg==
X-Gm-Message-State: AOJu0YxKFHXEEddv7vLWMkgI8Guu6SYRwtdRQeY/XBLgrUCZwSn7bnBN
	YHTF54QPoCU781boZDGGmDGaGg==
X-Google-Smtp-Source: AGHT+IGywFoLRHTpFCviFneYTV3hIVt1uqS6WEMAUjyo6HuW9R7DnOeXATYbyZiXoF0+vDPukj7PRg==
X-Received: by 2002:a5d:44ca:0:b0:31f:fdd8:7d56 with SMTP id z10-20020a5d44ca000000b0031ffdd87d56mr2347231wrr.12.1695490450364;
        Sat, 23 Sep 2023 10:34:10 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id p13-20020a5d68cd000000b00321673de0d7sm7374280wrw.25.2023.09.23.10.34.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 10:34:09 -0700 (PDT)
Message-ID: <948a37c4-2237-8ec8-270d-8a704c8c4835@linaro.org>
Date: Sat, 23 Sep 2023 19:34:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v6 10/16] dt-bindings: media: mediatek: mdp3: add
 component TDSHP for MT8195
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
 <20230922072116.11009-11-moudy.ho@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230922072116.11009-11-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 22/09/2023 09:21, Moudy Ho wrote:
> Add the fundamental hardware configuration of component TDSHP,
> which is controlled by MDP3 on MT8195.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>  .../bindings/media/mediatek,mdp3-tdshp.yaml   | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-tdshp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-tdshp.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-tdshp.yaml
> new file mode 100644
> index 000000000000..0ac904cbc2c0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-tdshp.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/mediatek,mdp3-tdshp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Media Data Path 3 TDSHP
> +
> +maintainers:
> +  - Matthias Brugger <matthias.bgg@gmail.com>
> +  - Moudy Ho <moudy.ho@mediatek.com>
> +
> +description:
> +  One of Media Data Path 3 (MDP3) components used to improve image
> +  sharpness and contrast.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - mediatek,mt8195-mdp3-tdshp
> +
> +  reg:
> +    maxItems: 1
> +
> +  mediatek,gce-client-reg:
> +    description:
> +      The register of display function block to be set by gce. There are 4 arguments,
> +      such as gce node, subsys id, offset and register size. The subsys id that is
> +      mapping to the register of display function blocks is defined in the gce header
> +      include/dt-bindings/gce/<chip>-gce.h of each chips.
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      items:
> +        - description: phandle of GCE
> +        - description: GCE subsys id
> +        - description: register offset
> +        - description: register size
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1

NAK. So you ignored all the review. Brilliant.

I am getting fed up with Mediatek's approach. It's not the first time.

Best regards,
Krzysztof


