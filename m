Return-Path: <devicetree+bounces-270918-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPA2LLfsp2mWlwAAu9opvQ
	(envelope-from <devicetree+bounces-270918-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:26:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DB01FC91D
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:26:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 801A63015D90
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71AD8386444;
	Wed,  4 Mar 2026 08:26:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4445F3803E2
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612788; cv=none; b=lqm8FRqF/pZq7FVUbJhHswYkRUqFhJMrZXXgGL7IoGTDhZRD0PcIbfp8r+hkTxM9KX+raBFyiSjtx9z0bJnfKpucr5somQ1VEKy1mJNK56p9u5oiQBDMm8VCPpzL64fC2hl9wIc1FUqYE6jm2apoYheFcEJcZ+Qua5WzOEP4fYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612788; c=relaxed/simple;
	bh=h8XMGF2Nc0Wk5EgdvrroEbAApnFXmPdgctli42asdYE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R1pNUpLXdR+8/HbrdC9NuWR0B0Lt/pF+FsVLqKyS2bEvMBGnj2B59Ydr85Y+odY3JsxoHeP+R94VTui2Q5OZrNzTrttdrXFrO2PMPPVFC4paEbcK58Yyp+oXhLIpn5B7CIYMl7Sp923Uocll96rVTFT7RUQ5ujxAJ6rzOl9cbdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-94aaa5d3bfcso3965129241.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:26:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612786; x=1773217586;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z3+VFmHycQmnpxwgU5v7FKE8AGsgIgJ+PuC8lbHiI68=;
        b=N00xSMeVeRYh3PvZFNDFlwhz0izBZHmOvXVR41Wz/XM7rZoiG/8lg9ZXtE45l9ooes
         sqy7pO9Pv6ca43hxhi9SPHmgQFn4WTLFIXOhWA2abTRoyeHa3UkuIp15Rcs4+NexerQl
         J741m+K5p/0C18f5E+vqxrmhBw7oyQA8O3ea6Qjs4Rpff5erbX5muM42XkfYbg5+BMDM
         37eU4poNax5Cez/FSRLL94WnyUBBn1PEawNqQ74V95PVJoainSExL1TL6FOnufn1chMe
         bZIrXKmyUTDCK1rbtZv67+Nsqb2K6dTpg8QL/okY6xhTnSz9zOjT0q6BOk3NMF8oVqEu
         LEJg==
X-Forwarded-Encrypted: i=1; AJvYcCUrRUUdabgYE20yLsNUT8BzP441AK57zl5cWoVS6j0imrC/wbq2fkZBYyPDnC2vl+1nHjyZuY4iZfTT@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt0G3qbDo1Kb0ZRJ2g4G6bR7MC5vYI6vHA+3slOdQcWchmSGV1
	GVO/iCLBhJd5t/NwGaovsOyt68WhvoDTa8bUwu+dj3lc11Ay6ZMbA/7UufRI7O9f
X-Gm-Gg: ATEYQzwlWsBzGcxO7sWUo1WqLhANOIxG6tqL7ZGE9ByodTuHRopwhxfugkV0IPyaEiA
	WR27jy0SK+uAzIeFgKg9V7m+TvjP6bIEDoHPVO0sq+Yvl1VHPfPYcP66ZvoFk/v2Q33qDzYm7uF
	/sMpAHS64ecGOzHb3m/gHZFUZ+a1LeyzvFJC1np3X9BUXkvos27yTosU6PKBhaDpTvz9kUzmmz6
	Mrjb0m6HyNvS+SP64WiGcAbGSYnqEJ6WwR16I+M5ECBku8c0gMxHIId4sITIKZYi47AFsKZBE+3
	p3gubypAiU0TybCcG1PKArJkGZMISW6Q6fWwiTPJqB8lKgctFXPE2eKZQBo/mqPWXgO23x3kZ2S
	yF0D8qF7SVELqZ6DLzYX7jWve5Taj5pxYFePzcv8hVOBKUcfkBdBDO2q/RvksW8Zu32F6XSb2tl
	Xo+mIQxDQjdDUF2yZSH5VSFYu8/DTqkb5HvfI83GUQa3oUpsOcWUFzS4t2Kpyl
X-Received: by 2002:a05:6102:4186:b0:5ff:1846:56a2 with SMTP id ada2fe7eead31-5ffaafcfba9mr683928137.34.1772612786139;
        Wed, 04 Mar 2026 00:26:26 -0800 (PST)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94df6417a98sm18018642241.4.2026.03.04.00.26.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 00:26:25 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-94aaa5d3bfcso3965128241.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:26:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVKu5cv5cWsMfiwZ9PxiE7/XfnAPxR6CecMYRx0twB6IukjsQcN2X1h9UhWT00JjHZFFtMU8ErS3+Nr@vger.kernel.org
X-Received: by 2002:a05:6102:2912:b0:5db:fddb:3155 with SMTP id
 ada2fe7eead31-5ffaacf3fc9mr537566137.17.1772612785608; Wed, 04 Mar 2026
 00:26:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com> <20260203103031.247435-3-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260203103031.247435-3-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Mar 2026 09:26:14 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVaDnwBxFN7XR+vcmdDu9n_-y7cq1UFA8nR0B3tmu=SaA@mail.gmail.com>
X-Gm-Features: AaiRm51tHA7vv7CxCQHJyifVVIlgZqU7CnJj7osvAWnvWvTbWn2sw9LUaMtIXz8
Message-ID: <CAMuHMdVaDnwBxFN7XR+vcmdDu9n_-y7cq1UFA8nR0B3tmu=SaA@mail.gmail.com>
Subject: Re: [PATCH v3 02/10] dt-bindings: soc: renesas: Document RZ/G3L SoC
 variants, SMARC SoM and Carrier-II EVK
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 56DB01FC91D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org,renesas.com];
	TAGGED_FROM(0.00)[bounces-270918-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.488];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,glider.be:email]
X-Rspamd-Action: no action

On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Document Renesas RZ/G3L (R9A08G046) SoC variants and the Renesas RZ/G3L
> SMARC Carrier-II EVK board which is based on the Renesas RZ/G3L SMARC SoM.
> The RZ/G3L SMARC Carrier-II EVK consists of an RZ/G3L SoM module and a
> SMARC Carrier-II carrier board. The SoM module sits on top of the carrier
> board.
>
> Reviewed-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

