Return-Path: <devicetree+bounces-86661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C48239370FC
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 01:09:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EB761F22174
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 23:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A818B14532A;
	Thu, 18 Jul 2024 23:09:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jqP0T6or"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA3877F2C
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 23:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721344182; cv=none; b=OQPNnFIBwiWQO36skj+wzuM00gTYWavAcPRsA14h3obI4nFxVxTVhd6QahG60X0P6qw7HMSVtR2d4so66um2GT8shduRwOSy8IODR3DxkEQRtQ6i+qW697DhMMwqoCQ+/sD/yNPX+m606Xq883qJNZ6wyCAG/DGcvt9SrQf28nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721344182; c=relaxed/simple;
	bh=a2MiU9q1dpoV76yfckJyiSZ5U4LdU8MkAa9iwJ7ocM0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ohyDvC7obuzFjDktMm15bKdAutdZ7ZWPBigAggvUBsKYjP++35HJn6jgtzDIRxtb5QD9L7VnUFrhfP+9C4KcbCGMZmfx0A8Y2Qm09GHmZPHbPE6gfrASPitsUFeL0yg4c99H4rlGGgDJSNzxilqiUqYhUClrzqFyCg5uF+duGHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jqP0T6or; arc=none smtp.client-ip=209.85.160.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qt1-f194.google.com with SMTP id d75a77b69052e-447f0d20592so4816791cf.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 16:09:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721344180; x=1721948980; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yWUpRwE/EDS0n+s4NT6R/Wf+x8/oxyYVaNKMw8i5CCg=;
        b=jqP0T6orlJW0kUCGlhs9A421eopOR+JTRe6RJJs/lJQ0etLVJw2dcLTBB1+crMRA3c
         SRI7Pxo/kdwv1p//uxtyunXRYckzhzynVy41Ze4Gbufv0oxWN7uXyLbsnBzQjKW7IxQx
         TFb/y4N9jKcWJm4qakYddbql/XuZiZKU+ycQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721344180; x=1721948980;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yWUpRwE/EDS0n+s4NT6R/Wf+x8/oxyYVaNKMw8i5CCg=;
        b=AZsa6fYI3HTjtK3UDTY31WrvJ9cMoujVTZ2Wl+waqCeuccRG5Znp/DJDqwIbAtvJPH
         w8VgSBn3dsf8N0jRpNeVqw7E+wNNVLI/M1HQNgb6iZqPrxCMf2LbeKOP0xJ4DdFqX8Ct
         VVe7yuvBozjPZPs/rYsdrtaMsnYd3jGIXx9hDQjlN3sHlzoWKONtf9p78udSAkZ7V36M
         cHQj1JgohqATR2lwNTjvRjDJx+0fF/e6kNHZjjCmP03CqOrgug3EcE2GiV6KkQtWSVCB
         6+qdLd5V1i4WDUd6FFV9fkXy3HiXvQxFOftHjWQKaoqNb1ieP8ZrWUypgOG3DRXzmgst
         Q/Dw==
X-Forwarded-Encrypted: i=1; AJvYcCXrT2MwDdd3gIc0AUN6AkZ9mqg9vWOG4yryBcvwauL6Et4VsiwVLjYe3s702MMUSPdvwx79Fb4zvH335EVsIvgOdlMNPpyTn9qnxw==
X-Gm-Message-State: AOJu0YzJTJfuKfNyzPq8j44Q7jt8XXcDY/TpgfcE34lpqHwbLG1/QpOg
	AkhMlBtEJqg0zeiQxb4cSwSHsX7fq4/lZ5f6tq4nX3RASeTIm3xHkAv/et5K0aahQM4NpQdvlVD
	Rug==
X-Google-Smtp-Source: AGHT+IEmMUgA6bbQhqOKngZdbdz/ZM6SiqTcbWYnL/arofNgG+GC34HAfT32BNaDcYyk+bwPXezqwA==
X-Received: by 2002:ad4:4ea3:0:b0:6b7:a378:b57 with SMTP id 6a1803df08f44-6b7a3780e23mr30071286d6.59.1721344180010;
        Thu, 18 Jul 2024 16:09:40 -0700 (PDT)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com. [209.85.160.177])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b7ac7de052sm819096d6.42.2024.07.18.16.09.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jul 2024 16:09:39 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-447df43324fso65821cf.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 16:09:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVSbMw0MYJiL9V6Xq1OmtKcisb/x5lsaAPt3iK1GMaUiAXKT29s0vFEH/QzAaZDRqAU2zNbMr3Yv9DlzJeRXBNyAF/IYiENnNS+cA==
X-Received: by 2002:a05:622a:5509:b0:447:e8a5:fb27 with SMTP id
 d75a77b69052e-44f9c86fd18mr443831cf.25.1721344179138; Thu, 18 Jul 2024
 16:09:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240718184434.6307-1-robdclark@gmail.com> <fnoc5jhpu5gwkfufm4cyyn4cjhh6dtw2if3jukk7t3tyvdwesv@pmr4j3vfgpjt>
In-Reply-To: <fnoc5jhpu5gwkfufm4cyyn4cjhh6dtw2if3jukk7t3tyvdwesv@pmr4j3vfgpjt>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 18 Jul 2024 16:09:27 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VURWwyLB-VZEpB3JNt-ODyxWtXZnV33GA7JkP5AGgN-A@mail.gmail.com>
Message-ID: <CAD=FV=VURWwyLB-VZEpB3JNt-ODyxWtXZnV33GA7JkP5AGgN-A@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: samsung,atna45dc02:
 Document ATNA45DC02
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, linux-arm-msm@vger.kernel.org, 
	Abel Vesa <abel.vesa@linaro.org>, Rob Clark <robdclark@chromium.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jul 18, 2024 at 2:36=E2=80=AFPM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, Jul 18, 2024 at 11:44:32AM GMT, Rob Clark wrote:
> > From: Rob Clark <robdclark@chromium.org>
> >
> > The Samsung ATNA45DC02 panel is an AMOLED eDP panel, similar to the
> > existing ATNA45AF01 and ATNA33XC20 panel but with a higher resolution.
> >
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > ---
> >  .../devicetree/bindings/display/panel/samsung,atna33xc20.yaml   | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/samsung,at=
na33xc20.yaml b/Documentation/devicetree/bindings/display/panel/samsung,atn=
a33xc20.yaml
> > index d668e8d0d296..284a4ee79bbf 100644
> > --- a/Documentation/devicetree/bindings/display/panel/samsung,atna33xc2=
0.yaml
> > +++ b/Documentation/devicetree/bindings/display/panel/samsung,atna33xc2=
0.yaml
> > @@ -19,6 +19,8 @@ properties:
> >        - samsung,atna33xc20
> >        # Samsung 14.5" WQXGA+ (2880x1800 pixels) eDP AMOLED panel
> >        - samsung,atna45af01
> > +      # Samsung 14.5" 3K (2944x1840 pixels) eDP AMOLED panel
> > +      - samsung,atna45dc02

Please follow what we decided in Stephan Gerhold's case and use a
fallback compatible. In other words: your patch seems to be based on
his v1 and not his v2.

> This makes me wonder if we should define a cover compatible like
> samsung,amoled-edp-panel.

I will bow to the wisdom of the DT folks, but my understanding is that
we shouldn't do that. The fallback compatible can just be the
compatible of the first panel that we supported that used the same
interface.

-Doug

