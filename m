Return-Path: <devicetree+bounces-207503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CD8B2FB69
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:56:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E8F3AB668E0
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 973162DC334;
	Thu, 21 Aug 2025 13:54:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iWz4lPi1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB962248F66
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 13:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755784452; cv=none; b=Rnt9jEjUEkYsy2MoIRks0z7TZXL/ZM66hX7GjcT9XInTLQoF2GtoMkCOIGkp7l4p2gnY1GOfdOMAWvlMkuScdsaUu4qT826HEt+Y37ff8AfW0eZGkNfMN7q1BxEwfoDLWtChMgQ8tqXKqrLQutqpChN2QvdbgmEeCAnusCFqn7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755784452; c=relaxed/simple;
	bh=K7K1KFmhjG6AH9WAfV1w1/GupF3x0r4fsGu82qYsV64=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=SMCjxIz3srsSrPfjVjEiZuwksWCkj8DZ8bYWAclHDK5nb6mqs6bNF6RGPWWLamENxRs0Vce7jPjLLvLl6hhyQvOOwcI8k5PWVpQTRYMorEakE43Spsh8cH99q5EC3VbPbCHCVTR5QZTSMRDJHJgGysps/ygoz1Vq8pW7n9L+PNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iWz4lPi1; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45a1abf5466so6918535e9.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755784449; x=1756389249; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NcAFOaN1CJ8Zx6t25zUDIgX+kWlzSknyU1WRK2iy4xs=;
        b=iWz4lPi1nw7ANIawVzKaAnvbhvvRw87EFwK1FgCaJWaBoIRnd16M5pPkZ39V4Qk2vi
         BBLtAfLl1u1VEN4ktfu0mK4BrsZpVtRBCM8705tnorSwndUz7Rjpu0iJOLr4CLXv0tIK
         lY9FmskCdmvTNQNMT/GPGLwc6zj8knaCoYYMGNnAJHitQeA12SljWs2dS6Mu4FZ2fcwA
         Gw9goF3WEol9NfhZIz1O1+VU1f+ur01jeW57upB++kQoSe4zJRWgMMbc2IC8oVXPYoKI
         aVPuZZ7jN6IS4zWs9QAmMCcquh6p519wWuEq0PjXpr+jvjhjC1T682n65DuFIot2PC1f
         zlLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755784449; x=1756389249;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NcAFOaN1CJ8Zx6t25zUDIgX+kWlzSknyU1WRK2iy4xs=;
        b=lXhNgwEdTRke8PbOODFfrgQngNkCHh/100lSZDqc24YJ9yghukbPwgo/TQrVGRcxSf
         wo2sIhfEGTox6Y2ETby6C8o4W5Kp/98VOdKLm+V/3YWi042D1Dgj6TKVFQSCkPQ95WPF
         iY29xlDJauAiQrsFf7Z7MNk2kxTZDLJANbCWCz7T2aEhvSJ4RfkxdvjkVwBLA/PQ1ZUz
         9JayL4+9y9IR0YIqAeh0+Lp/Y7eOFeplllPzV7JD/RCjWeWX3UG9EzOgAZIKN6HfMqSn
         lpVP86F3y5th2Dun3ptqMfKPNgxTw25HVAcwD8L5fE3qYakNj2Uf+OKiSWwqusW6UOS9
         fAAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWuyD2BvZ4Qh3UDKxKCAjuzL7o0U0CM6nkcNv0ePQvn4cyuaafb7yKzickuuxl9ruxmGOgRWvV/2mmN@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9Pp+6DAfJEgC92A+ZITz0LFNDDoEvEXcl/VOUoJTaMq5+4Ovz
	WXpYfcCBSPMuJViiRp1cm5iTJbYI9j2ASFQ5X/V1gYTGnRcUCWUdVlDo6ji0oY+/eUc=
X-Gm-Gg: ASbGncuzJdUBrskvcJm8bYe49J5pIYOnHB9nlMlPZVxMGr/f66caa6Ad+gt1fzlVadd
	1UJhX7eMW0aJa1lzSC8yOGG8X+MSMA8s3dboZWsHOHyYZCsavZvlzNJYLxDnMpquO3TB7gAyC/l
	Pl6YJcw7Tpz0x3Fdl1gFUUZCEgjspHnti1XYm9FXLA0Juqb5wipp2r2p6o3IbtLKco906qPdYfc
	/uGD8LSVfowW4opBwDLQef+8r4z0BD7lkcE6zooPExAY7/fZSMdyZJjuZtIqhVKwiQSmyf3ahgG
	rxvTyW+phBbMBVfpicc0uoPYdSXukL6DmsW35jxL1iDhLEqM9s8LHNVdPM6Gf4xgDIXz2ZlW/fw
	r9Ct4nW2bNL8rnjtu9Ky/bBwgagLtwFN7ZmLcqh1kmlK7qXDCjS1/Z666PtlbTniMYeB19Evk0/
	LZW7QMH044AQ==
X-Google-Smtp-Source: AGHT+IEsRKSBRUKz66P6P/5wWuHxTBcjLS0ZzpFh/MkwNVQjeeuRsGa7dz4SuecF+G6aOJVR3hB0kg==
X-Received: by 2002:a05:600c:4343:b0:45b:47e1:f603 with SMTP id 5b1f17b1804b1-45b4d817001mr12069425e9.18.1755784448937;
        Thu, 21 Aug 2025 06:54:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:443c:3616:7f17:f26d? ([2a01:e0a:3d9:2080:443c:3616:7f17:f26d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e2ba619sm13709035e9.4.2025.08.21.06.54.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 06:54:08 -0700 (PDT)
Message-ID: <5f8318b8-6ad4-42bb-a0a0-7cb5cc45a1ec@linaro.org>
Date: Thu, 21 Aug 2025 15:54:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 00/14] arm64: dts: qcom: Set up 4-lane DP for sm8[56]50 &
 x1e boards
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
 <aKcjcB9yABjEv1KR@linaro.org>
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
In-Reply-To: <aKcjcB9yABjEv1KR@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21/08/2025 15:47, Stephan Gerhold wrote:
> On Thu, Aug 21, 2025 at 03:37:19PM +0200, Neil Armstrong wrote:
>> Now the 4lanes support in the QMP Combo PHY has been merged in [1],
>> add the required plumbing in DT.
>>
>> [1] https://lore.kernel.org/all/20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com/
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
>> Neil Armstrong (14):
>>        arm64: dts: qcom: sm8550: allow mode-switch events to reach the QMP Combo PHY
>>        arm64: dts: qcom: sm8650: allow mode-switch events to reach the QMP Combo PHY
>>        arm64: dts: qcom: x1e80100: allow mode-switch events to reach the QMP Combo PHYs
>>        arm64: dts: qcom: sm8550-hdk: Set up 4-lane DP
>>        arm64: dts: qcom: sm8550-qrd: Set up 4-lane DP
>>        arm64: dts: qcom: sm8650-hdk: Set up 4-lane DP
>>        arm64: dts: qcom: sm8650-qrd: Set up 4-lane DP
>>        arm64: dts: qcom: x1e001de-devkit: Set up 4-lane DP
>>        arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Set up 4-lane DP
>>        arm64: dts: qcom: x1e80100-dell-xps13-9345: Set up 4-lane DP
>>        arm64: dts: qcom: x1e80100-hp-omnibook-x14: Set up 4-lane DP
>>        arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Set up 4-lane DP
>>        arm64: dts: qcom: x1e80100-microsoft-romulus: Set up 4-lane DP
>>        arm64: dts: qcom: x1e80100-qcp: Set up 4-lane DP
>>
>>   arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 2 +-
>>   arch/arm64/boot/dts/qcom/sm8550-qrd.dts                     | 2 +-
>>   arch/arm64/boot/dts/qcom/sm8550.dtsi                        | 1 +
>>   arch/arm64/boot/dts/qcom/sm8650-hdk.dts                     | 2 +-
>>   arch/arm64/boot/dts/qcom/sm8650-qrd.dts                     | 2 +-
>>   arch/arm64/boot/dts/qcom/sm8650.dtsi                        | 1 +
>>   arch/arm64/boot/dts/qcom/x1e001de-devkit.dts                | 6 +++---
>>   arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 4 ++--
>>   arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts       | 4 ++--
>>   arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts       | 4 ++--
>>   arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 6 +++---
>>   arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi    | 4 ++--
>>   arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                   | 6 +++---
>>   arch/arm64/boot/dts/qcom/x1e80100.dtsi                      | 3 +++
>>   14 files changed, 26 insertions(+), 21 deletions(-)
> 
> Nitpick: Could you send a patch for x1-crd.dtsi and
> x1-asus-zenbook-a14.dtsi as well? :')

Sure I'll add them.

Neil

> 
> Thanks,
> Stephan


