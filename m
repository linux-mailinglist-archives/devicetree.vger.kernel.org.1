Return-Path: <devicetree+bounces-90217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFB9944675
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 10:23:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2409CB22354
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 08:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D945716C856;
	Thu,  1 Aug 2024 08:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gS2UdRq+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B74616DC20
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 08:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722500577; cv=none; b=FtrFEWGPqQ4JLlOKSq/nOBeylZiSCuTqNppzUKVyZi5b/UWQmtMow4EGhy6fbSu7SdsB8nQ2iTMfkjiGPVYN4HQXBbpdttQVv9G89Om3hMNAuEs+F5+sWPexpAs5VE/E3C4pTmTv4COZxn8hxZvZnqtXATmJjmZ3jc+Y+oT2ATs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722500577; c=relaxed/simple;
	bh=DT7Z/Dr7EC6wH3bHClnXwVde/S0OfRJ0y8xo3AP575Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ho9a754bDMfWMVCg+Hdu38SxO+BX0KvS34fibIyHRQmRMemKFnji+lxmpODi1EnQddB0kHEl5W3UODFCejW3Iu0PtYVsZ97sAljTH5+AcAcwX0M3KTvhC+cZR07s4K9ZvSK6W3fc1Y6t6Ov8MQ50RGCuAzoU6PKbBNMzvT+srLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gS2UdRq+; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52efba36802so11062181e87.2
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 01:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722500574; x=1723105374; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LSGnD2DWNUSNtIkP15Czx/EJx9+uS/yBEuP8HGdsMsE=;
        b=gS2UdRq+FH1IQ88u23BgjIvht3gryVEtpZjwXs7g8GtL3NuMCv/sXALqECsDO+8zDd
         mxgbduJBk69WMlgs5GWXVJzHnZ2k04hqt0aB7/T2Cdzxx25Qz4LWjavkuWALWUoq38bx
         0juzW3OQu5w4q0+qxsyCS5QVvj27L9zEHnnL+mu8O992iN0rJc36OSe7YVvlkMv3flBw
         6ZJLYQ0GaM8UZlCTtNcdSB/qfAy/UISeRLxhNz3qayVYiydZXWfItnrmqlD9OlaJqtrc
         ntjaIXXvyU5MFLd6LW23QdkGY5kuVRy44xltPLd19Yr2w7GmOS6sBhuVhGNIZT/5PKY2
         4zlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722500574; x=1723105374;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LSGnD2DWNUSNtIkP15Czx/EJx9+uS/yBEuP8HGdsMsE=;
        b=cK81ek2ZC8kA7FaGdbCsE7xSAphArJ/tdpG6+tBx55ZLJ29nh84vXI8vP+vEIKtihB
         vbl+cn7V09Qb7ODY6wTUa2MSCk/KGrgd1liL3YnaYZfG1WAEJjCLsUR3E+TWnJMQfTq+
         s2B9NKWsXxftcb507BESgIi2xXHWGQFzCdqT8xlQdZElucOOnUD43H3Qt23xZvwQQbVH
         eL7OMJHP8PvxiyzaKvRALordHPzveK5ftzq0hYwECPgJpEYYmliGtRJ82M1RG8RNsEu+
         49qD4Mw0pjTrq3PC8/7pTfGCP9VvS7vxS7tMyN25rk0W+v7UV8P9CbVC6/n8jfzRFJqG
         JFQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUbX00h57k2hzZ9ZK84yW/8prBHEmGpHoliFBeL0e8zeCfUuE+EOWPOJHnF4nt+eR5fUotsjhfJCJocURHcKt+XchGPuCOC8jLrzg==
X-Gm-Message-State: AOJu0Yznn3KOjlm6qpNMaIa0CLVrFmAwFtClU5Un5o2lknr6YOtXwZGr
	0VV4t9hU/negS4UYsY5z4T9Fu03e0HELqUnIRQkG4n8K619T0lhYB1EWMAD0H3c=
X-Google-Smtp-Source: AGHT+IEWp6JLVNetkx76xZrMoBBE0Pp+5XNDbasSkEXbs7i9l6MQsrr7uyA9rchqJH6Db172CYonUQ==
X-Received: by 2002:ac2:41ca:0:b0:52c:d76f:7f61 with SMTP id 2adb3069b0e04-530b61f3485mr858416e87.56.1722500574277;
        Thu, 01 Aug 2024 01:22:54 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530abeefd1bsm802326e87.179.2024.08.01.01.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 01:22:53 -0700 (PDT)
Date: Thu, 1 Aug 2024 11:22:52 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Adam Skladowski <a39.skl@gmail.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Stephan Gerhold <stephan@gerhold.net>, alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Vladimir Lypak <vladimir.lypak@gmail.com>
Subject: Re: [PATCH v3 6/8] ASoC: qcom: apq8016_sbc: Add support for msm8953
 SoC
Message-ID: <hhz6m6mzvwh7q5hxbiitbwiicgi5gjv4mx7wnq4m7ihthw3qab@3dy7xddqfczh>
References: <20240731-msm8953-msm8976-asoc-v3-0-163f23c3a28d@gmail.com>
 <20240731-msm8953-msm8976-asoc-v3-6-163f23c3a28d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731-msm8953-msm8976-asoc-v3-6-163f23c3a28d@gmail.com>

On Wed, Jul 31, 2024 at 05:25:30PM GMT, Adam Skladowski wrote:
> From: Vladimir Lypak <vladimir.lypak@gmail.com>
> 
> Introduce support for audio card on MSM8953 platform.
> Main difference between MSM8953 and MSM8916 is Q6AFE CLK API
> supported by firmware which influence way we set codec clocks.
> SoCs shipping on at least msm-3.18 should use v2 clocks.
> 
> Signed-off-by: Vladimir Lypak <vladimir.lypak@gmail.com>
> [Adam: rename functions, add msg]
> Co-developed-by: Adam Skladowski <a39.skl@gmail.com>
> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> ---
>  sound/soc/qcom/apq8016_sbc.c | 43 +++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 41 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

