Return-Path: <devicetree+bounces-255440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2269D22FEA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:04:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9F840302C4C0
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 08:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D48F303A30;
	Thu, 15 Jan 2026 08:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eUrSWfUc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96752225413
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768464176; cv=none; b=DUynC3do7FyhYPeUiE0L6Jb31rd1UGDG9XF+rvtRjQBISFBzQr299flZttN2hZPX/f0DKx93AA0LiNtSfvW/yfKBZc26Mx/M5402kqN04I+cjSVAj/QTRWQJtouBgfQu3IAa7LolDnu/QtcT1clzsNhH1RT95A0gw8eQEP621sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768464176; c=relaxed/simple;
	bh=vFLSBkLyY4+yOnN7dFO18DoNad6wnXyE2cP7gHZ6LoE=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=E8q03RadHIaNY8l9/FgGcPz9jLr6vVTLQw1KhO2c5W9Mt4zXBZofQ40PdcrK8MY/84HsP+Wx5/r8Lr3apzbVB5+fkYuXh4ywDIyTi4k8+b9TqU0K6Vl/Qk6QBtkyUJgDF0z6wZlDBYDo4WQuzcwc5n1ot3iP5XPQMlGGtYh2Lzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eUrSWfUc; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so7125105e9.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 00:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768464173; x=1769068973; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=unoGdde8r2uBbMwP8uo2We6Q4bM16+cyYfsGEc7qFM8=;
        b=eUrSWfUcezfYV6Q0dS8aEZ/puJTP5AawYOW0BJ6igIy2zbrj6wERlQD7lQ802wy5xb
         1MfokPgbl3k1rJ2Hd69zgT9UZ1oA/dLCoqKgdLmo3GfXO6fMtG6RR/t6dVcnzF6lFEET
         1AdfF8seyNUpalIWTtASuDWmOrb8U4typ+rbZHggABdV6NxqZTPgEwJBLg5sFVT9SBQa
         NYU2WfXp18cn8oX4pqqhxeJjAT7xtLkS8z7SRRziaL3Qwq2N5s1rsnUYE94BHEg24FPV
         bEDpzrErjAyba/RAa+/dwjwpns4y5K28Yv7ZbfLFdx1pXjVXSzL+42st+2TvaVf8d4b/
         rx9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768464173; x=1769068973;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=unoGdde8r2uBbMwP8uo2We6Q4bM16+cyYfsGEc7qFM8=;
        b=QYF0m4cYB6PLU41D++S5n9LjMQPf7t2S/skdCd2Zyd8NoEaCVKcUfZ5puM17YAPfcj
         /laEAls9L6sqvVacmIA5/YOVBameY5Zk+EBDvZcqlx7Jgb8k3KCGuJ9DKp1r+E0Ao86P
         PZ3FgQ7cJGh/FdyMIY1ln8J2sSdWOeT6ue6xDprJfNA/36IE+n09wAphldTcbN5HsLJU
         BX6qNl9oqkuJpBslzOw9WOLUTUWm9atb0n7Mlsla16nLzJIhuBQ2EtAnX7Zlhz2w/+hb
         b9LDTiXbJ3l3g6BzF/g7Qm5pL3Vy1iMqCyIQHAYRsUFE5Hk+ECm1xM3qiSyIvwxNyFTG
         UBnw==
X-Gm-Message-State: AOJu0Yzm8FcKhoDthurEVCgu0UGgmYAW+Vvz5vZGTOj6JVuJcLz4Q9gJ
	AJmOkJfJsOIFtDv+WwvRdy358/vIG/LJgDc5D/hechW2NXNcwSnSIDD4dg/z/tQT7cU=
X-Gm-Gg: AY/fxX7viwCNr5GHQV11m7lsHQ/9DqHqq87uEFDvHyXVihk/BQuH8HZ3Y6Ky9lVtb4f
	SDu/Zp3cc2dm9E6Vm7hOPNhR9NQRB5t1Nhb1CsyPKxJPlBdsArgwjE83YBDYSMLkHRYMjfHwbzI
	vmbAFW/mon481CT64YHXC2U6+3bEUFaXpq1jiOJnqcbhIa6vmoAO5v15GaGV6iVp9qZG1bVq/ZV
	mDkKqiUnp7/Y3U5PqbLd7WpJfHeO3sA/NxRczpdFRvscwFyAn6z6tdAvGBwDKMTVC+E2T6t4gJF
	H1xbaqvPcyXkKnxTxcFkt/CEY+F3BS80nvlU/O/fFLwC5VApheOt9CA89b1FNtx9REbvC1aeA09
	mfHQrCn9QASsqnIk1CYu4NQIHkwyrOnjzl5FtIyFThuk4mbm15DgZPXNC76WivcI6TJsolH34O7
	XGXMjnGoF6IEqWA3N0QtvVMxmzgzlPUeMvGMmwcZ/UM42ud4tkFgFSm/En62Z3lDk=
X-Received: by 2002:a05:600c:3555:b0:477:7c7d:d9b2 with SMTP id 5b1f17b1804b1-47ee338f01bmr68210915e9.32.1768464172816;
        Thu, 15 Jan 2026 00:02:52 -0800 (PST)
Received: from ?IPV6:2a01:e0a:3d9:2080:d283:7a7e:4c57:678d? ([2a01:e0a:3d9:2080:d283:7a7e:4c57:678d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801bc3e57fsm10397465e9.5.2026.01.15.00.02.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 00:02:52 -0800 (PST)
Message-ID: <dea5d665-2d5c-40ce-83d2-a2622b79e4b1@linaro.org>
Date: Thu, 15 Jan 2026 09:02:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/2] NPU and i2c3 + FUSB302 addition for Radxa Zero 2
To: ricardo@pardini.net, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
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
In-Reply-To: <20260114-arm64-dts-amlogic-radxa-zero2-additions-v1-0-8b5cdf328fde@pardini.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/14/26 23:48, Ricardo Pardini via B4 Relay wrote:
> This series adds a few things missing from the Radxa Zero 2:
> 
> 1) NPU (etnaviv), just enable the node, similar to what was done for VIM3
> 2) i2c3 (also exposed on the 40-pin header) and the FUSB302 at 0x22
> 
> Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
> ---
> Ricardo Pardini (2):
>        arm64: dts: amlogic: Enable the npu node on Radxa Zero 2
>        arm64: dts: amlogic: add the type-c controller on Radxa Zero 2
> 
>   .../boot/dts/amlogic/meson-g12b-radxa-zero2.dts    | 36 ++++++++++++++++++++++
>   1 file changed, 36 insertions(+)
> ---
> base-commit: 0f61b1860cc3f52aef9036d7235ed1f017632193
> change-id: 20260114-arm64-dts-amlogic-radxa-zero2-additions-905549fbed3e
> 
> Best regards,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Thanks,
Neil

