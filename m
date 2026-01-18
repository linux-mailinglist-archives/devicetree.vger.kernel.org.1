Return-Path: <devicetree+bounces-256584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1777ED399AC
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 21:11:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5119D3013E80
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 20:10:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 200DE2798E8;
	Sun, 18 Jan 2026 20:10:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EUOTa+62"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965DF27BF93
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 20:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768767044; cv=none; b=d7UgzqZZnKYp+G/uVY9vaO5JOhnyBz10VV6CUghjodAdX/2/8ji6tt4YcK2oXx/WeFFXZOI5KzVVvpqTIAYyxrL5ns9/ISGgTq8x9thmP3JJtP1tFg/AwYU0lOkrbGt/fgZudHo3dXSA9L40nYcDQsKmhGnQ4qg3h/SSWfcx6aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768767044; c=relaxed/simple;
	bh=YQdSzYe4OIwvD0F5vTl7jLd58TIUeSmXsWT963KqLEg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FnD5x7ZpwfM5NBt2P40Ddcsktnlbc6IUB07rJvQBxcgDkuSVl1MYRBby9Bd6brWhJzcruP0JkfVpZoIUPUa/WgBn/0pA3tgGaRgAM4lA4DQzmo+OZ9DigfRU711KGSUBAlWUXZNcQbwniWQP72POlgyf1KHXZXcVuk7ZWTqCb6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EUOTa+62; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-45c78da5936so2524758b6e.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 12:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768767038; x=1769371838; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AGoxtBWa7Hges9TlON6JW/74fTOpKQVhj45ottMY/WE=;
        b=EUOTa+62YVm/qMzamzBBDlhsBPO9JitHm3X/gubIy0odbo0x1kYvgPgYtR5Dalllzd
         ZDw7+sX6ZbPkF0ybJ0sc6QxDrGPf6pvoelu/j65W1oGfV1f1K5e7B8Buze1iLQ9xrX4U
         1nbFVEHX8yA5zQJiX30d7hpGnEBZHILVJV6GWR1XkWMEiPINzERtyrKw6KSaQMPfG7xd
         +WAFFUhAsF8JwNUxjhA1YtbI1XKMzQOjiO3wgYqIoCDDuCzmQavo1Q1LoK3kOowa+rQ4
         3WSqC2p3gOBL2xm+F1GfOUMbnPOo/26e4c4VdMFqNJFmMwLyCRVuvpRITFtfBFrlrd+8
         SNFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768767038; x=1769371838;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AGoxtBWa7Hges9TlON6JW/74fTOpKQVhj45ottMY/WE=;
        b=v7f5ZLNDd++8jgHRHYAVoJY5ozAAB20NmCflcze26LWe5h6tUmPFx7hdWTAtt6GC5A
         LnkoFdsTCgV4WV/Q+x+ZnfL14Z48gA1OlbCpgu3DKpRgg/KxxUrupaIws1r5jtSaazrJ
         84J4uze2RmhlDEtlBy+BEIIsATDnnu+TiwmFzdl/UQS2GFX4fyRm07EwdL6a1oTlj+QL
         f3iHqgaeAMy5JMPm7GxVGb8N32inxVQC9bBQkfdgRCT8t3Lz50AmE86iJb3pqZ1pMsG+
         AZZOJZasxJk98isolfHZsFtIZfO6dLETa+V91HxQ4dC2NCTXeYHqzDSuex7cuqUXvwd+
         JkpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOIS5fssyOvSx/35gJTmcg0/G01Ad1/RppYWcKNJtJa7aMWJjcDEfTLxDlip4qsQq/m6vUyr56qtdU@vger.kernel.org
X-Gm-Message-State: AOJu0YzjwOgyc80G18bdWP2Nv6I9cMvDCeq+PPUlvXwBdMpvwp0ddE76
	KKjuUOT42wyvJSsoFCbZwT2B0yjNI1pIRR/S5NX1BifHev0gwduZFcc9TOc2e0ZXkdKnx8ZF9ZL
	/wzmfsW8YRxyj07HKHNmntXoHWJWcyfo=
X-Gm-Gg: AY/fxX4qj/jkqrmPIQcoSIQbF4VLo7e9lySbwkUynDW12LM15kCM3wHuh09ZEvYf87M
	xfB2/y8GfNhSoESrPdZCa7oIkw4hS0xtKlQY1AIJ8T4mWAWRql6iackhy81UJbEhJpwaG7OfOVm
	OwLbtPWyPbsIEJK3yO0cU9WFialBBa6silL+iv0gtbNZjt5pv1UtQmyZ5NwLcfNTFpv2TT0g9Jn
	B27sqrnO/nGr3p8fw4bbPvPFhiwhi7b2Lt5rJqKXIUga3FWb2gLJIFmPsBwDbgMzFVuF6Ib
X-Received: by 2002:a05:6808:80b3:b0:450:89ee:922b with SMTP id
 5614622812f47-45c9c88dcd6mr5123911b6e.22.1768767038493; Sun, 18 Jan 2026
 12:10:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031155838.1650833-1-jason-jh.lin@mediatek.com> <e6c2c86d-71bd-453c-847c-1eff2be88be7@collabora.com>
In-Reply-To: <e6c2c86d-71bd-453c-847c-1eff2be88be7@collabora.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 18 Jan 2026 14:10:26 -0600
X-Gm-Features: AZwV_Qh1K-r-Z8NlKIiE7Ar8yunvRZXy4lr5rzaBilBfhNZa6yCxoqTzBHyaliM
Message-ID: <CABb+yY3ioZ4KCG0tp-r7Xj7hJZFf57xeA_mByUEZBXRaBQQ35w@mail.gmail.com>
Subject: Re: [PATCH 0/9] Add GCE support for MT8196 (series 1/4)
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jason-JH Lin <jason-jh.lin@mediatek.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Nicolas Dufresne <nicolas@ndufresne.ca>, Nancy Lin <nancy.lin@mediatek.com>, 
	Singo Chang <singo.chang@mediatek.com>, Paul-PL Chen <paul-pl.chen@mediatek.com>, 
	Moudy Ho <moudy.ho@mediatek.com>, Xiandong Wang <xiandong.wang@mediatek.com>, 
	Sirius Wang <sirius.wang@mediatek.com>, Fei Shao <fshao@chromium.org>, 
	Chen-yu Tsai <wenst@chromium.org>, Project_Global_Chrome_Upstream_Group@mediatek.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, 
	Jason-jh Lin <jason-jh.lin@mediatek.corp-partner.google.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 8, 2026 at 3:37=E2=80=AFAM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 31/10/25 16:56, Jason-JH Lin ha scritto:
> > From: Jason-jh Lin <jason-jh.lin@mediatek.corp-partner.google.com>
> >
> > This series adds initial support for the MediaTek MT8196 GCE in the CMD=
Q
> > driver, including related API changes for new hardware requirements.
> >
> > Series application order:
> >    1. [Fixes] Refine DMA address handling for the command buffer
> >    - https://lore.kernel.org/all/20251022171847.379470-1-jason-jh.lin@m=
ediatek.com/
> >    2. [Series 1/4] Add GCE support for MT8196 and update CMDQ APIs (thi=
s series)
> >    3. [Series 2/4] Migrate subsystems to new CMDQ APIs
> >    4. [Series 3/4] Remove shift_pa from CMDQ jump functions
> >    5. [Series 4/4] Remove deprecated CMDQ APIs
> >
> > Please apply this series after the DMA address handling Fixes patch[1],
> > and before the following series.
> >
>
> Jassi, since this is touching both mailbox and soc/mediatek, can we avoid=
 to create
> immutable branches to pick this entire thing?
>
> If you wish, I'm fine with you picking the soc/mediatek commits as well a=
s the
> mailbox ones, or I can pick the mailbox ones instead if you're okay with =
that.
>
Yes, I am fine with this going via mediatek tree.
Acked-by: Jassi Brar <jassisinghbrar@gmail.com>

