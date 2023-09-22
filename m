Return-Path: <devicetree+bounces-2544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B887AB474
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:10:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F0A4B281E1C
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1F533F4A5;
	Fri, 22 Sep 2023 15:10:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51993171AA
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 15:10:05 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84167A1
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:10:03 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50308217223so3670830e87.3
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695395401; x=1696000201; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eBbLfmPpKzgVoeBpgucGlr3BpZFPgPf0mz1waJgwt2Q=;
        b=nIP3ta1uztlrBe6zLQIA6D1mjtCNalCJs/yfLbJ/46/n/UYEkRy8wMHYVpA0o5LDax
         VPPnYFh6V1RyDCWsH0JUJsDiFkXFg1emgmbGC5XTQdWJDVeNsnQhEgCm/2Y6FtM5uyLJ
         hgVqaam0FuyLGwSPZvHAEOk+PsDmQxzuA8YnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695395401; x=1696000201;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBbLfmPpKzgVoeBpgucGlr3BpZFPgPf0mz1waJgwt2Q=;
        b=K86fxkqPnF2vEF9TJd36LWQKFTJqmtGVtLqSV+W7W3qWX8OJe3jtyXt+Sngp4E+LIn
         9YEi/hGPudXR4xw9TNSd1Pp7ro/0wkBDVYMIMvxI/ohtPmTdb3RwiemMbRAVBlmW/5rv
         uCFmoizAVhS9GDxVE74PxhZPeqR0CkPIdLNVlkC6Ff68qCoJSw8yJLe6raIo+p306o56
         MdH45UysdPYXc8LyogJZVmy/eFTaFndij/NJaZNKl3c085CbJcPqzQtlZDQaE7piYSq3
         pgvNRFfYDpGA4ftX3BjJIubr6lrEHAmrPnmqQvgXV3cMlWXsUC2AT9MoAjqjMwGfQEId
         gcGQ==
X-Gm-Message-State: AOJu0YxOYZl0TNqnMxK/MYRuUac0UdUx3l0LSyntJ7jHRnLE3apo0slR
	dKQby/o84c57fwnhq88oaWd3KRhgO2lhyh/rBHuo/A==
X-Google-Smtp-Source: AGHT+IG0+FTwy7leUuJNc07mqM4ZpBxga4kMOkpvPH1KKuybgHujWbeNV789s9axdxdQeWXDb18UprYq/1LXcelxM4U=
X-Received: by 2002:a05:6512:449:b0:4f8:77db:1d9e with SMTP id
 y9-20020a056512044900b004f877db1d9emr7510046lfk.12.1695395401203; Fri, 22 Sep
 2023 08:10:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
 <e045afaa-bc38-4fed-966e-a034e106c86c@gmail.com>
In-Reply-To: <e045afaa-bc38-4fed-966e-a034e106c86c@gmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 22 Sep 2023 09:09:50 -0600
Message-ID: <CAPnjgZ2sN1bRKOFpDXXc0QfYsiHMxEFR8K+p=swLWs8ZCQBusw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: Add a schema for binman
To: Alper Nebi Yasak <alpernebiyasak@gmail.com>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, linux-mtd@lists.infradead.org, 
	Tom Rini <trini@konsulko.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dhruva Gole <d-gole@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Alper,

On Fri, 22 Sept 2023 at 07:57, Alper Nebi Yasak
<alpernebiyasak@gmail.com> wrote:
>
> On 2023-09-21 21:45 +03:00, Simon Glass wrote:
> > Binman[1] is a tool for creating firmware images. It allows you to
> > combine various binaries and place them in an output file.
> >
> > Binman uses a DT schema to describe an image, in enough detail that
> > it can be automatically built from component parts, disassembled,
> > replaced, listed, etc.
> >
> > Images are typically stored in flash, which is why this binding is
> > targeted at mtd. Previous discussion is at [2] [3].
> >
> > [1] https://u-boot.readthedocs.io/en/stable/develop/package/binman.html
> > [2] https://lore.kernel.org/u-boot/20230821180220.2724080-3-sjg@chromium.org/
> > [3] https://www.spinics.net/lists/devicetree/msg626149.html
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> >  .../bindings/mtd/partitions/binman.yaml       | 50 +++++++++++++++
> >  .../bindings/mtd/partitions/binman/entry.yaml | 61 +++++++++++++++++++
> >  .../bindings/mtd/partitions/partitions.yaml   |  1 +
> >  MAINTAINERS                                   |  5 ++
> >  4 files changed, 117 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml
>
> This doesn't match the schema in [2], but seems more like v1 of that. Is
> that intentional?

Yes. Based on discussions with Rob, the idea of setting a general
format seems to be too ambitious, at least for now.

Regards,
Simon

