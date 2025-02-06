Return-Path: <devicetree+bounces-143496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC739A2A2B3
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:55:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DE26E7A2055
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7201D22579C;
	Thu,  6 Feb 2025 07:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="f46bTA+f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A95422578F
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738828453; cv=none; b=prdu3V5rBAfEB95UnPbzMsqSLQY5rvFH7pmjojBy0oVIR5tID4+pokk/rW+HgNHsfA+6RpugennvZtQWlMJWI9d/t8YqhpiZqdeBea7UEzJCNs6X1LnrQx3Hy9O9eOhj2mkJLDaRYsyQJJMBQdkgbCJPdwu0mBQsk78WMar/AYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738828453; c=relaxed/simple;
	bh=Y9WC87bLe5NehjYOXZdbt0lMGSd6u5imi7raAGHmnlI=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=bUo8+fQlj4tgaRWjHXLdybQrhgfLvRnjLniiIfIVjRzhrDoxsqUcuYa+kTe0YfccIG1wt3VTRLykJ4v2hjUmtINp06JZJRrBJGz2OvhLtnDnsiq8H5hqRpZm2vvnjZvdAMRcgoYcCTsHsvy+ojlDfSx54PmWziUmG+fqqJKIStQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=f46bTA+f; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4363dc916ceso10101485e9.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:54:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738828449; x=1739433249; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q+U3GhEYNSJGMFlCgGumTWq6/ff6zdU5LVaoQovoEL0=;
        b=f46bTA+fgEP+fXkSL+GMzyFtvwYIT2yEc+poTM16ziYwTCale8LeTnOEqptd8WUDyi
         OyFkAZy3FwkV4OxCw02944vff23zQo1aoxcoREe8QCqRC2lc2DMGXf6j1P1ZgBntKo1l
         ALRKP+E7THxvvmqrpIBxPGAmzDkfHY3CBm8rq0Ig8MQFRjpeidatuJ7SzEitkKx3k4is
         KG4wxIviW4v/RSK2+SyenQ8yEWnPvuWg5G3BTjga/Mp3Wb4Icyop+FC4thTqUoHso24x
         vN6B2tdv5mzgX+HXIENkrUiY94BGfGKe1BhdecaQVblWNNR7TFvq+LfW7GJu/I1XevPy
         SawQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738828449; x=1739433249;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Q+U3GhEYNSJGMFlCgGumTWq6/ff6zdU5LVaoQovoEL0=;
        b=Ey29y1wViej5GtAnS0+Ynrt+akSf/Dk9IqGd9hZsqyE2JIGDH0+GJ2TmshMP5+1T/+
         mqcHckxPJc44FDAJlY41R/6cnATkLkSKGH8XhCvgv2uFiuG+ybClo6MUYwLrRrz8+AR8
         ZCvHcP2c3QMKOxQFkT0TYA5mQ0KWUI1j5uJdpH5lClvya6oNQ00Rr3XokmVXLnqd9dno
         nfMw7whabzpMyUO2zv9U5JVKArxtN6Bj207m2dBEhenPa8X+F1XhX+j7C1Z1kSU30U/j
         5JBiAMGW/l9oKysV4ZVGSicnPITXAHtOPayCcdLZmw2bptbkFSkbG09dSiLylP+gdvg/
         0Xbw==
X-Forwarded-Encrypted: i=1; AJvYcCWWghWxsZNSJDiCZ1ZSVyulMknACKEmnsZbHfnFLpeO50MJ7tg4NXdqjfp4eT/Sa3Z0or100ZNb2IIY@vger.kernel.org
X-Gm-Message-State: AOJu0YyKXo8NzkKYlKd2N1iKlsbRjK1QH02Eu/A+xGJznqKbqwmnzxrC
	n+auu6CGsrL0UVIi9cwwIQTckWQa+jjSgPUpEuP1ToE6guepNlJADJarqf+1prg=
X-Gm-Gg: ASbGncvC/pkP/gyJ2tIeoZK2Ep6ZhiNLODytSHQC2lTqJImZQ62eXWtZsqaQfBlrLOK
	HroqnXKh7kbUB64Jh9bCY5Y60NVbtOFVhDXUU55s/j7psKSK67aL2YTHtBfme0a7POXWDmYioeI
	LsC0jtdtsDAgeD1AVYz6aIrPO1WQ8mZ2/onBlSjmML8a/L4XhhYIEjFFidHRS8buqjv8G9qJSrc
	2rokFI/qaFOEoYC6Bmsk1fKSioE5jmfxKcccU2N9WpJ2YY1aJsvdO24g74lJsi2UzW4kyZfJolL
	6VkNmhu7jTh3NffpoOwofNxpA7D1AxrLhbHqeMv9oxVvC8hEk2N3u+6hFnKIJmQ9cQQN
X-Google-Smtp-Source: AGHT+IGrzW1LdzySmLH3XUvU+ruX4SLesnotJf/9MZ7S4Ul1OkUGYV9PvZdjXAlQoh8a/JyV5GRRkQ==
X-Received: by 2002:a05:600c:4703:b0:436:185f:dfae with SMTP id 5b1f17b1804b1-43912d1510emr13458025e9.6.1738828448157;
        Wed, 05 Feb 2025 23:54:08 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:4972:46a2:e0cb:c0a6? ([2a01:e0a:982:cbb0:4972:46a2:e0cb:c0a6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc050d688sm522181f8f.24.2025.02.05.23.54.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2025 23:54:07 -0800 (PST)
Message-ID: <9db01455-f3e9-474b-b87a-30f934ff6a02@linaro.org>
Date: Thu, 6 Feb 2025 08:54:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 0/5] Driver for pre-DCP apple display controller.
To: fnkl.kernel@gmail.com, Hector Martin <marcan@marcan.st>,
 Sven Peter <sven@svenpeter.dev>, Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jessica Zhang
 <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alyssa Ross <hi@alyssa.is>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Janne Grunau <j@jannau.net>, Nick Chan <towinchenmi@gmail.com>
References: <20250205-adpdrm-v5-0-4e4ec979bbf2@gmail.com>
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
In-Reply-To: <20250205-adpdrm-v5-0-4e4ec979bbf2@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/02/2025 23:10, Sasha Finkelstein via B4 Relay wrote:
> Hi.
> 
> This patch series adds support for a secondary display controller
> present on Apple M1/M2 chips and used to drive the display of the
> "touchbar" touch panel present on those.
> 
> Signed-off-by: Sasha Finkelstein <fnkl.kernel@gmail.com>
> ---

LGTM should patches 1, 2, 3 & 5 go via drm-misc ?

Neil

