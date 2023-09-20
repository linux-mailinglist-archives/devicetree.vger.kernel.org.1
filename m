Return-Path: <devicetree+bounces-1749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 658637A806F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:37:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2138A280F89
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD479156F7;
	Wed, 20 Sep 2023 12:37:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB19156E5
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 12:37:11 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B16BC92
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 05:37:09 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9adb9fa7200so194971866b.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 05:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695213428; x=1695818228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UexnMi5oMmhAE5dFwT3NNBL/IAHUolyTmmXUsGhprA0=;
        b=S4r4KVMMzuMOZC6Wwll86SUh3HNVPT/y/itGSfYzF7Y4ofb4zlZ/2XvewsvI2vBDuu
         HoW+AsF96jsWLL70HyKQGFCnxX9K2Jm13KdUqU4A+pED6PoHomHK7yOEvP8ZjJN4Ehr7
         JCku7auOn9c2dB68lgJkdOvZCC36+Scapk/VFQXQsuj20sHAk+9HIPhUwDdQUKueKtM/
         qqwUHP8aTm8ezbQIOz1g5uKYVr7XU463SwHjCimUAowkFxYv4jqYvDYIaHBTC2TSBVNS
         cZrdiGFraxVtjnAh9yVFtkko1v9KUsBqLXteQP1pZjlgmTmoFCgXNlUP6N7HjthQswiL
         cVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695213428; x=1695818228;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UexnMi5oMmhAE5dFwT3NNBL/IAHUolyTmmXUsGhprA0=;
        b=eSrJyRL91uxNsL7XYaHfUsxrEpSilHxyK72xmNh/zmvX6b8IYvX1tiCSZ2+4UiV+oz
         WL3AJ+hc5uHji+syDd30gvSwx3xNmgSbdiutN8mwmk6MSJIImXNVgUn8CoGVBD+t3jxG
         UjK91sDrph8qkUVews1/qb3Q4D0AzIW9VtB/sU69BCfwfAtOCVay9rVhhdKZa1HwzCk/
         mkq/mU/9hNqm3CnRpUNbhqiem1xm7VqQoE4l9bUch+02/czJoSHZ69ICuE5fcyfcToKV
         3bzai6IFyUjxCcoDekHdVq8CIrzdORG5tCbTCeroDd9fIdYZkGcUg+2HfYl1CAo/zr7P
         OfdA==
X-Gm-Message-State: AOJu0YweGQ+VuoKcynU8VtcaUxE/6WtrpT7iwVVuZEVdce/nasIlEJtu
	AZwdTdGqI7IFrinCzR0Ns+F6CxSc/ZRb/x+urjqV3A==
X-Google-Smtp-Source: AGHT+IEmMtyXrNNzSSn0HyiVCQ+Z5CoZ545SWjv06Pe9u9ELrbWcaGNwoswFbs0oC4SKP+a/Ov7VFw==
X-Received: by 2002:a17:907:7206:b0:9a5:c38d:6b75 with SMTP id dr6-20020a170907720600b009a5c38d6b75mr6982252ejc.15.1695213428032;
        Wed, 20 Sep 2023 05:37:08 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id xo23-20020a170907bb9700b0099290e2c163sm9140375ejc.204.2023.09.20.05.37.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 05:37:07 -0700 (PDT)
Message-ID: <41e5dbe7-61e7-cf72-7479-c33c95e439df@linaro.org>
Date: Wed, 20 Sep 2023 14:37:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 1/7] dt-bindings: arm: add cznic,turris-omnia-mcu
 binding
Content-Language: en-US
To: =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, Arnd Bergmann
 <arnd@arndb.de>, soc@kernel.org, arm@kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org
References: <20230919103815.16818-1-kabel@kernel.org>
 <20230919103815.16818-2-kabel@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230919103815.16818-2-kabel@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 19/09/2023 12:38, Marek Behún wrote:
> Add binding for cznic,turris-omnia-mcu, the device-tree node
> representing the system-controller features provided by the MCU on the
> Turris Omnia router.
> 
> Signed-off-by: Marek Behún <kabel@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


