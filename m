Return-Path: <devicetree+bounces-271603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SF3xCVCbqWnGAwEAu9opvQ
	(envelope-from <devicetree+bounces-271603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:03:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5919A2141C2
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1458E31835FF
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 14:58:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22EC3B5858;
	Thu,  5 Mar 2026 14:58:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C438E3B3BEB
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 14:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772722695; cv=none; b=sVkiHIp/3rXRkLrk7wSGCyImvAXk/zZ7vWrYaJdpvOsiMUNpBHceUpxCHkp2++fEsiSrHsvLqovIZRPK+oZh3E6smElA/3HhbszeCVNNbdoP4GBoEOIzgQA5+9dTV1a2PEoyhtXgrZTKtuWUAOTrOMecvExsObOTKUh77wwFbmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772722695; c=relaxed/simple;
	bh=5vD4Kg/M6WLs7JWJ9iOz9JD4pJnjd1OxEmi1NYB0Vic=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u+59wCoDput/zT0bcG28ymQus09dbKJI5A2PxjLbGIfuPgdg7KQJRQco60FbfSGbM+RlAC3Fu0yiAPOWDk/RFsDf6ZDBaBU8ReA+KFn19eLCgEa8ffg7VxDbMeg/skMV+4iFtLrzmbseYvz6NS4zca5ZU4B2z5kqTKOOpF5RWGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-94dea0e029fso2394331241.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 06:58:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772722694; x=1773327494;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fqSOZpWNO3C/9wQ4B5UwddHacEUZVZn8oPi7wE7jo6I=;
        b=FaKgZi9lKjZ1VX1QaTkLw+TZWuOTbPMs+FybubKLWLbgw3eUFAsNz+ZOfmk81UQrv6
         rel/m7j1jvz7gnjGLmh3qoIJlMlpXDH8F0a0h/RkZDwNzpjrEwRu//NhtxrJRzlakK3r
         itMdRafdRW0PkzBIes63tLmApqqUuMqeQjHywFfMRF6zx1uKag09P7gxTqUZzwqw+ReE
         WkekPZy4rNiSndOr1IjqRBcKNCB8lMCd/I2mqwMs3OcwAT/jf4B2JP+3T9akneSMx6vU
         MxpjEcy2SoGA9bGKsIM/+3M7LQ92q/6BYRd877yOJ0w/UHbTFyxC2CAjUlT8LTffu+93
         jnMw==
X-Forwarded-Encrypted: i=1; AJvYcCWWEC0gRbWTs7eYgMkghZPtM41Nrx7EYCu1DpQkoMDQjm5IgTkpwHla9UK12ushThf5ezGOmhjRYoPx@vger.kernel.org
X-Gm-Message-State: AOJu0Ywdnc60eDkEWqqnJS+vjjXfZdsz5JjhiUYXYqk68rPGARl0Ovsr
	s0tZ5Qj0TARBaVuKRv49I6r83n1CU+4AH4WKDGFU+K/7PDOa7jaM7JQhTHPuo/2koHM=
X-Gm-Gg: ATEYQzwcgZEQ4CDR90yAs0lNKKgI/jc2BFoQq9quSBCWPcVmsumbQRBe0po7qAPoLoh
	nAwVGV2zcfhaEKExnFcXcEmwOwC4JzYxRQ+p7OSdPpIuHmS5lGn53/zROPc+oyHwugpZ6yCCFyY
	TkJYIRP/plZTpnnn7H8PQL3UneEiPIIwRRhOG4Hu6npXgLPdmyuQtsga7/6ugtP/tAak3JBX4Ic
	8rSpgJ0R/dZkeBdiCqTM24rUtPdW34rvTXqJfO+aUAD+nIZPHP1ds1sk0o1WIhnkHB/XkKx8j/w
	myuCoV2oK//E1IWM/aJHQtTWjoG6yU29TJXSt39egsM5G0Y22ZW+hHC3zXDolz7yRclajzpjRFO
	XOPLnUA14jslOx2t7pMBIVclmFXiovbKgUT62rTksQor7odOW1j3w3NzhA1umgWUT+JNATX3ECB
	Oy/0A4ZP30WjIYC7Z6LXjvOOQY9FsANY0PzRa7aj0fZG7BukQKCvUwHPQ3Z0i/co1ZgG4qVkY=
X-Received: by 2002:a05:6102:1458:b0:5ff:c59d:67db with SMTP id ada2fe7eead31-5ffc59d7cb5mr799353137.3.1772722693532;
        Thu, 05 Mar 2026 06:58:13 -0800 (PST)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ffa300c3f8sm6666654137.6.2026.03.05.06.58.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 06:58:13 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-94de4f5531eso2635156241.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 06:58:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV1IX60XndCXMnEWzRRNvvOLkbQ+tfyrWMuRplXkt/szoIBPx/EofmQVnia9eFWNVBuEyKeyvsCM3vZ@vger.kernel.org
X-Received: by 2002:a05:6102:f06:b0:5f1:4fc3:855d with SMTP id
 ada2fe7eead31-5ffab26e129mr2408811137.38.1772722691995; Thu, 05 Mar 2026
 06:58:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com> <20260203103031.247435-9-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260203103031.247435-9-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 15:58:00 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW3zMqMxevkP5DLrRiUY0DMb+yngFf=yayzkeHZpq-4uQ@mail.gmail.com>
X-Gm-Features: AaiRm52qa0hxXfUT-U-AmnVbAfPkSS5Tat4oKezMmKZoi-V1pVPBaxiOn7gK0BU
Message-ID: <CAMuHMdW3zMqMxevkP5DLrRiUY0DMb+yngFf=yayzkeHZpq-4uQ@mail.gmail.com>
Subject: Re: [PATCH v3 08/10] arm64: dts: renesas: Add initial support for
 RZ/G3L SMARC SoM
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 5919A2141C2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-271603-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.326];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add initial support for the RZ/G3L SMARC SoM with 2GB memory and
> extal clk.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

