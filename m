Return-Path: <devicetree+bounces-223334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BE8BB385A
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 11:54:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6BB71750AA
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 09:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DB3C30594D;
	Thu,  2 Oct 2025 09:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AA8QEKMf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3DC2FFDF6
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 09:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759398846; cv=none; b=QdAu4trinxh4gXfck9EOcL+6taEIDuNvt0vlnAUiwDUtmONBg2nj0qXKK/aLTa9gJO2MJnSxp+E4S1OAnh1JclsEZTFuD4Tz9uSXJIdaOvnrscFPvmtp0swwH7xFa2Kv70hqopnG6/kaI/5H9/sPDPh7DnLnoa+4DNhXY8/Yhus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759398846; c=relaxed/simple;
	bh=KY7oJVD96cnojEf0Z1OMA1GM0LEH55wJF3Kcg/twpZI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GjAUca5gMQiyjsdRdp5Ho80EyznxwULxk8gbxao/btUwCUwRsket7x/fliFSO/+kIYXtUvDW4KRTPGgmg5J9hQu8lRRQS2vSYBsT+pDS32yRglFTYJLW9QUKs6SMso102XFtI/0jykqKMeIuL3kaCTarjSmj811RuR2pkq0+IHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AA8QEKMf; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-4060b4b1200so715580f8f.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 02:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759398843; x=1760003643; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DXMSGrr5AGBLO1DMGf5WoRV/437AE3YsJ0D/ngwVj84=;
        b=AA8QEKMfsB+H4sRGsYnsZAZml4yVDBsLl2zI1fP+i71g50/1xb+xXsYqe12bNnd/oM
         tIGDKWInFGk442P6NF3g85iT97pptXc5uDtvhz98PU2TXrufJDSODuYKBGwGiJl9vZ84
         2LCGNQZ87fRQJAXwf0fC8dBBpGvE0LRh0FgIWSVlyoNbS1oSbxutnHZDyGCSIIRIiR2s
         r1o+V+8qwQQVMWMUFfCDHyDkL9P8lImd+yfV3PCukJ1ta4vbpDIB+pSTnyhCGizsyKK0
         3Ak6RcNrGHvtmiappq3LEED4w6ovxexU2qOE1zN0oOd2CePBbMUTlp5oLNiL03jfGVCG
         IS4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759398843; x=1760003643;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DXMSGrr5AGBLO1DMGf5WoRV/437AE3YsJ0D/ngwVj84=;
        b=TqsoDEzeuj81Tdd6VAyqRv+0ctY4UbXRgBT8ArLWaBqMoqxPJtUQcwWZ4YxQCCyIiQ
         ONIAEI8wglWbX4KekdZgKn8GV+QerTqo6gjifOfLL4nBwcUjKLDmXOD2AOoutD6TzaFQ
         Er1E599Faa9bNVKf8/yjGUrdrg46F+L0Iu40XAq2pYkIdNK47mEemOWYJuPgVl7+JBl3
         DjHRYvoFuvC0zZaBR54m6dgWCoS/DVKfCBXTNWQoQxzSHKTBcmGQKSDbCyD+mCjDPq0s
         6mf+9tHxeSaZ1tRPVzTvN9V47r9/RKsMrFUmXlmRRo3rfMU4GNpKguh/wUSdEVmh2a1U
         JJkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkKMnwCFq/iW4eYtFFQWqKmSArMM/DWPfP2oPelbeL9t5hAtPCtd2fkfmRdEktw+pwsqlMj/DG4Lks@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc2ydmrlBlDrVw/9XQsdDyBgrtWV60YCGMoV8hNqai3tUPrPwz
	bLGqtmFOcnJ3c+TIkFn3n96FFX4cRmVPP49KOq25U6w1MRq9/Z4a5MttxiIUmcCbj8T1aYT00j2
	VdEtkdkMU6HbvW/NJhPWBnVrK0oOyWaw=
X-Gm-Gg: ASbGncsiz7RTU0SzlVXgd4cDZc4wQC4mvl6+rIG1YjUwFRfAi//5Y7oxIoO4jsTRIx8
	at7L0ZfJwfrenFGrzBXNFm4KThVUtoZofVlNP3UFSQbVeh+baN9rYxoSQMP3j2qj5W38gbQ8N/0
	MEFYM1qsyx2G/u2onZ5pix67lzgL+YpVojJXXLJjtUhNPlzdx/0A6mi44oDL7X2LtDLCLnvylqW
	zX7jG8hifi1CGMeX3E/nmUOoakgDYZ4P9AkOfab/WAozp0/desfWAAc5jAZbodD
X-Google-Smtp-Source: AGHT+IFyxrSuP40tpzGopQzLFOO/js8UgU+MXvmMqceOi0CUmwG9jtBvk3DYF4XZ7ZAoLNX0k47RM5pg5rhENgLvKJs=
X-Received: by 2002:a5d:5f87:0:b0:3e8:e52:31c5 with SMTP id
 ffacd0b85a97d-425577eddb1mr4683590f8f.2.1759398843030; Thu, 02 Oct 2025
 02:54:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926112218.28723-1-wsa+renesas@sang-engineering.com> <20250926112218.28723-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250926112218.28723-2-wsa+renesas@sang-engineering.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 2 Oct 2025 10:53:37 +0100
X-Gm-Features: AS18NWA-dFJzWGXuZztR2zqmly5nFCsmHxqrdNUIjCqymp_8OwjCsnbC4Mcge8k
Message-ID: <CA+V-a8tc7KpE6zvLffV0hUrw=1LNxyxZnkgogMBpGhk8u4Z+nA@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: watchdog: factor out RZ/A watchdog
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wolfram,

Thank you for the patch.

On Fri, Sep 26, 2025 at 12:22=E2=80=AFPM Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
>
> Renesas created different watchdog IPs but they are all handled in the
> same binding documentation. This leads to a lot of conditional handling
> which makes it unnecessarily hard to add new items. Factor out the RZ/A
> watchdog to make handling easier.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  .../bindings/watchdog/renesas,rza-wdt.yaml    | 51 +++++++++++++++++++
>  .../bindings/watchdog/renesas,wdt.yaml        |  7 ---
>  2 files changed, 51 insertions(+), 7 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/renesas,rz=
a-wdt.yaml
>
> diff --git a/Documentation/devicetree/bindings/watchdog/renesas,rza-wdt.y=
aml b/Documentation/devicetree/bindings/watchdog/renesas,rza-wdt.yaml
> new file mode 100644
> index 000000000000..7078218e0759
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,rza-wdt.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/renesas,rza-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/A Watchdog Timer (WDT) Controller
> +
> +maintainers:
> +  - Wolfram Sang <wsa+renesas@sang-engineering.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - renesas,r7s72100-wdt     # RZ/A1
> +          - renesas,r7s9210-wdt      # RZ/A2
> +      - const: renesas,rza-wdt       # RZ/A
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  timeout-sec: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r7s72100-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    wdt: watchdog@fcfe0000 {
we can get rid of the label, rest LGTM.

Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Cheers,
Prabhakar

> +            compatible =3D "renesas,r7s72100-wdt", "renesas,rza-wdt";
> +            reg =3D <0xfcfe0000 0x6>;
> +            interrupts =3D <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks =3D <&p0_clk>;
> +    };
> diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml =
b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> index b6e60162c263..8a25e0c6271f 100644
> --- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> @@ -13,12 +13,6 @@ maintainers:
>  properties:
>    compatible:
>      oneOf:
> -      - items:
> -          - enum:
> -              - renesas,r7s72100-wdt     # RZ/A1
> -              - renesas,r7s9210-wdt      # RZ/A2
> -          - const: renesas,rza-wdt       # RZ/A
> -
>        - items:
>            - enum:
>                - renesas,r9a06g032-wdt    # RZ/N1D
> @@ -140,7 +134,6 @@ allOf:
>              contains:
>                enum:
>                  - renesas,r9a09g077-wdt
> -                - renesas,rza-wdt
>                  - renesas,rzn1-wdt
>      then:
>        required:
> --
> 2.47.2
>
>

