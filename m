Return-Path: <devicetree+bounces-211176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B470BB3DD8C
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 11:04:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2006189F1FB
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 09:04:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8813009E8;
	Mon,  1 Sep 2025 09:04:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uLsPWZpO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF132FF14F
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 09:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756717440; cv=none; b=PestNgvHWVGwLvj+uEkRfPodx1MzFrW31+MO/aehTpUpIQningwvtZB/IbOAyMTEBq3Se82zUQLyfm04sVlC21XSyq6+h5684u9jteAFfqilYHof0JLk+dy53r4LYaHd3Y27EQIPd8LpsUOp0KCa6SdOPRTjiJJ6D8nMvKPG18s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756717440; c=relaxed/simple;
	bh=BRVffIraDrTcVxvFJdlUUUnJJYHLdGtchn0lCofCxlk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S5Top5NSISb0oYt/DbbiK+O0xRNZMUTl4fI/UqHG6OwuuQanxctJzQi/SdAV2fwuitITfIzL6cC4B8IXjzQmPuXlEobX47BST4UdZJwUIoRamX4CA02DDDQutXmyPUyabB25o+hIEWgs7zIOA33Ui+679GV/tugNa61SyHaAHk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uLsPWZpO; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45b82a21eeeso22951105e9.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 02:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756717437; x=1757322237; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MLxQeBkb7pg30Hm1b4BwH3XF1UA4XXnA9/e/abfa5DU=;
        b=uLsPWZpO019pbS6/8j8oIeTYmgvvc0Ex3Jaa+l0/de6ZS0cox4UQD8OmLDE9g4lidC
         VdVG/JIYaHK8wonXs2kyiOId1/FJRwxzbS9SPmNKlWxdx28wcFexYlFalBwiCGVSa1Fv
         qv4ggfNjlB7jWQNTz2rBnAmEvuAE86tioWV1tnb3yqAmmWDxvrZDlu9em/6bEZSJBoEZ
         a2weE2PMsHZyhb1/uX9ngo/SqovPnAJobqXXsEJMUIs+wS5a0N6WuAf5rq2EOiGqyjPw
         AUZOUc0rWcO1msp0xKiZoC84VHXPWRSddvx1GZHSHY6nWeuG+dO6pZQFv1KiTARIsBtu
         khQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756717437; x=1757322237;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MLxQeBkb7pg30Hm1b4BwH3XF1UA4XXnA9/e/abfa5DU=;
        b=kPi/qCyqBNPZxjYKEjapZEvQY+8G/YQhSVrgGk37OEzx1TY6B6vMaoDBohMOefWkMn
         cW1A0+zqEarnrtmPdy0nenzfFGhWO+XDPf5/Pdtx94nZAstKcyB/DHpG59AJ30L31co+
         ZgkGxPDpKf7GGRVHL87V6TYKO5dd9QPAtYwt/FppML3es3OA4TjoHOrIB6sZ4Fgkoq6H
         Fg5VpxDaVkPlIiq2Si5SeKRvERqHjhpDn/Al7vyMDDR2aSbY0Ms8gmff28WVnRRxi3yd
         oDj8RG3iyZZBSSWh3SmT7Tu1iR3mCMdYKPWNyzFkTI/h24UiLICXz8fjTqK5Xr2mLISV
         YxPA==
X-Forwarded-Encrypted: i=1; AJvYcCVWwIjB8J+SV+ywTNKY8qLdXMI04zyxVLuDFBTFhzsGrCswKRLh/6dHPy2V6pX0YpueqXz3Ji+TFTr7@vger.kernel.org
X-Gm-Message-State: AOJu0YxO+U4GKIXA0jUm+kJoycTcZLgnGS27kWazBXeKrFzpayBmHFix
	4s1dKCQ8qdlGF34K4R3fB2CGVkhmaR9zuMphN6sCTidDQbsyGIqzolaSLYI7G46SCT4=
X-Gm-Gg: ASbGncsUgQg2SuB93rXWZ/jkssxzLXSj8LwK0+dqMc5wCK0ZTyClr5she2FPsUVFoAK
	L7Z1FL+ADvCDiEfWCHOADPIR1NYfdgc0ecCUWUiRtAJ8OvvPhtgOco/4FcxunOImMUOKDoVyJjQ
	DqD2Dx1tkvwz0Z2XfCP4ZtysuHj6K894B45bkc2z/mLuLgZjl6X0jfG/iWxUV9TOgmIaqiQPNT4
	arKIrow7b1EdGUi1meYz7LqOJsVNTD/WdaknGaZV0mHlXF598A4erv0WBBe6nshColQm1VZrjJK
	qKP8Tnu5H66Ig1u28M7zfOKgvSPENgYgLqmig1Y2cj4nCwr+dZ7qdpRnlsJTvbtoKMrihIESB14
	Wy4u9KcMNr9X+iuV2QF+7a3L9cGx/NlQR+jRGf/QArg6EhOA3PYLuRd5dc5MW8RGUgRNPmO35JD
	X6LGN5qKo=
X-Google-Smtp-Source: AGHT+IFRon1/4eAXp3QDGK+LmMCItN7KW9fmyhhUSOX/aEte7rl35eC/lBri5/0sH+daAyHsLqfoNA==
X-Received: by 2002:a05:600c:4692:b0:43c:eeee:b713 with SMTP id 5b1f17b1804b1-45b855983f8mr46646315e9.20.1756717437302;
        Mon, 01 Sep 2025 02:03:57 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:881c:7d0e:ad0a:d9a? ([2a01:e0a:3d9:2080:881c:7d0e:ad0a:d9a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7d9548edsm93591505e9.5.2025.09.01.02.03.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 02:03:56 -0700 (PDT)
Message-ID: <d39a0299-bbda-4284-b7ab-81648a787305@linaro.org>
Date: Mon, 1 Sep 2025 11:03:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 0/3] platform: arm64: thinkpad-t14s-ec: new driver
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>
Cc: "Derek J. Clark" <derekjohn.clark@gmail.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20250831-thinkpad-t14s-ec-v1-0-6e06a07afe0f@collabora.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
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
In-Reply-To: <20250831-thinkpad-t14s-ec-v1-0-6e06a07afe0f@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 31/08/2025 23:28, Sebastian Reichel wrote:
> Introduce driver for the ThinkPad T14s Gen6 Snapdragon EC. In theory
> it seems to be compatible with the ThinkPad ACPI driver, but these
> devices are booted with device tree. As the name implies, the existing
> ThinkPad ACPI driver only supports the ACPI interface. Looking at
> the implementation, the ACPI DSDT contains many mapping functions
> to translate the low level I2C messages into the interface used by
> the ThinkPad ACPI driver. Adding DT support to the ThinkPad ACPI driver
> would require adding all those translation functions, which would add
> more or less the same amount of code as writing a separate driver using
> the low level interface directly. I don't think it's sensible to make
> the existing ACPI driver even more complicated, so I went for a separate
> driver.
> 
> I managed to get system LEDs, audio LEDs, extra keys and the keyboard
> backlight control working. The EC also seems to be used for some thermal
> bits, which I haven't looked into deeply. As far as I understand most
> thermal and fan control is handled by a different controller
> (0x36@i2c5) anyways.
> 
> Apart from that the EC is involved in proper system suspend, which
> is something I do not yet understand (I don't have any documentation
> apart from the dis-assembled DSDT and existing ACPI driver). Right
> now I disabled wake capabilities for the IRQ, since it would wake
> up the system when closing the LID. Hopefully a way to mask specific
> events will be found in the future.
> 
> Signed-off-by: Sebastian Reichel <sre@kernel.org>
> ---
> Sebastian Reichel (3):
>        dt-bindings: platform: Add Lenovo Thinkpad T14s EC
>        platform: arm64: thinkpad-t14s-ec: new driver
>        arm64: dts: qcom: x1e80100-t14s: add EC
> 
>   .../bindings/platform/lenovo,thinkpad-t14s-ec.yaml |  49 ++
>   MAINTAINERS                                        |   6 +
>   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    |  23 +
>   drivers/platform/arm64/Kconfig                     |  20 +
>   drivers/platform/arm64/Makefile                    |   1 +
>   drivers/platform/arm64/lenovo-thinkpad-t14s.c      | 597 +++++++++++++++++++++
>   6 files changed, 696 insertions(+)
> ---
> base-commit: c8bc81a52d5a2ac2e4b257ae123677cf94112755
> change-id: 20250831-thinkpad-t14s-ec-ddeb23dbdafb
> 
> Best regards,

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED

All worked :-)

Thanks !

Neil

