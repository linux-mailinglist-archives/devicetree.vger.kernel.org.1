Return-Path: <devicetree+bounces-99500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CFD96A02B
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 16:17:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 233631C23198
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 14:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F282F4F602;
	Tue,  3 Sep 2024 14:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XGh2fyLA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394694174C
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 14:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725373047; cv=none; b=dbg7lu4CFTBU6tECqGaryCIYXZ6l0AXplor4KTDPYzAyfo0K6FSypOrDzU1lRGhDrLrpEGKrY9mU2eq1znXVEbN3lgaoR1ylK8hp+z/2hxq92uTqwDd/CbT6drZzfcI3IKvHwyfnNsoA4ntzGrPr8fZ5GXleXUdY1xDdNkEdtLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725373047; c=relaxed/simple;
	bh=QGwbocsaUX9Zwuye6fDVnGBnNgnWJfNw0DyH3uhk3Pc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=plJrcrlho5faPybGD5Pv8ZFDeQhx80Rj8jvBaGKcUzCLbxLMpjNWkxlncBqtnKUzHpsbvmLnD2TxrGegp1OhYEr843oBIvtA/TguvHQHR7K6E9n+plsxdkc/hBsuCZQ+BEwanWwbGjflZkD3m+MADI4XKje5nCy+GMXVArIxFio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XGh2fyLA; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2f401b2347dso47399901fa.1
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 07:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725373044; x=1725977844; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=29/vJN9/PhzuwEwTm1IN3xjKnnksoArid/lUnBIHEjU=;
        b=XGh2fyLADGMrnyDIcKpqj/heAYY/4V1pB27UYkBlPv8LnfRlda6N2VvDeHU/S1ssCI
         whExCs+gRMw2SoOs81b9mUzEHRP0DOnbW0VrZShfltxoeHC+U+BKqBc4eD8r9h87qw9K
         oQoOuWYyxbT08vE0qeUsf25NdjY6dcBWNQNYWKQJHV6N6GV8QlfGXjH2+YK9yoB8EY3f
         0Fhcf+nlfHm44bNLu5ATOEgKqw142OXTVQm+9dobEQaugTAG3Xv2uho4Phm4enpcD5zq
         UvMSAZwWQZS0JN2gZb9INsG73fG6dxsO1Jlz0nuBuT3wiZMULItFp0893VJQKiQB0gfk
         yaFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725373044; x=1725977844;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=29/vJN9/PhzuwEwTm1IN3xjKnnksoArid/lUnBIHEjU=;
        b=Q85naPmeUoIQhhyStXZ7HVh9vEfIrpVzgUKEjSuiVU88ehEv9Zevuk6QkJo4yy1/2G
         xgCkcWdX+ZSKFADI0ShdjGPUbwpLlZuiphBlsAbebbUsQDKuVpjKtLBEa+dWGA3iIG8j
         LPQ8QQMpR6UqqrNpozxdvHzk1esqZ76Y2a9EUFjbHB1eF2vieVyFGQ/tpGmZ4mLYWEqX
         PzZJOGE0rY5BZpeUwlBsF4Qgt3yno/4ZYKFas3jeRrPJNQyv6d65WcEHy/qARJPKywRN
         b/W7tdeLDxg293wEvtfq1gaKpplfkx2GZiuykQ3iDCgT5oW86pI6Wa01cYfzyWZtmS+q
         YOFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqiTLz/I24fgFonLuE0uYsEmkLhvp3DU2y9I2iaIXX8WMRiBh7zfRdtqYCQtaGD2lkrdr2zoY8AKbD@vger.kernel.org
X-Gm-Message-State: AOJu0YyRgGMrsOhfZS4EMDRYQKc+giNSJb0qOuNzu3HoBYtJgZuk97Ru
	iXKrkdT2+HlfZtPxM6ZtzzJuj3qIaRwJgWAp63vcU82tWqjj1UXiPRTcl+Xf764=
X-Google-Smtp-Source: AGHT+IEMaWG+z8DJ/FbLPWeKNYVey4ILKWybL2ukHauJXHXu+0taHRiCtB3Mgphi+C0pH31oLLb4lg==
X-Received: by 2002:a05:651c:542:b0:2f5:dac:b9b7 with SMTP id 38308e7fff4ca-2f61e06f23fmr50920941fa.12.1725373043745;
        Tue, 03 Sep 2024 07:17:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614f3393csm22479411fa.53.2024.09.03.07.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 07:17:23 -0700 (PDT)
Date: Tue, 3 Sep 2024 17:17:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sc8280xp-crd: enable bluetooth
Message-ID: <vx7n2pd52rpcpafv7dedrjcsxkeenj4uscgm7z654sxrbom4r2@mkmp3ssrhen6>
References: <20240903093629.16242-1-brgl@bgdev.pl>
 <20240903093629.16242-3-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240903093629.16242-3-brgl@bgdev.pl>

On Tue, Sep 03, 2024 at 11:36:27AM GMT, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Add the bluetooth node for sc8280xp-crd and make it consume the outputs
> from the PMU as per the new DT bindings contract.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 59 ++++++++++++++++++++++-
>  1 file changed, 58 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

