Return-Path: <devicetree+bounces-179428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 484AEAC0589
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 09:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 794D418833C9
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 07:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 853551E32A3;
	Thu, 22 May 2025 07:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C9d//wAP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CC6176ADE
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747898531; cv=none; b=UdHWR3QZ+WRasLAJSyFO5cjlxXViDBRPr2XX7Ut1BCBQ03ihc4yTW11fSzyYQfi3LyAKBxjsOQRdfWnKJN/voz/iGAepyyWgA/M8HA2zkEGegQ65J6FgezCQ955W3sgGE2hw89ezBjrZh6HoIAYgPqDprgccr6AKYUtdyncuAXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747898531; c=relaxed/simple;
	bh=5nOa+dAbTc5Ycm10lURR5yv4ZOoJaW7taXYg/Gy14n0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=lroJECh7fOibzdMsw0Zq0zjLQIY1RRCaqdkCRQ6Oa059bdgiuyNm2G9rFKE1hSHKZRGCJNkShUjG7LFly6Wl4XG/KTN2/79TlkquZntqKSz4iwfuN1vjmo7++YjL6+to0usU3bg1RD4HI1u+R/r5M86x50W7b9a7DhhxbrUKR0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C9d//wAP; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a361b8a664so5880178f8f.3
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747898528; x=1748503328; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yKU1imWgjnCI3avar2mUIPQzX7TLviFQtJlqfZ793SY=;
        b=C9d//wAPcS7hINGN5bZbagwq7RfUoOIYY1smlmP4VFgYQz77dcCcmVm+OS78OEpXwc
         liUfchLX04R1NRX8eFF8DoWvp+QZZjoPNa3ueV7KfERkCw/8VvaDMOb4mRIQAqre+sq6
         MycUwMbaOqtClfVijjQ4zcW6paqPMaLc017OpB6AvtgUwCGPR7lCEIiFM+pc8FZIEH5G
         sgnM47LIgZ8JPcw0K6n6+PqmlYwJLRUkDgayRt4HF2VP5C4qBhtcimxF446cNc4aK3OR
         QqfL24DNIR8Jz/FlKVK62t+D9wiGLIEEbjK3SJSKhIzS/3TettKUP+eC3gaRT2rFuwXV
         sBgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747898528; x=1748503328;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yKU1imWgjnCI3avar2mUIPQzX7TLviFQtJlqfZ793SY=;
        b=P6Q/GU8AL3PpOcxfmV6M9q0wY7Pj4QdCPcSTzYDk9b3MyO1PbxRBPvZjoZoIStQrQw
         FT32fgLCGt5EsA6M32HaQ6SGQkB73i5M+KP5gxKswozWhiFNTXuB9UlEBdSGUdM/virM
         Cq9anA2IvGweB17PlQ4lan63M9YjGcS9tf3qBsa0bg9Q0MtnfxpRGylyBc01ohamA5J2
         ZXVcXUR6ULxzJfsMkQXxvgLAaFiSineL/1/Qf32UNEzrzq/DgVPnlCNseSKGfsEOHhkT
         htr4Wsp+8Ov4pWh0ZCR+b2DSqynynLmzaMpCTdyEVgfXfBkNeCR4+63ZsfwFhjmsNhrS
         eZcA==
X-Forwarded-Encrypted: i=1; AJvYcCUUdDjqrmSlpFHQ1bPA8j6/grRIy4Mo78fEptmSN056VtSGuLWDwZYbACU61MDuroujvIlczAZzf1aP@vger.kernel.org
X-Gm-Message-State: AOJu0YxcviPx09wqYKDHbQUeYjaIrAeSn70ldTHjrUoPH8R3lrDoOyx5
	4D1heRIXl3ke9BTKMQ1tYJR5JgTNptpue8I1/nyha2pzq7M1rR3HybVOmlaZHqgBWtY=
X-Gm-Gg: ASbGncvIELoEV+Wj46n/DJOoAVFiXP19mKDzjbA50bggRHyUeuZsPB9+uGgMq5fNk6H
	m4sW1gD7Hzf5mswaIIXQQNl5BPnLIJPwYfb+aN0TidhG9oUEN2o2I4k4tx5HM9/e9O3TroViMrZ
	sm4uWtQ58bxP10onEp4K3N4v2Hqhq6L23NG0cFvcMDsI2uWCnYuaKBQjxSKkX6IqdukHIguxZi4
	NnMvM6xgiMCpf9sf2GOTfrNKhLXl8OG6A3O7+jlGuMC7so1QTG7I3rNmb6cwB0mQDPFmRky/sX6
	IyhQr+RWE0Nr6GICAgWwoQEhWBth9mjZf1EKUJoBr7QGms12xEJJ0YfFBQiN+N77T269Jqfigdj
	Y4J3P3y/AqCM3ghk4axwsTLU6pRhR
X-Google-Smtp-Source: AGHT+IE3G6efsN69U61nJWH6Wm1uz9RoCxH2Y5mDFgiyh9RV68lG2Ng8GLSEqrPwcUEbVLsLRT5P9w==
X-Received: by 2002:adf:e385:0:b0:3a3:6282:693a with SMTP id ffacd0b85a97d-3a362826998mr17022969f8f.44.1747898528052;
        Thu, 22 May 2025 00:22:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5? ([2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca6210asm21904363f8f.41.2025.05.22.00.22.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 00:22:07 -0700 (PDT)
Message-ID: <09533aad-fbec-477d-a088-5ecbe181368b@linaro.org>
Date: Thu, 22 May 2025 09:22:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: exyons5-usbdrd: support HS phy for
 ExynosAutov920
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Pritam Manohar Sutar <pritam.sutar@samsung.com>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 alim.akhtar@samsung.com, andre.draszik@linaro.org, peter.griffin@linaro.org,
 kauschluss@disroot.org, m.szyprowski@samsung.com, s.nawrocki@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
 dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
 selvarasu.g@samsung.com
References: <20250516102650.2144487-1-pritam.sutar@samsung.com>
 <CGME20250516101803epcas5p2d9403d89d840dcad88a03d437a48aceb@epcas5p2.samsung.com>
 <20250516102650.2144487-3-pritam.sutar@samsung.com>
 <a5c1a064-d760-4140-9e78-d74823b400a8@linaro.org>
 <000101dbca1d$78ca5570$6a5f0050$@samsung.com>
 <42ddb5c6-0f17-41ed-8bd4-ab58880515b1@linaro.org>
 <bd9ab640-2469-4455-bd69-302dd3898c7b@kernel.org>
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
In-Reply-To: <bd9ab640-2469-4455-bd69-302dd3898c7b@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/05/2025 14:58, Krzysztof Kozlowski wrote:
> On 21/05/2025 14:56, 'Neil Armstrong' wrote:
>>>> <snip>
>>>>
>>>>> +	}, {
>>>>> +		.compatible = "samsung,exynosautov920-usb31drd-phy",
>>>>> +		.data = &exynosautov920_usb31drd_phy
>>>>
>>>> All those new ops are only called when matching this compatible, it it really
>>>> necessary to check the version ? is there "samsung,exynosautov920-usb31drd-
>>>> phy" PHYs with version different from 3 in the wild ?
>>>>
>>>
>>> This SoC has a single USB 3.1 DRD combo phy of version v400 (major : minor versions) and three USB2.0
>>> DRD phy v303 (major : minor versions) controllers those only support the UTMI+ interface. Currently,
>>> supporting only v303 phys in this patch-set, and planning v400 phy later (soon).
>>>
>>> Yes, there's v400 phy version that is different from v303 phy. Hence, phy version check is needed to support both the phys for same compatible.
>>
>> OK so add 2 compatibles, one for the usb31drd and one for the usb2drd since those are 2 difference hardware.
> 
> ...unless this is fully detectable hardware, then use fallbacks and only
> one compatible in the driver.

But use proper compatible like "samsung,exynosautov92-usb-phy", but still those are
2 very different PHYs connected to different HW blocks, I won't mix USB3.1 and USB2 PHY
compatibles.

Neil

> 
> Best regards,
> Krzysztof


