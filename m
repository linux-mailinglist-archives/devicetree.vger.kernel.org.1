Return-Path: <devicetree+bounces-122649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D40109D1B48
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 23:55:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F1E01F21E56
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 22:55:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A0741EABD7;
	Mon, 18 Nov 2024 22:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JTYmrDbQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526791EABBB
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 22:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731970469; cv=none; b=cgVWnJFrmC59HuxZMKDqdGMTQiECE9MQXOB1UZlrAGJziskuCo9QbSwo+h0QW5O7TEHM8FRdxa99Zjl+qeI0MHoAG73tcGiitVK+VdsbVFrg6BWEdB5NvGfDn3V/VpxoL4EsrsM5yBLSnmdBR8ZkSpsIU7KByw7NaauRw7C5glE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731970469; c=relaxed/simple;
	bh=HkoCCdRW/H+xh3lTqBY8Ix0PmDgMIJshBbvCetsSrv4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ue52C5tRYHsCymP69xn+mYyhu+AzjKVZv+84aZRcpYpgebBSUu1o9ieG+aN2zkaQ0Jcn23S0O6MqwSpY9K+OCTkXrBiHnxYY94AAfcmsHXM0v8F9Rwm7MfvFBB82vIl/RqfZP/tybiRvc//qnfwydGl/t2ac4F0pX0ms9nYRasY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JTYmrDbQ; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb4af0b6beso35149861fa.3
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 14:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731970465; x=1732575265; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HkoCCdRW/H+xh3lTqBY8Ix0PmDgMIJshBbvCetsSrv4=;
        b=JTYmrDbQ+C8TvOUHC3GPS16kpcNJ+yN3KW+JTVMc0jI1NVURaQFuQsvjIFdte3m6zB
         G2uAIzHsepVGFLqBP5JJVGiprRH4zRo8r1T9Gw9eVitF/cIhqFAw59vWgscRH1o8eDUi
         39rbiHPgJ6Q+BxNbnXRQk1UorXKOYyI+9h8O8PLu5N7iHmsT5XLrBGPLq0rVZzGVkDOJ
         G04NcETlHJa1vOopuzLDpgdDlJEgMbexjzGtr1VVs7/FI7KtRJiDcTQ/ye+sLIcDxav1
         mYfmLvcK+Bmfn8e1ztjcrJfUnCoXkSU4bDCv/97iTZTaJFsXkevwbqWJAtiOSK4vWVrB
         T1tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731970465; x=1732575265;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HkoCCdRW/H+xh3lTqBY8Ix0PmDgMIJshBbvCetsSrv4=;
        b=IQWxymdWyxFbblGLItMOv+5l2QaJRKPPFpUItG+EBXCHzNs6Ru6EYsdQpWIXwkgOYZ
         BPVeRcVKp9wjZ5t/HPtCx95+MPJVrOaIBXH/0ZdxL+/9jIkRgLwEU3u9y46sh8R9HsgN
         m9s8nq5z9u62/EwLNPXLA/nm/LHiUaWIYvoDjQ9SHomqJkTN/dbifH4xIAjFlqJdCIx8
         ljs1QaB38IXOLqI1vfG/YqBtNLPBWiqY3mO85GO0xvv5f77qYBh1mwmKznFBuOHlOERW
         WGVcCtExeju74rKf2nhQjxTnJiCyEnMuzfOEm8MNTbZDUGeyMH5YiVhT5Tvo1jiS/SWA
         0XyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV75nYtVbT22Uft/iBcIWM+sYzqE3xNfFAq2pVh+JiINfyMEmEgUH1lEOxgtNCbkLZ20f45YEIlaGAu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz13VN4DVHkrXXTClLiBew7IFqT55TROTjpFMgBm0zaGxehord7
	I1zMdqsN3pg3HVgvhaTcZINsjscIo72qHdSL7FA2rxatAFFdC3S72pUWxdm/Rd8w8wCVUD16as/
	RgI0KLXSp/aNK2ioUpgojtJUuvqA/0RPbzDg4hQ==
X-Google-Smtp-Source: AGHT+IGHG4Twpe7lD6OgNd5mV9qcyQc83WrpmnfXyZIpyvXqcxMftc1zLuzdmDBbSMgcY0l2Bh6rM2EDwkL6YApVoRM=
X-Received: by 2002:a2e:9fc9:0:b0:2f0:27da:6864 with SMTP id
 38308e7fff4ca-2ff60661b95mr94886281fa.17.1731970465383; Mon, 18 Nov 2024
 14:54:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com> <20241113133540.2005850-6-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20241113133540.2005850-6-claudiu.beznea.uj@bp.renesas.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 Nov 2024 23:54:14 +0100
Message-ID: <CACRpkdaSuj=nKbz4E90Et5gcCmCKvjb3AZr5Zn6k6KnVeuf_dw@mail.gmail.com>
Subject: Re: [PATCH v3 05/25] pinctrl: renesas: rzg2l: Add audio clock pins
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: geert+renesas@glider.be, mturquette@baylibre.com, sboyd@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	biju.das.jz@bp.renesas.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	lgirdwood@gmail.com, broonie@kernel.org, magnus.damm@gmail.com, 
	perex@perex.cz, tiwai@suse.com, p.zabel@pengutronix.de, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-gpio@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 13, 2024 at 2:35=E2=80=AFPM Claudiu <claudiu.beznea@tuxon.dev> =
wrote:

> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Add audio clock pins. These are used by audio IPs as input pins to feed
> them with audio clocks.
>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Patch looks okay
Acked-by: Linus Walleij <linus.walleij@linaro.org>

I expect Geert will pick this up separately to his Renesas patch stack sinc=
e
it doesn't seem to have any compile-time dependencies on the other
patches.

Yours,
Linus Walleij

