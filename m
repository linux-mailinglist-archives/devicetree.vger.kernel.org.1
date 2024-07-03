Return-Path: <devicetree+bounces-82843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4528F926178
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 15:11:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7CFDBB20F0E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 13:10:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9224C179955;
	Wed,  3 Jul 2024 13:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oy2yvwqr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6B817083F
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 13:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720012225; cv=none; b=keo5kqtDVS817GZSMuMV9zsmTifC7iAvcqnvC/KWMQ4v2yRLMZXpF6pR2js72EpaSpdBjuxTi7qyl3dSD9+x0ZkDCK1CBwUXgzaofp8ucbhUSNuZQ/hiUIWR5cSDhlmf5nCBL7EJ0+OPduHmcD2s+p94Ch5xzWUOztmxws+ADTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720012225; c=relaxed/simple;
	bh=+6hclvf7yvoRrs1xdE0WelBIDAexx3qJiuVoLAxjsGY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fA4c4sNEM+QgTd1RU8A506EKD9PKnzDY8CDowByuEI9row/vHKP5rQPZyf/UdLEFV4eQ/fH4+y48zYjdfS8wxZ7SJy5NN/sd0RvVoAbFKmzpkgC+Kb2n3dZhFIR0CzavMIobjj46Mh/cLPzeZXei95Nlds6dUHQmpTSlgugPfQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oy2yvwqr; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2ec6635aa43so53369991fa.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 06:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720012221; x=1720617021; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fYNKyC7r0lY93w+1DA2lEanB3Pazmm2DrUBGKs4HZ0o=;
        b=oy2yvwqrAK6JETmusojCN8LJu+CSRqHzg9I7tCVJy2scyEXGLGun+RRv3Zt55lmvzi
         68rnZPg9WScq8Oq24if+t5a/OFt3M6NITyFibdlGhGOfO0za7F5eA1OpeBmQxeH/pyzJ
         N2eGW2+FzlaTifudBzgdl0/tkdjU2Buo15NK+XVgI9ID6XvI11M9stO6F6Hvvj5xLi9t
         y5+Fagd2y2npas6DsDReBmAoEKWT9zdmUJRZzIafPAsR1Z9v+3SSjq3Cef2mO996MwTH
         ONFXM7M5tcylYTVGAilCzMvDU1L7UNxZTCNYTvJkCjn7kq9Xd5YP8DewFZ/jHlzMWK7V
         a7Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720012221; x=1720617021;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fYNKyC7r0lY93w+1DA2lEanB3Pazmm2DrUBGKs4HZ0o=;
        b=napqQ279eZpj5OysV4KvL7/hW/hqfx7QAz7uvJCk109svTGme04TWSsaOm8SwPwuX3
         fWSyNJS2Y1P6AfMUzBszsZ05iTDe64tm5jY+USW2+EP2/eM9u/Rm/BXsuIBXNFAv7Utq
         Ga7Ftsio8Eiv/2B2K7NMJBH7lXg1b2F0UgxQrYHE8Epxk0AXDdU+CSje+WqbXtoNvREt
         mDnQKRTGpdHH+LVwyIo3t2ISfnfXR55drcZodBpIJ8o2PfomK3u7ZakT8q+CwnXZlulz
         mb2GzCjmDUThK3uOoeDhbea5pFa+Stv7KYgFlV6I+mYgjLgsNGYZy6tdiy70k++Qt2YW
         jfmw==
X-Forwarded-Encrypted: i=1; AJvYcCVnAjKmEnTjbaT72FenGON6/C05L/utkOL74XJ6zKw/VdtyQZCc6+0xTHdYl7/ExlsOqeisr/AO24ivz4QM5MI/FzYp6A9j9UC4qg==
X-Gm-Message-State: AOJu0YzgJBR32bSMREiPD54AZZ97YqAFT8nUStUbgf23B1mLderIgWqp
	SEox17xo0prP5pc71OiQTZh6qjVnvIklVJpkjxcLFCZr54UP+4gY08HwHqVMWCgt5GFw28mcRAo
	vHKI5Mx0mvxPSdKsOwa49nmeEKGopE2u4swepbg==
X-Google-Smtp-Source: AGHT+IF2tkib/oC3Qiv+r3vhOaGqxlEBIzZGIynLySjW51phBdlrQV9rmjY1VJWS6M/DGM6KhRIAswSjPmSVX6S2YU4=
X-Received: by 2002:a2e:b5cb:0:b0:2ee:8555:473e with SMTP id
 38308e7fff4ca-2ee85556516mr7890711fa.46.1720012221282; Wed, 03 Jul 2024
 06:10:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240702130138.2543711-1-yangcong5@huaqin.corp-partner.google.com>
 <20240702130138.2543711-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20240702130138.2543711-3-yangcong5@huaqin.corp-partner.google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jul 2024 15:10:09 +0200
Message-ID: <CACRpkdY+nuSWz7rnVVUpF_mZOfDUb_6fgoJpnG2Pt-+AGLqt0g@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] drm/panel: jd9365da: Support for Melfas
 lmfbx101117480 MIPI-DSI panel
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	dianders@chromium.org, swboyd@chromium.org, airlied@gmail.com, 
	dmitry.baryshkov@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, 
	lvzhaoxiong@huaqin.corp-partner.google.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 2, 2024 at 3:02=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:

> The Melfas lmfbx101117480 is a 10.1" WXGA TFT-LCD panel, use jd9365da
> controller, which fits in nicely with the existing panel-jadard-jd9365da-=
h3
> driver. Hence, we add a new compatible with panel specific config.
>
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>

This is certainly OK
Acked-by: Linus Walleij <linus.walleij@linaro.org>

> +static int melfas_lmfbx101117480_init_cmds(struct jadard *jadard)
> +{
> +       struct mipi_dsi_multi_context dsi_ctx =3D { .dsi =3D jadard->dsi =
};
> +
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x00);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe1, 0x93);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe2, 0x65);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe3, 0xf8);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x80, 0x03);
> +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xe0, 0x01);

Until this point *all* displays have the same init sequence, what about
a follow-up patch that start to break things that are always the
same into helper functions?

These sequences all have a lot of the same magic bytes, so if
you guys have a datasheet for this display controller then start
adding gradually some #defines for the e0, e1, e2 etc commands
please.

Yours,
Linus Walleij

