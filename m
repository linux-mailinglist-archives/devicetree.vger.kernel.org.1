Return-Path: <devicetree+bounces-108656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1EC9934F3
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 19:26:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91D49283286
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 17:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F03A1DD87E;
	Mon,  7 Oct 2024 17:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aq8V/GRl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D73D1DD55F
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 17:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728321984; cv=none; b=c81jbqqAJJhreyPXI6ppcD0WLdvPB4DcT3oa6ORupRwFRKXnyb3geLELjY0q4iXvVAsy+gye2ZeiSX9jFC5CQfyRYaGpZRzWktOKSHms2OskwP7dX7WjQMrqMBzrEi3CBwa9RWC9zPvViKIIHnoGmGP6Ewir7Fk9fREW0k0+o8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728321984; c=relaxed/simple;
	bh=pCCoHi+FSmdP+JsIamKw/AdhMR0e1YaCdPeHGA3r6A8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mu7iqzanU0KrMFECpOrb79GI9VaDquM4GkhK8as7tw49WprfueZa0859n3fVcx+ACb1iH1vh4oGQHgCcf2JLsQ4V3FJ7cwAiTx40h6yeviw6K0YznwFWNz8bltsx8F+bLrc2g2TQachuCZ0Ht265sz6iJOD2SDg2PkfyLZdfIlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aq8V/GRl; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fac6b3c220so60352571fa.2
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 10:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728321980; x=1728926780; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WlsFqoWgQcVSzxUESq0jNu0AYxuz/E7zW/qrfaTVXzo=;
        b=aq8V/GRlLSworw4+hJ4OWnXQxvjk3cgkyh190qvxNG2p0qHOiIks9T7rzEScVyFfRu
         fmN2n868dtdJQvKChpozv2K0XoojmubId/lZgUF47uFlKcxiBLqvdOYEB9JI/m4ZkmBH
         VmCMjhTE02yLg4IuNY4H7oVe2CLi1qJD/WBOywKV6rqf8iK3ZfrBoCJwrQVPokGJGqLh
         EJPTjSvsu8aZnHoLIuS7RwMRhGLmJCo54hPF/l9fEDOjglv/6jk2LWNelNIyz1FITlPW
         3aaPbnBv0BKrBpHAmWM/YiX34GSev5bOGmFQbGqaucZNBTCUGFhbrNrL0KDb2u5ZMwPb
         52Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728321980; x=1728926780;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WlsFqoWgQcVSzxUESq0jNu0AYxuz/E7zW/qrfaTVXzo=;
        b=U6NvEtWLI1TPysa4tfDDCpmeUof04QBvUF7BhlLsJNZNm2RODVr6T5TGJgaAoGRN1H
         X1Xp7v3KgE587ryJd+Jr0ZZljHWYdO/lpyGGqOn3+rjRHhu3bIJznQ9CeZUVXtH5PNp6
         P94nPXM+rxGIp/BGSr+/HKtfdTMasZm/OxQtr3p3sj9IIljSfXAPAtoobnktjsuN6sKz
         YgXp97/861HzAM3HvGQ2umGKdBRl5G6uljvy3EosmVoWRKeoA50Q3HGhVG28i7dbZ6M4
         lGWdSzUYLD4pzUpgdqBBzfTL+ewSTohaMn9XMdKo92a/MvtKwt+87DbO2o8a67IvKc10
         MpDA==
X-Forwarded-Encrypted: i=1; AJvYcCWnGYPGKRdyCmcAn8qhUhg1+V/mff3yjiF7aoKt0sxv4ZvllsB7it3jcdR26maiFurjIjJcB+ljpqld@vger.kernel.org
X-Gm-Message-State: AOJu0YyXbQXiSDrQZxk250YONzfDOkIC2p4L1wmV6w9uHFk9A8uqS9fZ
	xhw8AI8uQxJqV4dm1gslB238i/bsVqDKyDYgfMSuIQCkcspZ/kUWEGsRJEYZ53k=
X-Google-Smtp-Source: AGHT+IFqkmB5EGBLDvkk9w/73LJ1moyAI2DINnegAoUXrSgjT1r9zBJuBEvu/G0C84vFxPAg3A5H/w==
X-Received: by 2002:a05:6512:159d:b0:530:b773:b4ce with SMTP id 2adb3069b0e04-539ab87ddd9mr7298174e87.33.1728321980533;
        Mon, 07 Oct 2024 10:26:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539afec0f91sm907565e87.36.2024.10.07.10.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 10:26:19 -0700 (PDT)
Date: Mon, 7 Oct 2024 20:26:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Karl Chan <exxxxkc@getgoogleoff.me>
Cc: linux-arm-msm@vger.kernel.org, andersson@kernel.org, 
	konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, linus.walleij@linaro.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH v6 4/5] pinctrl: qcom: ipq5018: allow it to be bulid on
 arm32
Message-ID: <m5tfcqfr35dzeidxqtrxzk454itrlf3dt5u6mezouzievjzlx3@ymkl3qdf72ob>
References: <20241007163414.32458-1-exxxxkc@getgoogleoff.me>
 <20241007163414.32458-5-exxxxkc@getgoogleoff.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241007163414.32458-5-exxxxkc@getgoogleoff.me>

On Tue, Oct 08, 2024 at 12:34:13AM GMT, Karl Chan wrote:
> There are some ipq5018 based device's firmware only can able to boot
> arm32 but the pinctrl driver dont allow it to be compiled on
> arm32.Therefore this patch needed for those devices.

The same comment:


if there is another revision of the series for whatever reason,

s/this patch needed for those devices/allow GCC for IPQ5018 to be
selected when building ARM32 kernel/


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> 
> Signed-off-by: Karl Chan <exxxxkc@getgoogleoff.me>
> ---
>  drivers/pinctrl/qcom/Kconfig.msm | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

-- 
With best wishes
Dmitry

