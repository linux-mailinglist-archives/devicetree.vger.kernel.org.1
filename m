Return-Path: <devicetree+bounces-98264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D51A296592F
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 09:56:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55D761F24A72
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 07:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A661158A37;
	Fri, 30 Aug 2024 07:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B+aO5NyY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B851586C0
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 07:56:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725004581; cv=none; b=Jd50HERJDM1OeJaRQSfHnLv8k+7QlKe5xpL8Y2eTNm82294Z51JOdxVgXibvH4BWn6HtaakmCCrY1Q7h626AsFA6IzITJtLWxb50Ne6K2/IJ6tTPtltYCs6oupxVYP7EDT2csMA0QC27HcbjT+U8HGqSk2/jjpNEBJiQyenID2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725004581; c=relaxed/simple;
	bh=Peqk4rkCcCbNi/EuInPBgOY/wLE2OWDnra63xCmfyM8=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=LxLpQg0rFNSTri/PpVC/gqeaD3m1YpwXixh9sF8u6IwGoSvX1XuNW85eJtdwQwy8TSjEQhzK/0D2/+BJqnnjFysc7lXNjSe5kKW3x0cR7rrb/7O8kMl3x29c6Vx0SVW5+J+Janx/wB5VaJqi7L2Bs9TEStJ3jQO4BYK4TPlnQiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B+aO5NyY; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-371b97cfd6fso1158717f8f.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 00:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725004578; x=1725609378; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X1prRTYEw/dR2iNXrq6uyuvXqssAgDAZDj++lBKGGe0=;
        b=B+aO5NyYW963PVyq05YwN77Ax0lB5hH1hwUPoTGNQVfzKILOA7E9eUUyVqII63bXaW
         LGhfz4ud0zCMSZ66ASpgtTN8VH/70vjVsPMfymyV634V8iEb+IBHoAW+p/HPG+frqWZL
         75q2eY88yyCMAUTq3ePS/d+HhaYjfGBWyGnJ5F8UtGS9xYc8LFlOctBu32DHVVn+B7Xg
         vZEXElVbQbqYJBXIdvXI4OR2oHJ0i5oaTCKq1NSRssOSIuUOnsIdbf8dYPHRsbzJAS0z
         8Gwkph2AZ/9b/gKzHhCEJ1x7qIUL3Op4dP5YR/75JS/uQDOnWI97zQUN/YObhSBasv92
         6+ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725004578; x=1725609378;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=X1prRTYEw/dR2iNXrq6uyuvXqssAgDAZDj++lBKGGe0=;
        b=mZ40Uii2GBMnZWSklSH38njOimQ92kqtxHm3bs5m3hwMYriPGZT8Akl7ch0ehwcbC5
         EZ2Jh2IudMlzqNqlapOLFstj5DGe2m5FUv/ZmKKrNg7XRcTJ6I9f0o4oSD2pGk+mHkk7
         hT1h7gpDNieTEDo2ZgJPHOLAoZ/yZUGkPup+cYPHwLgi2VFsdUWTGEREsY0ml+dWatF9
         +pknhARbesCYqplS/dzXA9osOS8oRpBKcSDrwpw3xturU0Pvn4G4uPJvmRbfUen/U38Q
         SJQ5vPT6ud55odDxUQyNbHbc1GZDX9HvL5k+W3RuqbWQZKCKPOnSE9SFfDxoJnn5j11p
         ipNA==
X-Forwarded-Encrypted: i=1; AJvYcCVd/PFxPxY2ZZ20BjA4jlmEKGY00V/nYMhZyv7CmFORFdNCwudJRb0d1YprG1AI0Apk451rKd3+huuc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2SNc51/UJ6ANQH7r9pKqvwQcGikvbCm5xAfxvA9xoe+R6C6Pt
	cUr2gC6DS77O6Yvzck+tU5NzKeJC1oG2jvSSkLtEO2P/0w7WheYWw8NmHP3N8ndMEUfom/NhKi/
	A
X-Google-Smtp-Source: AGHT+IHLuGOim1LCIhPMC+XHJ10NBeR3BMcRWNnP5UEmIMd+pWkdGHYUqbIKwW/TUWZLTVcfTZQ94Q==
X-Received: by 2002:adf:9bc7:0:b0:368:37d7:523f with SMTP id ffacd0b85a97d-374a9564aaemr888931f8f.13.1725004577010;
        Fri, 30 Aug 2024 00:56:17 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:5001:8e1b:dd18:1d3? ([2a01:e0a:982:cbb0:5001:8e1b:dd18:1d3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3749ef7ea62sm3249376f8f.76.2024.08.30.00.56.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Aug 2024 00:56:16 -0700 (PDT)
Message-ID: <e9f5f554-b773-4a16-97b7-331fa3c179d9@linaro.org>
Date: Fri, 30 Aug 2024 09:56:14 +0200
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
To: Ryan Walklin <ryan@testtoast.com>, Maxime Ripard <mripard@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hironori KIKUCHI <kikuchan98@gmail.com>,
 Chris Morgan <macroalpha82@gmail.com>
References: <20240828-aboriginal-vivid-goldfish-3ee4fc@houat>
 <8490347B-2729-4B79-869B-FFCE41E0A7F9@testtoast.com>
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
In-Reply-To: <8490347B-2729-4B79-869B-FFCE41E0A7F9@testtoast.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/08/2024 03:43, Ryan Walklin wrote:
> 
> 
>> On 28 Aug 2024, at 7:07 PM, Maxime Ripard <mripard@kernel.org> wrote:
>>
>> ﻿On Tue, Aug 27, 2024 at 06:28:21PM GMT, Neil Armstrong wrote:
>>>> Thanks both for the further feedback, agreed logical to use the
>>>> device vendor and panel serial number, ie "anbernic,wl-355608-a8".
>>>> Will post a V2 with a comment to that effect.
>>>
>>> Well in this case we can keep "wl-355608-a8", because the panel vendor
>>> _is not_ anbernic.
>>
>> And it's not a generic or ubiquitous device either. We've been over
>> this already, anbernic is the best we have.
> 
> I don’t have a strong preference either way but agree the anbernic vendor string is the best compromise.

The only valid compatible with anbernic would be to use the exact device in use and not a wildcard,
so you said the 3 devices using this panel are:
  anbernic,rg35xx-2024
  anbernic,rg35xx-plus
  anbernic,rg35xx-h
you should introduce 3 compatibles:
  anbernic,rg35xx-2024-panel
  anbernic,rg35xx-plus-panel
  anbernic,rg35xx-h-panel

but it's duplicating for nothing, to you should use fallbacks for 2 of them to have in DT :

  anbernic,rg35xx-2024-panel
  anbernic,rg35xx-plus-panel, anbernic,rg35xx-2024-panel
  anbernic,rg35xx-h-panel, anbernic,rg35xx-2024-panel

and only use anbernic,rg35xx-2024-panel in the driver.

In this case bindings should be like:
   properties:
     compatible:
       oneOf:
         - const: anbernic,rg35xx-2024-panel
         - items:
             - enum:
                 - anbernic,rg35xx-plus-panel
                 - anbernic,rg35xx-h-panel
             - const: anbernic,rg35xx-2024-panel

(of course I selected rg35xx-2024 as the primary one, it could be another, usually the older one)

Neil

> 
> Regards,
> 
> Ryan


