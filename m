Return-Path: <devicetree+bounces-1747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A5A7A803C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:34:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 264211C20D22
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA1211732;
	Wed, 20 Sep 2023 12:34:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04434111AB
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 12:34:38 +0000 (UTC)
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9768099
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 05:34:37 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so936072066b.3
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 05:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695213276; x=1695818076; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CcKt0aKuzO6PEDvEIej9OBMWn8uC5jf8/QtokW/b9d4=;
        b=vfhGsMdXakUGxuC6oR7wRjFlQCBcFp1s+mB7sUvAcQa4+xtqWaJ8PtG4mtwKmZ6psZ
         jcIS0Qhs5M0qEUEIRfcvLOE2877aE9u8ul3EwqSElE+9hwnopCrqVdsGXJtEJBoP5ThP
         evkJVp4hByZ137/9rTfP7zbyRIFqV8gyVwlGvtyXVWSscrrxLElumpGVmfK0UTvXNEuw
         QPqsaV3GvjPk+A46BgYVyiHHEPmBCNLF+pgVAoA1YE44ZQBlHYwovXYL0P18ZDKB05S/
         3WCfM+Zah5wqZ2x+4nQYmEeCyPa3MR/S8jKjL0PlULtkFSu7Y58MccOTx7yysuyiI7Kk
         q88A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695213276; x=1695818076;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CcKt0aKuzO6PEDvEIej9OBMWn8uC5jf8/QtokW/b9d4=;
        b=LPUiGW0E03E0PRajAWbrL39/4oNB1WuGEFP2gah78prP/yryqxLn4B+MmjNeLtzQwv
         IQKQ9eT8VxurjSo1rLr4tgfI5GOJ9e/WyeN5j4v0DUYG0L/znLfmJFx42BDIDHYEo/jT
         DWNi9Pfk5X6nt1dyqY9pedJo6gWexjq4dOban4fHD8Xj9PbDWh0LZu3Y/TZP1DHEcZyO
         jlWIJlOfQWTmcPEaG6eqNPCRVsjvlguPrtrdTSJiFxhbwxiDAB0Q2AT5y/xDYduFp9fQ
         5sNxv8S2J7Oqnlzfo6RL+jodFF3mry/lj6zz7sR0UQ9To1MzILSXC5QK3jDrtfkmuu/k
         UIfw==
X-Gm-Message-State: AOJu0Yw5BUS14Jg4G1Mph6M9IJT3OkMaAg8I/6xpVoUxC0l/vSc98N++
	nk4zHbRsfAixkl+CJREIS1U+5sTVCshL9DL3W3Zy/g==
X-Google-Smtp-Source: AGHT+IF+C0tu/LMzg7FJEiDDItq7m86WiFfb0jw8K0fAigJwSNSCXcjwdv5jloc9gLXWX3O8GQFK7A==
X-Received: by 2002:a17:906:3091:b0:99c:c50f:7fb4 with SMTP id 17-20020a170906309100b0099cc50f7fb4mr1929062ejv.1.1695213276007;
        Wed, 20 Sep 2023 05:34:36 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id x6-20020a170906710600b00992e14af9c3sm9373040ejj.143.2023.09.20.05.34.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 05:34:35 -0700 (PDT)
Message-ID: <8e8c479e-3f72-ebcf-dbcc-162b193c2e24@linaro.org>
Date: Wed, 20 Sep 2023 14:34:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 2/5] dt-bindings: serial: document esp32-uart
Content-Language: en-US
To: Max Filippov <jcmvbkbc@gmail.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?Q?Ilpo_J=c3=a4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20230920022644.2712651-1-jcmvbkbc@gmail.com>
 <20230920022644.2712651-3-jcmvbkbc@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230920022644.2712651-3-jcmvbkbc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 04:26, Max Filippov wrote:
> Add documentation for the ESP32xx UART controllers.
> 
> Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>
> 

Thanks for the changes.

> +properties:
> +  compatible:
> +    enum:
> +      - esp,esp32-uart
> +      - esp,esp32s3-uart
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks

You need allOf with $ref to serial.yaml# (local serial, not absolute
path). I apologize, I missed this in my previous review.

Best regards,
Krzysztof


