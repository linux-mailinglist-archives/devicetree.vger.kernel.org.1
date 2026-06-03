Return-Path: <devicetree+bounces-306010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nyVBFfPUH2qMqgAAu9opvQ
	(envelope-from <devicetree+bounces-306010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 09:17:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC08763518B
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 09:17:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306010-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306010-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 38D1E30DE20D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 07:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97EE73FBEDF;
	Wed,  3 Jun 2026 07:14:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BEB3FADFD
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 07:13:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780470840; cv=none; b=XKYnGXKFNWQ20Q193Ws2bI6zKlpmdV63ROwfkBXJsN8gVh2KVX/X7m4VXyBw/iqrZTbjGPx8Fd/zS0GwS8xtOqnjxXL46/mDWpUTBbvB2U/ZLFOquiS6R7/vvyNewPrXtH9lIo4QnIp5lDReP2USA+lwjwEfVYadfhe2O8zSZi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780470840; c=relaxed/simple;
	bh=PCWXLFfrvNilpK8ZEoTfdntslW6sKXMO4gpjttz/CDc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z5MS8kplNgGz451bmkv5h1QaWiWMI4fp75+jSjoToFIF6WcHqxWzlY+7nYJ83iSNO1WvS62TtWvkCGttXewWse7r/z+ZzWacE/HGupMaLu9+8I/Ldl1vN7wMDIJORN0lCwvAd5HD8KM8ZofEnaYpYW/ehWkQnNOThjWrDRUQ8Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.45
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-963f63fe025so718542241.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 00:13:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780470838; x=1781075638;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eVTm+HVXfWH2P4Im0jsyjBGPpAwX0VIXYMfcrROvkZ4=;
        b=IEud7S/KzqjKuRbqJW3wRqwRK2PZSrOSCqznfgUsLNuy+d2Rphf0PwojBBZceNt56I
         XIuQ6CYP5riJMQWRq0OooQ3f2dM2ukfJc15vzTVFFithxxL1y3zyk3xcy2bKLyj80xhR
         c1iAnMRQL15DDAJPycw+te2ReZqbrRUbZj69LO9/qP65nPMzMjyU3uS+oHkYljMepV8t
         rIjq0Jw/kGXJZBr2hePEU+d5G4s43HwNdirFiVqo4BckzbHQhbYQsgp0Zv297qPY9tVI
         iaURjBoeoUIWFpT1CvYd0IkRuNs1+T56QvhNrPL/nZQN4CDbknBMw83dVagDuhJCESd8
         2Keg==
X-Forwarded-Encrypted: i=1; AFNElJ8OkfDKdLVNppgxdoofhmdrm13I0OI0eeuET1i1PFCWSrt+jzBzC1ao0tjOJ9SHFPHe6Hvkc/v8kvdi@vger.kernel.org
X-Gm-Message-State: AOJu0YzE6ZehX/697oX9C8hR6uMAUEjCL68hypZ5RjFvDzBGlnnOnOev
	j+8ld66A6tpiaH02MNy+/JD8x05/aZYieqpAFOE3PCPvLI1Zyni59f+vviTHOVHym4k=
X-Gm-Gg: Acq92OE6+FOrIOWR3yNwJ3fxX2t316/s7LEmutvaf/VRfuFGh7qsbjgGQCClI1D6CtY
	QAmzOh7V1v74Pf6FA/MKuXZINRjew8A06HzbQobZiuSc+NtfHaUdDlHGXsDYNBqbCkgXk0RATZo
	FRyWqkkcOCC/CQN3PfJ9Y/2u3jHxg+DC5kiOqUKJOZUOki95L3RAvolk42vB/v5cjFhhWowoITR
	mOhstYJ4aVv3eJzm6IM0Xi0/YbDHNP2qgVflKhtob0pq5a98/Rp44+hxz0b+ouANhmEz0rOd9Lw
	DdGBuW7xUcC3v3pvtZXsLmOLbmg4EEptJbIS7x4R/8Qw3y0Nor93VzQAW63AwAq6BRtfihSTbiC
	g8HhXMwVD2/cTyciGby9nXEzRb7xMxijqwKGo7kc457w9YAr8GklPI8rHZ04DSaGdDRWJUGxJXA
	1/i1tWjCke1fUK9reLLmUb2PZADYxCe8LKfwwJ6hhtadf5FCUjATm4dHb/HoJ/FOzyUHvifx0=
X-Received: by 2002:a67:e701:0:b0:635:1bc8:3568 with SMTP id ada2fe7eead31-6ec460bdfd7mr693185137.23.1780470837734;
        Wed, 03 Jun 2026 00:13:57 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-6eb66965b8bsm1627868137.12.2026.06.03.00.13.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2026 00:13:55 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-6c3099b11a9so1874229137.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 00:13:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ//P8/FNv9mEG4wGnEO2wJ2Vj1uHuI1bbTuyXhSUcJ82o24rn14NXHzRTJ9OPatIB6n892/wm3VbMe5@vger.kernel.org
X-Received: by 2002:a67:e701:0:b0:635:1bc8:3568 with SMTP id
 ada2fe7eead31-6ec460bdfd7mr693156137.23.1780470834442; Wed, 03 Jun 2026
 00:13:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260603065731.93243-1-biju.das.jz@bp.renesas.com> <TY3PR01MB11346485C16AFB6299B1711FD86132@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346485C16AFB6299B1711FD86132@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 3 Jun 2026 09:13:42 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVFScg51Uj2_C9YmwAOfG1+pmGiHgEr1=s0UD=OwPb-uQ@mail.gmail.com>
X-Gm-Features: AVHnY4KTaTymKCx0LSLs6RhnIwDGw4kaIZ2uRjB878pxxG4jPILkeBa1s_xqOpY
Message-ID: <CAMuHMdVFScg51Uj2_C9YmwAOfG1+pmGiHgEr1=s0UD=OwPb-uQ@mail.gmail.com>
Subject: Re: [PATCH v17 00/17] Add Renesas RZ/G3L SD/eMMC support
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "biju.das.au" <biju.das.au@gmail.com>, Ulf Hansson <ulfh@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Philipp Zabel <p.zabel@pengutronix.de>, 
	"magnus.damm" <magnus.damm@gmail.com>, "wsa+renesas" <wsa+renesas@sang-engineering.com>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,glider.be,pengutronix.de,sang-engineering.com,vger.kernel.org,bp.renesas.com];
	TAGGED_FROM(0.00)[bounces-306010-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:biju.das.jz@bp.renesas.com,m:biju.das.au@gmail.com,m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:p.zabel@pengutronix.de,m:magnus.damm@gmail.com,m:wsa+renesas@sang-engineering.com,m:linux-mmc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:bijudasau@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:from_mime,linux-m68k.org:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,renesas.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BC08763518B

Hi Biju,

On Wed, 3 Jun 2026 at 09:00, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> Please ignore this series as by mistake instead of patch series 2
> I mentioned it as Patch series 17.
>
> I will fix the issue soon.

How? I am afraid the next revision must be v18, not to confuse b4?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

