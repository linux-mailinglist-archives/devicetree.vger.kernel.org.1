Return-Path: <devicetree+bounces-232022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BD132C13BBF
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:12:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 20F363543F3
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 401F72BDC34;
	Tue, 28 Oct 2025 09:12:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C752D8DB0
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:12:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761642741; cv=none; b=il0cniUfr9r4ufb2eIdj8sIpr7d+1HNqX8zbk2mDGb0YhnRtVKKLriUX7hzn0cdfGN5ZmYGd8XC03RyyL1JFsV3lYzMYIG+8uhFnVt4mkPpwSFZnWuqlldT7SLmeZWSzIJFw1Vtc5loI/9ORAF5gWwVQCZc8bTA5p14K+WMOJ5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761642741; c=relaxed/simple;
	bh=g3pvM43euoTNMkyF3tnXObOAlhsabiDRTZkgJQ8/AzY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jO74/sZJdR5+PuokDKlS77q/0dadqz2pY6ib2GQDkIiJ+uOQRuDBYLJM5LfM5n9iF9dsxFnmUADBZcdHLL9eVMNchKnbJctf1SbheOzFsGezwMRtI7s9k6mInmEhaxqao6Yl/teLKIunaIIYzvPv20aBRyGBmIqtlXMX8vZOJGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5db3ec75828so1767540137.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:12:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761642738; x=1762247538;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eb9kW5nZhZJglY2El2oztjCtmhGLcr4GvZ4KYhM1Wpo=;
        b=bklyF7WSvWnYBbMF7Z88hAotWLEKilnfdIBt8XKWlsglXmKCCNPVi0yqhOjuS5r8am
         rBSAn9lr3Ia6XvPtPQUQeaZz3ehmkDW6ZMAps+e1yrbheYlL9EyPr4Tio6bTcgmDtRNh
         ekhbXORusNrGkoLsB8+ZcPoGXfA/W9shbjj+htbhdqHa0IdZR+8IIO68wHE6Etjtte69
         Ee6QNLLuEt6At8wB+/rTEi1vN29Lp6cMrE0dFgcNYlNgrnoxAzeYkgoGV5Z14XMg9OGE
         lwVo9mUXnnFc9anjchvBBbIWOxrIrP0Pso3zSzCZdoKvzGFexKIh7yvQcoJ1lfKm+cqo
         1Mnw==
X-Forwarded-Encrypted: i=1; AJvYcCV+37GNNccJyR/GlzTsKy8tt7IRJStmm1degG+Qvcs9VO1Z6IlhWt/+iE8q8a162naIGrGyltQRFXwT@vger.kernel.org
X-Gm-Message-State: AOJu0YyC8FXWSR/PJLjMAOSw+CmRbhtCgWhJXRYu5URIUpz9RLz55Rtu
	1lJlXM+6bnp2cF5uUqFYg3xwOR/pbiDRieAVPu87+1kDy5rCcqU8Ps+KnlCsBQUhSKk=
X-Gm-Gg: ASbGncu6/qfdjV8N7wgMc2cuDjNsjhrT3JHYbTs7l1COhMm2qUnVvW8n9dqBNgHp8eV
	2XUZU3wmN156q4a1rvpp2mM1WnRoTTgkDfmEhwFFxzn66+819Lg7hWmJEkV+R1rtVBF/A0fgNbh
	CPElXHTOFd1EF2GlTPdWNp4/2s8diWBB2McQrhslu1s50MMSlZO9RTKdmlKOygQq+M//+RExSrD
	fY+zk0zh3mOVeWHb7l1cK6Suz1vcqVGFtGmwjq7QQlE4ZF74mIP+RZQZZai4MixABeOHXbdYrD+
	siofDHrVYVUe9czW7V4YdqiWk+jQOb6bKhrW8bYZ+oTDWvR/Vteb3rMUqXRkCUVlnpP5jvu/lkp
	+Hp5/0rniiJTS6iH7uAr6qnUk5LWSz9CQGHuuc9+gLr4Jz0Gr3sjxwO/pMWj14+anrdk8Mp+mrO
	1K8m1qQ/R1B/NgdjRUZLZbejG+nUJnkuHLLB/2xw==
X-Google-Smtp-Source: AGHT+IGor43r2II/4JFZZMRj7hUcjQ7UOS93cm4GSbR53uCSszXz012ulro6D46TNxOi2i8ysW2deA==
X-Received: by 2002:a05:6102:3a06:b0:595:ec25:3805 with SMTP id ada2fe7eead31-5db7caa4c1fmr810429137.14.1761642738121;
        Tue, 28 Oct 2025 02:12:18 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-557ddb5f493sm4030088e0c.17.2025.10.28.02.12.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 02:12:17 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5d61f261ebfso2591157137.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:12:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCULTZdMWaCRlouoIl8XobumSgxadgljf3wop6OTPheazrCxFnnDPxoQWs/Zx3jOhoj8847zkNZl1rNs@vger.kernel.org
X-Received: by 2002:a05:6102:f8c:b0:59c:5e29:dd95 with SMTP id
 ada2fe7eead31-5db7cbbbd00mr906150137.26.1761642737253; Tue, 28 Oct 2025
 02:12:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87o6prsl2z.wl-kuninori.morimoto.gx@renesas.com> <87jz0fsl0u.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87jz0fsl0u.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 28 Oct 2025 10:12:06 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXz9egr_tye9CbVRMJws_Y-jh9jwCvTTOq0JRar7Zd_Xw@mail.gmail.com>
X-Gm-Features: AWmQ_blYPEdo4BgGxuQ_Ho5uWeROgqH2E4WHi9ATSE8NxQYZidHzYlYDOH0zie8
Message-ID: <CAMuHMdXz9egr_tye9CbVRMJws_Y-jh9jwCvTTOq0JRar7Zd_Xw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: mailbox: Add Renesas MFIS Mailbox
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Jassi Brar <jassisinghbrar@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Morimoto-san,

On Tue, 28 Oct 2025 at 05:33, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> Add device tree bindings for the Renesas Multifunctional Inferface
> (MFIS) a mailbox controller.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/rcar,mfis-mailbox.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mailbox/rcar,mfis-mailbox.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas MFIS (Multifunctional Inferface) Mailbox controller
> +
> +maintainers:
> +  - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> +
> +description:
> +  The R-Car multifunctional interface (MFIS) provides an interface between
> +  the different CPU Cores, such as AP System Core domain and the Realtime
> +  Core domain, SCP Core domain and AP System Core domain or Realtime Core
> +  domain and AP System Core domain or Realtime Core domain.
> +  The MFIS supports the issuing of interrupts for each CPU core domain.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - rcar,mfis-mailbox-r8a78000   # R-Car X5H

renesas,r8a78000-mfis-mailbox?

> +      - const: rcar,mfis-mailbox-gen5    # R-Car Gen5

renesas,rcar-gen5-mfis-mailbox?

> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    mailbox@18842000  {
> +        compatible = "rcar,mfis-mailbox-r8a78000", "rcar,mfis-mailbox-gen5";
> +        reg = <0x18842000 0x8>;

This is an 8-byte block in the middle of the MFIS register space.
Perhaps the DT bindings should describe the full MFIS block, and not
just the mailbox part?

> +        interrupts = <GIC_SPI 4362 IRQ_TYPE_LEVEL_HIGH>;
> +        #mbox-cells = <1>;
> +    };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

