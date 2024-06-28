Return-Path: <devicetree+bounces-81225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E33A691BA2C
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 10:37:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1212E1C21143
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE65514E2EF;
	Fri, 28 Jun 2024 08:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kwq9LOWn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7C41487EB
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719563784; cv=none; b=Jlt/8LOr3UeJXox9qWp6pvJ6MgctIc0MPU5SSlhQVndgIZAfXauOm8uRJkrkESbllqWjYwJMpSQMdgcW/8nFWoUaYYwV8gnCMUr7fe+Wt2D8czB2QEyYmcJqiIei92vyGB4xsqwStLGrhSEV2oT13baZ63osBGKfPmzHhqVcmjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719563784; c=relaxed/simple;
	bh=jTSfx6Q2vbpc+zTU2xrsBW2IX7M9yEBAL1V6LKb12f4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=pzE3q1GCqyZmFRYtdD8gJDxWQS8tFe+NRdN6BK93Q/jj5k0yu9ae6j+TghlF9AS7oOznvK+8YV79WigpNBNBc4uwCMs5+aU75w5KwCiEoeFtJuI3Miya8q5q3882ypQTkj27U7CDTiIH108JUdIEPn+ZI0mNOTBMctEFWJCKyFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kwq9LOWn; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ebed33cb65so3328271fa.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719563781; x=1720168581; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zDb68hW066iuzOiiQ2VnUlOWvx4tBIA+y5FTzYzGwMY=;
        b=Kwq9LOWn+fD8MhFt7fU7ovLlsTmsG6TUfbDzbeorKdwXqB/lYSkFt8X0YPgnW0lUiz
         3HLj9CXF7ps7D3cr0lqpYWLBG3DnQkCohgUM9PWjLwu31ZFeLRRavCP8GiD7yuk+zc/h
         9o080yXg4xnCVXo5uY+LImqgiKPoqyOuS7DuKP+LibLGm77XE0OxJg4E3VadKvbGsfc/
         +u21EbdGl0U0vL2AGG1MSUz2uN8OawKRKFKFrwHbIGYKhOahC49deceCV1NUJyJb6J0q
         ztHyLIVo/qXUVSsoBrmwotn9mqMcIBC0bvMGURU2jNbvhQh0HcPL2bwOqnOu+M7LXM1e
         MTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719563781; x=1720168581;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zDb68hW066iuzOiiQ2VnUlOWvx4tBIA+y5FTzYzGwMY=;
        b=XMgA+ISDlxDrPXPHMTTG3Ns+EHoxNalij1PoVfp5rhl7lCpW8jaKadBykEX4qSSbw5
         bUm55JzIOjEXzB/ykIIm5DIr+L8jZU08mTDO+i84y/F2/NoKlqjONwOoVRM/wCQForh5
         YIMjEf+uxwWYOx2eKwnhO8EysW6vG4WTWIRJh0Grp2cqlfSlbO3HMluaFNW+nqxkJ0Mz
         r5DyUsx8AClrNlJdTQjQC3zTZz+dnga1W1bms0passopxT0nqLZiPvOm5PTwzhnwixWX
         ud/hQKhAC+B16+dwiIL36Tf+e56I1E5LcwPt923PVFCS43M+eTFt6s46rEz74XU8Xllz
         2u8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVwqxOvkkkuM7gV5l9of2/kPvX2ALL2W12zpqgOaEuIUiRqDC4ETd5U2JxiBq9Y/sujLIg5ng/u2d+Kxj8m/ZrNq59rDZ5WF7yQJg==
X-Gm-Message-State: AOJu0Yw/gI3FpfsiA4+QZSiUUfOHj+cXFz6KsG0BmBt8jx8QTV8irklC
	Zg9V9HBeBaLENJ011X0KzArI3d0NJhh5Y4cuQSdf147yMjUdYCn8ZjBJsbxCnLw=
X-Google-Smtp-Source: AGHT+IGSS2uuHkO4/MuG/M3e/kHyZ8thwkKSOxthIVen75iICKKl6wLeffk0Mx4bh95U1jhRuDh3cA==
X-Received: by 2002:a2e:a98c:0:b0:2ec:89b8:3d2f with SMTP id 38308e7fff4ca-2ec89b84582mr78445711fa.19.1719563780734;
        Fri, 28 Jun 2024 01:36:20 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b17d:324d:ca1:ab31? ([2a01:e0a:982:cbb0:b17d:324d:ca1:ab31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256af59732sm24574945e9.11.2024.06.28.01.36.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jun 2024 01:36:20 -0700 (PDT)
Message-ID: <0975fcb0-f4e7-4006-997b-92fcf57e450b@linaro.org>
Date: Fri, 28 Jun 2024 10:36:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add Jiangsu Smartwin
 SMMT043480272A-A19
To: Marco Felsch <m.felsch@pengutronix.de>, quic_jesszhan@quicinc.com,
 sam@ravnborg.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, thierry.reding@gmail.com
Cc: kernel@pengutronix.de, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240626161714.4057983-1-m.felsch@pengutronix.de>
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
In-Reply-To: <20240626161714.4057983-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Marco,

On 26/06/2024 18:17, Marco Felsch wrote:
> Add compatible to panel-simple for Jiangsu Smartwin Electronics
> SMMT043480272A-A19 4.3" 480x272 LCD-TFT panel.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>   .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 5067f5c0a272..6fcb1ebb86f9 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -206,6 +206,8 @@ properties:
>         - innolux,p120zdg-bf1
>           # Innolux Corporation 7.0" WSVGA (1024x600) TFT LCD panel
>         - innolux,zj070na-01p
> +        # Jiangsu Smartwin Electronics 4.3" (480x272) TFT LCD panel
> +      - jianda,smmt043480272a-a19
>           # King & Display KD116N21-30NV-A010 eDP TFT LCD panel
>         - kingdisplay,kd116n21-30nv-a010
>           # Kaohsiung Opto-Electronics Inc. 5.7" QVGA (320 x 240) TFT LCD panel

This doesn't apply anymore, Could you rebased on drm-misc-next ?

Thanks,
Neil

