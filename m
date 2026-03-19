Return-Path: <devicetree+bounces-277638-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +IoBEvm7u2mtmwIAu9opvQ
	(envelope-from <devicetree+bounces-277638-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:03:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1E12C84EC
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97A47301FD7E
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 08:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 274DF3A874A;
	Thu, 19 Mar 2026 08:59:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A33533A255D
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 08:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773910743; cv=none; b=e2/44jwPSmzrNfLYcxarZDdaNQMaHQWOWjz1QgE0CDOHE8n1aAekZjWExlODnuTgE5+O/Cv9RGWXgmiGXZQFB6rt3cQg7LPqqUNOw/gnnSgjJArF1o5ClYNPVDxyKkTA78WrjoN4ICeH24S5Pj/cHVvbcw4D8UMaovw3+03Vskc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773910743; c=relaxed/simple;
	bh=YGTwpQzIvHWGjdoEaD+D2VJMh4Ez8jRGQelEK9kjHlA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Pu/E4/tORCobMsEfLDft0xLvMU7O33OLQrZW8pq/tWDp0AMGsRQv1pmmvhNGU4ssnvZMrbZPXPFWtbGxtPOv8F+uVCp4JSMqNFsTsVd3GYcEEJZjGsRIzk0M1UVjecBX4mOP6i6J+ICHO7WoayWJAcMQvYXWg9mLMJiG9Zu2oFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-600404dbea3so409257137.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:59:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773910741; x=1774515541;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eQiOGNjrlF0W7IpjRFbX2kJ5/maB+OtkUbfGmKFJXKY=;
        b=HkvYMBR37x0W/w0HUWFV0ZY0K5UexbirXW68WQuMhgxaXsEgGSkl9AAosQQqpDOEdn
         6tJZyybi0xC2iNOuwVwJhcmeIGMVqg46URsBYoqrWn75TnMPL2PIp2X4zU/1UvnVToE7
         /4HWMcoozgDEkZOAky0XzizLQhuabLOMvLaGYDz6H0B1V6AF0/VXew07Mf9tv6as/Y7Q
         D2q+fbqVukJrnlDkcxHcSTCp3SOCWY0IvpCy/Sbmw3TbfKnFpx0rLwt2Sj1joMHvhmk7
         cPGlbpb21m/RVjQ062BGQaDRAQzF76pk/BzBROFPtNBBBR6+O2P/IsNEKqEONSu1ZD92
         ekNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmGJ5mKU8hhJtabV0OHSysy/F6dJQRNLP9Jchqu/6Cz6LqIV0fUQuAhVi1v7WQL7TTPa3/JMIvLPKt@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4qQ9u4a/3O2cbMNUlMQeIkEKMigQvBrKfd1lFfBuNAXMG0S+B
	myBiQYEVgAH7XVHDMSvl3epvNiRXPi8WVGpa7AHGXbtZJOG1D/Poj0kCZTq66tvi
X-Gm-Gg: ATEYQzxMBngg5rXRGm5UZcICu6P9A/hodM9Kh2CzY4setxrFH/jMLf3V/R7FYcNtaA9
	uisA2wXxa2QxAHsqJopu+zw5UK60Mo+MWVuxTwiTEOBpF69e7nfHQ1CPX06EKzWoJEEhOqzm79S
	tOBh3ss0PRxJgFX0Uc++gaVBl1uNrBA6BOiL70/2enGyW8JOC+Y7ALlcjriG3sFWqIVBo0zSTQU
	MpfGkCTEK/4t7o4eJnBR2H1kjgrYUbDlBaJM/E7aB0AK412vxxW/akmuxGkgh0KU0hIPTxwhAXH
	537bRJsa6yZ5TlRnJ4rS3d8CbCOc+9Qy+rp7OFp2LOFL5QAfocj3fS6BvCimvKM/eZQYweWmObA
	nmXhfbBZnVOSGnnW+5ztlLR5jt9Ea2jFGA9CU34T8frGTjTqKKolM0/8zvPz9y34gLyQCNapHyI
	gBGDc/bQKCkgHCvYKTbaPHoI4wRdW/wWU7y7cWjHmHw+tGiO84R3z3DU4Y9uTWm2Po2QmkzNYI9
	to=
X-Received: by 2002:a05:6102:1623:b0:602:6c8b:4b8 with SMTP id ada2fe7eead31-6027d099bf3mr3626402137.5.1773910740678;
        Thu, 19 Mar 2026 01:59:00 -0700 (PDT)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-95112e39b5bsm1576275241.12.2026.03.19.01.58.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 01:59:00 -0700 (PDT)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-56b65ef9441so577681e0c.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 01:58:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUZkm0JnR0lMjJ1R+ZJ6d9F76VAjjB8pR8M4GsWSagL4Pnkfg4r0Jg38STu/NoguuT1KFwE4pSl34JO@vger.kernel.org
X-Received: by 2002:a05:6102:419f:b0:5db:e77e:7828 with SMTP id
 ada2fe7eead31-6027d1342d5mr3477535137.16.1773910739503; Thu, 19 Mar 2026
 01:58:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260317130638.2804-1-wsa+renesas@sang-engineering.com> <20260317130638.2804-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20260317130638.2804-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Mar 2026 09:58:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWwNiaJuYYeZSuYpFQsOwofrTQGRnjav+7Bm2kvWL5y6g@mail.gmail.com>
X-Gm-Features: AaiRm53gTgwWAQvV9Ga2Rt1r_UP1RbSSHQoHo8-A_OqjQ42_pPVPDTUUq-5eAeU
Message-ID: <CAMuHMdWwNiaJuYYeZSuYpFQsOwofrTQGRnjav+7Bm2kvWL5y6g@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: soc: renesas: add MFIS binding documentation
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jassi Brar <jassisinghbrar@gmail.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-277638-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.001];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,linux-m68k.org:email,mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sang-engineering.com:email]
X-Rspamd-Queue-Id: 3D1E12C84EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Wolfram,

On Tue, 17 Mar 2026 at 14:06, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Add device tree bindings for the Renesas Multifunctional Interface
> (MFIS) as found on the Renesas R-Car X5H (r8a78000) SoC. MFIS includes
> features like Mailbox/HW Spinlock/Product Register.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,r8a78000-mfis.yaml
> @@ -0,0 +1,160 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/renesas/renesas,r8a78000-mfis.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas MFIS (Multifunctional Interface) controller
> +
> +maintainers:
> +  - Wolfram Sang <wsa+renesas@sang-engineering.com>
> +
> +description:
> +  Renesas Multifunctional Interface (MFIS) provides functionality for

The Renesas Multifunctional Interface ...

> +  communication between different CPU cores. Those cores can be in various
> +  domains like AP, RT, or SCP. Functionality includes features like
> +  mailboxes, hardware spinlocks and such.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - renesas,r8a78000-mfis       # R-Car X5H (AP<->AP, with PRR)
> +      - renesas,r8a78000-mfis-scp   # R-Car X5H (AP<->SCP, without PRR)

[...]

> +  interrupts:
> +    minItems: 32
> +    maxItems: 128
> +    description:
> +      The interrupts raised by the remote doorbells.
> +
> +  interrupt-names:
> +    minItems: 32
> +    maxItems: 128
> +    items:
> +      pattern: "^ch[0-9]+[ie]$"
> +    description:
> +      An interrupt name is constructed with the prefix 'ch'. Then, the
> +      channel number as specified in the documentation of the SoC. Finally,
> +      the letter 'i' if the interrupt is raised by the IICR register. Or 'e'
> +      if it is raised by the EICR register.

maxItems could be moved to a conditional schema, based on the compatible
value.
The same is true for the pattern rule, as MFIS has both "i" and "e"
interrupts, while MFIS-SCP has only the "i" variants.

> --- /dev/null
> +++ b/include/dt-bindings/mailbox/renesas,r8a78000-mfis.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Constants for the mailbox part of the Renesas MFIS IP core.
> + */
> +
> +#ifndef _DT_BINDINGS_MAILBOX_RENESAS_MFIS_H
> +#define _DT_BINDINGS_MAILBOX_RENESAS_MFIS_H

The include protection does not match the filename.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

