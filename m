Return-Path: <devicetree+bounces-85772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5124D93154D
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 15:02:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C3CB51F211E7
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 13:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDC4818C344;
	Mon, 15 Jul 2024 13:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JBjUMt6K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA40A18732C
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 13:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721048523; cv=none; b=VyoMq4PMIoqsSah2LBq6WFxTEKerZTAtkEpPB9VjhwbbcLSCdRxVT+aOLuV1OkgGMCg8Cmqi/QR+CekKmeev8kUJS1nSgd4FFZOJc0Sshiz2LYGwn30RderEeOxjlzuSbXevOYHVmf+66hHAmweayHjT058x4KSOdayeN76UVM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721048523; c=relaxed/simple;
	bh=vuEK/YXbfD7q80x82cWalZ5+kfSToUf5IA4mSEXYqEw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=YrbvOzeGoLrr4vKc0ulB7k7pC5qJhVPHz1Fn63IHPtxkli/gb1nRHsACg9nUM/z60CcFdlWuzKxl2Sp82AS/zqAXpXfctW7aHWu51r8Wf/GK3hMi/LawshapsnhVvX/o1jKkAEVxKhKtwPuHJSeOpuOg7jXX9OaW4HYTNSuAR5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JBjUMt6K; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4266b1f1b21so28502855e9.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 06:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721048519; x=1721653319; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h0LlF0jvPcioawKxnI/v8jmryUdPpTWQ5f+aNVMOx1M=;
        b=JBjUMt6KNW8UehZlr5BomtOOCg4trxHhz+uFfxyBGnkUEzvnK0WrulgNINLqejxF5z
         3wkSIss60xN30SnWgvR+it8ILkg4W831utZrEHtlOmGv3YiooEjlE5RcFOBJwnQ37/pO
         JYTfwzxhXT4e7qzIr8ZsdvWuPN1nJ0FyZSDYBvvW35weUD/RC+/jo94Nvz6bJ0quC0hA
         6MOVz195TSvFQIBnrzd56Er/DbyS2fPQ24fpIL0ZY/5+d4uMfgDk4VbMUWf63RNADSOf
         v7QzzLy/hi0jdj1VYRIvSSz5EPr3LtYhxb4TrLoIyd2RlK7rL7UZrzqwU4cqzfwOsx2H
         mUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721048519; x=1721653319;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=h0LlF0jvPcioawKxnI/v8jmryUdPpTWQ5f+aNVMOx1M=;
        b=KDWO1Jx61muYEjZTVZI492MvvohBRCYcQ2+ccW+tY9SLdh0/JFYfxBEDqNjiEFVWrV
         CJAqvXdJoylzyTvHcUOxiNVISao5jFLuMZc0p+2cQt7lXfmiMWsO+cYG9OhlHFLacVrP
         0zPZ/58/DfczBXZ+4XzKULMswrXlQRPtSzy1Noz6IT7i0TRxBh3D1qJqSpu4XG8EB3Gs
         D6209Ve1UMb/KEWMP7JjOdDNqMjciUc/BIxGlp7rTHA2Oa2KycMHSXyCyB/mIty/dtpb
         VZxu5DJ0oRY9pmkcvtdH8m/Dg1IW52GpD0qzjXCfeTm5pRbv/mJuEJUiT9vSteP3HRRC
         26mQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQHn4ocC2vWKM9ujqjy94PtIGr//3sIAoiR2Fl7CKF427/lNVDOOzY9TnJCwn9DI0cI9DK0HsJ4DfZV9h+xf9QdnRFPyqZR23+wQ==
X-Gm-Message-State: AOJu0Yww5HtwSi2Z5Rqs1pKmuHIlFpTDzsmjubq1IEuODKHgl7HscIgm
	bECJQBxpZpL3QAei6Z8TAYsyxGNHstOka4ErzZsua1nz3oQe7SI0W0j/XRyVXQU=
X-Google-Smtp-Source: AGHT+IEDCShUNSMDpb8ubvYx9FNbleT++Anmmj4DRHcb11LRI9IkeO1lUMjxu9JiIw8MJ5eeP5Xkrw==
X-Received: by 2002:a5d:64a6:0:b0:367:8a68:e746 with SMTP id ffacd0b85a97d-367cea466aemr17051400f8f.6.1721048518903;
        Mon, 15 Jul 2024 06:01:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:79bb:5f59:8e51:52d4? ([2a01:e0a:982:cbb0:79bb:5f59:8e51:52d4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680dab3c2dsm6438123f8f.1.2024.07.15.06.01.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jul 2024 06:01:58 -0700 (PDT)
Message-ID: <d1603248-afe8-4594-9e2e-81ba208dff00@linaro.org>
Date: Mon, 15 Jul 2024 15:01:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/4] Revert "drm/panel-edp: Add SDC ATNA45AF01"
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
References: <20240715-x1e80100-crd-backlight-v2-0-31b7f2f658a3@linaro.org>
 <20240715-x1e80100-crd-backlight-v2-2-31b7f2f658a3@linaro.org>
 <7daa3c0d-cecf-4f50-be32-ae116b920db0@linaro.org>
 <ZpUcI3KkIa58zC55@linaro.org>
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
In-Reply-To: <ZpUcI3KkIa58zC55@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/07/2024 14:54, Stephan Gerhold wrote:
> On Mon, Jul 15, 2024 at 02:42:12PM +0200, Neil Armstrong wrote:
>> On 15/07/2024 14:15, Stephan Gerhold wrote:
>>> This reverts commit 8ebb1fc2e69ab8b89a425e402c7bd85e053b7b01.
>>>
>>> The panel should be handled through the samsung-atna33xc20 driver for
>>> correct power up timings. Otherwise the backlight does not work correctly.
>>>
>>> We have existing users of this panel through the generic "edp-panel"
>>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works only
>>> partially in that configuration: It works after boot but once the screen
>>> gets disabled it does not turn on again until after reboot. It behaves the
>>> same way with the default "conservative" timings, so we might as well drop
>>> the configuration from the panel-edp driver. That way, users with old DTBs
>>> will get a warning and can move to the new driver.
>>>
>>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
>>> ---
>>>    drivers/gpu/drm/panel/panel-edp.c | 2 --
>>>    1 file changed, 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
>>> index 3a574a9b46e7..d2d682385e89 100644
>>> --- a/drivers/gpu/drm/panel/panel-edp.c
>>> +++ b/drivers/gpu/drm/panel/panel-edp.c
>>> @@ -1960,8 +1960,6 @@ static const struct edp_panel_entry edp_panels[] = {
>>>    	EDP_PANEL_ENTRY('L', 'G', 'D', 0x05af, &delay_200_500_e200_d200, "Unknown"),
>>>    	EDP_PANEL_ENTRY('L', 'G', 'D', 0x05f1, &delay_200_500_e200_d200, "Unknown"),
>>> -	EDP_PANEL_ENTRY('S', 'D', 'C', 0x416d, &delay_100_500_e200, "ATNA45AF01"),
>>> -
>>>    	EDP_PANEL_ENTRY('S', 'H', 'P', 0x1511, &delay_200_500_e50, "LQ140M1JW48"),
>>>    	EDP_PANEL_ENTRY('S', 'H', 'P', 0x1523, &delay_80_500_e50, "LQ140M1JW46"),
>>>    	EDP_PANEL_ENTRY('S', 'H', 'P', 0x153a, &delay_200_500_e50, "LQ140T1JH01"),
>>>
>>
>> How will we handle current/old crd DT with new kernels ?
>>
> 
> I think this is answered in the commit message:
> 
>>> We have existing users of this panel through the generic "edp-panel"
>>> compatible (e.g. the Qualcomm X1E80100 CRD), but the screen works only
>>> partially in that configuration: It works after boot but once the screen
>>> gets disabled it does not turn on again until after reboot. It behaves the
>>> same way with the default "conservative" timings, so we might as well drop
>>> the configuration from the panel-edp driver. That way, users with old DTBs
>>> will get a warning and can move to the new driver.
> 
> Basically with the entry removed, the panel-edp driver will fallback to
> default "conservative" timings when using old DTBs. There will be a
> warning in dmesg, but otherwise the panel will somewhat work just as
> before. I think this is a good way to remind users to upgrade.

I consider this as a regression

> 
>> Same question for patch 3, thie serie introduces a bindings that won't be valid
>> if we backport patch 3. I don't think patch should be backported, and this patch
>> should be dropped.
> 
> There would be a dtbs_check warning, yeah. Functionally, it would work
> just fine. Is that reason enough to keep display partially broken for
> 6.11? We could also apply the minor binding change for 6.11 if needed.

I don't know how to answer this, I'll let the DT maintainer comment this.

The problem is I do not think we can pass the whole patchset as fixes
for v6.11, patches 2 & 3 could, patches 1 & 4 definitely can't.

Neil

> 
> I'm also fine if this just goes into 6.12 though.
> 
> Thanks,
> Stephan


