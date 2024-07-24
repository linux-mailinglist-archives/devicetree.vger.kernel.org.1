Return-Path: <devicetree+bounces-87744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FF193AD98
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 09:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EB2F286462
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 07:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A78BB84E1C;
	Wed, 24 Jul 2024 07:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kBfwmOtH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034FE81AC4
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 07:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721807925; cv=none; b=dVPt1DeTbXuSzrWk0kjZh4PBkV+ii4I+pRex+lQRyBsgMbar47C6kTza+AkzmDSWI6BU7s4ALX4YqeB131ygQHyn6jkf5SFqOzbHOW1cD704Zzc7Qq4MuyTllKDtePVMZWuEV4pOzBB9boRvGSg5Wz2FFBOLujOV38cRHocmaMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721807925; c=relaxed/simple;
	bh=UdFJOv5/f+CLvNgmO9FtVnqo3Nl4i2R5zWewm1wjxCY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=SNPY44jUJUgEeGvHzvEfk9WaPbETjB8mlQXx5fKqXiymUmF2Gq1GYYoUWGJ040GzbYTyv+JIucdWyTzgfuBu6+BVA/A96rDlj3fMj82ylvL6vYtWDn4Cs2+M9dNXcnUxKJ+NGCjCdccYild26EZzsDSeFwfsbHQS3MsPnlevqqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kBfwmOtH; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3684eb5be64so3380558f8f.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 00:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721807922; x=1722412722; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cBxL2q4ZEENNODh1jSSBbB8KDmM1LiPizuc1ivIVlTA=;
        b=kBfwmOtHnICNasrDHkiPHTcgf1x34i7Gx8qkMlhowtcDSbD0/+BKok4hmruTH/WIO7
         AS7i3EPOo2EmLo42syJ7CoM+GiwpV8NKZkAoE8/1hscOvaJ/Pj0d/G+bd4y1mzNv524k
         9wxPa0E99f8+eKEos2+r2yyXUd8u9zQDuGQP0K5j3Oq1hsePEhKrOXhjsnCFVxXykhdo
         pHYGLs/AXDWWg3KAFmFYe5CCu0bmq8jZHF8qRZHNm0+sFyXxsYIuS8wzybOdZYFYAyrJ
         i6HcndpL5r3qfHneLY1glC4o2Q03uN/RHSjnP6Neg9fZPC/Jew86qbCSZuGgqNMYzZfI
         FHRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721807922; x=1722412722;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cBxL2q4ZEENNODh1jSSBbB8KDmM1LiPizuc1ivIVlTA=;
        b=d2QqJeCMTeoBtHT/JU1YrR8S2Jg19XkmZQ/MC1adE+LdkW/e0ejcTCNxN7JaLlgttK
         iL/aF4oJzHBTs3mO+rF/gR8norePUp9X5nWhT1k5v0876jpYl9H2ubJIDvS+kC8TjVOr
         d06uRHjLyuCBFtu3tYBlkQ1OXUsFavDDwtMNBuQ41ZmDG+WCbMApWha//Teo3rCmooWi
         TX3vgY7DsEn8SyjN6SOUhbOmafEsE/yG9VJ3vMV0qI+i9uibgrHpCXIjd9m7yiQ4roYf
         +uk8SVBQ4L8GVIwqILLhSZaEOVtFqQCuAlqtS2IIvPF64mG0O0GynoYaw/qZapPnrwHM
         GfgA==
X-Forwarded-Encrypted: i=1; AJvYcCUJDYxsL9xE3qCLaqQIsPjN3Vm07oesRuYA6vjmGJI/iPwLaUiXme42gCVHPe7ETI7NFY7tDon3pTXponcY9n5NqfPpu4BZ01xD5w==
X-Gm-Message-State: AOJu0YyaflouzvPIovD8xxI0sCry7ldXRgQS0XxNsOO9isOZQbm/reGn
	HvQUiABpBbIWj7O2cwrscuI1YzyzA8gYo0TpNHj7jYXXE/PlPOFPLwAPMp79J+E=
X-Google-Smtp-Source: AGHT+IFX9k7P7kZ+7uFc23BD6PELmgyVQoQ3HMFzz+K3jDmRNOslW5A1RA0nvQaBndRjgCk1ypvSDg==
X-Received: by 2002:a5d:664f:0:b0:368:633d:f111 with SMTP id ffacd0b85a97d-369f5af3aefmr780613f8f.40.1721807922040;
        Wed, 24 Jul 2024 00:58:42 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:deff:4fa8:5076:b4c7? ([2a01:e0a:982:cbb0:deff:4fa8:5076:b4c7])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3687868ac54sm13535704f8f.28.2024.07.24.00.58.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jul 2024 00:58:41 -0700 (PDT)
Message-ID: <2485acd8-328a-4a35-a7dd-8729f4c7dc89@linaro.org>
Date: Wed, 24 Jul 2024 09:58:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v4 2/2] drm/panel: boe-th101mb31ig002 : using
 drm_connector_helper_get_modes_fixed()
To: Doug Anderson <dianders@chromium.org>, quic_jesszhan@quicinc.com
Cc: sam@ravnborg.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, hsinyi@google.com, awarnecke002@hotmail.com,
 dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240723062615.14796-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240723062615.14796-3-lvzhaoxiong@huaqin.corp-partner.google.com>
 <CAD=FV=VD+7hLSLv+F0Egh9=ab1nRCpiB4g+54fqeWg__z7T1-g@mail.gmail.com>
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
In-Reply-To: <CAD=FV=VD+7hLSLv+F0Egh9=ab1nRCpiB4g+54fqeWg__z7T1-g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Doug,

On 23/07/2024 21:48, Doug Anderson wrote:
> Hi,
> 
> On Mon, Jul 22, 2024 at 11:26 PM Zhaoxiong Lv
> <lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>>
>> Use public functions( drm_connector_helper_get_modes_fixed()) to
>> get porch parameters.
>>
>> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
>> ---
>> Changes between V4 and V3:
>> -  1.Modify the return value, return drm_connector_helper_get_modes_fixed(connector, desc_mode).
>> v3: https://lore.kernel.org/all/20240722092428.24499-3-lvzhaoxiong@huaqin.corp-partner.google.com/
>>
>> Changes between V3 and V2:
>> -  1. Keep bpc settings and drm_connector_set_panel_orientation() function..
>> v2: https://lore.kernel.org/all/20240716121112.14435-3-lvzhaoxiong@huaqin.corp-partner.google.com/
>> ---
>>   .../drm/panel/panel-boe-th101mb31ig002-28a.c  | 19 ++-----------------
>>   1 file changed, 2 insertions(+), 17 deletions(-)
> 
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> 
> I'd assume that Neil or Jessica will apply these two patches assuming
> they agree it looks OK. If this is stagnant for a while then I'll
> apply it.

Thanks for the review, I'm still working this week so I'll apply this serie,
but I'll be off for the next 3 weeks so feel free to apply reviewed panel patches
while I'm away (I'll still be pingable on irc if needed!)

Thanks,
Neil

> 
> -Doug


