Return-Path: <devicetree+bounces-148996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C4CA3DEEC
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:42:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 741B8175528
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C5991FECB7;
	Thu, 20 Feb 2025 15:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IaJh0gSh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943511FE46F
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 15:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740066018; cv=none; b=YddDsFyz7ycqcsU4WyPNytLeAjFRbOU3y2a+gvzHc7GQFH2yoU3dvXbQYiXXJbOG5StXi/eH4zGjkIsh2m9Ue5GBv0i1+JBlYlsqcpMSJ9R+UmjnRORDQ55bwYqUuh60bzl8eDtvQCl+2z2zYPD2V2iGbKh9rwW7WIfXGUlsvX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740066018; c=relaxed/simple;
	bh=QzUct+KndAjVKXbG8XpNZWnNqhY8tjjZDMXHiF5+5/U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n/9BFw5jpvxq3URECCOYldsLeParmS89U/KZqdhaEv2eggKOEu+a4kE6NLCVCJByxMP/iKmZVTFfI0jNdXwdRgtG8y78tnWtPd/aD7lhnbugUvYZxrJTdU8cGKBX8zWrraWU/PjUh1D2NDcDD7m+5bhYu6bhjvmQnUsMxYHY5NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IaJh0gSh; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6f7031ea11cso9224667b3.2
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 07:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740066015; x=1740670815; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UuoPq2e93XPbKnAaHkR9ErZM40sqwUWhuIwAQ7Wv18c=;
        b=IaJh0gShCWhMBWSZPiL4GMMZQrXIm6kmfSHwjbWiAL3xe/xmaoCPYiEcAXTirpbwoU
         UJGsAWPpHOgPM3VA9Sor8tmqLHUjk+4cMmP2r79NcY+99VAGdDh8qpHM/e+eKt5340Eq
         O4yNPRoZU4m1avLXrjyXhIP9dBAj6bQuOkqIiYyN2jbXXOUhoC97nDA0VYPPdWUJdGW3
         yUQvsSyn/NcCHWFrYTrYcebKv/gesx3JgUaHvmFySyl5y7vQp7Opz+IXvp9Fo2+HMtss
         U3zr3hedZtdF5hRCiMouiSRNkGmBpgzpkTbD3s1p5cnASTiamV5nhddPFbDUMtMpSDaC
         9kYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740066015; x=1740670815;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UuoPq2e93XPbKnAaHkR9ErZM40sqwUWhuIwAQ7Wv18c=;
        b=GMEew0BMN+KPHUH4RUGdXQvK2KzHJ1+iwkFTPXmUhhmmiOMoGFSwKF0c+FaQznM4J+
         +2hfBquXxW4eufCbHKJnaeFezZjIwkTbSZgp+ZpuwY6jiVrBiZ6VyWd+Yx0x6ThVvB/a
         v4Y7Xvr4n9PWd6Pk/gdaIScwuE4wes5nrHv3W/ERYkBEzg5CfdsBirS41ZpPvKcRyuSs
         gRXvKuhi5krP05m2TUCIaROjJmmYO+hacqq2Hsd65fj9yS0xFYIs8EdeTTeKnLfozDXa
         dN/0LY8IPXt1sBnermu99Gn3+G20Knct+Cw0Xh/vqQ88q+zGEWQbx9U6Q3TUO7fn6TTg
         WiOA==
X-Forwarded-Encrypted: i=1; AJvYcCWlMyJJrYoIb35sGQG8tm4bCNVk+IBDQkf8Uz8eXQ8Lw/NR/ugvDf9n6lZImHw9IaXsE3YmUcAbVUH/@vger.kernel.org
X-Gm-Message-State: AOJu0Yytw6LHj6B2eqGRONMznFkziERgugX8nWL6SmMfcrllgN5YC/E7
	vk461EncL1DSDHwdok/kFo1SHcr2zCOh6GaG/sFDkGtoIq4zFSsT1Kb64azOVvbJOyNxI7R62VV
	CqhnkF1EC9oNV3G83ov7BgWQaNGyoZ7DdqE1tzQ==
X-Gm-Gg: ASbGncuk7Nmz9RQRW11U6JVfmTA8fJDiK+5PpQtlhgHaZaJsW6HMch+E4dp7dsOl0vY
	xkekFjLSRocaPi68mwUV/41D2IHI+IUOyyCCJv/01sGHebMpeZksW58zId7gNcHVXKH3JG5IGtC
	e/
X-Google-Smtp-Source: AGHT+IHtHZhFj6w8a+w7dVjeZYWKiittrIVs8CqnEw31ZTbZ6uSF2vKph0PXxTGqAHFiH+3dzNT93tQlYHmsEeOEsb4=
X-Received: by 2002:a05:690c:fcc:b0:6f9:82a8:e5dd with SMTP id
 00721157ae682-6fba579f34dmr76095757b3.29.1740066013981; Thu, 20 Feb 2025
 07:40:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250220-dual-dsi-v2-0-6c0038d5a2ef@linaro.org>
 <20250220-dual-dsi-v2-4-6c0038d5a2ef@linaro.org> <grdadzunaabzg5jxpsiasgzbioy24tctlhhyxg6zwdkpv5vjwe@7k2di2myu4k6>
In-Reply-To: <grdadzunaabzg5jxpsiasgzbioy24tctlhhyxg6zwdkpv5vjwe@7k2di2myu4k6>
From: Jun Nie <jun.nie@linaro.org>
Date: Thu, 20 Feb 2025 23:40:03 +0800
X-Gm-Features: AWEUYZnHnOuixko96mQ2117kijVCx6xdBgICQdXQ3HuBcopAGGxNVlm-TLHVG9A
Message-ID: <CABymUCMn+USbm21agBZbe=JmV-FzLdVD4s0xgg0CPU=M9jvC9w@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] dt-bindings: display/msm: dsi-controller-main:
 Document dual panel property
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dmitry Baryshkov <dmitry.baryshkov@linaro.org> =E4=BA=8E2025=E5=B9=B42=E6=
=9C=8820=E6=97=A5=E5=91=A8=E5=9B=9B 18:33=E5=86=99=E9=81=93=EF=BC=9A
>
> On Thu, Feb 20, 2025 at 06:07:55PM +0800, Jun Nie wrote:
> > The DSI interface can be connected to a panel that has a dual DSI chann=
el,
> > or to two separate panels, each equipped with a single DSI channel. To
> > prevent the DSC configuration for the dual panel setup from disrupting =
the
> > current configuration of a single panel with a dual DSI channel, add a =
dual
> > panel property to support the use of two panels.
>
> Please use the terms from the standard. The "channel" is mostly used for
> the "Virtual Channel" or the "logical channel".

OK, will use DSI link for all later description.
>
> Also I don't follow how DSC configuration for a dual panel setup can
> disrupt current (?) configuration of a single panel.

For the disruption, Marijn mentioned it in the last post.
https://gitlab.freedesktop.org/drm/msm/-/issues/41#note_2411541

>
> >
> > Signed-off-by: Jun Nie <jun.nie@linaro.org>
> > ---
> >  .../devicetree/bindings/display/msm/dsi-controller-main.yaml      | 8 =
+++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controll=
er-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller=
-main.yaml
> > index ffbd1dc9470e2091b477b0c88392d81802119f48..e3f2eabde27609a66d6d81f=
afcb14e1bc014613c 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main=
.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main=
.yaml
> > @@ -88,9 +88,15 @@ properties:
> >    qcom,dual-dsi-mode:
> >      type: boolean
> >      description: |
> > -      Indicates if the DSI controller is driving a panel which needs
> > +      Indicates if the DSI controller is driving display device which =
needs
>
> Unrelated change
>
> >        2 DSI links.
> >
> > +  qcom,dual-panel:
> > +    type: boolean
> > +    description: |
> > +      Indicates if the DSI controller is driving display device that c=
omposed
> > +      with 2 independent panels and needs 2 DSI links.
>
> How is tht different from qcom,dual-dsi-mode?

Your questioning is right. The dual panel case is a subset of
dual-dsi-mode, not parallel with
dual-dsi-mode. It is single panel with 2 DSI link by default, and 2
panel with 1 DSI link in
each panel if property dual-panel is present.
>
> > +
> >    qcom,master-dsi:
> >      type: boolean
> >      description: |
> >
> > --
> > 2.34.1
> >
>
> --
> With best wishes
> Dmitry

