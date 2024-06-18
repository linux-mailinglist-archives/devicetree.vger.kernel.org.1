Return-Path: <devicetree+bounces-77189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEF990DA81
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 19:24:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ECB581F22768
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 17:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F97513C80E;
	Tue, 18 Jun 2024 17:24:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ABchjUgx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A932139DD
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718731475; cv=none; b=mxv3S2BiwyTXaBIzBBISYbO/UsFoDTA7gxS8qnkIYkcz+4FxlvpfGqCR/yqO9q99GWIgrh+siVa0X6/FVkAGL432yYDxghNKb6BuNrPU9BFleVgTxhEnRjyknWAwum/W3YEhrGUqJnrC91cVSYYZaaUH9+9DQs3BJTq6iqtK6Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718731475; c=relaxed/simple;
	bh=5dWsJm1/hN/Ly28PLPZd3n45Gy6PKimad03f3cjpmAI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YqtaPsuSwSK4U0sgV6SfA1/lv1PGpOyvDXNTHb95GjojxXteKTdcnVu67civrGtp9npA7L+HzEz/Mjb3I0SMs+bxA6bepH06Y2wO8qXxpcQisrmcu5z8wB+kxxvUPTHGPnXUzHlvIPJlqzyc8rvlg4u5GKUjCZKUFj3gIi/m0Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ABchjUgx; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ec10324791so59979881fa.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 10:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718731472; x=1719336272; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UWc5R2fCgPmQ5dTsZo1oVFpgeegHmUpDv90F0Wr70Ck=;
        b=ABchjUgxOQku0kgqu8t53NPrp9PAywUmsglKf4DPB4kXVMBasF0nuphgQxogup1b/1
         QLPTmMKR9wJkUDJaD1yeKtH5uIYzBN+QRR4SmtiD5jG5Xq8KrRSanMsmn22eS+dRPYP7
         N7uKZRZROKaNdilMn5kvnyPRKB5OSviZTQKiwA7k3/qULTsRPEgVWcIdTlrvzN5BvP7L
         iL8PZsKB+rZE8pfZ1R4c7RGDzMkBNEapRDzukus943tlCBOU2kKQVxrLi+Mld0J0WrDE
         HQCTOjHWw2TQBNyXpS+NOorxLSJsUdPJrjbFcdiv0ye+dK/XxEDEvlIr9OERYu582h3S
         GocA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718731472; x=1719336272;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UWc5R2fCgPmQ5dTsZo1oVFpgeegHmUpDv90F0Wr70Ck=;
        b=VIdzBc099/4sAw7//PjD/kUwZzcBl7722tEpZNG4y3KkrDWuM3jIGQ+NXLDOpdMA/j
         KxKhNrm1BPpOKoGEYZdAAV7UFJwhLg64Qaxc4zcgnM9zGYzkdaN4oBoiNHcZok9FJGTb
         eiy1g5eo/ddN3hCDZlCPJ660JUXQCA9qSen74ZVzDaquWvglQAK1XHMUF2dQ3gYteCtc
         B5selvAlIdsl8kCXWIBkyNoO+NcqN+CzRZZwdhU9P9ZPp/J4tQAvBwJx7ZxhANa/a1Xi
         qjZ3RN1pjoq7Gzjk6/j1+nDeZlGfsGu/AH1KD/7yKZVQBO+TKB8MXc0lrOwYFRCDF0WK
         tDsw==
X-Forwarded-Encrypted: i=1; AJvYcCVv9zMH+amRa+ODF1Gfoi9xiOKbXRcGidYg2juF5QD45REFTR8NbyXK1t0pVywslYGXYGpHfinqEp4UFtUte7BheVrKftua9MINqg==
X-Gm-Message-State: AOJu0YyFMcKD3tBiZ9o21yWB3dj9oH9Ht1CfEl8Ij3fPvBrQkyMvDBTO
	CeNfD1kfqrPXRxj40hCRVFY/yqV5Xr1bG1y8UmGV8K5qZgeG1Obrbwut4QHEi3M=
X-Google-Smtp-Source: AGHT+IEWzwDTU5fwaxyyYzF7wNA1htX/B1S82IuB1yuDZxJnrnpE6wymMddDXW6j0o+2+wU0E3upeA==
X-Received: by 2002:a2e:7c0d:0:b0:2eb:fa26:8ca2 with SMTP id 38308e7fff4ca-2ec3ce9ae80mr3786401fa.4.1718731470752;
        Tue, 18 Jun 2024 10:24:30 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec0aa84665sm16512281fa.17.2024.06.18.10.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 10:24:30 -0700 (PDT)
Date: Tue, 18 Jun 2024 20:24:28 +0300
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
Subject: Re: [PATCH 3/4] drm: bridge: simple-bridge: use only devm* in probe
Message-ID: <cmi4lqopew6afptocuoif6h6up3xcigpxjbbd57soul37ujw7b@z2bcfiw7lfdi>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <20240617-tdp158-v1-3-df98ef7dec6d@freebox.fr>
 <deirqqoap7ta3iwmmvg6uxzalfe22yirjp6et2a74ffh5ybi64@vekr6l7sl22c>
 <82c982ad-20ae-4f36-8797-440828317d32@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82c982ad-20ae-4f36-8797-440828317d32@freebox.fr>

On Tue, Jun 18, 2024 at 01:37:15PM GMT, Marc Gonzalez wrote:
> On 18/06/2024 00:28, Dmitry Baryshkov wrote:
> 
> > On Mon, Jun 17, 2024 at 06:03:01PM GMT, Marc Gonzalez wrote:
> >
> >> Once probe uses only devm functions, remove() becomes unnecessary.
> > 
> > Breves vibrantesque sententiae
> > 
> > With the hope of getting an expanded commit message:
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> I'm not quite sure what else to say.
> 
> Using only devm* functions in probe, the remove() callback is
> no longer needed, since devm unwind will free all resources.
> 
> Is that better?

Yes. Or something like:

The only call in remove() is drm_bridge_remove(). Use devm_bridge_add(),
removing the need to call drm_bridge_remove() manually and drop the
driver's remove callback completely.

> 
> NB: this patch is not *required* but I thought "might as well
> change it while I'm in the code".
> 
> Regards
> 

-- 
With best wishes
Dmitry

