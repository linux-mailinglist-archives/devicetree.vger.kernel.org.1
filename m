Return-Path: <devicetree+bounces-256962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD5CD3AFC8
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 16:58:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 44E6A3003877
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 15:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 535D438BF80;
	Mon, 19 Jan 2026 15:58:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DA722B5A3
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 15:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768838332; cv=none; b=oZdfFcI+08f3fbyz0huIEwvXBGCoT0x+798he5ZYTOE09IT2a7dmETSQSXDjH4DGDCNWKKl/32h3hy+8zMGHkGnqGHfjwW7sOXubEqerN80K1Z82bbkLCBb2qL7S7whiWS0uycVZTCwbs7N+kReSPAPm5+7KQFYsJOc/fRtygUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768838332; c=relaxed/simple;
	bh=19bTvFO2oXBa4nAZxK9G/wlSld0cACHrB0Ghe6tTkDc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JHbpKNLOOo96QksTE4eqzZ7F5m60H8bVN3JUqtrJlNYZlcZnsZM7hSSWk5eUHedpBjUHBWPfRmRBnaIpOkfeLPy6K5A4N/OCzTTZYseC3IM8UtTLETKNke5imhk2aLlqe5sd9601y7Bz3ZGZSQKF/apJK1HF5dsI7oajk7f9po4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-93f5910b06cso2686304241.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:58:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768838330; x=1769443130;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwYpB7OUoD7RGVXAKZghgG2fL8VsvMsrJb3SXVA7oO4=;
        b=nJGaMASaw6t60YTd6PT6+Yklyzr6uPK8jy4KetM5gO9OnT8eui3PZb/d147AoUS6Ob
         +OfVVf39UyABmTcC4kfLjnHoS6D9+l+NerPIPl2O7bjhkIXR3O4wU8sa3e8+Ht2Vdr4x
         D4tYBm5GGRJ+wlqG4kFJ7vHyhdj9oz9Lr2Sxfp3a57xitwtO41kFXuvrFSyc8hXQMHUi
         qIlP6s4JFXmtip0sq+l7vTc9PizBApExCXGTsKBpQ3nVzRVOV29u3oDJ5m0bw4QAwJB/
         LPCHm/qMkPUQHgdeN28jbdPKYojQ+0ZL1fQvmmYtME96qB/rTQUvDs0qfdOW3jl+W2Ma
         BRLg==
X-Forwarded-Encrypted: i=1; AJvYcCWK0x94SaHHiwcfwwpB7nUM2Nrgn+rPM3kaluXZCuBRw+1EypICfusWH9XjuUlm3pIR32Ow73/+AlVU@vger.kernel.org
X-Gm-Message-State: AOJu0YyNvkMqGFstJJfUyaKyIbRQR0YIm/Hdwtnb5MZKm620YCLHRU6E
	bJ5XtzEX+tQCdWieOAJCoceiOk38eXVgBNqohB4Qxac41j2zKpHJFNJbaiDOACPg
X-Gm-Gg: AY/fxX5Mk7aZcFrMcAyy1QFSjdM7T7lgDj2x8DbBnythNI/KHfgGD1gt2jO54BZGZUn
	qbXHUs95GxBKXRhuReA/0nhGAQlgEZwJO3A2qnmg/lE+0HvRh2LsXz1L5sVlbsaRm0Mpwi71Q4T
	QXATg1j6n29HAZ7tLz/QJ4v3aYIGbr2mBMYXriw1kkfETUlVH7LCu/SoS7JWKGbGEB7yxXIov6v
	YLrpyozNDpgJBAA/SpTvgUvOM1fe7Lu7e8HEGO48LOjPnS6ieFUcfFIJ42lY2eTzc3wusnO80qT
	/+TZz5js8oyPy3mAzIGkn/vdc2Rgzz19+PMa4N+0ydHUUuLhAMAi2buHzJbHqgULl7aqb02M6MX
	k5HWyvdxWznJzzihg06e2afKAdKmjBlz75/ywDkfw9GbD23ZtT4KQLjFXrGxM0u+9KD67vxMrUC
	UIBnKeyRFJxAv2f/9APzoojpELkykuA+HY4P/3six9JfUnVixtaY/CDj/tGkmDjG4=
X-Received: by 2002:a05:6102:418a:b0:5db:293c:c294 with SMTP id ada2fe7eead31-5f1a4da9ecbmr3881683137.5.1768838329776;
        Mon, 19 Jan 2026 07:58:49 -0800 (PST)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1a6e60c9bsm3474178137.14.2026.01.19.07.58.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 07:58:49 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5636dce976eso3451313e0c.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:58:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVPzh5TXL8OiwjCAyT2om5xeF4aeBRDDh+P9ngxcsvEiQ/AdWCGQkEop29xpeWKb81nrnsLAZUJ72fE@vger.kernel.org
X-Received: by 2002:a05:6102:3e96:b0:5ef:b32c:dff8 with SMTP id
 ada2fe7eead31-5f1923fb2c1mr5628745137.5.1768838329404; Mon, 19 Jan 2026
 07:58:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
 <CAMuHMdVyQpOBT+Ho+mXY07fndFN9bKJdaaWGn91WOFnnYErLyg@mail.gmail.com> <2b6f19f3-aaf9-4fb7-bef7-f38e19f94351@mailbox.org>
In-Reply-To: <2b6f19f3-aaf9-4fb7-bef7-f38e19f94351@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 19 Jan 2026 16:58:38 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUfinX6K622_ThmX-srfq2Mb3CTHD-LdAR3YgDTZq51oA@mail.gmail.com>
X-Gm-Features: AZwV_QiA0q5O-g1daJUkKfsigh6f9aOP9tnmWWUeAh4TC3ZblJYVL42xTYixBq0
Message-ID: <CAMuHMdUfinX6K622_ThmX-srfq2Mb3CTHD-LdAR3YgDTZq51oA@mail.gmail.com>
Subject: Re: [PATCH 00/11] Describe PCIe/USB3.0 clock generator on R-Car Gen3
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Sun, 18 Jan 2026 at 14:54, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 1/13/26 3:19 PM, Geert Uytterhoeven wrote:
> > I do not know what is the actual issue.  Adding debug prints to
> > rs9_suspend() and rs9_resume() shows these functions are not called,
> > while adding 'status = "disabled"' to the renesas,9fgv0841 clock node
> > in arch/arm64/boot/dts/renesas/salvator-common.dtsi does fix the issue.
> >
> > Perhaps you have pending patches for the rs9 or PCIe drivers?
> > Do you have a clue?
> I believe this one should address the problem:
>
> [PATCH] clk: rs9: Reserve 8 struct clk_hw slots for for 9FGV0841
>
> https://lore.kernel.org/linux-clk/20260118025756.96377-1-marek.vasut+renesas@mailbox.org/

Yes it does, thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

