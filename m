Return-Path: <devicetree+bounces-11992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EEA7D7527
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 22:07:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1DE5281D2C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADA8C328C7;
	Wed, 25 Oct 2023 20:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HK9FRtjq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2F928680
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 20:07:53 +0000 (UTC)
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3770DDC
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:07:52 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-578bb70ad89so10130a12.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698264471; x=1698869271; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OLfOw7r6LzUZP4S1C/fWPH0RTjZZmlp8HRm8J+m3Nqo=;
        b=HK9FRtjqZ5Oa/Dh0cZRK8/fc5NzocMB6UcarvlKMDVl2LavQE26He1wulRynoSESGz
         2G0Dlum+hn244kIaanbSLmTFDD9J6pAAjBE4ShuH0n1vzE44UyugCfx4SWNoTaEhthUt
         MnUZpEZJkVypmxImJhJU9/fwHeGLUhlEORBawqopnVIz6XpZh5YkxzTN0L0XqoSlmbwL
         F4LgZw0WIrQLvc1MdA2NTV51OZ/jyHULXPpGOkK34YNRyT2z3CaVuB6gpOcnjmvr/825
         4z36rX12SbjEoDfYoYCNHkdhMMRDaby3bfEaNrFUR5P3ILcY1hTxTFPxdC6coUD5cwKw
         fbKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698264471; x=1698869271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OLfOw7r6LzUZP4S1C/fWPH0RTjZZmlp8HRm8J+m3Nqo=;
        b=Puoz0lRGdcuuiP/i8VSQSKaGFYodD8SbGrsRoB5Y96mP96Bx55BrBJHHNsMcsG8E4o
         MQIvQxtNzVwfoU1v/uoEHuawUdzAZ/1XuJnxRvy30CE2rQhpKzAQXLEcRJTxe+7j9/i6
         ovLXc5xmQTmMUek1NPU6IeD9bEkzIPEjnL10/7PVqdGquQEDLKn5MKbXta4D779MOqVQ
         LaJRFicHHwwEuzNo723DXlGgTO//ptjDX5zbjU5qt9BGRxZ5d6ek0uv1719bczMgeQNS
         ySXFGIo/K9/kuOsJAkMhoHvFsrBZ2QZJvxsVcEUeE0B9DjquQhBp1CoeuB9zwqGWb3vT
         cxZA==
X-Gm-Message-State: AOJu0YygULdW4MWiL+K61u+yh2e0PaPlU3fJI0B9eZLl4Lp/7TLPYX/9
	Gmo1lFs40GmBJ9KLQZBjZh3qgYYCQMNDjbhV6m4=
X-Google-Smtp-Source: AGHT+IEd1N6OL8rlT8Knncn8WHY8bMNl3TOn+3qSr5FtyZyRKjnYvDdVl5ToxQVTN7zxz+tOdvukPeQijjKfx5NDkr0=
X-Received: by 2002:a17:90b:1812:b0:27d:2762:2728 with SMTP id
 lw18-20020a17090b181200b0027d27622728mr18659291pjb.0.1698264471641; Wed, 25
 Oct 2023 13:07:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230926122957.341094-1-festevam@gmail.com> <169591967800.835622.10464359202188248969.robh@kernel.org>
In-Reply-To: <169591967800.835622.10464359202188248969.robh@kernel.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 25 Oct 2023 17:07:39 -0300
Message-ID: <CAOMZO5Adr+au1em1cAR3E_irErXM3qd2FPiG0DJiU-Hskwgekg@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: input: fsl,scu-key: Document wakeup-source
To: Rob Herring <robh@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Fabio Estevam <festevam@denx.de>, linux-arm-kernel@lists.infradead.org, 
	robh+dt@kernel.org, devicetree@vger.kernel.org, linux-imx@nxp.com, 
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dmitry,

On Thu, Sep 28, 2023 at 1:48=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
>
> On Tue, 26 Sep 2023 09:29:50 -0300, Fabio Estevam wrote:
> > From: Fabio Estevam <festevam@denx.de>
> >
> > The SCU Key controller can be used as a system wakeup source.
> >
> > Document the 'wakeup-source' property.
> >
> > This fixes the following schema warning:
> >
> > system-controller: keys: 'wakeup-source' does not match any of the rege=
xes: 'pinctrl-[0-9]+'
> >       from schema $id: http://devicetree.org/schemas/firmware/fsl,scu.y=
aml#
> >
> > Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > Signed-off-by: Fabio Estevam <festevam@denx.de>
> > ---
> >  Documentation/devicetree/bindings/input/fsl,scu-key.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
>
> Acked-by: Rob Herring <robh@kernel.org>

Could you please take this one?

