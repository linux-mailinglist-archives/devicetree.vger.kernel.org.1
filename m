Return-Path: <devicetree+bounces-7750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF7E7C54BC
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 15:04:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FE45281F00
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:04:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79E761F18F;
	Wed, 11 Oct 2023 13:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tweaklogic.com header.i=@tweaklogic.com header.b="NUC94I6J"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54941EA92
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 13:04:25 +0000 (UTC)
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2760F98
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:04:22 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-5827f6d60aaso4449888a12.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 06:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tweaklogic.com; s=google; t=1697029461; x=1697634261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uKGDsSgRWaVRqguRQzytVv1LFKTRkfGDmTPgMhFGmI4=;
        b=NUC94I6JIABY3ySPzqj2qvktDwsPMfsa+rKp9EFeCRa6qj+xkG3RykpkJVLxrCAcFm
         4G3NxHQX7ZXltrOe3p5l5NhfumYNwRzZqriAZ715UzgJs5nedWt3/408MFmRbqiXoRK5
         b46NwkW9uUnrIAW3VVcXuQgrovTE0UmJGYmpzOXYEp33cWKgnjI1AmG+pQSioxZsjqOP
         KlclJxkSzNr181bYhcx16SuednbjK9WZBATI0R7YVIvI7IY5OFDKMlq349Z4lMJPYhS9
         ypqOpw9H8Og4Y/ZquWP5NCI2gLmzy1N2Qjya6ciRnlvC3rurwoyXjf0Ity0KekzjWZlM
         zpCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697029461; x=1697634261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uKGDsSgRWaVRqguRQzytVv1LFKTRkfGDmTPgMhFGmI4=;
        b=Pg+lLM9n17ExPalyHmsww/WeJvXKRaNSm+12s26BXJwlakPamM0gAytDRqClJuUgup
         +9TdabGfrCw4eU8vAslduPSTrlSgawkLnjQX1cM7a63z7wsz0LqlNEhicbBPw8B9I3d8
         Rsm2fEeSTWnSmNEBWePHpV9zP3GlwlLhR60TN/9nMw+WX69lOO05mq4Hgp8X6evk1Q3l
         m84VI9IViqNqQwPyvVelW0UTRSyTkzXXzbCSCjmBaMwuSOXBUIEDYphKRTaQIuXakUUx
         513S5ewi/xAPEKWJmCyJWtCjvM3Yi1980URNrTaYf1b+uVQjIdgiUCRq3lUp8BdF1J9Y
         V1Bg==
X-Gm-Message-State: AOJu0YxO5Ok9ZRasUIqkKQrPOTTun856laIS4zfGdT4mIMK7bmm5klB0
	IYtPkDABLrvuts0RDSs3w2Kn/w==
X-Google-Smtp-Source: AGHT+IHbRm3s2xZzTaph0FHcK0YjQdqB2JHxO34y+v1bOoDkYN44ErW9Cudd/NnuxxI1L7fxSi23kQ==
X-Received: by 2002:a17:90b:4f46:b0:267:f9c4:c0a8 with SMTP id pj6-20020a17090b4f4600b00267f9c4c0a8mr17714675pjb.4.1697029461274;
        Wed, 11 Oct 2023 06:04:21 -0700 (PDT)
Received: from ?IPV6:2403:580d:82f4:0:92f1:e901:1eef:a22? (2403-580d-82f4-0-92f1-e901-1eef-a22.ip6.aussiebb.net. [2403:580d:82f4:0:92f1:e901:1eef:a22])
        by smtp.gmail.com with ESMTPSA id c6-20020a17090ad90600b0027d0de51454sm734373pjv.19.2023.10.11.06.04.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Oct 2023 06:04:20 -0700 (PDT)
Message-ID: <70bb5281-18f6-f5b3-9226-7a7d552671f2@tweaklogic.com>
Date: Wed, 11 Oct 2023 23:34:12 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] dt-bindings: iio: light: Avago APDS9306
To: Rob Herring <robh@kernel.org>, Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Gazzillo <paul@pgazz.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
References: <20231008154857.24162-1-subhajit.ghosh@tweaklogic.com>
 <20231008154857.24162-2-subhajit.ghosh@tweaklogic.com>
 <2c6ff28f-9031-beb2-f8d0-e7f12b0a07b4@gmail.com>
 <20231010161900.GA999361-robh@kernel.org>
Content-Language: en-US
From: Subhajit Ghosh <subhajit.ghosh@tweaklogic.com>
In-Reply-To: <20231010161900.GA999361-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 11/10/23 02:49, Rob Herring wrote:

>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: avago,apds9306
>>
>> I see the driver supports two different variants of this IC, differentiated
>> by the part-ID register. Variants are named as apds9306 and apds9306-065. I
>> wonder if we could/should have different compatibles for them?
> 
> If 1 compatible is sufficient to know how to power on both devices and
> read the part-ID register, then no need for different compatibles.
> 
> Rob
Understood. Thanks Rob.

Regards,
Subhajit Ghosh

