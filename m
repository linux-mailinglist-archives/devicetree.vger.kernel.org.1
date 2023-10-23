Return-Path: <devicetree+bounces-10718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 226927D292C
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 05:47:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFB31281310
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 03:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 477931867;
	Mon, 23 Oct 2023 03:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MjGuGCsi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4D61841
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 03:47:45 +0000 (UTC)
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E7C2ED
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 20:47:44 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5a8ada42c2aso28281537b3.3
        for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 20:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698032863; x=1698637663; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=pGKRjaB9EsbSsb6nLvegz+fVHpc9SVFb6utAuB+P5c4=;
        b=MjGuGCsimGMHD54p2hTREWiuWpZZY93pkim92pn+iQhfK7fttuPwf1mBefMuS84jmI
         kdOmINX8JQbbFyn0ty963t51w5nI3YIJJ19Zr8q636uzLIhASoAQ9Il2q4qAIYQ07OQV
         XtWY1n28/oaUos4o83RP4oCfP7WNQus01+unGORa7cMhBGAPgms7XsnVD5Cx/gi4ijxF
         NlpoKXpQ93eQjNte5Q7/IFIHynD3bB5rUcL+w5y1yfL+Mr92tDpWneq9jfImeUQQS7d/
         MbQ8aQw/9b/PdmL6Ia/NI49Qyd5On8VPvIdqbeTYeJCFVp8/G09utD5TKJGrVrShLC8B
         4toQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698032863; x=1698637663;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pGKRjaB9EsbSsb6nLvegz+fVHpc9SVFb6utAuB+P5c4=;
        b=nDB+yj4935BwKaj7yi7cCWbZWpNvKYrNvalv/ndG20JPWoMJywf+Jjg6dbxLnIeMFa
         8Kb1d6Lc38KgFN4o/0FNmG8V6/YZzPnmVwz05i4GM/PqvEYog3hUM7IKu2LiBm/PYg1H
         IgIa0X6B0p2emUXBpePaQeUFizNynHFGlluPxf+5RenPfilG6wVVkCcBwFN/3sWsepEA
         UHR3NXSfF8YWQaA7tGr4MPpzrHW2sw2qRNAMGuYXC9j6Gr4ztgGnFwoEp9HhSFn+ETD6
         /WvTMiLHxzUmye9rp6FKRAwmMY3tCjtTo/jdvoXliuXafkfXl80lJtbeBLG20Y9hB0bW
         tKbw==
X-Gm-Message-State: AOJu0YyO5ZMbQ0Y9cX91OI1t0XdC/OsrahIx95BxvWrquGMMcvZTporS
	uZvVxkTK8egy5WOmHCmjL1zUb0us8AE=
X-Google-Smtp-Source: AGHT+IFglRd6u9FA9sGMpNYosFj7IZ42ogr6SPEx5VwJgcNAVp+zxJ/gsDwJyu8u6EeXPaDDiXPxqQ==
X-Received: by 2002:a0d:ebd7:0:b0:59c:aea:d877 with SMTP id u206-20020a0debd7000000b0059c0aead877mr8561952ywe.40.1698032863328;
        Sun, 22 Oct 2023 20:47:43 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id w65-20020a817b44000000b005869fd2b5bcsm2803879ywc.127.2023.10.22.20.47.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Oct 2023 20:47:42 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Message-ID: <3453d376-5c1a-4e6d-873b-59d75b550c08@roeck-us.net>
Date: Sun, 22 Oct 2023 20:47:40 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2] dt-bindings: watchdog: fsl,scu-wdt: Document imx8dl
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>, robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20231004182043.2309790-1-festevam@gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <20231004182043.2309790-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/4/23 11:20, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> imx8dxl also contains the SCU watchdog block.
> 
> Add an entry for 'fsl,imx8dxl-sc-wdt'.
> 
> Cc: Wim Van Sebroeck <wim@linux-watchdog.org>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> Changes since v1:
> - Sent it as a standalone patch to the DT folks.
> - Collected Conor's ack.
> 
>   Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml
> index 47701248cd8d..8b7aa922249b 100644
> --- a/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/fsl,scu-wdt.yaml
> @@ -18,7 +18,9 @@ allOf:
>   properties:
>     compatible:
>       items:
> -      - const: fsl,imx8qxp-sc-wdt
> +      - enum:
> +          - fsl,imx8dxl-sc-wdt
> +          - fsl,imx8qxp-sc-wdt
>         - const: fsl,imx-sc-wdt
>   
>   required:


