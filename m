Return-Path: <devicetree+bounces-44084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1A085CAAC
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 23:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C9CC1C21890
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 22:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92CF0152E19;
	Tue, 20 Feb 2024 22:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nqHapgfW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27F3151CE9
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 22:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708467950; cv=none; b=olnm33SZB20U1UrqrCrA9NSJ6qSoOKf/JBBEaFW0IwNsZ9g10c+gbUzCuhQxK29y1VSZ8N+TgUFBCK9yJtyAXUAUPQosYa8jF4HmHW6diQS9EFu2Fg8DY+zdj3DXqqMLvc3NX2o3M5Jnbqn8gojRZajLRZtCPuVcIqwE5flPec0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708467950; c=relaxed/simple;
	bh=J06Se6Xo5ebKlxuQdbuP2UYEJVjOy3McyouaIS8jBfA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jvdvGuFIuF4P4+FV2lqFzAeyn6giWSxBPQwLhYudoh2KQRqLcHCfd4QrOUqE+IGZeKfmwK7b3r6drSWNaLEFVX74wvEC7U0tgw9kesvV/Cm5jMUOmMDAiQOGvBnTIRxIVIoUSl1sRopkfpgzpGuv1DBMak9CP0s4Ny+UDFgAigI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nqHapgfW; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-607f8482b88so44023617b3.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 14:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708467948; x=1709072748; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lIPUEVY20o8ldO3u4b/ZQSXyrJLSb5UxnC7BJ0m/fR8=;
        b=nqHapgfWnyoUUJI+GKd63vcNcfmMhdv09cyFAHKj8C82armEzvDc8lfWS932vfSDm5
         ygNeB9ghDvLQbEFE/0Flh+JUEoBd5fpYnr8KIoW+V9uux0I9jIoxmPaiD+AY8WdbG51Y
         Gz+dK+i1+hpFtgdfaK1XEQOEvC8LZ4MCX6naiixwv3Iajkiy89zG/W9apg9orGwTF2nE
         ahl10ChWTgJGHV57uxrmpxWOgUyucnm8RKgF872rggu01leMmH/wbnokAofIfFqwsTdj
         LpcuqRpXHf4DuUJKHmH13eirmzgfHnRWcS1VPtNFCFgj9MfPnINu+1JZF59/2gYOQGEl
         aebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708467948; x=1709072748;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lIPUEVY20o8ldO3u4b/ZQSXyrJLSb5UxnC7BJ0m/fR8=;
        b=WXfSVu+i8KZFqXYFx7wt6TqP5tKqRSyl0Ps+5IuSzwOJvZPUtIUUSLp08hYxvs4b5u
         1ORm65Ck4Q+3MxNDAbmG4dc/8wSMpRpAegwfQlezGdcF9y4V4ud/2qgzD91jz+ShnGdF
         gDkTOJdz63/EbFQZrnuuMCkFAptY4F1wofOI76eUsDqxI//7G70M/i9zPFCibL1Lc19o
         +dc6GlnUXTm59fxZU8HXB27nUHJoXq2iutQ1nAoDwX+hMBvxio4//yJOJq8Q0qKtlEYe
         F2fOuMHToXFj2U3m65P/27fTIzFSlD6Ziii4hjSdeXiE2w8eehnaTfgSZcQqBxd9jDz1
         Ik/g==
X-Forwarded-Encrypted: i=1; AJvYcCVR9/1CZqFxaTwLfnhc0yl3bXpiVhEUoIkf+PaW9OPD+hhfn1CbJmMyJN+QY7B2TsrP9BkYsnnli9F/jLHWNpaZOWGh/LwHddiQDw==
X-Gm-Message-State: AOJu0YyujsALMS7nlPW2SbBUmrUMB2uR6xGJxh3FxHGsKJaw8q26Aw4O
	EO7TW9iHfVEP6STyCq9zHbzqBT69iZKn0EQmk07qy6mpVQxdUCjpJwins7YfJ9JmbquitdemeCm
	aVmkiholcggae7WOgw9YUIjSp1YpMppdgDM+dAQ==
X-Google-Smtp-Source: AGHT+IFRTbzCjaFBDMvB4KVjs3BlRUJqfdyP47yveGvVd+LVPXlYHo6fEzJ+W3hSU/nfh+k2Ix1UuUvjjOtDNfNWH9Q=
X-Received: by 2002:a81:99d5:0:b0:607:775c:7d30 with SMTP id
 q204-20020a8199d5000000b00607775c7d30mr15165574ywg.5.1708467947738; Tue, 20
 Feb 2024 14:25:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240204-qcom-drop-compat-v1-1-69d6cd92aa0e@linaro.org>
 <ZcijFk9GcgtVoXoV@gerhold.net> <CAA8EJprKfMGTAtaMm1YoioRLDOtjXQ4XGm8geURB5WVXdYUK0A@mail.gmail.com>
 <ZdUVfHa5SvoWbc-Z@gerhold.net>
In-Reply-To: <ZdUVfHa5SvoWbc-Z@gerhold.net>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 21 Feb 2024 00:25:36 +0200
Message-ID: <CAA8EJprwK9OXLmxwh6wR1ij592_J2TpKKnuNGg98pt8iLF5PGA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm: qcom: drop the superfluous device
 compatibility schema
To: Stephan Gerhold <stephan@gerhold.net>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 20 Feb 2024 at 23:11, Stephan Gerhold <stephan@gerhold.net> wrote:
>
> On Tue, Feb 20, 2024 at 11:11:15AM +0200, Dmitry Baryshkov wrote:
> > On Sun, 11 Feb 2024 at 12:36, Stephan Gerhold <stephan@gerhold.net> wrote:
> > > On Sun, Feb 04, 2024 at 06:56:35PM +0200, Dmitry Baryshkov wrote:
> > > > The idea impressed in the commit b32e592d3c28 ("devicetree: bindings:
> > > > Document qcom board compatible format") never got actually adopted. As
> > > > can be seen from the existing board DT files, no device actually used
> > > > the PMIC / foundry / version parts of the compatible string. Drop this
> > > > compatibility string description to avoid possible confusion and keep
> > > > just the generic terms and the SoC list.
> > > >
> > > > Fixes: b32e592d3c28 ("devicetree: bindings: Document qcom board compatible format")
> > >
> > > FWIW: It's not correct that no device uses the version parts of the
> > > compatible string. There are actually two boards documented in qcom.yaml
> > > that follow this scheme:
> > >
> > >   compatible = "qcom,msm8916-mtp", "qcom,msm8916-mtp/1", "qcom,msm8916";
> > >   compatible = "longcheer,l8150", "qcom,msm8916-v1-qrd/9-v1", "qcom,msm8916";
> > >
> > > I don't think anyone is actively relying on those, though. I guess we
> > > can just ignore them or even remove them.
> >
> > Excuse me for the long delay. As it was you who added the
> > longcheer-l8150 support, does it require any of the msm-id options or
> > dtbTool (original or modified) processing?
> > If it can work with no additional tags, we can drop these compatibility strings.
> >
>
> I think we added it back then to allow booting mainline with the
> original bootloader. Together with the "skales" dtbTool (used to be at
> https://source.codeaurora.org/quic/kernel/skales) the compatible does
> result in a correct QCDT that is accepted by the bootloader.
>
> I doubt anyone still uses this way of booting nowadays. In postmarketOS
> we strongly recommend everyone to boot MSM8916 devices using lk2nd [1]
> which supports plain appended DTB without special properties and other
> more reliable forms of DTB selection. I have not tested booting mainline
> with the original bootloader for many years.

If I remember correctly, if somebody wants to boot msm8916 with the
'original' bootloader, they will also face issues with SMP support,
etc. So let's drop that.

> Dropping the extra compatible would be fine for me. Personally I don't
> consider booting via weird/broken bootloaders worth supporting (at least
> if better workarounds exist). Having to boot with "custom" bootloaders
> tends to be a somewhat subjective topic though so others might disagree.

I usually prefer to stick to the original as much as possible,
especially for the end-user devices. But in this case I think it's
beyond possible.

-- 
With best wishes
Dmitry

