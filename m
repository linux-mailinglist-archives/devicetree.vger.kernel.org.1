Return-Path: <devicetree+bounces-34666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0894F83A79F
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:20:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6BCE284643
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99F631AAB1;
	Wed, 24 Jan 2024 11:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ju6HOdVb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE6A1AAD0
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 11:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706095244; cv=none; b=dTYMVdMNocCVAYAfFs9VaBYmBtQpxorWsoXQ1aSSLeExE/CAVwWQD64NrQajzaTW7IScU/f+nt5kNAVG2e0wsw7Hs85KwSkqI13gNTt4KEmtk+f9UfAN6oGp8xfbY7AlI2FZirpPeM/XaUClmuGAN3ZjxYMZPS3v0Lg8GV/KWvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706095244; c=relaxed/simple;
	bh=SviQCXmDLirCs4JO1nzHIrTlDlz6LsIRudKgj0uC0xE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t/BGcnWi7Cx/VjZxPe4bFL2B0Wg2Tdbmp/xrXKo3AWgkFBRx5Fu7F2+SXBh+VR4EBCakBI339JPggHjEoBKJfkeYzVZgiTJbbG8W061UnixgRTTfcqNwaxnTIlwz4jjhumnbskoKqiLtjOtgCJellEUBPhNS4bnI5V5++iL3y6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ju6HOdVb; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5ff7a8b5e61so47242967b3.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 03:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706095242; x=1706700042; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2bdIHrfXD/9hbP6UF2QacCP3XBc//BmgWJRzX/SOVJA=;
        b=Ju6HOdVbXDs3NV5Tf2qOVc4/B5qU/6qm7+A6YyOV7oSgrBBmem+T9Dqfn45uEQM7R3
         ghw0R3ScMqKHmA0jnjKYeJtvMr2tkoNwVUx32x5r60bktj4yCAbZrETM+s4IWCtsrS8w
         zLOeIkC8QVP9xzjlfZR03r5XKwRvIKNps2t2s9CSw2MDGjGghpOELsYqDhncM3KeMuvP
         tz/73/3nzAkE1JYQ3OMRAQJLnYK5VIyON/0GN6CQoNHuLExfyHBPiQCiP37FP2V3IPUW
         HA3OPLwrFFFIxl4pW4Mv8ZEzw9cfGryuTIEaZ+YvOAjYPLyx+538VxObJ0hCeBqgI7Bp
         4vgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706095242; x=1706700042;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bdIHrfXD/9hbP6UF2QacCP3XBc//BmgWJRzX/SOVJA=;
        b=YrHycLgeTJwFUYOa0qDUCE3ZfNJmbkezDZztHtN7kWAUc4g/SwD5PsK5PWe9CgmpC6
         23T6ilo/+dd9bMLC7wfXmtNcaWGJf6ic2S2wSCz8cTLxrS6DRprTLeV5Xd73gkNpvY98
         N4iWxTtpQBRrjxGVMmwqR/l8OSqVSET8FGHyoTtvv6o25zGGx1izNzYgD32G1XSGDLhL
         xOo781r0iogVlutLk5EX0oRiweBaAwA2zmJI9k+qdVuKMNYgxRWGAAT/+CQJbLZCkgU0
         nca/+/UTdNOCZ899MSk36NPftqisHW/5mVGKBwJ38LalToBKpkmUVGOjpxZbu47gkoPx
         iq7g==
X-Gm-Message-State: AOJu0YyYuAbzqKyFkozDC1Nqtj6KRaEDmVuMBKCLbsgH6SYuGlGsFypH
	cSpqwirb3nlxmGSrWIjMEaksc1rTmZRrJP73xY6hRyGBCS7EfkSbjtJ4wu/K/B7g7mQ+xlMDR/7
	us5sUzmrHL4LORZf0IA4IcNjfjanXP1Y2M6a9nQ==
X-Google-Smtp-Source: AGHT+IE1uiznvlPBDMQFqFLFS9RjLC7Gaa0RsS3QjYSWYZJzRs91oTkCJNvkTYasdSG0GHhFVhDmU5cHiNmysX9/6IU=
X-Received: by 2002:a81:7c57:0:b0:5f5:9ba1:788a with SMTP id
 x84-20020a817c57000000b005f59ba1788amr591735ywc.95.1706095241785; Wed, 24 Jan
 2024 03:20:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230717-topic-branch_aon_cleanup-v6-0-46d136a4e8d0@linaro.org>
 <20230717-topic-branch_aon_cleanup-v6-1-46d136a4e8d0@linaro.org> <e993b237-46fb-3a0b-dc91-41e27ea0ab98@quicinc.com>
In-Reply-To: <e993b237-46fb-3a0b-dc91-41e27ea0ab98@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 24 Jan 2024 13:20:30 +0200
Message-ID: <CAA8EJpqDrFB_PmcA1uyubuaC5G8n6GqKkmY3sNDOf37AqrO=dw@mail.gmail.com>
Subject: Re: [PATCH v6 01/12] clk: qcom: branch: Add a helper for setting the
 enable bit
To: Imran Shaik <quic_imrashai@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Andy Gross <agross@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>, 
	"Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Jan 2024 at 11:33, Imran Shaik <quic_imrashai@quicinc.com> wrote:
>
>
>
> On 1/13/2024 8:20 PM, Konrad Dybcio wrote:
> > We hardcode some clocks to be always-on, as they're essential to the
> > functioning of the SoC / some peripherals. Add a helper to do so
> > to make the writes less magic.
> >
> > Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
> > Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > ---
> >   drivers/clk/qcom/clk-branch.h | 7 +++++++
> >   1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/clk/qcom/clk-branch.h b/drivers/clk/qcom/clk-branch.h
> > index 8ffed603c050..0514bc43100b 100644
> > --- a/drivers/clk/qcom/clk-branch.h
> > +++ b/drivers/clk/qcom/clk-branch.h
> > @@ -64,6 +64,7 @@ struct clk_mem_branch {
> >   #define CBCR_FORCE_MEM_PERIPH_OFF   BIT(12)
> >   #define CBCR_WAKEUP                 GENMASK(11, 8)
> >   #define CBCR_SLEEP                  GENMASK(7, 4)
> > +#define CBCR_CLOCK_ENABLE            BIT(0)
> >
> >   static inline void qcom_branch_set_force_mem_core(struct regmap *regmap,
> >                                                 struct clk_branch clk, bool on)
> > @@ -98,6 +99,12 @@ static inline void qcom_branch_set_sleep(struct regmap *regmap, struct clk_branc
> >                          FIELD_PREP(CBCR_SLEEP, val));
> >   }
> >
> > +static inline void qcom_branch_set_clk_en(struct regmap *regmap, u32 cbcr)
> > +{
> > +     regmap_update_bits(regmap, cbcr, CBCR_CLOCK_ENABLE,
> > +                        CBCR_CLOCK_ENABLE);
> > +}
> > +
>
> Could you please help me understand how this helper function is useful?
> Seems like this is just for reducing parameters compared to
> regmap_update_bits(). But anyhow the same is being done in the existing
> clock controller drivers with a comment which explains the functionality.

So, yes, it replaces the boilerplate code with API, which is good.

>
> Thanks & Regards,
> Imran
>
> >   extern const struct clk_ops clk_branch_ops;
> >   extern const struct clk_ops clk_branch2_ops;
> >   extern const struct clk_ops clk_branch_simple_ops;
> >
>


-- 
With best wishes
Dmitry

