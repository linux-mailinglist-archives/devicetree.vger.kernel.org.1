Return-Path: <devicetree+bounces-12646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E9F7DAB89
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 08:31:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C8DE5B20DCB
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 07:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 341A953A4;
	Sun, 29 Oct 2023 07:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a3VZUekn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FECF633
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 07:31:38 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C65B6C9
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 00:31:36 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5079f6efd64so4795853e87.2
        for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 00:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698564695; x=1699169495; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GIvaGcBvEmyALTs8ncicpVNM1F8ynHO2rhfiNQuN0jU=;
        b=a3VZUekn/OJpasy59FNkMI3Ron+FguTk5Cfpv8vZr66Gf7/kx+24r+M61bGTZDFiTX
         64NGIjT3O+huPkaEh9349WzVBOezRtvelu5/QJh6GRT6pv2jkoY6USrqgBnBpp+PBI5D
         zdPXHyFz2DkFcU81VLpRZ0XocfV+XHPtrmWrt6+qaJQv5J5WBrH6XKGd21G9ofa9b0l8
         /RNScxOwb06HESOPv6gaUBLwebeFw0rC8V8xN85x6c/1e0eDxK2+W8Q08pOIDZW8GYWs
         um9dWWhVTrdX0ip25X6dwdEcezPl85CQl4uWMmVNBuT+GdwVoYMVVMNTeT2J3SkZ4CYT
         u4TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698564695; x=1699169495;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GIvaGcBvEmyALTs8ncicpVNM1F8ynHO2rhfiNQuN0jU=;
        b=CgnCSvuyJl10QJaoDjh+xkrpb9rOYThUYgSwVnhY2oAUnv2WOGT31xrvjQxNsy2Nfs
         H8mqN34eTNVEYAa+42qfAfh5THk3TyM08qI5X8qLv8UBHIhifEErUCx1vh8m3jfOox48
         2ZM+c1g602wVen3GrJBKOQ2i9jgS1czv7e5+TkzUjBffynySLgxt03XqkItekhwTZvwt
         V3u0sROPXUzdIC9hcQxB+1MJBC5uEV+F1jAmmLRxjOOMO8sOuAt3YkjD8BvDJs1hoKWp
         PjifqT1ocpVApYkFAjLYMoQ819MbXlX+4axfxLWDy4AGf+nVAX7yWgYM4o8ZboMYg50U
         ApJQ==
X-Gm-Message-State: AOJu0YyGtlpcQuKchwFvbunDt+paO8kjZmafFn91T0cNvOqGaUmSz7cR
	dZ6W1K9vf33RF+oQ5tCIC/uw/A==
X-Google-Smtp-Source: AGHT+IFPucCSY7FXx2HQf2huJilooPI4eLuivFDTPGaH49eQRxBDqMVq1npbm6C85c6pl0z5oQRToA==
X-Received: by 2002:ac2:4d05:0:b0:4fe:279b:8a02 with SMTP id r5-20020ac24d05000000b004fe279b8a02mr4659329lfi.67.1698564694905;
        Sun, 29 Oct 2023 00:31:34 -0700 (PDT)
Received: from [192.168.0.22] ([78.10.206.168])
        by smtp.gmail.com with ESMTPSA id k19-20020ac24573000000b00507a2a4e615sm929979lfm.201.2023.10.29.00.31.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Oct 2023 00:31:34 -0700 (PDT)
Message-ID: <147aebc9-8d76-49d4-a80f-eb6894868688@linaro.org>
Date: Sun, 29 Oct 2023 08:31:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: watchdog: davinci-wdt: convert txt to
 yaml
Content-Language: en-US
To: Nik Bune <n2h9z4@gmail.com>, conor+dt@kernel.org
Cc: robh@kernel.org, devicetree@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, afd@ti.com, linux-kernel@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux@roeck-us.net,
 skhan@linuxfoundation.org, wim@linux-watchdog.org
References: <20231027-antennae-aftermath-b11ede90737f@spud>
 <20231028175115.98844-1-n2h9z4@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231028175115.98844-1-n2h9z4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/10/2023 19:51, Nik Bune wrote:
>>> +  power-domains:
>>> +    description:
>>> +      A phandle and PM domain specifier as defined by bindings of
>>> +      the power controller specified by phandle.
>>> +      See Documentation/devicetree/bindings/power/power-domain.yaml for details.
>>
>> I think you missed Rob's comment in reply to Andrew, about constraining
>> and ordering the power-domains:
>> https://lore.kernel.org/all/20231026203037.GA327324-robh@kernel.org/
>>
>> Cheers,
>> Conor.
> 
> I didn't get what should be done with respect to the comment above:
> Should we wait for the response from Andrew, 
> or should we skip and remove the the power-domains definition for this binding, 
> or add "maxItems: 1" to power-domains definition?

None of the options above allow to send the same code without maxItems.
Sending new version without addressing feedback is basically ignoring
the feedback and next time you will have annoyed reviewers...

Best regards,
Krzysztof


