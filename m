Return-Path: <devicetree+bounces-115265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A379AEAFF
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 17:48:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A47D282BE3
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 15:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C20F81DAC81;
	Thu, 24 Oct 2024 15:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XBOggcZA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 945571C4A1F
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 15:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729784909; cv=none; b=YhrffiaUO3qXN76f/pIpGXw2IcW6RQPNtC0gjTgzviF6fwgWvyvVNCgZm0CWQSpJSx1ZUPJk/gEeBYCQ49DlRALV9GX2a+iF9iyWnkhCTV/HpaePrK7Wd8LkyRA+m4ZR31FS8Orjv9w35wX7eUkXdZbYJ0JH+y4jZngLcj/tW5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729784909; c=relaxed/simple;
	bh=koRsjGvRkJdt5pRFrEkbpFSOhKrK57L1Ce+mec9D7Z4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JX3g/8JTu1zlTcyhYRxcJVoe+Tkk9PUlWQPhvALy4/bmu8z5gKaETqTxT4bCCM7k7ZXPtmml8IHHxfnsHaWrNTikezUA7Md7xMIHj84sgF4jvwGmWbfj79ocP9SxXqmYp9wPdRak+f6IDxLW7SJ7hzk2VtmGIzudbA28S7ivP7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XBOggcZA; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539fbbadf83so1544097e87.0
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 08:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729784906; x=1730389706; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2QYTQ8CP1AMDaXMWSWxiFJrNaiPGvGF4+0DCKgx8chM=;
        b=XBOggcZAGdjCqkWsoRm03y+ShFP4Iet2mV04oWi9Lxb4aL38ONSZMJSEEQ5UDheWS5
         u2OVg4goBVcjbZC2iXeFIhc4HxJm1jQgxbM+MPPPxUzQZMBk6MlLTPuYWTavxPBIVlgR
         qKFYlAA2VrU1cpMlaj8zHIQWht3YQspONnNdhk3uMlE/HNymPz1PFphmCeaMkJPdVVSJ
         Js1wqEM+6RplUtTsxCkGrsQ7I65+i+V2hFPVeJWP+j2cI4QJgzSFunThEsb7yOBb0fZW
         zDOGW78md+FFtSaJHxOtYja+SI/HTw7zZ6/ryKl9UYKjJJn8mLOSJRXJbHINwTf3ZsRI
         F+QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729784906; x=1730389706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2QYTQ8CP1AMDaXMWSWxiFJrNaiPGvGF4+0DCKgx8chM=;
        b=sI62UMyxQVdM/pPLBDMUhiON1pMAwDH/i4i91Dq8j8fVTWrZQGw6/xnBNRiS5fZvEC
         k0xPqsHYNXOvrlLPusw4JTrZGNYHdfU5HTMt/Vwlkne/yttfJw+Qqb/1ELtWn+KTwX/P
         l5qiFg8wcEsqI7PsQ85MXPp0UqoKNlOHWEd3F4+ToujxTvryRAiDu9AURWCkjP0KlAZA
         bWss9Es0ynkUQMaQpwuchzKye+rVMPQ9lVrJSXsSZ+YqYytP+8wDMn5lNE5z9jhzitY0
         fz9z7cesZiRFGnZAlTCxCS7mbUzUW3PbV95UQ4ARsxNBPSgLXbNTgqF7BqYYvsxYRLGK
         BddQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIyysNaecF2GSYeFo5rNbZQ3S0l7z+MV8Ke6R88CDbK5Te8UXUDZpzhFlBjNNW3wmdt2hD8lB9a//7@vger.kernel.org
X-Gm-Message-State: AOJu0YxuXLhQOGUhSOTrMhsZ989BjOsk92+O7DNMdVauoC56Ucs1NnD7
	rIAdLohILXU+Dg/v8tUjdrz9bRLjvGJqT+VzKL/SI6AGeRIGrhe3oiCJtfz+lm4=
X-Google-Smtp-Source: AGHT+IHg7/nEfvZkOn6BA7PZBmebnyVMgSWv5DTuDfVfgCnvwovuWEpOWHklDBlFgRxuL8B4nEgE7Q==
X-Received: by 2002:a05:6512:3989:b0:53a:1337:5ff7 with SMTP id 2adb3069b0e04-53b1a36c6admr4450312e87.40.1729784905657;
        Thu, 24 Oct 2024 08:48:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a2242fba2sm1394455e87.190.2024.10.24.08.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 08:48:24 -0700 (PDT)
Date: Thu, 24 Oct 2024 18:48:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Kalle Valo <kvalo@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v6 2/6] power: sequencing: qcom-wcn: improve support for
 wcn6855
Message-ID: <rm2rlaqf4qtthzmyqkb7yko57tm2y2wlxno6ee2efll6kjxnz4@fs75wefpfz3d>
References: <20241018-sc8280xp-pwrseq-v6-0-8da8310d9564@linaro.org>
 <20241018-sc8280xp-pwrseq-v6-2-8da8310d9564@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241018-sc8280xp-pwrseq-v6-2-8da8310d9564@linaro.org>

On Fri, Oct 18, 2024 at 02:49:12PM +0200, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> WCN6855 (also known as QCA6490) is similar to the already supported
> QCA6390 but takes in two more supplies so add a new vregs list for it.
> 
> On sm8450-hdk it also requires a short assert of the xo-clk pin so add
> handling for it in a dedicated unit.
> 
> As we now have a separate set of targets for this variant, store the
> pointer to the targets struct associated with a model in the device
> match data.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
>  drivers/power/sequencing/pwrseq-qcom-wcn.c | 101 ++++++++++++++++++++++++++++-
>  1 file changed, 98 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

