Return-Path: <devicetree+bounces-184446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38386AD40D3
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 19:31:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F17C03A3A78
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 17:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC475244687;
	Tue, 10 Jun 2025 17:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ezEoASOg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5962D2417D9
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 17:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749576711; cv=none; b=It9gZi+3Rfsswf3s174ZbIGnlrn7Zgj7ug+JBlV2qq/jGeYbDQehGtLiJx4H1c8S3mK8kfUhhhL8anfgaF11aXM3H+vyq0taePjB6Joqily+Lg3qir7Dnir6ow8jQ7l+7oVfZ7CZ54e96HrcFAyVoKzckAbf/f28YdXmm27vNEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749576711; c=relaxed/simple;
	bh=R5uhB20/0UGTdOKJLuYVBRHmxvIec2lBvJlw3o+4Dug=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xa86zFudrCKKrsgLzlTFo8EBrWgsbZEckcNGLoFg9kWEAED6NU0czGZW/zwEyIPQJ5emfTS3o2p2tBxhWFcJpTkbrvX4FGr4tmYaZJwOv/ge8u7ro/7eyRrrFddl/aA6/NjBrXrAWUfHJstH3Bt/zctEHckwI8eKPN60+IFHRKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ezEoASOg; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-306b6ae4fb2so4949857a91.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 10:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749576709; x=1750181509; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rHp15Q0G62WtHlJHQnssmi/HO7FqvGMRsAPtVdp5qNU=;
        b=ezEoASOgdNj32eCztNSmtEXK9JKB+zVxFChCM0cDkKRjXd3OgXkp2wiLCY2AoaLPst
         S7RiNj4bV3O357/lWDm87dijHvuluQ1JaHMfAEjK3LXEKbjIp9VZSv0gqMFA7FUqGmxH
         xTkbbW6k5sdSHdjiXHD2lscfpyq/QGLf6HR+4XP0QIwSz1/hLUshxE9rbPzQeoMapgtG
         5CIqLIe2kYA+gX9Y+GSyPZi8i10VkadIkG9U6icA3wEftxUz0Kwo29cp6HBFMEHHckt3
         Md9aqAK0gfo6QvQ/DO5EYZ0TCKO7CYPbabOq03/C0xe2E/AhW/bJ/tPy2SPBji1TshlZ
         FsRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749576709; x=1750181509;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rHp15Q0G62WtHlJHQnssmi/HO7FqvGMRsAPtVdp5qNU=;
        b=Em+J3fe6NaqI4TaxzABEcYHMqmKL4SPu6972nkVOmEkSKHVDJxHX/xMdzoMtrWr8d1
         nM2NDo8BWo9VOO/IqdaaGMZfXYqKY11LCAG1ZRqW8uGDyBub35022raVUK2mYSidZRUD
         1cfl2F0Esh8c+TIP2I3Hxd6Mh3PSea+DWmf5y7+55MwcB06mH8EmvxWmkhUttzhcKyWB
         0UlM/dzjEj3QsUv1ZeExQlZHsb9jgCPcZJkYs1Hof2fou53VBjI+s3Xe5fGqIE6gmtpJ
         e/awaPTQbzXO0BvWc6/a8/LlCyqPBjBkjz7Hr41LRqscNEAivIVNKRA3Kjg0i05OQBlw
         sA+Q==
X-Gm-Message-State: AOJu0Ywy4t8QTX5MF9/PKX7Iac/bIwMJA8O0Wbf3srizH87nrRN/khxm
	BDmTPlQlXoOsVcgJcZgYMF2qB36BeApkzo404U2BXfebeAUyONmKq5UHM7ySdPe9jUgdeuY8Ut6
	evcqO7Tese0efaDZBBfBgUwxaHqRK2jE=
X-Gm-Gg: ASbGnctmNNArasRwQMeednNEcAyI2jTagoP8q0kJc+OT7rRUhkN+X4V8SCjhop7UoFv
	r8Rk8bolN3lK9WiF84+le9EGCEAZYCoyqTzrRGgo0YyGMPwIvC5tFzL4sTPbZGfXcbV6M7Rs2bc
	Yh7beLFrDpco2oKlr9QZfsmAJGgYWtkgbEJNlQF20Gtsbm
X-Google-Smtp-Source: AGHT+IHsdE00RqxvgGuc9K29yM2+GF+pyCqc+82ajx70ihCGXd6suuW/NalW3XI5lGM6/5vkE76afR0jIJlFdGWMPKo=
X-Received: by 2002:a17:90b:4b84:b0:312:2bb:aa89 with SMTP id
 98e67ed59e1d1-313af19697cmr449834a91.20.1749576709417; Tue, 10 Jun 2025
 10:31:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <174954801086.147754.9306389006765920749.robh@kernel.org>
 <20250610151105.393011-1-shankari.ak0208@gmail.com> <174957433232.1948621.146243109364629093.robh@kernel.org>
In-Reply-To: <174957433232.1948621.146243109364629093.robh@kernel.org>
From: Shankari Anand <shankari.ak0208@gmail.com>
Date: Tue, 10 Jun 2025 23:01:37 +0530
X-Gm-Features: AX0GCFuz9HYV8x9krXQeTdelWWK_y0BDaj_F-90aUqMthW_NXKAHbxpvvV4zDPs
Message-ID: <CAPRMd3nnu9TyQnMNtN6W+PUuZ_q4ZBENWtrf8DLeWt2AH0n91Q@mail.gmail.com>
Subject: Re: [PATCH v4] dt-bindings: arm: Convert Altera SDRAM EDAC .txt to YAML
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, skhan@linuxfoundation.org, 
	conor+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/e=
dac/altr,socfpga-ecc-manager.example.dtb: sdramedac (altr,sdram-edac-s10): =
'reg' is a required property
>         from schema $id: http://devicetree.org/schemas/arm/altera/socfpga=
-sdram-edac.yaml#

The command ran without any errors for me.
shankari@shankari-IdeaPad:~/linux$ make dt_binding_check
DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/arm/altera/socfpga-sdra=
m-edac.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  CHKDT   ./Documentation/devicetree/bindings
  LINT    ./Documentation/devicetree/bindings
  DTEX    Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.e=
xample.dts
  DTC [C] Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.e=
xample.dtb

Also my patch includes reg for all compatibles.
>
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
>
> +
> +    edac@ffb90000 {
> +    compatible =3D "altr,sdram-edac-a10";
> +    reg =3D <0xffb90000 0x1000>;
> +    altr,sdr-syscon =3D <&sdr>;
> +    interrupts =3D <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
> +                 <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
> +    };
>
> +
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
>
> +    edac@f8004000 {
> +    compatible =3D "altr,sdram-edac-s10";
> +    reg =3D <0xf8004000 0x1000>;
> +    altr,sdr-syscon =3D <&sdr>;
> +    interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +    };
>
> +
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    edac@ffc25000 {
> +    compatible =3D "altr,sdram-edac";
> +    reg =3D <0xffc25000 0x1000>;


On Tue, Jun 10, 2025 at 10:22=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:
>
>
> On Tue, 10 Jun 2025 20:41:05 +0530, Shankari Anand wrote:
> > Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
> > .txt format to a YAML schema.
> >
> > Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> > ---
> >  .../arm/altera/socfpga-sdram-edac.txt         | 15 ----
> >  .../arm/altera/socfpga-sdram-edac.yaml        | 79 +++++++++++++++++++
> >  2 files changed, 79 insertions(+), 15 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpg=
a-sdram-edac.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/altera/socfpg=
a-sdram-edac.yaml
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/e=
dac/altr,socfpga-ecc-manager.example.dtb: sdramedac (altr,sdram-edac-s10): =
'reg' is a required property
>         from schema $id: http://devicetree.org/schemas/arm/altera/socfpga=
-sdram-edac.yaml#
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202506=
10151105.393011-1-shankari.ak0208@gmail.com
>
> The base for the series is generally the latest rc1. A different dependen=
cy
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
> your schema. However, it must be unset to test all examples with your sch=
ema.
>

