Return-Path: <devicetree+bounces-89036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C4493FCC9
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 19:50:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DDBD128392C
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 17:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7BF31741D1;
	Mon, 29 Jul 2024 17:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DrZK72TN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64ECA158DC6
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 17:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722275402; cv=none; b=mxhv41a+3k8EBlWt5KI9RPXBWb9g2lEYMLQGEkhZLsiPr3/0eoiIwlTmEHiUWPmDUWGluYAhg7Ajot8O4yIT6QHzV46MTDG/y8/dZPA1nPcRQZJFYkw4EnEIVf4aNVSz/hzzA3Zh0K5XI72TSgAjeWd98CNE48y9a4P+p8Zwcwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722275402; c=relaxed/simple;
	bh=bihYQoBOOiJiGuf2B6GESNpxVhKjMGZpNIOW4gqLU2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rL8TnsskHLKHNcR2zXN6vKYuMlvd4p1qzZGvAZ1rlAl8c0HfOnNwyyYN7y4Mf9fos178YnwgqWY4AojjC2E5M2ar3LtvnQyZFDdScfK5HNAIPNJcbVVrcQu0mTgXHVCDaN1p/cCSiW4rE0agiAnviUJMyZtGqFyaGmjxfL88Q50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DrZK72TN; arc=none smtp.client-ip=209.85.128.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-64b417e1511so24573487b3.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 10:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722275399; x=1722880199; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=U48fpdCm4NGtwo1sTgsrUBIRZd2qhEbh1HbahK/oVr8=;
        b=DrZK72TNN2Bw9yhAy8wcAzarLK+KX8QP0P5ydHneLlLRYIXNOUCvu9lxO9Aqxo/kso
         b1KBujIOyzuDQK9sd6JWAwk3cKBbRif9IOohVQ0q5GXxz4mrhOM4uCrRF37y2RQappqm
         M7k2/zGbv9RwsedClBsBUjHii8dXkrZEt4a5JtF2fLJKaflJW++0f9a/RGd4/2TR0hq6
         lqncgsk2EYDvF98zG+tiVY4wSPEPMHhmLtMvE6+cmbu5E9apSyluqoWfcUAUj/Vi5VhX
         s8lHL7DKT3wFlZSNje5x11NBvZv5/DcasPdmvqnVm6jxeAtBe8gofDbSPhEgI7s7CuAo
         k7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722275399; x=1722880199;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U48fpdCm4NGtwo1sTgsrUBIRZd2qhEbh1HbahK/oVr8=;
        b=Eh3899yxpLFOD/8nKkDAYezQIZv0jG3VajKO2grk2T5lghkhlN7Ifct9OSFMF6z80m
         Ve+MnwK+JbafWvUY1CBj29MBpylTyECxHXOXFtomkQrgQJ8B4LX/ZzCIU+fxjjTuBDsa
         9URE7gz4qfk4SAuqNYZAA4dOer9ucOWEVQ4o7K1QgHbpZrnN8Q544t7xk217D1qdYEbg
         8OI+AIRRPwLfz4TARiIYo6j+4ymHGmzi3dCAXkW9SKPPacZNsR4WcSDnDhDBOaqz3cl2
         fQmmQl/7K8/Ipnjn5HVh/a6k4HA5TrgrehEFAxPqShNbweTN57CcJT5giX6KZbv48/w7
         L5IA==
X-Forwarded-Encrypted: i=1; AJvYcCVqbkdQKoXOoT8X6RDOD9I3Bvh3Tv+wRq8VLNXuGOQnMsYqWYpET5zjLNxPteEshRHO+zqO6Iqxl1eOuYao06HFZ3oNXIUKpZGn1g==
X-Gm-Message-State: AOJu0YwmUciS3RbrztG168WAdVxFtahdsTRuolvBLTtARdh8Am3Ih7nR
	qAlnvYHG+XLB4vGzq5E2qGQ39IrpRmN6o5WuTBYbpRW/M2CcEdf3P9of2rPqH4p62bzsUo/6yj7
	OAbBjFe9PGUWw0Sp2+pqqFhWRjekr/svdeNLhhQ==
X-Google-Smtp-Source: AGHT+IGyAtQWoTJobqaZBwhClULReeX2eVYFV263RkPuVkU/hSqxYd91PSjHx1mgomnc4KTeZggZZGZiQG6l1PmOvJM=
X-Received: by 2002:a05:690c:3384:b0:675:a51b:fafc with SMTP id
 00721157ae682-67a0959640fmr100729907b3.30.1722275399444; Mon, 29 Jul 2024
 10:49:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240729-fix-smd-rpm-v1-0-99a96133cc65@linaro.org>
 <20240729-fix-smd-rpm-v1-2-99a96133cc65@linaro.org> <6c5acb84-0d09-4a87-adb2-d0b10c67b98d@kernel.org>
In-Reply-To: <6c5acb84-0d09-4a87-adb2-d0b10c67b98d@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Jul 2024 20:49:48 +0300
Message-ID: <CAA8EJppO_fohT_NWJ1P95YYejgAnZQdzrBpz7Ooceiu-t_MkQg@mail.gmail.com>
Subject: Re: [PATCH 2/4] soc: qcom: smd-rpm: add qcom,smd-rpm compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Gross <agross@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 29 Jul 2024 at 18:04, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 29/07/2024 13:04, Dmitry Baryshkov wrote:
> > The device node has the compatible string, so the glink channel name
> > isn't used for modprobing. Add the qcom,smd-rpm compatible to let the
> > module be automatically loaded when required.
>
> So autoloading is not working? I don't understand whether you are fixing
> real issue or just making something complete based on your feelings.

Yes, autoloading of smd-rpm is not working since bcabe1e09135, kernel
looks for qcom,rpm-FOO rather than the rpmsg:rpm_requests.
The obvious fix is to revert the commit, but I don't think that
listing all the chipsets there is a correct thing.

> >
> > Fixes: bcabe1e09135 ("soc: qcom: smd-rpm: Match rpmsg channel instead of compatible")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/soc/qcom/smd-rpm.c | 11 ++++++++++-
> >  1 file changed, 10 insertions(+), 1 deletion(-)
>
> Best regards,
> Krzysztof
>


-- 
With best wishes
Dmitry

