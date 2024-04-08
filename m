Return-Path: <devicetree+bounces-57058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CDB89B984
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 09:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30AE81F2151E
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 07:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8F6536126;
	Mon,  8 Apr 2024 07:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E1y1JihA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223BF47F5F
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 07:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712563031; cv=none; b=hrNJx5/gq5qzV5On/ef8rkFLqpuD8DV1epUYuITsZhw59cvRel0cOXMMi4YdmX4kSRhrAM5m54yGpZyX4/MH5F6YB4UjDAW8ymSzMi1Ql5aaB7YT57EE7VcqAUQ8X+OJj+pXTuGAtmaK+ys2zHZfMqqLFId5xPaEevR8YPXJpm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712563031; c=relaxed/simple;
	bh=ztZdKzdV8XmPTCssOph+R7PEZ4rG55u2ixXVkTEs/Dc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DhnJBijPhS/mawYwjHMKe8y6fkTQJ6mrXmbfM55AD73TSuY3R9UWBGZAgoxWNWhkS5yHbCfmWwp5RrL48JTJ1wgPWJPaSE0uwEqT6MPWHEFqBkBk/0QSUbI65hsttLHrqMUJ22PCGZEy8ihtBqHtuQeNnGivWEGq1HBm8+jSXsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E1y1JihA; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dc74e33fe1bso3671340276.0
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 00:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712563029; x=1713167829; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=42INHqOz8zY6YYtdfVQ+6Fv7DiGos5maAs8ZdDGi728=;
        b=E1y1JihAyKsFBfsLIYR6FGl9DPItNCuFW039dPPfS3S4C0vrvYLeZJU5QcwTYVdSn2
         mRUbW7oRFhOV36dWd7zFdr14z63WW4UIzaXvAxgfD9lyZzmiX7OCKdXP9kMkMdSFKrDu
         wKRJCYzXDwYONxxMoVqWQ6qIJynYsuoCjDbOTVGa3Sgp6+DYXil4BbA0TYFN7Bw7APMl
         q+3QFOklomm3gv/R8uycxfx35lchfU9i5fveaTcSIk9VIkVNfGjtU8vd2prM1EIcQ15m
         wHkpZ0Zf7+vX5jJI/QMakS8ptuId4WVeOjccyR+SEFYHcB088mj7limnNsQzXaHqFD9Q
         MXcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712563029; x=1713167829;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=42INHqOz8zY6YYtdfVQ+6Fv7DiGos5maAs8ZdDGi728=;
        b=PQnr5lGG9B4TBK/MUZNK7quxxCtP0SDMjkMXq0/CD0lmEw7zB/4vt4EdTYxlOm8Jrj
         f1+U7IqkE1vPDlPlYSss9qviaH4ehed6nvm4xQfree6Y+0eHq0GEx8ieBLS4WHbiwXbB
         dAalc5dfFwvFW4u/HHIqfYiZ1FZsBnI60mbodKzMKP32fPS0i+gCbB0DsLRaNXyRmseP
         GL6Lf41k0JsjS7j4fFCdzlW8u7DWvlCRIYyGCojDNzfXDiaJvD5v+HQOq/IfSI91Uu4w
         x0zrAt5RyfkVwkQZrtfddZLHoodv4x8jD+zLaGv+uef7weBcU6knDf5PTQaWeRNc0NzA
         GnyA==
X-Forwarded-Encrypted: i=1; AJvYcCUaeusB4acRl8W9U9XoNyCuKH6XVI9fbBy7NHkQdAIq0pinGli2Y4Z93Q+kddQmzsokVuEhcXs+LishqsFMrT2SXoA5E4vJIIkNVg==
X-Gm-Message-State: AOJu0YxWBooM67Mksd7iOdBulAwYB4OdyrAIfHCW+YdFelipiQbMZ5Q+
	4zXla/taRHuzxkNE1YC98RBvNe3aGIu3F6/lWVFlR5i5W2ysAmfCphxQB8P/uacVzBe3j0Pe+Ad
	h4KqgF5ET5+csSAQyv3QKl5tuhn0MHVoGbMVY+w==
X-Google-Smtp-Source: AGHT+IEjAG+X891MIrzbWhd0+2h8HeWsW4dEnYTVJdLx8WQ2B0jzYicEpw8mgvZ3qBES33KYnneEc7iK5ck1iAmOOio=
X-Received: by 2002:a25:86d2:0:b0:dcd:128:ff3b with SMTP id
 y18-20020a2586d2000000b00dcd0128ff3bmr5923980ybm.38.1712563029085; Mon, 08
 Apr 2024 00:57:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240408-hdk-orientation-gpios-v1-0-8064ba43e52a@linaro.org>
 <D0EJR77G6HF0.2LUJ3XY1YFG65@fairphone.com> <CAA8EJpqUz8anQ9V_Ht67DMrMXw49u9R01mHKDMxnGf-UpXrrUw@mail.gmail.com>
 <D0EJTA1YFZRW.3LWBWJC0QYQ62@fairphone.com> <D0EKRXT8JJCG.DJW8LMIPMWX5@fairphone.com>
In-Reply-To: <D0EKRXT8JJCG.DJW8LMIPMWX5@fairphone.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 8 Apr 2024 10:56:58 +0300
Message-ID: <CAA8EJpo50dsXBD3bXHZQ1zGDt0KPVGJQscOb0gwYSPoSwQR2Aw@mail.gmail.com>
Subject: Re: [PATCH 0/4] arm64: dts: qcom: add USB-C orientation GPIOs
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 8 Apr 2024 at 10:50, Luca Weiss <luca.weiss@fairphone.com> wrote:
>
> On Mon Apr 8, 2024 at 9:04 AM CEST, Luca Weiss wrote:
> > On Mon Apr 8, 2024 at 9:03 AM CEST, Dmitry Baryshkov wrote:
> > > On Mon, 8 Apr 2024 at 10:02, Luca Weiss <luca.weiss@fairphone.com> wrote:
> > > >
> > > > On Mon Apr 8, 2024 at 4:33 AM CEST, Dmitry Baryshkov wrote:
> > > > > Populate orientation GPIOs for some of the PMIC-GLINK-based devices.
> > > > > This leaves only FairPhone5, RB3Gen2, SC8180X Primus and SC8280XP CRD
> > > > > without the orientation GPIOs declared.
> > > >
> > > > Hi Dmitry,
> > > >
> > > > How would I find this GPIO on the schematics, or downstream devicetree?
> > > > I scanned over some relevant areas but nothing jumped out at me except
> > > > for the USB_PHY_PS signal coming from PM7250B CC_OUT and going into
> > > > GPIO_140 of the QCM6490 - but I'm guessing this is something else?
> > >
> > > It is exactly that GPIO.
> >
> > Great, thanks! The PM7250B datasheet and my limited USB-C knowledge
> > didn't help me there much ;)
> >
> > I'll send a patch to add it.
>
> One thing I've noticed now is that the dt schema currently explicitly
> disallows orientation-gpios for anything that's not sm8450, sm8550 or
> x1e80100.
>
>   arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dtb: pmic-glink: orientation-gpios: False schema does not allow [[84, 140, 0]]
>           from schema $id: http://devicetree.org/schemas/soc/qcom/qcom,pmic-glink.yaml#
>
> So I'd think also this series will cause some extra validation errors if
> the schema is not adjusted? Are you planning to do that?

I didn't check it. Yes, I will include it in v2.

>
> Regards
> Luca
>
> >
> > Regards
> > Luca
> >
> > >
> > > >
> > > > Regards
> > > > Luca
> > > >
> > > > >
> > > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > > ---
> > > > > Dmitry Baryshkov (4):
> > > > >       arm64: dts: qcom: sm8350-hdk: add USB-C orientation GPIO
> > > > >       arm64: dts: qcom: sm8450-hdk: add USB-C orientation GPIO
> > > > >       arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13s: add USB-C orientation GPIOs
> > > > >       arm64: dts: qcom: sc8180x-lenovo-flex-5g: add USB-C orientation GPIOs
> > > > >
> > > > >  arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts        | 2 ++
> > > > >  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 2 ++
> > > > >  arch/arm64/boot/dts/qcom/sm8350-hdk.dts                    | 1 +
> > > > >  arch/arm64/boot/dts/qcom/sm8450-hdk.dts                    | 1 +
> > > > >  4 files changed, 6 insertions(+)
> > > > > ---
> > > > > base-commit: 8568bb2ccc278f344e6ac44af6ed010a90aa88dc
> > > > > change-id: 20240408-hdk-orientation-gpios-141bc7fd247d
> > > > >
> > > > > Best regards,
> > > >
>


-- 
With best wishes
Dmitry

