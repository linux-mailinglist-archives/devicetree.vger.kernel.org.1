Return-Path: <devicetree+bounces-10239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFB27D06A6
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 04:54:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 637B4B212EC
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 02:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A687680B;
	Fri, 20 Oct 2023 02:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jSt7h5b+"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28580369
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 02:54:47 +0000 (UTC)
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67EBFBB
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 19:54:46 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6bb744262caso89933b3a.0
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 19:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697770486; x=1698375286; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Biy9KeVyvk7bqB1RuRdNg6CB2wFjw+GAw8R+5REoEeM=;
        b=jSt7h5b+lfVQupZ2TRFvDVuEX8WIh/zV515JMbML6Izu3a4UfHfT0y+7FPnC7mVMGX
         ruux1tmk+Oh0T8qUV+s/lCRJv32XLcd7V4tKadkOjbqVMnKQaygCu+ukBTuPta7qZUov
         ysss/YYijiI1OYy1xl7SuT7LyICNHOmZo9QLFlNPPWYdGKIfDZfb8/YDeRFGkuKExA5V
         K2nQdDEI5XhPF9VQPBJmyKoua3juow0t3wiKKMPpkcPZTtpx0RnWaG9cf9XyQGYXoHtr
         ArykUedIrejA3HUeAhs3DdDSZzoqwZqfKIZVi1cVMPFNZix4VhFulAScIU1KfUw5yBT2
         hX1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697770486; x=1698375286;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Biy9KeVyvk7bqB1RuRdNg6CB2wFjw+GAw8R+5REoEeM=;
        b=gB7cb5BHo8yucxwTVo4gNhdHgAvfRnHx4jYdLr1DvsNhI/rLpllLNfZia+EeOanPcU
         L497CE7/7Q7CZ3XmdB4h2/p5Pvbu6pb5FoEBnljO2+z00D7j1GstbR1BLWjp1Qrz003O
         XzG3eUk8oLvU4dHOhISzpQXydMA2aDSba76Zrat2Pt5NQbVGzj0LB5CMS0lSWD8Zix9Q
         F0G8NDZ4aX9GGPLl5zX7U6RkJbKPfptpTrww1AtfosRuUY8WKwmBlp9J7edjz2aleT9e
         k13n/7Txyclu7/1bLHJGDQV6W9HQIa7R5c0HUDEj0BqEEQh4g6hgKWEnEvoCuH5I0Rpg
         Z9ug==
X-Gm-Message-State: AOJu0YyS61g3czSeNw73bOPLogPYLugTU/gcK0+ympu6zPruMgU6+n1n
	jEBU2wJGPZv52X68L/VRME0dkKeFwWk9hQch46gH0RBn
X-Google-Smtp-Source: AGHT+IFgk6l6YNlyKKIL6I09/MwKXDO3h5PuevhnZpFmwhTOrwNsMcsx2LIwEW9eKe0fUkh26wQVAJWpV1MD1axZwbY=
X-Received: by 2002:a05:6a20:8f11:b0:133:6e3d:68cd with SMTP id
 b17-20020a056a208f1100b001336e3d68cdmr626369pzk.3.1697770485862; Thu, 19 Oct
 2023 19:54:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231004182043.2309790-1-festevam@gmail.com>
In-Reply-To: <20231004182043.2309790-1-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 19 Oct 2023 23:54:34 -0300
Message-ID: <CAOMZO5DsZgp2d5w6a+ZRWoLCkPAKCxE0KCcXhP5t=9yQckqgqg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: watchdog: fsl,scu-wdt: Document imx8dl
To: robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Wed, Oct 4, 2023 at 3:21=E2=80=AFPM Fabio Estevam <festevam@gmail.com> w=
rote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> imx8dxl also contains the SCU watchdog block.
>
> Add an entry for 'fsl,imx8dxl-sc-wdt'.
>
> Cc: Wim Van Sebroeck <wim@linux-watchdog.org>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> Changes since v1:
> - Sent it as a standalone patch to the DT folks.
> - Collected Conor's ack.

Can this go through your tree?

