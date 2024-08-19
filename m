Return-Path: <devicetree+bounces-94854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A24956F24
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 17:45:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 936481F23811
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 15:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E2ED13B590;
	Mon, 19 Aug 2024 15:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HmKg9cc+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEE413699A
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 15:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724082290; cv=none; b=uN/i2u7ffu1GThMP5ArCMsPyKaZGfEfk+cQcPlYHC3CuKMglKsujUPU7dDCy7bxB73zGG3nGMJ1FoI3msuCM+Pbs8rdTQcezRvstt3DAW8QdJGwSUuAUWDdOVJWb0hDLJ60VTJE5RGGwM0RiQDiHe1JgYoxYLzmidnbq8ZvagAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724082290; c=relaxed/simple;
	bh=6J3NY+yiGfB0B9Iq6BPUd0a1ijAjJ5rX/IOkG9xyLx4=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=KHu4Vc2bacf6WAuGiiNPzSbAHvEEBp09unRq+8gmTcrJHzqHmLbHnv0siFLrDBBE0XMsd+aF+qL5xI3atciPGot8hRbOEN9XTBB9x/xEFl++U6xCBt1MryiPj/N72SMiUBvM7fh4qvOLcyHa1b2CgyU5u0aR5iIGrTdFEtbjtKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HmKg9cc+; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42803bbf842so49392895e9.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 08:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724082287; x=1724687087; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F/Xv3nsXv1q5PkoN52h1MNaEjHJHTbvi1agF5Quui2E=;
        b=HmKg9cc+vd4jMwfjE2HIRybf9CyhK431pEImHKVKC3sUmBL4RDTzRc3PoRmW3FUzA4
         9QYu4btrLmHU67rNM0p2l5jrqc7JPDDX+HdeC9dtJWa4AujLIwEA0EKRpdzVe326PqIF
         Ygccz4C/G2Qrmv0W6mQOHUwBgGxBOwNYBnJw8PpBmO01oLcYaws15EHHB0CEZ/PfFJnJ
         xapPdxnq4YJGelJcQdEkoqva5Es8h8LBxF8flO8py/cwxcLw38zGISGDXbLWvO2CFanx
         dIYN3YdyTO1oUBFQfoWP3lr0Pm4dbbWANdLLsNzac/4+YqRqzw+e6jnUpUKcKgAyYE9x
         Ge0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724082287; x=1724687087;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=F/Xv3nsXv1q5PkoN52h1MNaEjHJHTbvi1agF5Quui2E=;
        b=PmGMR+GOaAlePl5DV5P5Uzgf8Co/bgO0k16Tf6dSu2lZfSFprP+gLkamM6IcwixCP+
         Y2rFphuALnYT1ZajR2k6FCELXXlnv5ABMIBApD46fvLUtEqIATs0lq3PNxwYI+qIlPV+
         mKU3333Wy5GNyQ2jRRBpYX2OonMPAcyQ1CgIvUojYNveQj7xrYgHf2nR1sJySeEKQipl
         VACl6cz1rLrLftmEdiDrL1hsYRBpe0/xWF2jlo7QbnspTzDZeLKJriHWiSIn8fwpB0mw
         izVFcX7GumuC3k3Og8eGJ5tMwiz5lwRA8fKxWrjHZ7I2aJaFF3TgZwoBL8dyOSYXRZU1
         xWoA==
X-Forwarded-Encrypted: i=1; AJvYcCXDB9+MB3oKF/EYn8d9HoK8B6998Y3q1c3jzCZkRprDO4b/Ahfe7a9f2P2xZiXNmM1b1pWEe97QuK8ck2rt1JIbQ+2/+riGVtL2+g==
X-Gm-Message-State: AOJu0YwYc0SmBJ0p0qRbNb4fefP6vpOngH6jICmim+PiP1GHmHLzlVdl
	87Q5uFORdeu+POgeq5+S9/yGrU48OAnU6XF8tzUr3VomjIU0Y/ttLfdEUrOnsKk=
X-Google-Smtp-Source: AGHT+IFtqV44TIzMSE3Q3kv+DMpp1U5YgbWjzJtplQ+IL3GZrmMRvPaNOyZaUH4FhSsLRESzsHarrw==
X-Received: by 2002:a05:600c:4f12:b0:426:545b:ec00 with SMTP id 5b1f17b1804b1-429ed7b7860mr91644775e9.19.1724082286959;
        Mon, 19 Aug 2024 08:44:46 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:f54e:4b0a:5175:5727? ([2a01:e0a:982:cbb0:f54e:4b0a:5175:5727])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3718983a184sm10810121f8f.14.2024.08.19.08.44.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2024 08:44:46 -0700 (PDT)
Message-ID: <0df40f72-f1d5-4049-a6e5-04d973c7a0c7@linaro.org>
Date: Mon, 19 Aug 2024 17:44:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 1/2] drm/panel: jd9365da: Move "exit sleep mode" and
 "set display on" cmds
To: Doug Anderson <dianders@chromium.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 hsinyi@google.com, airlied@gmail.com, daniel@ffwll.ch, jagan@edgeble.ai,
 dmitry.baryshkov@linaro.org, jani.nikula@linux.intel.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240807100429.13260-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240807100429.13260-2-lvzhaoxiong@huaqin.corp-partner.google.com>
 <1518bded-72d8-4ed0-a63f-3dd21473b23b@quicinc.com>
 <CAD=FV=UfE99Q1aQfPk61WzqK+kbMd-htWstjWUqgCvK1fqfWPw@mail.gmail.com>
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
In-Reply-To: <CAD=FV=UfE99Q1aQfPk61WzqK+kbMd-htWstjWUqgCvK1fqfWPw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/08/2024 17:45, Doug Anderson wrote:
> Jessica,
> 
> On Thu, Aug 8, 2024 at 3:56 PM Jessica Zhang <quic_jesszhan@quicinc.com> wrote:
>>
>>
>>
>> On 8/7/2024 3:04 AM, Zhaoxiong Lv wrote:
>>> Move the "exit sleep mode" and "set display on" command from
>>> enable() to init() function.
>>>
>>> As mentioned in the patch:
>>> https://lore.kernel.org/all/20240624141926.5250-2-lvzhaoxiong@huaqin.corp-partner.google.com/
>>>
>>> The Mediatek Soc DSI host has different modes in prepare() and
>>> enable() functions, prepare() is in LP mode and enable() is in
>>> HS mode. Since the "exit sleep mode" and "set display on"
>>> command must also be sent in LP mode, so we also move "exit
>>> sleep mode" and "set display on" command to the init() function.
>>>
>>> We have no other actions in the enable() function after moves
>>> "exit sleep mode" and "set display on", and we checked the call
>>> of the enable() function during the "startup" process. It seems
>>> that only one judgment was made in drm_panel_enabel(). If the
>>> panel does not define enable(), the judgment will skip the
>>> enable() and continue execution. This does not seem to have
>>> any other effect, and we found that some drivers also seem
>>> to have no enable() function added, for example:
>>> panel-asus-z00t-tm5p5-n35596 / panel-boe-himax8279d...
>>> In addition, we briefly tested the kingdisplay_kd101ne3 panel and
>>> melfas_lmfbx101117480 panel, and it seems that there is no garbage
>>> on the panel, so we delete enable() function.
>>>
>>> After moving the "exit sleep mode" and "set display on" command
>>> to the init() function, we no longer need additional delay
>>> judgment, so we delete variables "exit_sleep_to_display_on_delay_ms"
>>> and "display_on_delay_ms".
>>>
>>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>>> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
>>
>> Acked-by: Jessica Zhang <quic_jesszhan@quicinc.com>
> 
> Does this Ack mean you're confident enough about this patch that we
> should go ahead and merge it, or do you think we should wait on
> anything else (like Neil getting a chance to look at it)? As I
> mentioned in my reply to the cover letter [1] the patches look OK to
> me but I still don't consider myself to have a wonderful understanding
> of the intricacies of MIPI DSI. If you think this is OK from a MIPI
> DSI point of view then we can land it...

I don't have an advanced MIPI DSI knowledge, but they simple remove unneeded
sleeps between dcs commands, so if they are confident they can be removed I agree...

Neil

> 
> [1] https://lore.kernel.org/r/CAD=FV=WCw6pAump-PUFCW0cgbRY+5_2tPNLe=hN3-dnXD=B6MA@mail.gmail.com
> 
> Thanks!
> 
> -Doug


