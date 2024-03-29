Return-Path: <devicetree+bounces-54413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE0F89107E
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 02:44:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C6BD1F2391E
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 01:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D756C17BA1;
	Fri, 29 Mar 2024 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mM5Lhc0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2621A10976
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 01:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711676693; cv=none; b=LfjINyor8pSonz1Ekl8yEv0//AXzr5IGY6rX5FoCCVTdhHl/ak4JVcKzRqjQijv0D0TVuFAqvjuiRcYfxSm+6OeieQGtlUJ7yvSZAN0IuAAK7YetsT5vtxYaK+XoGkw1GoMK3jr9ccSwi/ikiSLCdPWp3rbsiBqdnR1OkgsCe8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711676693; c=relaxed/simple;
	bh=gEA8K8t4hqBPN9wzG8A+ksg0xWJK4mQ9uMlSu+sQHVw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T4Um+wqnD8fcbmUu0CyHcocGlJa4wpRxbBaOesVqxrNxK6aoXK0kk83OSUlDSLNO4JXUplYu8vDULeJzdhD4dZtFI3f9j5mPTYn/nnzRtoGZvGRvtpKTll1/bw2GVtzYIZxkIDQ3yBj7u8Vgbs21GTyMdbyaKXwM9HqNSvR2guQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mM5Lhc0Y; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso1370732276.0
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 18:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711676691; x=1712281491; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gNux39GZ9PplhhfClr7WIbvdC+MvZFr9TXEFrMsn6O0=;
        b=mM5Lhc0YVM/b1yf9ozjetAr704YUJa1qPpL/bAcnBE8l1Zlze9DcDuVkAwDAUZ7BVk
         fDIs77jE7Ahx7HcT905rUyHUQeWVJZcFd7v2JFCk2BulBYxYT7mWXCfMLRPN1KhnZ2J/
         crHWkjuZcJPcLz7HcXCSldqcNabXLp0RVGTcm+nz1YgB6acLHLd1KdUjUJw3zdvlQTkk
         OJkPem+Y6/RdTQTzgVOCKZPW1fjJgAO8fcY6NzeOB35hbOd0gA6fzc7Iazqre0VBmneJ
         2dap+kosvCeOSfZoqQPJej+NFGjzSdUNxnRPl5HLyltnE7FOM7LMkVqau2TUJHvbpWz3
         /Yrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711676691; x=1712281491;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gNux39GZ9PplhhfClr7WIbvdC+MvZFr9TXEFrMsn6O0=;
        b=j5An3nnF+dm/MooVeQ3S5ZiB7XwEhms506SAdQSQ71d25D5/2EfIKZjanzWZBY/ITi
         K1RjyLM/YDda9UUYt1wywGs6wbSDa5tld2G0wFNZEBn8SjMyES3DEtch0oI7UQhid9xW
         3q152namYM5/OE0SDg/DJB+3L4oNT0LibPylrlIMXrqLTzsaO0FXAdA3H6T+c/J+5R9E
         8n6CCcXpyuv1KaqbXZ92zbQBVwftdrCHsvOrDyYoPzmoGIOguVC/5SmI8eiTbmqb8S2K
         4DLdoh5g01BClxPLd+Pia0RTfckJNPAFM0NqyATB8PoV3TvXm0J/+glapbBQaHeCzmqY
         KUPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIFBASeiGH8M6a5waBjTq9qd7RcIjFQz8Y5jIIV3nkpq2O09HuSY/UdoK10FuoCiofJwaP3GUFItVIHhOuBYGmxuQgQEhr0o59pQ==
X-Gm-Message-State: AOJu0YxPbKjLkEaN8QtGOhOL0irImFFJhE0w+q1M5Dr0BMMWaeVpoR3p
	1rxreqcyYgBcEv+CGM6Tpa7tFx6hCMtLnm4jokWcTvyEYGYPai2tYbLXsDsaPxBDulbO2oiNb3P
	2TmaNmrC4vwmkolWQAx88PF/nqXFO4VmBdXK5cw==
X-Google-Smtp-Source: AGHT+IGxfnvK0C6jYBVF3IdKUncdJRXqGZuc12A+brjW4rLyifQ3TUqQCJTqSsWeIO2NfwC901j3J8D6X4T+rMTwmHs=
X-Received: by 2002:a25:2e44:0:b0:dc6:d258:c694 with SMTP id
 b4-20020a252e44000000b00dc6d258c694mr2970896ybn.19.1711676691033; Thu, 28 Mar
 2024 18:44:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240326-rb3gen2-dp-connector-v2-0-a9f1bc32ecaf@quicinc.com>
 <20240326-rb3gen2-dp-connector-v2-2-a9f1bc32ecaf@quicinc.com>
 <CAA8EJpoe7A94608V1GdQ-oU9UXagHPm0mVBUe4Yxi=HF2pMd7w@mail.gmail.com>
 <zsjzysb7h3wi3cfpaozl46l4jnsd7e3lxttzm5vptozjx24cqo@vqmyhl65q7ay>
 <CAA8EJppCuoOnaB03GsjXGYSs5Q9iQ2uXHWQqfkPA5jKzdHc8NQ@mail.gmail.com> <20240329013743.GA3476498@hu-bjorande-lv.qualcomm.com>
In-Reply-To: <20240329013743.GA3476498@hu-bjorande-lv.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 29 Mar 2024 03:44:39 +0200
Message-ID: <CAA8EJpp1VBm5-x4W-yGrt+zq9keHWxTrucgsHCYqfLp-Fib1qg@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] arm64: dts: qcom: qcs6490-rb3gen2: Add DP output
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 29 Mar 2024 at 03:37, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> On Thu, Mar 28, 2024 at 09:17:45AM +0200, Dmitry Baryshkov wrote:
> > On Thu, 28 Mar 2024 at 05:07, Bjorn Andersson <andersson@kernel.org> wrote:
> > >
> > > On Thu, Mar 28, 2024 at 03:51:54AM +0200, Dmitry Baryshkov wrote:
> > > > On Wed, 27 Mar 2024 at 04:04, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> > > > >
> > > > > The RB3Gen2 board comes with a mini DP connector, describe this, enable
> > > > > MDSS, DP controller and the PHY that drives this.
> > > > >
> > > > > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > > > > ---
> > > > >  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 40 ++++++++++++++++++++++++++++
> > > > >  1 file changed, 40 insertions(+)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > index 63ebe0774f1d..f90bf3518e98 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> > > > > @@ -39,6 +39,20 @@ chosen {
> > > > >                 stdout-path = "serial0:115200n8";
> > > > >         };
> > > > >
> > > > > +       dp-connector {
> > > > > +               compatible = "dp-connector";
> > > > > +               label = "DP";
> > > > > +               type = "mini";
> > > > > +
> > > > > +               hpd-gpios = <&tlmm 60 GPIO_ACTIVE_HIGH>;
> > > >
> > > > Is it the standard hpd gpio? If so, is there any reason for using it
> > > > through dp-connector rather than as a native HPD signal?
> > > >
> > >
> > > I added it because you asked for it. That said, I do like having it
> > > clearly defined in the devicetree.
> >
> > I asked for the dp-connector device, not for the HPD function change.
> >
>
> I didn't realize that you could have a dp-connector device without
> defining the hpd-gpios, but it looks like you're right.
>
> Do we have any reason for using the internal HPD, when we're already
> spending the memory to allocate the dp-connector device?

No, no particular reason. I was trying to understand if there was any
reason for that from your side.

Then:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> PS. It's recommended that you dynamically switch to GPIO-based HPD in
> lower-power scenarios, as this allow you to turn off the DP controller
> and still detect plug events...

I don't think rb3g2 is a low-power device, but I think this is still a
valid argument.

-- 
With best wishes
Dmitry

