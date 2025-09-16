Return-Path: <devicetree+bounces-217791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFEFB593BF
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:32:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 161083B56F8
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72CA0306B37;
	Tue, 16 Sep 2025 10:27:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D87306D36
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758018466; cv=none; b=clOW/sM3bT9JEKt38SkKOHIgcGSfZYDFa7H8RdfCywVv0wFMx8jYBaWRpv6lHvqt1kcMkxLoJJfiaE/sKQpFmX8+W8qyiWhb5lcXzsf+ZwQh7pyGw3171x65zOakvA22WJSP4g9prhcSGHwF4z99YLSq/XJD3I81yfwA+1TrWFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758018466; c=relaxed/simple;
	bh=2ok48w1w7KOUXd9zly8s4KVnQwWsqmEcAwqHID6jWeg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=en/ySGUzF56mEOBXoVqjVSXgojfuVs+2N11ek8hyb/YtzN93A0BoB8xMykmPoh0kQnfhJtpi6FlsYFtFv1pcDW3xHrS0YFvOvwGFGrU0V5jdMyGOcuFQX8OPOVFVYVOYdz77ft5NDk+PTjxfk6E0LxvCySmxKRKlS815TW7J3Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.166.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-il1-f181.google.com with SMTP id e9e14a558f8ab-424117c229aso5740195ab.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:27:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758018464; x=1758623264;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xR3Y4U+9jEsROKJfJw59rI/EkalzjoLUt+5BWaKi6Y8=;
        b=B7PVW0yflNHkZBOLNSjiis4NQ/VtJ31MgZ3xmWrS6EkWVMCmr6NORnwUWtVtWRlOl0
         ZrgTMCu1Nj8qtvZHLZb6F5OUr1gf4Djxf2ntgLob3b5sBNewVKNYU1ihq+MevQfbq1N7
         W+wQLAlMm5GF+ZYYY57Kqh3mTRgh5TPRx8lthO9Z5cg1iUbeWpGxLdBFj43vH/t6XkZy
         EEbveGunod5NuwvwM3xXZzjOLyk4cHM6FheRPDKh2EAiTNlgNO/9cTiznuWvz5ApXabe
         XD8KKY4Jg49mMNg2NQNMh5ixydnSjmQmiy8SKc4SCrno9c0HZ3A02GtmjzypgXESqNh2
         N4DA==
X-Forwarded-Encrypted: i=1; AJvYcCVKQU0ptsmDQb+lROm9G2DvuTC27cK+3ndpQgQz+idCKlQknyZ7a8SZ6gotj7tR64iH8urkff36Pnyf@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu4PBFyTHzKf/LUAJMoK5u6xMiaax4gF4vHoG75uJhclZRZogr
	qn/pZUenb/QZ2Ymn7eQcuD7VRixlIuMXmQvJtcAKbbjfcOjEPwf3XN8qIrOL81sr
X-Gm-Gg: ASbGnctMc8c8xfK4X+kLl4CpLZtaNsXBk050jrScfTQgUJ7XilSjN+TRDkB/7iY07pq
	GNSwLnKNX8nTVwozip2xJTn9tNY7HpHqKqiZkMoF31HR4vWYQYsic3sP4rxs6+SMl0m8jXT/b22
	9BGF2AAWK+VvdCg4a1tq/6rywN6cNLC6EEYs7sOK88nPXAaAlqUmJogXUJwyL/4lMyG78xUvuN0
	0skLGHKkh+LqhhqjbIxSGtpmDszE1LL4k7CTnyAMVwmMYx5/jbYqlsnU6EB7JQOCjaiFapPyD5b
	5BgCj/6OKCgqNWso93uKXqB/+bhar+5YIx0oP+8PQcwiPoxl0y8ClBNn4IPt4mWI04IzHjhLOPp
	yPaX6ScM8rEfHNON2bu8sVPsPOoU4g1B17D9QZOY5IxZU5qbzfcPgnUa8Do5BRwxU
X-Google-Smtp-Source: AGHT+IGi9ZHHyPQvJKUpULtRCGgDGRkKtu20SyFM9ml+cpn/VkqFm2TG6z3Y2JlSXbMhC/W8bAKElQ==
X-Received: by 2002:a05:6e02:2509:b0:3f3:869e:a029 with SMTP id e9e14a558f8ab-420a464068amr148555875ab.25.1758018463781;
        Tue, 16 Sep 2025 03:27:43 -0700 (PDT)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com. [209.85.166.178])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-511f30cc6d5sm5566384173.76.2025.09.16.03.27.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 03:27:43 -0700 (PDT)
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-417661ecbb1so59696835ab.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:27:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVn5RC9oox1vAzCc+fDnLR7nhZToWQlkv1Uo3kRqv8VgZ0okBY6BG5ZWC7GBgG+OBwXcPV9n00MTHrK@vger.kernel.org
X-Received: by 2002:a05:6102:374f:b0:524:4800:77a8 with SMTP id
 ada2fe7eead31-5560908dc48mr5549412137.5.1758017979210; Tue, 16 Sep 2025
 03:19:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87tt13i0lh.wl-kuninori.morimoto.gx@renesas.com> <87qzw7i0k9.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87qzw7i0k9.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Sep 2025 12:19:28 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVQTftuiPGw3j-u7bzScs=UmsFruCKvSq-t_=JuKmpB=Q@mail.gmail.com>
X-Gm-Features: AS18NWAlUh-W1y7BXcMGcm9tJYfZlPplczM9NMOiyqYXewDD8MKxNGtLUFMdjw4
Message-ID: <CAMuHMdVQTftuiPGw3j-u7bzScs=UmsFruCKvSq-t_=JuKmpB=Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] soc: renesas: Identify R-Car X5H
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

On Tue, 16 Sept 2025 at 04:38, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Duy Nguyen <duy.nguyen.rh@renesas.com>
>
> Add support for identifying the R-Car X5H SoC.
>
> [Kuninori: tidyup for upstreaming]
>
> Signed-off-by: Duy Nguyen <duy.nguyen.rh@renesas.com>
> Signed-off-by: Huy Bui <huy.bui.wm@renesas.com>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Already commit 5284d0b09d1bdc69 ("soc: renesas: Identify R-Car X5H")
in soc/for-next.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

