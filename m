Return-Path: <devicetree+bounces-152493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 74366A49353
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 09:22:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 720FD1707D7
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 08:22:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE50242930;
	Fri, 28 Feb 2025 08:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wlsOIsU2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B380E1A315A
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 08:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740730961; cv=none; b=SWH6AAQqSlc5Ok18WIefAAXTrTzeWcTTc6o1jWDBFInMf2JirD1ATGwuKDChGFBqUggYovLF7FUxIcooDoUOJam+qfAM6Ly1krNvmTEVUpRPZ9/TcEO923ga6zuGUvVXUipyqQoS26Ql/mvjSHAO0w1/rihSv8QpTTGMaYlYvCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740730961; c=relaxed/simple;
	bh=2fDC8q5BPRG+8Lbe1lwlKdfXU4xntYVHW14jlpr/FUQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=MWsuLgo3cTymKi4HnurXLAyIICY5zrLRneGdtS6OVkVQ+qAnP5tml0X6eAxikdjwbfJOMFzzrVzYPmHUSNzHjypv59X+J1CgRFoPIsM46Il13s5pIVBKcpR9H24jNgV5J+iCCzPC69XKhHj3mp9iaiGU0vOgIX7157E+1Y/FqJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wlsOIsU2; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4394345e4d5so12747295e9.0
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 00:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740730958; x=1741335758; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RWBUahnOFyPNyFGFF08VvduuyQVGQsvnK+/x+xqO5Lg=;
        b=wlsOIsU2Sv3t3jUfOvmLRriR3HFUIdLt22bCdhy0kYutYmb+Cy5W4qGcRNtHWqkJLl
         nZWd/CnZuIpYk0KCeRsrHAOEAHCHnlYiW8TyVO576/HGqGRyiHzQ+ePJLoSo5SbGtW9g
         qtjuI2GYI4RAYix8eC2R50j7iFL3UMZB+C0qJ34it/13ySi1hNl292xC15QmolQ0y0AQ
         UYuA+2oJF2EOCZ3rw/Sal7EiS6Ut+8vjjWd0hUMwcciooeoJLdbD4mS2TI0NFJqQQG0c
         HcbIBdf0ARjsteVpOa9Al6Eg4wgNrtGOAskz3QwXbIWPQiLROawr/t47RCsZR0uk/rA0
         H41w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740730958; x=1741335758;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RWBUahnOFyPNyFGFF08VvduuyQVGQsvnK+/x+xqO5Lg=;
        b=tTtUAR5/JghdZIjfN4xTf9YUx0w/A2fGJSKmL/M/7Fnmx95l47PwQklhdbV/T/neaR
         mOX6K8bhhLZ3NW91SQR0ZPZb/PJm9ksgPU7ny+kHbAhzVYqNsKfdUT1bNsxpjtWJLaJ/
         qji4Sw1pBibRwOMEkYK8L2va/Hj4reT+2cCqvBP+0TJffRh4wIX//JyKzDIJLZOamLN0
         2BQLzIMdHLX/PhTgnPRAlyKCEe68aro/VNuXtCfw6zkGsdwgSKa3KEpRfnOijS7yURBk
         j+Ums3jEm0i9sFb+hHoj1j7ra9EsdyiDCqPJ/O1TJDZHbC3BfbIi7H5RS98nw7018FHN
         OXyA==
X-Forwarded-Encrypted: i=1; AJvYcCV8AMxb+geSuR+PBPqMpQXV/WSL99YrWCLs9EiH43NQ8exChgJN04F1bmui/zcrgTui04X22PZQ4Lrd@vger.kernel.org
X-Gm-Message-State: AOJu0YzbJBhSjHujDnZKFaFz2eREm8QKipKlpuu2itST0PVM9/Nkem0N
	0EMrgPZI0mEVKxO5Nag7N7Q+OxriI47UUETggprvsN/OwSo+RvoD34eW39CCBKE=
X-Gm-Gg: ASbGncuyk4FBEWrkxNgOcCsMoNqvGtEHQ8YmapKKA5GOgzmoTGuEj82rP0qsT0z1rqe
	Px3aM+cc7chAiftVQ7uLEziMx8Ev9DU4i3iNgze2VHSYH0LZAhC9fputtqLLmyG54ZI8uAhZQr3
	bf297WsNW8veF8gG2bmc3Zy7fLFEDKugHE0b2xg6mpo51/wsacdqtCm0EeBijf76mh/kOKn/wr2
	EMG99oPsmrWVpqIjytRkM9NNpNsgLwCabKqOA/oYXXiOdA+0NxcWK+emA4ezU/RyoXAoFAk6/+3
	qesOcmKDVWF+e5cP6yZUkL4D7dBL7A+9YVDRkr4MoHjW/1/ILV91Ex+ZPuzH51/BFa9cbnPmrQA
	3JbY=
X-Google-Smtp-Source: AGHT+IFyYei/dEAxk9MKfGVhD1RID7xVrL1ORWSm7J7H0FBPENv6nYFNGtp+2MRGC22AtVbDsUCCuw==
X-Received: by 2002:a5d:64a6:0:b0:38d:e304:7478 with SMTP id ffacd0b85a97d-390eca06cffmr2412164f8f.38.1740730957988;
        Fri, 28 Feb 2025 00:22:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:c728:ed22:3bb8:f351? ([2a01:e0a:982:cbb0:c728:ed22:3bb8:f351])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b7c43sm4383676f8f.49.2025.02.28.00.22.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Feb 2025 00:22:37 -0800 (PST)
Message-ID: <6d0bc02b-5a03-42ee-ad8c-d348b6ebab8d@linaro.org>
Date: Fri, 28 Feb 2025 09:22:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v5 0/5] Pinctrl: Add Amlogic pinctrl driver
To: Linus Walleij <linus.walleij@linaro.org>, xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
References: <20250212-amlogic-pinctrl-v5-0-282bc2516804@amlogic.com>
 <CACRpkdZg-9Zr3f7zG36x7jGvT46FRfRJ40khNZDdYb01-BGigw@mail.gmail.com>
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
In-Reply-To: <CACRpkdZg-9Zr3f7zG36x7jGvT46FRfRJ40khNZDdYb01-BGigw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/02/2025 00:07, Linus Walleij wrote:
> Hi Xianwei,
> 
> I applied patches 1, 2, 3 and 5 to the pinctrl tree on this
> immutable branch:
> https://web.git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-amlogic-a4
> 
> On Wed, Feb 12, 2025 at 6:24 AM Xianwei Zhao via B4 Relay
> <devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
> 
>>        arm64: dts: amlogic: a4: add pinctrl node
> 
> Please funnel this patch through the SoC tree.
> 
> If there are dependencies, they can be pulled in from the immutable
> branch.

Thanks pulled the immutable branch and the patch 4.

Neil

> 
> Yours,
> Linus Walleij


