Return-Path: <devicetree+bounces-115702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CFB9B0645
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:53:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94BC31C20E5D
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 14:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF7113E898;
	Fri, 25 Oct 2024 14:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oCWnncXf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4658F13632B
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 14:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729867998; cv=none; b=DLdVVxE8NIalfZN58h9Yuz+GTS26QNUhQxlKaHe4cbdSKNd2i+NTxiSRv5sETWOOqlYwgR+rbLj3PmKIWPQhTxJP/fEF4mzG1BJHG/91KmiavEo3YAu+4MTTPPJ+rGRufSpPZmR69abSh+Eha80eAGScuPI9f8NpudIWPd9UsUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729867998; c=relaxed/simple;
	bh=RkxaRv1gHOBT5sh/vvRuNysi24qX6kjeWyH6s3MjGn0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nLr2FE4n6B6uQGWu+XD85eEXuiJROQbnoPP6qhfINBXw21fQCi6ZWPf023fV89JB5xmKKlYzha4EdIfBaKChktlrJiOmzhfZuGIod6y9ke/3qt8Kg/G9nIioD7kdzZ5q0PXHMtlWK7f1pqfq2tJu2o7/+bmz2YTJxuvn6RG8xKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oCWnncXf; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-539e3f35268so2793277e87.3
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 07:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729867994; x=1730472794; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TlD/UX/UlEtCuduPsSkXnCNtF99PZp3JNh+pZLqHh0U=;
        b=oCWnncXfiu5uT5bc5lDFE3Z0rcAr0v3+EpE2fytXfG5HI9U7VhV2aZ5C3em6GCtyOO
         jGloDYv0pe8Dz0W7wFa3sfIVN2ZtFNbLHsFO8SPXBTxGtjiYtkPr4XJDR9mnbOCofF/9
         5ooEsgraIevam5zHluy7Y6DjruMJRsd9nhaPynsVcbc9aqFRfrfulnUoYIdHQ9oAOkNW
         4IFAvOAIUfSNZyoqD+M+ROWNgIoI7f9eFjiIKMFUAOTqprwYbjxRlchLrGcWvQyLUjOW
         lmCSaX9+duYuY/MiqN5hrDjWEh6yhGCCktsGQD9H3hmJqFHt1DfqGTD7jN/F7LO15vOK
         6RMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729867994; x=1730472794;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TlD/UX/UlEtCuduPsSkXnCNtF99PZp3JNh+pZLqHh0U=;
        b=c9XaaxBNVf636lOPH40Xfl5NbsbTqK9nG/Ulot7HCEz09s+AiSTLQ4Myng/ahN9Hub
         jjRuEiAdtTWAC6ZfyjQ9pLXTjJuMRJ8Jfa97f/WeBoJGcVN1QdRuyUyNbvRXiRDQWkT2
         EoqcGZhRT9oxkyes6f1R+Ygeih0hkhlC8ZthhNH8l+BwJBl61eU2AsV54yskvlQcnN8l
         cbaFVlVAWGpRPWi5oCQvgrWN0Gw50d9pvVsReMMogRqfWgpjfte6rhOmIQHKcS3U0608
         EFxEROMV7TBFKleS9aRgK30RgsbZAtmZ06r1dFblkNUqBFPlXGHv9r9HtOgqIJwecuyV
         qohA==
X-Forwarded-Encrypted: i=1; AJvYcCU8r8vJc2W3f846JT7vKpVZHFXwnNezEVGWOt7Y9N18GslP8/WFuQDL6WdGC6XFXVXVL750AfprmZiz@vger.kernel.org
X-Gm-Message-State: AOJu0YxTd7Fhb31Qi2w46thHzmSWN9x/qge39s625Ogftovd8sdgaFzB
	mkVdXXVQzgiT/3xDgJZLNKiAms5aXTzYu5BcY4NpALHp4ht1bqO5W8PqwTVEyfw=
X-Google-Smtp-Source: AGHT+IGYL7YFASRGtXttT1u3S3dz3+QkWO94FgOJfA6qslUxvxu3N5rdwJmVrNF6PekjkBHAAKd4gw==
X-Received: by 2002:a05:6512:31c1:b0:52b:de5b:1b30 with SMTP id 2adb3069b0e04-53b1a36196amr5948206e87.44.1729867994390;
        Fri, 25 Oct 2024 07:53:14 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1dcbbdsm208100e87.236.2024.10.25.07.53.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Oct 2024 07:53:13 -0700 (PDT)
Date: Fri, 25 Oct 2024 17:53:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 07/11] clk: qcom: rpmh: add support for SAR2130P
Message-ID: <as72zsmycangcy7yyivavpwb2p5wptvbnvyfycrdoaz3kqrcle@luj3hgoqffri>
References: <20241021-sar2130p-clocks-v2-0-383e5eb123a2@linaro.org>
 <20241021-sar2130p-clocks-v2-7-383e5eb123a2@linaro.org>
 <73abe2b9-ad72-449f-b3e3-a96128cf75a4@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <73abe2b9-ad72-449f-b3e3-a96128cf75a4@quicinc.com>

On Tue, Oct 22, 2024 at 12:03:57PM +0530, Taniya Das wrote:
> 
> 
> On 10/21/2024 4:00 PM, Dmitry Baryshkov wrote:
> > Define clocks as supported by the RPMh on the SAR2130P platform. It
> > seems that on this platform RPMh models only CXO clock.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/clk/qcom/clk-rpmh.c | 11 +++++++++++
> >   1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
> > index 4acde937114af3d7fdc15f3d125a72d42d0fde21..8cb15430d0171a8ed6b05e51d1901af63a4564c4 100644
> > --- a/drivers/clk/qcom/clk-rpmh.c
> > +++ b/drivers/clk/qcom/clk-rpmh.c
> > @@ -389,6 +389,16 @@ DEFINE_CLK_RPMH_BCM(ipa, "IP0");
> >   DEFINE_CLK_RPMH_BCM(pka, "PKA0");
> >   DEFINE_CLK_RPMH_BCM(qpic_clk, "QP0");
> > +static struct clk_hw *sar2130p_rpmh_clocks[] = {
> > +	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div1.hw,
> > +	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div1_ao.hw,
> > +};
> > +
> 
> Dimtry, could you please add these clocks as well?
> 
> DEFINE_CLK_RPMH_VRM-- > rf_clk1, rf_clk1_ao, "clka1", 1
> DEFINE_CLK_RPMH_VRM --> ln_bb_clk7, ln_bb_clk7_ao, "clka7", 2
> DEFINE_CLK_RPMH_VRM --> ln_bb_clk8, ln_bb_clk8_ao, "clka8", 4
> DEFINE_CLK_RPMH_VRM --> ln_bb_clk9, ln_bb_clk9_ao, "clka9", 2

After checking the CMD-DB, I can see "rfclka1", which I can add, but I
don't see clka7/clka8/clka9. Are you sure they are present on the
platform?

I'll add rfclka1 only for now and skip the rest.

> 
> > +static const struct clk_rpmh_desc clk_rpmh_sar2130p = {
> > +	.clks = sar2130p_rpmh_clocks,
> > +	.num_clks = ARRAY_SIZE(sar2130p_rpmh_clocks),
> > +};
> > +
> 
> 
> -- 
> Thanks & Regards,
> Taniya Das.

-- 
With best wishes
Dmitry

