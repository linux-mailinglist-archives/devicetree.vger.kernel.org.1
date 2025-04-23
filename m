Return-Path: <devicetree+bounces-169729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BB4A980BA
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:27:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E714D17F440
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:27:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F5492690C8;
	Wed, 23 Apr 2025 07:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WJsYG4G5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16FC267B86
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745393222; cv=none; b=fMcHPiwSEExJSD+E4UyZ2nS3nBm9xW71tb0bKSpjTP7/FLic4j1OA6phEAxF/CO3Q4VjpFfFR5A2Npp3pSbwWtjzS/t6wcNQz8GRDQyYG354iVUQiwCe1c7xzqXZ6SLybB5kcUm+PyPVqn1e0F+Y2Qb2lZB+IeacaxEPPm6mnDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745393222; c=relaxed/simple;
	bh=Jrbw0OKpQbJ1dFid4p4N4XtPsI8/qSLnEpsHW9bCCKg=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=brIDoFNDZisqK835Zu37v7pW/pjI1GES6ZsgMeZ4WW7xw1YcgtWtgVlRyl+exyHqrdZOXSTmf1YQOzAils0FB3yCkX9NG0cmfsJ2qguGLrMrZqDOJdlNIWOPh+WRkFUVMltjanOrSgcN5VbtCI6+UPAwtSL0JfWbhrwOkz1GekA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WJsYG4G5; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43ed8d32a95so52500915e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 00:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745393218; x=1745998018; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kn/kdeC0hIJ6fPjKrtocu5NnRgujubxfAbJ5Urbgh9w=;
        b=WJsYG4G5Le7NxcMduHBEdH1Cuadj5L7FAZjqaEd5mYiMF/Qi6ppXkTUuDDk22WovVY
         O7B5DQAXeTfnr8i6cS+KbgmElCDTMFYIy2ECwPXpJaB3JeoMNYQZ/2ll4krvLhDrl0ry
         XWWTUjEF+7PJnsDC+7ryWRsgboKsQww8oCHwjnyrsKXY0gIeOF3zFgeZ4kyZGKIkcSA/
         8PxE1bS7/EyDFy8xpBfc+BpcJI9Cro2kEeAw/dG8GeFSA4Ky0taUyAn5Rs/tCD4hcZAp
         J/CUYtr3Rlwo+y9zOka/9al+MhVV66wL+2jOPfBCVsxlMCkn7Y45wIQSBrCGS1BpJrx8
         qsYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745393218; x=1745998018;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kn/kdeC0hIJ6fPjKrtocu5NnRgujubxfAbJ5Urbgh9w=;
        b=BboywTybUNHELmJWOgxnS9WLQTaoIQ5NBN4jvd86cPuvgTICeCPNw+KzCPxCa0+bUI
         896sXW6+vGr53fqi0CTAw+69Duz5nRv06ZOLa8iiWkO9uQuETUn64zXJbWH4chdPHFl3
         yv4JuMw1fNeo3/t04iT3Hhk+V1vahItnzNv4Pzrfu9F6pi7FY0+He4MmZBI+NjEOvjIr
         jxx9njdTjAIkJSSuk3ngHz4+S6ePHP5z+4smqoQRddNebolMwD1LQKd+TfQG75oQ5Nkm
         Ksl4s43WWt88o2YBmwADAtCHKf/GltCAmRu7oA73Qist9vC2//ktqFhpZwekD+I9pGoi
         swAg==
X-Gm-Message-State: AOJu0YwiKW2ZsWeCcS7G2wxMoUSK3eUT96VLgw2tUBerjCgO5zVJI+B/
	wEU5PsJGOertGMvR3+fahRE5cSkEoNvus95/9SrNc+WDTcy9rDOVc+rZyIzqKlA=
X-Gm-Gg: ASbGncv/Vsb5Srem3xQKKpc0ZGibwv4FvntuzlXDLRyf8tuHKWCF+/901hY2VjNQuSz
	Rgf9JPjL+Y8fla3cL4E6EelLwENLD4VR1RX6PpDrH7S+sm3T4PWYE6mLOFDfzD0YQc6fZS5H7bJ
	YfpkpCigvgpUIwEl+z/aods93OgxiRI8Czr5CxLhODv1UOIKCdYFUEZm+7S71xjQcBKMjwsVZM3
	BLvnp+u0YKRTbLAns1TSkviXRmfE4VbMn+CmXZ00/h+r8lBq3payr3tVoT+Rvd9cbpfXvHYQYsh
	9WRdpV1JpgYyxb6YOVlrEVIsLC7rjtOiLh++Uqq7YCDnlEsf7ydhYMO+T/H7mM6BH/2s/s1wtXJ
	3ECWgT2GeTgKQyszgeQ==
X-Google-Smtp-Source: AGHT+IGQjZAyp9xHW8ASlQKrR9fCiGMeMbCakgAb3SkKNca/+Rt6CnnTlRW63K73V1hHmlOCRLIMvA==
X-Received: by 2002:a05:600c:1c8f:b0:43c:fe5e:f040 with SMTP id 5b1f17b1804b1-4406abffc5emr134620725e9.23.1745393218300;
        Wed, 23 Apr 2025 00:26:58 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:2835:c2f4:c226:77dd? ([2a01:e0a:3d9:2080:2835:c2f4:c226:77dd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-44092db2bd5sm15015645e9.26.2025.04.23.00.26.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 00:26:57 -0700 (PDT)
Message-ID: <283096ad-ae1b-42b8-8312-b192f735fc80@linaro.org>
Date: Wed, 23 Apr 2025 09:26:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 00/33] Add support for Qualcomm Snapdragon SM7150 SoC and
 Google Pixel 4a
To: Jens Reidel <adrian@mainlining.org>, Danila Tikhonov <danila@jiaxyga.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-scsi@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 linux-remoteproc@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-hardening@vger.kernel.org, linux@mainlining.org,
 ~postmarketos/upstreaming@lists.sr.ht, Connor Mitchell <c.dog29@hotmail.com>
References: <20250422-sm7150-upstream-v1-0-bf9a9081631d@jiaxyga.com>
 <2ca2b774-fd7f-4612-b38d-f60e32ff6f9a@mainlining.org>
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
In-Reply-To: <2ca2b774-fd7f-4612-b38d-f60e32ff6f9a@mainlining.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 23/04/2025 00:07, Jens Reidel wrote:
> Hi everyone,
> 
> apologies for the mess this created. Danila's mail provider ratelimited him halfway through sending the series and the attempt to re-try sending the second half an hour later ended up with a new message ID (I think due to not using --in-reply-to).
> He asked me to let you know that this will be resolved later and the whole series will be re-sent once the problems are resolved.

The b4 web submission is a great alternative when the mail provider is rate limited:
https://b4.docs.kernel.org/en/latest/contributor/send.html#web-endpoint

Neil

> 
> Best regards,
> Jens


