Return-Path: <devicetree+bounces-35984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A32DE83FA35
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 22:55:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2A556B21DAE
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 21:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 864583C48C;
	Sun, 28 Jan 2024 21:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cv/CHmIz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9787A3C46D
	for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 21:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706478897; cv=none; b=TArrcsZhRPs16oyURW/4HQva3AFBq10iO0x32YeEhGa3Wpf0NMmjT4ntk5XcKoI7Ye3UIohR0AeyzyIQycLHzVEjBDxiTpDzVWmh9VERM2kCQmviQxtJhDEpoOTPe3kN7lt0nlFNwX5hjRJMBerHRBmyM4ygRddCYGgwEL82qGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706478897; c=relaxed/simple;
	bh=WugGfDK+emUMgdBb1FkLCuURsfNZ1uU59q+8DxDxxZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PSHw/2+2Aj58EGIneYgEDnyMzVc5NvqYZvyiKnxjGaeWFQryc0ZJbqTL5ABWzZDK/YQPc0ZxwetxA2uHtw5styCsd6joWxruCcs9jG108OtihWQ1hsx2ef2DYpBvCgxTAR9Yf3k2rxiU2AXdUVJigW1//lyLEdgqY/QwilXWloo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cv/CHmIz; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a353f5407f1so129687866b.3
        for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 13:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706478893; x=1707083693; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D+XQ5J70Vv4JK+99QpNV1l2iMHbJbDR/DSuCxbzTjVM=;
        b=cv/CHmIzfVJ6pd22YjE1Mtfe4WoJ5LPntjTugKqhzRmY3/FtzAdEmDqP0Ga8GxzH4n
         ZYRdbEs2+ITAwojqhk9c3PKgdpSh7s/gGVgK2a1Meos6i6FQaucc0mi9LazNmLfW8sR7
         FaUtNI92bm9mqOxbO++zpRNeUosi9fKAqPrJPFKjP0FJsW3kIAArnsbz/gXBguKcIjt0
         qQD7gQHxutEpDEU/oIVwUDf/RzoxKZbHtdDAmPPBN1TC39XubtlOHbbmKtb8xGJO564z
         u16Z4g69r6vk3gI2GwfQcmPasRfbXRhWiXogP0DUpxAQASQXNoSwxcnf+h/YR0RijLZu
         vyng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706478893; x=1707083693;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D+XQ5J70Vv4JK+99QpNV1l2iMHbJbDR/DSuCxbzTjVM=;
        b=FOAZhVOlD9iaoe1knDX7vUDk5wAocgkQswUof7EqfVBNkJ556hJkJHHXuCQQ3Racnk
         pX0DyhrCzxePNACdhQWsSoUuBe4Lqrrwx+8p3VIAUdOlMwp/vvW06UQqbBpvbstEkxWN
         H6j0/rVO0ooRYs1T9DIc775o00BxP/I2jTHlM8vmMYreVOCUnT6cPJ4y3ORzItt0MsuU
         JwyMZb3YG8Ug+iQt7D4PI2ikgHL8t6t6Ni9YVBwMBb47MIwEaWZdeinFkVmqFf71IzQs
         3//qY69fKfMansT3Lw39Rixu2z33VLe1V906SfEFTDJOS2/NJuVzVqpp4Xu/evEv+Xrz
         X4EQ==
X-Gm-Message-State: AOJu0YxcjaWORlHdOshh8fZcE/W0q0PhE+m0sJrOlH6fAFPM2pwT1GDs
	eqSCSiiJz/oQDbrrcyEh1O7JkK0oLHBBhpM+cDfdq5xR8FW6iuHWj7CLCbqA/Ps=
X-Google-Smtp-Source: AGHT+IGwkQQURlUlsbXUqGqdg2JFIas0UFI7/DKvPhXxcltfn/ipNh+f9fXJupwAXTqT/wt8TETTOA==
X-Received: by 2002:a17:906:4901:b0:a35:2758:22a3 with SMTP id b1-20020a170906490100b00a35275822a3mr2847446ejq.1.1706478892377;
        Sun, 28 Jan 2024 13:54:52 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id s8-20020a170906bc4800b00a317165027fsm3297385ejv.13.2024.01.28.13.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jan 2024 13:54:51 -0800 (PST)
Date: Sun, 28 Jan 2024 23:54:50 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	Rajendra Nayak <quic_rjendra@quicinc.com>
Subject: Re: [PATCH v2 10/10] clk: qcom: Add camcc clock driver for x1e80100
Message-ID: <ZbbNKtXF7b20YZLl@linaro.org>
References: <20231214-x1e80100-clock-controllers-v2-0-2b0739bebd27@linaro.org>
 <20231214-x1e80100-clock-controllers-v2-10-2b0739bebd27@linaro.org>
 <624956b6-d7ea-43da-bb8d-32d9166a0272@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <624956b6-d7ea-43da-bb8d-32d9166a0272@linaro.org>

On 23-12-16 14:39:48, Konrad Dybcio wrote:
> On 14.12.2023 17:49, Abel Vesa wrote:
> > From: Rajendra Nayak <quic_rjendra@quicinc.com>
> > 
> > Add the camcc clock driver for x1e80100
> > 
> > Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> [...]
> 
> > +enum {
> > +	DT_BI_TCXO,
> > +	DT_BI_TCXO_AO,
> > +	DT_SLEEP_CLK,
> > +};
> > +
> > +enum {
> > +	P_BI_TCXO,
> Please don't overload this define with DT_BI_TCXO_AO, add a new one
> for the active-only clock. Please also do this in other drivers in
> this series.
> 
> [...]
> 
> > +	clk_lucid_ole_pll_configure(&cam_cc_pll0, regmap, &cam_cc_pll0_config);
> > +	clk_lucid_ole_pll_configure(&cam_cc_pll1, regmap, &cam_cc_pll1_config);
> > +	clk_rivian_evo_pll_configure(&cam_cc_pll2, regmap, &cam_cc_pll2_config);
> > +	clk_lucid_ole_pll_configure(&cam_cc_pll3, regmap, &cam_cc_pll3_config);
> > +	clk_lucid_ole_pll_configure(&cam_cc_pll4, regmap, &cam_cc_pll4_config);
> > +	clk_lucid_ole_pll_configure(&cam_cc_pll6, regmap, &cam_cc_pll6_config);
> > +	clk_lucid_ole_pll_configure(&cam_cc_pll8, regmap, &cam_cc_pll8_config);
> Do we know whether these configure calls are actually necessary?

So camera support hasn't been fully brought up yet, but based on the SM8550
driver (which is quite similar), they seem to be needed.

Once camera is up, we can confirm for sure.

> > +
> > +	/*
> > +	 * Keep clocks always enabled:
> > +	 *	cam_cc_gdsc_clk
> > +	 *	cam_cc_sleep_clk
> > +	 */
> > +	regmap_update_bits(regmap, 0x13a9c, BIT(0), BIT(0));
> > +	regmap_update_bits(regmap, 0x13ab8, BIT(0), BIT(0));
> Please make the comments inline with each line

Will do.

> 
> Konrad

