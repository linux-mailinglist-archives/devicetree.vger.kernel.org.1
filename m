Return-Path: <devicetree+bounces-277358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id r8BIHDPVumngcQIAu9opvQ
	(envelope-from <devicetree+bounces-277358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:39:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E052BF6C4
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 17:39:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DB14C305465A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:36:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF55C3ED5D9;
	Wed, 18 Mar 2026 16:14:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675F42D1914
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 16:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773850485; cv=none; b=sWqXmCc6OU7NOSd7wZYYXhBMiGU8MTwTXEEtBS0AXtW6M9aK4GMVskjx6+5dA2l7CA97SWWTac2T0hb3qyzRLlg1ewH3zWjajCkaMSfDCJRV1GkRnIMBGAldxJoDZ7VuZW/zlXxyLnGELCR9uXBUHG84Ph700+3L7Rnse17z5oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773850485; c=relaxed/simple;
	bh=61LThXM6TkHf22dtxLqfIwd9R5jJPl9iMytA9rm+YuE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tm2DipcYh9dxJK+Epc+zpQxsyEYRN7jr6EzOzlxeqzprBCOrVg+xGGQSUtrLXbUetIwkYx3F+xlBfPXe/7Dbq5pU0oKa2S6jIcQMD/8i/hvTO4sDfRBE/dd7bNgh/By0K/K1oQfqLD138DxM/GKTjlIozqbiielCQBTu4vLFoKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-56b58473bb6so5461111e0c.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:14:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773850478; x=1774455278;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YQg3ZojwgSHDqijm0VNHDAW00kkVZrPeOY6PyIIDxp4=;
        b=a4eCkLeXuntXdrzn9Y93sJFDxHs83/wnCo+TT7GiEDG9kbSMhgi1j2WvCCE8lomJNt
         8Asqq9mpmtFwXBHRFFbZdjKLPr4dq5FHRfW1ohwu8K0yfoehgjVxVs4p4mG8UcmTi6WK
         J0Gdg9GVj98jSkb+5SNVRNaBkg9wKQ+oZcS69MMV6PNX7G/cGMlOh5nE05M6EuLj0Za+
         pUl8DFyRPJ+xil0pg0mQ4ny9JpQvHBqfaUBwaOwkBRxae2lTwDcNy7Wms865e2J2/ofu
         dwTq7C7N5o9ZoCEwEE57N0TdXyqxN8+hMm1BEd7Wjm4huHURz23XoXZALgnRcrHaE8vO
         OmgA==
X-Forwarded-Encrypted: i=1; AJvYcCXGYKUtTuvau8PH5frVW2M4AZCEaN3PhEScZrjf6kSUOO/GtB/Rm8BBQaKZ3D6sBpBXLtB5SwY3qgcO@vger.kernel.org
X-Gm-Message-State: AOJu0YyIyCJoytZkUwCKLrpF7sVIflfjJ/j6n19r1Mq1THBKEnPnkWHm
	2legP02RL1UEymhrUlIw5Ui8ze77VAFFfQtkxJpU55uE71/dQf4vxT4XqpMyukmH72I=
X-Gm-Gg: ATEYQzx0t5VlLsdjZ8iYRPc0IUUfcTVJSE9DowBxAGRCGhDHNWBHT+xTiWnpyWRDXqO
	EGyplE30smHrE0CtVCNrDVEsKeL1FFPg/CARAGDqY83L+YJkWk70DjMKZX8QN76Dx9LpZVvcSzW
	BsM1hiyvC4lDrYPRMD9D6VVOOqNcx/NQJJjOcU58ReJvwbEbSbqKtLpSeQlkWswlYNcL9nlyJYY
	SghdzN8FBZ1BFfUeQUeaXEXKAnr39vjnk4D5i8vVLq5sQ8iZ7KpEfCZ1jsHsRryFDQxNs6ZmVNF
	FbckeHj1MzwNArDJ7ssEeuuX9vsGEcxc8tIoOts/nXMgOKIzLdXcoLwACJZ3woXuYeJir66sfxq
	tJqWhNUrWmyiMijc1gyHclxYDAoZqGU+3XnUtWGQeDjo0kEf/UF7bG/ftWGRjeXQt0GA0I8GlQ0
	ZpB6uklXOecQ6ojcte9jILWHUJ4l5/caeU7h/OBGGQ6r2UkGxFdNqPVlkFh8jn
X-Received: by 2002:a05:6122:178c:b0:56c:c76f:1bb0 with SMTP id 71dfb90a1353d-56cc76f1cd4mr1337559e0c.9.1773850477954;
        Wed, 18 Mar 2026 09:14:37 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ba6e82b4asm1819520e0c.8.2026.03.18.09.14.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 09:14:36 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-950baad7b69so2255480241.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 09:14:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXNvMZo3CxlSHUX9mPwc0FjPKFDYrrvLEE1M7T0dO535Pn8/DqnGT1VsUf7aR8N5L12WVMZ6v9x6nb5@vger.kernel.org
X-Received: by 2002:a05:6102:3596:b0:602:7a74:fbcc with SMTP id
 ada2fe7eead31-6027d12667emr2198273137.15.1773850475876; Wed, 18 Mar 2026
 09:14:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128215132.1353381-1-cosmin-gabriel.tanislav.xa@renesas.com> <20260128215132.1353381-2-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20260128215132.1353381-2-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 17:14:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVF9=CVokdAoAKxr6QcEoftqTv8GcUTd2y2NhMcBWRFmA@mail.gmail.com>
X-Gm-Features: AaiRm53rX4HCYWST9itRTskWWhbI-bKvKrF3W9m6D7fYdmf48lf66Cz3h9Y7xcM
Message-ID: <CAMuHMdVF9=CVokdAoAKxr6QcEoftqTv8GcUTd2y2NhMcBWRFmA@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: spi: renesas,rzv2h-rspi: allow
 multiple DMAs
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[renesas.com,kernel.org,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-277358-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.499];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email,renesas.com:email,glider.be:email]
X-Rspamd-Queue-Id: 33E052BF6C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 28 Jan 2026 at 22:52, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> All supported SoCs have multiple DMA controllers that can be used with
> the RSPI peripheral. The current bindings only allow a single pair of RX
> and TX DMAs.
>
> The DMA core allows specifying multiple DMAs with the same name, and it
> will pick the first available one.
>
> There is an exception in the base dt-schema rules specifically for
> allowing this behavior (dtschema/schemas/dma/dma.yaml).
>
> dma-names:
>   anyOf:
>     - uniqueItems: true
>     - items:
>         # Hack around Renesas bindings which repeat entries to support
>         # multiple possible DMA providers
>         enum: [rx, tx]
>
> Allow multiple DMAs to have the same name and only restrict the possible
> names of the DMA channels, not their count.
>
> For RZ/T2H and RZ/N2H SoCs, limit the number of DMA channels to 6, as
> they have 3 DMA controllers.
>
> For RZ/V2H and RZ/V2N SoCs, limit the number of DMA channels to 10, as
> they have 5 DMA controllers.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> ---
>
> V3:
>  * impose proper maxItems for each device
>  * impose maxItems for dmas property

FTR
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

