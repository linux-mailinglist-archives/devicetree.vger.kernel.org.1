Return-Path: <devicetree+bounces-323587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NtYICK56T2o6hwIAu9opvQ
	(envelope-from <devicetree+bounces-323587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:40:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A208A72FBE8
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 12:40:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323587-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323587-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 46D3630FCE8D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 10:24:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 448B34071E8;
	Thu,  9 Jul 2026 10:24:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F483FE37B
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 10:24:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783592675; cv=none; b=CwuXFisEu2VmiUASQ40QiuINcQFaeUc++wz+zjs3A772LwnUQiQFwlqLeGk/+m3vZ7eJ+5Heu8BEkT+V4X01fp4oXnHpNreCMWP9yNxCNQiHYt3iY2Wn6FQynmyHDs7Awla+5LHPts+rQMrS8Vb6iutrvutKyjn3QiM+n7veVkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783592675; c=relaxed/simple;
	bh=FxUfzWpCleIQzfr8y72a6t+Wi81Fv5S94Ccqz6vyAuY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CQIAlnVcHsvu4ChUcdp61bq1qxo6xqNod7UngwV/T18fL4TEofOA6BrvDBvQyKNJ+g7da69dyg8nwYLbcaly78r/v3K1S+7il35YfjqJW7Cmwfjy7LHuJS0PvSYSOLWqjlRAgk6Q+aDJt6KEfoAVFzVTP7QHtgrGY2ylyYRgctI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.51
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-7396940aebcso1225748137.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 03:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783592673; x=1784197473;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=s6cZ9HNvj5euq2IsKqnGtW9n38TCf44UpefkQ/0EfN8=;
        b=FB/MKhDcAbf1oOciRY7MQiLZgYy+0Q7Mbq/bCyR2jKvxx/QlsOI0zTYhH+NECBsKzo
         g38Ce6KSR3bGrF70LwNTNh8F7JFY3fkvuaNcEHP6vX9iTu4cH0TuCO7d6sFBCmGYZLEB
         xVGH/yTlZIghb1L5wvRxyuTKgWQRgkZ3WIlux5BfN6FGCC/c/4YICwwoMNZTaqFxWJiP
         0U5phQ/iTygdOFCLRJJ6g+Buo9fo4ra/FbJ+kqyspw6i+rLCeuOik6eHrfdiRDE+SjeA
         dJxQ/qNtcH0PnrGwcxnrUj54LCBR1ql+1ALLn4OWF8hI7eJoptdIe3k1TjyFt3ylyhiE
         A6kw==
X-Forwarded-Encrypted: i=1; AHgh+RoLYnop5O6rkyNHca0fIzbaFPjb27J2m+mlsijl2C1p7DqnjDxRAqr72f5AJDOlvihBkJibnyxHARqx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+O3d7sLEqFhpQH3/yLUaPfV1D061YYJWtR+zgxfLifKV9MI8T
	ebTFX6uOTg9NycgmB0JRx+9vWN0ii5ykjcziVZ06zajjLULegiVTYSKKNpIdNzy9HQI=
X-Gm-Gg: AfdE7cm7sV3aFsOwp3CfubbD5ODpKOlwQLj8K9qYjVnamVqdHF5RdSm31bCW96TsqVt
	tme46BpxtE8u3wSiDTRCo7doM54uUE57MpDsgAE+CeEewRASBbXk7XI3znjmQtOoXfjOMGfIrI5
	LRXa8eUncQa6GFeEHuNtEiBfTAOYJk6OWgp6L3e5mVgujlCI88WrqJD2zIYhyKPsql9NGFh8TCH
	17UxLSBbds4ovxIQFmX1ooEO7/O9eciThpGxrCDmIto3vvl+WCGWkpSLdJr24TwToo7jUTsBbDA
	oQoCO0X0KHWJyF1QxDetbPiWdpIUv8ZpRQyivMjQFs/Hwy12mVHwiWbdtDdwieAkeqR184Nt4LS
	c5KfK7r63ICiYmFUwDEI9lCfUdq4BF3Msq3KG2/XzfwOdt1cRitZhX/neQuaoXCbvHogiLMK2EH
	M8CEMkxmiVOsFJ80cs4Hu9MyzdHpW5KTXF2qlRvD60/P2lefOnew==
X-Received: by 2002:a05:6102:504b:b0:73e:751a:167b with SMTP id ada2fe7eead31-744e046d06bmr4333418137.29.1783592672630;
        Thu, 09 Jul 2026 03:24:32 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-744d6e38d35sm3337108137.12.2026.07.09.03.24.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2026 03:24:31 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-966d7738c3bso872398241.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 03:24:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpguQLgbrq9iHP7RW7iLISFZORxRnKVWFIAgzKC49COn/b0LKhlN9NcSuMZGG1kYdP96CWWKRFCSh4r@vger.kernel.org
X-Received: by 2002:a05:6102:94f:b0:738:531e:a43e with SMTP id
 ada2fe7eead31-744e00634cbmr4111626137.7.1783592670751; Thu, 09 Jul 2026
 03:24:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1783505142.git.geert+renesas@glider.be> <dca2c4940ba38b897f04b6fb67591de9835900e1.1783505142.git.geert+renesas@glider.be>
 <59725f93-5269-4b0e-8633-48821219877f@mailbox.org>
In-Reply-To: <59725f93-5269-4b0e-8633-48821219877f@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Jul 2026 12:24:18 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXCooODm3YuE1JjZJAc2BeQuD==kWbA+ZzpXRA3fqa0Vg@mail.gmail.com>
X-Gm-Features: AUfX_mzHlNNTYZ42llQz3ksPLOjU-3fWPe_bQZCByAo9mLJpSl17fS0OhOffgPc
Message-ID: <CAMuHMdXCooODm3YuE1JjZJAc2BeQuD==kWbA+ZzpXRA3fqa0Vg@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: renesas: r8a78000: Add MDLC nodes
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Ulf Hansson <ulfh@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-323587-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marek.vasut@mailbox.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:ulfh@kernel.org,m:p.zabel@pengutronix.de,m:wsa+renesas@sang-engineering.com,m:marek.vasut+renesas@mailbox.org,m:kuninori.morimoto.gx@renesas.com,m:devicetree@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,mailbox.org:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,glider.be:email,linux-m68k.org:from_mime,linux-m68k.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A208A72FBE8

Hi Marek,

On Wed, 8 Jul 2026 at 23:56, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 7/8/26 12:15 PM, Geert Uytterhoeven wrote:
> > Add device nodes for the Module Control (MDLC) blocks on the R-Car X5H
> > (R8A78000) SoC.
> >
> > Complete hardware desciption of all (H)SCIF serial ports, by linking
> > them to an MDLC for power domains and resets.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> [...]
>
> > +             mdlc_ddr7: system-controller@e8380000 {
> > +                     compatible = "renesas,r8a78000-mdlc";
> > +                     reg = <0 0xe8380000 0 0x1000>;
> > +                     #power-domain-cells = <2>;
> > +                     #reset-cells = <1>;
> > +                     bootph-all;
> > +             };
> > +
> > +             mdlc_hscn: system-controller@c9c90000 {
> > +                     compatible = "renesas,r8a78000-mdlc";
> > +                     reg = <0 0xc9c90000 0 0x1000>;
> > +                     #power-domain-cells = <2>;
> > +                     #reset-cells = <1>;
> > +                     bootph-all;
> > +             };
> > +
> > +             mdlc_rt: system-controller@19440000 {
>
> Please keep the list sorted (0x19440000 should be before 0xc9c90000).

These are sorted by instance (Module Number), as per Table 18.1
("Target Module hierarchy of Module Power Gating and Module Standby")
in the documentation.  This order is indeed a bit odd, as it differs
from both alphabetical label order (unlike e.g. hscifN), and numerical
unit address order...

Any guidance?

> > +                     compatible = "renesas,r8a78000-mdlc";
> > +                     reg = <0 0x19440000 0 0x1000>;
> > +                     #power-domain-cells = <2>;
> > +                     #reset-cells = <1>;
> > +                     bootph-all;
> > +             };
> With that fixed:
>
> Reviewed-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks! ;-)

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

