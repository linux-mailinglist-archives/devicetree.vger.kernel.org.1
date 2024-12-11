Return-Path: <devicetree+bounces-129929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F889ED2E1
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 17:57:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E3341889F73
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 16:57:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E9A1DDC3A;
	Wed, 11 Dec 2024 16:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MG9ZxvAx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F341D63CA
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:57:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733936250; cv=none; b=A+8iQw9V88x8PajPUjq9gnKKbvcOarG21DJGKPg2c+jBk/sdsgvW7PkmIN8PI3nGLCtTfzgB+p4GORvroW/gMho/IsLp8JqV1AWpGO+gx+nUkphfaafT0U660XWLQM14tTmY1EasbTVr132gVGdcX4ahOhHyULClMkcykAJg4Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733936250; c=relaxed/simple;
	bh=hgABfKABfbmERmVSCc6PoQGplBLfsOvN+AwZZnCc+Xw=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=JWCKsasVA9iij6YMsGlXcVOoAIYKxaZUYKnIuhv2j0FuV58o5wD2w8N0ttLGg9rgcAUZkCPFkM/FFLIUmDMZ6pT18/mEDcqZgfOuQG4T4EXJu1rBP6FyX4YYRaOk612DFf2tb0FcjVyvhYqRDLYHB+2Wc/GUWivECBqD5y7Bpcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MG9ZxvAx; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-434ab938e37so45642265e9.0
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:57:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733936247; x=1734541047; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0m9l5oOp01vcv+9ToOizO+wEqix55Pyi80seUL6dtBo=;
        b=MG9ZxvAxcDip4FcF8JE2VdairYhcyar8yzuB3eOL07JVgf3VvIGyBMSJeqdaJDZA0+
         RSrYSpYVfy8NVfX/prtzTPCP9bFL9GQvFsCHHWWy/hkOB6AgzQeSEU7dsU1Orj0xgKYB
         FMw1hyzGZULVeJDmLyOgbGL1DX3g43VwIFLn5heCy1mzK/83JncguotgOTY0teFg8s3J
         blm4nA1BNbA1sFsznP0eX0+1S8OGptgCfltrAqugQ4IVcftan+NKOfpGb34ojmZXTILa
         IyWVZtfWLHxJgDK+J3mGwQwexUQtCYKlWJ9oPV25bQ0qZlo2bw1tFqjruj7+jVFUDEa0
         yAAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733936247; x=1734541047;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0m9l5oOp01vcv+9ToOizO+wEqix55Pyi80seUL6dtBo=;
        b=ULOXmc0j25nZlZ8/QJcI7kY+4ZVT8e09Ezf6Hxzlzz5DrDZa7UbxnTOXBPJBeA6Yl8
         Dpl1ch9qjgKnkNiDaUuMSaemk+BdL6dHOAjPCVLPjKq7r992xRUK4Kx0TF5dgiY1ta7s
         4IsBhDG9LhJnrVPNsFOm87WeWFaHcOo5cKBy9XtMoNwKLcSPoHex6a1YH9tnJrV0+I5K
         DFhsYwcbEkXcoufQ6kvksu6VHNI8CXhS2G0q1EgxVfuUSvsa7PP4bk2oug9CkY+b187e
         EJrOPS9fdbGpyFhMF5uNZCbweMzvLwmYiBImJSbU+Je11nOiyvdMRrn0/OcAp+Pqrwjf
         /Rmw==
X-Forwarded-Encrypted: i=1; AJvYcCXPNLoQVbQK1CBKxhm/BEVzlkG896MOXE+eX8Lj+blgy04GqBTi3kKiN1XfB6zmggOlIGfQmV/ZRY8B@vger.kernel.org
X-Gm-Message-State: AOJu0YwVn0UBvYFOoQAo3Y+GdyroZ5Q88+tgmJYE7PE+eNAbfGVm4zsE
	q+TaEKb26fx7MLW6+n+U9oIc1i//yLrP+N1nY8qFf6ullLTCD4Bf+uTDmgJ2qBA=
X-Gm-Gg: ASbGncs2WsTxVHWWSBxScASnmcEN5wCqlX/+2G0s/wujNAs3vF8lndwT2jO/WdiA+kK
	bzQ6DQIdikyXPmiHdjvcHCvckUHPeyMfAF4zKnztvY7u1rbpFyD/EWea+sN8uYG4fRkRCOMPeER
	ZfA4Fw3RT9QWFDbQRur15SXFKj16CMscK3YoW+gSKvBetCzRafMJflGT8mYCNVLZvMqIeIU7DOP
	rBT8iaJhBcPXZt4bTEj1biWbPvK2bOvspGKExBTQDIl9ZRvtVlXTaunfYlUm/L2ZHvjuOLUrG++
	mkOHEE/FBie/+8IgeyMiMIO7rwaYPWU=
X-Google-Smtp-Source: AGHT+IENx0NcRopIXx3SdVXYZNoSpCbTptpp3hxvIhVQS3f47TcSS/8i3UaxgjzRtqPiK5pkEZ+nig==
X-Received: by 2002:a05:600c:1d20:b0:431:55c1:f440 with SMTP id 5b1f17b1804b1-4361c431298mr32914025e9.30.1733936247337;
        Wed, 11 Dec 2024 08:57:27 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:d426:8f10:1673:5657? ([2a01:e0a:982:cbb0:d426:8f10:1673:5657])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4361ec87bc3sm14005935e9.1.2024.12.11.08.57.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 08:57:26 -0800 (PST)
Message-ID: <1b3d37ce-a362-4846-bb7f-7cbe4c28608b@linaro.org>
Date: Wed, 11 Dec 2024 17:57:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel-lvds: Add compatible
 for AUO G084SN05 V9
To: Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20241210105705.116116-1-festevam@gmail.com>
 <yujvdu3s6v7z7th2lrdscqfxocx2zy2u4owakisvnjppz2udqv@5ok2rcf4exd4>
 <CAOMZO5B3810+4RJsPUtL3ASxqpDd+UmC=GcY6t8-ad7NZXZLjQ@mail.gmail.com>
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
In-Reply-To: <CAOMZO5B3810+4RJsPUtL3ASxqpDd+UmC=GcY6t8-ad7NZXZLjQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 11/12/2024 17:29, Fabio Estevam wrote:
> Hi Neil,
> 
> On Wed, Dec 11, 2024 at 6:31 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On Tue, Dec 10, 2024 at 07:57:04AM -0300, Fabio Estevam wrote:
>>> From: Fabio Estevam <festevam@denx.de>
>>>
>>> The AUO G084SN05 V9 is an 8.4" 800x600 LVDS display.
>>>
>>> Add a compatible entry for this LVDS display model.
>>>
>>> Signed-off-by: Fabio Estevam <festevam@denx.de>
>>> ---
>>> Changes since v1:
>>> - Added devicetree@vger.kernel.org on Cc.
>>>
>>>   Documentation/devicetree/bindings/display/panel/panel-lvds.yaml | 2 ++
>>>   1 file changed, 2 insertions(+)
>>
>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Would it be OK for you if Shawn applies both patches via his i.MX ARM tree?

I don't think it's a good idea, there's no build dependency so I'd
rather apply patch 1 via drm-misc

Neil

