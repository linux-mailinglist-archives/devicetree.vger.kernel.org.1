Return-Path: <devicetree+bounces-12927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 616857DBF0D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 18:35:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92D811C20A5D
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 17:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3388D199A5;
	Mon, 30 Oct 2023 17:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TruoFpzV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C89199A3
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 17:35:26 +0000 (UTC)
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 523B3DF
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:35:24 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4079ed65582so34783645e9.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 10:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698687323; x=1699292123; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nipwrIiQ9qIakWKB9HI2X8+oLNnWSz1aN7WP7LIPE2A=;
        b=TruoFpzVfHsgkls+O/cQUBoz7oTGfQlVQhPuNaN0j+UfoREn3oMAR5lpLgqjVKJAYz
         eVib9msw0fgEIj4mxf80E4vY1gzOquduYZjjDpd3rzh06ez/adlDHH3EQQ1AKk/ie0w9
         VpNNjMnycM292v3zkRu+xIvnl/35v7seFjDYsXGYyFrNc8yFPJd5PuOF7wePLqbXlqqJ
         0smR0AgEoDNaIzgNQYTkGl8HBNiHlJkDZvvcI272tHoQasi0krPjhSq2aBfkFwQQBGK8
         W5Z4hrhwHEmM13jkWq5C/u05cDbqbwuvGXO1RFAeS2hbQX1SFAA8aJI0dFL3tpOtKRAX
         c98Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698687323; x=1699292123;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nipwrIiQ9qIakWKB9HI2X8+oLNnWSz1aN7WP7LIPE2A=;
        b=L9TlxezB+reKS99KESxD5rgqmr3Ujv2kIZhfGnyXfCG3O9LmkvBpADMe2GB9DrLsQU
         BAhgWu8KdY2f+EbklcKRefsi+/1DAl2+4mFaMsH/Go/qLbMJaI3tBTTmDyqpQjddXE5P
         4DXa3ytFTS+s67r2VLyp9d2scXLKE4GcFguXED0bkBioxuJE44rOzApwWw0+/AseinvD
         PuRStiRQmoPFqr9O6ZdjFzwZLk9rCd7yfsaF9d5q3eMmh92ApMc25+GhduyUKG4Vzjo0
         QoexIGELGcpDoE4wWNscrTyO/5Jb18/hvMWmi+ESjBl1BB6z5RBskXi+FO/3sOoZps2x
         iMcA==
X-Gm-Message-State: AOJu0Yx9MYvc0NmIKeyeSQTM14ES1TdGSVfQh7BkHp8sYWf8TvACwtQ8
	Ib1rusWgdHblKNzkUVK3dI+/9g==
X-Google-Smtp-Source: AGHT+IHAME8z7wSxO+W3LSZkm/MTA1CyH1w3Uh6VQrNuYHT9ioPjZsDoHigiHWQWI/RBc/VGIa05zg==
X-Received: by 2002:a05:600c:4ecb:b0:407:58e1:24ed with SMTP id g11-20020a05600c4ecb00b0040758e124edmr8321278wmq.39.1698687322648;
        Mon, 30 Oct 2023 10:35:22 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:a05f:dffd:3e08:6b03? ([2a01:e0a:982:cbb0:a05f:dffd:3e08:6b03])
        by smtp.gmail.com with ESMTPSA id a22-20020a05600c225600b004078d71be9csm13104493wmm.13.2023.10.30.10.35.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 10:35:21 -0700 (PDT)
Message-ID: <63beeae0-9362-47d1-bca4-f016dc1db48a@linaro.org>
Date: Mon, 30 Oct 2023 18:35:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 01/10] dt-bindings: clock: qcom: document the SM8650
 TCSR Clock Controller
Content-Language: en-US, fr
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231030-topic-sm8650-upstream-clocks-v2-0-144333e086a2@linaro.org>
 <20231030-topic-sm8650-upstream-clocks-v2-1-144333e086a2@linaro.org>
 <fbf736d9-ed42-4c7b-95fd-769f92838268@linaro.org>
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
In-Reply-To: <fbf736d9-ed42-4c7b-95fd-769f92838268@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/10/2023 18:29, Krzysztof Kozlowski wrote:
> On 30/10/2023 10:57, Neil Armstrong wrote:
>> Add bindings documentation for the SM8650 TCSR Clock Controller.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> I think my comment from v1 was missed somehow. Why not squashing?

oops indeed sorry for that, I need to resend a v3 because the GCC patch is rejected
by the mailing lists.

Yes, I'll squash it.

Thanks,
Neil

> 
> Best regards,
> Krzysztof
> 


