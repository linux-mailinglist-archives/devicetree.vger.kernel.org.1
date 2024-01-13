Return-Path: <devicetree+bounces-31826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D05A482CCFA
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 15:18:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56F4C1F21CF7
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 14:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72BD321357;
	Sat, 13 Jan 2024 14:17:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b2IcHvDJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2ED2134E
	for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 14:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dbedb1ee3e4so6321901276.3
        for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 06:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705155476; x=1705760276; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FpapplPXSwA8dgQHySDipjmJ1OdA0p6AH2z0SETgUb4=;
        b=b2IcHvDJJzLLU4CcPrJ5/9unWwV8yv3sTaZXpRByg56/dqrAQYkr5oNKC/uXj22UoQ
         qcYkq2LDkKQMhf4oHhB47ftA3qBJ7oF1L/J3+th1XyrHEUwO/6hAMmXu86h3nDKAgGpw
         xEaJ60nrwgi6A/skaFdwLR+x5rXvMF85v/CrdH2/8qet0bCb9vhP0WcfjCDVH9/FNuQ/
         FOVsL+hCWkHttmKZQ0p/LyB9UThhsp726HJ5jYIfxrIY/RFoRvdim7W3KzHuuhP9fXeO
         ejotUFvG7FFvOjgsHlAu9h17MI3kiEKwUXYaG+7Mdud/9E1gZzmuHwQalpY1MxbYIpjU
         /gyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705155476; x=1705760276;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FpapplPXSwA8dgQHySDipjmJ1OdA0p6AH2z0SETgUb4=;
        b=D3SNiCBbffyj5q7/VfNWNF2WKeErS1QxxXnhiLrszbJX8YV5L9PqHFrz6k8kp+lBIf
         I2r0AnIYXjYS+WPiPa4qJBTke5ne1wxK+PYj4FN7NYi1LphHLDDZoifBMl/vnGIboCPJ
         o7Ui4aPdlmgfNgQ3hoSOndpOe8sh5Ud7j96Scjr/zuQPNk0hJIUCdr+3fkye3L4Veeeq
         tFgK602l8f5sP/OmzLCLL8+ZPrmfNyXZHrZw5cKE1OKehEGkiNObChfbXjQ/pFAxmbT3
         ikG7EEsfjmmsW5VCmKas5AfgnAeWbBZWNnotAbuVdK0bubP8MwcK8s0MKwBeGyt/htdc
         xJFg==
X-Gm-Message-State: AOJu0YweL6/y/fv7lTJMSEBuA+KJ8BJANgDO8tyqqQ4Vz8w1TTKy3iAF
	NWtC6vRzYyjbgZzZkl25Oie49dWrtR2aGjPDKTtu1oa5tq6QeQ==
X-Google-Smtp-Source: AGHT+IEhkGFyRk54+YFnuRK35imOYfuCVpxnEEr5O+Sul0jCRTBmNNZc4z+pQ+B9yz0VzbYYSr8h7Ze0o7qfS0Cs7VI=
X-Received: by 2002:a25:acc2:0:b0:dbe:ac83:6c99 with SMTP id
 x2-20020a25acc2000000b00dbeac836c99mr1573535ybd.124.1705155476011; Sat, 13
 Jan 2024 06:17:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-10-de7dfd459353@linaro.org> <ed511811-b110-4fa3-b7b2-b2ec512d4061@linaro.org>
In-Reply-To: <ed511811-b110-4fa3-b7b2-b2ec512d4061@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 16:17:45 +0200
Message-ID: <CAA8EJpqR1u_bW=UZoWYhrU2WbOexJSY7ZXaegVp2P8=aqXqROQ@mail.gmail.com>
Subject: Re: [PATCH 10/13] phy: qcom: qmp-usbc: add support for the Type-C handling
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Bhupesh Sharma <bhupesh.sharma@linaro.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 13 Jan 2024 at 12:48, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 13.01.2024 06:42, Dmitry Baryshkov wrote:
> > The USB-C PHYs on the msm8998, QCM2290 and SM6115 platforms use special
> > register to control which lanes of the Type-C port are used for the
> > SuperSpeed USB connection. Mimic the qmp-combo driver and handle this
> > register.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
>
> [...]
>
> > +#if IS_ENABLED(CONFIG_TYPEC)
>
> I understand some people may want their USB to work without TC compiled
> in, but it looks funky to have a "USB-C PHY" with optional USB-C support..
>
> Should we just depend on it in kconfig?

Well, we didn't for combo PHY. Also both PHYs support working with
just micro-/mini-USB OTG.
I'll wait for Vinod's feedback here.


-- 
With best wishes
Dmitry

