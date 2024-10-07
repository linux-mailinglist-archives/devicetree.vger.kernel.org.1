Return-Path: <devicetree+bounces-108386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 517969927B7
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 11:00:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 760F91C20918
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 09:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E897518BBA1;
	Mon,  7 Oct 2024 09:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V2cpENvt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F1928EA
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 09:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728291624; cv=none; b=JNhmPlAKbnhKMnThbuJuteRZidWW52gvqazWKQfMytA8GmrInO/dS/mOLiVddHXy2IlbiMluTUgO5Zdr8R95OlbgCYJNONITyNreiVXB0hJwnwp1lDUxi7x7d2qWKjMmItv7otaXEJd3gYKvkMIkAsJ1m/z/GOny4IKpMcFdq84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728291624; c=relaxed/simple;
	bh=Tvcs9sYQHOdju1uSjxDitPtHC+c46V2B5i6PDIRp4y4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=uBF6eoYyGsTfIhpsNeyFU5ZeWdKy/ZZZmwTLuERdDJmZkNxAjAoDH62OmD6tlPd+5xLcVnZYeKQuR0ftkSQpTNmZpuFjPiPsoHgFkQ33ehpa3GDFzASWIClWRtYEuwbjj8IdsQ3d6syjZLzo5tHRajb40HAQXHaUi4p9pe/fNn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V2cpENvt; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-37ccdc0d7f6so2677244f8f.0
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 02:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728291621; x=1728896421; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EpuhbLasEadVeMuVqG8sosX+rym3WCHEJ89sUQ5d+fI=;
        b=V2cpENvtr2QHsJnU/E8rvYZ9nDUMAAcP6j5F7w+LBBWXCbwtxnuz4fw9KL1QfO0z8e
         WIxMdMJnVf7/XXxbAg6h9vjKifma57E8AZvPVdsRHalon+o4OhuJA0I9cm4ifqGin74C
         OyMXgnERk8RlOcROFMea8C2RCyjK2SSxoFzPrQUsn9j9lCJn43bgH8qRr/MW/xrvHwE0
         NP94PLMO5x+VLu4+qKwY8hhRVQWX2jyWMrcYki18Q5Mn8L7qJnLhjj4vL9pl8WqI4Ax/
         DDbbNa8JDlvORwSyTf5pkt57SJZ+SQuUijTmC7sITA5agmPvAiCzmRtnlo+GAJjhwQ/I
         PG1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728291621; x=1728896421;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EpuhbLasEadVeMuVqG8sosX+rym3WCHEJ89sUQ5d+fI=;
        b=Rttv94R40pjIioq4tYEfYyu6FxX0qo/2y3lykmbqPJFQBSJEFWIdRQ9KVR5kn9Bo28
         rD9dDVOEhNNWH4KN6FvfmXGJncnQH+8I/D09AriH1lztexAimZYngnbm0Ys8TArLz/BT
         DNaUnep7Hjlh3aSfuDqZPXshj8JKa/osuy/eue76/HwD2CrTL1QQgnnUwB3GCPRlXZ1y
         X4puxzO5bv6tpYLjAxxx/PhadgZco9H60xaKWpCj0iQmAeRxCnPiJOXYK76Ku8B2JP2E
         Rlw0DXan6iX5hZ8vmFKdadT4WbNVkLtbd08yvzOn3c9B+GABc6JR/At9GilY0vCH19nq
         W+Sg==
X-Forwarded-Encrypted: i=1; AJvYcCUWlZLZJxcvebzciy5wiB9E8TpwOahMsUyjT0XTax7YXfZ0kE+AxW6gUS4+tzCCvwdktJP4G5jCNjlN@vger.kernel.org
X-Gm-Message-State: AOJu0YzDa/RJps3+Ext2bSlIgcMtp94FVwss+5z10Jh9QZH5gG+R1Iw1
	oeDpC/1N+JfgCOkzFPPru1Rzaec9Bv2lkjfrslEjP/ma4CZ9b055ucoaRJ6GJe8=
X-Google-Smtp-Source: AGHT+IHjPdkrn1WCWqVQPWn/3AXhMdcCGbb+rmueJ3DkfERdPUW77sBkwqH9tc7v+VJ0Q+jVuYVwxg==
X-Received: by 2002:a5d:4eca:0:b0:37c:cc67:8b1f with SMTP id ffacd0b85a97d-37d0e8de221mr6087900f8f.48.1728291609655;
        Mon, 07 Oct 2024 02:00:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:a99f:3c24:fa3b:1e7? ([2a01:e0a:982:cbb0:a99f:3c24:fa3b:1e7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d1691a4eesm5210437f8f.31.2024.10.07.02.00.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 02:00:08 -0700 (PDT)
Message-ID: <818f287d-4ea5-4899-b4a9-98accc1be049@linaro.org>
Date: Mon, 7 Oct 2024 11:00:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/3] dt-bindings: mmc: controller: allow node name to
 be named slot@*
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240920-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v2-0-5aa8bdfe01af@linaro.org>
 <20240920-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v2-1-5aa8bdfe01af@linaro.org>
 <qt3ivwsa3uaidcgkzbd2ewohbyd6zbzseraihftdhxpziuhnpq@xsne3f4wdfua>
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
In-Reply-To: <qt3ivwsa3uaidcgkzbd2ewohbyd6zbzseraihftdhxpziuhnpq@xsne3f4wdfua>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Rob, Krzysztof,


On 24/09/2024 11:12, Krzysztof Kozlowski wrote:
> On Fri, Sep 20, 2024 at 10:38:03AM +0200, Neil Armstrong wrote:
>> In preparation of supporting the mmc-slot subnode, allow
>> the nodename to be either mmc@ or mmc-slot@
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>>   Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
>> index 58ae298cd2fc..f797c32ea688 100644
>> --- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
>> @@ -20,7 +20,9 @@ description: |
>>   
>>   properties:
>>     $nodename:
>> -    pattern: "^mmc(@.*)?$"
>> +    oneOf:
>> +      - pattern: "^mmc(@.*)?$"
>> +      - pattern: "^slot(@.*)?$"
> 
> I don't think mmc-slot is allowed by this.
> 
> This should be squashed with mmc-slot child patch. It does not make
> sense to allow mmc-slots if there are no mmc-slots.

Right, I don't like this oneOf/pattern, slot@(@.*)? should really only be for slots,
by I do not see how this can be achieved because we can't override properties: pattern.

Do you have any suggestions ?

Neil

> 
> Best regards,
> Krzysztof
> 


