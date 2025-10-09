Return-Path: <devicetree+bounces-224919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 44550BC8E1C
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 13:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 183914F5545
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 11:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AC572E040E;
	Thu,  9 Oct 2025 11:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ctS7VXd4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F89C2DFA3B
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 11:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760010287; cv=none; b=AKrZgpi73O9koXWreJGQNd6DlWPScUZei+hLOdf4MtT65mYefazEQ8WPQmV3cI136qzoBL5KNdk6BjP5YzWkqjk8yW5hxIJ8BQhZZUUp2zJCGnEKrjFSjkMAeUc7VyxaMeFxqFJU5KwFscXhdnQETLquW5FLGksLOmGIpcA/kZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760010287; c=relaxed/simple;
	bh=W21u5vszlYb4JTqqHMu+ZKX+OcHuu7JT0mxeHlbgRIE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=CQc7TzzOGHHR7YBMQk/kAF7TSowUr/0SGdxL2tmKNXPDvSP+Xorf6OaPoP2fQtRSD2RIMnXXMCXzLp/ffIHaXdGht2fx/OS75uW3W7P1azWa7L9gGxg/w+1IciJlHC1WV4CQqovMIhZITh3vgSlupKVVsdZYKoC3GXddkjCMabI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ctS7VXd4; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3f0ae439b56so637669f8f.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 04:44:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760010284; x=1760615084; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mDIkEeJPpHqacANkuSx7d8jTnH0nLItVVRjRAKjBWWc=;
        b=ctS7VXd4ZUOrXstwnbE7PbZVYxVNwLTIqyVtIn4KbQaJd1GkCGgtQcPRopsUOCu6sf
         AUEr1QlThuGLKKBzrkVJaAECG0wa5zUxxr6yFolpBdmjGrzhWg94msT/rTB/iDP2w6PT
         uoKGiLQhkiFC0vlZMWrH8qyXJ7CTUSsfVj0CFPq3iVMqgBJVeK289PBQkEJitcqw220P
         H5cq/qFB6Q4hpo+Vbu6mEpSJzFCpoY+gokXfeX9c+diC1KGemRcux84E/wutuPzTK0+A
         X4NntEwktFrxmmxi2woTSHrQ35/d5vSwlyDwkKJrvUKwd/X42h2SJen4sUQFojdwDGPi
         MBtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760010284; x=1760615084;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mDIkEeJPpHqacANkuSx7d8jTnH0nLItVVRjRAKjBWWc=;
        b=NWD+STTXWhZAAsYOpTp6RL5Fh0yc9nHvAVXsatsaAboR5PuDOJOPU7fNfX9dq/gVwx
         Mz0FFDlD83J2QAyGBJjz/1Q8WBlfEHcibCG8su7VizaQ7l82MB1AQ9U38UZYGlmqN1mR
         GTaleqzZVzCPWn9FVZtKDmm98tuGAv48HcP1DOZurXbR8O4NjD+hJSdv7fqKNo78Y3e9
         98FizPvDp6ibRruLWST+Cg1JWkP8eoiHPvcyiWssWwhb3TxPxWrmSIPBHr5s+YxB8hmL
         cVd2ZAbf3bm8sH128IbUDpjKQiKry4agN+2BTaxVbHEtccwjhy9mANvCsLkV4RQ1E1bN
         OMFA==
X-Forwarded-Encrypted: i=1; AJvYcCUM9kOsmRkMqvAq9Iy5y1W4BDIp5gAP+sEmlUfuEuZT2Ft4QqtsfFT82Mmuj+5xhHxGRxglXbLkbXe6@vger.kernel.org
X-Gm-Message-State: AOJu0Yyie0wUeNSZlYIACsbQvUjWjVcMISr5ZwDpGlMX/wA8mnj84MUJ
	AP+31i9qBvzVT2e2FlT9NVhrIbQu4zxxf2MiLYVU4Ctefaix8bZoF9KvJv17ABPjyUY=
X-Gm-Gg: ASbGncvIJplvXyU444xKZna+Lii4DeGdKB4BEEzVUXvWk4BYUvRbyxK7NU6fwZHLjMD
	zVP+PcTphxvg/Mbo3hiBcu7Jf8TTJS+yBvxu+ROgXphVrLRmdDOs/vQYF2O3xCApOMFlk+t0t8Q
	ygiBrVzPDCrOPIdfY74OTYmBfgox3kXrmpkLweMUm6J4eAUiXKd5q8soK5FMmA9YrQ3bEA+3HAF
	f5XqS+3MWiLIphRc3bVEIizMTUnC28I1jiBCWiAx9e/IBVXUa7uIO9zZET+wJkDiTWIOGXljyWB
	lMiU46XEuwWIM+8vvwEi1HX2+WN5MsRUSTt+SG3f9ksgcULjKplafFJx0NvXHSCUVLTLb0yGo/Q
	r+z/7CTZAiGBUa6kqxm0fnP/XMv4Mp+mFVmCHZvqcmGIi9mL0G+UMiM+kutQ1EP9Tn38AWlCJEX
	UM4ayx83GIO/zUTGOUg1Wuvd+L0DIRIQF1/YivGg==
X-Google-Smtp-Source: AGHT+IHQy+02c30CkzT7quTenPJvh8XFqbTYjEdBna1oZjlHAagSFvWrjY6TgWYAOPG36Theucq0Ag==
X-Received: by 2002:a05:6000:2283:b0:3f3:ba4:29d7 with SMTP id ffacd0b85a97d-4266e8db63cmr4232911f8f.43.1760010283555;
        Thu, 09 Oct 2025 04:44:43 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:7a0c:da2f:6591:67ee? ([2a01:e0a:3d9:2080:7a0c:da2f:6591:67ee])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fa9c0e35dsm82490225e9.8.2025.10.09.04.44.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 04:44:43 -0700 (PDT)
Message-ID: <60fc5816-e552-4407-bc85-7c1408b4118b@linaro.org>
Date: Thu, 9 Oct 2025 13:44:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC v2 3/6] ASoC: soc: qcom: sc8280xp: add support for I2S
 clocks
To: Alexey Klimov <alexey.klimov@linaro.org>,
 Srinivas Kandagatla <srini@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251008-topic-sm8x50-next-hdk-i2s-v2-0-6b7d38d4ad5e@linaro.org>
 <20251008-topic-sm8x50-next-hdk-i2s-v2-3-6b7d38d4ad5e@linaro.org>
 <DDDR31N2P498.3FYKHZRLUS54G@linaro.org>
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
In-Reply-To: <DDDR31N2P498.3FYKHZRLUS54G@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/9/25 13:21, Alexey Klimov wrote:
> On Wed Oct 8, 2025 at 7:56 PM BST, Neil Armstrong wrote:
>> Add support for getting the I2S clocks used for the MI2S
>> interfaces, and enable/disable the clocks on the PCM
>> startup and shutdown card callbacks.
>>
>> The rate can be easily calculated since the card forces 48Hz,
>> 2 channels at 16bit slot size.
> 
> 48 kHz?

Yeah obviously, I'll fix the commit log.

Neil

> 
> 48 Hz rate will result in too narrow analog range to reconstruct anything
> apart from beeps probably.
> 
> Best regards,
> Alexey


