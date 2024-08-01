Return-Path: <devicetree+bounces-90216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8D3944672
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 10:22:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FD121C2397E
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 08:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38DF316EB71;
	Thu,  1 Aug 2024 08:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XA65OCxs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6746013D891
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 08:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722500532; cv=none; b=FHH2sv1EA5YT6W7mqvbhA0TKDkP6H8lJFaHB8SgBwj6+F3mQovapyk2SabyHCdKCvlAsfaW9/BbOJKYo/Qctb7orZn06gPPyC+ZFC1YXdGtHXjp119x93dKfgHg2kINjYbUsxsaDSufIO/B1aZcwDc5NqYnvzWoCH5yEAq6GcGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722500532; c=relaxed/simple;
	bh=Lj5WaqXJuWUxej3bN+cB67l8CzP+0YvJ2jfDGim+ar0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LmTblBsha3ljR5bPsGZ0oVzPev1kyjc8Q5TSup02QgjKqqCn9ZpSNU9712VlWqCKEmDhvX0ue0RuQhMmTex+y1oShBNuk3sHAAnXeXf0lKXPryzgh61OEXuKAUrgS0i4LDjZ1t2iVr4BhoBTIQUlIqOcmnKjWa5sOmlI9vj7Fa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XA65OCxs; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52f00ad303aso10383720e87.2
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 01:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722500529; x=1723105329; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ic688ABnHK9dnIqd8IRXkp3C2Ibaz6wM4ecnZGzWKWI=;
        b=XA65OCxsKBlVjS52ANbGqerhwYVlUllmwx9W3GU1fQXccT9UJO2NwUTiNDXgN3Aahk
         2u3b0rwDkD9jrU8uHH+xwbC2VXHecrE3JSZ/HdF3Q6BhVFT5IuZMT0409F1Nggb0EoEH
         WXRfQBXwnDgHhjYkmPFXTbFsptCFkRfdWwEqN2yHq+kw1auol2vjxw/6+NYmRnMb4mY2
         JNv/MXDFy80IwI03t9Kxksiroufn6iJ8/B1p1H2KM1xegzugV/zBOCxJHvuZnJl0tRYC
         3CUv1qF0x3p7fGA/D7WJkN9YInCHTJ7BB3a977N6IEx0E4AJQ3DWjKg8yezqHvb1FLZq
         X7uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722500529; x=1723105329;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ic688ABnHK9dnIqd8IRXkp3C2Ibaz6wM4ecnZGzWKWI=;
        b=kKGOlMWxzcBGKEQ7yQGlF2/k/Iu4wliGFhCWr3KRHu01H0XmaydeF03Sw0N3M2J1Or
         iVkThCro494jnryDV49PEgM/cwGR4QtpOwDZsgwDohHS9D6/25mss9PJX6TTuaFXUQRe
         ZVOAieRa7cfS484m0AvSVz8oUIEXsCovbF8JlqbHqtn9BP16CUiMEiADsUF/FDRBt/6j
         IUr2ei47vQ5OnsTzswkn+Ejw5169JfYZGKAZH04qOofF+XIHTse1SRPiZW3ybGbBXnLi
         QzjIlCmOqFhce2K72LHrtsQ8IzRxBHWPshdUl4FtYTStIVBhaRQDAxjY+9LOsD7qm97D
         Y/7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWBndFKI0mL6Dkrw1Uq0hUm64rzVivBTIzJWCyecLNvQt9wt4eag0IKaRazw99vWY0RaYqCxEZHJ6CwZ7a+WeRqrz64U/RNluapog==
X-Gm-Message-State: AOJu0YxrTrkaYfNNIekBN928cWGwvmaW6bUNWaxwRbsWY751Jt1T2lUm
	8r4hlEgWt2FIdelumi9y4tAOGdMgcHU2G5euMvtfx6MoaVPWAzAGdccDE84SjGM=
X-Google-Smtp-Source: AGHT+IEU2gTkSFpjUy+X02aBFyJl+k2zkHtPytqIxDlmqXYA2ry04XeQb52Cb9OMoFr+jb7GRVU9rg==
X-Received: by 2002:ac2:554d:0:b0:52e:7ef1:7c6e with SMTP id 2adb3069b0e04-530b61f7cc3mr844180e87.51.1722500528283;
        Thu, 01 Aug 2024 01:22:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c08ec2sm2528097e87.127.2024.08.01.01.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 01:22:07 -0700 (PDT)
Date: Thu, 1 Aug 2024 11:22:06 +0300
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
Subject: Re: [PATCH v3 4/8] ASoC: msm8916-wcd-analog: add pm8953 codec
Message-ID: <yhkpd35ovohca4gsd5hqxdxskoepwtkxdbdtkwafxnercxploh@4sffdl6mh3kj>
References: <20240731-msm8953-msm8976-asoc-v3-0-163f23c3a28d@gmail.com>
 <20240731-msm8953-msm8976-asoc-v3-4-163f23c3a28d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731-msm8953-msm8976-asoc-v3-4-163f23c3a28d@gmail.com>

On Wed, Jul 31, 2024 at 05:25:28PM GMT, Adam Skladowski wrote:
> From: Vladimir Lypak <vladimir.lypak@gmail.com>
> 
> Add regs overrides for PM8953 codec.
> 
> Signed-off-by: Vladimir Lypak <vladimir.lypak@gmail.com>
> [Adam: rename codec]
> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> ---
>  sound/soc/codecs/msm8916-wcd-analog.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

