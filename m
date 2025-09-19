Return-Path: <devicetree+bounces-219140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E127BB8811B
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 08:58:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C4AA3AA43C
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 06:57:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D265529BDAD;
	Fri, 19 Sep 2025 06:57:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ACE34BA52
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 06:57:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758265076; cv=none; b=ZnH8xS1NgLtOXBkFn2sue28Ywlo4lKcKQpG+pMQwCorf+DZWLl4qgnWIGeq3KkMKVAXyl0QUsbQZJ8MI8VfAQXIC/VMEe4zMWrng7kodQ746XD2qDZFT632fZyl2iXJgfknJ1s+kC/At2CzVFY2N8uQwM0ol1Y0iKNXdY/cjw7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758265076; c=relaxed/simple;
	bh=92VyL1l/CCW1RzuyUm3CyqNURYeJmbDXunIJF9vmd2A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WRz14yZdM8H3+Vny5d1G+p4DrlvUKq+h9Uqiq9NriMt26mvusLbqLe1QyE7ir+JoqRvu0exKESmXoMRJ6iqfrLeWXM5VqqfEJzdd4znFKMAyghNbNcThgj+molt5noHPfevV+w46jPgN5B+j7YjLKcsMA25oWL2hHlFiSbIFGaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-4b60144fc74so22118761cf.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 23:57:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758265074; x=1758869874;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pkV81nju0TPvNncudyLCXK6ByPHFzfyoX04Ft1zWdlI=;
        b=hE1lMDYAW+0/Iz+hJI62yhsqwMFJinn5hhfho5FSQtIldhwGc7Lu8FkI74GS3Kclls
         +OplPzy+UgX1GdGcqX+3O9tzZr9iRYm8xrVYMAfMOY/2BxYljEffCvo9FoVLR60UsIZl
         V1kRgYn16ZFaymsgQcqrpgbiLCMO8Mq+N8zjAFYKFNMtygoyAyPEQpGw7xmWYwsdhICu
         XHW8k4OAQ9jAGubMv1K31oCALnhfl+3T+iJ9QzqhX4E9XXNdYo2WMBOy3je4zihw8lRV
         qpnqtwU/6usvkc5coX5DsUV3TwuHUgd/qaf8lsJ/ocd/hNMgcSyYyCIlKYQ7+g0Kfmo7
         aLVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIPUrMqiRTmiGJdg+g1aWaUJjif5pzRgIpbEnnds6Zz+8d7U9hZtb3CEWJaywOt8Z6i4HyoxIdLsce@vger.kernel.org
X-Gm-Message-State: AOJu0YznEnDqTbRWySstJs+IGvmyRSa7KGoeHVARhR8aODTAFpErZntI
	rWoEYyPsKYmvCkhUuy7CZ36jYiTj1WLU+9XMvJskgCg0vRgQ4xEl4wFqpW4haWxU
X-Gm-Gg: ASbGncupUzRuoBRdSisGU0FYOG0OL/fu6wluBz4bCY58r7Q6B5OGgai6kCENeDcH2Jh
	Ne6D3nsySV6C3gKCd7iS3MCTWZPizXjCWXLNVyMEHxyQdaHazYz7RE2bWqfBor0pFAABPnFcAR8
	D5ikFPHWhFIGgQt0To7erhJr9YJjZUcMsk7FTtbc25wbskK4SG+4u+XQ8UMXg52TQtSHzFkWugT
	L/m8+STcvjKX2J6YMfBAzsXQQWq4WTCy51Bw9jmpkH2uqyK0mGnzQmNbD53BXH7nL2DbhcEqQoC
	xc7irHdAEbNwIrWX22I5WKUMvqirxJmBWdgzTFZAZHW2Ig4JNhuSqg0bdC1YO8EwL2CqrItMbdq
	+l0XRvsyCPUIa80bueM5FxamjatbcaLDVztXvEwOw2QacG5RGU0YtDrwPydRmvvzu
X-Google-Smtp-Source: AGHT+IGMExA35qK0eiDCDSXEuzwElLuPLd5+DOztDWED4cSs29vv0r2V8nrZhoc7dDe5ey/ya33NkA==
X-Received: by 2002:ac8:5785:0:b0:4b7:a3ac:701b with SMTP id d75a77b69052e-4c06cdd7d4dmr29514891cf.7.1758265073805;
        Thu, 18 Sep 2025 23:57:53 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-79355ce6648sm24661726d6.65.2025.09.18.23.57.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 23:57:53 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4b7b3202dceso19195171cf.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 23:57:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXTBocX6paGpR9Udt3+9dgw+v7rMXI6MRwDfPtoMeu3TAT02DiHC7EszF7CqzIrEt3Es7CVCdr2yIdl@vger.kernel.org
X-Received: by 2002:a05:6102:cd4:b0:519:534a:6c24 with SMTP id
 ada2fe7eead31-588f87db47cmr602651137.34.1758264769029; Thu, 18 Sep 2025
 23:52:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87ms6snut0.wl-kuninori.morimoto.gx@renesas.com>
 <87ecs4nult.wl-kuninori.morimoto.gx@renesas.com> <86ikhg13m1.wl-maz@kernel.org>
In-Reply-To: <86ikhg13m1.wl-maz@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 19 Sep 2025 08:52:38 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVezqWxbFp9dd0WPJnNM+MvmQ9F0UA2Ru_BSV6-6VgOyA@mail.gmail.com>
X-Gm-Features: AS18NWD_Pkgqx7xjtQzxa7XmXgry72f3hJO1WXd7ew0O-6Nznr1kYzKT4iwfWdQ
Message-ID: <CAMuHMdVezqWxbFp9dd0WPJnNM+MvmQ9F0UA2Ru_BSV6-6VgOyA@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] arm64: dts: renesas: Add R8A78000 X5H DTs
To: Marc Zyngier <maz@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	"Liang, Kan" <kan.liang@linux.intel.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Conor Dooley <conor+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Ian Rogers <irogers@google.com>, 
	Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@linaro.org>, Jiri Olsa <jolsa@kernel.org>, 
	John Garry <john.g.garry@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Leo Yan <leo.yan@linux.dev>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>, 
	Namhyung Kim <namhyung@kernel.org>, Oliver Upton <oliver.upton@linux.dev>, 
	Peter Zijlstra <peterz@infradead.org>, Rob Herring <robh@kernel.org>, Will Deacon <will@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marc,

On Thu, 18 Sept 2025 at 12:01, Marc Zyngier <maz@kernel.org> wrote:
> On Thu, 18 Sep 2025 07:27:26 +0100,
> Kuninori Morimoto <kuninori.morimoto.gx@renesas.com> wrote:
> > +             /*
> > +              * The ARM GIC-720AE - View 1
> > +              *
> > +              * see
> > +              *      r19uh0244ej0052-r-carx5h.pdf
> > +              *      - attachments: 002_R-CarX5H_Address_Map_r0p51.xlsx
> > +              *       - sheet [RT]
> > +              *        - line 619
> > +              */
> > +             gic: interrupt-controller@39000000 {
> > +                     compatible = "arm,gic-v3";
> > +                     #interrupt-cells = <3>;
> > +                     #address-cells = <0>;
> > +                     interrupt-controller;
> > +                     reg = <0 0x39000000 0 0x20000>,
> > +                           <0 0x39080000 0 0x800000>;
> > +                     interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> > +             };
>
> I already asked for:
>
> - this comment to be dropped, as it serves zero purpose to the common
>   mortal

What about using a different comment instead?

    /* Linux must use I/F Region 1 */

I.e. replace "View 1" by the above.
Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

