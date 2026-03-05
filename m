Return-Path: <devicetree+bounces-271628-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EHFFY2oqWlSBwEAu9opvQ
	(envelope-from <devicetree+bounces-271628-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:00:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB022150C1
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 17:00:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D00E8308C754
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 15:58:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26E293C1985;
	Thu,  5 Mar 2026 15:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X78IvNrx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE95330D2F
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 15:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772726279; cv=none; b=orK4EbHCeIICRPYNbUKC4V1G5CBSFdBQ2pW3BOCN8LgC+HaOJVv6uXkV8NV4uALBGUaD9DPkN3lNEaUXA2dRQXp3vImGg0Pe41TFFCOlrFFK5Vhu/8A0amFkuzMcxP/moR1OmxDOIAKcx+To5Ecj/QGFRiGIgLw8uMbDO4TFvec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772726279; c=relaxed/simple;
	bh=XBZfHwikgvCU/gXjpI4Lxj6ao79hgiHVyVwVtLGE0aY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=kk2ktqOEmfFdWPtLZZ7dIa5JuK/AvH792dALDbtmHliVL0zCcRGRwLym8MhgD50xOChJmHW7EEfKjicYF4WAERB3suL/+T+Cb+Jc/NXKRJAcL/01IgH0Zt45yvcx1NnNfd9B9ncHHyGn9OHS5f++NNyPiz2ZvTrbb/6ExPr3E8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X78IvNrx; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439b2965d4bso4349529f8f.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 07:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772726276; x=1773331076; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dVaAl61bpFuDZxzZADrOjRzw0mw5luPTO1AggexP8fw=;
        b=X78IvNrxLCZNLEiX/O3xbk+N8M8ngUPp+t5/7YAdcoyK4qTwQwEsc2zC3cODZOc1VZ
         JQMF3foLidiQPAj3RTzBEjsfUqbIpqaMFHkxoWQWGPSogBFWYFr2Gmx2ggO9MUfYGULQ
         GyQZh+/IrK9E4kwqoAzi4cy1hn2Aj9ELj7YU6nTCndCP13dppBU1wPi7dSz4+l1XPzfU
         CIUODTNYV2zxlHh0/pDfYTEfy6EdG2PQu+BiNRi2FxrFXDEEyqyUGJL3AMdPhLOI8qla
         HbE7azCrYqS7UFEDGeGE4vMEsK8N/9kUCjNW/RNCcUF2OBQy0BliKpPyIssyCKQaixDM
         a97A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772726276; x=1773331076;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dVaAl61bpFuDZxzZADrOjRzw0mw5luPTO1AggexP8fw=;
        b=pvt0ztpGcUyRbxliptBFW66v7APfos44Ust5tnhMli+S2KLu8+cTYr0tiG8ODlkxED
         hEuEnWPHymsRoMA68scJuHXkBUAeDTy0BxFiO7PTGGriPrSZRMNC/RAqWesf5ZEFNxcx
         aOUu7f028o5oEEV6Rf63KgGd7Net8Mpo402c8jZeax58XDBV8PG8OfPGIG1BnwVx65zh
         gBAp50a99YolqKB+QF8bFywRfvrLth82iDCjO2B0aLD7JcHTgmpwVb+7XmGLnoP3KjKH
         Qek4opuIaDrtE+nnCKdS8llCgjJcyZMRpPB0nmTOfzTqA7OMb+ltm6K11GQxwFn0T0dk
         XNgw==
X-Forwarded-Encrypted: i=1; AJvYcCV+MqZQgfGC5ROU0JxQdyIdGIs+Uvv4guN1IixpMIB5Gr9a1qN7pKECLM3IVzaTr6uHzyrTFkbGiEU4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5N64DQcwGo7noOJNMPurWfd8NjTDunVHghtMAEMVcJtvz6LyQ
	mhFf25+Q8p2bDu0sqvm1NqvCUlKqmQZiOhImUdIXznLrf2bbnlMgdNzJUntcRY1g40g=
X-Gm-Gg: ATEYQzyeqMhEUsdp82IuCFSEkyD1rJwRYEJFWQ+jw7WfAWdn8NpWUVE7OFD2uTSGSmj
	S2ca9C435LAYsA727wBvf8TWqseYF9VeQBlw7tDdk178ot2XliJpNBqUSclwQ1OUqD0xyB7eOjQ
	rIUHIhpmqMc02C2L9M/wwGb3vB0bMES2WhMCnhDg9hIo1ebqXoKpC5Ka+qrG9XCOuTzxzhkVaW9
	uqGvJR4jyoZpD1eymv0a184CT1p4kcaQA4HasBRRFzKKNQ/D4vG7My/nerGBCPt0ImuPITi2pWh
	W2hCQ2EopdIr40Bmg3u7NGsk9WTT/1ln51VGTuT4e5tnblKuADIJJ9W4EsSjhhb0mNixmN+TXHU
	rPxuOJEznxTLo77n9vhTVqUPZMq/WN1PFgigE2F4C//t9sAASf+SX6hRRukCU9TWgVDhq0WuZ4U
	nsMXvmk2CD1fGoM8SSe7zwxicQznhpzhO2JRjLsWpq48tkgmB5A2sBLYN1zswcRJ6LXKgHOnzVR
	oEt
X-Received: by 2002:a05:6000:250f:b0:439:abcd:b30d with SMTP id ffacd0b85a97d-439c7ee8e03mr11275542f8f.0.1772726275778;
        Thu, 05 Mar 2026 07:57:55 -0800 (PST)
Received: from ?IPV6:2a01:e0a:106d:1080:73bc:1eca:d39e:509? ([2a01:e0a:106d:1080:73bc:1eca:d39e:509])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b1b97927sm37622495f8f.28.2026.03.05.07.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 07:57:55 -0800 (PST)
Message-ID: <f3e9a770-a81e-453f-a908-59bcc567f01d@linaro.org>
Date: Thu, 5 Mar 2026 16:57:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC v4 1/4] media: dt-bindings: Add Amlogic V4L2 video
 decoder
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Zhentao Guo <zhentao.guo@amlogic.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
References: <20260213-b4-s4-vdec-upstream-v4-0-c7112d00d662@amlogic.com>
 <20260213-b4-s4-vdec-upstream-v4-1-c7112d00d662@amlogic.com>
 <d96c689d-a5a3-453d-a1ab-56dc1bf01635@kernel.org>
 <75e55ceb-e6dd-47b5-a829-66f6fbb3e13e@amlogic.com>
 <2f68ee18-e9d9-4da6-900c-93a7663b3c9d@kernel.org>
 <598c161c-d157-40e5-992c-912540589d7e@amlogic.com>
 <58d57a6c-7c69-4f5b-a4c2-f34ef0238511@kernel.org>
 <26d0f52e-3681-46ce-b0dc-0cb020e8d9a1@amlogic.com>
 <69900d76-3820-467a-9fbc-13f79189df2f@kernel.org>
 <278f5018-9183-4eeb-bde1-7c19adecab06@linaro.org>
 <c8b9aa23-9081-4482-b638-e57a0c419356@kernel.org>
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
In-Reply-To: <c8b9aa23-9081-4482-b638-e57a0c419356@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: DCB022150C1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-271628-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,amlogic.com,baylibre.com,googlemail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:dkim,linaro.org:mid,linaro.org:replyto];
	HAS_REPLYTO(0.00)[neil.armstrong@linaro.org];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_EQ_FROM(0.00)[]
X-Rspamd-Action: no action

On 3/5/26 12:53, Krzysztof Kozlowski wrote:
> On 05/03/2026 12:35, Neil Armstrong wrote:
>> On 3/5/26 12:08, Krzysztof Kozlowski wrote:
>>> On 05/03/2026 12:01, Zhentao Guo wrote:
>>>>
>>>>         2. Why canvas is needed?
>>>>
>>>>    1. Since the ARM IOMMU HW is not integrated into the Amlogic SOCs,we
>>>>       need canvas to prevent the DDR memory used by the decoder from being
>>>>       rewrote by other hardware. Canvas provides the decoder with a
>>>>       configurable DDR memory range, as well as hardware-based detection
>>>>       and blocking for out-of-bounds access.
>>>>     2. From the diagram above, we can see a lite CPU called AMRISC. AMRISC
>>>>       is the controller of the decoder HW and the decoder driver needs to
>>>>       access the decoder hardware through AMRISC. However, AMRISC is a
>>>>       16-bit CPU and cannot directly handle 32-bit or 64-bit physical
>>>>       addresses. Therefore, canvas is required to convert the addresses
>>>>       into index to facilitate processing by the AMRISC core.
>>>
>>> This suggests "Canvas" is IOMMU, thus use proper IOMMU abstractions and
>>> you cannot have own phandle for it.
>>
>>
>> No it is not, canvas was used for a long time for the display and video processing side.
>>
>> It's absolutely not like an IOMMU, the diagram is quite clear.
> 
> The diagram and all descriptions points to memory mapping...
> 
> "Canvas index is basically a reference to a memory region and its
> configurations."
> "Memory access through canvas has HW out-of-boundary check."
> "Canvas provides the decoder with a configurable DDR memory range"
> "canvas is required to convert the addresses into index to..."
> 
> so it is not a random phandle either.

No mapping is done by the Canvas HW, we simply reserve a "slot" we feed with
a linear buffer allocated by ourselves + parameters on the frame format, and
then the display engine or the video decoder will only need this slot index to
access the memory.

It doesn't fine anywhere and amlogic specific.

Neil

> 
> 
> Best regards,
> Krzysztof


