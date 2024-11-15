Return-Path: <devicetree+bounces-122173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 046269CEFE4
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:29:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B99FF28AA76
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 15:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BC101D5CE8;
	Fri, 15 Nov 2024 15:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tIW9LHDA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9733D1D54DA
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 15:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731684514; cv=none; b=NkRivsaq6JlYfpDTpEY8m6uWHm1Gkfg2fSjqm6OFPID6mrdPaIA1hEPbl3fXASLkKHdAc/HBEZvrcJvrlLRq3aYMk2UW1QwfUA+xqQTY9xrqYXLso3d3t5X2CnHb4KhRPJYBJMIKc0FMK19OZ+Jlk+JyNmxBxpXsZPPT4r9jyYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731684514; c=relaxed/simple;
	bh=zurmVu6jD5Ns3rQKh121ALIw2zxYEWs6An8fSAI+csc=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=peVqS770P1duxY3eI2IxLEMFrAwQBkdbhYKUJnbgQJaRbXxQ1lxZhS7GmDBvcUVpsObTA02JWzzntwAU/QcyRNyUSFHb7sNGvzW+hZc9eWnvzSX6sWeCMWPhgzgFPv+RFKxtQjfRxHltttqSYheP012fRoqLcEZQahbNcJTThVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tIW9LHDA; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-382219ceaacso940119f8f.3
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 07:28:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731684511; x=1732289311; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w9xxBkuOGfjMnpE8th+U2edWWxzoieKyXlSmx0+ZyMI=;
        b=tIW9LHDA3km7dMRb8E9x+Gi5KBztd9UejIb6fH6mvQ7Pvkt/qSQLUdj011VqXPJFxX
         S1Bipu0lsDNT4SEG+bEhWSqMD5SW8WafmdbLVWZLdmVd+odkqDA/HWemFyKr0Z2vPu5d
         SjHnb5tptwaa0z7s0bmALRibjkBLn0ds3acv1mmcxDrlAuFtW//lGsNcoxvcC7aOPFBT
         mF2r41wiT9Kn/jhUws0o09fMMt5yiUWo8ckc5EB7lnHA1sM857eC9580NrIKX5pGJIsJ
         uv+TLzUfBQ0y/1XFQuTqMS18AFV511ULPJddnmDAPsMasSrn0OCOyjTJUuKxotOcHhrW
         ggSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731684511; x=1732289311;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w9xxBkuOGfjMnpE8th+U2edWWxzoieKyXlSmx0+ZyMI=;
        b=SicsJqNdxKhpVPc3oFy/cJ+tBqJWFaPCJnMR6KIKtF6t+7OCzKVncXXCw2fXenkoRW
         W7G/pCuVMX7gPk/OdF7BXY3nWaoyzGxQw5C03y9apabRBv6i5zLZqYbQy64OnFmS1Qyx
         BKqS2PHSEXYXQ0zzSrLUwln0Xqc4j9iDS+FPKyYlKPYurfUiRcSioASermqYG+9zDxbV
         KgJ1U34V0pWYFgyhUJvVUeNRe2Vel9KIIFgXLVYViDBGjiUu0x2m6gKlswK8+9MUCl5v
         cWuWCP9x+zK+WVfra0Zvw35HxP+WNQfBRr5LpiwzS3/+hAKQrGiLU7E5q4cPnEc5zt2E
         l5aw==
X-Forwarded-Encrypted: i=1; AJvYcCWkobP/LQEKSShBy3HJaaYhR0il8rtxogTnv6ZXMInEOAKNJ5D0H40aXZ3CONuJlluO2RnOudslkrlS@vger.kernel.org
X-Gm-Message-State: AOJu0YzOWfAwcspNuludFgTMc//EkNd7EIVnbwvqBdxOpoWLrpHzeM4K
	3RGKP/eOIAnUbH4Oq63YrTEttcaI2xZe61wuAcb9V0JFk93Ywj48+IZEgKEyp9U=
X-Google-Smtp-Source: AGHT+IFE1m0PhvEE6X08D1MwP6KX2yhrXvWSidacGzSURnRLln0zDAOvKce6/l9aWa2qCaOvjt8d2w==
X-Received: by 2002:a5d:6dab:0:b0:37e:d965:4e04 with SMTP id ffacd0b85a97d-38225a8ab23mr3000039f8f.36.1731684510986;
        Fri, 15 Nov 2024 07:28:30 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:8512:42be:302f:f436? ([2a01:e0a:982:cbb0:8512:42be:302f:f436])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3822f6afc20sm576134f8f.81.2024.11.15.07.28.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 07:28:30 -0800 (PST)
Message-ID: <73fd6d04-e965-4524-8d63-5e2c67677f52@linaro.org>
Date: Fri, 15 Nov 2024 16:28:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH RFC 2/8] drm/msm: adreno: add GMU_BW_VOTE quirk
To: Rob Clark <robdclark@gmail.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>,
 Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Connor Abbott <cwabbott0@gmail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20241113-topic-sm8x50-gpu-bw-vote-v1-0-3b8d39737a9b@linaro.org>
 <20241113-topic-sm8x50-gpu-bw-vote-v1-2-3b8d39737a9b@linaro.org>
 <sgz4h6rlmekiwypaisjbnej326wv4vaqt3mgspp4fs4tg3mdfx@cwmdqcu6gwbf>
 <63a2b391-8b71-41cb-bed2-3bc7fd2154ab@linaro.org>
 <CAA8EJpoFm8EjfBq70RTPtwR7Y7Rm24kHO20NukGiLGRYD0p9Tg@mail.gmail.com>
 <CAF6AEGty1fcA13rDOOJQbhT4o=CTtBYtGFspowZbxD1c-VE9Bw@mail.gmail.com>
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
In-Reply-To: <CAF6AEGty1fcA13rDOOJQbhT4o=CTtBYtGFspowZbxD1c-VE9Bw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 15/11/2024 16:10, Rob Clark wrote:
> On Fri, Nov 15, 2024 at 6:18 AM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
>>
>> On Fri, 15 Nov 2024 at 11:21, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>>
>>> On 15/11/2024 08:07, Dmitry Baryshkov wrote:
>>>> On Wed, Nov 13, 2024 at 04:48:28PM +0100, Neil Armstrong wrote:
>>>>> The Adreno GMU Management Unit (GNU) can also scale the DDR Bandwidth
>>>>> along the Frequency and Power Domain level, but by default we leave the
>>>>> OPP core vote for the interconnect ddr path.
>>>>>
>>>>> While scaling via the interconnect path was sufficient, newer GPUs
>>>>> like the A750 requires specific vote paremeters and bandwidth to
>>>>> achieve full functionality.
>>>>>
>>>>> Add a new Quirk enabling DDR Bandwidth vote via GMU.
>>>>
>>>> Please describe, why this is defined as a quirk rather than a proper
>>>> platform-level property. From my experience with 6xx and 7xx, all the
>>>> platforms need to send some kind of BW data to the GMU.
>>>
>>> Well APRIV, CACHED_COHERENT & PREEMPTION are HW features, why this can't be part of this ?
>>>
>>> Perhaps the "quirks" bitfield should be features instead ?
>>
>> Sounds like that.
> 
> But LMLOADKILL_DISABLE and TWO_PASS_USE_WFI are quirks.. so it is kind
> of a mix of quirks and features.  So meh

Well I can do a split and move the features into a clean .features bitfield, would it be ok ?

Neil

> 
> BR,
> -R
> 
>>
>> --
>> With best wishes
>> Dmitry


