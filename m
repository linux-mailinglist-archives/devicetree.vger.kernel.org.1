Return-Path: <devicetree+bounces-6369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CEF7BB210
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 09:18:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24C6A1C20969
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 07:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C506763C6;
	Fri,  6 Oct 2023 07:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YNtZ87UF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2AEEA1
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 07:18:43 +0000 (UTC)
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BA58CA
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 00:18:42 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-27752a1e184so1425728a91.3
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 00:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696576721; x=1697181521; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EKpCyHWOeoDq3mhuWwEc3nzpzJID0E8GreD4OlWUF7Y=;
        b=YNtZ87UFM5xdXgzAw/UIK9xinlJV/jmoK/hxm7MdhDHrH9yWownYEksr0G/2SQzXiX
         G8ixRsXkLTdIaOSo/YQhzeK5vEfQTLGyZ/v2UZ36WK5Zcu5d6UvnhwNXRe3y8u1RmHOE
         cAoVHTbIiZZNDDR6U1/71i8ULswCD9TR4N4ZzpC+sXSlWAOFtzUhdFW7x6z9FF8vm+yM
         Ie9WL89bFeXAjKAAUxLgbxp2L3dkCxM8wDEyKHEmlE4DyWxH4FMiNs7Y+LBqyoUFPYBW
         /QrioZSoZkRoLaOgfNYp8d2K1ocsi3EauPAanOq/xGuSYXp/+QXKK2LsBtSIN1+EOc8F
         Ya3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696576721; x=1697181521;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EKpCyHWOeoDq3mhuWwEc3nzpzJID0E8GreD4OlWUF7Y=;
        b=woFcOilRlyTCAkRBJ6wKIKWAAa/e3qQoVuVFKfcnX06naRS+iKL4MfahgtSrbirTCk
         1KBixkAJxa5H1AE+uVZVsByL0b0o8C6r19Ir/AFwD80obh0QZCaqZ5peMJOOqV69Ei1P
         zjCA9zQJS1y199naA2byzRIWGCyiHtOqtD1sOvRsYrInuZ75Os9hPy+Ro9XpdL7BneVX
         ui0xbC6HINq1MY7Eyw+VQq4iqqX4Vycw4yc0xIXSw104duQV0xAL3PXMCvCvccQcJ4cp
         E6Xt9I9TbFbxJTNm0Ch+j3nGoknGYYE9fIHwZbydq2TdAQFeGAEfCWNiaDxVloeVFB+b
         OaXQ==
X-Gm-Message-State: AOJu0Yxv39JquCJSN3kKWDrMRCuYtVko8KAqGnUXQaAdAyIcNzVJ93wt
	NORY3XjOhhk3PtxRbCVCt/B9AIz9jpPX7N4szzI=
X-Google-Smtp-Source: AGHT+IFKDAahXWKqY7tYZ0QihyHM/jksHYk53NNXue6zODq0zpstVmqGE3sjOong6uwzQRE15B2DebyDFq1LsPtCQ1c=
X-Received: by 2002:a17:90a:ce83:b0:26b:c3f:1503 with SMTP id
 g3-20020a17090ace8300b0026b0c3f1503mr7580409pju.17.1696576721568; Fri, 06 Oct
 2023 00:18:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919083553.35981-1-eagle.alexander923@gmail.com> <20230919-98b276afdbc85d62815da0b9@fedora>
In-Reply-To: <20230919-98b276afdbc85d62815da0b9@fedora>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 6 Oct 2023 10:18:30 +0300
Message-ID: <CAP1tNvS8KsEjs_KhimD6X4CPe7vQ3LKikoz3yU3w2z7pKE9G0A@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: stm32: document MYD-YA151C-T
 development board
To: Conor Dooley <conor@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, devicetree@vger.kernel.org, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello.

I looked through the entire file and saw that the entries were
sorted by board name and by SOC part number within the board option.

> On Tue, Sep 19, 2023 at 11:35:52AM +0300, Alexander Shiyan wrote:
> > Add new entry for MYD-YA151C-T development board.
...
> > diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> > index 4bf28e717a56..5252b9108ddc 100644
> > --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> > +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> > @@ -140,6 +140,11 @@ properties:
> >            - const: engicam,microgea-stm32mp1
> >            - const: st,stm32mp157
> >
> > +      - description: MyirTech MYD-YA15XC-T SoM based Boards
> > +        items:
> > +          - const: myir,myd-ya151c-t   # MYIR MYD-YA151C-T STM32MP151C
> > +          - const: st,stm32mp151
>
> It appears that this file is sorted by soc part number, which would put
> this entry now in the wrong location.
> With that changed,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

