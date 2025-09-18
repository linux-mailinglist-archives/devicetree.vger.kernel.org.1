Return-Path: <devicetree+bounces-218784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A3CB83F63
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 12:06:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 726164E2D6E
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 10:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 419FD26E71B;
	Thu, 18 Sep 2025 10:06:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AACB527726
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 10:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758190005; cv=none; b=Ef6laBOmbuDOsa5CbuFT43uCbV8w4ma5KFDWuhEAbZMEME4r0ljokKgqnRmlR+SR7xJCVqkWWmbAAdKXflzYviPEQr8TyQyTQWTrPpnApThr8+MU9oxwtFwBc2mWMua+Cq2XP4TJeu7y1vrui6L+KJEL/MsARFHqV3SinIPcTSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758190005; c=relaxed/simple;
	bh=Xhd+Zs+m+eFeRxYfwTUWH3/IgVMq5TlAz+/WIR4VgFo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CB4cOEbW/vGBKN68DVlggI6tlo+frIqGrOGFagKVMEJpOMivmlPsERQ7zidU4mQ1lrW6WAjk9peMXTLb95faMzWp7gkn9bYjd3Io9eNkylbGiHmT9OF2MwTl0JlLhTuj2cFicQse7Gz+Djw+ZvLY4iZw6567NHiGDfo+qY1WKPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-53042807be7so516119137.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:06:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758190002; x=1758794802;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MCgJo7Iim2r1QY3epPnNwQa02OhmB0pJps80hKObtxM=;
        b=hRHFesVQdOekz3XtwyYt+dtnmC4ouJ+GmMVgk5zQ+DeFi3EbSEhI0bZmYfNbcZTvIG
         DukMhxnK2wP8qKV9iAgkGsOPxkaXjHvizEvOdZ+pkME3AOtarQ6QIH2GDeHVwXRbPE7w
         AUnd+7Ypmahu/XACKCQRAjF6ePAO2nHZ0dFJdA+/zVCd8AotlB5RASJ3ZkymZ7KRGThP
         2N/7UHQGCr5D+yse+GUbRuCv4q1zW/uE4+wW2StNtyLDdmtPE+UcA0520HCkpSEVokWx
         hwpnGPHr6UyZCVpRu2gtJZUqnJiShlAoVrfrqSFWLTql+uDd+J+aHJ5cnf/wEWvh+dhk
         +y0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWXHDGMcWaWL/MCLcBxIAJN9oQ66whN0PtSqUzXhqt4/5ztWkC0o6Qock6IHEid0KyhnnxVqPF9dSLW@vger.kernel.org
X-Gm-Message-State: AOJu0YwTZlp8Hd5GmNJI2tT8B7rEAgI7FEky0x8tK2+n0ouBh1f2/iVl
	ATbaOuyBNLTDA60x+V0ZBB6+up8EPLMLqX3R4EckZ4zwZzR01KSyGIeIbVou9q7y
X-Gm-Gg: ASbGncv60sqNbhkaucjRJ7RWDmHGRJTo1kJVIM7QyH7PEOV2s+kuyxgWgqKWpTfIvNZ
	MVmUQ3ILNPPMC4NLSjmcMotDDCLHRZvBc8FSPQ12acHfT9re/4o6Z59tWoAtt9dpDk1zcMG15Xy
	GIw75UaXuw6Xw1hdpdtjbwrdLMhuFe1Du9/8AZIwdW9Fp/kVL4hY5a0izb38Fd6ElKgmDaTKaXa
	O2PJjoz3eHBDrCFpnRqT2KuwoR2y44cRuyWoGFTdemeozR9shYKOeKjDPzvUbdasRd1LiSzwj9j
	EWikYtPP0/jjUNLz1Feo1w3kMZjooTtXD7RGt5P3x9KO472M4mVNSvsfCue5rqGxst7U/iEgdFw
	u/dO63EOzbqIBVsSTi481vZN1KsexFhtnGTM+XrAQUHMRm+V8469xJH24CpnC89BIdkz82SKe9T
	roNhI=
X-Google-Smtp-Source: AGHT+IEDWqmn+u3jYnMl9rt2PBFWCnF77weyO0CBRCy78wLNhccociK1beYIXtpLf9RrbDFYZBl14g==
X-Received: by 2002:a05:6102:3ec4:b0:4f3:1d:6b47 with SMTP id ada2fe7eead31-56d69a13785mr1853797137.25.1758190002536;
        Thu, 18 Sep 2025 03:06:42 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-579dd90a7c4sm516916137.2.2025.09.18.03.06.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 03:06:42 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-8b32453d838so526658241.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:06:42 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVj9i30z3nErv4isW8dDsMlJormiOMxx5BK9+n2EJ0w//ejgWIYhVltZj00cFtzQawEl+F34Ca37An9@vger.kernel.org
X-Received: by 2002:a05:6102:4b04:b0:4e5:ac0f:582c with SMTP id
 ada2fe7eead31-56d51ca1fcdmr1779501137.13.1758189682008; Thu, 18 Sep 2025
 03:01:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87ms6snut0.wl-kuninori.morimoto.gx@renesas.com> <87cy7onul5.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87cy7onul5.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Sep 2025 12:01:10 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU8+V-EbrSFF_f-pAm95zZLtV8mMjOFAGX+af2JO9Q0LQ@mail.gmail.com>
X-Gm-Features: AS18NWABsRlKpDFFCpae_UW48HuvCqA9B-vtOkVv8ToG4xGXl4aYc_QckQPRgYY
Message-ID: <CAMuHMdU8+V-EbrSFF_f-pAm95zZLtV8mMjOFAGX+af2JO9Q0LQ@mail.gmail.com>
Subject: Re: [PATCH v5 7/7] arm64: dts: renesas: R8A78000: Add initial
 Ironhide support
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: "Liang, Kan" <kan.liang@linux.intel.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Conor Dooley <conor+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>, 
	Ian Rogers <irogers@google.com>, Ingo Molnar <mingo@redhat.com>, 
	James Clark <james.clark@linaro.org>, Jiri Olsa <jolsa@kernel.org>, 
	John Garry <john.g.garry@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Leo Yan <leo.yan@linux.dev>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>, 
	Namhyung Kim <namhyung@kernel.org>, Oliver Upton <oliver.upton@linux.dev>, 
	Peter Zijlstra <peterz@infradead.org>, Rob Herring <robh@kernel.org>, 
	Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>, Will Deacon <will@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Morimoto-san,

Thanks for your patch!

On Thu, 18 Sept 2025 at 08:27, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Hai Pham <hai.pham.ud@renesas.com>
>
> Add the initial support for Renesas X5H Ironhide board.
>
> Note: It is using "maxcpus" in bootargs to limit number of CPU, because
> SMP support is now under development. This limitation will be removed
> in the future.

You forgot to drop this paragraph.

>
> [Kuninori: tidyup for upstreaming]
>
> Signed-off-by: Hai Pham <hai.pham.ud@renesas.com>
> Signed-off-by: Vinh Nguyen <vinh.nguyen.xz@renesas.com>
> Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> Signed-off-by: Khanh Le <khanh.le.xr@renesas.com>
> Signed-off-by: Huy Bui <huy.bui.wm@renesas.com>
> Signed-off-by: Phong Hoang <phong.hoang.wz@renesas.com>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

With the above fixed:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

