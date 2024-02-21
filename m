Return-Path: <devicetree+bounces-44371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4BD85DDBF
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:11:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AF8E1C227EB
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661777BAFF;
	Wed, 21 Feb 2024 14:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i6IdtteK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8776B7E77A
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 14:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708524423; cv=none; b=frWoPQhm8RQLtu+IFfuFngu2ayt6e120GfO/TmZE/KEOpMlS5e8jLUbhAHyQjwwFD2DfubD5BP1wzNngUrGFs9Bef5iz+fIPtEkgzE0OhmqFTEMCpUrKTt+RENT1A/6DiwYqhL8ABosMbVXQPdOxc2/6TLrgrnxtTqPWQFz5p3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708524423; c=relaxed/simple;
	bh=FEbHr6G47z91jG/f2Wo43A66B+GnrNcmQlXyLl/2KAw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=F9VsW0bXAlSAftQqHsEmnuS3zSIdeQSeKwFN0+yEz/Er7DdQwBo4RowZ8XUE5nhhqHFdO5ZIBrbFVWV3tgJaYOpHD6lDOJmx6K30MiUck29WNBWau0LEbiB4LS2ORvX5BE+UDNrGWBp1v38Smn7JZLN6VymbZNLQ76Pl7dDxQK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i6IdtteK; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d21a68dd3bso67464921fa.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 06:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708524420; x=1709129220; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CKWxl3OogXVVnFS17fBlVo+bIxHD2cqSz5ab8fWS80s=;
        b=i6IdtteKWyvisRAFAPo7CO6ZeD3KH+SIpZ6NNPzkVvPE316dnJtmIire3nmalpn8wQ
         NB6ReaIaW8preu8eB/71yuxBVviv53rqd/z3tA6MK4JXBioceW6NOH8GuD2u/RCIALeK
         mv9wvwgye8LEFqx+nzfz08fsQ3PRUwLxBmzCza2QCAPNqD/18E3GIQNQrIefbCJ1RAkh
         RT5BA0lc8K4bkGipcFEbpbSakXmAJPh7OFXql2AXa4mG+1l37lYTUhzJYGgNQGG+6Luw
         i3QEyAeRBt1PaVj7YQR+DjCmMChnFGWsEjsjXQBsKmT0CVguk+FtqDYILDCLmlNmzyBA
         /KWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708524420; x=1709129220;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :references:cc:to:content-language:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CKWxl3OogXVVnFS17fBlVo+bIxHD2cqSz5ab8fWS80s=;
        b=fH+MGPF1r3ktR0DnUYM7fR1CdbW0sWi8/H64Zwok2BABIMBu/lncNWZJCal5bsyKUn
         5XtRjiSFUNYNa3lRUfBRGRLSWxS3HZF3RmDOB9n+SXrovDKNriqM41FTDZvy927xcZE9
         DNpu+btiIdYxKvT7dugUfMQ5lQpNg8CemiLQkUoPNvqNadiEfXoTPNJYhu+okvoP63hv
         cXCNWvbCfLf/IGa+BkVTbZQ7GKcAborVCntfOI/ygTLMCVFOMmJq0gzaLuRD/qVFRVwO
         MW4fjjw5WoEF1JjZFjG6TZgAeLlo77cqp+c69Wj5SUFMgmlGFLtMAnInpMUo92gIQMXv
         06mQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRjHbg0MWqRQo4gcNJ7ydBWsLADAax1avfEFM0H3j44gitzIYTzRfKANLuDO8H2cQtUmgNsAZxFa5B8Iww8d2iFNdsDmvHt5Lrzw==
X-Gm-Message-State: AOJu0Yx6jovj0wRYnrfmNLvl7rzWV0H2iYNXopJgoJ0dkXxqkimMg/ik
	wIF2MrC4OhzxmJ97nUt6DVgoyzlMapU9yf8lHAVJcCN0qgtFI7FxVTt7qzIucR0=
X-Google-Smtp-Source: AGHT+IHlCycFUalK8spusNdvliYS8b0yE47wfcWtbkwDCcSipjuydmvvQfLjQ4AEGVa9UCMUi13c0g==
X-Received: by 2002:ac2:4c41:0:b0:512:b4cf:ae3 with SMTP id o1-20020ac24c41000000b00512b4cf0ae3mr7444785lfk.19.1708524419725;
        Wed, 21 Feb 2024 06:06:59 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:83fc:439c:6f36:ce5c? ([2a01:e0a:982:cbb0:83fc:439c:6f36:ce5c])
        by smtp.gmail.com with ESMTPSA id 14-20020a05600c230e00b0040fafd84095sm2612088wmo.41.2024.02.21.06.06.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 06:06:59 -0800 (PST)
Message-ID: <1f12586a-16d8-45e8-a974-75923f9a3bd1@linaro.org>
Date: Wed, 21 Feb 2024 15:06:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] fixup! arm64: dts: amlogic: add fbx8am DT overlays
Content-Language: en-US, fr
To: Marc Gonzalez <mgonzalez@freebox.fr>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Pierre-Hugues Husson <phhusson@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 AML <linux-amlogic@lists.infradead.org>, DT <devicetree@vger.kernel.org>
References: <07f7a695-18a0-4211-82e9-b1e2c7166969@freebox.fr>
 <79ba726d-d02c-44b9-b6f6-59b17ba9755c@freebox.fr>
 <54b4e810-754e-481a-bbc8-984f859b116d@linaro.org>
 <15fcafb2-4b4a-40a1-8ef5-ee3aef9b3b9d@freebox.fr>
 <95cafd69-de6d-497f-b3d6-b6d7a8a3b795@linaro.org>
 <e3e47a72-8a6c-475b-a248-95da5dae24ff@linaro.org>
 <814c9035-1fda-4cd3-ab3c-95b58e2ecb22@freebox.fr>
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
In-Reply-To: <814c9035-1fda-4cd3-ab3c-95b58e2ecb22@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/02/2024 14:48, Marc Gonzalez wrote:
> Drop compatible properties as requested.
> 
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>   arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    | 4 ----
>   arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso | 4 ----
>   2 files changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
> index ed79809b15859..9591fdc31ee0e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso
> @@ -7,10 +7,6 @@
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/gpio/meson-g12a-gpio.h>
>   
> -/ {
> -	compatible = "freebox,fbx8am-brcm", "freebox,fbx8am", "amlogic,g12a";
> -};
> -
>   &uart_A {
>   	bluetooth {
>   		compatible = "brcm,bcm43438-bt";
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
> index 5da88fb94fb98..55fff35b09ae7 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
> @@ -7,10 +7,6 @@
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/gpio/meson-g12a-gpio.h>
>   
> -/ {
> -	compatible = "freebox,fbx8am-realtek", "freebox,fbx8am", "amlogic,g12a";
> -};
> -
>   &uart_A {
>   	bluetooth {
>   		compatible = "realtek,rtl8822cs-bt";

Squashed on https://git.kernel.org/amlogic/c/13636d5502204e671398470962babbfb46bc2721
now is:
https://git.kernel.org/amlogic/c/d881d79f8c77d7f9935a8d9424a1dc4364787bf1

Thanks,
Neil

