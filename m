Return-Path: <devicetree+bounces-158033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7B1A643CD
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 08:34:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 161093A5C60
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 07:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1428421ABB2;
	Mon, 17 Mar 2025 07:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bgs28xfY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE895789D
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 07:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742196894; cv=none; b=rszzDwYNSKKkgnnNz9ueSYS4lk/UrjDoMqpIiomBhhpXwILN9okPUh5h2XdgLgFa0p3hJ7qds5CKmtdAn3xgZxLQAn+Ds3yGuQ16Kuj1o8psJPuo40deJPFkDwIz6sPFqRpQhj1Kw0JROiBmLjysGcMavlLYXIrDdIB597scu90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742196894; c=relaxed/simple;
	bh=Bq489mZ0S8QmJHBaoaaTbaVOIBYXsHBG/UidJWQdEk0=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=N3XIvwXD0szPea9GAYPaj4zVdAGOnbKHhpsufvbS79DPMp9LBD8UcW0+5xWzHffdPa5I6K0yQfSWQxdQFGOSvVsI85y9moruYPp7kZ7xjHQUyWMyvagP7Lh+DWjtMSL1yjMZf+qkakmYq6v0j+YrXYsd4evMMjUUOj4h4i/KefY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bgs28xfY; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-391342fc1f6so3440446f8f.1
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 00:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742196890; x=1742801690; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Haj3M88Nl0rzn14OKdsEl3OoTWkoQ15fDIQ4CoHcds=;
        b=bgs28xfYsvS9pRGBXWxO4qbXfSoogW10XqMCjucFll6RsBfFX8LlF/pIUHbywuKsq6
         +mdnqov1AvmE7h/mVox8Qelgbke+tU7jFE8IR3f7bEHgb6FyYuBm+V6yDy9RtQdL5ai4
         +K3JuIAd8PGYRF1d0MezjYeH+6Mey7QlzkMdO832svuMp1Zvc62RiJh3jh7mSdPHTEZ+
         DjspXyEpqYEocGzKrkNHNFGYlJAUV9XLHue62l4FJzk+Epf18Wyi9OAI7LiBMycw2fi3
         x0159k5h2vHQsn0mmS+Y7L5jMsHWFZCvc3xfdibK3/5ElTHy1jJ6GsgHKO8UUrwEsVOu
         KFZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742196890; x=1742801690;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1Haj3M88Nl0rzn14OKdsEl3OoTWkoQ15fDIQ4CoHcds=;
        b=Nh5p52i8katB5+++OaZ74he77pC7OVR2DpF49rVssn4+tp99jFpxvqCuXhVX5YWXWp
         QXJdK+kqst3guawWX42kNJh9f0nLkSEjgl0WdOZHEW6f1EiQowJJA1CYcEyJU67TmdUh
         i3Xo/GjBlNdEqkl+AGcwZUGMLT7Gbmj0xWvgSGiGuLwQBMHnPWw6cKrxkEVqvWdPqxxs
         mjrZwmKLP0b/F4XZ5oPdEr91/01jxlXo1+dnprNucrjTTAqf34bSRDDUmOV7rzrubEP0
         kpSXLDPQymRsw4YbrQ8yBk+XxamqhuSfsAWXfAcgQg9DU2K0oCzLTFR2WTxGB/orrqDn
         dLeg==
X-Forwarded-Encrypted: i=1; AJvYcCVi6LRHlbvjLwutR0sILurnYxL4MhmxGXFgS8jBPTdWMR+Uq8naqCoxZogA7jf7bL6cOaHrBsMjvGLI@vger.kernel.org
X-Gm-Message-State: AOJu0YxEgtKstS7BPCbHSn2LZBgnKXlM8p9zy9/y8GBT2eDIKkuJPXzd
	DWX7txy2iDM7KS5/NGbqImfHuoNAUhTEiLxpFHAkSVhkymCaSXQ9V0k5dYp3Bq5Q900zfZxZ9aX
	H
X-Gm-Gg: ASbGnctwQH8wS60EXsfwuJpYn0y60E18jlN0RqL4MmXizWz8Vc09VKYjV0Irv0AMG0p
	AxDE01O0f541LnX/IN5VW9W2JQiOHiiMKon7A3ibYu/zozlhTK7EHOcCYIYtVcjvDV6MaATkACk
	V/MM+FIs+YXYBdSU/reOsCnpun8HJiyuUHWDs8KlLMinWeyirfqphJIwBgjPdyj0Li4DPRl2bJi
	6Ug4z/Wz7DOjUWCpRzsKxX0/bfJGd+XzJe2hd25PZJypSyZ3JkqchO/+oE+HO8F3CT9EqzlajwL
	rhZ3Ghw9KiNn+voqUmfMVzJsFIrpxXcgUPimB47VbNQecWU6qj6KveFS/X8U2jEQ+un4HABrL2o
	MtSzxRrWeVpfnHpr/oOFYHA==
X-Google-Smtp-Source: AGHT+IGrBhLQhXsdfvh9nApPbVNi+jq+YpAEku3HrbDi2HyjFAxIR3MMl+TF+6gCIe/X+4ph6WyQwQ==
X-Received: by 2002:a5d:47cc:0:b0:391:3f4f:a17f with SMTP id ffacd0b85a97d-3971ee43fc3mr13277286f8f.42.1742196890499;
        Mon, 17 Mar 2025 00:34:50 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:8dca:521b:10f9:91e4? ([2a01:e0a:3d9:2080:8dca:521b:10f9:91e4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb7ec14bsm14053515f8f.100.2025.03.17.00.34.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Mar 2025 00:34:50 -0700 (PDT)
Message-ID: <0475a736-92bc-4cf8-be89-d8161fed5075@linaro.org>
Date: Mon, 17 Mar 2025 08:34:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 0/4] Add GPIO interrupt support for Amlogic A4 and A5
 SoCs
To: Thomas Gleixner <tglx@linutronix.de>,
 Xianwei Zhao via B4 Relay <devnull+xianwei.zhao.amlogic.com@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 Xianwei Zhao <xianwei.zhao@amlogic.com>
References: <20250307-irqchip-gpio-a4-a5-v4-0-d03a9424151b@amlogic.com>
 <87h64022hz.ffs@tglx>
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
In-Reply-To: <87h64022hz.ffs@tglx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 10/03/2025 18:56, Thomas Gleixner wrote:
> On Fri, Mar 07 2025 at 16:49, Xianwei Zhao via wrote:
>> Xianwei Zhao (4):
>>        dt-bindings: interrupt-controller: Add support for Amlogic A4 and A5 SoCs
>>        irqchip: Add support for Amlogic A4 and A5 SoCs
>>        arm64: dts: Add gpio_intc node for Amlogic A4 SoCs
>>        arm64: dts: Add gpio_intc node for Amlogic A5 SoCs
>>
>>   .../amlogic,meson-gpio-intc.yaml                   | 19 ++++++++-
>>   arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi        | 19 +++++++++
>>   arch/arm64/boot/dts/amlogic/amlogic-a5.dtsi        | 12 ++++++
>>   drivers/irqchip/irq-meson-gpio.c                   | 45 +++++++++++++++++-----
> 
> I can't take that through the irqchip tree as the amlogic dtsi files are
> new and in Neil's for-next branch.
> 
> Neil, feel free to pick the lot up, I don't have conflicting changes for
> that driver sitting in my tree. I'll reply to the irqchip patch seperately.

Ack, I'll pick the whole serie in my tree.

Thx,
Neil

> 
> Thanks,
> 
>          tglx


