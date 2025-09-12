Return-Path: <devicetree+bounces-216491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E35F2B54FA0
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:35:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C5CB5A58A9
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 13:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AED2630F535;
	Fri, 12 Sep 2025 13:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HZY+ICV6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F261627BF99
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757684095; cv=none; b=lfXTVSXQH+kh7DCYeXKae5EKxfe5nDpmfE0T7ttQ8GlDu2Hpua2MlqC+gPUcy5K0HB76NZ/AFxyN9EiyR8AROHyQFzMeaQ65SZZc4tdohLXdjFKfgqbn5M6cZTK9qrbivrA7mzUD/1sLN5mIt9G3m3NkUC3YGJOeZc7cofTXlFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757684095; c=relaxed/simple;
	bh=fEA2x43XLCIFZ1HAK3Qmgt2WPelPhB3G6VX1hKyr04E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EuRinNcVO6/zRz34BmD4dOxGcRkiGgHuyVpuCEn0I6m4+pu6bUZVVjM0zh7UmCRKFMNlF9FeT8CkCw92xiwbtfz9d0/vvI6EtNUWtHxvRI0UY/2vp98Xfp7eQPeIKYhQ83dwyKdl/lnj4ZeHOYrBKg90HPgp+THENG1GB+vGwW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HZY+ICV6; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e9e137d69aaso1347667276.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757684093; x=1758288893; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2bpJdu9pcJQYlguGDM8bqSYyNGG/RarwGDha2QaDV7I=;
        b=HZY+ICV6iudkiQNYe2sLLea4NT501Dw4egsi9L6nTGUS3TP4likQcWCh0l33zEkBor
         qld7HSDUKGCUZ3+K0pF4lA1NirUluSRDV7pIkFP+hsPRrt7d8IVtUvbAqpgAtK/rMYs3
         ggav0uF00M845sDJV/DSYbF8jXSMUNnFIPASX80UqZyWNik35Qs+raHmfHG/lGH+933g
         CQB8WuC2LHrS3Tdo296WX3l/jWoi+AtyWBkgtjg9iY8nsGB/DEVUNeDQ4gFAkY+ayQoe
         gMTiOLlY43MuWoA4ffPTPYUnyJz8bzYTCWyahejh6QpwdZqjTto+O57VOagO0Y1NYmte
         SESw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757684093; x=1758288893;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bpJdu9pcJQYlguGDM8bqSYyNGG/RarwGDha2QaDV7I=;
        b=nT1P1lRCG08JNhbhxSfL+jMZgGDjEQpgV76WLEVU3O2zG+R2tFqTdPBoDmBTI8lOJF
         CJ2fQEMQ31lQAcldFnV+YfgTi5gbWSGKFx8uAkUjeUZiSWzh66W2q4V8MnGuXbcommWg
         fxyDnmgyTKXmigpkC4nuU+zKlCRbc3/vVUJFguZJFJTRwdW/COQOyovqyJRzvIZNZp/Q
         3M5atzUPNASSUfOvh9amigL4+9BLy8+SlFcN956ChamuvOBqrdD8IAiB/rHLnUbGkH5o
         1qMioeAQo5WaqvFpPn8jJDN5ePf+RUz7E4q5dZ+g6fLRE/OdO6gNB7ErnqdeiJLehRyS
         rXaw==
X-Forwarded-Encrypted: i=1; AJvYcCWYC6XJgd907QzZB2s+zPs5AVZwFVARELOwqcPBnxa0ERmDCrU2f9x0YOuoSQGXNL4ivlymI1HD+MHm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8qMUFcf3+gO7q3rtbZWklfe/VzlunHJ9lzRdIhuImCA4r1B3S
	iU1ezn1aCwpuW/L0B6ZPHh/LW440AuxFhb2WB5rqnE8icEfU+mRaqCjoYL0Z9j6HhWwODy1y4/V
	DTwPukV64k2ie271RlUJ9Ez3rKXeYFG0gCE/wdhkwcg==
X-Gm-Gg: ASbGncs12pzlBG7fD3qRS1LaBUATqWz0+mETgxsxQc/eR4zMHHfd1sYgUooS1NISDsq
	M35UvKXhOQ4uA+tXyFknbgP46BOaQbeEdhUmwwj9hBTRylMRZ1AwcBcrv6+01VvJWbqn1qEwLyH
	5wMhJrt2DyI8p1S6isk8u50yXW7qg7tCZZuTJ4wJWMrcjrwbucH1JzltlB/Ib4lSYH6BlNIGYNh
	hp0O4EZHiZvPUPy8F8=
X-Google-Smtp-Source: AGHT+IEuZCNOuhgw71RPHODJCaUVdzYWPbD3/yFfpzIGoCGg4ZN37cLNl53g3621ReprRkmpK3fxKWmw69qSmb5zAxc=
X-Received: by 2002:a05:6902:420a:b0:e96:cb0a:de1e with SMTP id
 3f1490d57ef6-ea3d9a52b30mr2169012276.24.1757684092934; Fri, 12 Sep 2025
 06:34:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
 <20250908-lemans-evk-bu-v4-1-5c319c696a7d@oss.qualcomm.com> <aMP+cdmPkej+lPtN@hu-mchunara-hyd.qualcomm.com>
In-Reply-To: <aMP+cdmPkej+lPtN@hu-mchunara-hyd.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 12 Sep 2025 15:34:17 +0200
X-Gm-Features: AS18NWClkCqcmoRAoe-mTGNfJBFQQqeUo2elvNw9ONlW9bzSgs8qRR9fnA2vWEI
Message-ID: <CAPDyKFoZEWyysS+WT=JBY388kFgKUeUL5hxm1wL1pmn+NUAEhA@mail.gmail.com>
Subject: Re: [PATCH v4 01/14] dt-bindings: mmc: sdhci-msm: Document the Lemans compatible
To: Monish Chunara <quic_mchunara@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Richard Cochran <richardcochran@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com, 
	Wasim Nazir <wasim.nazir@oss.qualcomm.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org, 
	linux-i2c@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 Sept 2025 at 13:05, Monish Chunara <quic_mchunara@quicinc.com> wrote:
>
> On Mon, Sep 08, 2025 at 01:49:51PM +0530, Wasim Nazir wrote:
> > From: Monish Chunara <quic_mchunara@quicinc.com>
> >
> > Add the MSM SDHCI compatible name to support both eMMC and SD card for
> > Lemans, which uses 'sa8775p' as the fallback SoC. Ensure the new
> > compatible string matches existing Lemans-compatible formats without
> > introducing a new naming convention.
> >
> > The SDHCI controller on Lemans is based on MSM SDHCI v5 IP. Hence,
> > document the compatible with "qcom,sdhci-msm-v5" as the fallback.
> >
> > Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> Hi Ulf,
>
> Could you please pick the binding (this patch) through your tree, so that the DT
> Maintainer can pick up the remaining dts changes through the qcom tree?

Sure, I usually do that, but sorry for the delay!

Applied for next, thanks!

Kind regards
Uffe


>
> Regards,
> Monish
>
> > Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> > ---
> >  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> > index 22d1f50c3fd1..594bd174ff21 100644
> > --- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> > +++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
> > @@ -48,6 +48,7 @@ properties:
> >                - qcom,qcs615-sdhci
> >                - qcom,qcs8300-sdhci
> >                - qcom,qdu1000-sdhci
> > +              - qcom,sa8775p-sdhci
> >                - qcom,sar2130p-sdhci
> >                - qcom,sc7180-sdhci
> >                - qcom,sc7280-sdhci
> >
> > --
> > 2.51.0
> >

