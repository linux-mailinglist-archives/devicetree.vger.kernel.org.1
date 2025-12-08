Return-Path: <devicetree+bounces-245131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8D8CAC7E4
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 09:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CF3A3027DAC
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 08:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230AF2D5410;
	Mon,  8 Dec 2025 08:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gediukZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B40074BE1
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 08:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765182424; cv=none; b=jnOIfczUJx/GLaxKZaq037yYYBTqYeTS+Hauqd9JI5qLxtVp+M/DmJ8wJsREI0BFwWTgJuAzfw86iroHzi9JoEuL8/dPE3WxJ5djY7QtkvXS4Wst0RkRN8Ol1ehknq0VT74w0fKL9S8WwW4cm8nyN+tXxzjMSt/T1daCqSXOpNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765182424; c=relaxed/simple;
	bh=KUZf0NaAsjG2/xo9hroHf7r6GJtFug8vRIKYlchsuJU=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Pf94E4j+NInyxqUed8XCjQSJLdE4skEX46SUsbGHGXjrNjADRUfUvuoDFzjPM3IUMwzzP6jkRQGFisR9qn/xwmzPbuU7Q+XdZw4CFAl+v+RBsRyGwtYzfFZIvgWX3RBj6b6sJssdsqjn7U2KW32Ma92LlCXaA6q7JGTu6qdfnhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gediukZm; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4779cb0a33fso54668425e9.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 00:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765182421; x=1765787221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fxiuul39//eHDPIQVU3tjrG5nvHMIqLaq1V1Ix9xst0=;
        b=gediukZm7DifoWqCNQti4xoljvYwIfpIu2E5E19+yFJ8rx032d+TkRNNqY9XtTjJYn
         65D4a8Hg/FNu+xKgB31pPewsdGtL/hu3mKQY2n10pioHw5v7w5lab6bhtTBialT3WcR4
         1zLsIvouf9UQSc4IuHLT5fkWtJnvu6Pa4TKYnKH2v+kpRhoj5nh4z2WVv4hTfJqJV4mz
         NqxRBsWn9zcMhvHUetBG/E2EGPFoXW7lzGRLVvL1i/rkabjb+6Fq2Y/NG9xca18VKFzd
         sF7Dj3fZfStXP3H0qvpo7ZQeAOaApEgutVbXg0tcpoP6Ad+UYTQ56D2u9djmusU8x2i/
         mBGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765182421; x=1765787221;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fxiuul39//eHDPIQVU3tjrG5nvHMIqLaq1V1Ix9xst0=;
        b=LhbNZflVLbNTmChlcoCkw6zVRH1fTVh3C3EE/VmhoBgFPoJ3Ce/7VmgwpakDahPnRR
         i0V4mE1rsMUCQlNADGnz6+LTkbabSkiTykbiVkgH1Pw4ENrNxzm+Bk7ATsKuwl1HYfrx
         JFrfRUC3Gp9Z/jOBdeJNi41r+lntUJENIc2BosOh8jZmE2u5hjiogESLEKvJO7xJxmBk
         BiNX0WKfLId6S71xFkA5dOa6M1bAM6d81uwxkVVDkCCjZzlNEOFGQsGFnBq/TWLVM9O9
         5PEX2pEeJEd1IZ+/IIWSoq11yTYgiCZjfz5kfJZOokAhqb7rgxICxggzXJXUUG72psd4
         y5AA==
X-Forwarded-Encrypted: i=1; AJvYcCUo72sT+wfNaSkJQOBXOTjij8AzN4Nkj5Yp7XaoOKPeaqcvW1eUYZhLpvPSdg5o0n4MVIaQaV3uUadY@vger.kernel.org
X-Gm-Message-State: AOJu0YxWnclGhpqRGOUfvGZCOlXKLmBQDkQagBgM5kOHHgR2/uM9rI/b
	s2dkOjy9HXLkZ8Bq7Ib0olcTkddSFHscbwIU5vE+9HdftO7ZbW31KeKf3fsfGoiu/UY=
X-Gm-Gg: ASbGnct+9Io0ishyO9S3B1k33S1kGqr84GbQ0RhB0vBZbBI8jmH0kX+SXdTL2mgSHBv
	9ipyqWPRJE4gfw2UN8oIvRHDXAFjXnH02xvJ6rB00y4yHHxn15Olc8rdyynSfYJGz6Y3OaCg0zC
	SAwvIa4fQs+hLT96phEFMaIiF/GwnbBs3i7O1JJ6sRmshlQyrxHtupA9ucKsdv/sfq5LZcIi3WD
	4Dwbo6ePUUI6Xmsl0yuaOQdXYap5izYPI1OBZvJFmEmPMD4X7g6MssGsf91ylMLu57AwmScQwAj
	CrptmYoqkxlMDbzRuJiQ3E5CJGdFcJh+V8OXiBZM9KlSWP+XAaQdmx+iAB/zM64niri7BB9/7Ee
	qsv1tRL1vCEhHC1jxSH2iKuEoAajL4s26og0Fa3vyxzxkSnt7Qyyu9DxzoTtP9zlKdJLMvbi/8O
	zwoo6GBv8cdb/MyyZUrMF19M75ikfKfv6C8NLQmUeFHi2Lcm7639+q6yLNvGnNthc=
X-Google-Smtp-Source: AGHT+IG7/KxJX/PrR8byjKM6CEOBSuBgSzjipyyPIwvAVWGbPVrEHMXn/wQ6EuuvvwmxRPZFW0M6fQ==
X-Received: by 2002:a05:600c:1897:b0:477:af07:dd1c with SMTP id 5b1f17b1804b1-47939e46ef3mr55606715e9.35.1765182420592;
        Mon, 08 Dec 2025 00:27:00 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:229c:a4f9:5a3a:cf5a? ([2a01:e0a:3d9:2080:229c:a4f9:5a3a:cf5a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331aeasm24066116f8f.37.2025.12.08.00.26.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 00:27:00 -0800 (PST)
Message-ID: <481c8d6d-5ea0-46c9-97a6-f41f1a75e156@linaro.org>
Date: Mon, 8 Dec 2025 09:26:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8550: Fix compile warnings in USB
 controller node
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251203144856.2711440-1-krishna.kurapati@oss.qualcomm.com>
 <20251203144856.2711440-2-krishna.kurapati@oss.qualcomm.com>
 <56c75c6c-e6b1-4acf-855d-c5d420d001f6@kernel.org>
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
In-Reply-To: <56c75c6c-e6b1-4acf-855d-c5d420d001f6@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/3/25 16:07, Krzysztof Kozlowski wrote:
> On 03/12/2025 15:48, Krishna Kurapati wrote:
>> With W=1, the following error comes up:
>>
>> Warning (avoid_unnecessary_addr_size): /soc@0/usb@a600000: unnecessary #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" or "ranges" property
>>
>> This is because the child node being removed during flattening and moving
>> to latest bindings.
>>
>> Fixes: 33450878adfc ("arm64: dts: qcom: sm8550: Flatten the USB nodes")
> 
> 
> I don't fully understand that original commit - it explicitly changed
> address/size-cells from 2 to 1 and 0, so keeping address/size-cells was
> kind of intentional. Anyway, these should not be needed, so:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

They were kept to allow adding usb submodes representing usb devices,
as the bindings allows. It's not _needed_ until we add some subnodes.

Neil

> 
> Best regards,
> Krzysztof


