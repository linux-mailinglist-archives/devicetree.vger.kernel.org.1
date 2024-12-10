Return-Path: <devicetree+bounces-129207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C63509EAEE1
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 11:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D941328E0C9
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 10:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7328D2153DE;
	Tue, 10 Dec 2024 10:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RlSpZiIm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC552153D5
	for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 10:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733828291; cv=none; b=iaO8SZ9AwquvaKTmM5B86NLoy762gIOvpdLG7F+GXT0SR+NyK/6Scndvf1mOBblrbqwdXNtqh1SMYzcOXUaE+n6+AElfaHxqMXBZ2+NhyzhTzMuRtgmSkLMGiE5JvPSvUcgS80Trrn8nl+NLalpXqHHr3xfwhtmDKhcsXUWsV/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733828291; c=relaxed/simple;
	bh=fIg3YEalL2M2g2gfhkuZNb95cmhl/Se4u4uhkVU9dPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KsG40dFKpwf5tJ2IIUS/EUKIQhoxOYMDoznyVulx0LsY775PDG1TMj0OE1We00blgW+G4OomzcKpnjYrsyuHbOleRqMaMTJg3O60Z8iisgus+dEm2/U5VZHxMikOs9uzgT8i4cIVTApT4RSgMTyW/7eGd9vsJYGV6VuwPSpsuWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RlSpZiIm; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-3022598e213so17212211fa.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 02:58:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733828288; x=1734433088; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r5ZSfy2xDxDQ8s69afPzdWrhJXHaV4xhzcq4XiywxXg=;
        b=RlSpZiImkI7a1VsougUJ3dWooDzkka8kwhEl6RylBw0/GNV5hug03My0P0m1zRPIig
         KDeOExvNa5nwu09WW+SUqzxkDKD1a0qOnFamr5eKmYir5nHaYHxT/FXMMtX1E1jjzpae
         wb0rRDCg8PaWKvc+uD0MgfIAMR8YZr1VbHBotIr6hUF6+pXSOx51BQPrU8udSMtdY5mi
         iY9WFImtzNKOzhgAP2EzUBBKP9wP1SHn3Iph9674jf25WmqovFBi1qA8+sxIG5OdyZhJ
         vq+Z7UljA4nqUZA7Kseq8pacP+jdyovR2oNJvKd5cQCAgYhp/VZKTl9eWsCdjGukoj6j
         31sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733828288; x=1734433088;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r5ZSfy2xDxDQ8s69afPzdWrhJXHaV4xhzcq4XiywxXg=;
        b=Ay9AFQVlJ88qNKqtHLfTmcT100UW32dCb4KLa27JTKu5GYKyX43/BfBxmleiErICTa
         ihM+nY1oOZ1EIPKID2YiQwxuUIIh5ezdmnyelFvoAOcYlEFtmAgn7u6QkRz3DQeShZiA
         NiwF6KC0njOlkyRZrKMPa0Srm9a2aLZaIXpCgv/aVpFuuAg6to6vp02RFNnyo0MwcJqw
         DFEo4el8xBevwomN5oi49Bw5tFiA7q2iSIfDpDPKz3okECPuIyyPB2A6FMmy5Uj0cklc
         /Lt6NGHI7nq3Db3/Y0K4bt/9/dFQfowS/Rxx5HtbuRWD1pxz29fKQgcRUO4Q7hvM3etA
         aSSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTUe03NwynMxioKTWYG5eI8hvr+AandAasF9aGWV8sgTP9WqdjYoyq9gFWap1UynDfFD9kXbAjAnx4@vger.kernel.org
X-Gm-Message-State: AOJu0YzdILIri7Zwtavmb5BebaBWAX6fm35gRTaHA/tr/08lrcmhMSDL
	lHFJ4LifOkXt2dGCwKgApAfZILEDU7LgfnKV4Hj3lLrtBVA+qC/DSOKQXjKAbek=
X-Gm-Gg: ASbGncs65yNNYLV9tU7gVbpSb0N78GZK03KMnSND6kclxrJVek7dYXw71Cys10TIMaV
	V0AO1qawesFTInrCjjAUIss3s0DZl2IvrJzuKiMEWFQzvPF2+oy0In4RaNExDKnk5vVS3fOCCt4
	bvpqXaXs0zq5QzVG8yyFHSydnkOrhsNMNV5iP5cA7MaNEBMxsKdtBRzCGvtZiZ45Oy+2Ydw474O
	+TVArO6FQ03UuVq6B0C3dFOr5bm4Oy7ERpg2cMc58WLeEs0S7HZ5SbH72u6hORJP5LvhsrkL/nG
	mi3pnzmP4QbE+lw8zodVjLFB5B+ubl0OhA==
X-Google-Smtp-Source: AGHT+IE7+ryAMqJtCxAuJvc/qOGq5Ck0ZMSjTv00rqBtwofn1LyRnlQNhWyrc/EQiBZpPjSjCdJE+Q==
X-Received: by 2002:a05:6512:238f:b0:540:21d6:d681 with SMTP id 2adb3069b0e04-540240c0f47mr1559055e87.19.1733828287631;
        Tue, 10 Dec 2024 02:58:07 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e3855a6b8sm1232351e87.69.2024.12.10.02.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 02:58:06 -0800 (PST)
Date: Tue, 10 Dec 2024 12:58:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Fange Zhang <quic_fangez@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Liu Li <quic_lliu6@quicinc.com>, 
	Xiangxu Yin <quic_xiangxuy@quicinc.com>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 7/9] drm/msm/dsi: Add support for SM6150
Message-ID: <3cr32yulhhnruhi5cf4agxxottt4ofnwbnwjqv6ib36ebipswd@qhbuhoejhjld>
References: <20241210-add-display-support-for-qcs615-platform-v4-0-2d875a67602d@quicinc.com>
 <20241210-add-display-support-for-qcs615-platform-v4-7-2d875a67602d@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241210-add-display-support-for-qcs615-platform-v4-7-2d875a67602d@quicinc.com>

On Tue, Dec 10, 2024 at 02:53:58PM +0800, Fange Zhang wrote:
> From: Li Liu <quic_lliu6@quicinc.com>
> 
> Add support for DSI 2.3.1 (block used on SM6150).
> 
> Signed-off-by: Li Liu <quic_lliu6@quicinc.com>
> Signed-off-by: Fange Zhang <quic_fangez@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dsi/dsi_cfg.c | 2 ++
>  drivers/gpu/drm/msm/dsi/dsi_cfg.h | 1 +
>  2 files changed, 3 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

