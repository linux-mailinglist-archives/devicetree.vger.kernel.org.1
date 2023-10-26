Return-Path: <devicetree+bounces-12087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DBE7D7DC5
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 09:43:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B65EA1C20DCE
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 07:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0015B168A9;
	Thu, 26 Oct 2023 07:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yRNJ4RwR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DAA3C34
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:43:37 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 349A318F
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 00:43:36 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4081ccf69dcso9960175e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 00:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698306214; x=1698911014; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iT0pJGgpEn+Y4BTcRkM01vVuWXFxY/vEXDXIX8DeCXY=;
        b=yRNJ4RwREo6A9AV6XW+/1GFvhRIcomSc+PJGXAIBDIi2iguZ/dwXgyhTeCFPLjir3T
         SIjelf8+ygfDo+KHq8m+VhOR3xisR7dKOUVFznEuLBIBQnausxMYVW7FfR7vk7NUUK98
         RqiMSWU260aGN0zBmVBUnjjLBzhoQTK0B/TlA5QQsgfxI5h7h8WFKdabDY24D5s/X/ze
         GhIg2xGlzOe5sIZ8HObOXgi7JDgMqJhadbNHQ+HOEbi+6Hzn+Jl4KiA/v3pqDikbDTXJ
         zB+WjaPL/9pgD1HyP1L3Xe8QflLoduecTr1TgmIU9e7HDlxSajJYlqfo6JS6UCbRPxmt
         dzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698306214; x=1698911014;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iT0pJGgpEn+Y4BTcRkM01vVuWXFxY/vEXDXIX8DeCXY=;
        b=htjCeqzvyEzrl7ORR3MawpmLJLynll6BlPAO/taV1ecNjt/yOKEzzMCVkxAZ7QT0He
         CFBIAA7GsRe2xt1iCFI2ar2zuCfKFdgA+azbpshfqh3zTu0Y9FNhmfTSzfM+TuyctkzY
         pl177QFu20mgo8chSw3QEgiu4bpSMclJ3WzRiqjCnQms1VS4k3R75jhB21OfZFmZjUnB
         K9kdJgtwhnIESOC1Bw/P3g1atRyQw0G1Ua5pdA8Vo9cMnhezuekVmGjuDE1oyzoAIDhx
         tBp8T7tuH8ZKdUij490d+7rlEa1eGsVtvoXgMtgD22GeNNYdzyKfKLtLl+gLkaGmppYX
         m7fA==
X-Gm-Message-State: AOJu0YwFWJbUBqWyUusBDu45C+J3on+prfzMO0nPe/Yo9B6TfEUCze88
	ZJjIWIthrWUBitnzFqA3DkmX8Q==
X-Google-Smtp-Source: AGHT+IH9/t6VXnuGSglyx8gmgCHAbA4Y25dbJPKrDFQ48McZAXhVPSSz9eiWcwu1AVV+0GCZP4y4Ug==
X-Received: by 2002:adf:efc7:0:b0:32d:a366:7073 with SMTP id i7-20020adfefc7000000b0032da3667073mr1751749wrp.14.1698306214576;
        Thu, 26 Oct 2023 00:43:34 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:f57f:eb08:d29b:8c9c? ([2a01:e0a:982:cbb0:f57f:eb08:d29b:8c9c])
        by smtp.gmail.com with ESMTPSA id h1-20020a05600c498100b004090798d29csm1775761wmp.15.2023.10.26.00.43.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 00:43:34 -0700 (PDT)
Message-ID: <95ec724e-27c1-43c0-9f2c-99934c5ca3c2@linaro.org>
Date: Thu, 26 Oct 2023 09:43:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC 0/8] arm64: dts: qcom: Introduce SM8650 platforms
 device tree
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
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
Organization: Linaro Developer Services
In-Reply-To: <20231025-topic-sm8650-upstream-dt-v1-0-a821712af62f@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/10/2023 09:47, Neil Armstrong wrote:

<snip>

> 
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ

As it was reported off-list, there's a typo in the previous URL, like in the related cover letters,
the correct URL is:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

I'll keep the previous URL valid to avoid broken links.

Neil

<snip>


