Return-Path: <devicetree+bounces-97421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD4B9622E1
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 11:02:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 519F6B22D00
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 09:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CBE8158543;
	Wed, 28 Aug 2024 09:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OTSTNJCd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B164D15748F
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 09:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724835731; cv=none; b=nyNWgbYtlDcvTvLBMZc6SUKxaQ7m+ArdZLvZab3Ey29iye7NElFyI/M1mULPgxuwNX2sl/uV6kdaJ929+drXX8yVcd6bEGXbu9VKSVoPj76E5WK/e61Gs+tTz+ZPur4U9tJjTaT+/0JLffyvYmXZyPJ9rahVJEF/xjpJaEso4jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724835731; c=relaxed/simple;
	bh=Y9T9mdlQSTcnkP1tn21JG7vgCJSK/X8TTylmvdd+n8c=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=twocOfHreus7zkgqoRm6W1EnFOqhXQlqN3xBSDMsjxrUH7e5q6Ql694KNSqkwZk4/JV0inQmZr+q5Pq1Z/ccrMt5t3UJlXmj0e2U5kfbOilmnq6VjAZ1+i5TGkslYEvg44KSnJbjyb8pYAIaoPlYdRAJ7M56XSI+015wHw04g2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OTSTNJCd; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3718cd91185so3440558f8f.2
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 02:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724835728; x=1725440528; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5Z4NxETDH0rFSk+745J6bpRFGLfHusheDiIWrN8jBhk=;
        b=OTSTNJCdanrz/vf/RJKuOxP75zAI3smwk5iRg1js8z6e9Ax9bq/DXQPooLV9RbXfIy
         beuIpOAJ13vj0cVn1Ey08E4+gjYNLjwZsW6Qzj4mNKvHC43GuR79/ggmqDVfply1kAXz
         W91ir0TtFnoN+H0ujNEek6cBNsvwh3nWGv7stBAmjkyHzjdDZ4yOQjdrAxTVdUCmBho3
         9w+ayzC6q7EwsZYpQIJPEav+GE5hyIeqy0QXrmXmYZX9asxj9QMBryRL0PqKMgzJ63Tp
         8NsRmMM/HueOb7Gu5O2BmGQMjFpm85QCnQkYMWUNxap3cAqRnHlQzSaR2aQho2WvGT+W
         fsWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724835728; x=1725440528;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:from:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5Z4NxETDH0rFSk+745J6bpRFGLfHusheDiIWrN8jBhk=;
        b=AYvi+RLYlCsOzgkiQiGoZWgkb0GgYsF3Hpauyw3Um4wvfChC7UBOqDM06YHZowOdMC
         bCaWl4a89LAiIEZT7D45hXu4C1cj4XUuI7LY/CculIiq28iUgTuzvGjoBTPqnA6xbsZ5
         nXansNOpo9JSz021wUYaTFQ06z1IMPD4Knzu7HfzgAsI1GWFw6382uMC5fzgvixHXQK/
         4bQ6VlaWrePgcmscy60ngNy4XcTpJPWB7E6JVBNw9tqvYxc+F7kpg0t7+ob0Hbm+w6Rx
         2a2sZNDJ2uh74kD9KBuMtX26CnVBzwOr44n9LqhurDOJ75Pj+gsFMLvhnswcDuyFM2fG
         /HBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzfK0rsbYazoIU0tsOkDBWJRcNIBEC6Q65sA4YI+R2/uTBc+O0r8YQWd2x6DQC0n2CPyBnlQiQEe2Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyCLIkPZ+DgmTY/JhNNNn4EIgUVpAW+8jwK5Mq5wGeqmRxmL9aD
	zG4Hwtz5JYHDyK8XP+l0U8Pb930tUPZMKKhMW1LBlpZB+L2WdgJMHNEzevL8mYM=
X-Google-Smtp-Source: AGHT+IFmdAK9+lZzMofTlrPBow7WEkGGYo1oX9YCwv64L8aM54t+v71mKdHMhcNTUKhnMvxpvZFm0g==
X-Received: by 2002:a5d:6041:0:b0:367:4383:d9b4 with SMTP id ffacd0b85a97d-37496859743mr787025f8f.56.1724835727419;
        Wed, 28 Aug 2024 02:02:07 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:765d:64ff:5f38:550? ([2a01:e0a:982:cbb0:765d:64ff:5f38:550])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730815b420sm15057475f8f.50.2024.08.28.02.02.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2024 02:02:07 -0700 (PDT)
Message-ID: <e3dee615-1df5-400c-82a3-3baff08c66bf@linaro.org>
Date: Wed, 28 Aug 2024 11:02:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] drm/panel: add BOE tv101wum-ll2 panel driver
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Doug Anderson <dianders@chromium.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240709-topic-sdm450-upstream-tbx605f-panel-v1-0-af473397835d@linaro.org>
 <20240709-topic-sdm450-upstream-tbx605f-panel-v1-2-af473397835d@linaro.org>
 <CAD=FV=VL1Wxd0veW7N+0Hy=LdKMzNbBang9_EZ9Zo_d-wZOBfw@mail.gmail.com>
 <dfb29dca-7110-4c11-b86e-9063f71a8ada@linaro.org>
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
In-Reply-To: <dfb29dca-7110-4c11-b86e-9063f71a8ada@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 24/07/2024 09:50, Neil Armstrong wrote:
> On 23/07/2024 21:17, Doug Anderson wrote:
>> Hi,
>>
>> On Tue, Jul 9, 2024 at 6:06 AM Neil Armstrong <neil.armstrong@linaro.org> wrote:
>>>

<snip>

>>
>>> +static int boe_tv101wum_ll2_get_modes(struct drm_panel *panel,
>>> +                                     struct drm_connector *connector)
>>> +{
>>> +       return drm_connector_helper_get_modes_fixed(connector, &boe_tv101wum_ll2_mode);
>>
>> Random question for you: on panels that don't use the
>> drm_connector_helper the "bpc" gets set here. Is there a reason why
>> some panel drivers (like this one) don't set bpc?
> 
> Good question, I'll check

Ok so the documentation says :
https://elixir.bootlin.com/linux/v6.11-rc5/source/include/drm/drm_connector.h#L698
	 * @bpc: Maximum bits per color channel. Used by HDMI and DP outputs.

and looking at the code, all drivers considers bpc=8 when unset.

but yeah ultimately drm_connector_helper_get_modes_fixed should have a variant to set the bpc
when != 8.

In this case it's useless.

Neil


<snip>


