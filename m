Return-Path: <devicetree+bounces-144051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B9799A2CAA5
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 18:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 279E716829E
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 17:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E51419992D;
	Fri,  7 Feb 2025 17:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iYSWIBrA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD7F175D5D
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 17:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738951158; cv=none; b=mAfzqR8G3BefF78wYjYVRO2sAra3f9WCBwb1w/WdTYRlVmRQikziB3JGLivwfUH4BgSnJ3+fOLqu218oA4xs3oPtau4zUEvfX6xocX4epRLKElqDHa/4c+XkdHM4KuzaeVax7l5X+bU457PBaTBuLO9Yio45HhcOVtXU0TwD1fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738951158; c=relaxed/simple;
	bh=yjImdBucZgKfFi/AfVlFm3SkAQG+R90KnnFQAcqGKmQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZBlINdgGqikWPylQlKUFCN+xzEVW9s6n/oLfnaozcptuYGpwjR11H4oyDbHLrkHJBjmPLZsgdEyY7GNNnyGhWeomWSd568lmCtdI/Dhfdv1f9Ek1REOHUxprQH2ES0KfT2BDM3tDZOxKLr1sU8EQopj7b/jfA9D/+1yo1ErrOjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=iYSWIBrA; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5440f22aabdso2170117e87.0
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 09:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738951152; x=1739555952; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OZIsw/eph0Ja1f9gKiHNlo33ou4ZjPNWGIGZAe/rGfE=;
        b=iYSWIBrAW9EqEip1WBJ524myp4/wrprueatO11aHZ5lJHbLKnkrkX1eaBc1IgouNSp
         Xo+8TW+zB2rN5p3JxAVRhEHHNLhB3aRhGyvZaD+ijx3Jl3icblciTic6b0nYDF/76FXK
         f5pERfa32gQayXJYnDziWu5KKfczSyJTSgk9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738951152; x=1739555952;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OZIsw/eph0Ja1f9gKiHNlo33ou4ZjPNWGIGZAe/rGfE=;
        b=ebtOmNnDU2+r49DR+U6t1rvmwsvpR/qTifPKbj6eRFF7IbhXqPV0mLy06tmzBV+nqi
         stNAJXymoELKrD+quPAsyIT2BD5O3QZj2zmzXRG2NJpZNJ52ic8IpA74Zh/rSMMREntK
         QRlBHJVBqv2JAdTeVfbPdSRUdSnAZHGW7Ro91Tti+Ur2+7kSQcpPiyqvMnvI+BAnt4MW
         S30wvJyHF8XW1HgOiN8kHnnEhgQs87hEvIVm28mxroWG+l9g9P5lOAmsAAhS3OKh+77Y
         rOWTlPLZTsvGnrITzRd1/yHb52aOiXB6//5gT7YMdhzgnQpBuszkW1FXkSSBjkd4JOP1
         EYog==
X-Forwarded-Encrypted: i=1; AJvYcCW6kiIe7P6irEyiS+hOLxpl6ADrZJQ3grA7qXpl8xr5i3ZFZeJj1IRuFrw3RhS3nmXwb76RPhtrwoGY@vger.kernel.org
X-Gm-Message-State: AOJu0YzlD2hQBiVmutSOOzu2LEz8yoYA85R/il0ZEVbGNIZvBhOqNN7P
	s3A/j4vhJKJJBclWboXucOKaMIQ+sRaHS8BFSrQV0+hdFX55pcy3QQDFtivqH8dkS+7jD/ur8cH
	jd4aR
X-Gm-Gg: ASbGnctKKdaxck0A7BqKCxYE/71qapHAMphKK1NoIEqnX/yG1N4rUXWCIfMKUZ7v6rn
	V5kW8lgXwH1IFhmkB9+OC0OfRiHnvgBUcG2JN+2Uflov37w9WeML+00y5bmeakvjhY6ecvAwjRN
	Hih9QDwZKjQjdGJISQL9yco8Uk+usgKa0CkqXHMQnqWOrwS3sUfZtlGDIHKULMqenGmZObVI/Ra
	YRw6O902/MtaKFfEKSGdpU0g40xB+TcDX2K1p+yCKUxBnbaqTE8JcUDj+SOwtppncEExo5nCROh
	wXXVvGym+V0rLiTGpr6bw9t6cf/x2kxaquhGYhJpPVVYE09xpFdcm2Q=
X-Google-Smtp-Source: AGHT+IE00OiVYxgPVKeAeEGkrzaD8ldz3IKRkWlYqIFjIz/012lJebzkSfdD3J5xeEx4N1vnFKA7mA==
X-Received: by 2002:a05:6512:3454:b0:53e:3a73:6ddc with SMTP id 2adb3069b0e04-54414b01bfbmr1167987e87.33.1738951151891;
        Fri, 07 Feb 2025 09:59:11 -0800 (PST)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com. [209.85.167.47])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54410604286sm522138e87.242.2025.02.07.09.59.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 09:59:11 -0800 (PST)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-543e4bbcd86so2666129e87.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 09:59:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCULXjxC8DOlxjf4kH1zs82Mm8r75aYjwnuXycBZ+v1wiVgnZjhl595F7BYvMSofY2uYPTRKbutT1yDU@vger.kernel.org
X-Received: by 2002:a05:6512:e9b:b0:542:7053:ef1b with SMTP id
 2adb3069b0e04-54414abb2d3mr1390120e87.29.1738951149433; Fri, 07 Feb 2025
 09:59:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
 <20250206131300.1295111-2-yelangyan@huaqin.corp-partner.google.com>
 <CAD=FV=UfWJoUsKzYMkyU3U4Yn1ufAs=NHMCDL+db887Uec9fww@mail.gmail.com>
 <20250206-overlaid-eastward-610a0d6e34cd@spud> <CAD=FV=UqUkKXvEJr5JPHgjNnY_1ALv7TiRY1UQjVGD4_su8M_Q@mail.gmail.com>
In-Reply-To: <CAD=FV=UqUkKXvEJr5JPHgjNnY_1ALv7TiRY1UQjVGD4_su8M_Q@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 7 Feb 2025 09:58:57 -0800
X-Gmail-Original-Message-ID: <CAD=FV=W-faj7O=pYVeLuM1Fqj4BnyxzD2L2Tf+GRbdkAo3Kk7A@mail.gmail.com>
X-Gm-Features: AWEUYZkN40y1BSrM1hbsqCvffOXn5hViKgff7psR1NbkWrBJyE7Wzq5bYUwiG1E
Message-ID: <CAD=FV=W-faj7O=pYVeLuM1Fqj4BnyxzD2L2Tf+GRbdkAo3Kk7A@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor: add csot
To: Conor Dooley <conor@kernel.org>
Cc: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, airlied@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 6, 2025 at 11:21=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Thu, Feb 6, 2025 at 10:13=E2=80=AFAM Conor Dooley <conor@kernel.org> w=
rote:
> >
> > On Thu, Feb 06, 2025 at 09:12:45AM -0800, Doug Anderson wrote:
> > > Hi,
> > >
> > > On Thu, Feb 6, 2025 at 5:13=E2=80=AFAM Langyan Ye
> > > <yelangyan@huaqin.corp-partner.google.com> wrote:
> > > >
> > > > Add "csot" to the Devicetree Vendor Prefix Registry.
> > > >
> > > > Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com=
>
> > > > ---
> > > >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> > > >  1 file changed, 2 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml=
 b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > > > index 42d14899d584..375f1f7c79ef 100644
> > > > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > > > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > > > @@ -336,6 +336,8 @@ patternProperties:
> > > >      description: Crystalfontz America, Inc.
> > > >    "^csky,.*":
> > > >      description: Hangzhou C-SKY Microsystems Co., Ltd
> > > > +  "^csot,.*":
> > > > +    description: Guangzhou China Star Optoelectronics Technology C=
o., Ltd
> > >
> > > Doing a `git log` on
> > > `Documentation/devicetree/bindings/vendor-prefixes.yaml` shows that
> > > most patches use the subject prefix `dt-bindings: vendor-prefixes`,
> > > not `dt-bindings: vendor`. If device-tree folks care about this
> > > difference and they don't want to fix it when applying, they might
> > > request you to send a new version.
> > >
> > > In any case, that's fairly minor so I'm OK with:
> > >
> > > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > >
> > > I would assume this will go through the DT tree, not drm-misc. If thi=
s
> > > is wrong then someone should shout.
> >
> > idk, probably the whole series should go together via drm-misc.
> > %subject can change if there's a resubmission, otherwise
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
>
> Ah, I'm fine landing it with drm-misc. I'll land it tomorrow unless
> there are objections. I'll adjust the subject when landing.

Pushed to drm-misc-next with Conor's Ack after adjusting the subject:

[1/3] dt-bindings: vendor-prefixes: add csot
      commit: 75e80af7d62e0dde006c23aec67b9ec8037324db

