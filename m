Return-Path: <devicetree+bounces-268717-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIcdDdAWoGlifgQAu9opvQ
	(envelope-from <devicetree+bounces-268717-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:48:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E461A3B65
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:47:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 964A830BF3DA
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABB9631196F;
	Thu, 26 Feb 2026 09:32:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A1D30B52A
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 09:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772098367; cv=none; b=RjXZWLH//VxYDr7P8t2YYIK9GEd+f8hFXUNOh/rnJoCveD8c9vgkihb2QyqaxWIK2JvLKpcewQVaelvKGodR9ZHg4/AKhDXFpFllITBH7MecLGgwCY1GQua8bgZ/jN4O57YZpAqtmMPyCPDOtRsZg+kTzasl6EyxyArh1Pd1Kk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772098367; c=relaxed/simple;
	bh=bQVHLE0EDP1RIDb8KEc0btrhfnKqIdLuFVdqmb+6IpU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M3g+fIrQAW2IoRAghLzJI20pNyMyTcptAJwK844mqua/vM1KES88ff0ghiDetRW/ir2C41IRT/pYiojBMQwU368jI+1ldaKRbAToCWRqUesnJCe8bGAu2JDSG1cOCenbu6ixOCzFP/VIJ8cKgeuF8l4MdfAc5qZdNoJCRj8dWnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5ff1836b4b5so142930137.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 01:32:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772098364; x=1772703164;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xPVOVRPl3lC1zd+IB3b7f4lFe2w4mB21X3pW18EQvEQ=;
        b=OFtkvHaZ2cWxuak3/VAM2oaTbJb/oOKNssvKZWSq+3XnKRj4xzA4u1FjWzsC7+rvuV
         PgVFtTcvB3v5HFPOA65C6ncyJNJ76ezmloDNCDxOqxNRu4Y6yc0F5I4FccEhQUdr2nEb
         Mel/y+ATsp19jbvj9egoALG2IRP5vSG1/3Lbq7rsO652VHW0siuHD+uB5ZRfOktUkg0d
         o7VFdJjkJmx4BTqu+mGSCXY+t/wCGghW3v69zNoOcKS3gQUZ8Zemy7HHhdGP/HrlMrJi
         OB1Gy/vu7EiUnv9Q31HWfXVgMal8YwPQTUEjy7BdCe0+6nTkILs0WG8w/hQUpFGLwZEn
         Rqlw==
X-Forwarded-Encrypted: i=1; AJvYcCX+c5DRaTOsnKGNcY8+Xq2MTvhtfPwu+IR8tI6gkBoaMKLMgWnEo/pU/0czE9xMGkD3nVf5+axkY9jR@vger.kernel.org
X-Gm-Message-State: AOJu0YxuVKlmJllcNf//uZVZOI2Tm8qfEwyOSuZzdQKUlqmwrQOvO6ho
	cEi0N1jnLoLrC34iNNj6gOAk4nSd/wti1gHsh277Hyv/3nZsz1QYdQh2KWtLo4I2
X-Gm-Gg: ATEYQzzM+TLDl7aZB0bFjzauZnR+rdnsmiDw0TDUEwHyZv2wdWpm0ZCDLb7z39S1n7V
	jNl3J6JlmdC8jy2Vne/MmPXQtgM5cufsyJYaIq5/b9f3PMP8Qyx6j+bC2fEcr1XJOiKYMoeM6yC
	RoPLOrn+I0nGRXPVLkpwZjTbsPlarPZKqHO7w99BDz9YCsF5pwYvKdsMndbAHQfVYRtAPY0vpVU
	oQW66ucTBaibZPSr42ONGwdLpMDMOlA7/NOxeAxd/2xajlnS+YKZIu1yyrIaHNPGGQEuBXRlXIk
	2AZYTkKFbWyh2WDxYPwk5MP1iYzPZpEYjVRWSk0Id78IvuH8k8rxar6uqMCniv+Ldd2NgGr3JqZ
	yRaOs1LzQlYM7ClOIefVlnqQ6nFLnb976j4Ixm4TP2PNyiKPfIex/nAFV4mUie9M/BIMakCSxli
	rH/D/oSZz7/wi+PbQZQnHf/YHa4OvnwN15ljkj9d+4pD17bMadbBQFVsqYY/aA
X-Received: by 2002:a05:6102:2929:b0:5fe:af0c:79ff with SMTP id ada2fe7eead31-5feb3027765mr7085894137.19.1772098363643;
        Thu, 26 Feb 2026 01:32:43 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94df6577693sm1110289241.9.2026.02.26.01.32.42
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 01:32:42 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-94ace5d0e39so157618241.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 01:32:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX78PvSWFAUnzEmYl1YbghBU8aFA6iBSEbsgpckz3qIGO1wSzXh6c1aLR3PM8cHhR516uYT65/isSgH@vger.kernel.org
X-Received: by 2002:a05:6102:38ce:b0:5ef:a346:a020 with SMTP id
 ada2fe7eead31-5feb2f081dbmr6698399137.17.1772098361695; Thu, 26 Feb 2026
 01:32:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225155409.612478-1-hugo@hugovil.com> <20260225155409.612478-4-hugo@hugovil.com>
In-Reply-To: <20260225155409.612478-4-hugo@hugovil.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 26 Feb 2026 10:32:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVdYX9p9DfDoyMv8qEm52kY51QULkEnuxRBH2OyWyYf6g@mail.gmail.com>
X-Gm-Features: AaiRm50hY6HKs5Dg1D5Z1eUzl_ss50J6M1_HbmNyMG8PvkvLkYn610mEhS3zufM
Message-ID: <CAMuHMdVdYX9p9DfDoyMv8qEm52kY51QULkEnuxRBH2OyWyYf6g@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: input: add GPIO charlieplex keypad
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: robin@protonic.nl, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dmitry.torokhov@gmail.com, hvilleneuve@dimonoff.com, 
	mkorpershoek@kernel.org, matthias.bgg@gmail.com, 
	angelogioacchino.delregno@collabora.com, lee@kernel.org, 
	alexander.sverdlin@gmail.com, marek.vasut@gmail.com, akurz@blala.de, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[protonic.nl,kernel.org,gmail.com,dimonoff.com,collabora.com,blala.de,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-268717-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.955];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,dimonoff.com:email,devicetree.org:url,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,hugovil.com:email]
X-Rspamd-Queue-Id: 49E461A3B65
X-Rspamd-Action: no action

Hi Hugo,

On Wed, 25 Feb 2026 at 16:54, Hugo Villeneuve <hugo@hugovil.com> wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
>
> Add DT bindings for GPIO charlieplex keypad.
>
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
> @@ -0,0 +1,106 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/input/gpio-charlieplex-keypad.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: GPIO charlieplex keypad
> +
> +maintainers:
> +  - Hugo Villeneuve <hvilleneuve@dimonoff.com>
> +
> +description: |
> +  The charlieplex keypad supports N^2)-N different key combinations (where N is
> +  the number of lines). Key presses and releases are detected by configuring
> +  only one line as output at a time, and reading other line states. This process
> +  is repeated for each line. Diodes are required to ensure current flows in only
> +  one direction between any pair of pins.
> +  This mechanism doesn't allow to detect simultaneous key presses.

Indeed, e.g. pressing S1 and S2 simultaneously will show a ghost
S5 keypress.

> +
> +  Wiring example for 3 lines keyboard with 6 switches and 3 diodes:
> +
> +  L0  --+---------------------+----------------------+
> +        |                     |                      |
> +  L1  -------+-----------+---------------------+     |
> +        |    |           |    |                |     |
> +  L2  -------------+----------------+-----+    |     |
> +        |    |     |     |    |     |     |    |     |
> +        |    |     |     |    |     |     |    |     |
> +        |  S1 \  S2 \    |  S3 \  S4 \    |  S5 \  S6 \
> +        |    |     |     |    |     |     |    |     |
> +        |    +--+--+     |    +--+--+     |    +--+--+
> +        |       |        |       |        |       |
> +        |    D1 v        |    D2 v        |    D3 v
> +        |       - (k)    |       - (k)    |       - (k)
> +        |       |        |       |        |       |
> +        +-------+        +-------+        +-------+

Don't you need pull-down resistors on L[0-2], and/or a way to specify
in DT to enable internal poll-down on GPIO controllers that support it?
Some controllers may support internal pull-up only, but I guess that
can be handled using GPIO_ACTIVE_LOW?

> +
> +  L: GPIO line
> +  S: switch
> +  D: diode (k indicates cathode)
> +
> +allOf:
> +  - $ref: input.yaml#
> +  - $ref: /schemas/input/matrix-keymap.yaml#
> +
> +properties:
> +  compatible:
> +    const: gpio-charlieplex-keypad
> +
> +  autorepeat: true
> +
> +  debounce-delay-ms:
> +    default: 5
> +
> +  line-gpios:
> +    description:
> +      List of GPIOs used as lines. The gpio specifier for this property
> +      depends on the gpio controller to which these lines are connected.
> +
> +  linux,keymap: true
> +
> +  poll-interval: true
> +
> +  settling-time-us: true
> +
> +  wakeup-source: true
> +
> +required:
> +  - compatible
> +  - line-gpios
> +  - linux,keymap
> +  - poll-interval
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/input/input.h>
> +
> +    charlieplex-keypad {

"keyboard", as per Devicetree Specification Generic Names
Recommendation.

> +        compatible = "gpio-charlieplex-keypad";
> +        debounce-delay-ms = <20>;
> +        poll-interval = <5>;
> +        settling-time-us = <2>;
> +
> +        line-gpios = <&gpio2 25 GPIO_ACTIVE_HIGH
> +                      &gpio2 26 GPIO_ACTIVE_HIGH
> +                      &gpio2 27 GPIO_ACTIVE_HIGH>;
> +
> +        /* MATRIX_KEY(output, input, key-code) */
> +        linux,keymap = <
> +            /*
> +             * According to wiring diagram above, if L1 is configured as
> +             * output and HIGH, and we detect a HIGH level on input L0,
> +             * then it means S1 is pressed: MATRIX_KEY(L1, L0, KEY...)
> +             */
> +            MATRIX_KEY(1, 0, KEY_F1) /* S1 */
> +            MATRIX_KEY(2, 0, KEY_F2) /* S2 */
> +            MATRIX_KEY(0, 1, KEY_F3) /* S3 */
> +            MATRIX_KEY(2, 1, KEY_F4) /* S4 */
> +            MATRIX_KEY(1, 2, KEY_F5) /* S5 */
> +            MATRIX_KEY(0, 2, KEY_F6) /* S6 */
> +        >;
> +    };

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

