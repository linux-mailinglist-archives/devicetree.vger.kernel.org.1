Return-Path: <devicetree+bounces-73296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCEC8FE824
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 15:49:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE84CB23D21
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 13:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 818D4195F1C;
	Thu,  6 Jun 2024 13:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gTfQq/Hy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2DB195988
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 13:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717681767; cv=none; b=RXIX0yFsh7hJR/KUjzBCLo6HqEJxb9IJfweWiROCOYeddzPm9CuAsoUiiwCgfY1Nh1q4xyxYcqRlLzJx/EPJaoBDdCYlpdtEl4PgGdmiV4GDSm2DLcWZuBnHCv6b3bg9vXnQYIExytPTLG3zCoqJbidttfU/1uj+mo1rUPUueqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717681767; c=relaxed/simple;
	bh=Mq1deNKZh3HELP312KyMjH0l+vLvaVnpSNfnka4H6xM=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=B9iZ/Fvyx/owx/3xsAhTj0lPKZHmVzBtpLve7ef+0g2AB/ZEbVd5NXH+G0g4pyfDPZHFsbI0fokseywWsNDYuW80jGotIp3BULk1a8f2uve+0EUMZr4IETL0G5fS3TOwXWaORNLBVy7QcIWzcXa/VqmmgAXpeH5Gxd8HsB1Ri84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gTfQq/Hy; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-421208c97a2so10019445e9.1
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 06:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717681764; x=1718286564; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Esd3BLRa0e9BeJWEpNuidN4FQmhptorIuTwhFtf/RME=;
        b=gTfQq/Hyc3XsP+tlWNOf7qvVHt1J+61Kc2VgskvByY2DtF2wcj0GN72I20pupPZtP6
         DqXXJUKbRVW4BhAo4z2qQOeJm+IvujsYq5L/aMraJkxBu0aemyKlZO0S3qTUUz4j+EJH
         H6gAKCTsyKeCIMIkPGSTTk6GK8KmIfJz0KoL+GUCxFfw2jGZpnvEUxpI/CPApcv5VDXd
         6B2IstSnwsAllirB2gO2l80XXXrjkO8VvsCvmkiz5S6tnmAZ2oIwZ3m1gzcs3x5L67v8
         nTCyYad6bZaEABbPqlJxwu5VAleaaMjKXyT6bQ1dBDx/NxfepuS6CQUiDMK7G4PPrm9X
         yE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717681764; x=1718286564;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Esd3BLRa0e9BeJWEpNuidN4FQmhptorIuTwhFtf/RME=;
        b=Niwjnw2jgUH5iCCMlfeMNJOS99AZ16tEnjN4w8P+AXLn5/pOyaalBRIpGTW9VsgHkr
         o0Qk4Id4yQ524Q1WDEA2Jng+adRld5o15k6neNUV3qsWG/EX8r/JaI43kFCrM5d7/PTN
         7tRpTamo6Xgm++5J/cN8fZzUrF1aljR8b0C6rjzioZUVuED1W6RJZFlrlJBedCL73n1U
         z6jIsgOPTd+3CTI7c/qogaiqiceoNI3J3N26DYDHAsTExEfnS/XIqTZXxdnbOqneDSIE
         ai82DU2ePK++RwgP6xrfwoJqBZnZidM8DKvYoCbFKpQHhI7MrzlduzGMld5pDCULrnpK
         Ri+A==
X-Forwarded-Encrypted: i=1; AJvYcCWjjyfDlwgnjIzyLegkGU6SmKJgEAOStEu1SGUjUNVFumXcIVAhIV7twatCwOB03NRGUGCW86wmxLFC11uGDJqIjfHSztVtxO6a9Q==
X-Gm-Message-State: AOJu0YxYhRhpIl5yJje0G9tTSV9V93/BNyiOyP1i2gFDFPbeXKDNQTCY
	DFNwXjddtGodz78yo+ziKRrvfUpcsPZ4FFf4zeRQZvb0vhLUOJI6eYzynrVqy5g=
X-Google-Smtp-Source: AGHT+IFoOdTy3/EnqYei1/eRQ9a3inhW6hI7/rn0aMWke/zMoAzlhYAIM/8qeCHOv2Ht3k2vZm1pww==
X-Received: by 2002:a05:600c:4212:b0:421:5609:115d with SMTP id 5b1f17b1804b1-42156355b00mr44577875e9.41.1717681763809;
        Thu, 06 Jun 2024 06:49:23 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:6d66:dc6b:6c6b:f7aa? ([2a01:e0a:982:cbb0:6d66:dc6b:6c6b:f7aa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c2c6900sm22444425e9.36.2024.06.06.06.49.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 06:49:23 -0700 (PDT)
Message-ID: <97f0f7c6-5c33-4c83-8f9b-17b094b64730@linaro.org>
Date: Thu, 6 Jun 2024 15:49:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add WL-355608-A8
 panel
To: Maxime Ripard <mripard@kernel.org>
Cc: Ryan Walklin <ryan@testtoast.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Jessica Zhang <quic_jesszhan@quicinc.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hironori KIKUCHI <kikuchan98@gmail.com>,
 Chris Morgan <macroalpha82@gmail.com>,
 Andre Przywara <andre.przywara@arm.com>, John Watts <contact@jookia.org>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20240530211415.44201-1-ryan@testtoast.com>
 <20240530211415.44201-3-ryan@testtoast.com>
 <20240606-intelligent-aromatic-magpie-80a7a4@houat>
 <2dc1fdec-7673-4462-abe1-fecf8e3e826b@linaro.org>
 <20240606-refreshing-cinnamon-ibex-a0fe73@houat>
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
In-Reply-To: <20240606-refreshing-cinnamon-ibex-a0fe73@houat>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2024 13:23, Maxime Ripard wrote:
> On Thu, Jun 06, 2024 at 11:37:31AM GMT, Neil Armstrong wrote:
>> On 06/06/2024 11:32, Maxime Ripard wrote:
>>> On Fri, May 31, 2024 at 09:12:14AM GMT, Ryan Walklin wrote:
>>>> The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display used in a
>>>> number of handheld gaming devices made by Anbernic. By consensus a
>>>> vendor prefix is not provided as the panel OEM is unknown.
>>>
>>> Where has this consensus been found?
>>>
>>> I had a look at the previous discussions, and I can't find any consensus
>>> being reached there. And for that kind of thing, having the ack or
>>> review of any of the DT maintainers would have been great.
>>
>> There was a consensus with Conor, this is why he acked v2, see
>> https://lore.kernel.org/all/20240525-velvet-citable-a45dd06847a7@spud/
> 
> It's probably a matter of semantics here, but if it's with only one
> person, it's not a consensus but an agreement.
> 
>> ```
>> I think if we genuinely do not know what the vendor is then we just
>> don't have a prefix.
>> ```
> 
> And even then, I don't interpret Conor's statement as a formal agreement
> but rather an acknowledgment of the issue.

Well since both maintainers (DT and Panel) agreed, isn't it all good ?

> 
>> I agree with Conor so I applied the patchset after Connor reviewed it and the comment was fixed in v3:
>> https://lore.kernel.org/all/20240530-satchel-playgroup-e8aa6937b8b9@spud/
> 
> Yeah, I know. Still, it's a major deviation to what we've always been
> doing, getting the DT maintainers voice on that would have been a good
> idea.

I consider Conor's voice enough as one of the DT maintainers.

Neil

> 
> Maxime


