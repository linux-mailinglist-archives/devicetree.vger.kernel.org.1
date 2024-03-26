Return-Path: <devicetree+bounces-53558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6405C88CB55
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 18:51:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 193331F809C1
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 17:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F0084CE09;
	Tue, 26 Mar 2024 17:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CVUMWNwA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02A41CD31
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 17:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711475442; cv=none; b=EyriInfIv8EsS0NvORsy/WgH+A5P3SYKmrikNQB0W/PxcQkBHLQrmkKf8IQ3lceC7KCwa0vwJpZ8xDAJdmnce7OVRGZFYT9TP1SG2mOoyiYxM46w5gFy7T8fmjWliAiEnmMOks5hXO6xnAJrxaqM/Y+UlPhziLBSLG75Wr9/ZkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711475442; c=relaxed/simple;
	bh=sd5w0qWqvjNhWDNIAJL9a17DcsCnU7ao9XcHvYDUVfs=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=qnL6JiO9fohk5MVd6VDZxG9H5t7AKkKgdXUBjzb5W2ONBCLmnPm+CmjcUhbO2RMpfGS1hgNTgYR7lFwsaRKR9rbbHWqRiaLSIHz3qlPuP16Y4uZ+uNzlseO+AToVSxZ728M4Mt0ixt02oIvcGgbXNO/en28Cof5sooCiUUjpidQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CVUMWNwA; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a4715991c32so706764966b.1
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 10:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711475439; x=1712080239; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=N1d4VruYCFWZM4T5uYHpWSgV6rWwaEi0uyd3VLge4Tk=;
        b=CVUMWNwA2TfaUx5iy216r1W39K3YlSYxQxiwITWnwc2+aEdHSJMgNSsE1+isWDKV70
         /xxJDRMFDWKPFt2E01kr6VhbRjAJXSxJZY6WbrPReEVB8MH2MW/q3G8FORh7zHd7Nhu8
         WWxE8EpY3PxVO4G5IFv5RXbLmXXE98AeFVnhyR+2GqFSUyXLuQeRu00imJ3NfK8FeqvE
         9I18rn3PP0GWQS+W75lcYRfZ5szF7IkbXaVqA202SCphXHn8MPD+ZmkrcCRsoqeI6DCv
         XLb/4x8hi4ClTycOvhuQWVVwd/cBBUF/AyyXxDtynLpqc7rmVScncltUbdpI0A1Li51d
         DE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711475439; x=1712080239;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N1d4VruYCFWZM4T5uYHpWSgV6rWwaEi0uyd3VLge4Tk=;
        b=wJcYqLrdjNcdMAbqk6s4Qff6LGdIRoh2SvPczLnyMOcVIn4Wq0iE/NIdpsFqZ3gwcT
         6MAXNg6wT0HGSfEDoi33OmbatmS73E94Cng2U7WQzNkIsf1fSX1KkDFkXrr0B6x4+gCS
         R+pAhhFUB+wnQ9eIt3CHcpac/NJ6CAt81GI4xQM18JFQf5pnnQllAZgM70UuQ3pmL66d
         tJ42QzznRNPoohqpAuxP5vB8Ep5gugYD436StzPW7m4+8LIWGGrSMSWabRnri1ZdcT1g
         HCvL/7RVCRiNq4fleaLXjw363AHNRpM6VJHpvnFps8MCAQa5Ay2jO7houNiU90jkKFY2
         BxgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYh/o34IjzaC+X/Igd7Vd11HzfafLXMSFHDFdk6Lbp/c6+nvIS9rEVjSRhmW/uEvdILz8mi/cXVfOGBr44IIyNDDtiyRn4FPfDXQ==
X-Gm-Message-State: AOJu0YzJEYouADFn0QP4hAd4SX1qfrre+JXkMJ3C76uZmnx6P8U3ousx
	6zjxp31l4BwOaQ121UTvf+gTD85DtlVcM0+OL07gdMbU2OgzUEfhxW4p/DPrsnhiJZvOFqYUBO7
	e
X-Google-Smtp-Source: AGHT+IELWqHQbZ+fH0diXz/AcE9JrxvloE+lldn1qR/v72ZClVly6EhcqVcwCmZheGpIAWUSIs0RWA==
X-Received: by 2002:a17:906:3085:b0:a46:d041:28e0 with SMTP id 5-20020a170906308500b00a46d04128e0mr292717ejv.59.1711475439043;
        Tue, 26 Mar 2024 10:50:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id bw2-20020a170906c1c200b00a471b5b25b9sm4438451ejb.127.2024.03.26.10.50.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 10:50:38 -0700 (PDT)
Message-ID: <5fb55234-4afd-4e6a-9763-4d2e344e0ce6@linaro.org>
Date: Tue, 26 Mar 2024 18:50:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: display: rockchip: add missing
 #sound-dai-cells to dw-hdmi
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, hjc@rock-chips.com,
 andy.yan@rock-chips.com, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240326172801.1163200-1-heiko@sntech.de>
 <edc0bfa2-7984-4d9d-ba25-4805ee0be679@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <edc0bfa2-7984-4d9d-ba25-4805ee0be679@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/03/2024 18:50, Krzysztof Kozlowski wrote:
> On 26/03/2024 18:28, Heiko Stuebner wrote:
>> The #sound-dai-cells DT property is required to describe link between
>> the HDMI IP block and the SoC's audio subsystem.
>>
>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>> ---
>>  .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> index af638b6c0d21..3768df80ca7a 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
>> @@ -124,6 +124,9 @@ properties:
>>      description:
>>        phandle to the GRF to mux vopl/vopb.
>>  
>> +  "#sound-dai-cells":
>> +    const: 0
>> +
> 
> Then you miss $ref in allOf to /schemas/sound/dai-common.yaml

I meant, except your change you should add also above $ref.

Best regards,
Krzysztof


