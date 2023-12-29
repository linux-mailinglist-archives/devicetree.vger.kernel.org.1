Return-Path: <devicetree+bounces-28941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFED18200DB
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 18:34:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E927E1C211C5
	for <lists+devicetree@lfdr.de>; Fri, 29 Dec 2023 17:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4120212B7E;
	Fri, 29 Dec 2023 17:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Myk8aPh5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C200712B6B
	for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 17:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dbdd61d80a3so4667342276.0
        for <devicetree@vger.kernel.org>; Fri, 29 Dec 2023 09:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703871275; x=1704476075; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/bgoZanEJc0MVxJH2BDSMbBMEAKcJk5zfc5k6GcxfOA=;
        b=Myk8aPh5ozIYsHGmlHmlNWZqfZ8c8qq+EVLEiWr0UAF8m67R1xY5ArWwi6GicAFSGl
         fNTgRQAKwxQztZJIz4ujmK/NzFYAeVekcOgFz75eErA9vGvBamrF0fnTnTTjDftG8Rga
         UtqKLpDWHCiAPjjLpN6H1P/2mwWTLdXN7LA0jbhe0ubR5bb+0J7uL50dIyIlKoE6Hd4u
         vXBZgUWm+DuqsC7uhcozlgpT+/TDDWrAr1CAyHnIt6syPF/S6WXESYW6UoebO7q2TrFy
         xnRDicbHYS1WrrShtcU6mprqaqs+rZAbbNNzaBvr4rykp+DrE1Sw7aC6a6Y5N4e4mHcG
         Cp/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703871275; x=1704476075;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/bgoZanEJc0MVxJH2BDSMbBMEAKcJk5zfc5k6GcxfOA=;
        b=l5SlRtyhCWpWvkVKrK2G7AR///qpyH3ZvwxYK/BX87vLRVqh2sTIKARDtmTVUcj61U
         d0uDq6li3Wq2/5KSxe5nzspG+I2HQWtl0bu7OmrttxuyGaGBt5FzxhoU4p6Aro6PZZH0
         Jg3zWw2d4gMlfLY6brGoCX+N1WDo6XW70984as+1epfCcWKRbaIbG18JZxmXGmHHLM34
         FhuUDyVh08l7AkpWudFPZYhIwbPMB2vtI3WPyJq7wPCnhIzJAaWo9gHaCK9ScdIOf2A5
         K/8H+r4DuScyyAYRJ2M0hvNCqMOnwGkMHRFy6srZir8RXkCCwlMpv363nuPvQo+o8K3S
         xWfQ==
X-Gm-Message-State: AOJu0Yx9bNUK2FKnxINLvyn4SL2WtgQDz68m7Sl/23c4tG/1Bujxx5iG
	fdr8uHHnD78pCa4Z7LEIfRI6OQoYfd33TPg76w2Dx9GH2mDrEw==
X-Google-Smtp-Source: AGHT+IFSKk3LElC23rghumLsGQN44wIVKMmgnZ+4F9zE0vmvJUX+M2f//YN6JsyIMAeHJLG0lr44MKU3n7AuX9e1S0k=
X-Received: by 2002:a05:6902:1782:b0:dbd:d003:3c16 with SMTP id
 ca2-20020a056902178200b00dbdd0033c16mr7305225ybb.9.1703871275630; Fri, 29 Dec
 2023 09:34:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231229135154.675946-1-dario.binacchi@amarulasolutions.com> <20231229135154.675946-6-dario.binacchi@amarulasolutions.com>
In-Reply-To: <20231229135154.675946-6-dario.binacchi@amarulasolutions.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 29 Dec 2023 18:34:24 +0100
Message-ID: <CACRpkdbBBQ96qfdmNHrbOdV9hhFheyTwTkwATFZRPBRiRcN4tw@mail.gmail.com>
Subject: Re: [PATCH 5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Sam Ravnborg <sam@ravnborg.org>, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dario,

thanks for your patch!

On Fri, Dec 29, 2023 at 2:52=E2=80=AFPM Dario Binacchi
<dario.binacchi@amarulasolutions.com> wrote:

> The patch adds the FRIDA FRD400B25025-A-CTK panel, which belongs to the
> Novatek NT35510-based panel family.
>
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
(...)


> +    oneOf:
> +      items:
> +        - const: hydis,hva40wv1
> +        - const: novatek,nt35510
> +      items:
> +        - const: frida,frd400b25025
> +        - const: novatek,nt35510

You need a dash in from of each "items:" for that to work.

Yours,
Linus Walleij

