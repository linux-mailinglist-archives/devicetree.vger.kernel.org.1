Return-Path: <devicetree+bounces-204742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B688B2695B
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:31:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18EA1A05995
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 14:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A4D54503B;
	Thu, 14 Aug 2025 14:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="coaoqa3a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0922321449
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 14:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755181275; cv=none; b=tZBnS6BQpLABYOrpYzMTGCMiDYjV53G3CjEqAOJcwT8J2AOaM71fXuF8KyM/R37d5gXM2nLiHuU9n6qmBNgznHUkmC4aKJ9t5n8yu46j6Qop6B89ZSmCYvbY2U2O1E08tblJI4OyXsUaF2m14skS9J4Vrnqbn7AluPRnynsvrMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755181275; c=relaxed/simple;
	bh=KUV2rJc0cJh4fPOX4A3tWdZN2OJuiU0vmq4Tka5UT4Q=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=qqTc4qgr08GTopWl7TuxrPmlW7omB/RDCYjfPVUiOcG9AhLayRhgKxZ1A+qU0ebX+LxJkJY/kycJfMmv65HdY5l4hcdNG8mZTEouKYZm+JF6O2hd0nnnIQ07vJDRCwVxrpm/D4+A9cYEHBUW7SU+nBfHfn7IREBBKTVATgGoazE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=coaoqa3a; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3b9dc5cd4cbso740267f8f.1
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 07:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755181271; x=1755786071; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4vFp1QCJpRDcLOP+2iU18C4auf6bivSiIUcw7C2wHw4=;
        b=coaoqa3alvU99TYs5/gto5BmYOOmUw4yVUkljH6xRnbGe949v4lfc0Igac6QXVtsWZ
         b/yXVFbtQaYf+PVtJOZn3XHG7E7wKinksHWIwepdcqN2+Q4YLaBZwEZuVJARoe4lFgbw
         5EYLZ0WZdczKHnT+JznYPeCkU7kKkapMifXLIjFOQ/k6a/Eeg4/CM9LH2E+koIMkQ+pz
         DiNPYIYgrgq+08ZNHwMvA4SkQ94L6td8jE/anO0XN3LjyIHiQgM02fO2iIPligW4ULMr
         egSLCQdCU2bUw1/KyxJeFsPagNB9E6nDLcW1tyEzg+WCj460qTYhivIO0AJ+H1PHIyk/
         NNgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755181271; x=1755786071;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4vFp1QCJpRDcLOP+2iU18C4auf6bivSiIUcw7C2wHw4=;
        b=Jis1GbtAQAf8hN3iXaL+EboL4qQGEn4fSCfw1u8NM5xuh7s5zofWfEgVPVq9RRQypY
         F0P3QYyHZO8bNilBcRiPbxbwYSVc8f7fKICMWpW63lnT8UYkm4WiYJ1/JiE2QWlRX3D9
         hnSlj05GCCQKSExgKo0SpDqQP27uaqUQvgfAH1UNZyX8RMq13pxeLJtNcbXb9FDi172v
         jDIl1jXbzAVLrywVZPuZcgdAvpFw02+Oa2Jm0EspA+DkGezSXkKJnKdETnZrQga7SLML
         PWskd7RetUnE7pdDyG3Ecv1SMJiqgOIq9JX8rzdfpnz9FdCp22KWtxVQnfMQG3oQ6Fhz
         CPDw==
X-Forwarded-Encrypted: i=1; AJvYcCWAVzw8C7N0DV3oMwqLO46BdToNnDQLcH1FgqZSu2L1TERVDK1HA5+Oh2XeU3OU+JdH9UeGcg+QHogZ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu/DH8tUMi71HVGxnbVrrbpIiTgyxNztG4EmBQAEN1qC/wFgny
	odgobxTXJ3GxWbfIeV9dWztRRXscCUAGS0dVxDXLyPCEfI6B065bYFbFbGS9Cilk8hE=
X-Gm-Gg: ASbGncvAyUqTnGDm3ddqUahvSlBX0ariwzdnpTpOF9uUgiIgzUuKV2h1jIRdW4ei+mP
	RCJ0m1EgE47oQrnWl2ntXg7ueJVvGCmHbZXr88y2wC/hiGKMbHrumk87GLUsHdmuAz5NMm2CJhG
	psuoVZO4L9fUNVGEZxhsw7X6YDYFXOrwrK97tTSzoRxm4bHZfUXaUqx+lwo0FsxJlDDVQfndjLn
	e2zppLDQA2SXg3MNy3PlXMN93HoCU3xoeWXb1kCabzpqBocXwUyarDkoJ0R4EB38t/WuEU8C/5k
	aLBbi4SmogDaRknQ/bgLvDXOS+Ws4NmI2IFqJcZ9dTQ3G/IiGkFPKc3vRaGPbqDUTK11CACFMLr
	kXzg6yGPod/fW5XWt/onRdBSSnr/sm9rMNj5n8XgsUkSOIwTOlz2nI/0y52gEe++nDg1moo3o
X-Google-Smtp-Source: AGHT+IE+4++8ILvUsYg3hhgJDOtLRyfm3QvNNAALFyboVt/WjmkjcDQBTvinmWUaP7p4FTRya3vjvg==
X-Received: by 2002:a05:6000:3111:b0:3b7:b3f2:f8b3 with SMTP id ffacd0b85a97d-3b9fc34c406mr2447041f8f.38.1755181271072;
        Thu, 14 Aug 2025 07:21:11 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:7336:e60:7f9e:21e6? ([2a01:e0a:3d9:2080:7336:e60:7f9e:21e6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6dba38sm24179585e9.13.2025.08.14.07.21.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 07:21:10 -0700 (PDT)
Message-ID: <536dd237-e668-4a88-ac2b-3bc88dca8a3e@linaro.org>
Date: Thu, 14 Aug 2025 16:21:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v6 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 dp controller
To: Christopher Obbard <christopher.obbard@linaro.org>,
 Johan Hovold <johan@kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Rui Miguel Silva <rui.silva@linaro.org>,
 Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org
References: <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-0-4782074104d1@linaro.org>
 <20250731-wip-obbardc-qcom-t14s-oled-panel-v6-1-4782074104d1@linaro.org>
 <aJCyBbwNjZvTHnjT@hovoldconsulting.com>
 <CACr-zFCq08Pu2=eLfe5=sYdGWEHmy7w+=Eo++9AjP96uCLCNcQ@mail.gmail.com>
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
In-Reply-To: <CACr-zFCq08Pu2=eLfe5=sYdGWEHmy7w+=Eo++9AjP96uCLCNcQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/08/2025 00:28, Christopher Obbard wrote:
> Hi Johan,
> 
> 
> On Mon, 4 Aug 2025 at 14:13, Johan Hovold <johan@kernel.org> wrote:
>>
>> On Thu, Jul 31, 2025 at 09:51:26PM +0100, Christopher Obbard wrote:
>>> The eDP controller has an HPD GPIO. Describe it in the device tree
>>> for the generic T14s model, as the HPD GPIO is used in both the
>>> OLED and LCD models which inherit this device tree.
>>
>>> @@ -5779,6 +5779,11 @@ tlmm: pinctrl@f100000 {
>>>                        gpio-ranges = <&tlmm 0 0 239>;
>>>                        wakeup-parent = <&pdc>;
>>>
>>> +                     edp_hpd_active: edp-hpd-active-state {
>>
>> The node name and label needs an index as this SoC has two edp hpd pins
>> as I already pointed out.
> 
> Sure. After looking at the schematics this should be called
> edp0_hpd_active. I will fix this in the next revision.
> 
> 
>>> +                             pins = "gpio119";
>>> +                             function = "edp0_hot";
>>
>> And you also need to configure the bias somewhere as you should not rely
>> on the firmware having configured things for you (as I also pointed out
>> before).
>>
>> On my T14s the internal pull-up has been disabled.
> 
> I am still unsure of what else needs to be set here. Can you help me
> with the correct settings?

Just add bias-disable;

Neil

> 
> Thanks,
> Chris


