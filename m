Return-Path: <devicetree+bounces-7828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B7B7C5B26
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 20:20:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B82A281F37
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DF0D22319;
	Wed, 11 Oct 2023 18:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pY1qUOyx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5069639926
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:20:10 +0000 (UTC)
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A102E9D
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:20:06 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5a7ac4c3666so1667447b3.3
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697048406; x=1697653206; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/JGcSKg2l3kPMqygix6rwTD+Mo3CQavgi0LGq8Bh/Wk=;
        b=pY1qUOyxKu8vS37dVQzkIHQ2R/+X7fPG3offu6exOmtyVnAH49eyb6cOwrhAphQKuS
         WPFkZaESpt8Ei+Y7VcxRbii3wPV9sRhyFd2ByOWkXx6eziyrWk+8Hxw2S1VvzblKj6yh
         gGSudcImT0yj9qZiDx+sIbYWMAiId91M1FT1HnBozR6qAkY9nBM6HKkoSL/VPwOVNU96
         A5EgukhtbWx33ocQ7A/dyjgNLNOZdTQgGhDVia4ZHu3ncJ3K8Vd/wwkftCGrtywtm3Cw
         os61Cg6aS/zYrTxOXoqtOuiggzesZePM56h1mqIPzPY1fndyhDr7LoBggCvovK9ZAIdI
         LrmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697048406; x=1697653206;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/JGcSKg2l3kPMqygix6rwTD+Mo3CQavgi0LGq8Bh/Wk=;
        b=UtBGMz0XJHF5+KQJnYPwl7LGC7cZHipGUTaT7bJomk50xYzx7qz+mN9CVx30nMvBZK
         AtxTfbi40fXBzsbkIRay364GgyTBmxrJi3ou7D/oTEbkDvEkuscq/ZHWak9dG+f4A5Qh
         f5Ew725mIjEFh7PWDbCYpqRJPb/IY5PscWv7oYQHumNfjK6AZFPcDSGv6uszXA3f3xzF
         NMVh0V1YFk0CqXx/Y4md5g8WLpBqTTLI0Nxfbb6iSElpGiJLe65XjvXfLbaBDgwi6JcY
         m3aRtMB4uehy4UkFvMESYR1uRvOtd8yLoeg4cobXpvysB3Z/Q9z170ZGHB1URcMzYDXF
         uGsA==
X-Gm-Message-State: AOJu0Yz9CRd4A1WxkGBlt5tAm6AA21T2dFevyVm/Iyh0pClJUgJOjkDh
	X/5USj0WlkWHc5jrZDTBA6Tb76Eiq4i8U699zG1+aw==
X-Google-Smtp-Source: AGHT+IEPs2KKEsTpfPnTbGZKibXu8BySXACq2P2NXAPCOtWj6cnAtMkDIuxRTY/loz5JISVAmNDkdtyrmjKM7KVREco=
X-Received: by 2002:a81:4314:0:b0:5a7:aa54:42b1 with SMTP id
 q20-20020a814314000000b005a7aa5442b1mr7992527ywa.28.1697048405767; Wed, 11
 Oct 2023 11:20:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230827115033.935089-1-dmitry.baryshkov@linaro.org>
 <20230827115033.935089-9-dmitry.baryshkov@linaro.org> <20231011154935.GA785564-robh@kernel.org>
In-Reply-To: <20231011154935.GA785564-robh@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 11 Oct 2023 21:19:54 +0300
Message-ID: <CAA8EJpqf4Q7wh657==C45Ka8YmmyopkCQnyEFcXkaoRwnCRZLQ@mail.gmail.com>
Subject: Re: [PATCH v4 08/23] soc: qcom: Add driver for Qualcomm Krait L2
 cache scaling
To: Rob Herring <robh@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Ilia Lin <ilia.lin@kernel.org>, 
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Georgi Djakov <djakov@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-clk@vger.kernel.org, Christian Marangi <ansuelsmth@gmail.com>, 
	Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, 11 Oct 2023 at 18:49, Rob Herring <robh@kernel.org> wrote:
>
> On Sun, Aug 27, 2023 at 02:50:18PM +0300, Dmitry Baryshkov wrote:
> > Add a simple driver that handles scaling of L2 frequency and voltages.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> [...]
>
> > +static const struct of_device_id krait_l2_match_table[] = {
> > +     { .compatible = "qcom,krait-l2-cache" },
> > +     {}
> > +};
> > +MODULE_DEVICE_TABLE(of, krait_l2_match_table);
> > +
> > +static struct platform_driver krait_l2_driver = {
> > +     .probe = krait_l2_probe,
> > +     .remove = krait_l2_remove,
> > +     .driver = {
> > +             .name = "qcom-krait-l2",
> > +             .of_match_table = krait_l2_match_table,
> > +             .sync_state = icc_sync_state,
> > +     },
> > +};
>
> As I mentioned in the other thread, cache devices already have a struct
> device. Specifically, they have a struct device (no subclass) on the
> cpu_subsys bus type. So there should be no need for a platform device
> and second struct device.
>
> See drivers/acpi/processor_driver.c for an example. Or grep any use of
> "cpu_subsys".

Most likely you mean drivers/base/cacheinfo.c. I saw this code, I
don't think it makes a good fit here. The cacheinfo devices provide
information only, they are not tied to DT nodes in any way. cpu_subsys
doesn't provide a way to match drivers with subsys devices in the
non-ACPI case, etc. Moreover, the whole cacheinfo subsys is
non-existing on arm32, there is no cacheinfo implementation there,
thanks to the overall variety of architectures.

Thus said, I don't think cacheinfo makes a good fit for the case of
scaling L2 cache.

-- 
With best wishes
Dmitry

