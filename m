Return-Path: <devicetree+bounces-7047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A98E87BEDFE
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 00:03:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D3B5E1C2094B
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 22:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9401343698;
	Mon,  9 Oct 2023 22:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NFeMzAoM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0913742BE7
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 22:03:01 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FE899F
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 15:03:00 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-53829312d12so13144558a12.0
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 15:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696888978; x=1697493778; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Rjq4mQ6ok9vbI4s2uRAhNlsstGCnbhA6GK5uk3ZBc6s=;
        b=NFeMzAoMSzzsP1enzdkmIpGu0Qse+EtYPLu7hlVLPxt02Bvxl+US8oTAZrjFQBnQOs
         A1vYYUWh181x+CgskiqIiyB4xifCziqGX6bQqTXvVkAKIZ5K2cwIV0CC5LCnHDg3b8Xz
         8wOEG8fRDLX1MQorBfKSXMsyQi9N+ks+GQN1k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696888978; x=1697493778;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rjq4mQ6ok9vbI4s2uRAhNlsstGCnbhA6GK5uk3ZBc6s=;
        b=AZjrqIWUlTg3d5pktgSnEa3cg6EwagwJkRejgbr5tD2cn6F15AusaGYUonwHbf5w1O
         L7ScS7i7D7gKCa929ERU2NBQk5C4Fsa3w41IXonJJ5l/ZGjfYgUOV1S5YEaF27BfUCMl
         AQDmEuLkIwQeujpzO9wxa5JsB+RJyAUn3b0SpTdpTMhn/Bb/AwWk2hLNs5kHjMEUxywy
         lpfm+X+BbuOU1O3V7+dNOmv6VSjRrGHM0C7MNUuqdZXI0GYEWBZ0Njx8HQ1SrwBsaamo
         JXUbBmHQAbPYloQvlAOLUkOtMQiMfjCM+OmkaxMt+UKAfa8BnhkH8e599Qpw+1bxrQEZ
         zU9w==
X-Gm-Message-State: AOJu0Yy1P2rKqK3l613x4yn1tDegj9Y+StqwNdG9ENRR2FheRJRumsHo
	Spikvfl0B/PsuhVC/UnokIJ1iW47lohphGsFJ3ZnyHyDbDBYoJsHWOg=
X-Google-Smtp-Source: AGHT+IEtqWvxQ0Vgm+Jr6dpgRLt/9LzEMO9okKuLlajtYR50GrEGRE87hGyzUOZ2jPFoAGYSrwhOp2INK3c35n2NsdE=
X-Received: by 2002:a17:906:af10:b0:9ad:8a9e:23ee with SMTP id
 lx16-20020a170906af1000b009ad8a9e23eemr11254081ejb.13.1696888978460; Mon, 09
 Oct 2023 15:02:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231009201005.1964794-1-sjg@chromium.org> <20231009201005.1964794-2-sjg@chromium.org>
 <169688631230.3255827.3268332902446136449.robh@kernel.org>
In-Reply-To: <169688631230.3255827.3268332902446136449.robh@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Mon, 9 Oct 2023 16:02:40 -0600
Message-ID: <CAPnjgZ3-eX5r02K_499wz3dQOs8nOO5o16CL9w1xyNsTXL0L2A@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: mtd: binman-partition: Add binman compatibles
To: Rob Herring <robh@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	devicetree@vger.kernel.org, Michael Walle <mwalle@kernel.org>, 
	Richard Weinberger <richard@nod.at>, U-Boot Mailing List <u-boot@lists.denx.de>, 
	Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org, 
	linux-mtd@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tom Rini <trini@konsulko.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

On Mon, 9 Oct 2023 at 15:18, Rob Herring <robh@kernel.org> wrote:
>
>
> On Mon, 09 Oct 2023 14:10:00 -0600, Simon Glass wrote:
> > Add two compatible for binman entries, as a starting point for the
> > schema.
> >
> > Note that, after discussion on v2, we decided to keep the existing
> > meaning of label so as not to require changes to existing userspace
> > software when moving to use binman nodes to specify the firmware
> > layout.
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> > Changes in v3:
> > - Drop fixed-partitions from the example
> > - Use compatible instead of label
> >
> > Changes in v2:
> > - Use plain partition@xxx for the node name
> >
> >  .../mtd/partitions/binman-partition.yaml      | 48 +++++++++++++++++++
> >  1 file changed, 48 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml: properties:compatible:items: {'enum': ['u-boot', 'atf-bl31']} is not of type 'array'
>         from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231009201005.1964794-2-sjg@chromium.org
>
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
>

Oh dear, I didn't notice that output but I see it now. Could the check
return a non-zero exit code if something goes wrong?

Anyway, I'll send v4

Regards,
Simon

