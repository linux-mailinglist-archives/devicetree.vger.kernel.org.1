Return-Path: <devicetree+bounces-90215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B321994466C
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 10:21:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 705491F23A01
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 08:21:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DEF016D4EF;
	Thu,  1 Aug 2024 08:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OjAQA/3w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E078BE0
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 08:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722500515; cv=none; b=k8rb6QIDVvp9uG12xQPwdlAmd8Q9AlxnzXulI6GHntfKK6yYJcb0tvuVFiUCCLhuO9R0VLRqvtRTudhdaNgkr+CnZnTSEz1zJcmSP2Uid4y4uGw2GqOFVI1hz3LMdo9W0aOxY88MDUfl+vKU8JeXLaxzfZRmmVzzFrXhYLsizcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722500515; c=relaxed/simple;
	bh=UoQSyuIzYrJk4Fh/zjMGo2XwjtgAN5edcsp1gl8VrW8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rPHyeIvDMIeq+rWRRgf3UYAv6CYyC50k0e2KvqRaWFOOET2C9M2N9sPCcJSY8xTIZ5/hEetTsn0j/qQCRYschPTuIvw50ncUQgswLddFmQEcmPFV2GBfubv0wVketr5sKEGmaXI0cN1nR6sZU3mrUHpuw2GK9zsNdoIJIMXscUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OjAQA/3w; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52f025bc147so9361766e87.3
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 01:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722500512; x=1723105312; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tQu81mOBzzOWipOlZKpoZPnN6w6xjj6nnqcvweSDhgA=;
        b=OjAQA/3wLDdWRK77nYoWsOnhvDtYCalWDNPWwmg9HYG0US5JU/cJPaLa94mQ+P3175
         1ta2Btuffkvs4SUOuQYFPJCU5kHwkFAeJ2Xeoz4zzWvsCGMnSPfkx2sd+vK6jYVe3CvZ
         /8Rymur7iOTia/PDRru/blzMt4tmI1t9C2+u/zY0oWhk+N96CbjE/NjEA8TpMaNWREsi
         79IDYCAysEDsfGN2WfIIPI5WwVEYXgXIp00AIxl4Kru0W4JnEGaNpsoAn/0ResxKjgln
         t/e1ez8sXLEstege+U1knxeZeSOO1pWg43zBlwjSMP4rWJGiqBZMHrzDWFtdRfFnFbNb
         PH2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722500512; x=1723105312;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tQu81mOBzzOWipOlZKpoZPnN6w6xjj6nnqcvweSDhgA=;
        b=hsZdHsJYvvOGBhNgYenx7umWpqsUhgKLHXVFGLDApZv2lWzH3ulDEUJESQJl1ijUNj
         wqOq/B3YLbBWtqpTFz9NMkROwf80uwHQCX0oLDpXGfnIv1kfG4OVlCy6OVoQ3gIDRK1R
         ufBQMxlLKFRIiHf54oppmitSfEUkBy9BqZj71OlJdUalugbjUFWWXTVyqn8nEz8NjyHP
         BagGlfg9LTWx5k+Idjf21L1eJXl5w4uRkxJHjPiDvtmjIqeTG2wO1UIGRgj6IF3DvBd/
         2mvG5mTpm5pKVNHP7u1XYJ/mOitIhXqWZcbOc/dDxyswukaSjLMBGrnwIuyp6Z4k0XKE
         UkZA==
X-Forwarded-Encrypted: i=1; AJvYcCVk2b1EqEzsNNGAxxxQ8OiSz+ERnuTeqoJfjAWIhBOqznrzvE0ip+fyAQwYvZd7e0J0dwcDf4v2n96mFAHywsnMX/CVCDLVQg9JKw==
X-Gm-Message-State: AOJu0Yw4Ap5Y+lvhEFmfYsnNBfniaKkOvgw9qnXdCW5r4cgHYez4QGGa
	s2Zzu+SvY6YP6m5rBf0eJlC3gTbmnW379W9uk0GgheFFS2PuwwmkXoCcwRczYUo=
X-Google-Smtp-Source: AGHT+IGCjn18yTuRNfOwsOFNz0Fkpj4M64OUkHF6jkjiHZXaoXhEToRN+DzmYsOikMX79YcrO2lmHw==
X-Received: by 2002:a05:6512:110d:b0:52d:582e:410f with SMTP id 2adb3069b0e04-530b61ed210mr1013825e87.46.1722500512059;
        Thu, 01 Aug 2024 01:21:52 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-530ad7faa08sm649248e87.214.2024.08.01.01.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 01:21:51 -0700 (PDT)
Date: Thu, 1 Aug 2024 11:21:50 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Adam Skladowski <a39.skl@gmail.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Stephan Gerhold <stephan@gerhold.net>, alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 3/8] ASoC: msm8916-wcd-analog: add pm8950 codec
Message-ID: <estrecxmj6im5wk5iy2eahcqf74mw6ydnvbpuselmrvb2paggc@u2dsyrn3wki2>
References: <20240731-msm8953-msm8976-asoc-v3-0-163f23c3a28d@gmail.com>
 <20240731-msm8953-msm8976-asoc-v3-3-163f23c3a28d@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731-msm8953-msm8976-asoc-v3-3-163f23c3a28d@gmail.com>

On Wed, Jul 31, 2024 at 05:25:27PM GMT, Adam Skladowski wrote:
> Add regs overrides for PM8950 codec and implement matching reg overrides
> via compatible.
> 
> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
> ---
>  sound/soc/codecs/msm8916-wcd-analog.c | 52 ++++++++++++++++++++++++++++++++---
>  1 file changed, 48 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

