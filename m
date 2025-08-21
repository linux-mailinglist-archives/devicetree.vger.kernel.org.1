Return-Path: <devicetree+bounces-207441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 549A5B2F74F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A51F1C83E10
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2281F30EF9B;
	Thu, 21 Aug 2025 11:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o9dY4L8f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDF32DFA40
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755777400; cv=none; b=jZow0N4tqtnAnPhyjfhGFJLJ0GAvp1jb3MkQydEELxcS2D6+T8b7dnB2j+LuBrNW8RbxyVEo/i79703hvX/AHBWx0nh27ExpxwuYOEEe0PEm49YbsP8FTBvf5tYMohHPOKiPdgSBXNHIUplm45O1XNm864VTqoRDFY7vA/ffIuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755777400; c=relaxed/simple;
	bh=uf6vS3Gl2AuJ7xqaJiaRJedxS56Xesptizd08sfMens=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=usc8p9XtumkvzduJsqLUvNsEPEBvpLC2F3fgR0F3M6YJTBtX2bFIz1jXn/h56DqaFpOT3V3DO+g3Eu3O5CyCxLd2BPDad/V2tFWDrpZJY14E9YCiKgg/QJkLUlTknV/WLgJAhMwXW7MBaJP3Cbavw1divFpGxe3C2yCvoaSZxKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o9dY4L8f; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-333f8f0dd71so7544741fa.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 04:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755777396; x=1756382196; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NTRZmz9b45Hl2bTm1apFpY/NlVi3bfWcm6ULUt78zN4=;
        b=o9dY4L8fRM1bgesRcuwCsQbbh9CoT7nEgAEvHTWjMmcrsg5Ae/bAboardwNfBC0b0x
         +52PYLRAZLcwJr/nZ/mNZa3yryQ0S/vnvLdoMTs3KnANoqQLYYjf74eu9UyprDu8hIhA
         Ah5Mzim8Ey07GIGSLTEpJDmYOvkF3iwdR7NgTYfxty/wJNax+cQ1jdtXzfShEit76lYL
         uekFlFe46yrOSHYRUne2eMdd1S4KAphVwJMI+6Q3khPA6SLBiHEqrnDEi9Wk6e9vKR28
         8CjhxLGZQikFNJ7SWA778FzUTvDlNY2KXJCGxc6oyE/cc3eOGVTKEtHEDX63AeS8neAY
         I8fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755777396; x=1756382196;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NTRZmz9b45Hl2bTm1apFpY/NlVi3bfWcm6ULUt78zN4=;
        b=ZpdGjlAiecS9xX3zOFdYxYX/z8mVeSfBlBgWTuezMKhog4CqzKO65SwQEjmC3BNpQC
         xpwwi83CISyqi7jW0svHC2JzuUw+wkh0yX+v7Adj+GEhJJKqE56zm1NbdKrddwUnwIR/
         jihj59bFAbj4vKNa2xCPngXWdQaGKkx/gPAoFOLQQ7sIr2mr8qMCFkAFRF/ydOq17C+O
         uZ5TOxuUk+M3i/cGlXJvQHlxv8Hnd2LJJtIc8gf8j8vne2SztrPFR9yNsaqzGt9QHetZ
         1KXaFhl3qcwE2mGyi6jiITtliYN+VdW2Tqi4cAgNj0bp6MbE1HsfiwtaF2BcQkea37WK
         xENA==
X-Forwarded-Encrypted: i=1; AJvYcCVOtIRzyLdq7IPkjSg3b+yCaFYsh3hVtH24Xf40HKxF3F4VE3K0NK/InR4Y48tcE/nevQizsBoBagOq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7MQGCbDFL/LGeGhOJX1k5XLhwumbhxErz4mfxtG046X5dHl7e
	lkfnOh2L2nke53EkMEjFMYN9LnTETUuxizBw9wTUc4YsBGUQkO9A4CCQ6nyczUqh972NByiceVT
	YpnAdUYpFxbHYFyG97QFtnovCn13++hFFupfyMItiHA==
X-Gm-Gg: ASbGncv5egUqwvrTOECnHA+uOkiEQqnOKO4FCr8uteDVSlldDuXyYffEE0k0pNYIOG5
	xyPJt8AOB2fgu7+ejHQRI/6+186pHNOR5/z1NkyndhLMyTxJFqP4kI0Ret+/7DCKq1IVE+kPAqU
	WZFQwg8u1IFsCKZdcRTE0XbgN5iXAfDVxT4KU7gZf1IELGeHR4kFW967DIBNh9b3iVU+3QVAdwg
	mvOrLk=
X-Google-Smtp-Source: AGHT+IHLNT7GNgIK+Yc1AUKtRsJ+Pu3qxvF99KQLgmBORucS0GzpXEZZoUCuuB+z9QVIQwaQ+MKKQAluSVZweFngFeU=
X-Received: by 2002:a05:651c:54a:b0:332:57b8:92eb with SMTP id
 38308e7fff4ca-33549e7e81dmr7293611fa.10.1755777395492; Thu, 21 Aug 2025
 04:56:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250820171302.324142-1-ariel.dalessandro@collabora.com> <20250820171302.324142-14-ariel.dalessandro@collabora.com>
In-Reply-To: <20250820171302.324142-14-ariel.dalessandro@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Aug 2025 13:56:24 +0200
X-Gm-Features: Ac12FXxjp4iK3cFyWU_S6p_GaEq9BIq8dd_UPbgZlXscJTvrfMnMiNgyqvjOGHs
Message-ID: <CACRpkdbpKqKyebADj0xPFq3g0biPh-vm4d6C3sd8r0URyfyYRg@mail.gmail.com>
Subject: Re: [PATCH v1 13/14] dt-bindings: input/touchscreen: Convert MELFAS
 MIP4 Touchscreen to YAML
To: "Ariel D'Alessandro" <ariel.dalessandro@collabora.com>
Cc: airlied@gmail.com, amergnat@baylibre.com, andrew+netdev@lunn.ch, 
	andrew-ct.chen@mediatek.com, angelogioacchino.delregno@collabora.com, 
	broonie@kernel.org, chunkuang.hu@kernel.org, ck.hu@mediatek.com, 
	conor+dt@kernel.org, davem@davemloft.net, dmitry.torokhov@gmail.com, 
	edumazet@google.com, flora.fu@mediatek.com, houlong.wei@mediatek.com, 
	jeesw@melfas.com, jmassot@collabora.com, kernel@collabora.com, 
	krzk+dt@kernel.org, kuba@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, lgirdwood@gmail.com, 
	louisalexis.eyraud@collabora.com, maarten.lankhorst@linux.intel.com, 
	matthias.bgg@gmail.com, mchehab@kernel.org, minghsiu.tsai@mediatek.com, 
	mripard@kernel.org, p.zabel@pengutronix.de, pabeni@redhat.com, 
	robh@kernel.org, sean.wang@kernel.org, simona@ffwll.ch, 
	support.opensource@diasemi.com, tiffany.lin@mediatek.com, tzimmermann@suse.de, 
	yunfei.dong@mediatek.com, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-sound@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ariel,

thanks for your patch!

On Wed, Aug 20, 2025 at 7:17=E2=80=AFPM Ariel D'Alessandro
<ariel.dalessandro@collabora.com> wrote:

> +  ce-gpios:
> +    description: GPIO connected to the CE (chip enable) pin of the chip
> +    maxItems: 1

Mention that this should always have the flag GPIO_ACTIVE_HIGH
as this is required by the hardware.

Unfortunately we have no YAML syntax for enforcing flags :/

With that fix:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

