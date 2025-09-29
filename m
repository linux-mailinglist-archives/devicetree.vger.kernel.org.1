Return-Path: <devicetree+bounces-222437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7854BBA916E
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:44:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 902601920277
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CF923016EC;
	Mon, 29 Sep 2025 11:44:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F9971A9FBD
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759146250; cv=none; b=k+BUqS76TRV7x3ztNCZsewQw6oAZQaR1wvzy5+yGT56bCVAz8LGeNA+pPsr9cEcqXes214QA4ut7DNJXb7wlQkMbWw2It1CUODCbMtMXuYbgdLJZN5yRBw6Be3vQ2u0heOhw4S7Tup9LakynZOlPbmvF0NH7ZqwXe1JBIpETQ2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759146250; c=relaxed/simple;
	bh=mnFFlAyLIwT1Q5AcB5DFjSNt1dV9nkw1CzOpVFtZBvQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WeS87bWYk9MDNq1vxN9atM4c3nCkn7p1RD8e8MkwfVVirjV0kwJk+ANcsamsu2ON3Uy0cE4KQZ88lDYi+mgppMIWnQ8+gvBbqmbLERAIjlhqpsxoGlHaRsFJSQNavKXtlUDHfiBBjGmmDSeVN7gIcCIrgVv+9jAgidBq+9U/cZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.166.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-424da17e309so50547635ab.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:44:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759146247; x=1759751047;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4wo+c49wamlH5OIn4NEbxEDOQ99erhVXBTj7EjS/boc=;
        b=QQ/e8v7dPZsb+kizw4er7eRgr9oEd8tPJi+AL7uAoeQqvIqxo1qWsWAo/dRy6+BO6c
         EyIaWwiYERUAg4jFeZUKVel0z/nXVjT/iHBPIeGf1TtjeRRCpH4zI8LlSYAOy98DDFcc
         qFI6ITlfH46RBLJDddlanxrZSmITB/6CPIi35dbFP/YBaKsRbwjgPW7HzsAUQ3Wvsgpz
         QPzK4/i2yVEUitHQjEwNYBD5bDgmwuqyo81e2a/op5UiNs8+9S3cttWR+/XjB35zfzro
         zPwLm7an4U7s025BRLOgnIGxr/RbpuwD8ZyfLZTsawF2d1D3Ijm735Qmd6uDe7SG8DSQ
         95bw==
X-Forwarded-Encrypted: i=1; AJvYcCW8f1ORKY9StuFFAePDsZQ62zeUR7HxIGCxwRtPSSSjcRVDts+B4WbtflEK3DjBBWbf21somlu3xYPU@vger.kernel.org
X-Gm-Message-State: AOJu0YyeRebQAfkPujyRhtgiQn0z8+AxBjbx/F0H5Y5pqle7yCneAwGs
	VZ7x15WPxeXR2wjbSrD4WLrjhZVT4XZcyfns1/q5xw+VtDX05eRVDxiaAgTmCM0Z
X-Gm-Gg: ASbGncszKwYfjXA1uLFRIZ+2ibkmg7yDF7qsh4wukWxvV+wU9TwopYSmlW1JQKniDZ3
	75cwqDF+TSHyPKV/DIZogAUUgw+iKOoAPSZpNRgTmsb4i7tT7359McY4bxc35PKgy/Kx8SMzEF/
	KdEaSWjJIGXxfFBm30SsFfxL0l+NYjFKTpPnCEFdF6y3voC76yn8tNbyMAbSQ60L86b9Y/jvLLu
	DUdh+SPqlNRajBbu/vizvHeOL8+1VTLTdFLIBey2ebeP8K4KwVapWFRjFxj6vxZ9Lywqj9x8yFk
	Vq9WlUHFGJoNFhDoiqataHJkl7U2qa6eGRUluDJyfArOZ1Xk1eaa6vw+RHDchBf/UQBEUCa1ESw
	OkTSpuUjZEh39xZQFEGcue9Uau1hJSWKNtayUBPh47/69uk4gcsnksKdyQ+zJLP5K1BO18bI=
X-Google-Smtp-Source: AGHT+IH87qecL7Xa43ZBSXR1G1vTFPR/ZSwcMV0l1toFcJPCGpd3jhlJbPC1D1uniWkTTSOzTuHgrA==
X-Received: by 2002:a05:6e02:198c:b0:429:5372:3645 with SMTP id e9e14a558f8ab-42bf7b53659mr41027055ab.9.1759146247488;
        Mon, 29 Sep 2025 04:44:07 -0700 (PDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com. [209.85.166.48])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-56a6ae6ec56sm4549593173.72.2025.09.29.04.44.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 04:44:07 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-91524f5e6a8so242403939f.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:44:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVNHB7RDpS1GwB1P3rS1UMQC1sV/Vmm2PgIfq0OA1G6GTK92oaVWSpuuCbsat5dDMviyMD6zOrC67Rb@vger.kernel.org
X-Received: by 2002:a05:6102:38d0:b0:536:7bfa:22d7 with SMTP id
 ada2fe7eead31-5accd215f1dmr5953694137.18.1759145777154; Mon, 29 Sep 2025
 04:36:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917170202.197929-1-john.madieu.xa@bp.renesas.com> <20250917170202.197929-5-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20250917170202.197929-5-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 13:36:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUfZG=FEMesgTz=q4agJ0huMPFe+gsvX+8-zmKBup-Feg@mail.gmail.com>
X-Gm-Features: AS18NWA4k5X5kIR9EAR4SmDXTePu3QOZUfbdTpezmeEEx4rSxAt1uKChq-x8rPA
Message-ID: <CAMuHMdUfZG=FEMesgTz=q4agJ0huMPFe+gsvX+8-zmKBup-Feg@mail.gmail.com>
Subject: Re: [PATCH v9 4/4] arm64: defconfig: Enable the Renesas RZ/G3E
 thermal driver
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: conor+dt@kernel.org, daniel.lezcano@linaro.org, krzk+dt@kernel.org, 
	lukasz.luba@arm.com, magnus.damm@gmail.com, mturquette@baylibre.com, 
	robh@kernel.org, rui.zhang@intel.com, sboyd@kernel.org, will@kernel.org, 
	biju.das.jz@bp.renesas.com, catalin.marinas@arm.com, 
	devicetree@vger.kernel.org, john.madieu@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	p.zabel@pengutronix.de, rafael@kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 17 Sept 2025 at 19:03, John Madieu
<john.madieu.xa@bp.renesas.com> wrote:
> Enable the Renesas RZ/G3E thermal driver, as used on the Renesas
> RZ/G3E SMARC EVK board.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

