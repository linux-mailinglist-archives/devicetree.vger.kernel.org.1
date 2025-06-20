Return-Path: <devicetree+bounces-187845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BC2AE1772
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 11:25:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3388C16D3CF
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 09:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 027D8281362;
	Fri, 20 Jun 2025 09:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Zx7GaUb8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EEC27BF76
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 09:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750411530; cv=none; b=qx41Kmcff5tt7B3bfQ8ffW3wTcCXjgYZk7ywIJlUbzzi7YMwlg4oawdN4Hmn1LA+xnfz5KPjEMrNWRkVHX8hWuW1WpQvjxu5uyhNjvcol9VSNJ7WRYLfn2nvs4foPtuyliwOPLKZh7w7bDRvTQBPFDfrYAwcIre0yjSev6drPrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750411530; c=relaxed/simple;
	bh=VFQEjatytVa2eaitgpsCCyaRoda1vFE9rL6HqoOE1rc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qP8WfxOElw/NIx4mRhHtrlKLcfOqsbky0U5VhT4vNHkb+Vt/fGj8vb5zdo69YeC50GeI41x69RzGjsKbSrItLEv+CeWNQKDo6KgXJ5gSw+QddgaGVYLglVA1omNIBhuCgjlCU7jw+SvtdvJQ/Q72DVEqA3HwCUANWhowd1dypBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Zx7GaUb8; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b31befde0a0so959057a12.0
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 02:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750411528; x=1751016328; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p30ePQOC+SAF8jlMZ8vqXSo8vrTqOdbIkXaej7pwom8=;
        b=Zx7GaUb8onRRqb8lDZSMFQdQUjwPHm94enSbdZ1TcKl/g7au6qMXfk0zV8x3TXUGCv
         C6fTHZsUJyzSg3rY+i6wj1H/KKsiXQblJ226grp2Mj4UUfUSas6fCxqCBqdxykKOLeYR
         J8B/IBmbg8XHAVD2oi6VnsXzgECgUMTilkWoVTxI1sEjcKj0TrTUGI/NxqL3X+6gY/GO
         cUkUNw7oFDCPAJ5pycD5QbUEEbiQg+t4rNMMT/1qpKWwO8QP9dKB7wZWxwARWUHsBobG
         qOah4ZO6YJ16h+DQMePy7rF29p7Y1vZlr9wkRk2Cu41HvDKXk9YChbk14lGhDz3tM/mX
         XAFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750411528; x=1751016328;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p30ePQOC+SAF8jlMZ8vqXSo8vrTqOdbIkXaej7pwom8=;
        b=Yukj8N/g1mwJCybT6YIMHwEH01RK2GZuV4lNPwSqdXn96/ZLKnQRVbQ68kCPlyM4VS
         DyiN5e6OSsRKOfWgSGHe6x5L3qIG1OPta8aQsXVLFJiO67Bd/G3rZqtN9cIwaP3bQjEP
         VaElWnU8QUIU44nHHOjftEb//i6sDzHSiiFVhXp+c9iOxWhd7FKyWPOhobo5hJ3iAzq8
         +ICos92fY7l6c7rZkRxW7dHTyB30tMNZxlAU1PzFcBCPsH375hpY2ptw0MPKD8dMLjy+
         410ACnf4+oN8V17dmTbHvZyX5exVfTwX+YbuK5DK/YyRiW4od4xib+tI/r0UNUf7/Jw7
         OJ/w==
X-Gm-Message-State: AOJu0YzxMm7CS4CuICERuG4N/t9ym5KZSOgbiLiEip3k+aw20eQGJf01
	6+4WEzsQMd4tCLk6niiUsBCI0vQYJybs+MmY7P9OEicYqql/tP1wGUrc6pIOPqgm5+53ihmMY3n
	f4YgOd6/NYiWHiXXs8YoQw0fH61IORDBCOLG+mgg=
X-Gm-Gg: ASbGnct5LX2oYAFM/PcVODllnb+LQx4LbIO2t7IUwAHaffMs4fksvoVZauPc/S3xZLo
	U/GcIHLSKFS5Wy1f0fqSP9igOqAsi9Z1LBZ0GAJKyWozFUGkNNF0iN68IqyrgRPaBYprp2jsogC
	reC7sYJCQQd+JhugavyMH8klBFyVL9LzU4knzzKfV1qHA5MSjWzwrIYJTywSunLY2IXNd2+K8GO
	sf9
X-Google-Smtp-Source: AGHT+IHJch8aEGl0zKbmbLBJACXFAEfjaURthAUH545QBPCLnVvIaCwJsiidMkVHCViZvpA2EVAIx8LczAt64vzoefA=
X-Received: by 2002:a17:90b:278a:b0:311:e4ff:1810 with SMTP id
 98e67ed59e1d1-3159d6260b8mr3614372a91.3.1750411528183; Fri, 20 Jun 2025
 02:25:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250620091429.388981-1-shankari.ak0208@gmail.com>
In-Reply-To: <20250620091429.388981-1-shankari.ak0208@gmail.com>
From: Shankari Anand <shankari.ak0208@gmail.com>
Date: Fri, 20 Jun 2025 14:55:16 +0530
X-Gm-Features: AX0GCFuuLtm0akiM_qKaUf2fmvVHHFmk91MXKPnjloQdd359KUGDovK8rMDbhV4
Message-ID: <CAPRMd3kP3qE5jD93cB577UMfHwfZ4DM-mHrJFjDPB=5HWdvXbA@mail.gmail.com>
Subject: Re: [PATCH v5] dt-bindings: memory-controllers: Convert Altera SDRAM
 EDAC .txt to YAML
To: devicetree@vger.kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthew.gerlach@altera.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I wanted to follow up on an issue I=E2=80=99ve noticed with the patch I
recently submitted.

While the indentation appears correct in my local `.patch` file and
IDE, it seems that the formatting doesn=E2=80=99t render correctly in the
email view. I suspect this might be due to the way tabs or whitespace
are handled when the patch is transmitted via email.

I'm investigating my email configuration and environment to ensure
this doesn=E2=80=99t happen again. I=E2=80=99ll make sure future submission=
s are
double-checked and rendered correctly both locally and on-list.

Apologies for the inconvenience, and thank you for your patience and feedba=
ck.

On Fri, Jun 20, 2025 at 2:44=E2=80=AFPM Shankari Anand
<shankari.ak0208@gmail.com> wrote:
>
> Convert the Altera SOCFPGA SDRAM EDAC devicetree binding from the
> .txt format to a YAML schema.
>
> Added a 'reg' property as dt_binding_check flagged its absence.
> The controller is memory-mapped; address is confirmed from Intel's manual=
.
>
> Also added two strings: altr,sdram-edac-a10 and altr,sdram-edac-s10,
> compatible with altr,sdram-edac but use two interrupts;
> Schema enforces interrupt count per variant.
>
> Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
> ---
> v4 -> v5: Updated commit message, fixed placement of reg, added allOf con=
dition per variant, fixed example section, dropped description as specified
>
> Reference for reg address - https://www.intel.com/content/www/us/en/progr=
ammable/hps/arria-10/hps.html#topic/sfo1429889205804.html ,
> https://www.intel.com/content/www/us/en/programmable/hps/stratix-10/hps.h=
tml#bal1505408006582.html
> ---
>
>  .../arm/altera/socfpga-sdram-edac.txt         |  15 ---
>  .../memory-controllers/altr,sdram-edac.yaml   | 104 ++++++++++++++++++
>  2 files changed, 104 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/altera/socfpga-=
sdram-edac.txt
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/=
altr,sdram-edac.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-e=
dac.txt b/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.t=
xt
> deleted file mode 100644
> index f5ad0ff69fae..000000000000
> --- a/Documentation/devicetree/bindings/arm/altera/socfpga-sdram-edac.txt
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -Altera SOCFPGA SDRAM Error Detection & Correction [EDAC]
> -The EDAC accesses a range of registers in the SDRAM controller.
> -
> -Required properties:
> -- compatible : should contain "altr,sdram-edac" or "altr,sdram-edac-a10"
> -- altr,sdr-syscon : phandle of the sdr module
> -- interrupts : Should contain the SDRAM ECC IRQ in the
> -       appropriate format for the IRQ controller.
> -
> -Example:
> -       sdramedac {
> -               compatible =3D "altr,sdram-edac";
> -               altr,sdr-syscon =3D <&sdr>;
> -               interrupts =3D <0 39 4>;
> -       };
> diff --git a/Documentation/devicetree/bindings/memory-controllers/altr,sd=
ram-edac.yaml b/Documentation/devicetree/bindings/memory-controllers/altr,s=
dram-edac.yaml
> new file mode 100644
> index 000000000000..652289c2c2f4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/altr,sdram-eda=
c.yaml
> @@ -0,0 +1,104 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/altr,sdram-edac.ya=
ml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Altera SoCFPGA SDRAM EDAC Controller
> +
> +maintainers:
> +  - Matthew Gerlach <matthew.gerlach@altera.com>
> +
> +description: |
> +  EDAC-compatible controller for SDRAM error detection and correction on
> +  Altera (Intel) SoCFPGA platforms.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - altr,sdram-edac
> +      - altr,sdram-edac-a10
> +      - altr,sdram-edac-s10
> +
> +  reg:
> +    maxItems: 1
> +
> +  altr,sdr-syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: Phandle to the SDRAM system controller (SDR) syscon nod=
e.
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - altr,sdr-syscon
> +  - interrupts
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - altr,sdram-edac-a10
> +              - altr,sdram-edac-s10
> +    then:
> +      properties:
> +        interrupts:
> +          minItems: 2
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    / {
> +        model =3D "Example SoC with SDRAM EDAC";
> +        compatible =3D "arm-soc";
> +
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;
> +
> +        intc: interrupt-controller@0 {
> +            compatible =3D "arm,cortex-a9-gic";
> +            interrupt-controller;
> +            #interrupt-cells =3D <3>;
> +            reg =3D <0x0 0x1000>, <0x1000 0x1000>; // Dummy
> +        };
> +
> +        sdr: syscon@f8000000 {
> +            compatible =3D "altr,sdr-ctl", "syscon";
> +            reg =3D <0xf8000000 0x1000>; // Dummy
> +        };
> +
> +        memory-controller@f8004000 {
> +            compatible =3D "altr,sdram-edac-a10";
> +            reg =3D <0xf8004000 0x1000>;
> +            altr,sdr-syscon =3D <&sdr>;
> +            interrupt-parent =3D <&intc>;
> +            interrupts =3D <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;
> +        };
> +
> +        memory-controller@f8011000 {
> +            compatible =3D "altr,sdram-edac-s10";
> +            reg =3D <0xf8011000 0x1000>;
> +            altr,sdr-syscon =3D <&sdr>;
> +            interrupt-parent =3D <&intc>;
> +            interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
> +                         <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> +        };
> +
> +        memory-controller@ffc25000 {
> +            compatible =3D "altr,sdram-edac";
> +            reg =3D <0xffc25000 0x1000>;
> +            altr,sdr-syscon =3D <&sdr>;
> +            interrupt-parent =3D <&intc>;
> +            interrupts =3D <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +        };
> +    };
> --
> 2.34.1
>

