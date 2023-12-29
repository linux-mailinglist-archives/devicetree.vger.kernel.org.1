Return-Path: <devicetree+bounces-28959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD6C8202C0
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 00:02:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEFFB283CB6
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 23:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9912614AA9;
	Fri, 29 Dec 2023 23:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EhOMoELH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FAC14AA2
	for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 23:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1d48a8ed85bso4955995ad.0
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 15:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703890931; x=1704495731; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Br3auxlaxhN+4QatfjvdC/2CBAo6SjgFO9WRUGaSF3E=;
        b=EhOMoELHog5lantdOv/yKmxb2iscLX9Mi9TIgey/Hvm5mAFqZrHBurNZRUTvPhwh6P
         0HZjA9JrdrAJJH5TyDG5NLLdA3v9A6ti0xuhU0XYK5dKm/vOq6EHrnA4sjCrQ+pp8GGY
         YWynRcDg8jM7S2WDxet40c9IuiRwP4MHlqn+rc4u675C0u1nYAmYVDXiJTnT+JkcyDYi
         I7Mjy/epiVGur+PgqKzj2hYdZ2VXzNacqLWhBvUGxtrtJ0rYVwGYAEbAK1lbIkT20R6t
         ra4/Ij6p+6iA4Bg6VlSvhE9fqviexhbGSkzKWA/d86Lj097Y//ovZTmu3kEHkP324r2I
         AytQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703890931; x=1704495731;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Br3auxlaxhN+4QatfjvdC/2CBAo6SjgFO9WRUGaSF3E=;
        b=i9c82nT7vLoHVmGXniCwdWTcfOQIHK0b6WrC3EVhVX8X8UUQu5F43VqY00rJOI6P8d
         T9tMUDkILH6oB+BueRIh0p+qOj2/9bKsldu4MUFEUwV7hPnLJd4/2YAgwABsWwqwkvOX
         n1MyOxCiudcCXS2IfLKvNI0ML/z1n4sQqPpJ5z3YCNNSqmaBrnhCLiP2jg0T1R6SWXt3
         bCxBQIm3VTjbPzZOZTYl7f3MhUzXYNPuDCkJfSGaeCYrLDF8NOAinxKPkZBxpC8LjQOx
         e1J1j3bQXStvpmKSYv+tdzo/z3Kb9uxBzuYSEc3tE1MFdUwDGIHe0Vgt6GBFIcpeS7jW
         wzuA==
X-Gm-Message-State: AOJu0YyHbkygV4xElsDwCB9U+Cv7FfAAXpguo8IJgJgjoNp3B/nbDO9o
	sZCYjJ01IgTS0oat0xfII3vPvoe+SrZircnGiHo=
X-Google-Smtp-Source: AGHT+IFCAUiKGDACmlHl3bYXdulOUBbtfu1zGW2VDfJunJM1IBueAP8Lv8VyzW0/oVkKfKeq7WdZUJulBbD2pMpeWmQ=
X-Received: by 2002:a17:90a:6f83:b0:28c:59cf:e38f with SMTP id
 e3-20020a17090a6f8300b0028c59cfe38fmr12688878pjk.0.1703890931542; Fri, 29 Dec
 2023 15:02:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231220000345.42593-1-marex@denx.de>
In-Reply-To: <20231220000345.42593-1-marex@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 29 Dec 2023 20:01:59 -0300
Message-ID: <CAOMZO5B-U8Tw9c2zecK_cfw0o+B=S7Jd1dH74goGxXeFFqmOLA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: Disable UART4 by default on Data
 Modul i.MX8M Plus eDM SBC
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, NXP Linux Team <linux-imx@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 19, 2023 at 9:04=E2=80=AFPM Marek Vasut <marex@denx.de> wrote:
>
> UART4 is used as CM7 coprocessor debug UART and may not be accessible fro=
m
> Linux in case it is protected by RDC. The RDC protection is set up by the
> platform firmware. UART4 is not used on this platform by Linux. Disable
> UART4 by default to prevent boot hangs, which occur when the RDC protecti=
on
> is in place.
>
> Fixes: 562d222f23f0 ("arm64: dts: imx8mp: Add support for Data Modul i.MX=
8M Plus eDM SBC")
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

