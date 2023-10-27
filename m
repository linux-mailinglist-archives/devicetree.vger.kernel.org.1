Return-Path: <devicetree+bounces-12503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C897D9B6D
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:30:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D138C2824A5
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:30:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B2C21A582;
	Fri, 27 Oct 2023 14:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HckviKaM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AF11A701
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:29:59 +0000 (UTC)
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFA8310E;
	Fri, 27 Oct 2023 07:29:57 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-d9b9adaf291so1477027276.1;
        Fri, 27 Oct 2023 07:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698416997; x=1699021797; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=DsECeWRXR89HquHY2eBzhSO85aem0sul0hD01HYxWCs=;
        b=HckviKaMtdRcX28oeuBNPjBnX6JfZBtnjIiSyUhL3PKNGWj27kD34JKgZ81jqyIo9x
         fWOoIqJyjAPr4KeH/rDW0D+R8nHrsXSA5x3FkdiWTKEQ8VoQJq5h0bP3XC+T55BotZt9
         aCO42SBCEOsFK7RhI5caSa9GUY8HF3pNSFSSJ2cGL11cr2m69LbI6uq+9tUv8kBknUQP
         ZpBnRoftU1HR/XSecR+FYWFLIn9i9rhyuHel0ht2vw2A2uMy+SUkQgzlXT37KoBUdFKy
         3x4/mpeShlu1vITJLykuu/4BTDBYAUGu8LKF4+UgZNvOUmILoOUXE5jSPaQAiOinYOIm
         lxYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698416997; x=1699021797;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DsECeWRXR89HquHY2eBzhSO85aem0sul0hD01HYxWCs=;
        b=lx/wZhqiX9Nel25kC7fwnQVVKtje4EdYEolJBWORHk0EHTwAiHL6DKE5wmp2ET0PvG
         2/Ou7d61hx+Au4KmGQ2nf5gxwQ8wFzU90IIuODbF3eiQ7lQ7fMWe6GN19Jl5DHMubsnG
         r456Ocr6jSdn04LCnjdSw8m7KUFl0BHeDn0/TE5/25dv2EcVgGLDRfV5ErJ+jmbeJ3hw
         is/igCYG/BMWwyzcGEeq5/L1zFIX66MEbGar5C4Q1AuM2Yurj7YzI9sKPcCC7kpfDktL
         3hCjO5c/sZYVGQtoD7InYKo9EXMjQ4l4pr+mSVSSHB26HYSJJDxPQFv3yturLPE1PXVR
         aORg==
X-Gm-Message-State: AOJu0YyONR/rIs7H+p/2UZ6gsuF/HnE/3Ku9ok+yqqnBv1rnS22H4Rwt
	V8aNNsHsT1LBTpHs9cwxZ70=
X-Google-Smtp-Source: AGHT+IE+e7aahuYfkt8PuZLyOBf8LvAfP9OR+nHTcDMy4WWLm+0UB+YDT6d/Ux5sTeabyzZQ8Mns3w==
X-Received: by 2002:a25:f81e:0:b0:da2:8250:9725 with SMTP id u30-20020a25f81e000000b00da282509725mr557698ybd.12.1698416996952;
        Fri, 27 Oct 2023 07:29:56 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id o189-20020a2573c6000000b00da0c63aa9f1sm697470ybc.20.2023.10.27.07.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 07:29:56 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <84252d01-6fee-26f9-d127-8b344108fc43@roeck-us.net>
Date: Fri, 27 Oct 2023 07:29:54 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH V3 1/3] dt-bindings: watchdog: Add support for Amlogic C3
 and S4 SoCs
Content-Language: en-US
To: Huqiang Qin <huqiang.qin@amlogic.com>, wim@linux-watchdog.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231027104358.342861-1-huqiang.qin@amlogic.com>
 <20231027104358.342861-2-huqiang.qin@amlogic.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20231027104358.342861-2-huqiang.qin@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/27/23 03:43, Huqiang Qin wrote:
> Update dt-binding document for watchdog of Amlogic C3 and S4 SoCs.
> 
> Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
>   .../bindings/watchdog/amlogic,meson-gxbb-wdt.yaml    | 12 +++++++++---
>   1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml b/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
> index 443e2e7ab467..69845ec32e81 100644
> --- a/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/amlogic,meson-gxbb-wdt.yaml
> @@ -15,9 +15,15 @@ allOf:
>   
>   properties:
>     compatible:
> -    enum:
> -      - amlogic,meson-gxbb-wdt
> -      - amlogic,t7-wdt
> +    oneOf:
> +      - enum:
> +          - amlogic,meson-gxbb-wdt
> +          - amlogic,t7-wdt
> +      - items:
> +          - enum:
> +              - amlogic,c3-wdt
> +              - amlogic,s4-wdt
> +          - const: amlogic,t7-wdt
>   
>     reg:
>       maxItems: 1


