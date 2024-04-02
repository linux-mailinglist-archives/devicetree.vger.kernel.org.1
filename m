Return-Path: <devicetree+bounces-55429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D9289529A
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 14:12:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB85C281B61
	for <lists+devicetree@lfdr.de>; Tue,  2 Apr 2024 12:12:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDC62757EF;
	Tue,  2 Apr 2024 12:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AcA7VeuH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430E46CDB3
	for <devicetree@vger.kernel.org>; Tue,  2 Apr 2024 12:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712059937; cv=none; b=Agcm1Py/d+51YEACFMfJ5MnbgN8zWFFdU8UWZ+bbX0njmvj0RBTcegJOiPtK71HM13rfWL2XuwfWk3+WejM4cmJJ+my7to+jiaCq/PP1BWRHFRY7Ksp642vfNFxju8Zw6uJLdFcBB1HJq1lV2c8pUSSIkSNl1/BiVDVkBD+dInY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712059937; c=relaxed/simple;
	bh=ZU19AXGy1gTKu3ZdKgEYCn04X7EzHEkd9RdcAo9TIfw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FPTb9cWNeRwfVRX3d9P3igaoHazq7BhOxqAJbx6gXCQBpj+6KKpXmZQjpN8Lz/LJ256SatTEoDXdVnjBO6/UvUYAnNc5BTm+IVzA6efJJqEFWodUJF3PyjFpwukLkqnKlPvmIcNx1wXwRlzGRyfyhIAP0tIPKfEWDuJwmwikDfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AcA7VeuH; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-61495e769bdso18929357b3.0
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 05:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712059935; x=1712664735; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=59+8zgH9nKJkFqI+MIO5KUM5XCs5xUxjBY89iFUie7c=;
        b=AcA7VeuH1lsru5Ic48tq2Mzw+fYeKQfYxFjlYwjbhNZqZiMZrNGnc49AfTH8KtU+0b
         DwDdB06Yx0nGgRNQr+uRvtwU83f8Hp8Q3YDSknC+GKmD/9yb6AB6eCA9x8viSNQueEZt
         uYM8BxMdZSBpD3/RlNksTZVVg7LbwVtnYBUo0fvBEt5o++7H3fmcd2+eG1yPEfDqc7T+
         1a2hctcRPBQCQPZ3M+Mo+QUefjmwhsdkQ3xpeXIZV13P9tReqlvrlhdMvX/0ta0IyCJA
         ipaVJnjftUGu38a9Mzynj+RSBpim/6yNCWqHBf5dNy/Y9Z+t1p63iXWoXgRy1kI0ZPin
         hawg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712059935; x=1712664735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=59+8zgH9nKJkFqI+MIO5KUM5XCs5xUxjBY89iFUie7c=;
        b=P02UoL/ooaKokqyd+aGmE4rmMKzvbnI3xaDc0Om7G0xCFwNAWPzg8PPcoNPVMG0QaC
         cWld/LRw0JfEmwP9y/rGYqcJOlkVIgAiMugKQg2bGxolNFCE6VKetTJZXPRCIH+P93u1
         rca2xeNBkIUxtCzMLO3J6ct/C6gxmRZ5zn01kLCmmp6QNnj3PoI9FI3lsLjXyj6kh+tb
         FiTO4phDEibp3iIEZ+iPtkaVzIrVmagLmjHZbRbnh0GZs4Rx7rZsmMrkemf7KbQihpsM
         Adg5gHBN2+Qu40i+FTEUtSjmGJi1Rfz174KH6Ol2pWgCb9rqCZFX+V/m8TCT9dfZ2rrX
         WUkw==
X-Forwarded-Encrypted: i=1; AJvYcCXqWTYkmuGnmVPfTme6Zs5/F9tjJ7U32/xXQtRJnVX5CJxUWSqx4eczITbEgdxKHF26Xt2yXjEQXZ8igQCTQLi6RkbNJwCrwqtdGQ==
X-Gm-Message-State: AOJu0YzLtLuKuxtSQltZuoh14DM/bF9UoK6dDluJ5A9y4hB+N0eV58ao
	dn9egrkzmr3yuMKIa1d5xVvya7lHI5iwBH8euVpRGSUcFbrbjV/ZmQ/4sWh3MA/lRmN9RGg5P+2
	ZZj+OehJVJuPk4Hx/k0R4r6PrfTbBk8Mc1dwmNg==
X-Google-Smtp-Source: AGHT+IFkuZ7UzLaijf9AS20sbPh65/6NkxIIfNCV/NSfdOu3MxTu2vQNwQDFXF16gKf/9sOjZBiIcPSc2VfwYBA43k4=
X-Received: by 2002:a25:8590:0:b0:dcc:a5dc:e9d6 with SMTP id
 x16-20020a258590000000b00dcca5dce9d6mr10343762ybk.30.1712059935303; Tue, 02
 Apr 2024 05:12:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240402103406.3638821-1-quic_varada@quicinc.com>
 <20240402103406.3638821-4-quic_varada@quicinc.com> <CAA8EJpphk_kqzBE7cKb73ipdpTi29t9ZSOOdSfq7pAGSs5NKeg@mail.gmail.com>
 <CAA8EJpo=TMhu+Te+JE0cQzmjLOTDPi-Vv-h5Bch0Wfr_7iVi2w@mail.gmail.com>
 <ZgvlrbvvPNA6HRiL@hu-varada-blr.qualcomm.com> <CAA8EJpp2dgy0DcLoUuo6gz-8ee0RRwJ_mvCLGDbdvF-gVhREFg@mail.gmail.com>
 <ZgvqkhF2mTG82Rx2@hu-varada-blr.qualcomm.com>
In-Reply-To: <ZgvqkhF2mTG82Rx2@hu-varada-blr.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 Apr 2024 15:12:04 +0300
Message-ID: <CAA8EJprN3TuMF-v5PeFW_JUKk+a+MxB7poccZbi9biZNniRnTQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] interconnect: icc-clk: Add devm_icc_clk_register
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, mturquette@baylibre.com, 
	sboyd@kernel.org, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, djakov@kernel.org, quic_anusha@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2024 at 14:23, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> On Tue, Apr 02, 2024 at 02:16:56PM +0300, Dmitry Baryshkov wrote:
> > On Tue, 2 Apr 2024 at 14:02, Varadarajan Narayanan
> > <quic_varada@quicinc.com> wrote:
> > >
> > > On Tue, Apr 02, 2024 at 01:48:08PM +0300, Dmitry Baryshkov wrote:
> > > > On Tue, 2 Apr 2024 at 13:40, Dmitry Baryshkov
> > > > <dmitry.baryshkov@linaro.org> wrote:
> > > > >
> > > > > On Tue, 2 Apr 2024 at 13:34, Varadarajan Narayanan
> > > > > <quic_varada@quicinc.com> wrote:
> > > > > >
> > > > > > Wrap icc_clk_register to create devm_icc_clk_register to be
> > > > > > able to release the resources properly.
> > > > > >
> > > > > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > > > > ---
> > > > > > v5: Introduced devm_icc_clk_register
> > > > > > ---
> > > > > >  drivers/interconnect/icc-clk.c   | 29 +++++++++++++++++++++++++++++
> > > > > >  include/linux/interconnect-clk.h |  4 ++++
> > > > > >  2 files changed, 33 insertions(+)
> > > > >
> > > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > >
> > > > Wait. Actually,
> > > >
> > > > Unreviewed-by: me
> > > >
> > > > Please return int from devm_icc_clk_register instead of returning the pointer.
> > >
> > > Wouldn't returning int break the general assumption that
> > > devm_foo(), returns the same type as foo(). For example
> > > devm_clk_hw_get_clk and clk_hw_get_clk return struct clk *?
> >
> > Not always. The only reason to return icc_provider was to make it
> > possible to destroy it. With devres-managed function you don't have to
> > do anything.
>
> Ok. Will change as follows
>
>         return prov; -> return PTR_ERR_OR_ZERO(prov);
>

I think the code might become simpler if you first allocate the ICC
provider and then just 'return devm_add_action_or_reset(dev,
your_icc_clk_release, provider)'


-- 
With best wishes
Dmitry

