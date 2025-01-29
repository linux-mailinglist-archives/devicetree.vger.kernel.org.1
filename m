Return-Path: <devicetree+bounces-141651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EAAA21C23
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 12:27:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5BB33A3659
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 11:27:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7E01B87F7;
	Wed, 29 Jan 2025 11:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vWj29di4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C801AD403
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 11:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738150059; cv=none; b=faap4W4oaDABWhE8wSGtna9guWVkgr3BfHwgH4fwBI5lv7o1VeBGufE2UKXc4EydfDoK7es022GlJUWQK3S15ZH3rncvx5elY03IDXPhy7nqAIW+aDpKuXwtoOvG6tlt1kPwLVe653CqfMH34/u0xU9d0hDJ/QaHQy5Mh7KipEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738150059; c=relaxed/simple;
	bh=QbzMdo5twuN8qHdUuuA8eKAEXsCU81mC2eMowoF6pkE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CNtWgZKGFTbeSqx/cug1k9F02s1py0EzjuPNEpYFDc67Ky7d3LJQ4DxHblJ6+jH+f2/AQ/AE8UFgJ6EGBxWQefU86l4IoUQeaG3oBRqy1+tPPc3TfwZAqtxA077Y/gNQY3Ag+OMFhdd1VxfFArMhxeB9+m1iTRT5NbFURdGEBc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vWj29di4; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53f22fd6887so7290334e87.2
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 03:27:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738150055; x=1738754855; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MdMhtxP5R+RhzbtYpl+nDYBC1VN7c30OWolTsuKS8Es=;
        b=vWj29di4IP3TNXPK3gzSGQuOHcrcyYXppym3TmeABM4iG0x+wofmD7dneNKRhlwC22
         b4Zt3GIghhTTyRBgkkyWEjSBoc3SfZ46puJujWzyT2YhdH8bGM9IW5A1eCDh6UN+0Vb+
         QvuveqUYT2tb8o+f+t5bmK+YQFtI/uo3uKW/GAx45jA5nkIKwr25nuBLTHYc9zLX12s/
         fQY4Q8Uy0DPakT6CUqY+ZXyYrb/1qJtkEzM6KgdbIh5NR9pv1f+ZFQXVNh9S9vSidxAv
         7VimNHfALmxYe8V9DB0p+dDlsqwJa7fCI8FHGHKVIQJ/tyh/r21t6Rftoz4x0SRVsd1Q
         pg4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738150055; x=1738754855;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MdMhtxP5R+RhzbtYpl+nDYBC1VN7c30OWolTsuKS8Es=;
        b=RuodF2wJUGVbebImhwjG3oodcSdnwFf0mP5OltNukJYnJwRg/BhJpyh/Gs5vyMi6K7
         15gxURqlQzin3TXfJUlOLpReHf5wEw2H/kZsL9zgwxt0ZMlNtL4YA6CtUEziTT1Tfkgp
         1m36ioEQteJiYya+4o368XdIsm0J+Vev4GnyE0lzJP2/CeCqigrP26WvYxL7GKKP9OyT
         bHxI4XwUYvO9pFwQl8kEDbnVRB+8wdZBvs3sPfPhvqNOOSX8i6/qUY0v8IhCMuCtAY+Z
         8Tmo+IyxrUfC/2ungEmQYEmbPdBztYT8wJlyl+Jv7ypLGocOO5oWZGKNpJAyUqouc09T
         h6XA==
X-Forwarded-Encrypted: i=1; AJvYcCWDuUCW8WYGckFaARq3/VXAMXK57qMkbmDiI5Bw9FkfS0HARO960bDb46aAfBSZl9TbJXC+TmMzNsn4@vger.kernel.org
X-Gm-Message-State: AOJu0YyhkZdCgxpGGqRBs9oKrxVtDtoGh5DbLgBeJeE+FnXt8SMzGgpm
	03PdaX1u8Ma5RAKIkbFn/43bplOLeS+FkujWzrsq4HIUFXzL8NJ2ZSmcDefPXCE=
X-Gm-Gg: ASbGncvR3S4odkj51Wnb/soB7UgxI0pxzb7vtYIf3gPCxElORF8Vvx8dxPD0/zJOBPu
	tuMm9Dv7oUe+JlduJHnJFvLh8HfsMOoe1sNki2zDX3gNO2xUBjKTDQCYnOZsd3U6WcwAkOW7xsu
	mdaOmSh+NIw5ZDWLVV0LKzqRRep7Fnptqz2yiqXdtfKV/Wd84Df2n6PIlQZ8CK+xiX6qg6/e/ne
	V+dZUdhZJf2uILdGJg2YHdoHf8NSqw7xP1i0KkY5OWgAXsjzz80wGeWOditpIdHlX7dvaPs6LXC
	kUZVHKr3A4t1vEzDHgKv0FZ6lIhqe8bJKK/GlTrLLZSupvxiFnz2CWyFWJO3chwHa7DEkrg=
X-Google-Smtp-Source: AGHT+IFtlc94QWGgPJciAfKJd6iML1fdimMywpw4Q1xwQVsFRb8X3q+yuNtr1tZBr1nfLKPhKsx6OQ==
X-Received: by 2002:a05:6512:148:b0:540:2ff1:3c7c with SMTP id 2adb3069b0e04-543e4bdff2amr733639e87.7.1738150054904;
        Wed, 29 Jan 2025 03:27:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c837949esm1965905e87.160.2025.01.29.03.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 03:27:33 -0800 (PST)
Date: Wed, 29 Jan 2025 13:27:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Dikshita Agarwal <quic_dikshita@quicinc.com>
Cc: quic_vgarodia@quicinc.com, quic_abhinavk@quicinc.com, 
	mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org, p.zabel@pengutronix.de, 
	hverkuil@xs4all.nl, sebastian.fricke@collabora.com, bryan.odonoghue@linaro.org, 
	neil.armstrong@linaro.org, nicolas@ndufresne.ca, u.kleine-koenig@baylibre.com, 
	stefan.schmidt@linaro.org, lujianhua000@gmail.com, linux-arm-msm@vger.kernel.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	krzysztof.kozlowski@linaro.org, johan@kernel.org
Subject: Re: [RFC PATCH v10 1/2] media: iris: introduce helper module to
 select video driver
Message-ID: <dl5gxjxvajoq3tszujqrew7ynvepufcr2qj7ztj7ksgv2fxtdt@zaeqtxuwbayb>
References: <20250128080429.3911091-1-quic_dikshita@quicinc.com>
 <20250128080429.3911091-2-quic_dikshita@quicinc.com>
 <sb3beoyhnlcdfjbm37ogpdoph7m4fecpbuu3myglnpzblpnqhw@wdyskeps3uuh>
 <45c3676a-aafe-59e8-910d-af82031c24a6@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <45c3676a-aafe-59e8-910d-af82031c24a6@quicinc.com>

On Wed, Jan 29, 2025 at 03:23:22PM +0530, Dikshita Agarwal wrote:
> 
> 
> On 1/28/2025 9:44 PM, Dmitry Baryshkov wrote:
> > On Tue, Jan 28, 2025 at 01:34:28PM +0530, Dikshita Agarwal wrote:
> >> Introduce a helper module with a kernel param to select between
> >> venus and iris drivers for platforms supported by both drivers.
> >>
> >> Signed-off-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
> >> ---
> >>  drivers/media/platform/qcom/Makefile          |  1 +
> >>  drivers/media/platform/qcom/iris/iris_core.h  |  1 +
> >>  drivers/media/platform/qcom/iris/iris_probe.c |  3 +
> >>  drivers/media/platform/qcom/venus/core.c      |  5 ++
> >>  .../platform/qcom/video_drv_helper/Makefile   |  4 ++
> >>  .../qcom/video_drv_helper/video_drv_helper.c  | 70 +++++++++++++++++++
> >>  .../qcom/video_drv_helper/video_drv_helper.h  | 11 +++
> >>  7 files changed, 95 insertions(+)
> >>  create mode 100644 drivers/media/platform/qcom/video_drv_helper/Makefile
> >>  create mode 100644 drivers/media/platform/qcom/video_drv_helper/video_drv_helper.c
> >>  create mode 100644 drivers/media/platform/qcom/video_drv_helper/video_drv_helper.h
> >>
> >> diff --git a/drivers/media/platform/qcom/Makefile b/drivers/media/platform/qcom/Makefile
> >> index ea2221a202c0..15accde3bd67 100644
> >> --- a/drivers/media/platform/qcom/Makefile
> >> +++ b/drivers/media/platform/qcom/Makefile
> >> @@ -2,3 +2,4 @@
> >>  obj-y += camss/
> >>  obj-y += iris/
> >>  obj-y += venus/
> >> +obj-y += video_drv_helper/
> >> diff --git a/drivers/media/platform/qcom/iris/iris_core.h b/drivers/media/platform/qcom/iris/iris_core.h
> >> index 37fb4919fecc..7108e751ff88 100644
> >> --- a/drivers/media/platform/qcom/iris/iris_core.h
> >> +++ b/drivers/media/platform/qcom/iris/iris_core.h
> >> @@ -107,5 +107,6 @@ struct iris_core {
> >>  
> >>  int iris_core_init(struct iris_core *core);
> >>  void iris_core_deinit(struct iris_core *core);
> >> +extern bool video_drv_should_bind(struct device *dev, bool is_iris_driver);
> > 
> > s/extern //g
> > 
> >>  
> >>  #endif
> >> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
> >> index 954cc7c0cc97..276461ade811 100644
> >> --- a/drivers/media/platform/qcom/iris/iris_probe.c
> >> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
> >> @@ -196,6 +196,9 @@ static int iris_probe(struct platform_device *pdev)
> >>  	u64 dma_mask;
> >>  	int ret;
> >>  
> >> +	if (!video_drv_should_bind(&pdev->dev, true))
> >> +		return -ENODEV;
> >> +
> >>  	core = devm_kzalloc(&pdev->dev, sizeof(*core), GFP_KERNEL);
> >>  	if (!core)
> >>  		return -ENOMEM;
> >> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
> >> index 77d48578ecd2..b38be7812efe 100644
> >> --- a/drivers/media/platform/qcom/venus/core.c
> >> +++ b/drivers/media/platform/qcom/venus/core.c
> >> @@ -369,12 +369,17 @@ static int venus_add_dynamic_nodes(struct venus_core *core)
> >>  static void venus_remove_dynamic_nodes(struct venus_core *core) {}
> >>  #endif
> >>  
> >> +extern bool video_drv_should_bind(struct device *dev, bool is_iris_driver);
> > 
> > Use #include instead.
> > 
> >> +
> >>  static int venus_probe(struct platform_device *pdev)
> >>  {
> >>  	struct device *dev = &pdev->dev;
> >>  	struct venus_core *core;
> >>  	int ret;
> >>  
> >> +	if (!video_drv_should_bind(&pdev->dev, false))
> >> +		return -ENODEV;
> >> +
> >>  	core = devm_kzalloc(dev, sizeof(*core), GFP_KERNEL);
> >>  	if (!core)
> >>  		return -ENOMEM;
> >> diff --git a/drivers/media/platform/qcom/video_drv_helper/Makefile b/drivers/media/platform/qcom/video_drv_helper/Makefile
> >> new file mode 100644
> >> index 000000000000..82567e0392fb
> >> --- /dev/null
> >> +++ b/drivers/media/platform/qcom/video_drv_helper/Makefile
> >> @@ -0,0 +1,4 @@
> >> +# Makefile for Video driver helper
> >> +
> >> +obj-m := video_drv_helper.o
> > 
> > Always built as a module? And what if iris or venus are built into the
> > kernel?
> iris and venus are always built as module,

This is not correct.

> and if we are adding the
> dependency of this module on IRIS && VENUS then this can't be Y I think.

It surely can. Moreover, if one doesn't enable both Iris and Venus, this
module is completely unnecessary.

> > Add a normal Kconfig symbol, tristate, no Kconfig string. Use depends on
> > IRIS && VENUS (and maybe default y) to let it be built only if both
> > drivers are enabled.

-- 
With best wishes
Dmitry

