Return-Path: <devicetree+bounces-97183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB8B96140C
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 18:28:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6EEF81C20A47
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2024 16:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B60201C4EE3;
	Tue, 27 Aug 2024 16:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dpC6jANe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F211F481CD
	for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 16:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724776106; cv=none; b=DryLhHAw05FAEYu1pADzL0iP5qAnYpCjODmM+A/saC8Ddj7KmScycpEe8SUUw6UKB3KWKhLss9+x1QxJEmpxiTVdOqSAG8pccogPBECYWteh4VAGrG0B1i+9+YIXvDKbGFfBwhjV+T5uCMC0CvZifvRmcIsS2ss2UyRdktr7RqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724776106; c=relaxed/simple;
	bh=gv13NTKcLRF/Slgn9FXOKbo+fZtnZIyLnz0YsO7zqbs=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=Wkvq1OXLBS29rbq/aJIQ9gWXQ38SQ7zEPXxlAKYcrUQ2bT0xCvqeHVjXB0OCVbYoLPclU16puO18CsBOk0xTC0fCaVbH6ex5FJv8mcczhN8L2+l/0ZYuksRQYCRzMH3u97aY8ffzaerPSKeiEiZqFgXO+qpGvfGM2bZZwY3WShc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dpC6jANe; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-428119da952so50728265e9.0
        for <devicetree@vger.kernel.org>; Tue, 27 Aug 2024 09:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724776103; x=1725380903; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ufE/6XVJ+83T5fOnTjTASaHShwbV2r35OMHx7oT3zhU=;
        b=dpC6jANe/W0OOMtnMrzgubW7V7uVVKGHbcXP7KfIhxGmvyvxb9Vk54Pp3Y/B3dQ2tj
         MB2mwDid3xClvQ96JL6YQ5ZImGMHulJqQ64ZLb+IzZx/8EJzP4eiE9beWAq4+UlhFDyb
         R81esV+RZ1SDQPcPB8lUmAvKurmzShmsx2yR0Nz/coBBp1A4u7sPuKPs32opNuUrUYX7
         qizL+fv/1PoPOmJZUykfhVyvYYcT/TquIZeUGPt8WlROiatobr3KWfruPwpPqjPxU9pU
         NvTdWBjcMxy54h/epakL6EGAMUpdy97ntKQ6atoa95vjHdRUaIqRN7iyUNHNFY+qDSs5
         HCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724776103; x=1725380903;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ufE/6XVJ+83T5fOnTjTASaHShwbV2r35OMHx7oT3zhU=;
        b=NsGogAZsSL4y5i1FkerZ/rvWAFQiEAlEAVv8FutAlWriIJ7ll53GwwVr3YfQyfi3o6
         wldR5uqTKPLp+ogZ3e2Hdkw9uwyHlJDpRMVa2xMFB5xaoRJfR4cFWRWMozjWHhqcFEJB
         zwO5F7REKb/S6vcWqz15CymArjJVJiqzYbJ82lqjcBsn2S8iVMh00WKW8JU+3x8uGybL
         1yHWVjQIjZvkye2ImjSMfk6pYllSYOzPlzpb+03au0JzBcWNPrTCDvDvqgGIwqG2JumU
         7ZIsMtlkOT9UviW5KiCgeMlR+oy5WKQhbw7e5Dlc2mcfZDqWXv1eS+nKiUs/OdVO5j7B
         ORzg==
X-Forwarded-Encrypted: i=1; AJvYcCWdmDFtLBgCmud27Og916RUCM3UD4HLFBgy2R8DprqCAiCrGGruRXPzC6RW5mejpNGeDuWrUcxDWbnd@vger.kernel.org
X-Gm-Message-State: AOJu0YwnHlQR+OQ165GPbORC235zDPYZtzZgjrqKvs0t3DW7GpzP4Awr
	aeTqyDEroE+V/TUZETiIDj57qtNqWWbakMRngr360wpxnUIVkKvN2odRGPfr5zI=
X-Google-Smtp-Source: AGHT+IFs44im3ppKp7rli/0SrE8qnw/kI4+1TZyXKWRmUS8FDR4OalSDTwLVmncC76FonQP5ohDJmg==
X-Received: by 2002:a05:600c:5102:b0:427:abed:3608 with SMTP id 5b1f17b1804b1-42acc8d519bmr101922755e9.5.1724776102800;
        Tue, 27 Aug 2024 09:28:22 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:cedc:30f:887e:7717? ([2a01:e0a:982:cbb0:cedc:30f:887e:7717])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42abee8d1d9sm232476035e9.22.2024.08.27.09.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 09:28:22 -0700 (PDT)
Message-ID: <d9686280-5514-49ab-91b8-0737141178ce@linaro.org>
Date: Tue, 27 Aug 2024 18:28:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: Rename WL-355608-A8
 panel
To: Ryan Walklin <ryan@testtoast.com>, Maxime Ripard <mripard@kernel.org>,
 Conor Dooley <conor@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hironori KIKUCHI <kikuchan98@gmail.com>,
 Chris Morgan <macroalpha82@gmail.com>
References: <20240626112005.248576-1-ryan@testtoast.com>
 <20240626112005.248576-2-ryan@testtoast.com>
 <a4d33da3-2a2a-48ce-874d-95a5889f2f1f@linaro.org>
 <20240626-loyal-squirrel-of-charisma-4e784f@houat>
 <20240626-procreate-goldmine-800179f909e9@spud>
 <20240627-muskox-of-nonconcrete-art-e4bcfd@houat>
 <8b4519fc-0fba-48fe-bfb4-318818b47a65@app.fastmail.com>
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
In-Reply-To: <8b4519fc-0fba-48fe-bfb4-318818b47a65@app.fastmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 30/06/2024 10:16, Ryan Walklin wrote:
> On Fri, 28 Jun 2024, at 5:59 AM, Maxime Ripard wrote:
>> On Wed, Jun 26, 2024 at 04:34:11PM GMT, Conor Dooley wrote:
>>> On Wed, Jun 26, 2024 at 05:04:19PM +0200, Maxime Ripard wrote:
>>>> On Wed, Jun 26, 2024 at 02:25:54PM GMT, Neil Armstrong wrote:
>>>>> Can it be more specific ? because there's a lot of rg35xx defined in bindings:
>>>>>   anbernic,rg351m
>>>>>   anbernic,rg351v
>>>>>   anbernic,rg353p
>>>>>   anbernic,rg353ps
>>>>>   anbernic,rg353v
>>>>>   anbernic,rg353vs
>>>>>   anbernic,rg35xx-2024
>>>>>   anbernic,rg35xx-plus
>>>>>   anbernic,rg35xx-h
> 
> Just to note only the three rg35xx-* devices use this particular panel.
> 
>>>>
>>>> Yeah, if we have an identified model name, we should probably use that,
>>>> with a comment that we couldn't figure out what the vendor was and thus
>>>> went for anbernic.
>>>
>>> What's wrong with using the wl name that already exists as the model?
>>> Using rg<whatever>-panel is total invention on our part, especially
>>> seeing as the commit message says that multiple models can use it.
>>
>> Yeah, that makes sense, sorry for the noise
>>
> Thanks both for the further feedback, agreed logical to use the device vendor and panel serial number, ie "anbernic,wl-355608-a8". Will post a V2 with a comment to that effect.

Well in this case we can keep "wl-355608-a8", because the panel vendor _is not_ anbernic.

Neil

> 
> Regards,
> 
> Ryan


