Return-Path: <devicetree+bounces-12743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 398EE7DB522
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 746881C20A36
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 08:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EA3CD2ED;
	Mon, 30 Oct 2023 08:30:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SypD02Qp"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F240AD2E9
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 08:29:58 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16BE0AF
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 01:29:57 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50797cf5b69so5762484e87.2
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 01:29:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698654595; x=1699259395; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rnpIzjbYLIpmyoln4TxTiMzbHo5KIuPiksSLMxx86Kw=;
        b=SypD02QpGbCY8EuPcxe25cw59pDZFne7kZN9d/b8oXtPYo+Ry72i1cb2kCa1yp1p3v
         7EmRCkkc4l9YrvCOaJyjRr8LDVxF95PieIBrYE5OyfHFQE6Mp7QYSeYOgzCfSXykvTHY
         aONuaxzQF5foAT+4a7xTjTuKu3kBBWCtmd+AOlVaUOpGg70QaFhx5BPvo8iKt82hyvjY
         Bry7tL7aiqYOrgmlczzOZA99eMN+PtgERkkOJHZrw+RQD8o1g3roReaJdct98EaL/I4I
         Adj6kRG2QMKuQ8n+9TrQqPjw1iLHnX/zsEqxZImkcbtSVmhy7vCkdbkX38+Zsl6aKeh5
         I/Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698654595; x=1699259395;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rnpIzjbYLIpmyoln4TxTiMzbHo5KIuPiksSLMxx86Kw=;
        b=osJ1rwcY8AE7O/7Pmiuh209PMWM9KbzhbihAxnFqMJmsGaIhe3tCgo5TO0r7ViYM7Z
         9JwPz1KwHfYwfD9MlU5wxsGV8yaESfj0pyk8XkgnlEfxdfv3pmLZd314D8ZX1V7bRmi8
         D58kk97rAVUJptbUqcDVL6w/FR99RjgWl+WvGSSRLRxO3Z34nJWs2Ea9xLrMYm7QamdN
         6HiaISyREbWYHtZK5Lni2C+a2NQLydJfZTzUQ6etdu1mseEk6ph53t8aXaZGbPTIotCh
         PfXfLtnHXEk001J6Ijzb0S5dsnyiuMyM3cIQ6JvlEMJNSmizhjlqNLXyeRn421oCH8MV
         s/xA==
X-Gm-Message-State: AOJu0YzuKVlO+3iM7/u1R8qIl4RGBD5ezR5YIUUqPgGkQ8WbNW6/PLWu
	Fdpla+AB6UT0VBYMYJ6dZcnm7Q==
X-Google-Smtp-Source: AGHT+IEcRMWXLNodTV6mQug71yQCCf+gJGD/OjbqlrKiQem+EyurncoOmzl+I70Jm3gUJApsoX3nng==
X-Received: by 2002:a19:5516:0:b0:503:2dce:4544 with SMTP id n22-20020a195516000000b005032dce4544mr6869632lfe.59.1698654595117;
        Mon, 30 Oct 2023 01:29:55 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:a05f:dffd:3e08:6b03? ([2a01:e0a:982:cbb0:a05f:dffd:3e08:6b03])
        by smtp.gmail.com with ESMTPSA id z8-20020adfe548000000b0031c52e81490sm7729674wrm.72.2023.10.30.01.29.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 01:29:54 -0700 (PDT)
Message-ID: <469f2249-5f7b-4136-9f65-b58c9baf537c@linaro.org>
Date: Mon, 30 Oct 2023 09:29:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/3] dt-bindings: remoteproc: qcom,sm8550-pas: document
 the SM8650 PAS
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-remoteproc-v1-0-a8d20e4ce18c@linaro.org>
 <20231025-topic-sm8650-upstream-remoteproc-v1-1-a8d20e4ce18c@linaro.org>
 <a1895327-b520-4f3a-a427-0947ac46495c@linaro.org>
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro Developer Services
In-Reply-To: <a1895327-b520-4f3a-a427-0947ac46495c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 27/10/2023 09:36, Krzysztof Kozlowski wrote:
> On 25/10/2023 09:35, Neil Armstrong wrote:
>> Document the DSP Peripheral Authentication Service on the SM8650 Platform.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   .../bindings/remoteproc/qcom,sm8550-pas.yaml       | 41 +++++++++++++++++++++-
>>   1 file changed, 40 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> index 58120829fb06..316371c8ee6e 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> @@ -19,6 +19,9 @@ properties:
>>         - qcom,sm8550-adsp-pas
>>         - qcom,sm8550-cdsp-pas
>>         - qcom,sm8550-mpss-pas
>> +      - qcom,sm8650-adsp-pas
>> +      - qcom,sm8650-cdsp-pas
>> +      - qcom,sm8650-mpss-pas
>>   
>>     reg:
>>       maxItems: 1
>> @@ -49,6 +52,7 @@ properties:
>>         - description: Memory region for main Firmware authentication
>>         - description: Memory region for Devicetree Firmware authentication
>>         - description: DSM Memory region
>> +      - description: DSM Memory region 2
>>   
>>   required:
>>     - compatible
>> @@ -63,6 +67,7 @@ allOf:
>>             enum:
>>               - qcom,sm8550-adsp-pas
>>               - qcom,sm8550-cdsp-pas
>> +            - qcom,sm8650-adsp-pas
>>       then:
>>         properties:
>>           interrupts:
>> @@ -71,7 +76,25 @@ allOf:
>>             maxItems: 5
>>           memory-region:
>>             maxItems: 2
>> -    else:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - qcom,sm8650-cdsp-pas
>> +    then:
>> +      properties:
>> +        interrupts:
>> +          minItems: 5
> 
> maxItems
> 
> 
>> +        interrupt-names:
>> +          minItems: 5
> 
> maxItems
> 
>> +        memory-region:
>> +          minItems: 3
> 
> maxItems: 3
> 
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - qcom,sm8550-mpss-pas
>> +    then:
>>         properties:
>>           interrupts:
>>             minItems: 6
>> @@ -79,12 +102,26 @@ allOf:
>>             minItems: 6
>>           memory-region:
>>             minItems: 3
> 
> You need to add here maxItems.

Ok, I fixed all that

> 
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          enum:
>> +            - qcom,sm8650-mpss-pas
>> +    then:
> 
> I am not sure if keeping it in the same binding as sm8550 avoids that
> much duplication.

Yes it does, 70% is the bindings would be the same, still if it's still preferable I can duplicate.

Thanks,
Neil

> 
> Best regards,
> Krzysztof
> 


