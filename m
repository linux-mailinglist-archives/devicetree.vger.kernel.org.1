Return-Path: <devicetree+bounces-5576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFE97B6A9F
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 15:36:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9F950281630
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:36:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7ACB29405;
	Tue,  3 Oct 2023 13:36:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7327A29409
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 13:36:25 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 225DFC9
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 06:36:23 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5a229ac185aso11339877b3.1
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 06:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696340182; x=1696944982; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IRR3rv2KDWXmsB0Ix3ijU7n/jybq/13X5CydsHsyIcU=;
        b=vqagwEwMD1LKeRPBe0/2Zv9u6la+KK0MjdGhxmbSuYFfSncfJ0kV+q+hv2q0zwWSGr
         hA+mc5QNdDMqoXb3drq9zalG0i+LvRaoMz/3v0Dom+vnJBo/Xn7Ovtui7/FJOAuX3o8c
         tYI/Jwn7W46EHZZYjrpCdOMluZiKiQr7YDeDxiqRv4n/4hnuxScVF+xR9OJSy5b8wbSO
         nQBH0fQ1SrQgWpYBKwLnouAFoSOmEtto5UdyO5qVCsLZFWuAFeaYH3EkzgHDSBEG3gsH
         TR3Crc5XdTVL1BL8Ka3YnKaMsd1tAsprojV6zYQcJnLcgaqFMJq85ksQhK3tndYgEXZo
         XHSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696340182; x=1696944982;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IRR3rv2KDWXmsB0Ix3ijU7n/jybq/13X5CydsHsyIcU=;
        b=NC92JreVHqF36sm9Kiai7wdpFRHCyNUzTwKyqBNid7lkdaFJtbjZdDYwn4w5XdseUb
         xs+TU3VfIXY7qO2ZSk/IgHJSRlxMHYisDcDD3DJkm+MeJ396jNxgKu15T7i/IzMHyoQE
         mcKijFk/FceEs24SjeihLaJ53QzslL2WvcYR/1kG7EG3XD6prenDI+V02REI/JstoPqZ
         TB6MPTIBoX8La1qS0t+uWmiL8O3NrC0DO5CqmPt45iU1IlSbmfWWhiSlrDh3X6PswN9u
         JkWQmKPOEHwgpmBF/+t35Hi7I24ENoUoJLQoTZG8O09DEcoAuWn1VSqyRzHjJghrHpCx
         2anw==
X-Gm-Message-State: AOJu0YwVuA8pmkZFpqFA7E54vkUae/HgHNfS8qGrX83VMtrag5BS3p6y
	dtRc5co6Qh3NxhFjGJ4DCu724ojAXaxkFYEi7POLnS6s0L6Hd7X9+po=
X-Google-Smtp-Source: AGHT+IG6YMLVfihSCcX3qLX7ge5fFIGHKpnjN5f2nZxD04+vvfmGOZWNVnWdqRL4QhQ9K3xPrTMKY1PYBCFY7JRW808=
X-Received: by 2002:a0d:d891:0:b0:58f:a19f:2b79 with SMTP id
 a139-20020a0dd891000000b0058fa19f2b79mr16157767ywe.9.1696340182327; Tue, 03
 Oct 2023 06:36:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230827115033.935089-1-dmitry.baryshkov@linaro.org>
 <20230827115033.935089-6-dmitry.baryshkov@linaro.org> <493aff10d698c9ca5bdbeae45250f5fe.sboyd@kernel.org>
 <7312633f-3b53-43a1-b6e3-010513c2a1e2@linaro.org> <ZRwQvP_GbvwvLAn8@gerhold.net>
In-Reply-To: <ZRwQvP_GbvwvLAn8@gerhold.net>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 3 Oct 2023 16:36:11 +0300
Message-ID: <CAA8EJpr9WH+MQdOJQ5yockg9TsUnDcenGbs=dq4Nt0SSBaK=0A@mail.gmail.com>
Subject: Re: [PATCH v4 05/23] interconnect: icc-clk: add support for scaling
 using OPP
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Stephen Boyd <sboyd@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Georgi Djakov <djakov@kernel.org>, Ilia Lin <ilia.lin@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, Nishanth Menon <nm@ti.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Viresh Kumar <vireshk@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-clk@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 3 Oct 2023 at 16:02, Stephan Gerhold <stephan@gerhold.net> wrote:
>
> On Tue, Oct 03, 2023 at 11:30:28AM +0300, Dmitry Baryshkov wrote:
> > On 28/08/2023 21:09, Stephen Boyd wrote:
> > > Quoting Dmitry Baryshkov (2023-08-27 04:50:15)
> > > > diff --git a/drivers/interconnect/icc-clk.c b/drivers/interconnect/icc-clk.c
> > > > index d787f2ea36d9..45ffb068979d 100644
> > > > --- a/drivers/interconnect/icc-clk.c
> > > > +++ b/drivers/interconnect/icc-clk.c
> > > > @@ -25,12 +28,16 @@ struct icc_clk_provider {
> > > >   static int icc_clk_set(struct icc_node *src, struct icc_node *dst)
> > > >   {
> > > >          struct icc_clk_node *qn = src->data;
> > > > +       unsigned long rate = icc_units_to_bps(src->peak_bw);
> > > >          int ret;
> > > >          if (!qn || !qn->clk)
> > > >                  return 0;
> > > > -       if (!src->peak_bw) {
> > > > +       if (qn->opp)
> > > > +               return dev_pm_opp_set_rate(qn->dev, rate);
> > >
> > > Just curious how does lockdep do with this? Doesn't OPP call into
> > > interconnect code, so lockdep will complain about ABBA?
> >
> > Unfortunately it does. It seems, the icc-clk is not a proper way to go here.
> > I will take a look at reusing set_required_opps for this case.
> >
>
> Could you elaborate a bit which locks exactly cause trouble here?
> I'm probably missing something here.
>
> From a quick look at the OPP code I don't see a global lock taken there
> for the entire OPP switch sequence, so I'm not sure how this could cause
> an ABBA deadlock.

For example:

[    7.680041] Chain exists of:
[    7.680041]   icc_bw_lock --> regulator_ww_class_acquire --> fs_reclaim
[    7.680041]
[    7.687955]  Possible unsafe locking scenario:
[    7.687955]
[    7.699039]        CPU0                    CPU1
[    7.704752]        ----                    ----
[    7.709266]   lock(fs_reclaim);
[    7.713779]                                lock(regulator_ww_class_acquire);
[    7.716919]                                lock(fs_reclaim);
[    7.724204]   lock(icc_bw_lock);

-- 
With best wishes
Dmitry

