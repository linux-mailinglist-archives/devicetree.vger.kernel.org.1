Return-Path: <devicetree+bounces-134718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1DE9FE5D9
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:33:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46B323A0705
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50A4C1A2C25;
	Mon, 30 Dec 2024 12:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WezBUSl4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A292E25948B
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735562014; cv=none; b=tHIEL5ZSxnl8/qUa0HJ/49xCv8pCSdaj0d/FbFKi26my9gskDx1Vbtsyk4lNvD4pnrdRq87wwXpHwZvyyQOxR4OZnaL8aVW3C6isy/PDa+tInZT8jz9XZnn9tVrIyUytV6uuOYqfKiu1O7dDeo53eU3zkt79a+jcT7QRRyPlKro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735562014; c=relaxed/simple;
	bh=P0svUL2deMPwdACs88p7iUcEJDGatc8sCmhXc+e+UJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jAyHYxAadk1QmyrtfAlTyg7DFjniOjPmUmv/dD7OlK3kLGyB1doQTyIOgz/LP2KeG7tN1D0f3nYMjykTe3Of5DJ0XYPh0yhv0PLxeRmKVQZfTWMyuIS7lIo3ZNWFHQlE86GISZsQar00BGo3H4RWBKZL9MAgz9pTGyOxHo6HVxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WezBUSl4; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so14137659e87.1
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735562011; x=1736166811; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/KYkN53WI+JNUVPnu1L7iFZzO5YGuruzvwyya/+uFx4=;
        b=WezBUSl42jTtkDJUolktzPdIlo9xVI5qyEPNudPIJiI8j3urSLkgnsy9YPFRaH/C4W
         lJtdUX2r2fu0fvrjbHmxz77lN0FVGTz7TYBjKtER+fJ8BsNKIgRDvk8iaPDoH5XP634Q
         DnYL+BEcjzJxdh8qhFVmRIUSsEJ3fjDlWaYv7GrBo7G7NCqBnr1JF/9qCRruBa3qjh4J
         pVtpMWwLous51uXiEttEPUhmyqyEhXsWuqiPa/piJbQQL66hgLeZF9DmcNdws60quPiz
         8vM4dc1lLpnGkZ9f5M6TLR66Jvx8cUWT6DLcSgzihgG2SFO7q/j0nl13aq9wal8OGdI0
         laNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735562011; x=1736166811;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/KYkN53WI+JNUVPnu1L7iFZzO5YGuruzvwyya/+uFx4=;
        b=we0dyG+35jKHgLpIciW9kUCKJt22rwJ9KaofSwUygDE6AfJcYo+XKSGw8iRJ8WxVR/
         z6uvfuS5vNddr2GcJ5DzioUDXvlUwbVEkmafgWsCEZTmkbdTLVSd5q15tpKgx0Ryyr1T
         OPMFWOHgSGwJ7xk0CqrjxChKuc2NiX1wRseiVZ5wOkDlZmI+HrXMZ8lwA2FLQpnE3OCP
         EmB5pu2c4ODKq6Jq56i8LLb4f5Jyym2Lv7+wt9zqFkt+82ImIDjNkLcndA/44K9l4GAF
         eGa5xPwgxvnF5lghCk2SJqpcAZX/7xa1WAesmZe2RMfwFx9V2AmGsLIZfFb/vv0ZcJtx
         tlrw==
X-Forwarded-Encrypted: i=1; AJvYcCXPmXN0uso1FlOsPX1QVmlif2keQbH6XAI/hXJudk4yZ80KY7CftHzj3Nn2z8Q+A2/u+RfbsLSlGv8k@vger.kernel.org
X-Gm-Message-State: AOJu0YzKGyGREVjxO7nJ+pasbT8KdRVpMz7GMTipfnjuR1Ktq0GXAv/F
	pmYCKqNYEMHv6Zs4EUblgZf5j1oRjOEhGehwwgIxW1c+e0ywqv+Bc1BBOi/xDHk=
X-Gm-Gg: ASbGncu7DQ7KAv2UP3VWNiPKQxS+26vZZ42wBc/evuBhdWQwysZGL+Z6XXAZBOkmQK6
	Qw+4LLkP2n36DE4MyXpMdmOcTi01h5Sax7b0L7j93yBINf29bp6ZC08bZk/c1IRhCraPk8oFYGD
	ZDXj7EvrZlrXIvX37mwdyNFZu8uhWVkReTF7UCv8VEnXJpOJnvsVAhcY5G/Vhy6ms92yuz1mx2s
	aUSp+80vXJq3QnC6r4jEdAu2wBvRbwC36stGl9xL72E+pTz1B/qY7mqad+S9+NBAdY0QqDZK8uY
	N4GUukpUcql2PtmUmnxlOKquMkLvAtHwSY3A
X-Google-Smtp-Source: AGHT+IFuphrsUAmtBsapn4MuuZ4zkhPDCYfwZQ1OQx+nK20jXRfJS5fbhwKtwh7lTAQAKIeTPggikA==
X-Received: by 2002:a05:6512:334f:b0:542:2990:722e with SMTP id 2adb3069b0e04-54229907232mr9337220e87.15.1735562010862;
        Mon, 30 Dec 2024 04:33:30 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5423d3b5697sm1688236e87.133.2024.12.30.04.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:33:29 -0800 (PST)
Date: Mon, 30 Dec 2024 14:33:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, l.stach@pengutronix.de, 
	andy.yan@rock-chips.com, hjc@rock-chips.com, algea.cao@rock-chips.com, 
	kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 05/17] phy: phy-rockchip-samsung-hdptx: Supplement
 some register names with their full version
Message-ID: <nr7ilsmyu5kubahmq5pjscgpf5wrnzn456zoohatpftr2zjpfv@fl2mx4y3cel5>
References: <20241226063313.3267515-1-damon.ding@rock-chips.com>
 <20241226063313.3267515-6-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241226063313.3267515-6-damon.ding@rock-chips.com>

On Thu, Dec 26, 2024 at 02:33:01PM +0800, Damon Ding wrote:
> Complete the register names of CMN_REG(0081) and CMN_REG(0087) to their
> full version, and it can help to better match the datasheet.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry

