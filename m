Return-Path: <devicetree+bounces-1748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E9C7A8046
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:35:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E769281CFB
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8309A156E5;
	Wed, 20 Sep 2023 12:35:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F37A11CB6
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 12:35:15 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B6A899
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 05:35:13 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99bf3f59905so911293466b.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 05:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695213312; x=1695818112; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WLTqYIzg+lzYdWxVhMCzWlzNaCtUEOxWm6ZlofL9b/k=;
        b=I+cPSUGb1xePAT25tlhq0vjw56sxYd1o9HyIWJWro1rQouVzNe8MYOCdFiHjGsPvic
         vRJbY2OtepC7s520ALHDcgKAPwCyUxiEiZvdqKBZ2PnQ/WauPVYbxItwFaBgU1bClJN0
         tnrunym4zhCXJ0+Sm7VCVN+b99CL298pVYCtR/xDJ22EUGQ6MwulO5xqzR6FjbaRxd2s
         YI4AP7ZbuYCpD5mlV8wnzeN61f71XkR9BQ2t2hRk5OPXAeqHetn9rDTLDzkRnaJtHw08
         vwFSNRzMyGgRh1HcDzoqrUawSq/2xN6uOBdi+iw6sRRiC3HEt3/E7aXU5C397daL6zCr
         Y9RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695213312; x=1695818112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WLTqYIzg+lzYdWxVhMCzWlzNaCtUEOxWm6ZlofL9b/k=;
        b=GwmIcHvQ/TO1rB/yS679VKiaexBHfi6QxFr5AcM3ZeJ11SMhyMI69PV93GPIiBCs5B
         uKFfeHzqO8v+Ph1heigk4se8gap/2scVCxjOMfQ/0Fz1Pp10kRSQ7xRYJI0XJJI8BsmN
         7ywD5gM5l7yXvIlBEhZoNXgop4CO25fgodweToN5Dxjo87aPYj/2sLBonBgPSM/sPUgu
         XrRKxBM/N/uenPG5p9o83NtaOXN7WSItuiaywQXaKjGSC99v2ugC7NYYmVP9oxk3IIDE
         V9fJZ3youlniau3sG9FeCPq22bQYnqun+h8ih0WxCRqR9db06Z0WsE06sxVVq3Sq9Vjb
         Ediw==
X-Gm-Message-State: AOJu0YzVmt/Wem3B7wDl+aTrw2mj0ep5CKAilV7VR+1wFGu7eG517TQE
	lET4ULhwnQR/3bxvW7lVw6LloA==
X-Google-Smtp-Source: AGHT+IGwvU86FMvs+bljEO41B9RgRTmfnEPEA0QwaQ7OV1Kiu3h4DYuDlsLWhXSICh5oRzDAYMOvHg==
X-Received: by 2002:a17:907:2c62:b0:9ae:3e2d:e2e0 with SMTP id ib2-20020a1709072c6200b009ae3e2de2e0mr2040658ejc.71.1695213311891;
        Wed, 20 Sep 2023 05:35:11 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id sb4-20020a170906edc400b00992b8d56f3asm9271582ejb.105.2023.09.20.05.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 05:35:11 -0700 (PDT)
Message-ID: <97a04999-91d5-2f4b-3fc1-d9fecb89082c@linaro.org>
Date: Wed, 20 Sep 2023 14:35:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 4/5] dt-bindings: serial: document esp32s3-acm
Content-Language: en-US
To: Max Filippov <jcmvbkbc@gmail.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?Q?Ilpo_J=c3=a4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20230920022644.2712651-1-jcmvbkbc@gmail.com>
 <20230920022644.2712651-5-jcmvbkbc@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230920022644.2712651-5-jcmvbkbc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 04:26, Max Filippov wrote:
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +

Same comment here - missing $ref to serial.yaml. Sorry for no bringing
it up earlier.

Best regards,
Krzysztof


