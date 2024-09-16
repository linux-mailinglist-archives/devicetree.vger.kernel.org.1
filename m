Return-Path: <devicetree+bounces-103188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BBF979D49
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 10:55:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4351D1F2334C
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2024 08:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 046C4146586;
	Mon, 16 Sep 2024 08:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lW82FDGa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316B413AD2A
	for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 08:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726476923; cv=none; b=qPBkKkmZRnjpjr2zjDehRTfon5jM8kCM7ODUdw59zfTY6+qliPebUK0VwlPmXg4F03k+fw0ayhHFh7pTjCdfl2UEhMM5j8ShU8xEIlCK8QLoQMQQeVxTF8ZcS8dF+fWctqIVZ+vXpGo3QImZUtdrRc1mXRpBBZNxBNkzW9mqBBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726476923; c=relaxed/simple;
	bh=E1VyYQAQurwU8p+dmCtqZx+FfsqwR9JKSuHmyzm/i8w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IDRFZnCEP+u65J8AtqsjEerTDZ4Ym6L/PXDBTx6VHNTg3qywH096lr6cRucDRt6M/zqsWxk71ldh3Cw6ySj6go0R/CeSnK7I5YF2/CzcebGQnmrzcKFEb/Z6MvLhIm91HoHqJ53KyQ0iwTB4/X5dVWxRLfSXEgs9YnTD6lDlj58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lW82FDGa; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5365cc68efaso4165576e87.1
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2024 01:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726476920; x=1727081720; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xR2jDKAsU3oH2uxMnF0+jo329Pwfq7dBz/E22uv0AZQ=;
        b=lW82FDGa3Xyz94la5QhkwSNbbQJupNC4HqxsS5tVX7d6oc6O8DnrARB/hcUppr4y+t
         qYrWQb+MkP8uliAyDBV1S45P89S8FS/G0MQljSb2zDbGIqOlnqfTiIEAE2H43njv9PzQ
         /qadxxUe3gdL+pHKBcl1Okv/tUwU00h4eVIoDWInC4/JgM8hiPzdqDfNQksyrsdRF/8M
         EDJCgUciXVmB1hydOlrmmhXo6krhWYN5QPcS230BHYdO1spSxGGelHg6zFegntk5bmsh
         AUIDEfZ3b4gf8VRJ5+gmR4LwCAd7iw+sKdBcSdBDSO7ymwYuF4l4W4OYlL8ueUdY9h8r
         E/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726476920; x=1727081720;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xR2jDKAsU3oH2uxMnF0+jo329Pwfq7dBz/E22uv0AZQ=;
        b=p+GBI2rdattZHJA4rIHBWXEz9IgFUP3AgS+Vsjr1JQiiBStP6MNxvnx+VvJyyUYAqZ
         fR4B/GIusmI7byt7nDZ5NLZfJ1TmBM+dfmysaN3N/dIU5f6WB4XIifohSRx5fWBNxAFN
         lteVnKxdRBcKHdhYnw6qRftJTYAdKO40BFXrkTLCyk6Lb8Ouoa7J9dF5ElS2yVEtJ5l/
         ne4RQRV5xAwoL3CKuSt7Q+7t5WPXpdS0jNVyT54YaVZp9dKdQOyj6TJ10v/sHiMa5njq
         F7EkTTeYiLtLfSBLpKIaHDSDawQjehH2bhEalO6A7RYwAt7aA+f8c7DgUC6itpOtJ+Vw
         pFgg==
X-Forwarded-Encrypted: i=1; AJvYcCXwHP6I2shdrjC4mNeUYNTQB/jsv7yk1fgwPbu1IafkFGhxs61Mk2IdzNIffxHUOSPYFZcQIKf7rCuW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/0oIFNJMXFSOI3XQk7M3ZCVFri1EVPkCEvBCWfLFTDMyDT1Qs
	8m2SmynBOynQqutQ9KzKfOIV3DRsg6t5wQxJlrR2x0CzGxw3/VIudjGvBuwz5LE=
X-Google-Smtp-Source: AGHT+IHDgMPI5T0jfG61Jbaz3vU73dD+DIaHA1ZXDycd61JvCkYD4pYWwuEBP/jGdSBOxVH4v/LUsQ==
X-Received: by 2002:a05:6512:2352:b0:535:3ce5:6173 with SMTP id 2adb3069b0e04-53678feb5e9mr8380576e87.37.1726476919287;
        Mon, 16 Sep 2024 01:55:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870466ddsm809521e87.25.2024.09.16.01.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2024 01:55:18 -0700 (PDT)
Date: Mon, 16 Sep 2024 11:55:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Taniya Das <quic_tdas@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, quic_imrashai@quicinc.com, quic_jkona@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/5] clk: qcom: lpassaudiocc-sc7280: Add support for
 LPASS resets for QCM6490
Message-ID: <ya6aqhq27mizdozfhaa6evwt6kqjdryafozdxvwdm3l75cfd24@wloodcwrgkyu>
References: <20240816-qcm6490-lpass-reset-v1-0-a11f33cad3c5@quicinc.com>
 <20240816-qcm6490-lpass-reset-v1-2-a11f33cad3c5@quicinc.com>
 <67819a53-8e99-469b-a458-8c00034fec4a@kernel.org>
 <936f151e-6951-4dea-95ed-35374ab249cf@quicinc.com>
 <9b3350ba-eafe-4bb0-a6cc-f1b0a06d623e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b3350ba-eafe-4bb0-a6cc-f1b0a06d623e@kernel.org>

On Mon, Sep 16, 2024 at 10:33:21AM GMT, Krzysztof Kozlowski wrote:
> On 13/09/2024 07:31, Taniya Das wrote:
> > 
> > 
> > On 8/17/2024 2:55 PM, Krzysztof Kozlowski wrote:
> >> On 16/08/2024 10:32, Taniya Das wrote:
> >>> On the QCM6490 boards the LPASS firmware controls the complete clock
> >>> controller functionalities. But the LPASS resets are required to be
> >>> controlled from the high level OS. The Audio SW driver should be able to
> >>> assert/deassert the audio resets as required. Thus in clock driver add
> >>> support for the resets.
> >>>
> >>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> >>> ---
> >>>   drivers/clk/qcom/lpassaudiocc-sc7280.c | 23 +++++++++++++++++++----
> >>>   1 file changed, 19 insertions(+), 4 deletions(-)
> >>>
> >>> diff --git a/drivers/clk/qcom/lpassaudiocc-sc7280.c b/drivers/clk/qcom/lpassaudiocc-sc7280.c
> >>> index 45e726477086..b64393089263 100644
> >>> --- a/drivers/clk/qcom/lpassaudiocc-sc7280.c
> >>> +++ b/drivers/clk/qcom/lpassaudiocc-sc7280.c
> >>> @@ -1,6 +1,7 @@
> >>>   // SPDX-License-Identifier: GPL-2.0-only
> >>>   /*
> >>>    * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> >>> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
> >>>    */
> >>>   
> >>>   #include <linux/clk-provider.h>
> >>> @@ -713,14 +714,24 @@ static const struct qcom_reset_map lpass_audio_cc_sc7280_resets[] = {
> >>>   	[LPASS_AUDIO_SWR_WSA_CGCR] = { 0xb0, 1 },
> >>>   };
> >>>   
> >>> +static const struct regmap_config lpass_audio_cc_sc7280_reset_regmap_config = {
> >>> +	.name = "lpassaudio_cc_reset",
> >>> +	.reg_bits = 32,
> >>> +	.reg_stride = 4,
> >>> +	.val_bits = 32,
> >>> +	.fast_io = true,
> >>> +	.max_register = 0xc8,
> >>> +};
> >>> +
> >>>   static const struct qcom_cc_desc lpass_audio_cc_reset_sc7280_desc = {
> >>> -	.config = &lpass_audio_cc_sc7280_regmap_config,
> >>> +	.config = &lpass_audio_cc_sc7280_reset_regmap_config,
> >>>   	.resets = lpass_audio_cc_sc7280_resets,
> >>>   	.num_resets = ARRAY_SIZE(lpass_audio_cc_sc7280_resets),
> >>>   };
> >>>   
> >>>   static const struct of_device_id lpass_audio_cc_sc7280_match_table[] = {
> >>> -	{ .compatible = "qcom,sc7280-lpassaudiocc" },
> >>> +	{ .compatible = "qcom,qcm6490-lpassaudiocc", .data = &lpass_audio_cc_reset_sc7280_desc },
> >>
> >> That's odd to see sc7280 reset added for qcm6490, but not used fot
> >> sc7280 at all. Didn't you mean here lpass_audio_cc_qcm6409_desc?
> >>
> >>
> > The resets descriptor(lpass_audio_cc_reset_sc7280_desc) is not part of 
> > the global clock descriptor(lpass_cc_sc7280_desc) as these are part of 
> > different regmaps.
> > 
> > On a non-QCM6490(SC7280) boards the resets are registered after the 
> > global descriptor is registered.
> > 
> > But on QCM6490 board we need to register only the reset descriptor and 
> > no clocks are to be handled/registered and thus passed the match data 
> > for QCM6490 boards only.
> 
> Yeah, but why this is sc7280?

Because it's more or less the same HW, different TZ and hyp firmware?

-- 
With best wishes
Dmitry

