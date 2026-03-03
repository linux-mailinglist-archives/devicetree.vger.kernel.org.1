Return-Path: <devicetree+bounces-270494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAdAFmvfpmlkYAAAu9opvQ
	(envelope-from <devicetree+bounces-270494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:17:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA141F00EB
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:17:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 63DC4301A6B1
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A160D426D17;
	Tue,  3 Mar 2026 13:17:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1CF330305
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543830; cv=none; b=OHFQq0Sqrm/9yBvraP8qeLsFWH5B6P0q4ruvtcZcw4GtoT+ZFDv8i2kjLQawUPFnevO2V/ogdDXEs6xHmFleqN5h8QhGBUEvf2UJS6XG672cQ4juLjMGNzlR0SzNvsMCjaYN1LREDpv2nOEAY4xTXGKeuA2HBlEgTQEe9CLDsIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543830; c=relaxed/simple;
	bh=n2OmAIMl/gywcCrUj4d8zXzLma6xKUNcSmZ27Kjdqpw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MwxVG8bXooj6zzHbMyx+yeyB7JasT1goK2aG8td7sK7JGRjCOPi8fUNY01qae3wb/fptQNcrhVEqDSbk4rIPk6AjUCmm44DsMuKoKqtnB4FMX71ZsUuIil4bZhUV2eXEWS93PcIOGEOGzq31Ma5vdK3PfmrFlOhVxzds6aIl/+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56a9402b52fso4831128e0c.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:17:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543828; x=1773148628;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=muQepyaITr1dI13pFJp+536u1zM3z0pO9iYDkPNsg4s=;
        b=sWNIBNscOY7rg0G+bf7URm3/lEJhgP3UDaPiPX2Pn61dUMNBAe/Rdi8oadbAMGvHZ2
         Adk6lg37OvGSwZZ55JSK4v/eYV2B1veXN0zzb58epyvbYbjdX2Qi4XESfEPefOq31aKK
         TmIqhl8pMHNlfCHa0dfQoxW/zTW9YfkLFx/ppKG4f4kol7fmd9kM+H9zZmuB4+Ci95G6
         kvLGnK94v46KZaI2CLta0D5zwUvOD4ckDfthcxMoaX5oiWHkt/BrhLW2khoGOLJFGXgf
         Fd2yph5ocisDwDdVbNefR1AIfAO4ok0tP9L8KsKnQrhGlKly1cVLX/J+ySa5FLXLdsmn
         LeyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWY14brZqX6NmzbutfdEsGX3QoYeV3OFot4MgIRnHuvnhYOI8D1PpfTZyJfMGUs0K3B8TWJmTsR52Fa@vger.kernel.org
X-Gm-Message-State: AOJu0YwzDnf7wRa2bjMsx+Z0hvREXV9TZOdWTeCs0RpzAfpxO1xRw8Mb
	zMeCoCflTWjruLz1vhardA+2SGemh/3Ka0oTuCopfMGoGzW5LG/FmM2W7Sn457U9
X-Gm-Gg: ATEYQzx12uY32dV5DO6Av6drgnYotjC4eEv6RnZ44524QUQwuV8QGkxjxZzBTDTo7T1
	4QBcW9B5EFjUwxOCZAA8Z4DhznSUHvYETd2hxdti/pKlZZ3c+zIuIupnr4PcmERaHlrlv4v+Tyl
	OcOqBGZnYfw1Dhp9H4HEMZBjGLd/WwjQM8pLO+BDZBdbEnuEL2mvPjmcn2Peaskx4eUFsL6A9oo
	HnlvyjXrnMVu9JtUzLOwRo7lIOBh8wS4dK8pLAzW3EwuSrZ3qQQZpL895F0FtSijoCJwMhr+DDS
	JxQDAEPyKJnsup/IV+qmjw7AjCjGUTY3l4DhnjZ6uxreL+BD3UDSCVcfIz8pLlIjTgvyei80BpE
	BY4F/V7p4p5duXFxtpB9dC54/a8b9JoO033ybKfw7oXXncV89+LB753TZzdNYNtsUPdV34c+dlp
	uAjsu/1rjDkgE8/yZdHW//9yvN8+AaNAjibsoLuVR6CJGQ/KEyQJSxT45HCN9Q
X-Received: by 2002:a05:6122:6588:b0:563:7a35:1d9f with SMTP id 71dfb90a1353d-56aa0aa1953mr7828030e0c.15.1772543828469;
        Tue, 03 Mar 2026 05:17:08 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94df65b281asm14741464241.13.2026.03.03.05.17.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 05:17:05 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5ff9d225a0eso119933137.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:17:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWNTO9BZ5mcr3UyIEuVrFouWfeTKIY3zZvY6MWYVaCuRKZfZOwC0ta1fyiMzrJuaS8rqeWmE/IGLits@vger.kernel.org
X-Received: by 2002:a05:6102:c47:b0:5f5:487c:83d2 with SMTP id
 ada2fe7eead31-5ff325d53c9mr7807558137.38.1772543823941; Tue, 03 Mar 2026
 05:17:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203124247.7320-1-fabrizio.castro.jz@renesas.com> <20260203124247.7320-2-fabrizio.castro.jz@renesas.com>
In-Reply-To: <20260203124247.7320-2-fabrizio.castro.jz@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 14:16:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXtrAwAtqNPqwq5qKHo4SKQqFoGSE7qPnFRD4rbKkPfaA@mail.gmail.com>
X-Gm-Features: AaiRm52a94My3QCqI-CCMK4Bc8JSeFzJGy0yOXJPSReec93Wzsgcz5hw25V0nt0
Message-ID: <CAMuHMdXtrAwAtqNPqwq5qKHo4SKQqFoGSE7qPnFRD4rbKkPfaA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: watchdog: renesas,r9a09g057-wdt:
 Rework example
To: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: Rob Herring <robh@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-watchdog@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 7AA141F00EB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,roeck-us.net,baylibre.com,linux-watchdog.org,gmail.com,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-270494-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.641];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,glider.be:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,microchip.com:email,linux-m68k.org:email,renesas.com:email]
X-Rspamd-Action: no action

On Tue, 3 Feb 2026 at 13:43, Fabrizio Castro
<fabrizio.castro.jz@renesas.com> wrote:
> When the bindings for the Renesas RZ/V2H(P) SoC were factored
> out IP WDT0 was selected for the example, however the HW user
> manual states that only IP WDT1 can be used by Linux.
>
> This commit is part of a series that removes WDT{0,2,3} support
> from the kernel, therefore the example from the bindings has
> lost its meaning.
>
> Update the example accordingly.
>
> Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

