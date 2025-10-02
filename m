Return-Path: <devicetree+bounces-223337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 688FCBB38A0
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 12:03:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 22A293B6511
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 10:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32CAC2FCC19;
	Thu,  2 Oct 2025 10:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A3mv7izK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF65B2EDD74
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 10:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759399403; cv=none; b=lCI0fi/EdCeEvdIx57Rcr4WFzkDjdMkpNRm1Pvs3vbCs8EBbu6GH7Kj4qA6HrRtUZH1hu2ih7Af8ttHDv/lBNtDiAUaEM68u+3kXwoYxQikhsfduU5H6ztJ/6xQaBFxYIBvgtraeILE5kvAhEhzz7Uhq2DYCJmTHRY1VxF1yWSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759399403; c=relaxed/simple;
	bh=VXwvqpVvlf/77rIlCWCv+HMzE9IGBlCh9d5UUrAB7Qs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=utvAfGtX+mNLV/uhkvRVnWXwzfCReNBkqHRfUNnOoJlnGB6kz0lkg4z1rbWcNZB39ScgEcUZvHeQ/TEUedk0kKsF4Xz5ZTGsDQVuDgSg/7WoKU1pYK7wVYp4nwRRRt9YY6aRCD9fO138yX2uQ9KK1HCAKojV9Gi/VjMo4/yvcFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A3mv7izK; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3ee1221ceaaso495286f8f.3
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 03:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759399399; x=1760004199; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=50Z7m1N7tuLYYOFqfuljGGq5sGbNpXMjtlfhCZo2YSM=;
        b=A3mv7izKu3tRENbcgllEC1N2axBioxS+RhSk6ms5FTdZ0JoOTqG5Gw5f5uMicSKUAN
         jF5f/u6B6pOvk1Z3NJFoplZezeKp+dKuZnggHdyopVAkTQLIyoVhhxefSsHBulyYBMzG
         gsd7wHkhww7Ejrr8XeXKH9VIVmhx21RbjGSzbbEAwFXw8V1BfocB9J1QaWvMvXy+WDj3
         YaEvG5pj0sodbPwnlR5fj2LDQvlbNcBlA40cOd8b7+jiTXAQIBW1v0JN3p8v0S8xAJ9g
         XPrrwxs4w3enu0o1TxbyvRm9QxEUolFkku2Wb5I6vj/9Vw1v8StVZKFp74m7XTSEk4cm
         R6Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759399399; x=1760004199;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=50Z7m1N7tuLYYOFqfuljGGq5sGbNpXMjtlfhCZo2YSM=;
        b=cqOIep6eTjngKi4ZLQey5X9wj1JzNfkksHEoQ1Mfal/dj2ladmIdf4D6m0E7BS1mTg
         2Ux7mK8iNN7KKWTqMQC4Jb9Ni2gn2qd4SCXtSSov5HSwstoQO9z5Tbu9TEpOEEWRTNyO
         PVK+yeMhou//pEcTFcfWwRSXGk1xDZ7DfuexYT1ZAanSzrZQQUrXevwvu9GGD6krt/2R
         vfwuEBhoMA9YpI8rAmElMNgA/5wj+ErVDqbAdoCGuUcpdusGnuVM3dbhO2XMwMJ6y0Fw
         VuA6anEbKEl31UUgWy3LOLTIGALVSvfT7/60LpMRAKRpaZVl0SRX1T4kOArTSY90LFy1
         WwNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh2phYLZUMBF2BZtFPjFEe7+b8VgZb/NAd/PtLwVqSTXgTqx6psjMguXLfLfqwKqQRaAAKrR8KjNVl@vger.kernel.org
X-Gm-Message-State: AOJu0YyQC4rc3nk3OMgigBHcxpgxhaEWo1TqOo0oBQJU1aJc8z+X/uga
	NtwtUjpcN3LVgGbKwcnWyjG6l4R6fgcCNZWIU2zWNpLXS9EvcfmPJ3748lpDLSL/8FxFhpayWUQ
	iJNHX9jXzTyhfIjChpfX+XDEa08uJUgA=
X-Gm-Gg: ASbGncvK8wPz+WbsgG7M/cwzzEAmKEugH7f2gfbp1ruGlYkSKfMcEGxljRVS03UWUoE
	dWgvYgZ3OQOy7o81U34GGV4d8fJ3L5ehI2dkUiMNDtDLc+ROn7lv/hrNQDAJCa5fQ7lk92iqPgu
	4K5DauxWDGKecaXWbtOK7cZn0KFGZiN9gNydjJvSI6YrZ/Wl8x4ahxfpZ6tv9Ji/PJiypCwX0Gv
	3DdyZbvxhnmsKTPfMPBi/N+ofTcVWjs9jHHhk2zM+Bpvj51zthgFFtrp34aeCZ8
X-Google-Smtp-Source: AGHT+IF1nBB9H3BguiqhxKHehfDaBBV/5Nd+PlNBramTkQx2OSdTTPekjBVSoQc+DoCnKLEFnBXK5NwygPOo4UVbbnM=
X-Received: by 2002:a05:6000:607:b0:3ec:db13:89e with SMTP id
 ffacd0b85a97d-425577ee951mr4416230f8f.7.1759399399022; Thu, 02 Oct 2025
 03:03:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926112218.28723-1-wsa+renesas@sang-engineering.com> <20250926112218.28723-3-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250926112218.28723-3-wsa+renesas@sang-engineering.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 2 Oct 2025 11:02:52 +0100
X-Gm-Features: AS18NWBggOMh-N8CjYPCF1b5CXIvbHTCQPtfuNqkeWhE-eVPmSlGZt83U8C9y3o
Message-ID: <CA+V-a8uw3jzkWbvD6dVUu1KjVpVRM=sBh6tS2ditGueOxeQi2w@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: watchdog: factor out RZ/N1 watchdog
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
> which makes it unnecessarily hard to add new items. Factor out the RZ/N1
> watchdog to make handling easier.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  .../bindings/watchdog/renesas,rzn1-wdt.yaml   | 49 +++++++++++++++++++
>  .../bindings/watchdog/renesas,wdt.yaml        |  6 ---
>  2 files changed, 49 insertions(+), 6 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/renesas,rz=
n1-wdt.yaml
>
> diff --git a/Documentation/devicetree/bindings/watchdog/renesas,rzn1-wdt.=
yaml b/Documentation/devicetree/bindings/watchdog/renesas,rzn1-wdt.yaml
> new file mode 100644
> index 000000000000..01eab6cc1110
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,rzn1-wdt.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/renesas,rzn1-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas RZ/N1 Watchdog Timer (WDT) Controller
> +
> +maintainers:
> +  - Wolfram Sang <wsa+renesas@sang-engineering.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - renesas,r9a06g032-wdt    # RZ/N1D
We could make this const instead. But if the DT maintainers are OK we
can leave it as is.

> +      - const: renesas,rzn1-wdt      # RZ/N1
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
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +allOf:
> +  - $ref: watchdog.yaml#
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r9a06g032-sysctrl.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    wdt0: watchdog@40008000 {
we can get rid of the label, rest LGTM.

Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Cheers,
Prabhakar

> +            compatible =3D "renesas,r9a06g032-wdt", "renesas,rzn1-wdt";
> +            reg =3D <0x40008000 0x1000>;
> +            interrupts =3D <GIC_SPI 73 IRQ_TYPE_EDGE_RISING>;
> +            clocks =3D <&sysctrl R9A06G032_CLK_WATCHDOG>;
> +    };
> diff --git a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml =
b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> index 8a25e0c6271f..12ba07781763 100644
> --- a/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,wdt.yaml
> @@ -13,11 +13,6 @@ maintainers:
>  properties:
>    compatible:
>      oneOf:
> -      - items:
> -          - enum:
> -              - renesas,r9a06g032-wdt    # RZ/N1D
> -          - const: renesas,rzn1-wdt      # RZ/N1
> -
>        - items:
>            - enum:
>                - renesas,r9a07g043-wdt    # RZ/G2UL and RZ/Five
> @@ -134,7 +129,6 @@ allOf:
>              contains:
>                enum:
>                  - renesas,r9a09g077-wdt
> -                - renesas,rzn1-wdt
>      then:
>        required:
>          - power-domains
> --
> 2.47.2
>
>

