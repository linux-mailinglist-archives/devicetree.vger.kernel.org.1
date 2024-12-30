Return-Path: <devicetree+bounces-134728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B20429FE612
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:48:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA3091882B29
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5F21B5EA4;
	Mon, 30 Dec 2024 12:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q/xmNwWB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE0D11B425A
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562758; cv=none; b=KSNbc3/PQqGotkyG9Xlw7P9VWRHh7TNDhr7qMWEaRK1wZKjjFwvV/r7xEpGPwNa0V/xuA12kOfbyeNWWhF5bX6RONhTlgZX/ckvnoUHSldFO3g/aTORDg73MABg+oC7Cf6A76x2i7il0NVxlOcwml7YW+i9j4VYY4y4rlJ7eFCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562758; c=relaxed/simple;
	bh=Pc/dFRU7zhvlm9jb8EEH+UtvvPLznpsQNOUOuyZlDRM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dCLNvXcHtqGCTuaxxyf3iHWMqkpdzTbB1wPo31rlf+2jRtTck3C5enBYgwhvRW1ysjHN594zZqZUByyAjvAI74A3mQ3YidBsHRMlnTKBxdUyOQpM5U65mJudrgn+VxvJ/xTwDDqi3X3evY+a5wFJRbwvbmE9aWfDAktcXKlCmxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Q/xmNwWB; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30227c56b11so106918771fa.3
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562755; x=1736167555; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wR+rDjRYRPZhYRjSFOwWeCZzooZ4kP9UqFam3k443z8=;
        b=Q/xmNwWBhgqGcxqRmXCQnWP2vhXb/wx5yTTtB1TME94OSt6MBCgifNYjjhThZXf5mk
         yQXbs+t4BGNBjmf/cSApwQijTjO3J+gNhwWNubAyXLkdINnxDiks3wJ2oG9vRMrj0iPM
         zbhDsVSQo9SL8dltg9ZxXLw7fpqZQ9RHlO49rtVLg1j2bPeo7TRWjQf96w0pvo33fC73
         mZzf3Q2diI7CbmOzTx37mcgsoz4Qhy/gTOq9j5uhnIjycQhqkZCxiBiMGHPSLuS9XSsc
         ttvg6WWFB5+pSutMdDbREW2Wg0mzdRDGBIwqPc3/EiPBSRSz3Ioq84+UeswTbR/nzQt7
         0YVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562755; x=1736167555;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wR+rDjRYRPZhYRjSFOwWeCZzooZ4kP9UqFam3k443z8=;
        b=KioOHH7a2oyH4ZxyvJqQBtmDpzvyevutQ4rR1e8ZtT/knwQ9lr57XfDZWIg6cbt9yx
         ELBSHPpdiVtCOUh2hCG0AvNaWxWE83Ujc44lZk8M1bmRGgQGLXJtoz5Bv58zSG30lGzg
         p6+rGITyPD/XwVYlU+BYKq0PiAag9NUUwo6eo8yvqpkpFjU5SNjk6ycwMVwYNqXdAgHV
         HT9uOVoze3DjEvYcHkAVkvFkWZPzc3r2uZG19Suy6+MF2EcnehpNaxjOclNwlWEzw6Yc
         s96CaGBxwNpVEhl+ygJIs+Oh7ftlZEj83l1dkjN8rN4JK/49z7eK58DnNig22cqAXFr9
         OE7w==
X-Forwarded-Encrypted: i=1; AJvYcCVpNMGs2339QFn9wM/uyry70OahUuOXsNfwjoXsF18Qs1GAUjjpWJEZreiw8PdhOjCl29A4rhe7Km4l@vger.kernel.org
X-Gm-Message-State: AOJu0YxcQsrbVPTq7sHmWz33OD4bSG201e099F9BcaC9fkOi+yC1849m
	e928FbtLIPK2GSmYjRQN5W7jIBaByMemwOxojDJi92duA2pvT5pEzgayshC9aKA=
X-Gm-Gg: ASbGncvcx5TyXUsAadPZ+U1arYfVj/G91DK1UH72gkP5FCqi+svhQB+FXdYdaKwQmdu
	5Ry+3HSd3DScssBwHV1bzL+Z/LBcgLwf8R9dDlP5wpqyFA6SaD/eBM/+7UI/3MBG5D3xFWxtj4S
	NqWcPBamXqpP2F7RUDO6b7lrWyXZ4FZe0Fy/4XyjI6ju2fWRSMr8+e4rgmYcx18k7h+6ebbXANe
	wU9x9XcetWHtP8DNeZvvLcJPXumOgI6/zHjmzeCJ6+kNL5wcAcCYjbc1GFgEvxxJZfSVAab3qBZ
	TNGmGHzK77aBw4+hsAH/T2Q6eTXfQDKvffFk
X-Google-Smtp-Source: AGHT+IGQKU2FvLR9cA2rX0pjCPif1JwZJgsXfRJ7/tnNeUSB87XImquoxTJIlGTComk+jVqCQS1kGw==
X-Received: by 2002:a05:651c:50d:b0:300:3de4:ff57 with SMTP id 38308e7fff4ca-304685f2d61mr135629341fa.26.1735562754937;
        Mon, 30 Dec 2024 04:45:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54244e19cdbsm1240805e87.132.2024.12.30.04.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:45:53 -0800 (PST)
Date: Mon, 30 Dec 2024 14:45:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 08/17] drm/bridge: analogix_dp: Add support for RK3588
Message-ID: <n7xgy6v7txz56ew3mcinwhnln4jxar5uxtogs3om36ft2y4wz4@ln2uqsfaszbi>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-9-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-9-damon.ding@rock-chips.com>

On Thu, Dec 26, 2024 at 02:33:04PM +0800, Damon Ding wrote:
> Add max_link_rate and max_lane_count configs for RK3588.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

