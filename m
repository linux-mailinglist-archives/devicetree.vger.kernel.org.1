Return-Path: <devicetree+bounces-20776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 359B1800D86
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 15:42:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 58AC41C20DA1
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 14:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0A68219EA;
	Fri,  1 Dec 2023 14:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nmC6gRV0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C418710F4
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 06:42:41 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5482df11e73so2781970a12.0
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 06:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701441760; x=1702046560; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DJ3VCe1PbE1ojRYzyRrEBiMie8OFu9BBp8znfMUBTMI=;
        b=nmC6gRV0WVbf1ZCqJ3Q+SZt5h5Xs0WY3EHSLHKsL1ZWtju76NA7ySr8u4Z6FDyZWGi
         vAKYB7J4IuGLlDYeQQ1GsXGIAzr8iPb3ydrwN5gGqUa8bTRifREbg8boxxYmTMAnXBRo
         ZqvGAOoUnh9tAFcPYZneVfBBLYSpwlZBolyXsianoHT5HdeKm1FwnX5gRmwVgYyMseQA
         gEkKq3aVaP20W8IWiJuOm0kBEq79hYGsz3Tsblec9WzRfxiJolQQjb+CnrKEi/jOVpVI
         yGq2+Ub+nl2MTMbezKhRglwu2XDPS31OVOnbmoefo6AFS5Ty5BA/tNPxEf+4JClAigL7
         OOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701441760; x=1702046560;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DJ3VCe1PbE1ojRYzyRrEBiMie8OFu9BBp8znfMUBTMI=;
        b=nqDKV10Jkp6fkNhA3a/4O4k6jIKamKVTVNeOXYYItXB+rhySJ74QjZj0NmO2jzv4w5
         mn5farpMfeCHABcCpXcCGEv7zRkB34dAsSw/GtCtGB0iQa1Ea1RRdg88U7cm4rhntdOe
         tOkScMztFfZDUVlyBFH26/Un856VOKhHkCyCs/SUtDhHQFfPfjMJPfI8gqDehDszEq/X
         BomrlFlo9yO5wtZdjudCAVOkM9I5QAkhIsV1b7vRlOQC8th3BYz4gzISlt+PohffcwFE
         xrlobHQUdhe8nO1whGGbXTn+hHyueffXfr+DDGxuPk2b1RqZ/RVMAmmMN2blJPFy8FHg
         faWw==
X-Gm-Message-State: AOJu0Yzj2KKMbprgwZ7cH2VHlc9dqU9aTcS1TIG5u/9KEgsqjgkcdaFf
	25UNpxSKpIJ3OEM63LqyMsIGHQ==
X-Google-Smtp-Source: AGHT+IEgtIGOndoZAyG1Bxpxrniw5aTE+TgOcxRKn1oNH0LpCssFQ357UoGSaWvUdLTZ/nU8k87Smw==
X-Received: by 2002:a17:906:1006:b0:a19:a1ba:8cb2 with SMTP id 6-20020a170906100600b00a19a1ba8cb2mr885652ejm.80.1701441760245;
        Fri, 01 Dec 2023 06:42:40 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id qz1-20020a170907680100b00a1a25e756d4sm614788ejc.107.2023.12.01.06.42.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Dec 2023 06:42:39 -0800 (PST)
Message-ID: <b2400218-12d6-4d51-ab42-78412f616d88@linaro.org>
Date: Fri, 1 Dec 2023 15:42:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] dt-bindings: mfd: hisilicon,hi6421-spmi-pmic: fix
 example regulator node
Content-Language: en-US
To: Rob Herring <robh@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Lee Jones <lee@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20231130172547.12555-1-johan+linaro@kernel.org>
 <20231130172547.12555-3-johan+linaro@kernel.org>
 <20231201144017.GA974717-robh@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231201144017.GA974717-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 01/12/2023 15:40, Rob Herring wrote:
> On Thu, Nov 30, 2023 at 06:25:45PM +0100, Johan Hovold wrote:
>> The example regulator child nodes do not have unit addresses so drop the
>> incorrect '#address-cells' and '#size-cells' properties from the parent
>> node.
>>
>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>> ---
>>  .../devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml    | 3 ---
>>  1 file changed, 3 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
>> index e36e5ce58136..60d5e6b3de33 100644
>> --- a/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
>> @@ -77,9 +77,6 @@ examples:
>>        interrupts = <0 0>;
>>  
>>        regulators {
>> -        #address-cells = <1>;
>> -        #size-cells = <0>;
>> -
> 
> It's the right fix, but I have to wonder why these are not schema 
> errors? Seems like something in the schemas needs fixing.
> 

Good point. The fix is just not sufficient.  This binding explicitly
allow it, so it should be removed there as well.

I retract my Ack/Review. :)

Best regards,
Krzysztof


