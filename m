Return-Path: <devicetree+bounces-2745-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A276C7AC4D9
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 55C5E281DE3
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F8DA21347;
	Sat, 23 Sep 2023 19:30:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D8A210F1
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 19:30:56 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01216194
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:30:54 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-3231d67aff2so472274f8f.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695497453; x=1696102253; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PDC+icNPj4QOh5Hp5HGmie249sioH8oPgNZmMB9E6PU=;
        b=lGCXb+TIro06gsRwlghLYm8jFdjzvyTwCfnaZGW0//SyebunVYNFgXm3oM0q+jCF1X
         gnV8p9LgX8BixYc2W3fWDFHLlFRc36vHWltH2WnTSWdzUJiWI+RhCP6Vct/AKfH75g7R
         hu2YfGOPPTb6d0rzVaVZBwaodFRjIlmUTOPQhi8wGBTMReQOU85Dr0zG9LqDDN4QZqIC
         KKSFsSeTWy7J0YyJHxgGZMx/gGPgfajKJyH+cmWLJEB5sP8v3+wsJeMyGRpyrrbmoqdL
         Hp+vUb+MHGzNWpUgFuJ4X6YAAm4cDNBG/exJwSa6kYiCrPxwY2tLGGwHLBMk912MOU5C
         a0Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695497453; x=1696102253;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PDC+icNPj4QOh5Hp5HGmie249sioH8oPgNZmMB9E6PU=;
        b=ahP/y+/fiKGpX9DVM5CBhhUvGrBrqwtCQdq03rSTPRVacYbgkbs0JHmVj0o9MjhD1w
         oBCCLmysvKpYkZPca/xHOk1BGGJXWqRJvSDqzB/RQkTebke2/4Ptv2iykUeSvL/GgcZ7
         mO71AEgwc/6mMwXOPauTM9PgQ6jmplU70lX7llOtSw7aeeQuoS8H3+AVEo1//TeV9UDv
         ncjDPuC4bsLfppzvb6VykPMty4YHh3Oc/NGctFZVxytMpwKNok8nzDSlrozj6a6J5Zlh
         ncj5pd1FP39DpFnhx9phUWFJ8+hYAhcXdvX0VoPzEJuuiQS+GYfsM7AmDkz1bvFtRwW/
         x6sw==
X-Gm-Message-State: AOJu0Yyp6BtdMsvLX/2iQ7IeL1lBTEWKo1swp1GaHbqFpAxN+24A9n2v
	l/nzmAs8QUFilSy1MvzTWxXrxQ==
X-Google-Smtp-Source: AGHT+IGCKtF1VCWAuzII+IIx0qedTXpnXCpTzLb/HZmUteXIrzK04NWVfXR4OdKTm2UgTYvJQA0VVw==
X-Received: by 2002:adf:a456:0:b0:323:1d6e:bd02 with SMTP id e22-20020adfa456000000b003231d6ebd02mr635214wra.57.1695497453404;
        Sat, 23 Sep 2023 12:30:53 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.100])
        by smtp.gmail.com with ESMTPSA id n14-20020a5d400e000000b00321773bb933sm7661222wrp.77.2023.09.23.12.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 12:30:52 -0700 (PDT)
Message-ID: <3374dc28-fd33-9e22-76aa-c6959901bfea@linaro.org>
Date: Sat, 23 Sep 2023 21:30:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH] dt-bindings: i2c: mxs: Pass ref and
 'unevaluatedProperties: false'
To: Fabio Estevam <festevam@gmail.com>, andi.shyti@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 shawnguo@kernel.org, linux-imx@nxp.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230923192619.601890-1-festevam@gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230923192619.601890-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 23/09/2023 21:26, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Running 'make dtbs_check DT_SCHEMA_FILES=i2c-mxs.yaml' throws
> several schema warnings such as:
>  
> imx28-m28evk.dtb: i2c@80058000: '#address-cells', '#size-cells', 'codec@a', 'eeprom@51', 'rtc@68' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/i2c/i2c-mxs.yaml#
> 
> Fix these warnings by passing a reference to i2c-controller.yaml#
> and using 'unevaluatedProperties: false' just like the yaml bindings
> of other I2C controllers.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


