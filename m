Return-Path: <devicetree+bounces-103157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E60979BFC
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 09:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8CE91F229F6
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 07:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBCE8139578;
	Mon, 16 Sep 2024 07:22:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IAoLbAgW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F897131BDD
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 07:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726471372; cv=none; b=Gvv85ym34zipVc/6bzR5I5T56xGCzcnHfonkkH48W7kM46er/ap5UcSBHEUTCKKJi+iioNr5UBT6Q76NRbjZyw543wmKlNJqdczuVlG/98W0KjrXAQMYjxIoTyEkuKzMm+iKtY2Myzs3vzTZJKwjJH/X6ohgtUE9OwcYunXGgks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726471372; c=relaxed/simple;
	bh=ta/AyKT8pCmax+ruvHbK9YgInTxTvOPIJRwLbQLrkDY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=ZL9izG0yIwSTbzyXc3ylcTk7M7uR4B529u2QeNAIaPkjYho5zh0l0rfN3A4t7ed5vKC09Zn7Laj9726mfH0lCyIu0p/znQapJUQYHhBOn7LoTJYIe96OQiww8luK7nzn0sj+mevCxVG1EpFHe4SegfgLVOqJEVHfvj6A3wuY8PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IAoLbAgW; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-374c1120a32so2809287f8f.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 00:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726471369; x=1727076169; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vQRRM/mH51EC/qZ7+uQmbqHjpVWrzmibnaBSD/Tfr84=;
        b=IAoLbAgWtOr0LhqewvVAqfoFfFMdZvgGYljO8vpIMZga8L3mPAMZxG//dsQ1g9fcGZ
         IQuVYky/wV0e7/5kWCsHmbhs1JvZreF7XSpxCJ9ghavDd0mtDVmlHoSRzAjJ8OyZi4Vl
         m8+2GDiSyMJTPxiMk1ZzUAiKdBF2G0keWEB7+hVYSRzYCFiIjWt2udzbvtkXnNm/dJPf
         y86+dsbKwr3/54uyIIz2ILLCw8eMgPvfrtjso1RQSmnCFnM2D/qA1N0KOXFLhog7AYpR
         ri/pr6O894jOF+Z+6+DrdgmsDLjgFBnFSTyFgeUAA9uLJyVILkzgnMYinyMYT/W/Z0kK
         CysQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726471369; x=1727076169;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vQRRM/mH51EC/qZ7+uQmbqHjpVWrzmibnaBSD/Tfr84=;
        b=UIQPDJzF+qdfanAlORGdY001Z+cax15Ev+Yug/NYq7IAVGvv76f/BDF33mBRsVgp+f
         aJkMlWMGTPIFyftIcuTUMvsXGGD01than6QLsAb7Z3sv+w/70FjoWKZ+qascmINubUUC
         CBHczBPerHWfXWAS4QrI6wQB4PIPHWlhYi6GFXn4mlHBXTGbDEfn5FXCr8Q2chYEI4Qg
         jUqjsJEt6Nr5YPGItk+5E4p6N+E1vtvygePomTsRVZMBIBShFSk6+w8gplCEp6yIyhPA
         bYYkYTC7ue9ZbhYT/NMLTttSL1fpNx2mQgsuWvMHz/nJ2RlvpOpLEni0r9QPJJ5Yq0M8
         5htQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsb/CAtntkZ6diR2A3hD3d4WWHj+x2k4lvIvHrsz8fkK8fqONBrI+NaKUgmPxW5iNF6gr/n/8I5YLL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8//vRtmLM5HZWhPQ/ur/ZzYtAUbNy2I8bdTaeHlRsYcjUf+DX
	dcHAso/FvgNWB/y1xg5TBhXxOv2pImtmBoJIHpJrhQLuvYJkuz1Jt+TwRSnjrIWO4ruupio3avd
	J
X-Google-Smtp-Source: AGHT+IEPbS68cKrd4qLSDtChv/rpC7prenEEqKK0N+FUURrEuFk2T0MKq/3LkR9Zz2z3L+Iw8e/ScA==
X-Received: by 2002:a05:6000:1375:b0:371:8ec6:f2f0 with SMTP id ffacd0b85a97d-378c2cf3d2fmr8651954f8f.16.1726471369146;
        Mon, 16 Sep 2024 00:22:49 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:46e0:9b1e:8680:c41c? ([2a01:e0a:982:cbb0:46e0:9b1e:8680:c41c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378e7805193sm6294169f8f.98.2024.09.16.00.22.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2024 00:22:48 -0700 (PDT)
Message-ID: <35989f73-5b35-4b02-91e1-146f66d78b66@linaro.org>
Date: Mon, 16 Sep 2024 09:22:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 6/7] ARM: dts: amlogic: fix /memory node name
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-0-feaabb45916b@linaro.org>
 <20240911-topic-amlogic-arm32-upstream-bindings-fixes-v1-6-feaabb45916b@linaro.org>
 <CAFBinCB8dhzNExOaO=VrDzTYLHHKUaxHZ49HzAYVnNZhAT_YFw@mail.gmail.com>
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
In-Reply-To: <CAFBinCB8dhzNExOaO=VrDzTYLHHKUaxHZ49HzAYVnNZhAT_YFw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 15/09/2024 21:05, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Wed, Sep 11, 2024 at 12:19 PM Neil Armstrong
> <neil.armstrong@linaro.org> wrote:
> [...]
>> -       memory {
>> +       memory@0 {
>>                  device_type = "memory";
>>                  reg = <0x40000000 0x80000000>;
> On the 32-bit SoCs we specify memory at an 0x40000000 offset.
> Shouldn't we use memory@40000000 in that case?

Yes you're right, I'll fix it in v2

Neil


