Return-Path: <devicetree+bounces-106378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6F6989E8B
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 11:36:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BBA91F20EC3
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 09:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1150F1885B9;
	Mon, 30 Sep 2024 09:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hFe6mdI5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5F817B4FF
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 09:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727688981; cv=none; b=TT3AYjXsTo8AGp3UfIdUxhuwcYk1UmoRnktLxPpuj+JyGuq48D9OME0jNA6FTO01kAF8FO4pW8ppRE00oGGK7CjlatJVMLgQQNpBx2cMon1oMLSo4Uxa8CN5ZG8J7XtX0GlPBzJXAgqbk2Gsy5Gkq9c7pgdW0nRmCKabtwyVVj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727688981; c=relaxed/simple;
	bh=C9DBoAq2QB/xsAIS/96o45Og/YkTC8oROtndXUYPuLQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LgO6QpBWO8vf3cA1PfYF7RTBwzB5q1ApLDuQjedPtxrj6p3r0p6o7xnjeL6mm7+IQrOtzIWy2FCZ2MWk5C3NtiT1LWCH0YbuboaAOeqClHLTBT3NxQEWNb20AJKsfFJYZSpLMa9SP2vEjMidi1/15GlDtnn8C9OzHgXIEuzbpC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hFe6mdI5; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-84e884e9a43so1139324241.2
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 02:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727688978; x=1728293778; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RF8NQ8XlYpxXe/MHG9+i89q1ADBQEDPUKFvH45+J62A=;
        b=hFe6mdI5bASPoWl4FhtqGt+WILobeB12TvAu+FCatmaJi27oY/H4iw+xuhsFcNYcUM
         IyhHjqr/yoOPIch7iJdRWP2TsbSTK6LzqJZd6jdf59wT78TMdvCG7sCbCCqdhft+kkVa
         Nfo+MWhxRzBnauHmsJbi6Rvt/sk4VhYMYOQrk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727688978; x=1728293778;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RF8NQ8XlYpxXe/MHG9+i89q1ADBQEDPUKFvH45+J62A=;
        b=Q/XPqSwhWNzRk8jMwDEybQZXpBkg8siYbdvxZtrPSBPqs04GQmrwIivmENcFIto0iG
         JhfkBG2WheWM4zYTAjLZESpUXejuYhRpOrdajTlUCc1Pt75oAELIuUHL36uTHC4lvVNP
         XuvLlYJALfYxEY+U4BS8LvXCpwjt78B3+LQ/ml/arjccee7PBDoDgk8YI6K3rpR3prw6
         bzpKR5wcTL3I+lQZwBJ5+gGeFdajXQ/ssElSspRoF5ktII7Yn+CrAqkek8Bg+7zVWb+4
         LWQdgscDsTleGAl0vY4Mxlpt/1v4o4oJqTb3rCHX3WMZshC/pxnmAIU0zXWzcfdF9lI5
         gT+Q==
X-Forwarded-Encrypted: i=1; AJvYcCW3KvDE2RyNYB3hWo5YTyMFXUKOqpO2/2yytGPEK4s1OcR4OSlDA7gnMcVtdr+dRwT2FOS/pM5phwYk@vger.kernel.org
X-Gm-Message-State: AOJu0YxOTq2H347ot14PTSKt95hXtNeRIiv3OfPZsgEe26QUSDstZ1tr
	TG+WfxhsZDbMKaTU/aSRtDLLOrPioDwysyrzYP0ggNLNdrtbcE/064oJldiWLbTPawhYGxZ4aaI
	=
X-Google-Smtp-Source: AGHT+IFh7eBvrzh2IT9daMezHc5KfrETKKvapPq7XOqjVuL7HPVEbyzNzm/Rm8WG5mQTSG3R1o7PZw==
X-Received: by 2002:a05:6102:c01:b0:49e:9240:a67a with SMTP id ada2fe7eead31-4a2e11537acmr6489583137.24.1727688977951;
        Mon, 30 Sep 2024 02:36:17 -0700 (PDT)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-84eb207dc28sm939050241.2.2024.09.30.02.36.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Sep 2024 02:36:17 -0700 (PDT)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-50a1d04b780so302765e0c.0
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 02:36:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUBw+NVILFx4FxvZUmemGZ+OWaa+K/bJq6uXvYB5MDyv6ynwDneU6tzTlYxIVCnPh5ObKzBBjxtGjcC@vger.kernel.org
X-Received: by 2002:a05:6122:2210:b0:4ec:f6f2:f1cd with SMTP id
 71dfb90a1353d-507818a201bmr5969368e0c.9.1727688976487; Mon, 30 Sep 2024
 02:36:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240925110044.3678055-1-fshao@chromium.org> <20240925110044.3678055-6-fshao@chromium.org>
 <b3842173-7074-4bcb-80f4-1f6f8cb38a52@collabora.com> <CAC=S1nhs4EUR78HunNnz=Z-cG4GgAZ=7JFyJmj6he96Z=GuxOQ@mail.gmail.com>
In-Reply-To: <CAC=S1nhs4EUR78HunNnz=Z-cG4GgAZ=7JFyJmj6he96Z=GuxOQ@mail.gmail.com>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 30 Sep 2024 17:35:38 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhAr2vMYUnhw973RuCe1JzefKdugp-Ls1HktZdsnDTEuQ@mail.gmail.com>
Message-ID: <CAC=S1nhAr2vMYUnhw973RuCe1JzefKdugp-Ls1HktZdsnDTEuQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: mediatek: mt8188: Move vdec1 power domain
 under vdec0
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2024 at 6:42=E2=80=AFPM Fei Shao <fshao@chromium.org> wrote=
:
>
> On Thu, Sep 26, 2024 at 4:33=E2=80=AFPM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
> >
> > Il 25/09/24 12:57, Fei Shao ha scritto:
> > > There are two hardware IP blocks in MT8188 video decoder pipeline:
> > > vdec-lat and vdec-core, which are powered by vdec0 and vdec1 power
> > > domains respectively.
> > >
> > > We noticed that vdec-core needs to be powered down before vdec-lat
> > > during suspend to prevent failures. It's unclear if it's an intended
> > > hardware design or due to power isolation glitch. But in any case, we
> > > observed a power-off sequence here, and it can be considered as an
> > > indirect dependency implication between the vdec0 and vdec1 domains.
> > >
> > > Given that, update vdec1 as a sub-domain of vdec0 to enforce the
> > > sequence. Also, use more specific clock names for both power domains.
> > >
> >
> > As far as I know, yes, there is a sequence:
> >   - Cores (mtk-vcodec-core) gets suspended first
> >   - Then the LATs gets suspended (mtk-vcodec-lat)
> >   - Finally, the LAT SoC gets suspended (mtk-vcodec-lat-soc)
> >
> > ...but you checked that downstream, and your downstream misses the lat-=
soc HW
> > instance, and only has the lat one.
> >
> > Are you sure that this is not the reason why you're getting this issue?=
 :-)
> >
> > Otherwise, I feel like we must ask for some clarification from MediaTek=
, as
> > I'm mostly sure that the two cores are independent from each other (but=
 I
> > might, of course, be wrong!).
>
> Yes I think I should... this is actually based on a downstream patch of t=
heirs.
> My understanding is that LAT SoC is not always in the vdec pipeline
> for every MediaTek SoCs. Although the MT8188 and MT8195 have much in
> common, I have a vague impression that MT8188 doesn't have a LAT SoC
> HW, so the downstream video decoding works smoothly without describing
> that in DT... but still, I could be wrong, and things just happen to work=
.
>
> Anyway, I'll find someone on the MediaTek side for clarification. The
> datasheet I have doesn't seem to contain such information.
>

MediaTek confirmed that MT8188 doesn't have a LAT SoC block. Its vdec
pipeline is (mostly if not exactly) the same as MT8192 which is
composed of Core + LAT only.
Also, there *is* a hardware dependency between Core and LAT's power
domains in both MT8192 and MT8188.
And for reference, MT8192 DT described that dependency correctly. That
suggests how the power domain tree should be like in MT8188 DT.

I plan to send a v3 of this series to include more fixs I found last
week and exclude the invalid patch, and I'll refine the commit message
of this patch all together. I'll also update the bindings to document
the information above so people can reference that easier in the
future.

Regards,
Fei

