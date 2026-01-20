Return-Path: <devicetree+bounces-257296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B333FD3C620
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:50:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 384B16C9D1F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:44:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A59C41322E;
	Tue, 20 Jan 2026 10:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="clZXF/bw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27784407577
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 10:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905655; cv=pass; b=qpGR9ssIA8m9CcHDZmNTIynvPtEZ78i4jhBxBru6NL0jyg/XXSTFYMbAH36OJip0iVw2TwLDOstXyzMjvNMJ8xu4HJE0kCjs+HdXiccjWiiCeZTACDppOQBb/Okxh9Lp9rSYthcH8dT2q1X60oeJQL5YX/jpNEx9DtNRT47xcL8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905655; c=relaxed/simple;
	bh=uHVcdQuRi0ye28VhVqOFU/npTRuyu5yyoY773NX+xsc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BI7Mk43t4HGHDDje0KQVk+R/0/9gSh2zDXC7OpWYW9DdzI5uSCbW8LbhKuNksqQgeIuC84gYO5VgG5eBNFvOnQDDX/SWa9HhLJS/ivX+bT81aSbgMRtQwwPrgmk8tLd3zJH6NnIPyBi1wCPfRHHF9hJ1tQ/mQPFXQaqOMZ0g7o0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=clZXF/bw; arc=pass smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59b7bb3b913so6063423e87.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 02:40:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768905650; cv=none;
        d=google.com; s=arc-20240605;
        b=RwBP/D+tbvWlYwyKfsWbS/MIx1kdfcQkTRL6pVtyMW8Nwpc4G+peS8jNIm5zmWmf91
         5V9u4E23pjuxztpCr89VCjgkDGBksNQdS4GYjXOFEZvDkMnzkxDmXGEjkBS5qsBaoeo2
         CBpo3k+XnPXahnYEg5Xls9fyWY6pS/gPg7Ew46oBxWSOoyiauLOh8YOwYcVbKSBqV34L
         fZ16lhOiFTN+OdKzhAcxWRnDc3EqkvfV3C/9+JP1U5S8nDUMKBOEYeUrElbxKqQ+/WYo
         jeJeshDH3GwlGbowUh8DslpL6lb3A9h1oLRcRxW41MB++IBy+6ILBD1r/hqX0h36wPSW
         0lUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eX8v1QdR4WJF8OCIlBf2jemkm5zLheafYqJqaFWFWj8=;
        fh=Ri6TaWrvfveDl7zxlr8mBOUdEzZScMVvYC3S7a5bD+o=;
        b=abXdE2w2ngir9DXVHYlfUUPWJcSW1d33W5z7v+ph5RQmGU17m9ZMou8ONlr56SrnT+
         ovxX9kwyzdARzbZUt4kAtdq9RqXpJL+eg+jFEfdHrCWBAfAF5njwPfTWfYQK/5DnFfd3
         B5IkB+mKmNyrhXGPFBv4ZMtuSVhQEot8vJCvJxhUwGxZT0UFzLIkG7R5sk9M1fXzanNa
         qxU5GZH8ZIsRjMWI/B7Ggcj+9oVTHEYppwEVELTriKpIy25gr9VCuXX2XetI0nXM6otc
         D74QSJYz+kXAkWAjyHfyQbj80NoVZpJ90ovAnyYSP07Rj6kobY3nKZa7NANjMGoAqCiC
         CwKw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768905650; x=1769510450; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eX8v1QdR4WJF8OCIlBf2jemkm5zLheafYqJqaFWFWj8=;
        b=clZXF/bw872fpXKuW6mekndn/CeJOFgx+3YeXDsu/mwJctwe2GFXIE3oTIBCi39vl+
         qizUfwUOZC1pyvmtu77szfW+tyoywSwZulRpBi2NFpSG2rlbx3O7+HHfEHjTD/+ZBzkW
         qcgVzIa4veInFPE5Oeg0EFDzyVaa88mASPltOGyf35f50QyNzgCnYA30rW88dkhw5m/6
         TfJfdD21nOhZJoW2hc3wsulqKsoN28QCemw5/u0ozg2s5/An/w81QMP3S7kcWFGDhg7i
         0NfbZ2KbFcX5ztR/vFaAegMgQPeDlxdcxtSx5lB2LVUC3wrlvKteQlugm2DWDAs6/3vp
         fNhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768905650; x=1769510450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eX8v1QdR4WJF8OCIlBf2jemkm5zLheafYqJqaFWFWj8=;
        b=BaFRNIuZadjBUhghLgWMdFrndnB4Lp9PAuyxmq7bhIJdERUtvjed7Z0mfAXDVnGaGj
         KTFnHVYNdfbr9ZivuaYHgA70reCr5QYg4HdQyMWThdNdF9vlO3z4ML8K/SozU+OZAYOS
         VmsMBy3CSNLGsRbOxMzQI34v3yCu9hvKIX/jywXZ2FueevpUd2s/I3QdMaX6+SwWf2bJ
         xuJaOuTio4kZHC0e0NaXY6RAN9B5Lfcv8HMHQNk6rasvwPdNGP8DoFKmi/iI0F3oG6qu
         GW1PSBezTZf6/JsyLICZbZqljAbiv1lXNtI+cD261PqU9uOEnk80UMLrqTVUQCPk+po5
         K1bQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/tYbkW0JIpfnouj8t5nnb1B2Dw6cGbtvk5hQkmLxeStRiTTmroTQeJLxhgD9FGmOP1yDTauw/pDWo@vger.kernel.org
X-Gm-Message-State: AOJu0YyvzF+oLrveWpXUanbEkHuzguutovAyQWHk+xW/4KJXfERjOOsd
	iquvWSbPVopFWuNV+2t86Sm+JEt+28/i+HLRCk9z3v8S8QvpXgn5hg/8Yfi8hIuuujmL2zNZA+U
	hrutbnIi7fHtTOiGlPisLi9Jl/xD++cDOLl0nVupDvg==
X-Gm-Gg: AZuq6aJPfGxk+OY2VBLv87QbO1/x4D2Tt9JHsehcY8MWshCyqsIbSu8lhYtn/rhctkW
	smrriiG/nJyZ/NHIEfHgpf0SjGIiXFp1cbfruWvKXqNwGxeZqaDNvguRta/pw9HwNowJIcvlvFy
	OTL7K8thucjtP741aQXEykaz8Tr74Gmkn7oQXZnD+AtbVi3Zebc+oB0mq+IrX0eiULNAjc6daj4
	RoZ7vjzozSVfoy+07LNOL3ZJqCUUUNFKq4ZmVh/r+97AiIy6iteRQgdwJMf/L1uHnR2FATmknIk
	E8zu6g==
X-Received: by 2002:a05:6512:128a:b0:59b:afeb:fcbc with SMTP id
 2adb3069b0e04-59bafebfcefmr4516134e87.2.1768905650007; Tue, 20 Jan 2026
 02:40:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260119-dt-mtd-partitions-v2-0-77ebb958a312@kernel.org> <20260119-dt-mtd-partitions-v2-6-77ebb958a312@kernel.org>
In-Reply-To: <20260119-dt-mtd-partitions-v2-6-77ebb958a312@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 20 Jan 2026 11:40:13 +0100
X-Gm-Features: AZwV_QhqsUxCI7MbeIHxKDkh3ditdiXP0OuLPOhjt9QynYvMhxR1XuB9Re1SWTU
Message-ID: <CAPDyKFo_4jiX7HjqzRc6r_uLG5Chto8aP_e5R9qv=jUjczr2Hg@mail.gmail.com>
Subject: Re: [PATCH v2 06/10] dt-bindings: mtd: partitions: Drop partitions.yaml
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Brian Norris <computersforpeace@gmail.com>, Kamal Dasu <kdasu.kdev@gmail.com>, 
	William Zhang <william.zhang@broadcom.com>, Nick Terrell <terrelln@fb.com>, 
	David Sterba <dsterba@suse.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Simon Glass <sjg@chromium.org>, Linus Walleij <linusw@kernel.org>, 
	Marcus Folkesson <marcus.folkesson@gmail.com>, Tony Lindgren <tony@atomide.com>, 
	Roger Quadros <rogerq@kernel.org>, Hauke Mehrtens <hauke@hauke-m.de>, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 20 Jan 2026 at 02:49, Rob Herring (Arm) <robh@kernel.org> wrote:
>
> The partitions.yaml schema is an unusual structure in that it includes
> all possible partition types, and it disables the normal matching by
> compatible strings. As partitions.yaml has nothing to match on, it is
> only applied when explicitly referenced. The use of "oneOf" also results
> in misleading warnings which are difficult to understand. Drop
> partitions.yaml and rely on the standard compatible matching instead.
>
> The "mmc-card" case previously allowed any partition type, but now only
> allows "fixed-partitions". There aren't any users and the original
> intent appeared to be only for "fixed-partitions".
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Acked-by: Ulf Hansson <ulf.hansson@linaro.org> # For MMC

Kind regards
Uffe

> ---
>  .../devicetree/bindings/mmc/mmc-card.yaml          | 20 ++++--------
>  Documentation/devicetree/bindings/mtd/mtd.yaml     |  2 +-
>  .../mtd/partitions/arm,arm-firmware-suite.yaml     |  2 --
>  .../mtd/partitions/brcm,bcm4908-partitions.yaml    |  2 --
>  .../partitions/brcm,bcm947xx-cfe-partitions.yaml   |  2 --
>  .../mtd/partitions/linksys,ns-partitions.yaml      |  2 --
>  .../bindings/mtd/partitions/partitions.yaml        | 36 ----------------=
------
>  .../devicetree/bindings/mtd/ti,davinci-nand.yaml   |  4 ++-
>  8 files changed, 10 insertions(+), 60 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mmc-card.yaml b/Docume=
ntation/devicetree/bindings/mmc/mmc-card.yaml
> index 1d91d4272de0..a61d6c96df75 100644
> --- a/Documentation/devicetree/bindings/mmc/mmc-card.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mmc-card.yaml
> @@ -32,21 +32,13 @@ properties:
>
>  patternProperties:
>    "^partitions(-boot[12]|-gp[14])?$":
> -    $ref: /schemas/mtd/partitions/partitions.yaml
> +    type: object
> +    additionalProperties: true
>
> -    patternProperties:
> -      "^partition@[0-9a-f]+$":
> -        $ref: /schemas/mtd/partitions/partition.yaml
> -
> -        properties:
> -          reg:
> -            description: Must be multiple of 512 as it's converted
> -              internally from bytes to SECTOR_SIZE (512 bytes)
> -
> -        required:
> -          - reg
> -
> -        unevaluatedProperties: false
> +    properties:
> +      compatible:
> +        contains:
> +          const: fixed-partitions
>
>  required:
>    - compatible
> diff --git a/Documentation/devicetree/bindings/mtd/mtd.yaml b/Documentati=
on/devicetree/bindings/mtd/mtd.yaml
> index bbb56216a4e2..e56dba83f00a 100644
> --- a/Documentation/devicetree/bindings/mtd/mtd.yaml
> +++ b/Documentation/devicetree/bindings/mtd/mtd.yaml
> @@ -30,7 +30,7 @@ properties:
>      deprecated: true
>
>    partitions:
> -    $ref: /schemas/mtd/partitions/partitions.yaml
> +    type: object
>
>      required:
>        - compatible
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/arm,arm-fir=
mware-suite.yaml b/Documentation/devicetree/bindings/mtd/partitions/arm,arm=
-firmware-suite.yaml
> index 97618847ee35..76c88027b6d2 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-s=
uite.yaml
> +++ b/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-s=
uite.yaml
> @@ -9,8 +9,6 @@ title: ARM Firmware Suite (AFS) Partitions
>  maintainers:
>    - Linus Walleij <linus.walleij@linaro.org>
>
> -select: false
> -
>  description: |
>    The ARM Firmware Suite is a flash partitioning system found on the
>    ARM reference designs: Integrator AP, Integrator CP, Versatile AB,
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm490=
8-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/brcm,b=
cm4908-partitions.yaml
> index 94f0742b375c..159b32d12803 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-parti=
tions.yaml
> +++ b/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-parti=
tions.yaml
> @@ -17,8 +17,6 @@ description: |
>  maintainers:
>    - Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> -select: false
> -
>  properties:
>    compatible:
>      const: brcm,bcm4908-partitions
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947=
xx-cfe-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/b=
rcm,bcm947xx-cfe-partitions.yaml
> index 939e7b50db22..3484e06d6bcb 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-=
partitions.yaml
> +++ b/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm947xx-cfe-=
partitions.yaml
> @@ -35,8 +35,6 @@ description: |
>  maintainers:
>    - Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> -select: false
> -
>  properties:
>    compatible:
>      const: brcm,bcm947xx-cfe-partitions
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-=
partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/linksys,=
ns-partitions.yaml
> index c5fa78ff7125..02ecb51fcece 100644
> --- a/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partiti=
ons.yaml
> +++ b/Documentation/devicetree/bindings/mtd/partitions/linksys,ns-partiti=
ons.yaml
> @@ -18,8 +18,6 @@ description: |
>  maintainers:
>    - Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> -select: false
> -
>  properties:
>    compatible:
>      const: linksys,ns-partitions
> diff --git a/Documentation/devicetree/bindings/mtd/partitions/partitions.=
yaml b/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
> deleted file mode 100644
> index 76199506d690..000000000000
> --- a/Documentation/devicetree/bindings/mtd/partitions/partitions.yaml
> +++ /dev/null
> @@ -1,36 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> -%YAML 1.2
> ----
> -$id: http://devicetree.org/schemas/mtd/partitions/partitions.yaml#
> -$schema: http://devicetree.org/meta-schemas/core.yaml#
> -
> -title: Partitions
> -
> -description: |
> -  This binding is generic and describes the content of the partitions co=
ntainer
> -  node. All partition parsers must be referenced here.
> -
> -maintainers:
> -  - Miquel Raynal <miquel.raynal@bootlin.com>
> -
> -oneOf:
> -  - $ref: arm,arm-firmware-suite.yaml
> -  - $ref: brcm,bcm4908-partitions.yaml
> -  - $ref: brcm,bcm947xx-cfe-partitions.yaml
> -  - $ref: fixed-partitions.yaml
> -  - $ref: linksys,ns-partitions.yaml
> -  - $ref: qcom,smem-part.yaml
> -  - $ref: redboot-fis.yaml
> -  - $ref: tplink,safeloader-partitions.yaml
> -
> -properties:
> -  compatible: true
> -
> -patternProperties:
> -  "^partition(-.+|@[0-9a-f]+)$":
> -    $ref: partition.yaml
> -
> -required:
> -  - compatible
> -
> -unevaluatedProperties: false
> diff --git a/Documentation/devicetree/bindings/mtd/ti,davinci-nand.yaml b=
/Documentation/devicetree/bindings/mtd/ti,davinci-nand.yaml
> index ed24b0ea86e5..7619b19e7a04 100644
> --- a/Documentation/devicetree/bindings/mtd/ti,davinci-nand.yaml
> +++ b/Documentation/devicetree/bindings/mtd/ti,davinci-nand.yaml
> @@ -24,7 +24,9 @@ properties:
>        - description: AEMIF control registers.
>
>    partitions:
> -    $ref: /schemas/mtd/partitions/partitions.yaml
> +    type: object
> +    required:
> +      - compatible
>
>    ti,davinci-chipselect:
>      description:
>
> --
> 2.51.0
>

