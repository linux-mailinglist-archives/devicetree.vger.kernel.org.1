Return-Path: <devicetree+bounces-76715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF0390BB6D
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 21:53:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4814A2847EE
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 19:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4687E1741D7;
	Mon, 17 Jun 2024 19:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K3Uhde09"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83766186287
	for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 19:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718654020; cv=none; b=JKCE3ao1xUcjGcxqmO91Ml4iRtfZS6/9td73gJ1Hrj5N+6GNDDzPgJKHsEOpgykWr2LHwtA4bZYvyoJll25A1IUT6WMsnnI3RFKG03Ra1CmSrSpLxBirUOzMvlTfmey/pnYDOYGUYuA4Rc36B3gguEWnVhpTOHDypGr+jzYyBsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718654020; c=relaxed/simple;
	bh=1YVUR7LvgIlo+w012KpPWtc85kw4eNbfoecIrwFw48Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oveM49Uwa5Avq3UC9GOZs64UncerGuB79TxnYwpnoUTNoZRZIYifYQy9E1JfM26BmyIe9Gbg3tzOnvOzyBwVh+h15EVzAiZYvIA4qJv1xFfHo+Sap+V/KaRUceNsJhuV8jo2hKWJE31EJg3SbUfxQeiI/vaIdPhd90FtvazeIMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K3Uhde09; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52c94cf4c9bso5654672e87.2
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2024 12:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718654016; x=1719258816; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E5Nxfq/zAbxRxbUk7iMcNvntq7z05IDt6TFx9eRzfjY=;
        b=K3Uhde09/R7HiOU2LVuFY4nH3cdjHLgUUj5QE01LvVnhUuUhaTXKq8UhTte4YVv3zj
         wD1AjNZiRrUDRJL/FWLQmj+HigIOxBRLlfgIOvnM2yfsrpXaJF77IKoBQpAxFoX+4Ydf
         myBMGAca9WUuRVnvInUFIMY0lQrUL+R9T5Wlbo3k4dzyJbnTQIGTSo53YcQLCHUeT3GN
         As09RxNWibkNBn1o0zt2DMoIjsQMcYN0dLhnYpDAjhLfEBG+Fyws9oQptgz5WF2uFekN
         +7oqOhBz9/3K92gGh//Phpb+O1HkIMyduQIBvh0DCxiXPto0LitZZoDokxYoB9nw6yLD
         BK3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718654016; x=1719258816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E5Nxfq/zAbxRxbUk7iMcNvntq7z05IDt6TFx9eRzfjY=;
        b=sPUF8J+mEyclb+9VQOO50MG/+t0sZf0+sm4YH5i5A0IKpD5Ooi7+txBU5876pKHJWm
         oX94O7U5MjkWSVo9YerxewOx7K2YFIxwrH3j2Tf0G1TTtNo6vS8KZOPkbBfu04nQE62R
         c2kW8BRq9+Nphf5NZ4LK5bWHYpI6AI7hk24u+w6Q/rEOw+CPezdKIBU7TSxlDBHYrBVc
         hzhOUzaC04TTH60sdnpJdTR3ZG5gUfTwZ1w5NjVTSYf0FVmEHs4NAaX5mNsPHgMazbQC
         z4SffGgLfiBaWlNxKSzt6NiwZ790mNUuNkHaaShFn4PKOCOUCFAoAM1d201M4IoaUdrw
         SIgg==
X-Forwarded-Encrypted: i=1; AJvYcCV85CVc4wHR2q2Z5wqAbD6hvh+zLP0i+pm7uhU2h9horiHWDOtMYo3/9k/3buYus/V6a+8A5JkU0/gPhkAyD5++Kdo4Dl40FMOXEw==
X-Gm-Message-State: AOJu0Yw8tI+BNOjGz/JKdTTlAImgTj4pt27sVdGsSt/riPbXYyRyMACg
	xSydoROryU7AhBQUDNvYOgF1WAjhjmblXHUCN5M3Zi3EbVeruJzTIc7k1+w8lkA=
X-Google-Smtp-Source: AGHT+IFXPK2SWDltA5kaKxH7ANy/aaBeo7RR8HT52CtegGm7yboihGecAkFhsH6t0znnSq5xiLllLw==
X-Received: by 2002:a05:6512:a84:b0:52c:c04f:4e30 with SMTP id 2adb3069b0e04-52cc04f4e53mr2221836e87.40.1718654016550;
        Mon, 17 Jun 2024 12:53:36 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282de0fsm1342075e87.67.2024.06.17.12.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 12:53:36 -0700 (PDT)
Date: Mon, 17 Jun 2024 22:53:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH 2/4] drm: bridge: simple-bridge: use dev pointer in probe
Message-ID: <n3olj4gzxntd6av73k4ccm6tetjb5tsiahsnkrwy4une4njx4a@5igvr4lsrpbp>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <20240617-tdp158-v1-2-df98ef7dec6d@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240617-tdp158-v1-2-df98ef7dec6d@freebox.fr>

On Mon, Jun 17, 2024 at 06:03:00PM GMT, Marc Gonzalez wrote:
> Prepare to factorize probe function.

what and why?

The patch itself LGTM

> 
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  drivers/gpu/drm/bridge/simple-bridge.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> 


-- 
With best wishes
Dmitry

