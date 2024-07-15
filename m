Return-Path: <devicetree+bounces-85721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DCE931322
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 13:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BAE72829B5
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 11:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BC141891CC;
	Mon, 15 Jul 2024 11:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u6+1WA6i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B691E89C
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 11:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721043280; cv=none; b=R7bokNS3R91c5p7gwIQWYF5PeoySVSlWnO+DVaLvLGU1xlOcHViXOF3p9JQhNL9ElH8SFgVkpcnRDPqCGoKL0Nr2ed0cS0c03CsUVXM0sGLSL3dJTb+P002ymYHX5KygWDRSzsFHGHc8/F4/vptmlJU4sDPHDX6rfrmi1C6zGRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721043280; c=relaxed/simple;
	bh=E6mBSC8ElHiTZyKnY3hPc8mpcA+En3s7+2fII0D2J0w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QYFFK7OVH3hijpaSGYA1k2lFA9AXq2sr+K+6ZZRyglSavyvSvG5vVH1ejKsn/69+Tx6tzGshJ311KHd1rU+tQ1VlWvjE+4JuAI2M8zJH1Mz5uCY/k9U1UAY3p1rqJAbq6m0vVvQ3qQ99lok00rixS3Qm7azbI4bZosn3c0Ry72s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u6+1WA6i; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e03a9f7c6a6so3812311276.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 04:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721043278; x=1721648078; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hLF2QTwHcfWU+cCOWewnyPRM9tr8SbrtNYjr/V5uS+I=;
        b=u6+1WA6idJIb9iI4c+EngFq5BsEPoM6lTq2ifVNw//+Z6GZNwgxS236wamSqG0KTbD
         rE7kH3CFM9T9P81pg4uYSeOlDmnpH8+51D8BTfZIXxJJqRy7zL+nj+fWh219PG7GwmeW
         Fp3DruQVFqHCxsnIyJh8vdWZLfN4v51o7RMIhjxXMvltFq6T87TtTKoLirdK58gLHzBg
         KdKBm8eCpBx35EYPbOWKrtCwpAizUi5NruFLUkE4Wo8dgBGgNoe6AtnPuRjK4CTJYlny
         Q/BoxjKuo++KyN7O8nyDMI3GQuVG4p019g8Vr3dHlynUTObZnOvwLyZAU731wmitaoG7
         K+lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721043278; x=1721648078;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hLF2QTwHcfWU+cCOWewnyPRM9tr8SbrtNYjr/V5uS+I=;
        b=I2tSAswSGqEapMSt3bdyCHNFR3CyHZPyq3xdpUr24BB6RHBm2705DEfBKaj6K85U24
         rbp/NJv+gRkddOUFNuPn17oM4iA1H3D6nhuYQvV76am/T3VVheTq5w54l05Z9GfdBbE3
         P1Mhk/P5BD3zdjY701jbVB+bynO4Dq1zmcqvIm4+a52YvPk7CUDFCzg5MSG6Tj70VAci
         Sl1Z+YN3UIUYEh4DhxLg68r12SfKM1UXf8vJtvG3c0NgUkv990uhz1KXxU7zINAjAU1T
         yhkythqs+6P5cj9P4UACY4KMoqUaz/m/UYyoABJYQyl63WQukph+Rrp4rLexEV9oyK32
         4VYg==
X-Forwarded-Encrypted: i=1; AJvYcCWjGZQrvpKY67FEMywFr8r2903vrr8hgKuzhEu8uWxSivyI9d1JTQ3/15z+MsoREXhnKt7Lv/9XjJC8lekppsqdfsfGPX9KLrHBlA==
X-Gm-Message-State: AOJu0YyPihVZg3E/AGmyPNqeQfFnfDrAe/3UFo2ibYDJv3MothB37jCS
	j2Utvm+LLg+WhU0s/xPvRq4t0HkKJyBq+AKCh0vNy0rAFfwLmvZ07F/wPGk+16NlYqcz3AZzN+m
	+R4dz8Ql09MYQkWMNkkzorTuxuAlB0eRg0UAb9A==
X-Google-Smtp-Source: AGHT+IEOgknY00PdFF074Gq/NtklDAqCV92zohXf0HWlAfSqBXUpd0sF+ISF0QadFc7KrRiSoPziF6L8GOQGiXxwkCE=
X-Received: by 2002:a25:ce05:0:b0:e03:4607:10ff with SMTP id
 3f1490d57ef6-e041b11d3d3mr21076692276.42.1721043276900; Mon, 15 Jul 2024
 04:34:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240708-topic-cpr3h-v15-0-5bc8b8936489@linaro.org>
 <20240708-topic-cpr3h-v15-1-5bc8b8936489@linaro.org> <cd1c3450-1905-4d71-bcdd-5f880d743820@kernel.org>
 <94b2842b-6093-4c4d-a099-3e0a3198b753@linaro.org> <d35f5c94-7a86-4eea-bb0a-3f2785a25465@kernel.org>
In-Reply-To: <d35f5c94-7a86-4eea-bb0a-3f2785a25465@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 15 Jul 2024 13:34:01 +0200
Message-ID: <CAPDyKFqhmNqbZ9Xkg0tWHE5LavoNaGMyE3dKmAFtHdS5=x33NA@mail.gmail.com>
Subject: Re: [PATCH v15 01/10] MAINTAINERS: Include new Qualcomm CPR drivers
 in the file list
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Viresh Kumar <vireshk@kernel.org>, 
	Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, Niklas Cassel <nks@flawful.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Robert Marko <robimarko@gmail.com>, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Varadarajan Narayanan <quic_varada@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Jul 2024 at 16:42, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 09/07/2024 11:49, Konrad Dybcio wrote:
> > On 9.07.2024 11:04 AM, Krzysztof Kozlowski wrote:
> >> On 08/07/2024 14:22, Konrad Dybcio wrote:
> >>> Expand the Qualcomm Core Power Reduction section to include the files
> >>> concerning CPR3+ support.
> >>>
> >>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> >>> ---
> >>>  MAINTAINERS | 5 +++--
> >>>  1 file changed, 3 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/MAINTAINERS b/MAINTAINERS
> >>> index dcb37b635f2c..f3e013a52c16 100644
> >>> --- a/MAINTAINERS
> >>> +++ b/MAINTAINERS
> >>> @@ -18687,14 +18687,15 @@ F:        Documentation/accel/qaic/
> >>>  F: drivers/accel/qaic/
> >>>  F: include/uapi/drm/qaic_accel.h
> >>>
> >>> -QUALCOMM CORE POWER REDUCTION (CPR) AVS DRIVER
> >>> +QUALCOMM CORE POWER REDUCTION (CPR) AVS DRIVERS
> >>>  M: Bjorn Andersson <andersson@kernel.org>
> >>>  M: Konrad Dybcio <konrad.dybcio@linaro.org>
> >>>  L: linux-pm@vger.kernel.org
> >>>  L: linux-arm-msm@vger.kernel.org
> >>>  S: Maintained
> >>>  F: Documentation/devicetree/bindings/power/avs/qcom,cpr.yaml
> >>> -F: drivers/pmdomain/qcom/cpr.c
> >>> +F: Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.yaml
> >>
> >> Maybe combine these two into:
> >> Documentation/devicetree/bindings/power/avs/qcom,cpr*
> >
> > I think avs was proposed to be a subsystem/driver directory at some point
> > and (adaptive voltage source? something like that) and this is the only file
> > in that directory in bindings..
> >
> > Should we continue with this "class" of devices, or should I move qcom,cpr.yaml
> > to soc?
>
> Rather cpr3 should be moved to avs or some other power directory. "soc"
> is fallback, junkyard for things without clear domain.

In my opinion, I would suggest dropping the
"Documentation/devicetree/bindings/power/avs/" directory. We already
have similar bindings sprinkled across various directories, see below.
One less seems better to me.

Documentation/devicetree/bindings/arm/*
Documentation/devicetree/bindings/firmware/*
Documentation/devicetree/bindings/power/*
Documentation/devicetree/bindings/soc/*

Kind regards
Uffe

