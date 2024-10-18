Return-Path: <devicetree+bounces-112878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CF79A3BF2
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 12:48:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6437C282138
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 10:48:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB16201245;
	Fri, 18 Oct 2024 10:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DMh3IQfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1C520103B
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 10:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729248507; cv=none; b=NDHOZ/rKp1TICnFN9AQ+QsyRyU7FdkrCxf6eXuzbiMKkax92azenLLKVXWRHPY/Yk9CLnhG+WcJgRahxzmGDWlTipduxoX9rTTWKBNhZueqtq5ZcSPY7Eccb0ejNg1tefsj16dSMwemtl7YNUoV6jmtNRvPWbbGQdX1MnfPS4ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729248507; c=relaxed/simple;
	bh=1T1BGRS5Vz79v84HHgL6pcpdS6pbbZyBgFM1lFbHUOs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hRCz3rdHNJbA4Jt2FEoqa43nYIgX36rNdL4H0t96Isw8RiC7dGFZC92LTweRwfEKL/KSzekv4r9bkM7zniVLFqR9RE3Zb8hsG9Ysj6fcxR7VZqauL1+EW+Dv0Gd+FZcT0jTl7A3bl12ltG8k2qHiwX5DBoPZ9G41Url1AmMvQD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DMh3IQfy; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2fb561f273eso20616601fa.2
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 03:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729248502; x=1729853302; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m8sxXCljtIQuydtM9ViLyziZ/bYp6+Wl0FampyNPwdU=;
        b=DMh3IQfy4YVqpFbDumEzTz+WL6SbF9LLUI0Out7fCFhbMyWGKm2OgBRzcStchPgsNH
         NI3dJG3NnnhPmPsXH58DH48h4IeRGaZTVfeeP89QDcbqXT72NJ4BgpMlwwc8A6yZy93J
         rgE5oDvaJxAQ34gsCiuYOdF42leaMYBbDI11Bh9iQpdqvXMJPH92KAb8fG0eXZCBKdF+
         KhGufMdTY5WfLltR8SBoSseHdnxfhV8b97ojjEBp5A99b77xqG0RP/faMANfall0q938
         8/maXZcLkBMJoOTBmB7zvEkNb3WBmTV86xijqgDyy6pQnwqSgB66wPQdk4vDer5FrECr
         6bHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729248502; x=1729853302;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m8sxXCljtIQuydtM9ViLyziZ/bYp6+Wl0FampyNPwdU=;
        b=GE07bOezMrx9xt/+6l3d+3VyzanwCmv18EGmrUoSyaTeM5sOJVCi72ehKYi3bEh1LB
         z5i3UJVRU2jHijpAY1dzm4POSrEgU64A+xHTuCi/zR4+F0CbnjsfnxQ2koaDergfAeiw
         Y8HTxM+VVMaevkwWnTUgProSYCDuNZNlOIajqr9zHN3zhf+MD2NPmC/0h4CGjp7cW6iK
         M1ObjSzLOueFgtZo6a1E7auM4PlEkQAScN15+RCfPgjLqEXveovOcxH7enweFfAO1YEx
         IFJoIKMe5nrfihZuKhDNJw4SIw8iVFO5V8KGGLiMu8VsZzmp+hHFpG3J1zZq6POL2y1P
         MPNA==
X-Forwarded-Encrypted: i=1; AJvYcCUNVvXNny1BKmO5qFY+xtMTa95AW1+b98EQzadv3zCfdeJBTvT1CstrLb5gBALQYQMIvz8vjbBsrqUo@vger.kernel.org
X-Gm-Message-State: AOJu0YwBRN910ACuwPUS9inbSnwVc26x2hSoxqMCW71g5hz2h3U4691H
	7ZAJ0jWMTEH7ncDzHN/Z50Cola5/3J69+5kVBqC6MpwdfDfQMc4Pyna0w7NRHK0=
X-Google-Smtp-Source: AGHT+IFQ2otjy4qAD+i03PKAirPQATrkG1xVWRDUw9wPUTnTEmvgr4qWJUra5BrVhvKILJqNGviRQQ==
X-Received: by 2002:a05:651c:b13:b0:2fb:569a:553d with SMTP id 38308e7fff4ca-2fb8323b1fdmr9748111fa.42.1729248500707;
        Fri, 18 Oct 2024 03:48:20 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb809bb125sm1737061fa.69.2024.10.18.03.48.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 03:48:19 -0700 (PDT)
Date: Fri, 18 Oct 2024 13:48:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 09/14] clk: qcom: gdsc: add separate sleep state collapse
 vote support
Message-ID: <oaew374744vimlyxtd7mulejo7t2ezoy2uwfedqhinibtwir7m@7cap5kzj5p3p>
References: <20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org>
 <20241017-sar2130p-clocks-v1-9-f75e740f0a8d@linaro.org>
 <1d74b699-8463-4885-b30a-d4f1eeb7b3db@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1d74b699-8463-4885-b30a-d4f1eeb7b3db@quicinc.com>

On Fri, Oct 18, 2024 at 03:58:25PM +0530, Taniya Das wrote:
> 
> 
> On 10/17/2024 10:26 PM, Dmitry Baryshkov wrote:
> > Some platforms use separate collapse vote registers for the active and
> > sleep states. Extend gdsc_update_collapse_bit() to support separate
> > collapse_sleep_ctrl register.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >   drivers/clk/qcom/gdsc.c | 8 ++++++++
> >   drivers/clk/qcom/gdsc.h | 2 ++
> >   2 files changed, 10 insertions(+)
> > 
> > diff --git a/drivers/clk/qcom/gdsc.c b/drivers/clk/qcom/gdsc.c
> > index fa5fe4c2a2ee7786c2e8858f3e41301f639e5d59..95f8e90a8d25673c8a97a03f92cbdad25c3259db 100644
> > --- a/drivers/clk/qcom/gdsc.c
> > +++ b/drivers/clk/qcom/gdsc.c
> > @@ -133,6 +133,14 @@ static int gdsc_update_collapse_bit(struct gdsc *sc, bool val)
> >   	if (ret)
> >   		return ret;
> > +	if (sc->collapse_sleep_ctrl) {
> > +		ret = regmap_update_bits(sc->regmap, sc->collapse_sleep_ctrl, mask, val ? mask : 0);
> > +		if (ret) {
> > +			regmap_update_bits(sc->regmap, reg, mask, val ? 0 : mask);
> > +			return ret;
> > +		}
> > +	}
> > +
> 
> Dimtry, based on our discussions with design, we understand that this is a
> one time setting and can be done from the Global clock controller probe.
> Thus, this patch can be dropped.

Ack, thanks. I'll drop it from the next iteration.

> 
>     /* Clear GDSC_SLEEP_ENA_VOTE to stop votes being auto-removed in sleep.
> */
>         regmap_write(regmap, 0x62204, 0x0);
> 
> >   	return 0;
> >   }
> > diff --git a/drivers/clk/qcom/gdsc.h b/drivers/clk/qcom/gdsc.h
> > index 1e2779b823d1c8ca077c9b4cd0a0dbdf5f9457ef..dab2e31be8f65408d6d29df42ad5105830760d3e 100644
> > --- a/drivers/clk/qcom/gdsc.h
> > +++ b/drivers/clk/qcom/gdsc.h
> > @@ -19,6 +19,7 @@ struct reset_controller_dev;
> >    * @regmap: regmap for MMIO accesses
> >    * @gdscr: gsdc control register
> >    * @collapse_ctrl: APCS collapse-vote register
> > + * @collapse_sleep_ctrl: APCS collapse-vote register for the sleep state
> >    * @collapse_mask: APCS collapse-vote mask
> >    * @gds_hw_ctrl: gds_hw_ctrl register
> >    * @cxcs: offsets of branch registers to toggle mem/periph bits in
> > @@ -37,6 +38,7 @@ struct gdsc {
> >   	struct regmap			*regmap;
> >   	unsigned int			gdscr;
> >   	unsigned int			collapse_ctrl;
> > +	unsigned int			collapse_sleep_ctrl;
> >   	unsigned int			collapse_mask;
> >   	unsigned int			gds_hw_ctrl;
> >   	unsigned int			clamp_io_ctrl;
> > 
> 
> -- 
> Thanks & Regards,
> Taniya Das.

-- 
With best wishes
Dmitry

