Return-Path: <devicetree+bounces-48662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF739872FFC
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 08:53:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8559B2874D3
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 07:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91C925CDD8;
	Wed,  6 Mar 2024 07:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o+MMJNt4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88F55CDD1
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 07:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709711623; cv=none; b=AWdDF5xaIchn7F3w/zoVjPiaFymYY7E8KxM1j1i1ObDNOtjLO+w1jd7SgWjSY1XKqXaStAd0bko4E8yDQZPfcijEc9X1UwXqsdyU0pdpmjBeQLESp2irYWwbex4ft6yqUegBhT15V0L5swIL+tN02OP/daINz0k7XGNOPKeGqF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709711623; c=relaxed/simple;
	bh=Q7V2ub+ZvIzWgSzfbKVCt5sHhhPpjoxwqImwtNQVj34=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ezMLM0NnORGoEzxjHJwfp5y3xH3gmk9TDl1iRTjEYu2Tef+KblQE7YyKqo2ClKMptfUdF+Yj+5hm6LN5c4XOd0guI1UFTSG+bPzNXVzmgs8qbmzUYzGN6l4Ycvftht3xA4XsBbNK8EiQcDWiuCzA72XQ/GBkxTHaJ/YxNP6L9uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o+MMJNt4; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dcd94fb9e4dso6580586276.2
        for <devicetree@vger.kernel.org>; Tue, 05 Mar 2024 23:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709711621; x=1710316421; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O9RgG0bW53WtPyeKTmMxUZKEXIejFsVdj+GP332BBpM=;
        b=o+MMJNt4sUq74dNgUH+7OoYl3PQxu7iiFGzJKDaB1n9dzqpDh9ZOxxoixQPK6cRyS9
         W8435b+cXrDkZ4oQG8ERAQqbA4++R3c0YClf0hBKn6WodtNN1P5oexSpUlihAhca80Z/
         tdZkLMCxMbnyUlZ68mMJVclAGlmuy+ByIrzoYQBhLpjDvUQR2YlLJh8QUOW8gkCs+XaY
         qseJGTrTbfDBPWdEcA4mEWpIgm6g5KtxlxI4Xonguj5QdfaKbFUyqomk3d/Ph9GuTsnG
         tpjEB+dQgCf2PKlrPZzYTKpB8LyuBWcGfbCSM3wQO5mxG7bgmWzN7y73nqGbk9wwcYaI
         b2rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709711621; x=1710316421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O9RgG0bW53WtPyeKTmMxUZKEXIejFsVdj+GP332BBpM=;
        b=ONIA+SN0skeMiwQf6edm0MRihc5QUMEKbkCgZvzS4rIAEFGEce06/G87SbDIwKgdCL
         rTuhkXH21CFMRidLBc5Uqc8qZKQk6qLAvly5KVaFrEhdEYVwuecThfY7zJ6hSKUv0GEa
         IIVg+U4OoJ3p0rbPn/stsppfDYwAvUJSF9ipe4bsGwYzd5sQn17GniFkas7NHStZVP9j
         n8bFLo3mrjNu+lvjxcsUGMaVY1uqkjMRwRLwa6y8fiukoE2D/TtxfLKdeq79LbTlCYQ2
         14FhggPIhL5JUxm//u5G6q2hU4SrZPIdIdR02HrjJS1xm6GeDSxxA+kRPSC/Nx5BQdb/
         DxQQ==
X-Forwarded-Encrypted: i=1; AJvYcCUthQ8ZW0wphT3gVyRaQeA+0S94btUjQjcq0pXgxVTYONb+lraVpqSMX+fnRY+cwJ2XRI3/WDrETwmnR1tbeOfHgdjLOYowNMKXPg==
X-Gm-Message-State: AOJu0YybEr4FFvzJZkPaVLcbyt7JkeYJ9i0yqmMg0f4L/6U9YUPqARTj
	ji+GoCbk593zMVC46QVK5aJXeV4g1Lfp2Xd3XUhDuDKE5LFjPW01h1qeIZ2kBDUTGQ4ciV/5X5P
	pCt5XRprFX1AEd6z3u8IknTr6oZDgE45m/kvDcA==
X-Google-Smtp-Source: AGHT+IF9nDMagmvaiyarQtCcohh4J87A30ch7PH+aO5l7/Hr3xz3TIgauq6f8yk9Iirvl6ZRNXP9JghZCMVUV62iemY=
X-Received: by 2002:a25:c5cb:0:b0:dcc:4b44:336c with SMTP id
 v194-20020a25c5cb000000b00dcc4b44336cmr12104523ybe.53.1709711620805; Tue, 05
 Mar 2024 23:53:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240208062836.19767-1-quic_tdas@quicinc.com> <20240208062836.19767-3-quic_tdas@quicinc.com>
 <CAA8EJpq2MpZitzspd9RksTY7WWKAaLwvb30x8ArBfed5Ee8buA@mail.gmail.com> <9aa21da0-ad93-41f7-8ac1-b496a049a32c@quicinc.com>
In-Reply-To: <9aa21da0-ad93-41f7-8ac1-b496a049a32c@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 6 Mar 2024 09:53:29 +0200
Message-ID: <CAA8EJppwEA=Y6ZSY9WO9f1X+Og3Dm8v799F35P2SK8jMp4gUGA@mail.gmail.com>
Subject: Re: [PATCH 2/5] clk: qcom: lpassaudiocc-sc7280: Add support to skip
 PLL configuration
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Mar 2024 at 08:56, Taniya Das <quic_tdas@quicinc.com> wrote:
>
> Thanks for your review Dmitry.
>
> On 2/8/2024 12:32 PM, Dmitry Baryshkov wrote:
> > On Thu, 8 Feb 2024 at 08:29, Taniya Das <quic_tdas@quicinc.com> wrote:
> >>
> >> The PLL configuration needs to be skipped when remoteproc brings the
> >> LPASS out of reset.
> >
> > Why?
> >
>
> On QCM6490 boards, the HLOS is not given access to program the PLL of
> Low Power Audio Subsystem. Also on these boards the per-requisite of a
> GDSC is not available. Thus we need to skip the PLL programming.
>
> I will update the commit text in my next series.

Please use SoC-specific compatible instead of adding extra properties.

>
> >>
> >> Also update the lpassaudio_cc_reset regmap name and max register to handle
> >> the regmap conflict warning between lpassaudio_cc_reset and lpassaudio_cc.
> >
> > Separate patch, please.
> >
>
> Yes, I will take care.
>
> >>
> >> Fixes: a9dd26639d05 ("clk: qcom: lpass: Add support for LPASS clock controller for SC7280")
> >> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> >> ---
> >>   drivers/clk/qcom/lpassaudiocc-sc7280.c | 14 ++++++++++----
> >>   1 file changed, 10 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/clk/qcom/lpassaudiocc-sc7280.c b/drivers/clk/qcom/lpassaudiocc-sc7280.c
> >> index c43d0b1af7f7..2619a8ced9d5 100644
> >> --- a/drivers/clk/qcom/lpassaudiocc-sc7280.c
> >> +++ b/drivers/clk/qcom/lpassaudiocc-sc7280.c
> >> @@ -1,6 +1,7 @@
> >>   // SPDX-License-Identifier: GPL-2.0-only
> >>   /*
> >>    * Copyright (c) 2021, The Linux Foundation. All rights reserved.
> >> + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
> >>    */
> >>
> >>   #include <linux/clk-provider.h>
> >> @@ -766,11 +767,13 @@ static int lpass_audio_cc_sc7280_probe(struct platform_device *pdev)
> >>                  goto exit;
> >>          }
> >>
> >> -       clk_zonda_pll_configure(&lpass_audio_cc_pll, regmap, &lpass_audio_cc_pll_config);
> >> +       if (!of_property_read_bool(pdev->dev.of_node, "qcom,adsp-skip-pll")) {
> >> +               clk_zonda_pll_configure(&lpass_audio_cc_pll, regmap, &lpass_audio_cc_pll_config);
> >>
> >> -       /* PLL settings */
> >> -       regmap_write(regmap, 0x4, 0x3b);
> >> -       regmap_write(regmap, 0x8, 0xff05);
> >> +               /* PLL settings */
> >> +               regmap_write(regmap, 0x4, 0x3b);
> >> +               regmap_write(regmap, 0x8, 0xff05);
> >> +       }
> >>
> >>          ret = qcom_cc_really_probe(pdev, &lpass_audio_cc_sc7280_desc, regmap);
> >>          if (ret) {
> >> @@ -778,6 +781,9 @@ static int lpass_audio_cc_sc7280_probe(struct platform_device *pdev)
> >>                  goto exit;
> >>          }
> >>
> >> +       lpass_audio_cc_sc7280_regmap_config.name = "lpassaudio_cc_reset";
> >> +       lpass_audio_cc_sc7280_regmap_config.max_register = 0xc8;
> >> +
> >>          ret = qcom_cc_probe_by_index(pdev, 1, &lpass_audio_cc_reset_sc7280_desc);
> >>          if (ret) {
> >>                  dev_err(&pdev->dev, "Failed to register LPASS AUDIO CC Resets\n");
> >> --
> >> 2.17.1
> >>
> >>
> >
> >
>
> --
> Thanks & Regards,
> Taniya Das.



-- 
With best wishes
Dmitry

