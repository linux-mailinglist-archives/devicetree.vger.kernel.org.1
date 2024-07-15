Return-Path: <devicetree+bounces-85797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE5C9316E4
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 16:35:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D18322823A5
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:35:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85AC418EA85;
	Mon, 15 Jul 2024 14:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lXCp/OKe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C261013D531
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 14:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721054143; cv=none; b=MOYLZnNf55HPPdxdrY2LFQlZMy4lN65K3LwvdLMh9g68DR9WPsvM6ftqtLzpChjC0jMhDXwwUrZXGDCkM/WnoTxQqpIOdXl8pyZBb1ePggpUx5YGgeilEU/mYDXlh7gQerTieRxCkP+xBCMKzWvgRVjOjDHhONgM1m/yoEW5JvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721054143; c=relaxed/simple;
	bh=kUXCHe8UzbzfYC3kpoB30f1Ed3HEH0kW0pn01sYLrhc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bZSqNQT03IOGaUiSvVyYWQk+Fw7a83Enh0eyvr5nv3DnmPglffCIuKK7SVWOTYoyBlKylEdwMYItRlQWbexjZSNtRI61HWGFaFMbCY/EFOdVbcHjj/l385IGNjY3ublMnkhbdJc5wvaYEHh7hbsu+rtZyJCE2GthzT56Le3wKiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lXCp/OKe; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52ea33671ffso4437292e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 07:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721054140; x=1721658940; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4CA0j0qYgma9RsWWWam732StHneIHgNV9F5zSymaHAA=;
        b=lXCp/OKe0nKc38w1qztoDcEMXSjv+wvABK9s//72pw3EoeldMBlVtJj+Mn98Zon8tQ
         J+MAWtwhytfv3q3hzmzfQuwiyIXy+O5BGmVv4SMsxvVn+9NEIXFkDXVTnwr+7dLHOgaw
         Pw1g2GWEa4XtHfHnaihNCAqXWesrzwS5qBkl3f3Ab37WMrxQuF/87TpU2kzaMkkNbDLT
         WMLHtkVs+zSViFGMkSqQIjGZkZn2BXSCHVqcLexNRVXeeXmKdFrPxjbMJJWECLzVI6G/
         TKeoKZ4+SKFIvpNRaeGPfs9QJLLnuSgPARd/uMHvbDhvu+ZuUx+PeU1heCSvM0YsaBPL
         K2Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721054140; x=1721658940;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4CA0j0qYgma9RsWWWam732StHneIHgNV9F5zSymaHAA=;
        b=uQUK9k3iL2gqb8xQhtDAyV4TlAGB9gBTK6s2BqAaD8GjdETvdsljtB4+COzGo2LI9H
         7sZYN2JLS8kK7mt8O/M1+NJX2xZSuSYO20NyrATBB+MlSG4qC8BU0jOjflJZUshHwM2g
         KPQBkqz/2JNgbe/XlAxXdXcd5VIVva91JAE1BPHUu11eTRfRZsvipNqf5+c7wJIh/4SG
         6zM3QhixTfj6mOV7sYp173typ5a8KLXawM9nCehQQ0D0xXG3sZ26DwDOyuAiTDVIlLYZ
         ApICr0uudmFGoxQ7LlWQfUJPlAXgfzNmXhPVkv6FKaYjFnZ7fvRCXi2GzrkgLs/vJArP
         69NA==
X-Forwarded-Encrypted: i=1; AJvYcCX4lGcgyL1OwqaGqCe6WTMKiGhFyaxkr5V5ICV0YH/YnVXtvlsCj3+UtH9u0JBQveJTnNJj445N/VWAQPG/uH9wFIOcDlmibtOIfA==
X-Gm-Message-State: AOJu0YwnUtswxtw0P7FaDHxfT03GrO12E8qftQTTmkDUR+BF7wvarIiE
	YklULDRIFtD9jrdSSNPijrxv60qFHju1Nx1nstR/kv/8lrDqHdynJjDzrSCUvi0=
X-Google-Smtp-Source: AGHT+IEBt3FSZn+bEEmg7cFHAOhGiDVl/Yrs6OE8f3qL4sJht2Gmf/gnilyQCrhbXPJA9//YuXWhDw==
X-Received: by 2002:a05:6512:e92:b0:52c:dfa0:dca0 with SMTP id 2adb3069b0e04-52eb99d323bmr15414936e87.43.1721054139884;
        Mon, 15 Jul 2024 07:35:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed2539b80sm863331e87.299.2024.07.15.07.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 07:35:39 -0700 (PDT)
Date: Mon, 15 Jul 2024 17:35:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Arnaud Vrac <avrac@freebox.fr>, Pierre-Hugues Husson <phhusson@freebox.fr>, 
	Jeffrey Hugo <quic_jhugo@quicinc.com>
Subject: Re: [PATCH v6 3/6] drm/msm/hdmi: add "qcom,hdmi-tx-8998" compatible
Message-ID: <ai4d3hmxomr4kavhbqgpi5olsq4r6r5abttjkvhn77lrepfbmj@qq7ytgkswe2i>
References: <20240715-hdmi-tx-v6-0-d27f029627ad@freebox.fr>
 <20240715-hdmi-tx-v6-3-d27f029627ad@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240715-hdmi-tx-v6-3-d27f029627ad@freebox.fr>

On Mon, Jul 15, 2024 at 02:21:16PM GMT, Marc Gonzalez wrote:
> Current driver already supports the msm8998 HDMI TX.
> We just need to add the compatible string.
> 
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  drivers/gpu/drm/msm/hdmi/hdmi.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

