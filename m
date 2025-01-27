Return-Path: <devicetree+bounces-141001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7024A1D13B
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 08:10:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F1B85165DFD
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 07:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF1AE1FBEB0;
	Mon, 27 Jan 2025 07:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j2+qtRQy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65DC1FCCE2
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 07:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737961814; cv=none; b=RxjfQ8SipUcbxufjB/jwL1KCha2JCDbsdFOhkyptmE9sHa94YX2zsFJj5UBEI8mOhobr/N8lLdapBs/1Ol4cUS2UrIN1zGPRpwolR5wGjGbfLc0/R1awn5GplkFRkWuxYRFhr9pJdaqMn2JigA+A91YckD0YBK4bPOVZgUxuxgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737961814; c=relaxed/simple;
	bh=iJW4WPb1HmGNDLH0eb+wAYOCxUHGGaaCOxClCKSlVYQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J+kvfiCFUJImKSQGXQAWOt7hLm7YPjKA+dAKSvsd+YZJDEfaqvwWw/xRvKslqZx0Rtbl5hWTjWNtUQ8suB/QZ/WwzGJATR9KerGgVri0ON5W6lRNeU2y2PyRzUHSnKRmX2TmHl5//rgWj7UMhYhvV9gG0EzrwpMezOl9ah9gxrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j2+qtRQy; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-38636875da4so622795f8f.2
        for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 23:10:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737961811; x=1738566611; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=M3EXH2cGI8vEHC8gb8s3DBafK0GDHdmQJebU8ghZdIY=;
        b=j2+qtRQyrA6MQGC5chgOanokApJzNPEE7nPV0WUS9bVF/VLauYQSSGwmmc4RkbTY4l
         YTV5xvG1eP1Gn5MEmQ2LLMfaYwq3/HzaL/maJ6d0vRhp1GlmrSgiDzwMK9XCr76del9I
         k9KHB/C4irOllRwaWDeJA3rpQA2LCb1TazAXJNs5Z2YG/1pJjZ5oI/NhRnlqR4VmjcHR
         Rvl/AiRan/G7AsWHb6R4QnW7l7YLUcS3BebbhFCzQXDxXSsq2rd1uBD6CGaHmdtdr4Su
         9pZ367QI1pKlNQLSbscO58fqRdkB+zRyUhvqipLLdTchrc0V8k6+jcRAP7bw0pP/U8Vl
         qSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737961811; x=1738566611;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M3EXH2cGI8vEHC8gb8s3DBafK0GDHdmQJebU8ghZdIY=;
        b=t3UHLe2LUo0opGGecd5RXfu1Mrmp9t3s99R0VktFhBmoi0yiBgDQphW3xn3U8Ts+l3
         i3c9bxJRQXlUOInizj5gI0oTsE6YkMP4/1+PmyfzjgDKQzw0OWWATmnhselicsSbdMsT
         7/w0vx76VIz9pewR4k8OIDwMJfee2rn8Ap6BI3m1KZUmM63cnfQrCoqxD1Phz+rASrAa
         CUhRaQYF25wb6JyBKaPRmKvX2QF6zXT10YJwAUG7IIFJAzaLJeaeWSc9xQfh7uIKQStK
         c+GnP23FIgC2CD0hACqfO/zauEOcIrWFrGpjXs6dIWZVBk2gLCdd6VWpJ9KOMrm6R+is
         1oVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgF8Sq+SWcI7E2/9h/g0ZqY/FxJFNBVzmQMkz3gG8cEYlEYbZmlDttT4oxg2ORZNFvp6bvspoAiGLQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyKi5YXn1FH/suFtTr+uNK8mH3G6FA8v4LErzJ9QWGCEA3gYsgT
	7a7tyVApGD+V/nx3QBN35+WOGe1+sITSrVmS/SiLm9ezdk4tU4IhRzePiUDtHB0=
X-Gm-Gg: ASbGncvsekZok1iD7FLX9NIOuoD2IAPuDY4mtv4jteK5M2fULlDqHbi0gCLpCZ4SMw5
	nzoHBp4gn8ywxPAVk5gZxPxvE93CUVW5yrEax23aA35wXpWGThYQ3aJGKWksJktYyOtuxSjBLF5
	po+TXc28EmaxKpt4AbH1N76Fp2DrMNSQJydNaZPfnhLWhbJ3EarvKeFgOPhkxSK8Vxg3VW1W14V
	VFubA+wmA6yG+NrPF71R19nEy8ojHD3miSaSnIqsAuxsJkkcUGrZ/9/6X+QZT9G1B5W89yv2pdR
	IAtmYv+v98rXghq77HMnp30=
X-Google-Smtp-Source: AGHT+IF6jpf7MgENFvTZUDlV3/b9kfhC0Js8OqIOXAXY6TGiw0YR03UDjLrs1OFVUCCorPordVLr2A==
X-Received: by 2002:a05:600c:4512:b0:434:a30b:5433 with SMTP id 5b1f17b1804b1-438b17cf71dmr76247495e9.5.1737961811049;
        Sun, 26 Jan 2025 23:10:11 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd4fa416sm123075605e9.6.2025.01.26.23.10.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jan 2025 23:10:10 -0800 (PST)
Message-ID: <a37cc741-3ab2-4994-bd7e-809eace6e0c7@linaro.org>
Date: Mon, 27 Jan 2025 08:10:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] docs: dt: writing-schema: Describe validating one DTB
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250123145009.546923-1-krzysztof.kozlowski@linaro.org>
 <20250124223928.GA2546661-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250124223928.GA2546661-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/01/2025 23:39, Rob Herring wrote:
> On Thu, Jan 23, 2025 at 03:50:09PM +0100, Krzysztof Kozlowski wrote:
>> Running DT schema validation with `dtbs_check` is time consuming thus we
>> also have ability to check only one DTB target like:
>>
>>   make -j8 DT_SCHEMA_FILES=gpio CHECK_DTBS=y qcom/sm8450-hdk.dtb
> 
> It's kind of duplicated because "make help" has:
> 
>   make CHECK_DTBS=1 [targets] Check all generated dtb files against schema
>          This can be applied both to "dtbs" and to individual "foo.dtb" targets

People not always look there, so it is nice to have one place
documenting possible usages. Just like we have for C=1/coccinelle.

> 
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  Documentation/devicetree/bindings/writing-schema.rst | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
>> index eb8ced400c7e..6dea741c5962 100644
>> --- a/Documentation/devicetree/bindings/writing-schema.rst
>> +++ b/Documentation/devicetree/bindings/writing-schema.rst
>> @@ -222,6 +222,10 @@ separated by ':'.
>>      make dt_binding_check DT_SCHEMA_FILES=/gpio/
>>      make dtbs_check DT_SCHEMA_FILES=trivial-devices.yaml
>>  
>> +Validation of one DT source by providing Makefile target::
>> +
>> +    make CHECK_DTBS=y target.dtb
>> +    make DT_SCHEMA_FILES=xxx.yaml CHECK_DTBS=y target.dtb
> 
> Perhaps dir/target.dtb
> 
> Though that may prompt folks to do:
> 
> make arch/$ARCH/boot/dts/target.dtb
> 
> You need just the sub-dirs under arch/*/boot/dts/ as part of the target. 

I'll put that to text:

Validation of one DT source by providing Makefile target (sub-dir of dts)::

	make CHECK_DTBS=y sub-dir/target.dtb
	make DT_SCHEMA_FILES=xxx.yaml CHECK_DTBS=y sub-dir/target.dtb


Best regards,
Krzysztof

