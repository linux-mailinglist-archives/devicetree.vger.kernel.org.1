Return-Path: <devicetree+bounces-73194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7832C8FE31E
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 11:38:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24334287991
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 09:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4E36152783;
	Thu,  6 Jun 2024 09:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p3aYE7m7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B63B1514DB
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 09:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717666656; cv=none; b=c2gjoe9l0gJnH/wN2pa19e3pGWUS57GMXKcKAXaswM+kyLQv7fGSA/YjptXMsUtrJ9/JrHkprU+FQSWuTCXu9MQaHlVmfx4vJAdEebMEvXg4GP8w6TZsNPse6sx1js71sizTw+heTxIeRdoo16Bx7Kh7gq+lMKKQt0N/hNwkNw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717666656; c=relaxed/simple;
	bh=SBSh8VpUg7A3L7YfRkydikNEtcWMtr5sTQZUFXJELxQ=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=hMZ+lwgnFEleVhNdYd9k6b7dXkwrWrKZU8QfQvT9W9DJnpuJpc5/PnteeJPYQg8T0n02aag29/Wiz3lTZ8utwTv2a/1w7pnZRNRpW0WkfUcma8Be+TZsLHUECHOWcF5LeKAie8a7c6KUn9+vsVN8WO2AvRYyM52j5QvLHTYn9K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p3aYE7m7; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4214f803606so8112305e9.0
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 02:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717666653; x=1718271453; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RCQdvPHC+1D0KbLKcaQqh85703XDLJL62lsU4LBVhIk=;
        b=p3aYE7m79XK/6LchN9ygEIIbYeGt3vgvweaNd481iNZqTBpUPtHt+VwOLznVsI05Xa
         Gy8cO3EQffdi/V5IGiBuJoQ+I/Pc8pvVbp/5tzRl6cfKbUmw4CCchwknQbNTEXkBu6cb
         MeuaVxMp+K8mPRTVzvUpSrjtuXCbk918Xsp4DHtZ7oYuseBQ6ks+YB9Ey9UGMZEWMfNt
         ZI3irMUKmfsEqc+l6cmsh4nXQrL2/HZwJLPIUJHga9WX9/BkLDFdurxawzizwhm/2iMj
         6iY6i7B3XRUPtDOqgQWnBkYz94JIdnEF9cNFd+tQ1DFIdsHenzdrybIKykRvmyWbuAiO
         dNZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717666653; x=1718271453;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RCQdvPHC+1D0KbLKcaQqh85703XDLJL62lsU4LBVhIk=;
        b=ldTxuFsrYiUH+/9gQz11QsxPzjXlD8ifAWdi//i5nRqgSK64YqM1D6+xzbbIxCdxKu
         CZDEc9kHRFi3p6SP0qdLwszm7e8IUBbP3+DoL3iigO2DsP+1yEii4jgQalsZH1nU6qH3
         /QdQbVQGoyn8SkEOKEkuoTKJ3lc9mLbJLArjRBJ0JT8A+R/I3VVU/wziAoC5GaN5ykeP
         alvADhC0QsYKd4cnZaBoWACExK6NClWnTctUVU5xx5O+cfyykHUS/JCUC4Xnk9x0PdJh
         267WNYJ3UK7JQFvPSgGxYklmswPw809FPriGUmG3RAVFC9i1RRJI8gtt0l/yeyCLM8mO
         +Cqw==
X-Forwarded-Encrypted: i=1; AJvYcCX86rGTBnbfQ90T+B4OAhhNI7vqKZYStkwynJHaSVy4pbG+TSroemTEf91ecfTjnm1IS0XmQSamDfn+DX/Ge2/LH1agGtLS1ZiGqw==
X-Gm-Message-State: AOJu0Yzy4PflAOJlWB1aF+sKIPhaFH8Achdn7wnoqYm19KujvnnMIGmQ
	s03Ch7EP6jNfmNPDatszhSawuRUReOnaAXWSNGVKCfz3QF0QnmsZfEIvVJRmczk=
X-Google-Smtp-Source: AGHT+IG6HdUEIpt883LUTHjTSr7jGD/461VkUD1BosW8cmHsPaeNl6UmT40F+K7TVSbyuBhGfQv37w==
X-Received: by 2002:a05:600c:c3:b0:421:48ad:60b3 with SMTP id 5b1f17b1804b1-4215634db50mr44930755e9.34.1717666653403;
        Thu, 06 Jun 2024 02:37:33 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:22fd:4ae6:287f:17f2? ([2a01:e0a:982:cbb0:22fd:4ae6:287f:17f2])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c2c7e8fsm15503555e9.38.2024.06.06.02.37.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Jun 2024 02:37:33 -0700 (PDT)
Message-ID: <2dc1fdec-7673-4462-abe1-fecf8e3e826b@linaro.org>
Date: Thu, 6 Jun 2024 11:37:31 +0200
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
To: Maxime Ripard <mripard@kernel.org>, Ryan Walklin <ryan@testtoast.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
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
In-Reply-To: <20240606-intelligent-aromatic-magpie-80a7a4@houat>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2024 11:32, Maxime Ripard wrote:
> On Fri, May 31, 2024 at 09:12:14AM GMT, Ryan Walklin wrote:
>> The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display used in a
>> number of handheld gaming devices made by Anbernic. By consensus a
>> vendor prefix is not provided as the panel OEM is unknown.
> 
> Where has this consensus been found?
> 
> I had a look at the previous discussions, and I can't find any consensus
> being reached there. And for that kind of thing, having the ack or
> review of any of the DT maintainers would have been great.

There was a consensus with Conor, this is why he acked v2, see
https://lore.kernel.org/all/20240525-velvet-citable-a45dd06847a7@spud/

```
I think if we genuinely do not know what the vendor is then we just
don't have a prefix.
```

I agree with Conor so I applied the patchset after Connor reviewed it and the comment was fixed in v3:
https://lore.kernel.org/all/20240530-satchel-playgroup-e8aa6937b8b9@spud/

> 
> For this kind of cases, we usually use the device it's attached to as
> the vendor, so anbernic in this case. Can you send a followup patch?
> 
> Maxime

Neil


