Return-Path: <devicetree+bounces-8754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3037C9ECC
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 07:32:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83894B20BFA
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 05:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28C5B79E1;
	Mon, 16 Oct 2023 05:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yug0XPa2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AB41FA9
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 05:32:00 +0000 (UTC)
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E71FC10FD
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 22:31:45 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c501bd6ff1so41522461fa.3
        for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 22:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697434304; x=1698039104; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5LzrbzCEzpt14vbBoE9s87dnrFaWt8dpWizanL2QoQg=;
        b=Yug0XPa2kDjj4g1OmvpwZQK1Iof5kDe/0Bgs3dlSRnG9x8diuxEG42PTx/EdxFaQxZ
         mXWWvnphrQ4C9jqHWeHhKQouMO2EteFYu6UrinfhW2bzIH75ftXRHGMFcNrBBkw2W/aj
         5a9bbH0E0sr1NzKSCCd7RODA+ODR7jO7JVTWf1JGBSNQTwW+2Tr0YKx+KkUx9zDomgag
         TBE0IbgKkgnmKoJc59z9O7Y7Ci42kll/MHoOHTmrkZqPVvyu7GHuzuygOPK9aorX+8lQ
         76ndNQkgrY3JY7oznPZlogoQcJE+IXEudD7SDeb40HkRI5NuCLSwOMyoDCH2dxfjujqH
         m37A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697434304; x=1698039104;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5LzrbzCEzpt14vbBoE9s87dnrFaWt8dpWizanL2QoQg=;
        b=guREynez3AnHNgjJwfxQi97uYa8fQgEJY0LnfEhr0K3fqMmcQjOgFycfSSwmGU7t92
         p0bHSHuDu6AbnblfhLQXy0JdE3OeoSNS0nXGuWrjDer//qRDCNqufl6d3TNaUG0WmmdU
         DT5T77b6aJfDH2vLgxT26Lk1td87DFr4ieg037RnW6e1uswEMSFf/w0qCA+sX1NXRD8B
         UbOu5B14D32XxfEM8xtgHmQVvVBIZRqrdCsu+Yjaky9pyZ/JWyZgs0wEKroL9/A/hHa8
         iXvQYQxy97puFbvyxR59mdvoqjC30ons3gwW0y9uT8hsdS4Y1F6C2VJpn7IGYwBg6bRB
         Dfqg==
X-Gm-Message-State: AOJu0Yz0ewsw2xiKMN7066qmHbzHiouff+iHPvxGZid1myO+hRwpLttJ
	6K2P2j+Ac4YND2Kjhh9jZMYmuQ==
X-Google-Smtp-Source: AGHT+IGSkvlBKCosd0olm17I07FJgdH9chu6XyfR6FxGz/GT6Lfocs5u93ooQqc0i2OW9b9ZKsgzUA==
X-Received: by 2002:a05:651c:54c:b0:2c5:569:5aaf with SMTP id q12-20020a05651c054c00b002c505695aafmr7322426ljp.51.1697434304014;
        Sun, 15 Oct 2023 22:31:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.154])
        by smtp.gmail.com with ESMTPSA id w12-20020a05600c474c00b003fee6e170f9sm6128233wmo.45.2023.10.15.22.31.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Oct 2023 22:31:43 -0700 (PDT)
Message-ID: <42709208-6f3b-4ae0-a7bc-f23be6370171@linaro.org>
Date: Mon, 16 Oct 2023 07:31:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: input: syna,rmi4: document
 syna,pdt-fallback-desc
Content-Language: en-US
To: Caleb Connolly <caleb.connolly@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: methanal <baclofen@tuta.io>, linux-input@vger.kernel.org,
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht, "Jason A. Donenfeld"
 <Jason@zx2c4.com>, Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20230929-caleb-rmi4-quirks-v2-0-b227ac498d88@linaro.org>
 <20230929-caleb-rmi4-quirks-v2-1-b227ac498d88@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20230929-caleb-rmi4-quirks-v2-1-b227ac498d88@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/10/2023 23:11, Caleb Connolly wrote:
> This new property allows devices to specify some register values which
> are missing on units with third party replacement displays. These
> displays use unofficial touch ICs which only implement a subset of the
> RMI4 specification.
> 
> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
> ---
> To: "Jason A. Donenfeld" <Jason@zx2c4.com>
> To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> To: Rob Herring <robh+dt@kernel.org>
> To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> To: Conor Dooley <conor+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/input/syna,rmi4.yaml | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/syna,rmi4.yaml b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> index 4d4e1a8e36be..1f4a2179e4d3 100644
> --- a/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> +++ b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
> @@ -49,6 +49,21 @@ properties:
>      description:
>        Delay to wait after powering on the device.
>  
> +  syna,pdt-fallback-desc:
> +    $ref: /schemas/types.yaml#/definitions/uint8-matrix
> +    description:
> +      An array of pairs of function number and version. These are used

You nicely explained what is expected to be here, but what is the
purpose of adding this property? Please add it to the description.

> +      on some devices with replacement displays that use unofficial touch
> +      controllers. These controllers do report the properties of their Page
> +      Descriptor Table (PDT) entries, but leave the function_number and
> +      function_version registers blank. These values should match exactly
> +      the 5th and 4th bytes of each PDT entry from the original display's
> +      touch controller.
> +    items:
> +      items:
> +        - description: The 5th byte of the PDT entry
> +        - description: The 4th byte of the PDT entry

Missing constraints on outer level:
    maxItems: 1



Best regards,
Krzysztof


