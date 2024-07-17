Return-Path: <devicetree+bounces-86344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EA6933ACF
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 12:06:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA074B21B51
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 10:06:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5848E17F392;
	Wed, 17 Jul 2024 10:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MHgaUbjT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A87C017E906
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 10:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721210749; cv=none; b=mIOS6UgdIeWtx7Ou+noexIyZZSUP/HzXM4qkLqlBxo4otHJ1eLpf29m0JxxUoOz8KMkV9VrEYyUXGd+jai1ZPmSCoxop3/+FucSa+dLwwDc2p5VYVjKocs68zO9gCKBeeToE+cm+xfXiB+8DSSnOCPhf7LIakcINiDy++rmR6/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721210749; c=relaxed/simple;
	bh=chH+ucYVFollBpWofReK7yIO2W2cQCdc+Y402fQusJQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tt3yR7fVZZRXJMnY0Oh2i3d3RnEq3L4xeRGHECqyh18eTv5XhPYVtQ7uUPdxAdrQMtRCh6PQGwl666PouP48gwoGtzwSQCY20izXMc5QatrkoyRRjjunC0AktpI/bcwk8YY95vnUfkaBoJEeFRhK/pWWzii9jk1Gc6dm5GwAj8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MHgaUbjT; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-64b29539d86so59196477b3.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 03:05:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721210747; x=1721815547; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZoUdOZLlQAAmruOrbVsxcaV8sc5lR/mg/6r1PDCx+D4=;
        b=MHgaUbjTxFa4sb3U5Fe1s+s4pJjXrLw7qPqmKCOFZbVB6VLZADtVn+tKOUFmmCxJ3e
         nJ8fRj4TsTJJ0W04Bt+aL+4CUT5wOhEeME9v4GrGoVh1oBStUmYNllqbiAhCVGZkLpxV
         hz//tbw5mCesmkSJZ4mwKppTtAQG+wsSh+5JlXv3/daW29hDSDgh1EkIBnd8vG6Cyls2
         VsBovnQbDH1N6BBC9vWtXsoZDp+ATUlSY9XrOfR5bzsuxELo7EKQWCZLBao+5rDjlGDp
         k437e+X2b/wVjtisDb3bqo+njXYZVUiHrmvsrb/V+RCmql+9LcP6nH2qhdk1t00ergMZ
         mQJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721210747; x=1721815547;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZoUdOZLlQAAmruOrbVsxcaV8sc5lR/mg/6r1PDCx+D4=;
        b=u6WLEO00QlqMr66gMU+wZzyMpOVW8FvXW+rX7W32fMcbCkHPFTiUTG910CQuCYFFUI
         f2ga1T3XJwjuonfFTEokqbHuF1IL4idhsOuqF4nQh/ZfM7hVL0Iorx+CVeM4GDmC8YS6
         sEvDtBkxbijhZVJ/H2uT/bFxycn1sciODIRZTmzfWnH2pOgGhXWshNwGS44kEBWlWstO
         NzGpN5XYxIz6kpvyrStfhAi9ZWS0wvdLxy2cKsQStnbd5hfAil/221fq/WdTneMSglem
         Gxd2KGehQ0+rGEj1tEs7LDv7xmbL/wIJSa1ugRu1vLbzfNxHYazI1izfOdMUIrAkakZg
         pREg==
X-Forwarded-Encrypted: i=1; AJvYcCW+vSIexg1a8Nv1dYFliz/0D0yhxh6UPepRPIAg9aUjLFfSVsImAHnJH+CeI/HGuASbUqjJAvamL+AfQECzJNGRQp7m+lYkippCvA==
X-Gm-Message-State: AOJu0YzNW8gQH+qR97Tz1+qGCwJqsGg3wiMT2nGUCLMk2RhuH63RiNiM
	NxhJKLBzk1IJLy6ccqdtPL4k64c2aS6FIs4UakOMvLA/LoR1XaNpDU5ys+SQL0n1pukQlFJIcnV
	7PEBa1nrJD+vOXdIoQbTqW7Wp/k1peBKT3ERtDDvGeLbitjpb
X-Google-Smtp-Source: AGHT+IHYh/6i/8hq7tpOwurvTcspC0p58XaYzPylkrOGMSKDPt0iy/Je6Pf446cf1ZySUgGleEGSE6zosAzFkMtIqyk=
X-Received: by 2002:a05:6902:1102:b0:e03:4ead:a32c with SMTP id
 3f1490d57ef6-e05ed6ed999mr1472948276.30.1721210746690; Wed, 17 Jul 2024
 03:05:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240717-dispcc-sm8550-fixes-v1-0-efb4d927dc9a@linaro.org>
 <20240717-dispcc-sm8550-fixes-v1-2-efb4d927dc9a@linaro.org> <ef1e4d78-7e94-4853-90c0-73f0b80f9a63@linaro.org>
In-Reply-To: <ef1e4d78-7e94-4853-90c0-73f0b80f9a63@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jul 2024 13:05:35 +0300
Message-ID: <CAA8EJpoCtEOK=qgqKqFENiu1zCdXsBpR5EXzPZMrQQnuVMqnCQ@mail.gmail.com>
Subject: Re: [PATCH 2/7] clk: qcom: dispcc-sm8550: use rcg2_ops for mdss_dptx1_aux_clk_src
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Jul 2024 at 11:09, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 16/07/2024 23:13, Dmitry Baryshkov wrote:
> > clk_dp_ops should only be used for DisplayPort pixel clocks. Use
> > clk_rcg2_ops for disp_cc_mdss_dptx1_aux_clk_src.
> >
> > Fixes: 90114ca11476 ("clk: qcom: add SM8550 DISPCC driver")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/clk/qcom/dispcc-sm8550.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/clk/qcom/dispcc-sm8550.c b/drivers/clk/qcom/dispcc-sm8550.c
> > index 09e4b1e40e20..8ceeb17bbb37 100644
> > --- a/drivers/clk/qcom/dispcc-sm8550.c
> > +++ b/drivers/clk/qcom/dispcc-sm8550.c
> > @@ -400,7 +400,7 @@ static struct clk_rcg2 disp_cc_mdss_dptx1_aux_clk_src = {
> >               .parent_data = disp_cc_parent_data_0,
> >               .num_parents = ARRAY_SIZE(disp_cc_parent_data_0),
> >               .flags = CLK_SET_RATE_PARENT,
> > -             .ops = &clk_dp_ops,
> > +             .ops = &clk_rcg2_ops,
> >       },
> >   };
> >
> >
>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Oops... Neil, excuse me, I didn't pick up your R-B tags for v2. I'll
send v3 tomorrow, with your tags fixed.

-- 
With best wishes
Dmitry

