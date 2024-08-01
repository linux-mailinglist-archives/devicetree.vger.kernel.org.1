Return-Path: <devicetree+bounces-90218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD46944679
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 10:23:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 70D721C21BF0
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 08:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC74916D332;
	Thu,  1 Aug 2024 08:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZwxMvm7y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6B816C85D
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 08:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722500601; cv=none; b=D+FXCkOh3M4dFSYlX8B7sSzi6FawM1v1Z07Vth3+tCOVx5/aU3AxPvRRW9nSrOPq7G/gztHJHA/7NtbCLEyEx4PPmbGniyciVQOfcGweDQAGo6W6OqmVH+Vwc9dzZ/3MY4fPi8IwmSiZBUaNkjZATzPX0B6PwHjj1L9RZqUDMWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722500601; c=relaxed/simple;
	bh=rK9+4xszQg7uMRd6Ykpz7uwRVsL3C1LMnad37+zazpc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YesLu2doxSh1ssAEAtg6A7zJomahPtU40ElOuQR9lNAm0+pH+faMxSesUeXCee8/CNSMWBHUaWaJQlLIpwZ4bCfogXN1InTX/CrirglSylu9wF7EJkTDZbVA3nfQEDLkSrHCjUC52liSToMzSGwQPirAny0kX7kYKhuEt8jcMbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZwxMvm7y; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2f149845d81so30858191fa.0
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 01:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722500598; x=1723105398; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=50e7wz/bvIR8jdrexV5sLmzxSxGtSe1Rc+ihQs4UK3I=;
        b=ZwxMvm7y4Fxk28D7wRXpo3xNf+UQmo20Re9/8It5U5r+J2zjJpOLsy6n9x+ChaqjfA
         wAIRIQk9FoBrDnDZ8Uz3hSE+cyFkQK+oQ3MNed//d9+WodYxhtY/WU12qk4awn3rwcXu
         4RBMdZ8dhoUPjsWkgnQHFmI+DSDHei23GHga4OB7cKcPBdXUHunqH2xBVC8lG9rZsHMx
         NrkLXtah52z2qb/SogECqDr3TulVW48ZxrRiP59p+1wMDGwCl0bnV5ThEMf7nmd5YErK
         guZ0haQbWTYFGk39LeLfM6aaycjF5nsL1hovts9PY/Sec8xUeW++DLL4azfolm0XZ+oY
         qKEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722500598; x=1723105398;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=50e7wz/bvIR8jdrexV5sLmzxSxGtSe1Rc+ihQs4UK3I=;
        b=kPGMn9xMkUI0V+L4rEVkqMDRX7MTep4nZzTTqWtKeFn00XcW+G0JzPw7DTNOr7aMNb
         qCppSfs/uQPaYLiAbk+rpjnXHH/gxO5OdTftOv5sAxxWFHRAIzULKj39gg/lIil+hOxL
         QorvN1KFHKj9Ioa1PokM/W+zQjub7K4foEqEhFqyrrnZcwzqUeAXXxGh7xLHwvYUaR12
         WieD67w6Im2BH9S4+zlmMCNaSV0vxvJZlZ9l2avV/ooZxgj6EAZifUuud/9pbtaQc9Ao
         95DIygCWs0JvKpnMWWo1dgIypZ5qC/XnbXHzKlydL253WgboMIApSVOESMYNC4bYL6PX
         jWCw==
X-Forwarded-Encrypted: i=1; AJvYcCV4zFow4RHpbG0Kn9pNL8vP39d+SiMuWm4JMrnh7G4t9QlgYqroVVYgP+eykY9vjG+rrugFWVztvgYrD8f0RPNBz26ryT0MvBnqVA==
X-Gm-Message-State: AOJu0YyWSwiITuhDLjZGy3ksBJrDmhgS/pCIi5UBwX8Mz8uXiVVapVVv
	4N8lMyOHbAA3Ar6tE3lXQyC7fD7Ke3uShxDyyyPUzz3tiVoxfD1BrmIEYdNeLYw=
X-Google-Smtp-Source: AGHT+IG1pMfm6YPrJpMIq1jkLKGGURJ71PgP2FoNYW5t3JnWPlJG7+H3KkAZHgFPOV8oJmjfUNP5lA==
X-Received: by 2002:a05:6512:304f:b0:52c:e047:5c38 with SMTP id 2adb3069b0e04-530b61afebbmr1125327e87.15.1722500598275;
        Thu, 01 Aug 2024 01:23:18 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c19a40sm2498745e87.199.2024.08.01.01.23.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 01:23:17 -0700 (PDT)
Date: Thu, 1 Aug 2024 11:23:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Adam Skladowski <a39.skl@gmail.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Stephan Gerhold <stephan@gerhold.net>, alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 7/8] ASoC: qcom: apq8016_sbc: Add support for msm8976
 SoC
Message-ID: <o5k2oxabdewh6faf5xkmboyc34pqqieytbvoyngkowngkaonkz@ctqv6izs247z>
References: <20240731-msm8953-msm8976-asoc-v3-0-163f23c3a28d@gmail.com>
 <20240731-msm8953-msm8976-asoc-v3-7-163f23c3a28d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731-msm8953-msm8976-asoc-v3-7-163f23c3a28d@gmail.com>

On Wed, Jul 31, 2024 at 05:25:31PM GMT, Adam Skladowski wrote:
> Introduce support for audio card on MSM8976 platform.
> While MSM8976 falls into v1 category with MSM8916, digitial codec clock
> is not available in GCC so we have to set it in machine driver.
> For that reason for V1 clocks new boolean is added to check
> if we need to enable codec clock.
> 
> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> ---
>  sound/soc/qcom/apq8016_sbc.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

