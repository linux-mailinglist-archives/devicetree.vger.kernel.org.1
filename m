Return-Path: <devicetree+bounces-204951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C26B27708
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 05:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB3C91CC70DE
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 03:43:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FAA329DB65;
	Fri, 15 Aug 2025 03:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kwvNuP2C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5930A286D6F
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 03:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755229405; cv=none; b=BlB1PirRLElIrBdRJcPJctAHilpe696CUfl8JxRtFq4huApUCu/OFe2ennQDc2BJjrdoIXQ25VhdWsHFmHTw6WzJSFWlKAea2QMDCPPhXqjJYUcChnZjzcXTtFHiPgRh51wWfj5wnk/rgyRCgJz+slp/Xp2WC8562cIfKnQV/4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755229405; c=relaxed/simple;
	bh=b1bVscfxC4uFT/CEoA/bhRidOult40TJcVZcOy00MCI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EBZvltLGftfY07M3C4UElV6vOpAx+5iGlfTon1f7S6Zmm00FYXSa/rmC0bHJgsnKJGY2s0Od5C7osw20wr+OypZvPNiwB5fSB0NmoWTk471QgAmUqj5aDYChPFwGFJK5Ljy9lx+grBjatczIy2nNkS/JzP3f54Q12WUsf7Uq9zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kwvNuP2C; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-55ce52658a7so1486834e87.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 20:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755229401; x=1755834201; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b1bVscfxC4uFT/CEoA/bhRidOult40TJcVZcOy00MCI=;
        b=kwvNuP2CIZOJMuv6JQVxGZF7wCgfvL/cCINTMjR+jI/e/I80srcqTzD2IdB5OTKOMh
         EjKdYYT91g00ngvRlnd9VdncuLw6ZyCiOPuAYcgMit/ol2jw6VcOU90uXEEYkqmcO70+
         g1GFtDCE8xJdE7Nmm3IKuPmbxweVaak5KzfD8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755229401; x=1755834201;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b1bVscfxC4uFT/CEoA/bhRidOult40TJcVZcOy00MCI=;
        b=iuUEFhZfT9nwMT6O9AKynt/eX3ZAPnsAwW4osRbPSe0brmQD2LW088OZqTfbbg0BY2
         L/SeBhE7D4zemZYlia4wMeSANnqxcMYk1ChlMyifYvGEzNrYtOoMdleIkHmrRoc2dFDA
         rw2+zUJBhr2D+Fw6hQRXh3eTMPvoDAKUBhEnZyP3x8w8P8JLLpAnL+gVhXG+zg2wFRl7
         2qey9XPeWIhSHU9nqazTQabXEK1f7lR414JWYRRHNILapelVEF5AQZ2oO0OrZgd7ZJFS
         IxJbLxZMt3dVOjtGpguWxTIIFU/tgZ08hiypwLp0ReJF0yMjWAf4Qk35NQbzUnhYpmUI
         9gUg==
X-Forwarded-Encrypted: i=1; AJvYcCVLJ1ZvswJ3XAjFshQRN0vex8UwEg5Y8l+pHEC367Rm9WzNNeItHnFpk1PM8PfuRRONfSkp3XmHhDlx@vger.kernel.org
X-Gm-Message-State: AOJu0YyNATuh/l8j0/snFcub2dZ20bdmyicz48NTp4BkpafOzkK4zeCi
	34zeGGbIqPkX47OfR8GBdWvHwcuJY9llU4Tb0RWApYjEMLzqb3FW9JsbwvA4ghWEYQrG8VKVGnC
	TV+iBaTcV1VXuf9C0DFizZDF98FKtaa6maTEZNFwr
X-Gm-Gg: ASbGnct3l38RthjWiGS6cp4oPofYI6Nxrm+NhJ5tHwGUJiWKeuX4BCH//YVtrWhWxjC
	sHjz9rreY7xJnlJbxMpkDUsX1joDWFDhrHUrCf3eN1tS+1u0JGhYm7qAiISAWUnx3ocsfSEHRVa
	PnB6VfCISNo9OXEh+gG1/q946tu9WB5FT+n8+V9XsJ916VLL1mzkLNEfntxyQjSj8hWyvUTQXNu
	9zF7uBYYtCn3McaaGw40DbvEFoI/FKPW4cm9g==
X-Google-Smtp-Source: AGHT+IEqCwdjtNotzKv7k6sNon11epPQ9Q7yaZt1pImrKpO8J5PSviVGiMjVATClFXgSR2SA/yoBT6p78Ov7Q+2gotM=
X-Received: by 2002:a05:6512:3e0d:b0:55b:84e7:e14a with SMTP id
 2adb3069b0e04-55ceeb42b0fmr131122e87.25.1755229401420; Thu, 14 Aug 2025
 20:43:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250805135447.149231-1-laura.nao@collabora.com> <20250805135447.149231-9-laura.nao@collabora.com>
In-Reply-To: <20250805135447.149231-9-laura.nao@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 15 Aug 2025 12:43:10 +0900
X-Gm-Features: Ac12FXzyZO_yczjiRVwJ_XiOUJ7K7LAiS8kN-QE11MKfkqUjTCK5j2sczcKt2tQ
Message-ID: <CAGXv+5FwV1YuBoefMAX1UvOd1=cg9Ld1ZawyNts1BR8YMezhKQ@mail.gmail.com>
Subject: Re: [PATCH v4 08/27] clk: mediatek: clk-mtk: Add MUX_DIV_GATE macro
To: Laura Nao <laura.nao@collabora.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, p.zabel@pengutronix.de, 
	richardcochran@gmail.com, guangjie.song@mediatek.com, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, netdev@vger.kernel.org, 
	kernel@collabora.com, =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= <nfraprado@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 5, 2025 at 10:55=E2=80=AFPM Laura Nao <laura.nao@collabora.com>=
 wrote:
>
> On MT8196, some clocks use one register for parent selection and
> gating, and a separate register for frequency division. Since composite
> clocks can combine a mux, divider, and gate in a single entity, add a
> macro to simplify registration of such clocks by combining parent
> selection, frequency scaling, and enable control into one definition.
>
> Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collab=
ora.com>
> Signed-off-by: Laura Nao <laura.nao@collabora.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

