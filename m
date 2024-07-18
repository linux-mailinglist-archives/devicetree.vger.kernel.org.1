Return-Path: <devicetree+bounces-86606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F441934F50
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 16:46:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 330E41C212CE
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 14:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122362AF18;
	Thu, 18 Jul 2024 14:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iW1RlZB6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612157828B
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 14:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721313979; cv=none; b=QB4gHhVrUzmCLiWzAaFuD4fyGrxSn+loHZRG8xDuOITzAQOQ8OLw2LV8TGR8NxjvyyzaMcACB6uYrRa1VRIOA+YKI5C1Q9/ps3W+9PQFvXewlaS+h5+cC2++gM9cnNVzzpSib1Eq9zfueMYXlRy7+fr9nxoqq9dF+qIviReYDxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721313979; c=relaxed/simple;
	bh=ItEYfyU78HUDQ4/9fhXGu8NLyqmW1vdphw7TfYOCTU0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lCvN5Sfh/thWf0JLpb/UjWYVAKOzr2q86waSgBSQ0db8V5jbyRd+lk1QgyO1frjyEZ2fhFyX65Bx/B448vp7p45wV7MwthK4vs3oQj10WDxEc/G4jRdycIXHNvxg0g2UE6iQjIUByCNSbany5X6T+CLSKO+CU/eV9m2n92/hBEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=iW1RlZB6; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-79f16c85da0so26489785a.2
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 07:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721313975; x=1721918775; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ItEYfyU78HUDQ4/9fhXGu8NLyqmW1vdphw7TfYOCTU0=;
        b=iW1RlZB6E4R8CHisAXCGIyocGXZTD5+1CGoYmrPO3VK7m/rBBrys3L/BXKKR1k4Biy
         rj35ewsWUUKoAKCwEVE8nA+/7XkbU+wVuqNXbsXTjoiWXAN/GJrMbiI6CAXb9WboUub/
         Oh2bzwObOA4xRcwMA9Nr0zGdihUGAAJFfZzfQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721313975; x=1721918775;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ItEYfyU78HUDQ4/9fhXGu8NLyqmW1vdphw7TfYOCTU0=;
        b=aufKIvjpVNaQWiev+PZxdXG3jW3ziAoMoY1wAva+kcHZhTir4et1fopNTSkjuFRorq
         ceXwq6aJcveqAPlbLmM2kJfsLWX/WD9hrWWapNany9U38YW/y1yByUCVBFVjQkj9XCFn
         Gg4aunfOTe8nGvPe98vaNkzy5mzm8jLLm3pPXWBkTZtFKirmdoW3SyS4dHV16VVTPkov
         6i3yTzMzxUNi80hGajpbJYmetWbY9/QtHOqEMCq1gkmveRcMeIeCgX8CBv47KqIdzkh4
         Xq4jcYvd/qiVIY/kwy31TBLtYmZDY3XW6klBFXWrbBHBxRJLq7kaAtBGduSxpBR5Bmgt
         Zw4A==
X-Forwarded-Encrypted: i=1; AJvYcCXI3BiZFDiONvbHAcayVYrZillqn29slQcBuc/hdPOl9uV/vEJrC8D0Ooe+QP5Z01u0hdE+JvTGSimnZ/cTIWPxdlC/HQbkXwdppg==
X-Gm-Message-State: AOJu0Ywvvi/k7riNcG70sY2guEqfpcmSAOFISEFs1hZZnMF7V4PVXIco
	UH7tQFBWNQJtp3CT+rbrpyMcjDZoesF48R3+kKTLTHqqXRh/OuPsZW7mOyDKOiLf+Ku6Hi2bnfI
	=
X-Google-Smtp-Source: AGHT+IE+jR4cbbQPUX1EKLv1utJZG66LY30o/0HPMMP6vpfydjr154ZKKCBu/An7ZQrq1huUjbgL/Q==
X-Received: by 2002:a05:620a:290e:b0:79f:15ca:b78e with SMTP id af79cd13be357-7a1938c37c6mr142832685a.10.1721313975136;
        Thu, 18 Jul 2024 07:46:15 -0700 (PDT)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com. [209.85.160.170])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a1938bd9e1sm31692385a.24.2024.07.18.07.46.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jul 2024 07:46:14 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-44e534a1fbeso105691cf.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 07:46:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVTon03UsHiPRjxShPZ4kYU0IGoXxPugM3V24l3PHkO0eSZ0kKZx3eo8rgJptFdVbPm9ab70Rv8q1fGgMILZWfrgA3ghFwK2vactQ==
X-Received: by 2002:ac8:6d08:0:b0:447:e792:c797 with SMTP id
 d75a77b69052e-44f96af537emr962911cf.29.1721313973898; Thu, 18 Jul 2024
 07:46:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240715-x1e80100-crd-backlight-v2-0-31b7f2f658a3@linaro.org>
 <20240715-x1e80100-crd-backlight-v2-1-31b7f2f658a3@linaro.org>
 <20240715-scorn-canning-a7f23b9e2039@spud> <CAD=FV=U-nOMu-JDQ3T=ZRJ-rZ0BTtyzFVfnzbtCJdbRzAq3YMg@mail.gmail.com>
 <e017259b-bc62-4b57-9276-b834237225e1@kernel.org>
In-Reply-To: <e017259b-bc62-4b57-9276-b834237225e1@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 18 Jul 2024 07:45:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VY5Ug3TfUo1RctiVQrHUjuod15HA8BxAyWdd_0bK8_Dw@mail.gmail.com>
Message-ID: <CAD=FV=VY5Ug3TfUo1RctiVQrHUjuod15HA8BxAyWdd_0bK8_Dw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: display: panel: samsung,atna33xc20:
 Document ATNA45AF01
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Stephan Gerhold <stephan.gerhold@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 17, 2024 at 11:19=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 18/07/2024 02:21, Doug Anderson wrote:
> > Conor (and/or) Krzysztof and Rob,
> >
> > On Mon, Jul 15, 2024 at 8:31=E2=80=AFAM Conor Dooley <conor@kernel.org>=
 wrote:
> >>
> >> On Mon, Jul 15, 2024 at 02:15:37PM +0200, Stephan Gerhold wrote:
> >>> The Samsung ATNA45AF01 panel is an AMOLED eDP panel that has backligh=
t
> >>> control over the DP AUX channel. While it works almost correctly with=
 the
> >>> generic "edp-panel" compatible, the backlight needs special handling =
to
> >>> work correctly. It is similar to the existing ATNA33XC20 panel, just =
with
> >>> a larger resolution and size.
> >>>
> >>> Add a new "samsung,atna45af01" compatible to describe this panel in t=
he DT.
> >>> Use the existing "samsung,atna33xc20" as fallback compatible since ex=
isting
> >>> drivers should work as-is, given that resolution and size are discove=
rable
> >>> through the eDP link.
> >>>
> >>> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> >>
> >> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> >
> > Can you comment on whether you would consider this bindings a "Fix"
> > since it's a dependency for later patches in this series (which are
> > "Fix"es) to pass dtbs_check? See:
> >
> > https://lore.kernel.org/r/4bca316a-2334-425b-87a6-e1bb241d26b5@linaro.o=
rg
>
> The patch itself is not a fix, for sure, but it might be a dependency of
> a fix (which you wrote above), thus could be pulled to stable as a
> dependency.
>
> I do not care about dtbs_check warnings in stable kernels, mostly
> because dtbs_check warnings depend heavily on dtschema and dtschema
> follows mainline kernel. Basically if you had warnings-free v6.8 but try
> to run dtbs_check now with latest dtschema, your results will differ.
>
> At some point in the future, I could imagine "no new dtbs_check warnings
> in stable kernels" requirement or at least preference, but so far I
> don't think there is any benefit.

In this case it's not about whether it makes it to the stable kernel
but about which main kernel it goes through.

If we land the bindings in drm-misc-next right now then it'll be a
long time before it makes it into Linus's tree because of the way that
drm-misc-next merges. It will make it to Linus's tree at 6.12. You can
see the drm-misc merging strategy at:

https://drm.pages.freedesktop.org/maintainer-tools/drm-misc.html

If we land the dts change (a fix) through the Qualcomm tree as a fix
then it should target 6.11.

This means that the 6.11 tree will have a dtbs_check error because it
has the dts change (a fix) but not the bindings change (not a fix).

One way to resolve this would be to treat this bindings as a "fix" and
land it through "drm-misc-fixes". That would make the bindings and
device tree change meet up in Linux 6.11.

Did I get that all correct?

-Doug

