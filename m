Return-Path: <devicetree+bounces-151149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7139EA44941
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 19:00:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 183EC189239A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 18:00:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE93C19CC34;
	Tue, 25 Feb 2025 17:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ebZv8Uuk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12FC19992E
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 17:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740506371; cv=none; b=Fdi3k2nCDYUz/ba4YIhNUmlNPWxtJvxaz0201m6EYJo7EXhbCrhkFGP2sa77BO0NTbs2KtX6GGvkGG5dVz5L2++Ev/dVVH2yVhqveoYJD6TP/NMRuicEeWRLn2h/0pDhTLdypGb8VmeZebv5me0sAEqmU6Bk51mMy8KQncrigZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740506371; c=relaxed/simple;
	bh=dH+ysp3Gqt2fhg6VD/Lzu70mBlOTfesla2+cjoYPApk=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=TOkjYaKyMOMXhc7PHL/vLPjcKYvorR8wfQF22VyC5+CvAAdkYLb5mVKcUZRuVPLVXHSpGdwCZ8diPNcXyMwsjEWO4mk19II3paDDyvdhD6f96hn4IuFnabRTLtItAY1w3cKq+QaTQBZO4R6BHwnh1pX9vJIdssgIJGuDDxZuwiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ebZv8Uuk; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-439a4fc2d65so57748195e9.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740506368; x=1741111168; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hjDMnEpfyvE0/n/R7fglBpQPZZ2H1kPvQ+lYLuofLIk=;
        b=ebZv8UukIkbB7BsKnu5rCcXwm2YK/Y5YUvPAVMguyz3wh9kdvvtd+F7bmH/IhFvp8z
         e0RcOjFZPV7DH3+AJz+Thm7DaGjG07LFCPmSioUphcqwhPZLfspW9dQGH04Gm4gWSYcr
         riNisujxJNN/+FYnXnDBvr97V6So33sFxGAm3J1A2CzpR3B4fXEAatYMi7trRRVJqPi2
         qbyRWIiACceSt7sfJpltu7/mkfpf9UnnVF/PvmG8P2/HizNsI0c6S3ahOgH8rVtO4G2W
         VThe773GCp7bPTOpX9ISKqzpLiKBXL408lWYiD4Ck1MsHCDEDjFzJhVegdn5FVPCLItu
         v7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740506368; x=1741111168;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hjDMnEpfyvE0/n/R7fglBpQPZZ2H1kPvQ+lYLuofLIk=;
        b=fvz1+FORkkfhxE9eV9rCC2G6zo4yAG45hBRLegjGN6uMgLFdHFe5vaYSUZD6fW0phM
         ae5wKXAdzlSozU4BJNTHhYib21Xn25Tdw5k4lEGbth9L/5bWSRldLvvnA8WZEMv9b3tH
         rwJoGcUOAOwt6qu23Lndm5AT9xYXhbkqQPf4tj5YidlssgBBU74V/yFhfhYnlPnNQOEX
         sOamSi9rTPyvt81Np49r+Hpy/7jmlmyvUGHyqeKLRdkyj/3ockveVUorm/psyou6VXDB
         h2znNEKZUHBWe1fppvR7+AZnTJSsxR8q7TtiI9IwSS4bKoT3L4NZDCOMFL45M9qpue3T
         4UBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIlCB7VLKCVcW77+SQBb/o3b4wCi9bCh3yJeM6G6z13Bru9VmPnsQEzJJ077qTz8or+RtqEEACC2Pk@vger.kernel.org
X-Gm-Message-State: AOJu0YxF/kgOGWptwK4uAHcFsWZcBI6TJIB/+cwe3MghplzTh9L4muIl
	YNgX/k4FPJsTOHwdANsDQS4wTCDEkQ6s2toEfNbP5GruLBUZKtVdZbZraEkcvlM=
X-Gm-Gg: ASbGnctgz4+vgDsKDGig5tpem3Lt9TiSHIgG6eXHdDW6DyQngiAr8k/tKcvqrBpNU+U
	63h++wu0amQrD87lwiN+DRRy0AW203pxPWLNZCLmLhlfwot4FKDWy45dkblpZNJYP88Kqf2raMX
	Gwd+2KbYMmoJG/N8fhzbnrhzrJVVpqPOTJBVl5UQN15qjcnGD4x5uILyQtyTc29YnsM9SWYtJWh
	6vAsRgyG3fvc396E/FS70VIROUkPXBMThUpZjQQHz4HrsD31RPYOy0QHVLtjv3dwL6p1foW17Y5
	BnuFKM0Wskip+DpY589TdyaHBVvmnOu2W4Mg85eY1OYXjA4iGT+8ekvzkmaB868GYgx3uwYvp/H
	hQxA=
X-Google-Smtp-Source: AGHT+IHtZcIoQJsi5dScv1l8X9lcH5/APbnkiDicrQKXKhdO2SowhVhMLSTlVqGJk0pL3x+gu1om+g==
X-Received: by 2002:a05:600c:1f90:b0:439:8544:1903 with SMTP id 5b1f17b1804b1-43ab0f64430mr41996155e9.20.1740506368036;
        Tue, 25 Feb 2025 09:59:28 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:23a1:f1ec:7a08:3a2b? ([2a01:e0a:982:cbb0:23a1:f1ec:7a08:3a2b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ab2c50dcfsm21371065e9.0.2025.02.25.09.59.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 09:59:27 -0800 (PST)
Message-ID: <2d51cb9e-b8c5-4cf1-bd7a-751fb633275c@linaro.org>
Date: Tue, 25 Feb 2025 18:59:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: (subset) [PATCH v7 0/5] Driver for pre-DCP apple display
 controller.
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jessica Zhang
 <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev,
 Janne Grunau <j@jannau.net>, Sasha Finkelstein <fnkl.kernel@gmail.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alyssa Ross <hi@alyssa.is>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Neal Gompa <neal@gompa.dev>, Nick Chan <towinchenmi@gmail.com>
References: <20250217-adpdrm-v7-0-ca2e44b3c7d8@gmail.com>
 <174047913824.2131221.6545389561298332217.b4-ty@linaro.org>
 <CAA8EJpqM8ZQ-ScEtEBXaUF2Nargtp_TBAyMYvbJ49PGbwPWjaQ@mail.gmail.com>
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
In-Reply-To: <CAA8EJpqM8ZQ-ScEtEBXaUF2Nargtp_TBAyMYvbJ49PGbwPWjaQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/02/2025 12:37, Dmitry Baryshkov wrote:
> On Tue, 25 Feb 2025 at 12:25, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>
>> Hi,
>>
>> On Mon, 17 Feb 2025 12:39:30 +0100, Sasha Finkelstein wrote:
>>> This patch series adds support for a secondary display controller
>>> present on Apple M1/M2 chips and used to drive the display of the
>>> "touchbar" touch panel present on those.
>>>
>>>
>>
>> Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)
>>
>> [3/5] drm: panel: Add a panel driver for the Summit display
>>        https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/40115947b59f2ca361a47615304dff0a2b69a2b4
> 
> Without the bindings?!
> 

Bindings will be funneled with the rest of the ADP driver, the panel driver can be applied individually.

Neil

