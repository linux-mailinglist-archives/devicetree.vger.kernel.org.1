Return-Path: <devicetree+bounces-14627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF91A7E5C04
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 18:11:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84A3E28124F
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 17:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 494A130356;
	Wed,  8 Nov 2023 17:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="KSlPFqeU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3837B30342
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 17:11:27 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46FBD1FF9
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 09:11:26 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40839652b97so52849775e9.3
        for <devicetree@vger.kernel.org>; Wed, 08 Nov 2023 09:11:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699463484; x=1700068284; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=eUTx16xBPwlSZNLX67xZHVAtRWSJgwxGWbgEGrxHA48=;
        b=KSlPFqeU+33VZ1dFlE2WWrdFXM0P6lbqgbQ7vfc5k58c1pngtRkB6bH5TQKNt1tmr8
         +sWTQL6lV3ZpXgJGExQxfXvdWBNOudd4mTp86VgTlCVfxGALtxpjvrMAXx0VwIMVPOT6
         Ft+w9Yq16jxOXR3wg2A8GIm68DhVdGLyGfO7rae+qnIt1DJEz30TGSfUWS27zN/ulQMc
         6oXFOdKbugyZH490PrdyFlenogS6yzdDNauyOCXYfSKrFSsKdZHhAaAsvRzq+5NQz6ip
         DZzri90KQLGvFboq2Dxo9lIljsILVuv1+ukhFMI4yU50vADeXBnURtEVAWfXbWRl0LYn
         MvJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699463485; x=1700068285;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eUTx16xBPwlSZNLX67xZHVAtRWSJgwxGWbgEGrxHA48=;
        b=vX4eGtIJ8JPpKAFQbms1/eMoJIZM8e/OfkOODxDLIHbDWVTYPGYcc7/eJUePbV8JAG
         ET6OKg2/iPEGgVEcDTfC300M4kGc1eGF20nbJ7CVxhTYrKRM7t1ttgfiH4BVFGXZ8KUp
         PxB4tHa3PlLZhTx73KT5frRXGmzbtCxyEwNzjc0fMJt5SgJi12vgzW9meJ7YMSP4TH1B
         OpQIXeVtcPukQ2ILHtNX9RV89pgeR58gQf1WgTEM7eCZLWZdDTzOUdC5BVD5MMn2sOLd
         ZO+zNsB4j15aVAOJHlkY5uL9g6vosJ9IUigD8DEmPSr3dmJsZ+mF/EyanfV3M6NMt8Iw
         GbWA==
X-Gm-Message-State: AOJu0YyH9d+6s7lo+XjSFoy4XjMGnk9BIGTP15R8oiKYuMUhNiluUY3f
	B4WsH/zs5s48oGp/o/kE/fTxVA==
X-Google-Smtp-Source: AGHT+IHkXUfrA1tiasSTEFj1aoP6Rt1HVyFxHeX293YAedpxpxcOfIUTWQPEe2dFIo4RSBo5O6hgVw==
X-Received: by 2002:a05:600c:3544:b0:404:72fe:ed5c with SMTP id i4-20020a05600c354400b0040472feed5cmr2402712wmq.29.1699463484552;
        Wed, 08 Nov 2023 09:11:24 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:dfaa:8961:ce90:9db0])
        by smtp.gmail.com with ESMTPSA id l2-20020a5d4bc2000000b0032da319a27asm5373005wrt.9.2023.11.08.09.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 09:11:24 -0800 (PST)
References: <20231106103259.703417-1-jbrunet@baylibre.com>
 <20231106103259.703417-3-jbrunet@baylibre.com>
 <20231108170621.GA2417622-robh@kernel.org>
User-agent: mu4e 1.8.13; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-pwm@vger.kernel.org, JunYi Zhao <junyi.zhao@amlogic.com>
Subject: Re: [PATCH 2/6] dt-bindings: pwm: amlogic: add new compatible for
 meson8 pwm type
Date: Wed, 08 Nov 2023 18:10:56 +0100
In-reply-to: <20231108170621.GA2417622-robh@kernel.org>
Message-ID: <1j7cmscgqs.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Wed 08 Nov 2023 at 11:06, Rob Herring <robh@kernel.org> wrote:

> On Mon, Nov 06, 2023 at 11:32:49AM +0100, Jerome Brunet wrote:
>> Add a new compatible for the pwm found in the meson8 to sm1 Amlogic SoCs.
>> 
>> The previous clock bindings for these SoCs described the driver and not the
>> HW itself. The clock provided was used to set the parent of the input clock
>> mux among the possible parents hard-coded in the driver.
>> 
>> The new bindings allows to describe the actual clock inputs of the PWM in
>> DT, like most bindings do, instead of relying of hard-coded data.
>> 
>> The new bindings make the old one deprecated.
>> 
>> There is enough experience on this HW to know that the PWM is exactly the
>> same all the supported SoCs. There is no need for a per-SoC compatible.
>> 
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>>  .../devicetree/bindings/pwm/pwm-amlogic.yaml  | 35 +++++++++++++++++--
>>  1 file changed, 33 insertions(+), 2 deletions(-)
>> 
>> diff --git a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
>> index 754b70fc2db0..3aa522c4cae4 100644
>> --- a/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
>> +++ b/Documentation/devicetree/bindings/pwm/pwm-amlogic.yaml
>> @@ -22,6 +22,7 @@ properties:
>>            - amlogic,meson-g12a-ao-pwm-ab
>>            - amlogic,meson-g12a-ao-pwm-cd
>>            - amlogic,meson-s4-pwm
>> +          - amlogic,meson8-pwm-v2
>>        - items:
>>            - const: amlogic,meson-gx-pwm
>>            - const: amlogic,meson-gxbb-pwm
>> @@ -37,7 +38,7 @@ properties:
>>  
>>    clocks:
>>      minItems: 1
>> -    maxItems: 2
>> +    maxItems: 4
>>  
>>    clock-names:
>>      minItems: 1
>> @@ -70,11 +71,14 @@ allOf:
>>                - amlogic,meson-gx-pwm
>>                - amlogic,meson-gx-ao-pwm
>>      then:
>> -      # Historic bindings tied to the driver implementation
>> +      # Obsolete historic bindings tied to the driver implementation
>>        # The clocks provided here are meant to be matched with the input
>>        # known (hard-coded) in the driver and used to select pwm clock
>>        # source. Currently, the linux driver ignores this.
>> +      deprecated: true
>>        properties:
>> +        clocks:
>> +          maxItems: 2
>>          clock-names:
>>            oneOf:
>>              - items:
>> @@ -83,6 +87,26 @@ allOf:
>>                  - const: clkin0
>>                  - const: clkin1
>>  
>> +  # Newer binding where clock describe the actual clock inputs of the pwm
>> +  # block. These are necessary but some inputs may be grounded.
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - amlogic,meson8b-pwm-v2
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 1
>> +          items:
>> +            - description: input clock 0 of the pwm block
>> +            - description: input clock 1 of the pwm block
>> +            - description: input clock 2 of the pwm block
>> +            - description: input clock 3 of the pwm block
>> +      required:
>> +        - clocks
>
> Again, clock-names?

yes, same thing

