Return-Path: <devicetree+bounces-59321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1038A4B21
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 11:10:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EC191F2274B
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 09:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A563E3C463;
	Mon, 15 Apr 2024 09:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ZZZSUQJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3687B38FA5
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 09:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713172230; cv=none; b=qtPTzskkImXLrKkeCAcYzXtHiiXQHHT263n5CaRY5gX6ePvcSCvzIsTNMpKZQwhTQYoTrvCJvsavgS/TCc0Onrf2NxqiKDz0UXT3HgOfP7JnjooTfoDGaaQmeX6gKeDs9cCptYvhWeqzYt75Tc6qEd9dPJlQBZ590nBzSb7nEXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713172230; c=relaxed/simple;
	bh=fZt9c9X/Jc+Z+PWYJ4t8R4woVCVorw+BDVxxptvoH5c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VeajCM+epEdiEktlvG09zSNB+XC8aize3LmY/WqWyXor7U7kaOoWDnGRslryuaJMft1jUZEUCUm7lqXsBfG8FXKhG6BdoYppXS+N0rbnO/NOVWDEc66wgXB0YbL/4Qwm2nb9wVeej9JALVgayha8fUHzrAW00IfmBB3m5FyX87I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ZZZSUQJ0; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-345606e8ac0so621647f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 02:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713172226; x=1713777026; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CMipTzrco8cuX1DyV3x6d9zPt5GQCAGmWbkRX0s3Bkk=;
        b=ZZZSUQJ03c9MlL1ui6P6baX25LWjbkV2t/Tr+m6koC6TVUZRiS8xKQYkJSlQCcjS2C
         JHZ4UhD++dHDfNscz88rSZn4ZEBN3WEb9ao5LyOjjz5+iMruZ/7Zm2oosrHSef4mtNN4
         s4gLQ0Dt6901BpqfjG/oWiIvjWVr1qDXMCdtKLXQdLlFyqcVfARTXrRzQK9Q2GANRUxf
         eD2csgR4vZKloLzlSDOYRgRUF1Pakd8rWHE4cz4cFqXhGEErKECnh4RsXFblohCBDtvp
         VqHOH5u6/51eYfXBlyLVFeFqbGQzYU8l3VTHqRW/9ZAmherm5CvBRM6uRESNJ4uW1XxI
         RZHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713172226; x=1713777026;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CMipTzrco8cuX1DyV3x6d9zPt5GQCAGmWbkRX0s3Bkk=;
        b=UdKSOwsQAQOLbobP5N+jq04xHuw35siNwZbqsum06cGf0s724bhg97A4YMbp6SdTdy
         KYpZ2hkJQJPK+tSMJgy4mfTZDRC+VJcjGFpa1xkBjgLcGvY+s0Z8O6VlaxF5zDJ/d7Mo
         ziF0jxFTUZrZclIBCUXPre4OA8RGxidA3MuOK5x8hYVUBE2FdrDx31igclDB5n1jkqkm
         aFQqrCq14UN5+g1MojY4Dmafm7m7UDeMz2GXYNAR2eDX+i5i30Epqf0EYjNsgqU1Rh2W
         TIlHxmQvcvEAOmUl5nkCiA+sp5ylw5W3rzHyAOWKlL2uv8Vs8CyIJc0q2nJ6sUUP/fvq
         ezJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVRBOsuUb2Ofb81Z4Q3s3E3Ti+8qCZaaUsiqziyV2JWr4X0MoVDtuZYJ9PIBH+B5o705HQQGgTvvC3mic7hWDismu8RirpmrYdJQ==
X-Gm-Message-State: AOJu0YzLmWFmlFpNzASRuDx4Rqu2RX3LDgBLczZ5GzGgXizhgtD1XjZY
	EyRIit9P27YcqHHLfQL/vzk0MFdPj5wNnlEQfYbgbv77l6DVaGH3WduMNDPhFvc=
X-Google-Smtp-Source: AGHT+IFOI8wiMfFK+eh+wkDTy9pH4EpksT9wRNII+klZpSBWS3ghE8Ipz2Lv/Q5ZldsUWaH3Q3GfEg==
X-Received: by 2002:a05:600c:3b1f:b0:416:7b2c:df05 with SMTP id m31-20020a05600c3b1f00b004167b2cdf05mr6832257wms.1.1713172226355;
        Mon, 15 Apr 2024 02:10:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:999:a3a0:b1f5:d56c:abf9:b394? ([2a01:e0a:999:a3a0:b1f5:d56c:abf9:b394])
        by smtp.gmail.com with ESMTPSA id gw7-20020a05600c850700b004146e58cc35sm18937831wmb.46.2024.04.15.02.10.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Apr 2024 02:10:25 -0700 (PDT)
Message-ID: <5eda3278-24bc-4c17-a741-523ad5ff79f7@rivosinc.com>
Date: Mon, 15 Apr 2024 11:10:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] riscv: add ISA extension parsing for Zcmop
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Deepak Gupta <debug@rivosinc.com>, Conor Dooley <conor@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Anup Patel <anup@brainfault.org>, Shuah Khan <shuah@kernel.org>,
 Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kvm@vger.kernel.org,
 kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
References: <20240410091106.749233-1-cleger@rivosinc.com>
 <20240410091106.749233-8-cleger@rivosinc.com>
 <ZhcFeVYUQJmBAKuv@debug.ba.rivosinc.com>
 <20240410-jawless-cavalry-a3eaf9c562a4@spud>
 <20240410-judgingly-appease-5df493852b70@spud>
 <ZhcTiakvfbjb2hon@debug.ba.rivosinc.com>
 <1287e6e9-cb8e-4a78-9195-ce29f1c4bace@rivosinc.com>
 <20240411-superglue-errant-b32e5118695f@wendy>
 <c86f9fa8-e273-4509-83fa-f21d3265d5c9@rivosinc.com>
 <20240411-backwater-opal-00c9aed2231e@wendy>
Content-Language: en-US
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
In-Reply-To: <20240411-backwater-opal-00c9aed2231e@wendy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 11/04/2024 13:53, Conor Dooley wrote:
> On Thu, Apr 11, 2024 at 11:08:21AM +0200, Clément Léger wrote:
>>>> If we consider to have potentially broken isa string (ie extensions
>>>> dependencies not correctly handled), then we'll need some way to
>>>> validate this within the kernel.
>>>
>>> No, the DT passed to the kernel should be correct and we by and large we
>>> should not have to do validation of it. What I meant above was writing
>>> the binding so that something invalid will not pass dtbs_check.
>>
>> Acked, I was mainly answering Deepak question about dependencies wrt to
>> using __RISCV_ISA_EXT_SUPERSET() which does not seems to be relevant
>> since we expect a correct isa string to be passed.
> 
> Ahh, okay.
> 
>> But as you stated, DT
>> validation clearly make sense. I think a lot of extensions strings would
>> benefit such support (All the Zv* depends on V, etc).
> 
> I think it is actually as simple something like this, which makes it
> invalid to have "d" without "f":
> 
> | diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> | index 468c646247aa..594828700cbe 100644
> | --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> | +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> | @@ -484,5 +484,20 @@ properties:
> |              Registers in the AX45MP datasheet.
> |              https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
> |  
> | +allOf:
> | +  - if:
> | +      properties:
> | +        riscv,isa-extensions:
> | +          contains:
> | +            const: "d"
> | +          not:
> | +            contains:
> | +              const: "f"
> | +    then:
> | +      properties:
> | +        riscv,isa-extensions:
> | +          false
> | +
> | +
> |  additionalProperties: true
> |  ...
> 
> If you do have d without f, the checker will say:
> cpu@2: riscv,isa-extensions: False schema does not allow ['i', 'm', 'a', 'd', 'c']
> 
> At least that's readable, even though not clear about what to do. I wish

That looks really readable indeed but the messages that result from
errors are not so informative.

It tried playing with various constructs and found this one to yield a
comprehensive message:

+allOf:
+  - if:
+      properties:
+        riscv,isa-extensions:
+          contains:
+            const: zcf
+          not:
+            contains:
+              const: zca
+    then:
+      properties:
+        riscv,isa-extensions:
+          items:
+            anyOf:
+              - const: zca

arch/riscv/boot/dts/allwinner/sun20i-d1-dongshan-nezha-stu.dtb: cpu@0:
riscv,isa-extensions:10: 'anyOf' conditional failed, one must be fixed:
        'zca' was expected
        from schema $id: http://devicetree.org/schemas/riscv/extensions.yaml

Even though dt-bindings-check passed, not sure if this is totally a
valid construct though...

Thanks,

Clément

> the former could be said about the wall of text you get for /each/
> undocumented entry in the string.

