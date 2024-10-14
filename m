Return-Path: <devicetree+bounces-111106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D82699D3DE
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 17:49:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 01E9D1F24F94
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 15:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771961AB501;
	Mon, 14 Oct 2024 15:48:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ThpYbkyP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DB734C3D0
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 15:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728920922; cv=none; b=AQDUnJ+BMV2/Kmr3Nt1xadWgUReMW2AUsC1/o1B2jpb6tpK/rB1ehZp2DRxj4rBhiv1dF17prwU7AakSj2oaANiYcOZlnIHG7/qH8knD1qoQSSDZU9iKjrZ9BEL/Y8+3QilEYGV95hDUmqaDCzTkk3IrnyFVJXOepSWcH0k5gq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728920922; c=relaxed/simple;
	bh=mPRZfKW56jqyFnTJam3p/k2JpNjwrrSWBbed46KD91o=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=j7AWjv6ym7Tl2TfjZ3IbMQ3lHx5nYpvd0KVQG/l9tVAMXcSqObxw41Kk6cI8WZTK3zTKkpQqMN66gNBshtIRKJfxUa8Q9aquFHEUwQloFL93XODEUPQc6P3rJ/3Vu5xnhpnsm0Zw7vECQGCCM0U3VjsrJ510Az+YjFaTKAHxdD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ThpYbkyP; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4311695c6c2so33768525e9.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 08:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728920919; x=1729525719; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NQuhNjqG9A4ysuIinRQhei7fHPxyrjwXLCFyUeTW3+A=;
        b=ThpYbkyPX+vnivF+zUNp9ElkSX2NBlASsKDV9lVu8EE4pwVzQxhzPm0m3/z3dlXGqB
         4SmBLeVJvJhaZTHvclB/0qzhiK6jkbVLwIEwfWyHcG1grsxPyt0yH9M0Ib++xg2ndgIB
         edLV3L0UNVs3cCjJzLmM7P9bHN8AMc8lB9/tYPP9WEOw3FumD2uXGIqYGYRLDsxv9YK/
         FgL+o+cA5K2LcslN7T58lYB5BTfWAbUjKTQ9jAWCTcaLLpMEvdbVXVJxim4zzr906AU6
         lAfSTorrYbtxxvcMAxmy671rub5BKfiURN6YXmyqpVdvY+t4Z49KQOhjSyRKILw2pDlM
         4xRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728920919; x=1729525719;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NQuhNjqG9A4ysuIinRQhei7fHPxyrjwXLCFyUeTW3+A=;
        b=RwpUrvSR6bS0wWu43hzCJqzg7KdQqRpikL8KO2dOe4R/RLmCM2dZRIjewJhASpnrF1
         WzWqJfFfHh4mk2yvZ1jR/JDxgf2rD5iKSHtGvbEiX4ZBQE+1Wbj2RZRnAIbT8YD5z7LB
         asw/vKkyFSFugdGU311g2eW8xApKxW/c9OZfUNWGzEn3rc21Imje551TNI44cW0hxzc4
         viT7jiiWfOWb9eioFpg3cuDQFr4yrashhlb4cn4/K7mNU2EX72grmm8NU3D8mPVx1oMO
         J8yh2lN/DumapD9aG3TRtiQv5PR+3bbdNVr1qBT9itJ2XtZOgFmjCCU26ZLxW0Mk/rCv
         WBQA==
X-Forwarded-Encrypted: i=1; AJvYcCVQzjwXL/zdNRhy6cAJZ3goaBZmGTQ9u4Hh2dSlTpdq2YCgruZWT6VWgmXYYimXFznJOKz3x0jmN5QF@vger.kernel.org
X-Gm-Message-State: AOJu0YysrSbMmouSz193EYe2vQOiaSiO6R87zBw+rXEItzJjPE4L7iWB
	wVszRglY1I0S19+uqD2hfDwWvVAjtrb10WPDY4Ls6ZPjFc65fMfZPLfMPm1E+mU=
X-Google-Smtp-Source: AGHT+IG4V4AZbocEw7Zs+OTB3XyUfkmbanLEi8JX1ATBmgTxW4aFl25lhdvdJUhLmgniX5mKet1USw==
X-Received: by 2002:a05:600c:1c9c:b0:430:563a:b20a with SMTP id 5b1f17b1804b1-431255dc851mr75876565e9.11.1728920918893;
        Mon, 14 Oct 2024 08:48:38 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:6bf3:bb7:467:a56f? ([2a01:e0a:982:cbb0:6bf3:bb7:467:a56f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-430ccf51c69sm155310915e9.28.2024.10.14.08.48.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2024 08:48:38 -0700 (PDT)
Message-ID: <c1cd82c2-5af7-44ec-ac18-996dbc212ce0@linaro.org>
Date: Mon, 14 Oct 2024 17:48:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Force host dr_mode for usb_2
 controller
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241014-x1e80100-usb2-dwc3-set-dr-mode-host-v1-1-3baab3ad17d8@linaro.org>
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
In-Reply-To: <20241014-x1e80100-usb2-dwc3-set-dr-mode-host-v1-1-3baab3ad17d8@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 14/10/2024 16:14, Abel Vesa wrote:
> The usb_2 controller has only a USB 2.0 PHY connected to it. There is no
> USB 3.x PHY fot it. So since dual-role is not an option, explicitly set
> the dr_mode to host to match the hardware.

I don't follow, dual role is perfectly possible with USB2 only, where is the limitation ?

Neil

> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e80100.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 0e6802c1d2d8375987c614ec69c440e2f38d25c6..4da13c8472392d842442193dc740027fa011ee1f 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -4143,6 +4143,7 @@ usb_2_dwc3: usb@a200000 {
>   				iommus = <&apps_smmu 0x14e0 0x0>;
>   				phys = <&usb_2_hsphy>;
>   				phy-names = "usb2-phy";
> +				dr_mode = "host";
>   				maximum-speed = "high-speed";
>   
>   				ports {
> 
> ---
> base-commit: d61a00525464bfc5fe92c6ad713350988e492b88
> change-id: 20241014-x1e80100-usb2-dwc3-set-dr-mode-host-35312d1d25b2
> 
> Best regards,


