Return-Path: <devicetree+bounces-165776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 998B7A85691
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:32:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7051617A85F
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 08:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17152293479;
	Fri, 11 Apr 2025 08:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aUQIqskP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8D37083C
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744360351; cv=none; b=rBT5DaSmM8elGKqTY9ec4h50aPG+hs411kOetp33xWeUI6/IPjkuhdzOLKYWhtjjnNkHgWcWUH+Apa1BTH6rUNUmuLvxEzioG40VHsJT6A+91YMmoE3kPKbLg+vIWBargYmh7zxUSyLX42jpeGys75lkPp82KHJtdWDv3VRrmN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744360351; c=relaxed/simple;
	bh=eQ+8kO7NALNUpw/GUPvuQGsb+cj20dj1SWw9vWWBVE0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=itIktDXw0b8EwyseSraL8W+oEuckj+JYG43BuHbopTfxwWVH1KCcQKae5N0tt90ApMeLmYlZ1qoRQJDycZoFvoiutfyBBIaiHURFzEe9Fq9F8IOY9kG194Czu/l27KLaXcmA/tQAuJ7PsOv6pajX8WRlyB10g+QxNH+RkVNlv+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aUQIqskP; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cfecdd8b2so13030735e9.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 01:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744360347; x=1744965147; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pyJXtMKyLy/gns1v7npOhaJocsF372rKr0wtnaGZSjU=;
        b=aUQIqskPPqWiAjXaE1FKSBLY2Q8I6jw3+i53hywHTj9TWpp2rBrM/EuHF6AgNc52zS
         nYnqUyLrnFgg1WOs4cZxiH0183CFIVb5zWbfQ9+DVBGyfsEcPoaAEBM6Vh2NB9Insr2h
         /ZXxynWIKl3wA+SgvvUimZcQmx5/koxJlDDL2xUbgEAsOVj5nrL3cCqIU9OatQ8rSVZF
         BWMOHzsGMP1VYwF9p23kef+/f5Y2oFDiENl3X/m2snGslELCspu3Wfh8zJ3KGmLfJlJl
         kv7njtbklON35oaIiyfU9vtPyCmj2JIw/8t0Vx6dLnDc/Lzw+R1ZTMITv1wsL/m1SpGe
         WOHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744360347; x=1744965147;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pyJXtMKyLy/gns1v7npOhaJocsF372rKr0wtnaGZSjU=;
        b=hMPap1cYS3bkqJRlXbudO3MU0vohjiL9JiyqkEfVu6zk9u4PRUrAbkNQr18j/3DrQr
         e3Ct/SweDDo6PtxlygxtWTt38NhrALYuEAKGhGzPJxXTVnIQwc1Qde6RoJe/o5FTduTh
         rs7q8p7b6SAniqtwlKBI0jZrfakB/2mLnY2sy/8SeldEcmeKTy9p2DGV6Xdp50NsvOEr
         jBnqtJGIqq0DghqHM1ZNbB9t/yTWZDIUQxpIR0ddqHy/Yukipc61GaK2vfTxl/kX6Fms
         yWdK2moWqxkNgF3Que69mSmU6iXNM33ZeflHtFtITrb3z4xGxZATE0i+WP58JLZe/PPQ
         7iDw==
X-Gm-Message-State: AOJu0YwvXw6NQNu9Sky676y6XtYSIiXAYA8n3IE3fg9dU4MFFuscgXVH
	EgYu8ptp7yFg3u1fiq2E+qGaiQ7k/7sohLikPPdI/bsLdHszqVaijmHdV9vllIU=
X-Gm-Gg: ASbGncuqXbB73Ul5S+iwxf0lv0OXjY/pBCIjz0eMCUpFQAaxxjxHQLu6E6FOrVKrGuL
	T80eAUvybrm4oJtv/HBnwFkmzoOuVXIvAhT5iyw4bvOHsBR3+eFBhfuW9IywQ7eUjSm9oVf2b4b
	9h1q+y8eaaowqtpVxt1Lli3N8NLmmc/EM4VZ5MkuwudAI1lIJNeJCz+TuCFD1T3LNaQejypadsb
	niBs3xEQz4NVWMry3DQYZoyZpN8YsySTUVf08i7brn0tqKRFCdtD2O8U0RyJsMDAqdtUiCW1Exi
	zNHQfXCjey8aCzNwqJoam4XYCI4sW6dHffVw3YaRvDb/04nzp8g+KZPgzM4Vc+X2HM4MBzGlBv3
	RKBHCjWHO6XGAbJTBIQ==
X-Google-Smtp-Source: AGHT+IFRP0ceYDboDUf7YhFap3N+kvOHTY96QqO4YWtRCrLo1IyOLrYHKFOroWBQKK4GWZyRGmFbMg==
X-Received: by 2002:a05:600c:1546:b0:43c:f597:d582 with SMTP id 5b1f17b1804b1-43f3a9336e6mr13947315e9.1.1744360346497;
        Fri, 11 Apr 2025 01:32:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:f77b:949e:1d61:69a8? ([2a01:e0a:3d9:2080:f77b:949e:1d61:69a8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f23572b5bsm75951255e9.28.2025.04.11.01.32.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 01:32:26 -0700 (PDT)
Message-ID: <ab32c7bf-7788-4992-83a9-26963f520455@linaro.org>
Date: Fri, 11 Apr 2025 10:32:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 2/3] arm64: dts: amlogic: Add A4 Reset Controller
To: Kelvin Zhang <kelvin.zhang@amlogic.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 Zelong Dong <zelong.dong@amlogic.com>
References: <20250320-a4-a5-reset-v5-0-296f83bf733d@amlogic.com>
 <20250320-a4-a5-reset-v5-2-296f83bf733d@amlogic.com>
 <e01d48c6-287b-476a-b5ca-de670375561d@linaro.org>
 <8a0f383f-e100-4928-a040-91ec0aa9aa6f@amlogic.com>
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
In-Reply-To: <8a0f383f-e100-4928-a040-91ec0aa9aa6f@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/04/2025 10:23, Kelvin Zhang wrote:
> Hi Neil,
> 
> There’s a conflict in amlogic-a4-common.dtsi due to recent merges.
> Should I rebase onto the latest code and send a v6?

Yes please rebase on top of https://web.git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git/log/?h=v6.16/arm64-dt

Thanks,
Neil

> 
> On 2025/3/24 15:06, Neil Armstrong wrote:
>>
>> On 20/03/2025 10:42, Kelvin Zhang via B4 Relay wrote:
>>> From: Zelong Dong <zelong.dong@amlogic.com>
>>>
<snip>


