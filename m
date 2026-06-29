Return-Path: <devicetree+bounces-317058-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VZeILfN4Qmos8AkAu9opvQ
	(envelope-from <devicetree+bounces-317058-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:53:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4D26DB939
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:53:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317058-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317058-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A642331F1E3F
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC080406828;
	Mon, 29 Jun 2026 13:24:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69810409107
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 13:24:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782739478; cv=none; b=ao8qPEvdHs5YsmLc6zQye/tU9BajaAj0laR9IaH8hqD8FgeZzhWvzIr+Ss7iH6Vf85x9C/rEV8w7xaaw6u0CCf7jHueVwQyvvUHCeb6slKLIzBqkp+4QKEq04ts95KE53PWfl2QXehP2rN9axv9R+vSUliXrEAj/avnbc2i6bdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782739478; c=relaxed/simple;
	bh=2F6Q+G8lPK3/LK966UnTL3MxjuHM04Y1nolQeR3CA4E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t9BFR6UiHclyxvIFPbRabtN0rKWptMNMsQYYPBZfRa8cAUOT5gpB9gQcqibdBP/nawYDDeTyKN3Wbfyf8vM0VfHTe3yigeWMzmioC+1ukajjYxOh8Usv3Iqw7VPuYYMKEgdvXIVtPLXsmgnzhiGMAMUKK5m+G/PGBMheG58ycys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-9673385b1efso773502241.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 06:24:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782739476; x=1783344276;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GLPd0Ch+Wc2elcUwgdUQIz9nCCIE4WAtlCHUOVZvJQ4=;
        b=nq/tzmXg7i0I7EIGgjPo0gt499UFbb7k2cHi9YOz3VsrPKgJtDylcIndn4DUwrd0K7
         ZaR+9JtnMCJwuqh9QBjq6bP8AAtz2glELy217cUAYu9iFTdkT1a4hXrSnyhk2NTwwsGU
         rHlOK6vjrp0P2pP7Xxuf9LUEo6tjYKMYvlF0qXCpWa3quxaNdxUx/S3A2mPcf0Qs5WbD
         9xvEmy1LEoWG2fqpEFFP438Y1W8pvQO6kdyMAkbadAkzYz8ZnbPrBsG+yVCy1kdu/3bJ
         JzPoIPE+GcJjHv/k0YdR9sklWsIqq6JSYyizXpxfPHRnvSexbashKEPzbFfbBqKkLDow
         uDyg==
X-Forwarded-Encrypted: i=1; AHgh+Ro7c3mGtFtpLQhZZE8q2QPQtioJdBlRwrQJHiy9u7GFSkIlpibRm69RD4wSYwNwuIJ2S2CHKUWmdXTO@vger.kernel.org
X-Gm-Message-State: AOJu0YxcWZQV1xn+Ft54f+SG1a+dusE5reoJ5LGozwY4eR4q5bLig6xX
	ukJA9c8AG2hvW2WjKGweh8RYIKBsVPZ1OERlxUZJQ0AVDOBQ//fYscKisB/m3VzY
X-Gm-Gg: AfdE7cnZ9YJCRSbqDU3aAz4Ux2dmVWwGunVDzVdsJS+TFTsmagyavwEWDKuR9VxnPcl
	QJLBZYxZD1z/GkOKdu6BSVZq41OM/MBZlKVHCs077pfheFrOuDWKJlOQuUDbBWsf4y0htgOcVBN
	Nt3jLT6OEohmgjGn7PDLyM2wEWJg2s7f2xh5MKNTSZvrGgok4UV1Qi82lYVMZmPIJh+ublLdYOD
	KnFoMeRoCqbh4IJijqa10CNFigUWuyaH2muT4cduiB2yYL4ADQfD5ID39L7oP0wf+XPDc2zqS0f
	0OlRnGpq5MRmyDTJoYCLB/Vr6gTi/fFmx+f11HM2fwFiuzfSX3aYtJHRMa/1KpTaYzXm7rfa4Hu
	8cYgSQ7+lBlgq5LED77m53NT2b3/KcSPyalPsdQ4RNAl3prZWY8vbWZE4uNVYWUTXqSId1hoCCt
	/fe0/36lLi+aFRMi6qPpoE6CtxGoO1KOoUAF7kag93KS1tk0tH5Q==
X-Received: by 2002:a05:6102:5695:b0:608:9a34:c8ea with SMTP id ada2fe7eead31-7343495a4acmr6686019137.10.1782739476275;
        Mon, 29 Jun 2026 06:24:36 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-738bcff6df0sm1527340137.10.2026.06.29.06.24.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 06:24:34 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-9673385b1efso773477241.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 06:24:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RomNGUcuRyo+WpNaFZegaVS/r1Y9WbGI1tduF3nOXkhlrq9AKytpeiS+4l073OjVoEuwa/IDnlaZhNJ@vger.kernel.org
X-Received: by 2002:a05:6102:f06:b0:650:94b2:3839 with SMTP id
 ada2fe7eead31-7343444e593mr6347265137.7.1782739473554; Mon, 29 Jun 2026
 06:24:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260626180326.9593-1-wsa+renesas@sang-engineering.com> <20260626180326.9593-5-wsa+renesas@sang-engineering.com>
In-Reply-To: <20260626180326.9593-5-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Jun 2026 15:24:22 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW7E+8qOaB57HPV+bZsbKwjwMnKOKTgHXTP=37JnttDyQ@mail.gmail.com>
X-Gm-Features: AVVi8CfVKo8iwUjr1Vw7ce8j-4Mj2uWLtD2PeaR6Sv7OOxbw6WnrkVNuF-6CbEk
Message-ID: <CAMuHMdW7E+8qOaB57HPV+bZsbKwjwMnKOKTgHXTP=37JnttDyQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] ARM: dts: renesas: r9a06g032-rzn1d400-eb: Enable SPI-FRAM
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317058-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:linux-renesas-soc@vger.kernel.org,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux-m68k.org:from_mime,linux-m68k.org:email,glider.be:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A4D26DB939

On Fri, 26 Jun 2026 at 20:03, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Activate the FRAM and the SPI bus which it is attached to.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>
> Change since v3:
> * none

Thanks, will queue in renesas-devel for v7.3.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

