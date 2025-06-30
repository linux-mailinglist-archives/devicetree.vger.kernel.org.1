Return-Path: <devicetree+bounces-191177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 31958AEE31C
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 17:56:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C304F3AD663
	for <lists+devicetree@lfdr.de>; Mon, 30 Jun 2025 15:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD48128EA7C;
	Mon, 30 Jun 2025 15:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pR3jSoX/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF18F28C2D7
	for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 15:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751298972; cv=none; b=Zx7K8SEjHdWtSB2p926vnjfxjVp1F/HLE44Otb43DhCcZo3SvyLINAPxfaa+G/FNWODaU5ZliUbr2F2vhTAwvi1foQxd7va2aaKZmgy7SIvQ3EhozB8OW7H8aW5OGressZhgnIqguKCX65Kps9zEqIbHJMGTAU2g0RkVnNRxa3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751298972; c=relaxed/simple;
	bh=8ChK3GfAZV+x4rh38MnBCrnShQDMfZpC86IijoJOSHM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=iczCw7ioC6R10DjU0rsTftcf3BvzL1pb9XfXuDS9CWbTYLsmfhsfPA4C9rqJT/hpjRRA7+W5CEh2A76Q/Gtv3rcSX9dbZYkpORclpjgLp8v+lhLtp75UNTMzZMA1cHK8GCrwjSlipX77MYLNEjJ8678nDJBeHGmSU3HFRnOLXbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pR3jSoX/; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a4ef2c2ef3so2070543f8f.2
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 08:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751298969; x=1751903769; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zv1R+liObZffGh9SjCgASb7RNDkNxcrDa1lYYKn/6XI=;
        b=pR3jSoX/h32/MyPyO4IQsOwR8n8tT9AOg6j47sjfEvP9UwOf0JvtUgVNybkvIj7wbT
         gLFO1y9SBnZJAup1Og+pR8+PxRHaHG9oIulJ+CplePPXlaHp2AVryPOcfRGJ5ggX+1fO
         G8bmicBrllpYf2I/1KnQLadFEkRgYigNaGgP3iTuu/A7NkdT+h9AJ79drrNn+QqxtIiC
         h5RBbKYFdJfC/N+/RX1XAG9COJQlqevikotrzF2BkDaqrEUwlwoP8IoV7sZwQuGs80dF
         OkW/+eV2bvAQHSoT/6Aav6mSYnhd2XlK/3efkDr7UA5MJrmdabjj97otXLOcLg3WtrDJ
         XRcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751298969; x=1751903769;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zv1R+liObZffGh9SjCgASb7RNDkNxcrDa1lYYKn/6XI=;
        b=NmfbvvXSfg1M56vvvdYhauOSVRVF9Yj+MQMzx8bfJBtQM8NHDSEDb/8EUzBz3TCc6W
         tBNxw7pg0ROljToAd+QEbhzKJS5yCTTCcAEg39pAdEZQHcKvTHbnjheNfxQRBb9DiIU0
         ScmAoRfuzMvECykHUJii5J86FvPghzdSDYBTs06W8nTH3S9sWOuF7QO1hIN8+8wGLy/h
         OKgp4o5uNKUMNwciEeweKf6IhlJ6BbzjqqljUP5W6si3E0kxJbRuyUcrKEjT92pmNrq7
         z1QNK0a9V3KsSeMHTKLu/clbh4qyQnBcx8DX7oV6oD0N/BUe0gdaJUMdRiH9wlOeWtrL
         YWjw==
X-Forwarded-Encrypted: i=1; AJvYcCWF4vFmNQS6itFIwJXCQegktbI345s24agi3dk3ivS/E9Jq0LZ2uCJSdVxJbfpwD+/DgzJspbnp1VNC@vger.kernel.org
X-Gm-Message-State: AOJu0YwIgUXNMlrOhD0GPoxmrtmCT+RUBvgepNz/hVtOT2GSA10NeVuB
	lak9wrAtshHIWOvB9SnNEmG+R9HRn+8JqIE/v636q0cxsHsOtIrU2StDAvmUFFGi6dE=
X-Gm-Gg: ASbGncuhMHmqy2up0t2lRopvtrQHg8Si9W5iOz95N/m1jE/X8xVHz6JKLJrrnIetbtj
	owbXdDE61Y8vykMKd3nU1Dz6hwUlrR5mhuhta+2dWdxDkoiVIU0dkN7qPFaEgQVwsy6XkGaQUIu
	7TRn85A+SfDFhHE642smOVle7+sWeixen8ukhhFPlaizYsrqwR71RrwRqucFhflvFmxU8pF7mU6
	Dg7Tg7Drl8CAybHISmoCylXpelUws0eH7zixJjKD/TRIIQqLp6RKYRsOeRzB8TQ4M7z60IMYwIE
	psttj01U+0wEOQKseshZ4CYlX4lSRmJ0Ut1piqQLFUBvcBHdrgDfxqrwZvOEOC0SuI3R+DxiYbF
	Q+3Xpb290J52RW53zsOuXOtbSRuJkzDPmpxqgFfU=
X-Google-Smtp-Source: AGHT+IHE4ylXr5wj9rjoDDdEAdrOKOzyOqAgxtAzQmMsh7srA/unOgs3g1o+v7xsydxd6r4ya+2ypQ==
X-Received: by 2002:a05:6000:4182:b0:3a4:f6ba:51c8 with SMTP id ffacd0b85a97d-3a8f482bc72mr12538950f8f.14.1751298968999;
        Mon, 30 Jun 2025 08:56:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:abe8:a49c:efe7:4dfb? ([2a01:e0a:3d9:2080:abe8:a49c:efe7:4dfb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e5979dsm10736736f8f.75.2025.06.30.08.56.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Jun 2025 08:56:07 -0700 (PDT)
Message-ID: <cb53a9d0-c503-4faf-b17a-ee2ab0764f22@linaro.org>
Date: Mon, 30 Jun 2025 17:56:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 1/5] media: dt-bindings: add non-pixel property in iris
 schema
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250627-video_cb-v3-0-51e18c0ffbce@quicinc.com>
 <20250627-video_cb-v3-1-51e18c0ffbce@quicinc.com>
 <018415b4-ce63-4baa-b8c5-38dc7f5a1fd2@linaro.org>
Content-Language: en-US, fr
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
Organization: Linaro
In-Reply-To: <018415b4-ce63-4baa-b8c5-38dc7f5a1fd2@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/06/2025 17:48, neil.armstrong@linaro.org wrote:
> On 27/06/2025 17:48, Vikash Garodia wrote:
>> Existing definition limits the IOVA to an addressable range of 4GiB, and
>> even within that range, some of the space is used by IO registers,
>> thereby limiting the available IOVA to even lesser. Video hardware is
>> designed to emit different stream-ID for pixel and non-pixel buffers,
>> thereby introduce a non-pixel sub node to handle non-pixel stream-ID.
>>
>> With this, both iris and non-pixel device can have IOVA range of 0-4GiB
>> individually. Certain video usecases like higher video concurrency needs
>> IOVA higher than 4GiB.
>>
>> Add reference to the reserve-memory schema, which defines reserved IOVA
>> regions that are *excluded* from addressable range. Video hardware
>> generates different stream IDs based on the predefined range of IOVA
>> addresses. Thereby IOVA addresses for firmware and data buffers need to
>> be non overlapping. For ex. 0x0-0x25800000 address range is reserved for
>> firmware stream-ID, while non-pixel (bitstream) stream-ID can be
>> generated by hardware only when bitstream buffers IOVA address is from
>> 0x25800000-0xe0000000.
>> Non-pixel stream-ID can now be part of the new sub-node, hence iommus in
>> iris node can have either 1 entry for pixel stream-id or 2 entries for
>> pixel and non-pixel stream-ids.
>>
>> Signed-off-by: Vikash Garodia <quic_vgarodia@quicinc.com>
>> ---
>>   .../bindings/media/qcom,sm8550-iris.yaml           | 40 ++++++++++++++++++++--
>>   1 file changed, 38 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
>> index c79bf2101812d83b99704f38b7348a9f728dff44..4dda2c9ca1293baa7aee3b9ee10aff38d280fe05 100644
>> --- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
>> +++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
>> @@ -65,10 +65,31 @@ properties:
>>         - const: core
>>     iommus:
>> +    minItems: 1
>>       maxItems: 2
>>     dma-coherent: true
>> +  non-pixel:
>> +    type: object
>> +    additionalProperties: false
>> +
>> +    description:
>> +      Non pixel context bank is needed when video hardware have distinct iommus
>> +      for non pixel buffers. Non pixel buffers are mainly compressed and
>> +      internal buffers.
>> +
>> +    properties:
>> +      iommus:
>> +        maxItems: 1
>> +
>> +      memory-region:
>> +        maxItems: 1
>> +
>> +    required:
>> +      - iommus
>> +      - memory-region
>> +
>>     operating-points-v2: true
>>     opp-table:
>> @@ -86,6 +107,7 @@ required:
>>   allOf:
>>     - $ref: qcom,venus-common.yaml#
>> +  - $ref: /schemas/reserved-memory/reserved-memory.yaml
>>     - if:
>>         properties:
>>           compatible:
>> @@ -117,6 +139,16 @@ examples:
>>       #include <dt-bindings/power/qcom-rpmpd.h>
>>       #include <dt-bindings/power/qcom,rpmhpd.h>
>> +    reserved-memory {
>> +      #address-cells = <2>;
>> +      #size-cells = <2>;
>> +
>> +      iris_resv: reservation-iris {
>> +        iommu-addresses = <&iris_non_pixel 0x0 0x0 0x0 0x25800000>,
>> +                          <&iris_non_pixel 0x0 0xe0000000 0x0 0x20000000>;
>> +      };
>> +    };
>> +
>>       video-codec@aa00000 {
>>           compatible = "qcom,sm8550-iris";
>>           reg = <0x0aa00000 0xf0000>;
>> @@ -144,12 +176,16 @@ examples:
>>           resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
>>           reset-names = "bus";
>> -        iommus = <&apps_smmu 0x1940 0x0000>,
>> -                 <&apps_smmu 0x1947 0x0000>;
>> +        iommus = <&apps_smmu 0x1947 0x0000>;
>>           dma-coherent;
>>           operating-points-v2 = <&iris_opp_table>;
>> +        iris_non_pixel: non-pixel {
> 
> You can drop the label for this node.

Sorry forget this....

> 
> Neil
> 
>> +            iommus = <&apps_smmu 0x1940 0x0000>;
>> +            memory-region = <&iris_resv>;
>> +        };
>> +
>>           iris_opp_table: opp-table {
>>               compatible = "operating-points-v2";
>>
> 


