Return-Path: <devicetree+bounces-98320-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7205F965C28
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 10:54:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F0D7DB209BB
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:54:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 075B416F0DD;
	Fri, 30 Aug 2024 08:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tULGSbLv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E917116EB7A
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 08:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725008074; cv=none; b=n66L0hT7wFmGOrewCUE7KQ+WEeZjxDQW5HHrG5S988VyORrk8s6y7lokuMJCRNk6gdFIW4LUomSnKwRVsijRvfkhPW+dkz4nady1nxecXOFytGeAuPFllqWC01GwoGqi8+LFAvhfxcjFynbcebm2dZ6tghkjbtNfpMg90Xfe0PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725008074; c=relaxed/simple;
	bh=HDIME7t6dWh6Y/SJ6jARFKoMpQBsQiZFHIm/1CUWZ68=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A0XA9tPxCESG4BwSchZFl49VxVMvY2IGRscrf9hNnuoyGpVKOZuC06e+ulmZAfDe/5kgOnlJTkV/NgYyvlU9J3s5KET+S/83p41VrSuttnfOFMoq3fNyQcuNrGcf2T0wjq9HGsVNTAYRtYlzs9513NmjyCPmn10FGJ8RQSTUNv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tULGSbLv; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6c3f1939d12so13896717b3.2
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 01:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725008071; x=1725612871; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iOs+ydvRJ2qhJNCxQ73aTsVT+NTo9Ltkz1jj00XSnt4=;
        b=tULGSbLvDjopNRFtNSi1GTVZUN0sn4LN/iQtKrEM0PtuDaaw5gFybVzbdwNOOzRY3t
         y3Cg79rXhTI1b5rdrbRk0WkQ7QFLJ3LAiAB+yAY7w2/RZDUe9XdylKdeeWW8XeFrZUNi
         sio0vmUCIoPewWzTJSgo6DxJSb3yXAlODkUw0ZtiXjqFWhwMkQzvPyxpAqAmhWZ/TREm
         0kj/cKxuBM4y1Lch13013iwv2ow7K+locYmP27CldeffRNSOMc2TNlJoTqLnWyckaIS1
         63WswQO4FDVKLnIVn2PQhRj/I9KxcTyyBvVQpkCVhsmfoNxiaWM632kq11GN0+GLSVmw
         R5Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725008071; x=1725612871;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iOs+ydvRJ2qhJNCxQ73aTsVT+NTo9Ltkz1jj00XSnt4=;
        b=a/We9toPkWe5IKmABA0PUE0nxbLQq1Hciaa9oNXaJnqUdiNuu69XR/qlrHMrMQRvT2
         tUP8o8mdNu3L7zFRGZMx4glNQHd6YFCjGc9HYx5osjsxwjOsOeLcaDOSUR0peRAktY2j
         y+1hVVzt9DU4MWGLynVAMapHNTDH1w+5nNoOG9mZLc8deba2KEumtkhT1Ys4NfrYbRoL
         aOgUHV91krZF2pQwGuLzR9X2ZGGhhaThvynSaYn5okwcgIlT7MPTNlTE74O+lBd8WPvw
         kUG54kuSndc+WUTI2dPXCtANrVLBQr7+emg9lJ3oW6qigj106yW6GhM24mu7Ht+ImS2t
         du7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXl/h9vN4re1kPFW5BuJWPD6Ze4ZlzT/wGiw1cYvBrAThy3gpmKGVa23S+N5LRnOyB9L1lQ8FnUgPo0@vger.kernel.org
X-Gm-Message-State: AOJu0YyaXK3lsIOR1wmHu0+1nhyaLqxu01ajXGdr3yP0SO2mGqDP4zZ8
	Iixbf16RtSzTkz4DASOW1ZrBfg4wnf2SQ3dWEa0qfVCqS/NvZRXzIBdVXh8+l7cwK+y46trR/Zn
	gE8ut3plfhY1qC/xqQMWPFoAw15dh8Nyyo+RJyA==
X-Google-Smtp-Source: AGHT+IHpCk9Ie3tjfELqhlCu2x/52PgQgPKGQSoJw/xeowtbhkwR5jsEK8Pk9v8JuuAsJqiDSu6hAEek5J+97ycmVZE=
X-Received: by 2002:a05:690c:3412:b0:6b1:3bf8:c161 with SMTP id
 00721157ae682-6d40de6aceemr10973717b3.13.1725008070745; Fri, 30 Aug 2024
 01:54:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240818192905.120477-1-danila@jiaxyga.com> <5gmsbbnuc7sbkpptomvpl6aarw5poutvjfav5rilgogb7727vi@nhtr5m24tkmt>
 <ZtGCJincjO7z-WFm@linaro.org>
In-Reply-To: <ZtGCJincjO7z-WFm@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 30 Aug 2024 11:54:19 +0300
Message-ID: <CAA8EJpopMPSBmxJHbatfF+fNoSWipbepyj+7qJRG23WYOCCWzg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7280.dtsi: Fix PMU nodes for Cortex
 A55 and A78
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Danila Tikhonov <danila@jiaxyga.com>, andersson@kernel.org, konradybcio@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux@mainlining.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 30 Aug 2024 at 11:26, Stephan Gerhold
<stephan.gerhold@linaro.org> wrote:
>
> On Fri, Aug 30, 2024 at 11:13:28AM +0300, Dmitry Baryshkov wrote:
> > On Sun, Aug 18, 2024 at 10:29:05PM GMT, Danila Tikhonov wrote:
> > > The SC7280, SM7325, and QCM6490 platforms feature an 8-core setup
> > > consisting of:
> > > - 1x Kryo 670 Prime (Cortex-A78) / Kryo 670 Gold Plus (Cortex-A78)
> > > - 3x Kryo 670 Gold (Cortex-A78)
> > > - 4x Kryo 670 Silver (Cortex-A55)
> > > (The CPU cores in the SC7280 are simply called Kryo, but are
> > > nevertheless based on the same Cortex A78 and A55).
> > >
> > > Use the correct compatibility.
> > >
> > > Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 9 +++++++--
> > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > index 91cc5e74d8f5..ab024a3c3653 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > @@ -845,8 +845,13 @@ wlan_smp2p_in: wlan-wpss-to-ap {
> > >             };
> > >     };
> > >
> > > -   pmu {
> > > -           compatible = "arm,armv8-pmuv3";
> > > +   pmu-a55 {
> > > +           compatible = "arm,cortex-a55-pmu";
> > > +           interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
> > > +   };
> > > +
> > > +   pmu-a78 {
> > > +           compatible = "arm,cortex-a78-pmu";
> > >             interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
> >
> > Shouldn't these two entries have GIC_CPU_MASK_RAW(), limiting interrupts
> > to the corresponding cores? I see that in [1] Rob used masks for older
> > SoCs, but skipped them for newer ones.
> >
> > [1] https://lore.kernel.org/all/20240417204247.3216703-1-robh@kernel.org/
> >
>
> According to the bindings, the cpu mask bits apply only to gic-v2, but
> not gic-v3. It looks correct in Rob's changes. And here too, since
> SC7280 uses gic-v3.

Ack, thanks for the clarification.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

