Return-Path: <devicetree+bounces-8878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 492C87CA641
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:06:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E77A1C208BE
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C51D20B19;
	Mon, 16 Oct 2023 11:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hjMQKLVC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5176F4E5
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 11:06:25 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF55EAB
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 04:06:18 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5041d6d8b10so5605506e87.2
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 04:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697454377; x=1698059177; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LXEVQS6bjiXAKpDplUeSAZwBvte/3ftCu9KDPLrWwj0=;
        b=hjMQKLVCSNc4Z/e1tRujtYEocZEJ4C6FPbrlXV7pniRimHFQO/+Di7bmXM+q84CMZC
         ICLLJ1Q45GmCpCpmbDuBMh/dDZt2Ncfo6g27lcJDjSYdA+2xaCqo+3w/4OJqZVY+g0B6
         j/qiIvRs9s48QLGOwcEsKNxZuJ5VzJ8X+ewZCfVWWBbqEFigiUv+gKsObK/sFLGxF1/f
         8VUHgLB/cutHSHCtPP4Mw3wUXGkLntKPtp8mOVGHhxwiBwEZQmMhPqHMGj1zeZsJnjPy
         9ccJ6A/1U8UyE4PtFTjsFcKwQeg/L0NTroPjDFQ3sZP8nA8azUW3CvHaPPnDhINIKkLo
         Si2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697454377; x=1698059177;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LXEVQS6bjiXAKpDplUeSAZwBvte/3ftCu9KDPLrWwj0=;
        b=XMvYFJ8CE3ZdPV5f0Y1TMEdA5k1+3svOIwg5H1j0w5NJM6o/iBvQ9eRcMwJ0d3SHYb
         Ptkg/fX9RBdWf7uYVOqtTBA1tCzH0HgHyvX/WkMxagcCKAN0p+vqcl/qvMH7XwZqdrYz
         26ujroUcmkOPiuIguPTblB61++xe1fT2199zd9jD/xdfZmVt9NAu3SVcoBK4PfYJwAFN
         7qXoblAITWLlOQCfkSehIdxcR+d/wEtPRkM9WR4Pi/AIEHKUo0CMbJa8kQ0uJ4RrzI28
         pWwv+Q9KF9A41FG9oVOL1pUtiBAshTRP8N4CRVRXIfHTYZn2wPViT1fA5PQP+WCG1K9x
         PvFg==
X-Gm-Message-State: AOJu0YzuO6weXbMKqk25ut4S0CRlg/YzgNKrpPaqKo6XLExfFGXvT0hg
	7KDXQG4uS+9/eE1u3zOmCnQlog==
X-Google-Smtp-Source: AGHT+IEYyBsPUxOh4md1Gs8glUia+ByhRldm5segshEthvDKHCAiPDGq5a3hP8xxDBKzG69zoztWBw==
X-Received: by 2002:a19:ac0b:0:b0:507:a40e:d8bf with SMTP id g11-20020a19ac0b000000b00507a40ed8bfmr4130555lfc.7.1697454377148;
        Mon, 16 Oct 2023 04:06:17 -0700 (PDT)
Received: from [192.168.1.15] (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id j11-20020a05600c190b00b0040646a708dasm6843691wmq.15.2023.10.16.04.06.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Oct 2023 04:06:16 -0700 (PDT)
Message-ID: <77aa8c48-42da-46eb-92c1-5950c9bdfec7@linaro.org>
Date: Mon, 16 Oct 2023 12:06:15 +0100
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
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
 <42709208-6f3b-4ae0-a7bc-f23be6370171@linaro.org>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <42709208-6f3b-4ae0-a7bc-f23be6370171@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 16/10/2023 06:31, Krzysztof Kozlowski wrote:
> On 15/10/2023 23:11, Caleb Connolly wrote:
>> This new property allows devices to specify some register values which
>> are missing on units with third party replacement displays. These
>> displays use unofficial touch ICs which only implement a subset of the
>> RMI4 specification.
>>
>> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
>> ---
>> To: "Jason A. Donenfeld" <Jason@zx2c4.com>
>> To: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
>> To: Rob Herring <robh+dt@kernel.org>
>> To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
>> To: Conor Dooley <conor+dt@kernel.org>
>> Cc: devicetree@vger.kernel.org
>> ---
>>  Documentation/devicetree/bindings/input/syna,rmi4.yaml | 15 +++++++++++++++
>>  1 file changed, 15 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/input/syna,rmi4.yaml b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
>> index 4d4e1a8e36be..1f4a2179e4d3 100644
>> --- a/Documentation/devicetree/bindings/input/syna,rmi4.yaml
>> +++ b/Documentation/devicetree/bindings/input/syna,rmi4.yaml
>> @@ -49,6 +49,21 @@ properties:
>>      description:
>>        Delay to wait after powering on the device.
>>  
>> +  syna,pdt-fallback-desc:
>> +    $ref: /schemas/types.yaml#/definitions/uint8-matrix
>> +    description:
>> +      An array of pairs of function number and version. These are used
> 
> You nicely explained what is expected to be here, but what is the
> purpose of adding this property? Please add it to the description.

This property is to provide some "expected" register values to handle
hardware where registers that should have values are empty (MCUs running
dodgy firmware pretending to be an rmi4 capable controller).
> 
>> +      on some devices with replacement displays that use unofficial touch
>> +      controllers. These controllers do report the properties of their Page
>> +      Descriptor Table (PDT) entries, but leave the function_number and
>> +      function_version registers blank. These values should match exactly
>> +      the 5th and 4th bytes of each PDT entry from the original display's
>> +      touch controller.
>> +    items:
>> +      items:
>> +        - description: The 5th byte of the PDT entry
>> +        - description: The 4th byte of the PDT entry
> 
> Missing constraints on outer level:
>     maxItems: 1

There can be (technically) an arbitrary number of pairs here, it should
align with the number of Page Descriptor Tables supported by the device.
This is basically meant to done on a best-effort basis. The OnePlus 6
has 3 pairs here.

I'll give another pass at the description and see if I can explain this
better heh.
> 
> 
> 
> Best regards,
> Krzysztof
> 

-- 
// Caleb (they/them)

