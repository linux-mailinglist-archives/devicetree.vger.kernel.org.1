Return-Path: <devicetree+bounces-68515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBE98CC7CA
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 22:42:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1330282E4E
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 20:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CA54145FEA;
	Wed, 22 May 2024 20:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KTU6CVYL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCF5770EA
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 20:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716410566; cv=none; b=ib9ZuHcf73ccIJVYc9FmnIGT9TeSjPMlUvbD6fEOZUdLhXewBcTgX5W0LoEBA23bDinBEbuEIJPieLLoPYolZa2clkw0lZd2z/b3lxgSDjQUnWsr6eQ9u9KBkNPAOAn8ESOTt/tZgQ5tKkdfHdBNq8QkeMj/IXJlxKh1znpGMcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716410566; c=relaxed/simple;
	bh=GH8a9YWFjmrvE5LV9apSXfEDSz8b8pwNnV3zU4znXIk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a+WpimIL63abD8kIcaYtnV7zqVcsOwBKMaR1jgm5U5MT8NiEeHry57l/k5i9slW/dG/IzB8CAiBM9Zokh/lk+fsHmCkBNFUzHbZi3JZbRMs9V9yICQItvODz0/mlxhJhRGREV3eguQZ1ZOTeM6/ZM+yu4Qdafyx8u1x4lBlhXw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KTU6CVYL; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-627ecda47d0so9965387b3.2
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 13:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716410563; x=1717015363; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PCB4Xldgcwvrmyw7KvTXZs/6ZjPvLBzZXr/4OPpupIs=;
        b=KTU6CVYLyEATrzqPoDlRe81jkONpUZQfTqrSHK+794YzxEiXFuG2VTSG/evcZ9AtpZ
         HtJg8yrNyGIwW4JAgHPO29fq8j6oFQAV3QkC8NYFmw/b+OkVADUboLNUa1HbkKu/PWgv
         Ua0LW5MCUBFLdrIqSXkd3Ex4qmiYk9r9T05IFZmcYqYA2wGCk+FDZIu/hEzCqEYhhXyX
         4zp8Y/60Pmyoq04o0buvOjwRx5LPqnXLOUHBFhUl6XIBC2mHQPdLA/JzBo48KA5aMXbL
         4kSaUrpqvT2m1iDdjhibZGEFMIZNQ7uckR+8bvAY/sdUNBKBI7IpSjq7Is3JuaOe9M96
         Ig4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716410563; x=1717015363;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PCB4Xldgcwvrmyw7KvTXZs/6ZjPvLBzZXr/4OPpupIs=;
        b=jRc8E4bO4Cu0VNyq+NCt7S/LpLQoD95xIoY0s1jrFx6uHfSTJFft0C+QppBpy1LTJo
         c1qiVJg69w5NqzVw9Ay+CZFHUygH/ImXkiJa2aMGoecAuBkdcp4iHjDm7/7x9oaw7c+i
         rfIshbIO5TUjOoOnUToKAAZcWTATfZMH/pHrn4hsiGbT63jAskdkKEaid7RB3tPqnypx
         BVircz4i7gGCtlyIXXsqeMjbzu7JMUA+EU/6TuYtQi807IugnN+RyVRRpR2F2WtI+RDW
         v8JYfIrMUnEI6QnBTQHsZhYVR2tWxBrs3XXJiC/+YaKsnyWBJ6d3sHf3Gkj58wBlY2q0
         8AXA==
X-Forwarded-Encrypted: i=1; AJvYcCVGI5Jf/F2KLz8z6YEzyO1VMHNWahxzU1c5zBNDzb5SpZ1ZBghiP2ezhj25dq/qcVsZtLN2zfgMvTaX+87E0jWpDs9/+yX+zhJQrw==
X-Gm-Message-State: AOJu0YwN2DW3KKOuFdjqZjl8I5jQRCM/FVyVwzD4LteCoyA2PIOqi7Q1
	jhDWn9XmPKILqCxPqBjMxZEMQX+HGzjXszg4FkHlQvGyHLfD9hl5o1wk1v6cYHTqlEtIsi2a+S+
	JrwBKEmuXtN60IhQW0wLhSBan2XNaSscCo4+RiQ==
X-Google-Smtp-Source: AGHT+IFKh82a/T/1EdhDgnq7pT7B4LlEUERKT7+vPD5V13fvsAaTJt13srw//4tUDRv6+XNQBbRyhIn7lND7BWa0odc=
X-Received: by 2002:a05:690c:f07:b0:61b:e643:58c7 with SMTP id
 00721157ae682-627e472b21fmr40846087b3.28.1716410562525; Wed, 22 May 2024
 13:42:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240521-qcom-firmware-name-v1-0-99a6d32b1e5e@linaro.org>
 <20240521-qcom-firmware-name-v1-9-99a6d32b1e5e@linaro.org> <a553622c-7576-4662-abac-68abe7ea7918@quicinc.com>
In-Reply-To: <a553622c-7576-4662-abac-68abe7ea7918@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 May 2024 23:42:31 +0300
Message-ID: <CAA8EJpoU+C03QC0PaUOYF8oVT+qY+eCRODZPjHCuT3FzQc1WKw@mail.gmail.com>
Subject: Re: [PATCH 09/12] remoteproc: qcom_wcnss: make use of QCOM_FW_HELPER
To: Jeff Johnson <quic_jjohnson@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Loic Poulain <loic.poulain@linaro.org>, Kalle Valo <kvalo@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, wcn36xx@lists.infradead.org, 
	linux-wireless@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"

On Wed, 22 May 2024 at 22:22, Jeff Johnson <quic_jjohnson@quicinc.com> wrote:
>
> On 5/21/2024 2:45 AM, Dmitry Baryshkov wrote:
> > Make the driver use qcom_fw_helper to autodetect the path to the
> > calibration data file.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/remoteproc/qcom_wcnss.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/remoteproc/qcom_wcnss.c b/drivers/remoteproc/qcom_wcnss.c
> > index 421a3943a90d..45fc578ae30b 100644
> > --- a/drivers/remoteproc/qcom_wcnss.c
> > +++ b/drivers/remoteproc/qcom_wcnss.c
> > @@ -23,6 +23,7 @@
> >  #include <linux/regulator/consumer.h>
> >  #include <linux/remoteproc.h>
> >  #include <linux/soc/qcom/mdt_loader.h>
> > +#include <linux/soc/qcom/fw_helper.h>
> >  #include <linux/soc/qcom/smem.h>
> >  #include <linux/soc/qcom/smem_state.h>
> >
> > @@ -555,8 +556,13 @@ static int wcnss_probe(struct platform_device *pdev)
> >       if (ret < 0 && ret != -EINVAL)
> >               return ret;
> >
> > +     fw_name = qcom_get_board_fw(fw_name);
> > +     if (!fw_name)
> > +             return -ENOMEM;
> > +
> >       rproc = devm_rproc_alloc(&pdev->dev, pdev->name, &wcnss_ops,
> >                                fw_name, sizeof(*wcnss));
> > +     kfree(fw_name);
> >       if (!rproc) {
> >               dev_err(&pdev->dev, "unable to allocate remoteproc\n");
> >               return -ENOMEM;
> >
>
> can you cleanly bisect to this patch? seems it depends upon patch 10.
> should 09 & 10 be swapped, or perhaps squashed?

Yes. I think I got this mixed during rebasing and squashing of the
changes. For v2, if the approach is found to be generally acceptable,
I'll squash them.

-- 
With best wishes
Dmitry

