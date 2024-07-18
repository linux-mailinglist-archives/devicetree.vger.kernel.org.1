Return-Path: <devicetree+bounces-86610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19943934F85
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 17:00:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62F2AB23DE9
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 15:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50B7A142E9F;
	Thu, 18 Jul 2024 14:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UjKM6fa8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E0613FD8C
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 14:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721314789; cv=none; b=T9nUNjgtrBDf2tcDwZHfR9vnRX6TaxYbqRuQ1UQa82hCAR7vTDNOaE3O/JKdeZ6mwibq/DeAaBzrYpLToerUydsBZjwMuCm/5v8HD/gPZw5MYksw/dq5B/Zo6SH4v8cLkds962RtiUWYNhNSCHK34oxMvtZaJiXZVbvplSUftw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721314789; c=relaxed/simple;
	bh=e3SitwwNRxOezNxrVf7ltI49ObqvXDJq0gyT1yrldMw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=io78bvOZLT5Y3z8vhdbyU9jl/UijanZ9OCoMyQNFda4t00l2axFq3O5CMnhx9+bkhW9OgrNg55JFCtTxmLpXfP/JZ/poz+Xwowd50cUuuSd6kfvkoEHw3TQQCKmJ7nNW/XEP4BaNNVM2BtO517UO+cdTV1ZaTbSCJeLftYe89O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UjKM6fa8; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6561850a7bcso9625827b3.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 07:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721314785; x=1721919585; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e3SitwwNRxOezNxrVf7ltI49ObqvXDJq0gyT1yrldMw=;
        b=UjKM6fa8DbzpzUYpyGVK/rqY3pViBRQ505PO2Wg3WK4wyzqLXsKxQy4ycTrBd9Pi5L
         XdOxPrmx3PWl7sewDaEbm7oNiqo2WdE3KCE8kJ7EACdNc0c3i3ANJbxEZr+6+ENIiSjk
         ZG3AWQb2Yc00c+L4pTLYoBHJ9f8Tyt9mxIQBI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721314785; x=1721919585;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e3SitwwNRxOezNxrVf7ltI49ObqvXDJq0gyT1yrldMw=;
        b=gKDFU/3QZj1VQJePYwRZral4qASh0Lv0ESpN/3XmKYB6TpIlhJnBpSgLVl19is/e6k
         kC7OI7qTpfCSaxf02m9WHYtzwhaSA8a/62nauZg5gjDLVZnFw86vTvLvI+e+sD7i7CWZ
         omE+UAoagA662mLAwuiaPm9owvYJOkmFGtN9DoOKJ7HV0zbBkcklIlnN7sXg4xrWvUWV
         Yd4D9e1khHZVeGXcxMj/BjV6DIGU9gQpaudmuYktDWiHGShb2Mps5kTmlCD1Q1RV1/8b
         zrNxpOBWm1jChynqs3ob+dmqI4RszaPDyesTPtDDaEUZvJYoyucL7uRBCzgSg++bMQY0
         sF6g==
X-Forwarded-Encrypted: i=1; AJvYcCVW1b1Os8MUnAgO37iVQvWHjwLMBmfffah9MSeyo70bN33NhZT1hWWt8SW1wZeWvLDk+oX4k8+7e0JsyT6B8BD0c9gYJw8nsrqFDA==
X-Gm-Message-State: AOJu0Yy+d04GSp2C4S1ywTxbnHEAPGwh1CAWWhHrdzrgA9OZ6wGZBxFO
	73x7/MYRlbEn6IcB1Rw/DWmoJg7nMEdI7+oMpM+ONthPgHgPlH8TgiiWdOMUamfuzNevEkgbJEc
	=
X-Google-Smtp-Source: AGHT+IEJinj56IUyaTRtDRID/WcHxh4+0yXePlxS98RbZwWezOenbe7Rv1jsJDlJW3DcELDWVka+KQ==
X-Received: by 2002:a0d:da87:0:b0:627:88fc:61c5 with SMTP id 00721157ae682-664fe9350d7mr59745037b3.14.1721314785463;
        Thu, 18 Jul 2024 07:59:45 -0700 (PDT)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com. [209.85.160.181])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b79c60b1b0sm8757976d6.77.2024.07.18.07.59.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jul 2024 07:59:44 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-44a8b140a1bso111801cf.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 07:59:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWCZEB7HgtiN3zc6/rVLvQqmFuNU9aBG0ZYer89Co5u3eWWXwY8qCGRpKnO5GIQDNyhj9eJCBzGbN9l7opHsL8lqXMpRGgKXbOfJA==
X-Received: by 2002:a05:622a:1f88:b0:447:e423:a463 with SMTP id
 d75a77b69052e-44f969881c0mr1553511cf.3.1721314784304; Thu, 18 Jul 2024
 07:59:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715-x1e80100-crd-backlight-v2-0-31b7f2f658a3@linaro.org>
 <20240715-x1e80100-crd-backlight-v2-1-31b7f2f658a3@linaro.org>
 <20240715-scorn-canning-a7f23b9e2039@spud> <CAD=FV=U-nOMu-JDQ3T=ZRJ-rZ0BTtyzFVfnzbtCJdbRzAq3YMg@mail.gmail.com>
 <e017259b-bc62-4b57-9276-b834237225e1@kernel.org> <CAD=FV=VY5Ug3TfUo1RctiVQrHUjuod15HA8BxAyWdd_0bK8_Dw@mail.gmail.com>
 <20240718-frightful-naturist-a049ea7c0548@spud>
In-Reply-To: <20240718-frightful-naturist-a049ea7c0548@spud>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 18 Jul 2024 07:59:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VaGXMf6Srix6v=Me35BUN4B6ZHwebycka4Dbavqa5Vbw@mail.gmail.com>
Message-ID: <CAD=FV=VaGXMf6Srix6v=Me35BUN4B6ZHwebycka4Dbavqa5Vbw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: samsung,atna33xc20:
 Document ATNA45AF01
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Stephan Gerhold <stephan.gerhold@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 18, 2024 at 7:56=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, Jul 18, 2024 at 07:45:57AM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Wed, Jul 17, 2024 at 11:19=E2=80=AFPM Krzysztof Kozlowski <krzk@kern=
el.org> wrote:
> > >
> > > On 18/07/2024 02:21, Doug Anderson wrote:
> > > > Conor (and/or) Krzysztof and Rob,
> > > >
> > > > On Mon, Jul 15, 2024 at 8:31=E2=80=AFAM Conor Dooley <conor@kernel.=
org> wrote:
> > > >>
> > > >> On Mon, Jul 15, 2024 at 02:15:37PM +0200, Stephan Gerhold wrote:
> > > >>> The Samsung ATNA45AF01 panel is an AMOLED eDP panel that has back=
light
> > > >>> control over the DP AUX channel. While it works almost correctly =
with the
> > > >>> generic "edp-panel" compatible, the backlight needs special handl=
ing to
> > > >>> work correctly. It is similar to the existing ATNA33XC20 panel, j=
ust with
> > > >>> a larger resolution and size.
> > > >>>
> > > >>> Add a new "samsung,atna45af01" compatible to describe this panel =
in the DT.
> > > >>> Use the existing "samsung,atna33xc20" as fallback compatible sinc=
e existing
> > > >>> drivers should work as-is, given that resolution and size are dis=
coverable
> > > >>> through the eDP link.
> > > >>>
> > > >>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> > > >>
> > > >> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > >
> > > > Can you comment on whether you would consider this bindings a "Fix"
> > > > since it's a dependency for later patches in this series (which are
> > > > "Fix"es) to pass dtbs_check? See:
> > > >
> > > > https://lore.kernel.org/r/4bca316a-2334-425b-87a6-e1bb241d26b5@lina=
ro.org
> > >
> > > The patch itself is not a fix, for sure, but it might be a dependency=
 of
> > > a fix (which you wrote above), thus could be pulled to stable as a
> > > dependency.
> > >
> > > I do not care about dtbs_check warnings in stable kernels, mostly
> > > because dtbs_check warnings depend heavily on dtschema and dtschema
> > > follows mainline kernel. Basically if you had warnings-free v6.8 but =
try
> > > to run dtbs_check now with latest dtschema, your results will differ.
> > >
> > > At some point in the future, I could imagine "no new dtbs_check warni=
ngs
> > > in stable kernels" requirement or at least preference, but so far I
> > > don't think there is any benefit.
> >
> > In this case it's not about whether it makes it to the stable kernel
> > but about which main kernel it goes through.
> >
> > If we land the bindings in drm-misc-next right now then it'll be a
> > long time before it makes it into Linus's tree because of the way that
> > drm-misc-next merges. It will make it to Linus's tree at 6.12. You can
> > see the drm-misc merging strategy at:
> >
> > https://drm.pages.freedesktop.org/maintainer-tools/drm-misc.html
> >
> > If we land the dts change (a fix) through the Qualcomm tree as a fix
> > then it should target 6.11.
> >
> > This means that the 6.11 tree will have a dtbs_check error because it
> > has the dts change (a fix) but not the bindings change (not a fix).
> >
> > One way to resolve this would be to treat this bindings as a "fix" and
> > land it through "drm-misc-fixes". That would make the bindings and
> > device tree change meet up in Linux 6.11.
> >
> > Did I get that all correct?
>
> Is not not fairly established that a dependency for a fix can go onto a
> fixes branch even if it is not a fix in and of itself?

That would certainly be my take on it, but DT folks confirmation was
requested by Neil in:

https://lore.kernel.org/all/4bca316a-2334-425b-87a6-e1bb241d26b5@linaro.org=
/

-Doug

