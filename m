Return-Path: <devicetree+bounces-112621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8D29A3075
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 00:05:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 91BF228625A
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 22:05:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52CED1D618E;
	Thu, 17 Oct 2024 22:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aLWkIlkb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C9C1D5ADA
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 22:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729202722; cv=none; b=CPsaIU1hVT//DhkxW1uV6i7UV/D/x6Y92LqOhoqsOusOu9vsCZ408EJaPGiYVf0Ww/f6TF+vJLG7wL/RNoJPLC01VH0mfM92jK7NzW5fA3zgPI0LfVrLe6XFHr+RxV3pnGsDgmPMOEM84o10HcRsxqEIZu8PdPqk1gGTD2bXy7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729202722; c=relaxed/simple;
	bh=jD/Fe1lX59bLh+CuYejAdhr6Bnz41dgOxAI/o78O0Ms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nDtl9Bw0NVWKKvbd8NaYEY05pbqhrO11Nj4GVkymYKyAwfVHo0jqgguzWVADrRMRkSfp0phWF1F69cXxve4mcAUrCpxb2TQiXX0sxx6N69D+de2jX61IBJb5Q+5P+4Z0Z/BeWcN4hKpvsL9GEXof4PQh1mJlfBtGrOx7jIIr1N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aLWkIlkb; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fb443746b8so17728961fa.0
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 15:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729202714; x=1729807514; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tZT7lMat6/ClXCJCRy4JE1uWNJw8YfQq7oksTJj7I6k=;
        b=aLWkIlkbfyFnu5gnEUvAL+nci19+lN+T7fn50RrXAC1GdIfZ8k6Db7t0A7ogkSOQDh
         c5Q3BSBP4cc4sQ/GutOspBbm0Th9WkoIbMcCIzIWVOwYou3ra3djy1Pfg28LeDqtDBnu
         IIbn3YvJII7jCXXTLZYSVHQLGFArx3l34CV58cZICYOHpgGzImurq56HJMq2kqQaXUZw
         rD20/xC1ZQh3NoVAhyUDnuW9hoE8dqZOfTHvKnV0HPBcEJpanfu+1gLrZ24+fHOZSJaP
         7VYL6huS1CrlooIxWR57dAB+RwK2yoJojAO68KSlCANLOeSqQOxf+vvnj6qG1GgXdXI3
         D6xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729202714; x=1729807514;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tZT7lMat6/ClXCJCRy4JE1uWNJw8YfQq7oksTJj7I6k=;
        b=V+bdKYCfd1EBmfndtcKm2OIDa8lcHkC3qvMI4tI3Zd2Z6aOa+s+VXz7nab6Et8+YAZ
         Gvh40fWcbI8eOuxPOZXCQ0t+3+3oBB/Qq2WCoFk4Hzv3ar8vG8xtA3M4zEf3SPsbwH+Y
         Y1lludxlvvpHhWoZqg/VQQe1gB7fCRRbbsTIAc123cMa/zl514gSSVKKV4ACRubjERVI
         MEBd5NLPASQXDKaO/raylQrckuYICy/sbGX0CMWK5aJVcIzdf2pVEe0uHoLUDh+Z+02N
         kKZwPaTE5pdTxjB0YVaoz5EYH265hkaRTH6MR4xgBhxV9/xQ4aW+ytp9tENVGofb6C8u
         LnPg==
X-Forwarded-Encrypted: i=1; AJvYcCXLWmA+YjIHxaTqcgRtE58YGjO9rNWjC9Zo4wJuLINb5fY1tgraqw2PbKNStGzfAwdkNq8YKY+4dU9E@vger.kernel.org
X-Gm-Message-State: AOJu0YzuMm3Vc5Ho0fOwK9SnFAFptknZ0jXgKV1HHDcrG/ryDAynU+r0
	FUwCTYbtRO7KulhbI3vS0lWu4sOjYVXH1KsgpWlqS0vqJqGlhnHdB69Qdu7HfZA=
X-Google-Smtp-Source: AGHT+IGMFrsX5XS3bpPZ5ASfvtmHtmQVAlaFsEfGRjHV+zQlL8LHl5ouQpgKLnGjkIePHpyFAhQPBw==
X-Received: by 2002:a05:651c:2115:b0:2fb:5f9d:c284 with SMTP id 38308e7fff4ca-2fb82ea2827mr555711fa.16.1729202713782;
        Thu, 17 Oct 2024 15:05:13 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb809baf16sm433451fa.68.2024.10.17.15.05.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 15:05:11 -0700 (PDT)
Date: Fri, 18 Oct 2024 01:05:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Rob Herring <robh@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Kalpak Kawadkar <quic_kkawadka@quicinc.com>
Subject: Re: [PATCH 06/14] clk: qcom: clk-branch: Add support for
 BRANCH_HALT_POLL flag
Message-ID: <jcjncf5k5syvcvwxoopksisjvvmw4cvxo35nieqf63mquj57io@fumh4jnh2e4p>
References: <20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org>
 <20241017-sar2130p-clocks-v1-6-f75e740f0a8d@linaro.org>
 <d7989a770f0eb35a5ba346beb5e7548c.sboyd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d7989a770f0eb35a5ba346beb5e7548c.sboyd@kernel.org>

On Thu, Oct 17, 2024 at 11:03:20AM -0700, Stephen Boyd wrote:
> Quoting Dmitry Baryshkov (2024-10-17 09:56:56)
> > From: Kalpak Kawadkar <quic_kkawadka@quicinc.com>
> > 
> > On some platforms branch clock will be enabled before Linux.
> > It is expectated from the clock provider is to poll on the clock
> 
> Unfortunately 'expectated' is not a word. The sentence is also
> grammatically incorrect.
> 
> > to ensure it is indeed enabled and not HW gated, thus add
> > the BRANCH_HALT_POLL flag.
> [...]
> > diff --git a/drivers/clk/qcom/clk-branch.c b/drivers/clk/qcom/clk-branch.c
> > index 229480c5b075a0e70dc05b1cb15b88d29fd475ce..c4c7bd565cc9a3926e24bb12ed6355ec6ddd19fb 100644
> > --- a/drivers/clk/qcom/clk-branch.c
> > +++ b/drivers/clk/qcom/clk-branch.c
> > @@ -76,6 +76,7 @@ static int clk_branch_wait(const struct clk_branch *br, bool enabling,
> >                 udelay(10);
> >         } else if (br->halt_check == BRANCH_HALT_ENABLE ||
> >                    br->halt_check == BRANCH_HALT ||
> > +                  br->halt_check == BRANCH_HALT_POLL ||
> 
> The name is confusing. The halt check is already "polling", i.e. this
> isn't a different type of halt check. This is really something like
> another branch flag that doesn't have to do with the halt checking and
> only to do with skipping writing the enable bit. Maybe we should
> introduce another clk_ops for these types of clks instead.

SGTM. All clocks with this flag use clk_branch2_aon_ops, so it is easy
to switch to a separate clk_ops.

> 
> >                    (enabling && voted)) {
> >                 int count = 200;
> >  
> > @@ -97,6 +98,10 @@ static int clk_branch_toggle(struct clk_hw *hw, bool en,
> >         struct clk_branch *br = to_clk_branch(hw);
> >         int ret;
> >  
> > +       if (br->halt_check == BRANCH_HALT_POLL) {
> 
> Remove braces
> 
> > +               return  clk_branch_wait(br, en, check_halt);
> 
> Remove extra space      ^
> 
> > +       }
> > +

-- 
With best wishes
Dmitry

