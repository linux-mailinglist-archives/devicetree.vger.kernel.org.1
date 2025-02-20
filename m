Return-Path: <devicetree+bounces-148791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B11A3D6D1
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75D5D16EEC1
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 10:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDB621EE7C6;
	Thu, 20 Feb 2025 10:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e0NcaPsd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080ED1EB9FD
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 10:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740047618; cv=none; b=QYtjD0bXo5zDCR+9qCyFxKUvg662A9UENtKZaL6tLxXSLaRGo13gKY8dD8SpjKeSt3bedzdoagKVxLg3v/57PApI1UXGmTN12LqaG0nYZKmT7Uc+Df7j5XBx5kbYW0qtJXh57Ot7EqExM2DwLxDdPpGvNGEye7oc6QKNs0qAeBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740047618; c=relaxed/simple;
	bh=RzfeUZD0FlZO5/5K3v7wSpYsgAvSIsVwgaDHKGedw6k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sm1iRwKQCT9J5RssHFsN332IUvDMvsGA6s3IZp3rJAdzqzudVmUTguf15jnhUTtEUZdYZf8UFEaCA3Ql1xkVt8yJzuwRDu5PC+nhxfX+YA5AdCmDk8G+/KqunKiya2MZCor8dq8GnM095Sf2pdUJNFtzYz3dAbIPQBVKlrgg4pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e0NcaPsd; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54529e15643so1689727e87.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 02:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740047614; x=1740652414; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nOULWVV8S2WJWFH7D0olvt+CcxnnRMsdjMYkB3pg9sU=;
        b=e0NcaPsdqLi0h8+NRttO82+h+TnK4QpyPUXdT+T6Qwk75PQNVwD9OMtS+IfOHXjLq/
         XgxHHdsNqH07SwdCAtTIATWMK1An3czy4R64pZ0BCEEfUKT+tuYV2BExka6xg+TLvO1Q
         0MpBs6Y+2LWd16zY8r7swOUpESMYzvuRkrbFkQYDHORZtdAZYTEl5IELeudE7MgTkwOr
         6MHNHI5rhr3qlqreLEFDeMN7dyT1g0gYodlEFpbBVenyIqil+HZcXnkgKBl79Tqk6kbh
         eb3P4L4sFOw2QvfCrWJT7I2gm5GcQuxdf1KHG5UE1JH8Vt9zQq7ZZx7gg6Esvrk0Tvqk
         Fa/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740047614; x=1740652414;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nOULWVV8S2WJWFH7D0olvt+CcxnnRMsdjMYkB3pg9sU=;
        b=XlTF1lX9GIILGmV8J4sOOEgZEV0MPkspGMOIg8FePb84ykIQGJ53hFUlzSxsjW9QE8
         D0cFCvBywOjle18BATGGoEUdZt6N/5H9nQprHvYrhqNwyRcDayMCiVIgjIK4QhGsMxwK
         4mCAd3+NcMwVtLHMJeEXDYcZMykUFs57oBSIhkWOAcUc4Wjaghc4PiMVAEUUIP4TLWI8
         kPhnyXcWMV1aaWe9Q1fL6SD7tfdPoKysA8DaciQYjjOYM88bO3IdvsqQgGxrIvwKgY7I
         uCPbBvuCojgr9Lpjcht9JoWCKyWjDNWrTe5Ea2qnkGvf68bFU2ELibXbLhlMqG06iBLU
         mebg==
X-Forwarded-Encrypted: i=1; AJvYcCXTO4DAyU7IHipJ/nH75TQcgcbq6LkJ63smayAIAy/+b/qBMDm1BCwvLfqSVujNjm1nbPAh/YlLH2uW@vger.kernel.org
X-Gm-Message-State: AOJu0YyKcvdg7wd2+4NyKFK3k/tcibeRuLdWEjPldoCJpC8vlm1VcupU
	mOkCwXoxxVWlrO3oNNF2VZwfBumJkTvpeLmXmsZWxwFikQyb5savcKNK0QSyBWw=
X-Gm-Gg: ASbGnctVRhHNZNalNmBNRMxX0kVJCxRt4my5mf1SxQxTTpDDYJC0Jq2fCtAef+kkmVf
	UXo3t30HICVSokxgnB/gAAnK0CgHAHVLS2I3mnu+lDGV4A7JflsdXu6MJDYuqoSD12+HK88yvRb
	SvXYGJMjRaQUPZxgctnBwCttt7IbnOqDOJ1HD+h405dlTWu90S32i26PUfUJZAQP+UDSzz/YrWt
	Nnq6VWoBbO5YcBWDKq56fvIgRxetLoWGWT1FpsbZbBIZk60Ea+sBnf8oB1WNpMixdHTM5q56Wl9
	n5bOXqHPq6q0EJiBvayIJyLqbYTUIC8+wVb97qk5ZiJWlSOBX2jR+FmWBIkGP7Bb03s+OxQ=
X-Google-Smtp-Source: AGHT+IGUUcYwMWrswexilTub+9t7uGS/voZUkkMFCSEUbJmmonP/3ieTF/+EZ9nECI5YUhJLWrjddQ==
X-Received: by 2002:a05:6512:2387:b0:545:9e4:e823 with SMTP id 2adb3069b0e04-546e58bacd7mr835355e87.16.1740047613925;
        Thu, 20 Feb 2025 02:33:33 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54595e38064sm1632621e87.126.2025.02.20.02.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 02:33:32 -0800 (PST)
Date: Thu, 20 Feb 2025 12:33:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jun Nie <jun.nie@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 4/5] dt-bindings: display/msm: dsi-controller-main:
 Document dual panel property
Message-ID: <grdadzunaabzg5jxpsiasgzbioy24tctlhhyxg6zwdkpv5vjwe@7k2di2myu4k6>
References: <20250220-dual-dsi-v2-0-6c0038d5a2ef@linaro.org>
 <20250220-dual-dsi-v2-4-6c0038d5a2ef@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220-dual-dsi-v2-4-6c0038d5a2ef@linaro.org>

On Thu, Feb 20, 2025 at 06:07:55PM +0800, Jun Nie wrote:
> The DSI interface can be connected to a panel that has a dual DSI channel,
> or to two separate panels, each equipped with a single DSI channel. To
> prevent the DSC configuration for the dual panel setup from disrupting the
> current configuration of a single panel with a dual DSI channel, add a dual
> panel property to support the use of two panels.

Please use the terms from the standard. The "channel" is mostly used for
the "Virtual Channel" or the "logical channel".

Also I don't follow how DSC configuration for a dual panel setup can
disrupt current (?) configuration of a single panel.

> 
> Signed-off-by: Jun Nie <jun.nie@linaro.org>
> ---
>  .../devicetree/bindings/display/msm/dsi-controller-main.yaml      | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> index ffbd1dc9470e2091b477b0c88392d81802119f48..e3f2eabde27609a66d6d81fafcb14e1bc014613c 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> @@ -88,9 +88,15 @@ properties:
>    qcom,dual-dsi-mode:
>      type: boolean
>      description: |
> -      Indicates if the DSI controller is driving a panel which needs
> +      Indicates if the DSI controller is driving display device which needs

Unrelated change

>        2 DSI links.
>  
> +  qcom,dual-panel:
> +    type: boolean
> +    description: |
> +      Indicates if the DSI controller is driving display device that composed
> +      with 2 independent panels and needs 2 DSI links.

How is tht different from qcom,dual-dsi-mode?

> +
>    qcom,master-dsi:
>      type: boolean
>      description: |
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

