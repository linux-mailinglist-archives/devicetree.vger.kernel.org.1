Return-Path: <devicetree+bounces-67322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7BC8C77E1
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 15:43:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEE1D1C2163A
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 13:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF19C1474B4;
	Thu, 16 May 2024 13:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XxgqcrpM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176C5143749
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 13:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715867027; cv=none; b=R0I1O+5guk+Q4dpkQHa6Wc1XF9KXnfpO3YV2FuaAdkYOLmC5wl57gwk3wpr9zLvam8huhTtCUwYZu3Of+kO2ZMocGpB3/C/F1yVv2RP8aXrSPxWQAKLrejikAVwwTMQ6krhrgLpmuateDYk9774RiPtdYwYSDVeT2kS2GGyjV0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715867027; c=relaxed/simple;
	bh=F23kPmSKo4nuPfv8aCwqUfEkCmnyZcNsw+mnflyY+fA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j7V1PlQ5GioWhHCO70z2XswCr8xY07a3FEl1bG7Y5qqy/oREs2NKBeeTYJglTnLbxKWGNqg0a17vGYw9rgNLz1jaOJmIzDNG9Gj+saKYM9Lunrxna1dpl5utCOMeUsS0vvGnsDO+Z7MiamrIrSbi2sXXgy3vZyRkyZzWPAjg/yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XxgqcrpM; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-61bec6bab2bso90199217b3.1
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 06:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1715867024; x=1716471824; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vE+d7Cw90alIT6F0UkuVj3O7o7Oab4n1TKo1NXh8d0Y=;
        b=XxgqcrpMjwk54jFukQ5ExLS4s9C2rQRDUovezWcX7uct9V2JBfWT9R/p625Hl6ipGl
         NcWyT8UTzyA6/61K6uwdOaxQLYFXEjueVFEes+0yQWxjhNUfUbcvlGJeAVHrNDzP9kFk
         A2y50jKqObBVN78sE+5YmwNocCTYXIG+telZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715867024; x=1716471824;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vE+d7Cw90alIT6F0UkuVj3O7o7Oab4n1TKo1NXh8d0Y=;
        b=JO2bb9p103pP6QJw5XJOE88k2OFmAr0A+y0EDrZ9ugNbnZLQIX1st2X/JCyguNk+0G
         7NvK8PN/ejuG3d1oK9u2WjkwEmtFgI9VDZa2iZbeRkxvQdpMjL5I6+DNtxIuxGfUzFZv
         dQDLAfeJBARRsykIIADumbJ02x/35fuRTYlf/ljwLvnxQgnNYyAuQFkZ91jY2jrs2sUi
         MKuKE5NNIDZ3MCuEepaeBiXwUPaAJ2g++riGfCVCjGlQ6NF2nNSuwAhdOuEu0ea60nvZ
         BJ4urpOP50Q25kSfwg8AOA9S4++6/aLbWk00c74WarSv86s0OyjkPiv8LNj94ZFAK+dN
         7QDg==
X-Forwarded-Encrypted: i=1; AJvYcCWGR3dO1Pfv7B7M9Q8HXIhGtyBFCFLL2aR58K46+4+fckbUd5UlrPy1Bqv5/8MlZQzmOXm+m/5fcO00IFTmQN8z8tf3tKlscbc7dQ==
X-Gm-Message-State: AOJu0YzeY94UZaYGLFWHaG/1Fr4+V9qbyWhyPrak0yNOf8NKBnHISby5
	qbKtcWPp6HvitsZBxXpwIRts/EhDTydR0VUmKezLRDs2ORIpNq3flI4muQjLDy7ZorbTghUpvzw
	=
X-Google-Smtp-Source: AGHT+IGMewQKXRmTMgZLtuBH7ZnOywevHtbSlFYuW+IE+D/GglFn7zGwUiVUvqLgt2MnBFq44Dhy8A==
X-Received: by 2002:a81:a8c2:0:b0:622:c8ef:ddb5 with SMTP id 00721157ae682-622c8efddc8mr149210807b3.8.1715867024207;
        Thu, 16 May 2024 06:43:44 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-43e2e4e1419sm29668091cf.51.2024.05.16.06.43.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 May 2024 06:43:42 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-43e14f0bd75so843621cf.1
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 06:43:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXH8qwmtvy9lgOOcWRE5xe8O5OjqMpUSDdxvCWUVkIxXHbcV2ds778gidXl88CMqSMnSdWERBHM6IuzicSn4947hx7/86Ag74sPxQ==
X-Received: by 2002:a05:622a:5a8c:b0:43e:398a:b0c0 with SMTP id
 d75a77b69052e-43e398ab190mr5529521cf.12.1715867022285; Thu, 16 May 2024
 06:43:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
 <20240515014643.2715010-4-yangcong5@huaqin.corp-partner.google.com>
 <0fcdb0ac-2e4a-44b2-a5d6-a67a1d747df8@linaro.org> <CAD=FV=XkBkQUN-93eQDKZcw_66uSeNBBhbiq2hRLcFN+Ck71RQ@mail.gmail.com>
 <CAHwB_N+foZpCjqUy0dJdS2wBbUjHVRQQP0p7S_eTG1Yrh0bgPw@mail.gmail.com> <7b488473-7fd1-4f4f-8c32-72e84420b478@linaro.org>
In-Reply-To: <7b488473-7fd1-4f4f-8c32-72e84420b478@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2024 06:43:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W6mkTwAp6qMVYbPFDYBroAW19-qgvct1dw11ksaW3cYw@mail.gmail.com>
Message-ID: <CAD=FV=W6mkTwAp6qMVYbPFDYBroAW19-qgvct1dw11ksaW3cYw@mail.gmail.com>
Subject: Re: [v7 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
To: neil.armstrong@linaro.org
Cc: cong yang <yangcong5@huaqin.corp-partner.google.com>, sam@ravnborg.org, 
	daniel@ffwll.ch, linus.walleij@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	xuxinxiong@huaqin.corp-partner.google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 15, 2024 at 11:55=E2=80=AFPM <neil.armstrong@linaro.org> wrote:
>
> On 16/05/2024 08:43, cong yang wrote:
> > Hi:
> >
> > If it is determined that a separately patch needs to be sent, then I
> > will remove this patch in V8 series?
> >
> > Doug Anderson <dianders@chromium.org> =E4=BA=8E2024=E5=B9=B45=E6=9C=881=
6=E6=97=A5=E5=91=A8=E5=9B=9B 05:28=E5=86=99=E9=81=93=EF=BC=9A
> >
> >>
> >> Hi,
> >>
> >> On Wed, May 15, 2024 at 2:16=E2=80=AFPM <neil.armstrong@linaro.org> wr=
ote:
> >>>
> >>> Hi,
> >>>
> >>> On 15/05/2024 03:46, Cong Yang wrote:
> >>>> DRM_PANEL_HIMAX_HX83102 is being split out from DRM_PANEL_BOE_TV101W=
UM_NL6.
> >>>> Since the arm64 defconfig had the BOE panel driver enabled, let's al=
so
> >>>> enable the himax driver.
> >>>>
> >>>> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> >>>> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> >>>> ---
> >>>>    arch/arm64/configs/defconfig | 1 +
> >>>>    1 file changed, 1 insertion(+)
> >>>>
> >>>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defco=
nfig
> >>>> index 2c30d617e180..687c86ddaece 100644
> >>>> --- a/arch/arm64/configs/defconfig
> >>>> +++ b/arch/arm64/configs/defconfig
> >>>> @@ -864,6 +864,7 @@ CONFIG_DRM_PANEL_BOE_TV101WUM_NL6=3Dm
> >>>>    CONFIG_DRM_PANEL_LVDS=3Dm
> >>>>    CONFIG_DRM_PANEL_SIMPLE=3Dm
> >>>>    CONFIG_DRM_PANEL_EDP=3Dm
> >>>> +CONFIG_DRM_PANEL_HIMAX_HX83102=3Dm
> >>>>    CONFIG_DRM_PANEL_ILITEK_ILI9882T=3Dm
> >>>>    CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=3Dm
> >>>>    CONFIG_DRM_PANEL_RAYDIUM_RM67191=3Dm
> >>>
> >>> You should probably sent this one separately since only an ARM SoC ma=
intainer
> >>> can apply this, probably via the qcom tree.
> >>
> >> Really? I always kinda figured that this was a bit like MAINTAINERS
> >> where it can come through a bunch of different trees. Certainly I've
> >> landed changes to it before through the drm-misc tree. If that was
> >> wrong then I'll certainly stop doing it, of course.
>
> Yeah we usually don't mess with arch specific defconfig from drm tree

In general I agree that makes sense. In this case, though, the new
config symbol was introduced in the previous patch and split off an
existing symbol. Updating "all" of the configs (AKA just arm64) that
had the old symbol to also have the new symbol seems like the nice
thing to do and it feels like it makes sense to land in the same tree
that did the "split" just to cause the least confusion to anyone
affected.

In any case, if it's going to land in some other tree then I guess the
question is whether it needs to wait a few revisions to land there or
if it should land right away. Nobody would get a compile error if it
landed in a different tree right away since unknown config symbols are
silently ignored, but it feels a little weird to me.

...of course, I'm also OK just dropping the config patch. I personally
don't use the upstream "defconfig". It just seemed courteous to update
it for those who do.

-Doug

