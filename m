Return-Path: <devicetree+bounces-84778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E511792D8EC
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 21:17:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 146B91C210D7
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 19:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78876197A8A;
	Wed, 10 Jul 2024 19:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FanuGeMj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0C2195FE0
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 19:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720639044; cv=none; b=QNQOA/m5Rd8M79GFIb+/Xs12agPKkYFAkOU0n/4qpYPjwSwNR8Bn/lZygGyMj3wAcabovCKL0uNIjkEj1LAz1qcM6nsfHaO5CyxU9S9ootNrCYxNaw99BxjdeKtOO41KdVuuV+fKioVQXk7rfToMKiyIWaRBSirJLRNTmx5LMdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720639044; c=relaxed/simple;
	bh=eble5/KJqCeozSW1njrXYIJ6tIyz2Xy8oZVn7c8VBIg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=or5Ei3qVleTSkbcZIcGiEyAHWc2a78cyy2pVZNSMIUlmpElFaZDwonYaN8533B68nt9rVdABlgosCB855LC0hPPLt6q1p+gZaY8KBcGtoY4m/BjhjqB5yc/uzZ8IEUNEnLGKzr8oazvTvanIotBPKbL9pNMyR/w7PriZPSUGAZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FanuGeMj; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-6f8d0a00a35so36429a34.2
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1720639041; x=1721243841; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eble5/KJqCeozSW1njrXYIJ6tIyz2Xy8oZVn7c8VBIg=;
        b=FanuGeMjkeMnhxK6O7naqdjxZibFMU4f6vhZTp8o671XV7JBKbl4HtWoNaxlF0HSoX
         QuXnUQ4ykxIK9zrn5e+vZHfx59vMcDG/CjK7yMQzwnwJRT7OsVzDCJdYn12BYSsgY0Dh
         fYOMg/GHgF4SnfuWxsIyiI8LjzXPAGryGFlAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720639041; x=1721243841;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eble5/KJqCeozSW1njrXYIJ6tIyz2Xy8oZVn7c8VBIg=;
        b=P7jhndUsfZ/BYhgob75CJL/SJNUDJhYSyslwJ96SyT5wRo0sOoMaT2v/aJaDMKvkn+
         cLk7+w8Ndmzb4b/scdS5rcA1EiBkRmBM/u7cR4HML4R4L2GDqeKOsc/w/ORq3aallGUJ
         aPKv7ygiTNfdf6U1YRf0j710oBb06b7dQFkf9wY6h7atNCfLrzUjO2JohGTdesob9hae
         H+MHjtidNqpewFIDF/Ab+MiQQqmJjxid6JzGjzLA2DS7/iBQea4ot3tV2PC8s7psBQuH
         3biXFoVV6coFuUViZRINNt9YrfEU3s2iXdl4Jc7lN9awe7axoLa1ICLCmwLPNeofY9jl
         YpCA==
X-Forwarded-Encrypted: i=1; AJvYcCXZzD86SxYA43WKAsVdExn9KpwEBwoeNvTWjJSwbIz5mRix4LbQQ9tgpwoN0AUuIMIOz0IeStyBvIhNGqEr4Wh7GGwLjvWvznvlMA==
X-Gm-Message-State: AOJu0YzCruRK5C4Hep0ZkqfFyZq6uBfcUUZXw9N7UE68CHi8KT5todey
	rUs86h/gTmRNXuzZUYc++viJV6+JrCfsdnjmjPfV9/C+4v/RxXn05b4L47DOcvszPdxyEybYfuW
	Xhw==
X-Google-Smtp-Source: AGHT+IEPODxojQjeeWP7Xhi6K+XOpcKdXauOGy3IJGtMFZ/hLb8pyPksNtk59RbYlAtsIz+oQUe0pw==
X-Received: by 2002:a9d:634f:0:b0:703:7775:c6c2 with SMTP id 46e09a7af769-7037775c74dmr6867458a34.33.1720639041069;
        Wed, 10 Jul 2024 12:17:21 -0700 (PDT)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com. [209.85.160.181])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61ba02f71sm19379616d6.57.2024.07.10.12.17.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 12:17:17 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-447f8aa87bfso85731cf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 12:17:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVRkZ90+5I2IxLHu+TsYsatEaSIOad4yvAxCJzsQIDeL/rrg4/v9/Tocd7FEX5wMXRwgkBBDcEVzfPAEnEVmY1pOB/9cx3eaz1H3A==
X-Received: by 2002:a05:622a:4cd:b0:447:e8bd:2fbe with SMTP id
 d75a77b69052e-44d0d631091mr605041cf.1.1720639034173; Wed, 10 Jul 2024
 12:17:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org>
 <20240710-x1e80100-crd-backlight-v1-1-eb242311a23e@linaro.org>
 <CAD=FV=XJuV12mStW3eUm5MHG8BA9W_fn0skN=BrtmqC+fnCZig@mail.gmail.com> <Zo7a6qso7RZ2pkmb@linaro.org>
In-Reply-To: <Zo7a6qso7RZ2pkmb@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 10 Jul 2024 12:16:58 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U_knZPsM3jnpUOqK7rcBjJeqPAHDG9QRgWhLVeKGZwGg@mail.gmail.com>
Message-ID: <CAD=FV=U_knZPsM3jnpUOqK7rcBjJeqPAHDG9QRgWhLVeKGZwGg@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: display: panel: samsung,atna33xc20:
 Document ATNA45AF01
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 10, 2024 at 12:03=E2=80=AFPM Stephan Gerhold
<stephan.gerhold@linaro.org> wrote:
>
> > 2. In theory you could make your compatible look like this:
> >
> > compatible =3D "samsung,atna45af01", "samsung,atna33xc20"
> >
> > ...which would say "I have a 45af01 but if the OS doesn't have
> > anything special to do that it would be fine to use the 33xc20
> > driver". That would allow device trees to work without the kernel
> > changes and would allow you to land the DT changes in parallel with
> > the driver changes and things would keep working.
> >
> > ...and, in fact, that would mean you _didn't_ need to add the new
> > compatible string to the driver, which is nice.
> >
>
> Yeah, I considered this. I mentioned the reason why I decided against
> this in patch 2:
>
> > While ATNA45AF01 would also work with "samsung,atna33xc20" as a fallbac=
k
> > compatible, the original submission of the compatible in commit
> > 4bfe6c8f7c23 ("drm/panel-simple: Add Samsung ATNA33XC20") had the timin=
gs
> > and resolution hardcoded. These would not work for ATNA45AF01.
>
> Basically, it works with the current driver. But if you would run the
> kernel at the state of the original submission then it would behave
> incorrectly. This is why I considered the resolution and timings to be
> part of the "samsung,atna33xc20" "ABI". The new panel would not be
> compatible with that.

Ah, oops. My eyes totally glazed over the description since the patch
was so simple. :-P Sorry about that.

IMO I'd still prefer using the fallback compatible, but happy to hear
other opinions. In the original commit things were pretty broken still
(sorta like how it's broken for you using "edp-panel") and the
resolution hasn't been hardcoded for a long while...

