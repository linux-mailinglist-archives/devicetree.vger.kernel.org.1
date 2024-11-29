Return-Path: <devicetree+bounces-125545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D698C9DE7EE
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 14:45:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D156281311
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 13:45:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 928541A00E7;
	Fri, 29 Nov 2024 13:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SlSL/GEB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2505199230
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 13:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732887937; cv=none; b=FKi7VSzWmYDY4viE8QSqFxGLBBCA0+smSECTjmXyz9QdeFXptksdShia3gzjZQS+nrlkKdRfvNuJ1eVJtabguApH++SUwxoy5NqBCmIll7NTqOn3dbupcmpJ2YGiT5XG3SStfb9dyBX40nwYSRB7RqkYwzkks+4QYDf0z7Gi5Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732887937; c=relaxed/simple;
	bh=WoE2yMfvRouFCW1YYkpvAbtADpCH3VD5R9wGkslpWIw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XY2LRKdXcuB1LWrVfxpIpn0yJ6vn6Pudyl51LvUVYwlzhDydwyskaUjDX3ItxzxBa0vNdwfS7l22BrZVuXgYBEEt3v8F7n/xYbxsRW6bCM0ft7tnbyHEZHkK9DQcr4VmvnewHY0sTfEmP4jMhnxF3BHznt6s3IxmkuWJxQBsYVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SlSL/GEB; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-6e34339d41bso16958917b3.0
        for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 05:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732887935; x=1733492735; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jnuFPvHlqF2+V5h7gDxD9QoNqnoE7Ul8whcq/eg7E7s=;
        b=SlSL/GEB4MLqk5P9mojbkJI7VRjdhbLLbK41ON1gkOkhA5Iy+rAlWGaoqQC0sJ3Yzw
         Ize0eBodDL0tgwfYGmn6J/KulNFFalaRKWcLmXSNqqw12BS3HPMp0+LEIi1OFUMDrlcQ
         Y7d851+/QiQIJD7NdpXfB3pm9fYP3dFbNhtb2lAu+RSm2e8SEGeh+9FMAxezpLSEYLQ/
         DGA9UDACITPwrbXBK7H/Kdye11og2UqO63fHD54uKx91E0uNqxkM1rQj8A/l8m9nXz1K
         j8zbwjuMsTc1opZB2KRcC9w8XpDUYosbNyW92KNiISo8LKRnoZDMmj/IBLIoJtISYI09
         um2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732887935; x=1733492735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jnuFPvHlqF2+V5h7gDxD9QoNqnoE7Ul8whcq/eg7E7s=;
        b=Xzp7szjio4Rk5kSp0gQEddLXvvbsls4R0mVdzggNj3VX0CAEYJxiiyD+m/i6yPihH5
         cdZdXv7pqKpcE9RnMIbw48Rh+Vp5T1YGyq4JYFtTa0jT4POHEUUotQ8uENjTi+DJxqn0
         iUVksaLd0R6bGcD0Rx0CL5CwDffr/zt0o6Z3K3So5521553vNVNmPXM0sqXFSGtHnyKp
         /uqtOsyscbvI4ZYJBeLGecFb5bdIdLCqkTjCdBHMT1+f9gpG07mlZJM4ZSPkYnH6iJEb
         yMDIdcHZs6sDRq3QFqNQxFmkhiVrVAeC1SyBFTZJV8vZk9AwV5FGFsMaY/bt+M5T76eb
         GSmA==
X-Forwarded-Encrypted: i=1; AJvYcCVwCNxn4v1z791GwE3nKlF27l6EmuIGl7b7i2MY/ba1LCWBY3eQSBAl6GO4Q8geBIG5NMoiYKqG8D6y@vger.kernel.org
X-Gm-Message-State: AOJu0YxmnX8vF8r7x/Y36PBWHP1eOaHJ5F4d68E0MnuGn/uE4KPYuaZL
	tKCEuXanaITIPQTl2iBrlS01OqWrFdw2BbgrciTqViWshRwqUMt3Ir+KYjsiVFe07yeTpnxw+s2
	584MaBlBT57Yazwm+Vh6QpAEs2EYA7PmGsGuyew==
X-Gm-Gg: ASbGnctF8B9DCh860G2onlitw8l/ZE1JenSrWfbq4zlEtv3PqeV6t5UfU576cn7S0bB
	QTDYp92egAjmwm+8XMraLGzUEkF0oNUA=
X-Google-Smtp-Source: AGHT+IFcdw16JjCHhf6pyyNofTqnqJtbeYn35N5Sw7fR5PMwJk8S0Dust9v7sJdcUjiPz0hKcc++q+mU90RLLwYFzZk=
X-Received: by 2002:a05:690c:9c08:b0:6ef:4ed2:7dfe with SMTP id
 00721157ae682-6ef4ed381ecmr63286207b3.31.1732887934964; Fri, 29 Nov 2024
 05:45:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-8-09a4338d93ef@quicinc.com>
In-Reply-To: <20241129-add-displayport-support-for-qcs615-platform-v1-8-09a4338d93ef@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 29 Nov 2024 15:45:29 +0200
Message-ID: <CAA8EJpqMug4u1YPxBGfDUT8Cf8F5XckxnJdau-Gm6swyU5VT=w@mail.gmail.com>
Subject: Re: [PATCH 8/8] drm/msm/dp: Support external GPIO HPD with 3rd
 pinctrl chip
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>
> Add support for handling HPD (Hot Plug Detect) signals via external
> GPIOs connected through pinctrl chips (e.g., Semtech SX1509Q). This
> involves reinitializing the relevant GPIO and binding an interrupt
> handler to process hot plug events. Since external GPIOs only support
> edge interrupts (rising or falling) rather than state interrupts, the
> GPIO state must be read during the first DP bridge HPD enablement. This
> ensures the current connection state is determined and a hot plug event
> is reported accordingly.

NAK, use dp-connector instead.

>
> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 83 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 83 insertions(+)


-- 
With best wishes
Dmitry

