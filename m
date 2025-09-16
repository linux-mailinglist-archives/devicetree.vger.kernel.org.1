Return-Path: <devicetree+bounces-217759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B77CAB592C1
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:53:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A38E77A824E
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB71F2BE035;
	Tue, 16 Sep 2025 09:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i8thyw/s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB8B2BDC0F
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 09:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758016372; cv=none; b=N4iop7gNGOpiHj/bIzyzPOwVAw5Bg8fGyHrqgSjD5omTOmsrzJgyZ5MH4X0dyLdbAaWBQLz40/aUuKvFjbbQctWZ9AokqQZJAz1nu8kYUzXingcwvwskGnLATumn38iShZuGY/csggpjgDeECv9+nDaXrbS6LVPiaAFRjGOTpbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758016372; c=relaxed/simple;
	bh=5SIId/2MLDotdSZeD09I2XF+l3USewB2Vnqq/I1v5I4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=OKIZWHVUQcqkTDaPZk/lO/YR0+srpoQH24NSJP29Ih4EGIxCqf2UZ7/AwOUo8MY41iwoo9AIn6IxXoA4ipExGkrTtKLUIRWvlEjzFdkfVaCR1/fNN5m5K9POX0yr9frr2FiWiAp682rHp3maQgcwuN2Mha/++aBezpl141aJ1TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i8thyw/s; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45f29dd8490so23347115e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758016369; x=1758621169; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qVcKrDPxSicv5bcVvghAcm8ufs/BxpJvXcyfbDYCDIk=;
        b=i8thyw/sEo89YtEcymIR7lgErAwLuUKuZ4l0iJrkviVuqiMaxuCED/FkMGy8AmwNkX
         1rDEm0+YtCmOE3xTZIvwF4Na7/YruZwRXvFVnx8oF6E9iogaAa6YhjhoM+zwDQ9b2Yk6
         ZQh1N1dvtnx7X80AbRJIx8MAh+ttKIEjZeUHE6jOrGDNn7chAb/Vw4wGcE+oopyFaVDW
         kqKxNrZXz3ZrLyQFVju40f2CWgKE5YQNPIcq9VDk/AbqLHkNLfzRryLsu3hAZ/NXEGtc
         cB2tTAefz1o4BvZCF0KZ2F11pkYbqAo+KLr73vDSJgpea+g8pPdpIut68lESouI4AOsR
         diKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758016369; x=1758621169;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qVcKrDPxSicv5bcVvghAcm8ufs/BxpJvXcyfbDYCDIk=;
        b=pxz4Ibzu463T8zfFWcT4g8xuzNCt4PktR7jhu/miD4+bveODbDuLSc4CVvCxEuBO2R
         PE1h6MgrPPfJd8wYagT3+PDduqShsGr4siToZqT3ard+AbFqT26A7MXCyEyCuJLiD4ZO
         u6egqmUiGuW2nIXiIwctAyPSalTm9zceM5yRnQw44NkMRQ12yuB+jkRBKKWPCkIbTJYV
         UOBdtyi0yAxn/SJcJDOZMZkVjS4qZrzeArr4fGTSVZuAVkVuiLkKu5TmnP1Au2gy1r7i
         EnMKJr024oWapg6Y3s212YaXgzo3ONVqrQuFdIdy6qd67DHVzBzTtd0ufOwLAoMwz8+R
         /2QQ==
X-Forwarded-Encrypted: i=1; AJvYcCV79pedwU1gMsPf16a92tJHK1LC4Ot3v34h1qVggT0KYbViHUgJK77s2zb9sFkjOz6UfGGx6bZ8urUt@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg0tdsc8R+0ZSL9jy9Ek46Dkc+KAPpAH0klMEGZhOqnE3BUJzt
	Y+9u5K2UNycp9vCbvWHEbB1Qk1VASv4b2Xu4261bx+qkePUNwlMLDlQg3tM2Z9wbWcc=
X-Gm-Gg: ASbGncvjrfxa9e7gnXfmotn9B5f1s2ItfknDMLY+E9ADkifXHU03TQjvD6B5nL11+tz
	9ozpqGFwgol5ufXz9Cv9ZYX9O5EPlFlk8475Mvv73bRb5w0/e1ilNULC59wRwu8vZI58E1Em4Wr
	yUvcOoJxaRfTbJ0OI3s4zVGT28hJCPF/Cdyro1UUU5E38185BiiYY9B/PNOgURL7HdLMoslIfef
	+ehthhJVRtXDhMbROxXbl8XGBhZp/Mxmr3X6gyZG5DRFdzHswXsQwKlMOJ7CEcchtNGykAvrMPY
	IsnzgDHNMFfKjM/X14Kj4+oIb+cxXvicKvlzk67SA3v11iJ858Z5vC7IoKJQ2+gY3GAO4xRg0Zs
	d2gMea9G6JUnrsSbZ9M4Bw03g+TfxAJMu3oc93d23drADRPf4sqv20fr5oa5BkpOP0YYaAJNAEd
	I+X7fqAmUiZg==
X-Google-Smtp-Source: AGHT+IHoGh7uOixtjP/Er8JY12tPRLMSq1z9p+zy1uk+XBUoXsGMeyDeXqq+QheTUXeal7boEvKehg==
X-Received: by 2002:a05:600c:3b25:b0:45d:d50e:20c3 with SMTP id 5b1f17b1804b1-45f21200c82mr130407845e9.29.1758016368885;
        Tue, 16 Sep 2025 02:52:48 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:bcbd:bbe2:a1be:30ec? ([2a01:e0a:3d9:2080:bcbd:bbe2:a1be:30ec])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e82f647b83sm14364300f8f.20.2025.09.16.02.52.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 02:52:48 -0700 (PDT)
Message-ID: <004e4b73-b695-4e37-b484-4fbc340701ea@linaro.org>
Date: Tue, 16 Sep 2025 11:52:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH] dt-bindings: ili9881c: Allow port subnode
To: Marek Vasut <marek.vasut@mailbox.org>, dri-devel@lists.freedesktop.org
Cc: Conor Dooley <conor+dt@kernel.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 David Airlie <airlied@gmail.com>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>,
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <20250904200130.168263-1-marek.vasut+renesas@mailbox.org>
 <a0d85f06-a87b-40f6-a74a-27b148f309fd@linaro.org>
 <5b152739-6b1d-4742-8163-bb6e6b39822a@mailbox.org>
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
In-Reply-To: <5b152739-6b1d-4742-8163-bb6e6b39822a@mailbox.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 16/09/2025 10:15, Marek Vasut wrote:
> On 9/5/25 9:51 AM, Neil Armstrong wrote:
>> On 04/09/2025 22:01, Marek Vasut wrote:
>>> The ILI9881C is a DSI panel, which can be tied to a DSI controller
>>> using OF graph port/endpoint. Allow the port subnode in the binding.
>>>
>>> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
>>> ---
>>> Cc: Conor Dooley <conor+dt@kernel.org>
>>> Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>
>>> Cc: David Airlie <airlied@gmail.com>
>>> Cc: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
>>> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>> Cc: Maxime Ripard <mripard@kernel.org>
>>> Cc: Neil Armstrong <neil.armstrong@linaro.org>
>>> Cc: Rob Herring <robh@kernel.org>
>>> Cc: Simona Vetter <simona@ffwll.ch>
>>> Cc: Thomas Zimmermann <tzimmermann@suse.de>
>>> Cc: devicetree@vger.kernel.org
>>> Cc: dri-devel@lists.freedesktop.org
>>> Cc: linux-renesas-soc@vger.kernel.org
>>> ---
>>>   .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
>>>   1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/panel/ ilitek,ili9881c.yaml b/Documentation/devicetree/bindings/display/ panel/ilitek,ili9881c.yaml
>>> index 434cc6af9c954..cf0aa996e072d 100644
>>> --- a/Documentation/devicetree/bindings/display/panel/ ilitek,ili9881c.yaml
>>> +++ b/Documentation/devicetree/bindings/display/panel/ ilitek,ili9881c.yaml
>>> @@ -30,6 +30,7 @@ properties:
>>>       maxItems: 1
>>>     backlight: true
>>> +  port: true
>>>     power-supply: true
>>>     reset-gpios: true
>>>     rotation: true
>>
>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> 
> Would it be OK to pick this one up via drm-misc (and possibly also the other ili9881c RPi 5" Display 2 patches), or shall I wait a bit longer ?

yes it's ok to pick via drm-misc, bit it's too late for v6.18.

Neil

