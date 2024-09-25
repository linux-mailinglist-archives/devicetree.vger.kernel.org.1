Return-Path: <devicetree+bounces-105236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C169A98579D
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 13:07:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F1EF280DAC
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 11:07:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D28D84A5E;
	Wed, 25 Sep 2024 11:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DHa2MPYe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2B0482D8
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 11:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727262425; cv=none; b=GGFOg/Ml11DQVkG1mubZNUEMI7BVCLwNaHdH7w1qxlXoz9edp+7qNEZpvhZkRp67/l7WEr4DXjKwrAg4AXjL2IWPc+/IhhyhHRJQkvmt9zPSsY5DKH5+Fjebf8aON3gk/6DWxj0z9n6TChZy4k/S1AAqtVbxXQMPQpnOqXOXonM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727262425; c=relaxed/simple;
	bh=yngx82xgIdWukmGKi/xseBo9teitA0cjSgQBreiIuxM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mvvDGpO7WGbVut1gn7i0S6JfOoE+ODpNPtIVow5QUWsnNCLieWB5icPtZx0znj0O+LV6T0aLpUOolYPsZZL6Z0IU4RRSj4plwzR3JxMH+w5YtLX1OCh7SlE2wZS4ufpNnSvH2EJq9dg+udK0RisBd2aFMxGFs/a/neEzA8158Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DHa2MPYe; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7a99a46af10so684363885a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 04:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727262422; x=1727867222; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GmGZlGs+csivCGtXApnSxfbFdZdlXt+4aKJTW7tsJ8A=;
        b=DHa2MPYecUu/C8o13J4RG8sNCD129yNKsvsaIFpH+XIEO6OgcXTRVsyaw9dzzm7NHr
         1lbw3VM2CDHcZSoWfhvY9xCcmA60P6edNzBfYoumYZa2fY2KXm5A1Y16extshdlIG/sJ
         tNXyeFB2lMPFgQ/nka7Xg3KBWzOYh+fbQ6cHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727262422; x=1727867222;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GmGZlGs+csivCGtXApnSxfbFdZdlXt+4aKJTW7tsJ8A=;
        b=jUkSy8juuT01HOeXsrGF5yGgTrUCTEvGANKHKbyfexdVFyuSGyKeo+bmE4rjndoXQi
         hm4CFvECsdoaesPYTUc1HqM2mVUktIABdaxFCWMsBWzxVE2ceRUX9vLyMXObHleqno4m
         cV4EJMhlC/3hTOOknTSRJVMujDE52x0JfNoHSVF1zx7hz6MXWgTdOkqjlgup7bba0FpI
         7FEH9eOCBx3F6YKQpjFbFyYKagDpWMPlY/5LkDGnbj8p6wl6lQT4c0CCB1o8UqZH1vNd
         uIsyadOBKYh4DZack8osBuuGSkMSYpmFY9rj5VXYPWcp4nW3/99MWnhTAbhgs+aCYhlr
         pzHg==
X-Forwarded-Encrypted: i=1; AJvYcCXduiY4Hi0Cr1KMWklMeqCh0xA6p9wojOa3e+CUJMRpY0ON5O45sYXKwyEXjlDXalybXyoC8xU6yax+@vger.kernel.org
X-Gm-Message-State: AOJu0YyMNSxsjBVAkFcFcqqyLquuU1n6jThT37Zj1Rx/KLB5CbDHc2O3
	bbozF7048hrId5c4I5xY5aZefktX6ftFzUjSDlt58VwdjJuvxT6kjRF9pmVRvQTmXDcWfA/zJJR
	tWg==
X-Google-Smtp-Source: AGHT+IEDQjzBbubWf2wlDqaA/lrxiOVT9rM9NPTZRG/dYJ0o4OT3ghpsyBBXCBWQOrAeTknGCtzKjA==
X-Received: by 2002:a05:620a:4546:b0:7a9:c0f3:3b71 with SMTP id af79cd13be357-7ace73ff070mr359835085a.19.1727262422254;
        Wed, 25 Sep 2024 04:07:02 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-84e73b2631dsm1552171241.16.2024.09.25.04.06.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2024 04:06:46 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-846c0a741cbso1708584241.2
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 04:06:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUtUKnJ3juCYJLXwoJqA+ctiXu4WBzEnqGsnBa5hAW337kCf65wTEVBRr7dRQukeJsNq3iIshZlHlUh@vger.kernel.org
X-Received: by 2002:a05:6122:32cc:b0:4f5:199b:2a61 with SMTP id
 71dfb90a1353d-505c20922a8mr1813469e0c.9.1727262405347; Wed, 25 Sep 2024
 04:06:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240909111535.528624-1-fshao@chromium.org> <20240909111535.528624-7-fshao@chromium.org>
 <11bc2522-bc10-4dcf-8142-708b57d181cf@kernel.org> <CAC=S1nhiJ=7yAucJsaYKUUBrwrxOVBMB2CF=bFwyLa2o-5RmWw@mail.gmail.com>
 <64cc35c8-30df-4882-a933-f42119270f48@kernel.org> <CAC=S1ni+pJJZhbjvVqhba5u1JqGv=dZTv8+KH4xburea2AG4Qg@mail.gmail.com>
 <a9a7038c-4478-4366-831a-81dca8fa5afc@kernel.org>
In-Reply-To: <a9a7038c-4478-4366-831a-81dca8fa5afc@kernel.org>
From: Fei Shao <fshao@chromium.org>
Date: Wed, 25 Sep 2024 19:06:08 +0800
X-Gmail-Original-Message-ID: <CAC=S1njoAwU+7aveWziJBD760k2LGD=D89Wwb9FmdaPp-sA5nw@mail.gmail.com>
Message-ID: <CAC=S1njoAwU+7aveWziJBD760k2LGD=D89Wwb9FmdaPp-sA5nw@mail.gmail.com>
Subject: Re: [PATCH 06/13] arm64: dts: mediatek: mt8188: Update VPPSYS node
 name and compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 16, 2024 at 6:02=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 10/09/2024 13:06, Fei Shao wrote:
> > On Tue, Sep 10, 2024 at 3:19=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >>
> >> On 10/09/2024 07:12, Fei Shao wrote:
> >>> On Mon, Sep 9, 2024 at 7:41=E2=80=AFPM Krzysztof Kozlowski <krzk@kern=
el.org> wrote:
> >>>>
> >>>> On 09/09/2024 13:14, Fei Shao wrote:
> >>>>> Use and add "syscon" in VPPSYS node names and compatible to fix err=
ors
> >>>>> from `make CHECK_DTBS=3Dy mediatek/mt8188-evb.dtb`.
> >>>>>
> >>>>> Signed-off-by: Fei Shao <fshao@chromium.org>
> >>>>> ---
> >>>>>
> >>>>>  arch/arm64/boot/dts/mediatek/mt8188.dtsi | 8 ++++----
> >>>>>  1 file changed, 4 insertions(+), 4 deletions(-)
> >>>>>
> >>>>> diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/=
boot/dts/mediatek/mt8188.dtsi
> >>>>> index 2900d78b7ceb..14e51a11f688 100644
> >>>>> --- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> >>>>> +++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> >>>>> @@ -1799,8 +1799,8 @@ mfgcfg: clock-controller@13fbf000 {
> >>>>>                       #clock-cells =3D <1>;
> >>>>>               };
> >>>>>
> >>>>> -             vppsys0: clock-controller@14000000 {
> >>>>> -                     compatible =3D "mediatek,mt8188-vppsys0";
> >>>>> +             vppsys0: syscon@14000000 {
> >>>>> +                     compatible =3D "mediatek,mt8188-vppsys0", "sy=
scon";
> >>>>
> >>>> If this was working before, it looks like this is not a syscon and
> >>>> bindings need to be fixed.
> >>>
> >>> I guess it's because the binding was later updated in commit
> >>> 26bcd8a53098 ("dt-bindings: arm: mediatek: mmsys: Add VPPSYS
> >>> compatible for MT8188"), and the corresponding DT update was unnotice=
d
> >>> at the time.
> >>> If that makes sense then this should be a valid fix.
> >>
> >> Not necessarily. Why not fixing bindings? Prove that bindings are
> >> correct, not DTS, first.
> >
> > MediaTek's mmsys doesn't merely control clocks, it also provides
> > display pipeline routing control and other misc control registers, so
> > it's appropriate to categorize it as a system controller over a clock
> > controller.
> > As for vdosys and vppsys, they are likely variants or aliases of mmsys
> > introduced in their newer SoCs.
>
> Nothing like that was in the commit msg...

Just for a record, I've revised the commit message in the newer series:
https://lore.kernel.org/all/20240925110044.3678055-7-fshao@chromium.org/

Thanks,
Fei

