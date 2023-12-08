Return-Path: <devicetree+bounces-23100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1903C80A3F7
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 13:54:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF28C2818EB
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 12:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C70C1C68A;
	Fri,  8 Dec 2023 12:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GymOwdMp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AF3319A2
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 04:54:34 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5d400779f16so14602597b3.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 04:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702040073; x=1702644873; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zzKPwdYAwYCdy6h7bjnYf0Ny9x0IXWZf0PctpusOM14=;
        b=GymOwdMpn2bCXzEW+5FR2yU88+572gP+YVWQgaezvu+Ks+LJ7893+N3yfRaKaDxeQT
         P7eDhlUSwa0kE2QdfEYz5CPldn974JBEL2o0WIt+RYrc5KZ69akrBntn0SKZZuSEYzKk
         2dL7s6LghbPXLq2AGxiZYSkLf/jQiIGCPrlZNXiCVJXpe+M7ZihsEp1/+uQ2SxSs+ZgS
         u1SRngX4omMo41+hmDi6Xj+1EHtrkcVtNWRinetAsHOGj1NulpS6nf11GZ28rTeaAMfl
         CDyOxzaceGkKRcimdcPEOlwKsFZuTy6RuXJu4HcKgHio50dkv7t6S90yHDvZYjE/1OX2
         SRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702040073; x=1702644873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zzKPwdYAwYCdy6h7bjnYf0Ny9x0IXWZf0PctpusOM14=;
        b=fuwaKj68qPy8y0WaN+Udlr47BtVAVCNXFp7iKH+ez0Pc9KqmYV3ddOAE7gFBIaHbHq
         BIKvh2CqXUs2oCi9J9eDeKlMeN6AVluXFJ+3hwxpviU95s94NT+GttRVsoVgjzUZMrtG
         qiGPSMAhlaUBUa2c4DO3aow930HovT3imW4fOr5ck6qDmdalyS2fVBxZfbTkcsUkcUQ2
         9xZpkn1bVDG3yMHGATyBuJ3K71zFpaqLwgCiUyqkghgG1/YY/FPq81VVpLfCPQhifB8a
         BTUSA222hz1KY4nhvH0eCkkilBVrelK+SyPKHl+JUSK3IBXF14xv4PsblxY5dneA2o7e
         YqbA==
X-Gm-Message-State: AOJu0Yylra1a2/+L6cUeQbLJA0N0BMi9epKaoS76Afrl0THh4K1s0594
	eAi6v/3HnsvzKi2meJ0UrbLSmLBsv5ZymaCbtktKbw==
X-Google-Smtp-Source: AGHT+IEAJXSroSapCiPDjhsK4NjurOOebjH4gHV0wHEUSh+xkwhLq/8/MRN114XW47mChKgdM8zLbDjUan/sQcQJbJY=
X-Received: by 2002:a0d:cb42:0:b0:5d7:1a33:5ae5 with SMTP id
 n63-20020a0dcb42000000b005d71a335ae5mr376183ywd.50.1702040073661; Fri, 08 Dec
 2023 04:54:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231207111300.80581-1-eichest@gmail.com> <20231207111300.80581-2-eichest@gmail.com>
In-Reply-To: <20231207111300.80581-2-eichest@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 8 Dec 2023 13:54:21 +0100
Message-ID: <CACRpkdbSs-vebvchxx-Tg+O5CUF5M3vZf-iytuW=ZECnHb2anA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: input: atmel,maxtouch: add
 poweroff-in-suspend property
To: Stefan Eichenberger <eichest@gmail.com>
Cc: nick@shmanahar.org, dmitry.torokhov@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 7, 2023 at 12:13=E2=80=AFPM Stefan Eichenberger <eichest@gmail.=
com> wrote:

> From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
>
> Add a new property to indicate that the device should be powered off in
> suspend mode.
>
> Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
(...)
> +  atmel,poweroff-in-suspend:
> +    description: |
> +      When this property is set, all supplies are turned off when the sy=
stem is
> +      going to suspend.
> +    type: boolean
   wakeup-source:
     type: boolean

As Krzysztof says it seems you are describing an operating system feature.

I can't help but wonder: shouldn't that pretty much be the default behaviou=
r
if wakeup-source is *not* specified?

I.e. the property kind of describes !wakeup-source.

Yours,
Linus Walleij

