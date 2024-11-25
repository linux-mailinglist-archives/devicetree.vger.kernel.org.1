Return-Path: <devicetree+bounces-124331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A739D861E
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 14:16:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C55542850BC
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 13:16:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84DDF19F49E;
	Mon, 25 Nov 2024 13:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gt0uXa6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1C0188A3B
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 13:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732540573; cv=none; b=h0EgV2JAhEoPJ3hG7/54SWnbj9SwPKD8k7swGp6EPhK1GvFAB48n4q/JASDz/yh+9517aF5/qbBsnFcsnuQT8H4EsD+rIutdY1n/8tHQHTuxt7w5lkMwdiZAiij9IrsH2WzKFZnbF0o1leRnL4kcULWsxchFCh7reugYmaziHzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732540573; c=relaxed/simple;
	bh=gsKd3hb9ZCLyyPW+gu43DBldlrCV1evqec/JECaRSZ4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Rm3el5w2f1LaQJ21CyjPjyNKWyIP6J5a7Ey8rO5pktPSv9tDEn58/mCeYD5Y+JfCAqnkxYfGfOtzq9YtyIcJqLoeev7Q1bKofEJOvZuOxZ9NEQeMEyc+QH1FIvuGaHRQQ2G6dp6kRwJ1ErJnAWHORco1aQQbrRx56rTFUetPvxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gt0uXa6B; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-434a2f3bae4so1878255e9.3
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 05:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732540570; x=1733145370; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rNSe8A4X72eX+krq9irFan2BInCT8GLtodoqFddP0BY=;
        b=gt0uXa6BZzCNlnIlpVCp7TkSbWNUMTZIhLzzYV54Ygk+D9HrNYA8Nhd5Jfo0AJ8nYV
         TtoGTQKdi6KxmGRgnY9krjkPVDS9NCqb84ExGJ+qEW/R5hYYINjlrQunLFF4TZbHFctV
         slD40Qe8wJThrp8vZpxJZAv0U2BbQ8/E/8QQa6FfMaUGBPXJ5AAXzdsnSoxLsnyKvt+e
         KcrZk3ToPweFftmq3JAaa5xoY+3BNsOq8yoH0enQ6bzJRLIKd2UQ6uN2wxWiGFDAW2v2
         J9nbskCjQHD+zfGx7orFKs8DrFtVJx3naNldUA4mWePOXzUVYJsxfwOrWewPq+f+D5cv
         /8GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732540570; x=1733145370;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rNSe8A4X72eX+krq9irFan2BInCT8GLtodoqFddP0BY=;
        b=fO0w6HUB1v9CcZY8zQ85BnzzvNP5AJnbe4iiWr7pzG3Vq4hIoIFL9oNOZofYgCYCCw
         0kAiM1gY4pq2gqfSpmFM18FHKQMvGOpK8ouNinNA0NWCsQDMWLumRSAVVFl4c/yNPRfx
         Dkjc48x/XDy30Z2XcCkcnt/pgcHMOb2nm7OkEA2VwhcQtE1gQQJRC9Ag2kyPuUQmDyj2
         GqbRaRZ29H9VTptH0sgRhJFJo5FTOGQd6FhILNhwhrbbszqEUaIPbTID8SaX78LQ9//j
         Pr0pd5EYPDnZPip2foF6hSbLa4Y28i33isFkptfgnT3hqBJSUp5lHVVNCdOuRCRNa3SR
         LcCg==
X-Forwarded-Encrypted: i=1; AJvYcCXYuk7N/JhQyRj0g55/AACJWYElyjiYGI7ZqrscI/FskIcR8N6LiKVsz+M+nCYwct01/4dW7cDVaXMp@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ+wHavDXv5MkpUhojzGuccqoxaqMwmHi6lvibjZe4lD9wTiaL
	pb1ojURV/fiotVpLGU4nDDDr0DM5b2JXXSpKi0G1MLbvE3AYef09w+uoaanMB38=
X-Gm-Gg: ASbGnctPr/0W9m1amr2RrFWWhmP1TdNosnVBYtAPiIzoJEKahLAhTuzOftIko1CRMaX
	rLHvF2M9bblc1x+0sIBk39d5GGrnxgql0wXJIcpk+tMEV8BQPvHY1ittUOqIRcoiqVdzYHaFugR
	TpmSpeBxwk3HkGNKGAGLxO9ty97Ot1N5tp9Qjw8Z9OuDqiJM4V5p7frKh/9bStSqDqr3Wo4L7Om
	bI+E9nAbMvsvnJhNpF66aFeKBzE8o4dkXyLgjcYdnn8jskor2tW2ry/FNl7rvNkdPy9RGjRhhSk
	JTEz3H/l5R6z4I3utfj54uBQcWk=
X-Google-Smtp-Source: AGHT+IEW90vTWXzKP0+A5/PY4aSbYc0IFzHeJgOYo0pEkGOlAkr3IdZEHYei+L9Azyi/uj4duLGLyA==
X-Received: by 2002:a05:6000:2102:b0:382:3419:46e6 with SMTP id ffacd0b85a97d-38260be1efcmr8739174f8f.52.1732540569999;
        Mon, 25 Nov 2024 05:16:09 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:9dc0:6c46:415c:5f8b? ([2a01:e0a:982:cbb0:9dc0:6c46:415c:5f8b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fad60c3sm10632716f8f.2.2024.11.25.05.16.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 05:16:09 -0800 (PST)
Message-ID: <81e46854-13e1-426f-8e0c-549a36ab5b3d@linaro.org>
Date: Mon, 25 Nov 2024 14:16:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/5] gpu: drm: adp: Add Apple Display Pipe driver
To: Sasha Finkelstein <fnkl.kernel@gmail.com>
Cc: Hector Martin <marcan@marcan.st>, Sven Peter <sven@svenpeter.dev>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jessica Zhang
 <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Janne Grunau <j@jannau.net>
References: <20241124-adpdrm-v1-0-3191d8e6e49a@gmail.com>
 <20241124-adpdrm-v1-2-3191d8e6e49a@gmail.com>
 <10d0aa88-de2e-4856-a137-301519e58b2d@linaro.org>
 <CAMT+MTRWZWj=3AP7wyooXr49-W4vcm0ZbAoqPyEuNkQBMOaJfw@mail.gmail.com>
 <c6b0273f-16f3-4469-a4b8-9564f7355400@linaro.org>
 <CAMT+MTS3Nmy=RzsE4wUf=jHBsu8ghyyqpXWPyB8qoR+W3EUscw@mail.gmail.com>
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
In-Reply-To: <CAMT+MTS3Nmy=RzsE4wUf=jHBsu8ghyyqpXWPyB8qoR+W3EUscw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/11/2024 14:14, Sasha Finkelstein wrote:
> On Mon, 25 Nov 2024 at 13:57, <neil.armstrong@linaro.org> wrote:
>>
>> On 25/11/2024 12:24, Sasha Finkelstein wrote:
>>> On Mon, 25 Nov 2024 at 09:50, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>>>
>>>> So this controller only supports a single mode ???????
>>>>
>>> Most likely. On all devices it is connected to a single built-in display.
>>>
>>> Ack on all other changes, will be fixed for v2.
>>
>> OK, so instead make the panel driver return this single mode
>> and from the display driver just filter out anything that's
>> not ADP_SCREEN_VSIZE & ADP_SCREEN_HSIZE.
> 
> Not sure i follow, you want the mode hardcoded in the panel driver
> and the controller driver to fetch and return that?

Yes, like a classic panel driver.

Neil

