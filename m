Return-Path: <devicetree+bounces-15893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 759667EC381
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:21:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E2121C208B5
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 13:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E92B1A591;
	Wed, 15 Nov 2023 13:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FlzbVDhs"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4403DDAA
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 13:21:39 +0000 (UTC)
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F6B2CB
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 05:21:38 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d9abc069c8bso6652187276.3
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 05:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700054498; x=1700659298; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qmhC7cUoOMTfZNr8tTpl5VWN0/bC5ZVilmLHQGwcmA8=;
        b=FlzbVDhs5FPuEtsQgfwfZg+P5HLgzgGLJlFhk81vB8KES59dcCdJHuk8MAYRhT7H2J
         2HuMN/YuQ5n9TdSresmvEC64GBy+kKDFqoLDuTQEKYUvPcKWWteW2tljkSwNST85YLJY
         0wU6v5hEXDiYO65wGwP4oTMURm1KIUx6jfgeQC3J5NqXAWUr+IJFYiJ0fuMg1Wj50Lri
         q+qi4NAvFxHtAyMsI8CxudB4KBCNNAFbUUJqjkyCBwxDA+Urr74PjDW4jMzH1P2TwmVE
         oculpuRsxAA8BEpaYpyGfutUTAnwTIpigBN9ncveMGZ+bE69iaj33P8UBveZuXC0vVMP
         21Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700054498; x=1700659298;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qmhC7cUoOMTfZNr8tTpl5VWN0/bC5ZVilmLHQGwcmA8=;
        b=roY88+5EybsLZFPsUfu7bd22WyvS/b87yMNlflh7EIssaTuV+AmtTJSqeYIEPJA3mB
         i5FLSumwQRSAfSIDyNzwXYjGdaANfL/aG8BI58ZImo5tHTVET4bD37iLixLBMcjxbawg
         uLJ7cMp0PlMSjpWyFS0b8x5tvD+LK79ldhCxGfNEKlSgtTiPQdYfmEzijGGavUNO0OF9
         O1OSO7mJEON2WxIdrEHxWNRZj06ZNIxTNyuWucYH8Hkivc371pYORPPigbhr2/Ehug6Z
         eHIugDguUhl6xToQUc9HXwiF38b6fVzB78XI/B+FdgwuNYd7NqgnQLtDrZhmnWW7IzPL
         l1pA==
X-Gm-Message-State: AOJu0Yzrkc0K4J+SooGDMCWP1mCiUW8Xdpr7ibX+eWw3MNOeQZQm3Poi
	/YnYQe4LFBKcAqxk/Aue3JE7mfkTB7RkBeC7VqRMGw==
X-Google-Smtp-Source: AGHT+IGosDu2W9oeWYt/RNw56Tl9pnmCGdRN+gpQGKe0jrfOUiv7Tybc5XhJ8xYmVnJpsuRetbjrvZnCAoPAC6D6rWE=
X-Received: by 2002:a25:c5c4:0:b0:d9a:fe8c:c29c with SMTP id
 v187-20020a25c5c4000000b00d9afe8cc29cmr9934442ybe.58.1700054497731; Wed, 15
 Nov 2023 05:21:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1700051821-1087-1-git-send-email-quic_msarkar@quicinc.com>
 <1700051821-1087-2-git-send-email-quic_msarkar@quicinc.com> <CAA8EJprWP3ThYyPZDF7ddG9Awdk9D7ovxes--r0VS3Ma53VqxA@mail.gmail.com>
In-Reply-To: <CAA8EJprWP3ThYyPZDF7ddG9Awdk9D7ovxes--r0VS3Ma53VqxA@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 15 Nov 2023 15:21:26 +0200
Message-ID: <CAA8EJprouEiex2YGuMjJCmwiWmhbYXaUpTBkWhEXpF08iGzk6Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] PCI: qcom: Enable cache coherency for SA8775P RC
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	robh+dt@kernel.org, quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, 
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, robh@kernel.org, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	quic_schintav@quicinc.com, quic_shijjose@quicinc.com, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 15 Nov 2023 at 15:18, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Wed, 15 Nov 2023 at 14:37, Mrinmay Sarkar <quic_msarkar@quicinc.com> wrote:
> >
> > This change will enable cache snooping logic to support
> > cache coherency for 8775 RC platform.
> >
> > Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> > ---
> >  drivers/pci/controller/dwc/pcie-qcom.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> > index 6902e97..b82ccd1 100644
> > --- a/drivers/pci/controller/dwc/pcie-qcom.c
> > +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> > @@ -51,6 +51,7 @@
> >  #define PARF_SID_OFFSET                                0x234
> >  #define PARF_BDF_TRANSLATE_CFG                 0x24c
> >  #define PARF_SLV_ADDR_SPACE_SIZE               0x358
> > +#define PCIE_PARF_NO_SNOOP_OVERIDE             0x3d4
> >  #define PARF_DEVICE_TYPE                       0x1000
> >  #define PARF_BDF_TO_SID_TABLE_N                        0x2000
> >
> > @@ -117,6 +118,10 @@
> >  /* PARF_LTSSM register fields */
> >  #define LTSSM_EN                               BIT(8)
> >
> > +/* PARF_NO_SNOOP_OVERIDE register fields */
> > +#define WR_NO_SNOOP_OVERIDE_EN                 BIT(1)
> > +#define RD_NO_SNOOP_OVERIDE_EN                 BIT(3)
> > +
> >  /* PARF_DEVICE_TYPE register fields */
> >  #define DEVICE_TYPE_RC                         0x4
> >
> > @@ -961,6 +966,14 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
> >
> >  static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
> >  {
> > +       struct dw_pcie *pci = pcie->pci;
> > +       struct device *dev = pci->dev;
> > +
> > +       /* Enable cache snooping for SA8775P */
> > +       if (of_device_is_compatible(dev->of_node, "qcom,pcie-sa8775p"))
>
> Quoting my feedback from v1:
>
> Obviously: please populate a flag in the data structures instead of
> doing of_device_is_compatible(). Same applies to the patch 2.

Mani, I saw your response for the v1, but I forgot to respond. In my
opinion, it's better to have the flag now, even if it is just for a
single platform. It allows us to follow the logic of the driver and
saves few string ops.

>
>
> > +               writel(WR_NO_SNOOP_OVERIDE_EN | RD_NO_SNOOP_OVERIDE_EN,
> > +                               pcie->parf + PCIE_PARF_NO_SNOOP_OVERIDE);
> > +
> >         qcom_pcie_clear_hpc(pcie->pci);
> >
> >         return 0;
> > --
> > 2.7.4
> >
>
>
> --
> With best wishes
> Dmitry



-- 
With best wishes
Dmitry

