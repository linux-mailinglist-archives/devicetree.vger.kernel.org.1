Return-Path: <devicetree+bounces-143713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 73AF5A2B224
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 20:22:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58A40188A11B
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 19:22:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 649401A5B95;
	Thu,  6 Feb 2025 19:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iij2opzD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92615157A5C
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 19:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738869720; cv=none; b=sidqvLiNB6FRu+v0DWwWuCY43Hbier17b8IouFE20aWrv8t1s4sGiglmYY6KS4rJQKJ9mbx/AopY21OQF0nwUHrjT6SI6GpkIoD/On4p9GMAoCOWfwzN0ifLqtrJ0UYT6ffHd0zzQBfgSL7SZJLNBsUinMa25PDICvPmuyUxSsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738869720; c=relaxed/simple;
	bh=lUa04qjMr00cFMUz5RHZRTpCIbh7MZNzkqqom/3g3l4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZkddbBhxFKpQI+lGoB16AsDKlWahARvy8llegFlo4O1Fny09V1g9oY8u3gDgi1NgzPo5Dnp2e9QL12nv4HVdvXSU3pYDqxzMMyBfgQdV12S8i6kn8N3jngEknmjU/hvA7RqifLv+2NFHOCFUvXTBBOEG6otAkE+XP93oEr7+hcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=iij2opzD; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-54298ec925bso1518004e87.3
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 11:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1738869714; x=1739474514; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iejGLtNphddMwsWcL999rzVMsajm+EjwWDRl83wuIdw=;
        b=iij2opzDti3LjjRVBdC35uhHFQQOSCu+w0sl2LI5V+8yTZcwcNSQKao4QoJjASOLco
         bBuSQP0UrLTYQmk2/asRDVLpsoqct1leG0twOXjLbQNeEJX//imfiDvY867E8ItYFelx
         JPK64n30MKmprg0UKu7k/PNfxfAUajaEbodIM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738869714; x=1739474514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iejGLtNphddMwsWcL999rzVMsajm+EjwWDRl83wuIdw=;
        b=Zv6o1YgAwVA39W4mtJuFCAkBi7MuepABCIauZwpt1d2SL2p9GUTteEaKKTQKtCdMHl
         JL6sbDd0wnXaGLoNqnUYvGnagCpEgYGeYf4LWFeCPUJJtwQ8XIqWynjU3M7kr4HLNhlc
         TrQ37qAo50ISEA2H0ndq5zs9Ai74aptrKW8hLMS88FR2crWyFBTqykuzf6AzbzFMBqhL
         kDB9kSODMDQsgghWvjUuOkNNyUO2eBy5t+cNrV9r8T1ZMsG5fMw3/phtF3F9CeFbv0wL
         i7qLR9AtZTpVHGbncmpWj3TsOcrxHZYDR2WJEbzctke4apgk/5BXfGTsezc8euDberog
         EYtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXq9WWUbRZrc+MAlyrihsSlKciRXRROrID9aRth9eSCLt8HknCepCKtRtLhujGVHD14B3ptm5i49gl@vger.kernel.org
X-Gm-Message-State: AOJu0YyfI2BigKBmFKdN7ogsDX08T5DNRIyjnXgclOJXIkPixz2gZacg
	jo2i1I87b/jn5L6DMXUYfXr1yJGxVaETtyesIrzLu59s00M/qyLTv91ioSgYMiOLApi01ApHaDW
	tXz8v
X-Gm-Gg: ASbGncs9nTWAyph9nfZSYgYamQoMUlmPXmZSEovgpjp5ejyhFld378qR2yEg1Bl22ik
	qPPZTTBzv63U9c7IqsmHOt4xCuQ7/HGUMmkhMoGrjXKEfJhnLH1GDM0323jy8v/nU7zklPVREf3
	hPjY8DvCbcFfKE7Nrq0oj7i/7PIu3wnx9adN/VweqFa0NCKfCLZjTEPqmU/aBGshM5/3iz6OAze
	I9rM7jXaTCdNyxUB1AjeiJuoMDtYiWvfy1FHwKuvdP8CqS/zWlzminIIt2PEiqCaAmo7MYa9gQI
	BHz1Uw8RiOi4RtXOOSRpVr2VcZq5N9v3ONBOlpAbPObknnPUroOd9NOAhow=
X-Google-Smtp-Source: AGHT+IH/9P+mPUiyOMYA5eIk4DzcFZStXAtv5X5NlXDWE6cYIyxdyu+AORjnr0cri3REq35V6Lvqcg==
X-Received: by 2002:ac2:58e5:0:b0:543:e4aa:e0df with SMTP id 2adb3069b0e04-54414b0b4c1mr25410e87.43.1738869713702;
        Thu, 06 Feb 2025 11:21:53 -0800 (PST)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5441053ed3csm206231e87.45.2025.02.06.11.21.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 11:21:53 -0800 (PST)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30227ccf803so11183361fa.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 11:21:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWd9VFBTuGjQBwxCqU7GHXTZhUw4hbxBxJgxUGsQ1yYXv6k3zpUYSx1P1X5jUT4SBlE/r6Aed4FDJm9@vger.kernel.org
X-Received: by 2002:a2e:be8d:0:b0:302:1d24:8db7 with SMTP id
 38308e7fff4ca-307e57f026amr522881fa.19.1738869711621; Thu, 06 Feb 2025
 11:21:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206131300.1295111-1-yelangyan@huaqin.corp-partner.google.com>
 <20250206131300.1295111-2-yelangyan@huaqin.corp-partner.google.com>
 <CAD=FV=UfWJoUsKzYMkyU3U4Yn1ufAs=NHMCDL+db887Uec9fww@mail.gmail.com> <20250206-overlaid-eastward-610a0d6e34cd@spud>
In-Reply-To: <20250206-overlaid-eastward-610a0d6e34cd@spud>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 6 Feb 2025 11:21:40 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UqUkKXvEJr5JPHgjNnY_1ALv7TiRY1UQjVGD4_su8M_Q@mail.gmail.com>
X-Gm-Features: AWEUYZmS9xcU_MiFvWfdau59tVoQMHbzAishOQlY882_MKeaoyXcwaaKzpaqmEY
Message-ID: <CAD=FV=UqUkKXvEJr5JPHgjNnY_1ALv7TiRY1UQjVGD4_su8M_Q@mail.gmail.com>
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

On Thu, Feb 6, 2025 at 10:13=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, Feb 06, 2025 at 09:12:45AM -0800, Doug Anderson wrote:
> > Hi,
> >
> > On Thu, Feb 6, 2025 at 5:13=E2=80=AFAM Langyan Ye
> > <yelangyan@huaqin.corp-partner.google.com> wrote:
> > >
> > > Add "csot" to the Devicetree Vendor Prefix Registry.
> > >
> > > Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> > > ---
> > >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b=
/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > > index 42d14899d584..375f1f7c79ef 100644
> > > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > > @@ -336,6 +336,8 @@ patternProperties:
> > >      description: Crystalfontz America, Inc.
> > >    "^csky,.*":
> > >      description: Hangzhou C-SKY Microsystems Co., Ltd
> > > +  "^csot,.*":
> > > +    description: Guangzhou China Star Optoelectronics Technology Co.=
, Ltd
> >
> > Doing a `git log` on
> > `Documentation/devicetree/bindings/vendor-prefixes.yaml` shows that
> > most patches use the subject prefix `dt-bindings: vendor-prefixes`,
> > not `dt-bindings: vendor`. If device-tree folks care about this
> > difference and they don't want to fix it when applying, they might
> > request you to send a new version.
> >
> > In any case, that's fairly minor so I'm OK with:
> >
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> >
> > I would assume this will go through the DT tree, not drm-misc. If this
> > is wrong then someone should shout.
>
> idk, probably the whole series should go together via drm-misc.
> %subject can change if there's a resubmission, otherwise
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Ah, I'm fine landing it with drm-misc. I'll land it tomorrow unless
there are objections. I'll adjust the subject when landing.

-Doug

