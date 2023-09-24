Return-Path: <devicetree+bounces-2769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD1E7AC7D2
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 13:49:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id E0A7E1F2310C
	for <lists+devicetree@lfdr.de>; Sun, 24 Sep 2023 11:49:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D72D91398;
	Sun, 24 Sep 2023 11:49:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FA21375
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 11:49:30 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BF3F103
	for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 04:49:29 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9ad8a822508so572266366b.0
        for <devicetree@vger.kernel.org>; Sun, 24 Sep 2023 04:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695556167; x=1696160967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZKXfDq8RFlFcunVG3b5trMiuX2cCUltogo9A0LQGHcA=;
        b=nTRsnw6EL0jyn+nqscuJdE2iZEo1YgzK5Ytdal9FS4U8kKn/HCFWxhX7Wj/1hRNeK3
         xnN6wT6DXCkl38Gv1jy9dSWBSfHfeuTkBCbBUEKwSpRfn2f/3dJ+zecNDxaSmT8usrJD
         iUEKGHsQurAEtQ7VEBScOK7nYB4OfEpU88zrD5l1upmzGaNB5c473YVL5f8PlVHqbdxf
         eOgvZb1rrse1p6RnNP/aAgQVu5RP6ra5PDfj+b3mpdtDd9HavLavMl64DXGa1enhDzja
         MKxQI6eewWEQcP/TmbZ8OnE+ljj0Z7ks/1tAiSV0Ow/+BtWqV4IxYrtWoluHU5c8vvJF
         WQJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695556167; x=1696160967;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZKXfDq8RFlFcunVG3b5trMiuX2cCUltogo9A0LQGHcA=;
        b=fgbhNVjuWp5rlN8mr0Hoh9eP3Wg6vYvDtAfcBKB2Z0l5ifyiedZdSJtpPwRt2y13cS
         XeCi/FmAF2kbnnQGE3n2xu+ZE9P1+bMS80BkJVuuHYQWNarxi9HQARlUIu0oytGDURoy
         omq6sI5EoINuGzsR+xqt54lnJsIMuyNyPfubUCVb4giUWP67v1nuBiYCZKdQRh3kLRMk
         fxaofc88PAus6ysBUQqBvx2qmrhWTykIAlSjaLO/DHrtr/bfktkwCx29W607lKyhBGQJ
         lEMp8EKYTgRfqHzSNfr/1UDtPAbW9F1jeY20Ol9cTxlWAF0yHFrxf9codWzDV5D9+lZu
         Fz+w==
X-Gm-Message-State: AOJu0Yz67yIzHXfh73/v+7STpYswfobd6rv/IrpSHRWD5rdITDFFT76s
	dQgZ/rDbJ4iXXmdek8oIMkKyYg==
X-Google-Smtp-Source: AGHT+IGRDfzFX7/VhW6vnjWtBmP/4Q5fGl/SoCKR8YZ7vonDBL5MEoAeEy+D528vIctCDF4NIT56GQ==
X-Received: by 2002:a17:906:101a:b0:9ad:f143:e554 with SMTP id 26-20020a170906101a00b009adf143e554mr3628124ejm.30.1695556167561;
        Sun, 24 Sep 2023 04:49:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id a19-20020a170906275300b0099290e2c163sm4899657ejd.204.2023.09.24.04.49.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Sep 2023 04:49:26 -0700 (PDT)
Message-ID: <c31577ee-9d81-212b-42a6-e72a648f9276@linaro.org>
Date: Sun, 24 Sep 2023 13:49:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [RFC PATCH v2 net-next 13/15] dt-bindings: lynx-pcs: add
 properties for backplane mode
Content-Language: en-US
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Ioana Ciornei
 <ioana.ciornei@nxp.com>, Camelia Groza <camelia.groza@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor@kernel.org>, Sean Anderson <sean.anderson@seco.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
References: <20230923134904.3627402-1-vladimir.oltean@nxp.com>
 <20230923134904.3627402-14-vladimir.oltean@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230923134904.3627402-14-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23/09/2023 15:49, Vladimir Oltean wrote:
> When the Lynx PCS is deployed on a copper backplane link, it must be
> prepared to handle clause 73 autoneg and clause 72 link training, which
> it can do using a dedicated AN/LT block. The latter doesn't need to be
> described in the device tree, because it is discoverable from the SerDes
> lanes.
> 
> The media type that is deployed on the link is not discoverable though,
> so the introduction of a fsl,backplane-mode boolean property appears
> necessary to determine whether the AN/LT block should be employed, or
> left bypassed.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> v1->v2: patch is new
> 
>  .../devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml b/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml
> index fbedf696c555..40fbcd80ee2a 100644
> --- a/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml
> +++ b/Documentation/devicetree/bindings/net/pcs/fsl,lynx-pcs.yaml
> @@ -16,11 +16,24 @@ description: |
>  
>  properties:
>    compatible:
> -    const: fsl,lynx-pcs
> +    enum:
> +      - fsl,lx2160a-lynx-pcs
> +      - fsl,lynx-pcs
>  
>    reg:
>      maxItems: 1
>  
> +  phys:
> +    maxItems: 4
> +    description:
> +      phandle for the SerDes lanes that act as PMA/PMD layer when the PCS is
> +      part of a copper backplane PHY.
> +
> +  fsl,backplane-mode:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      Indicates that the PCS is deployed over a copper backplane link.
> +

Please extend also existing example. If these do not apply to lynx-pcs,
then they should be disallowed in allOf:if:then.

Best regards,
Krzysztof


