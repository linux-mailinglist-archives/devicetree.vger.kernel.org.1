Return-Path: <devicetree+bounces-323034-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2nzRIIB7TmqbNgIAu9opvQ
	(envelope-from <devicetree+bounces-323034-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 18:32:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D726E728BC3
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 18:31:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323034-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323034-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3839330E54B7
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 16:04:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B6EE352006;
	Wed,  8 Jul 2026 16:04:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5886235C1B4
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 16:04:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783526685; cv=none; b=NDRsrL8o7tZrlEiyZAzmdMlbIlAL8bfyBPPmHlRmg1ZeV66Y15CNI5r325n2lo6wZ4UfCNHJTleyr83lhgtc/iSuYlOHiQNe0dpMUAA6IBqNSw54emy5VD2jNg1RjTer7SEcDRhZpUpV3z2KnrRdU52Y9MsZLuiA9lentw6vnVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783526685; c=relaxed/simple;
	bh=y8j2/FQNeXE1C/2iMG1jjFg6VhJGfmA3AX/0fZrBhX8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DrkPuxqD5C/1SRAhJGHcmzw4ejFGtA2CtQhegkusKqZopxcjzODl3NxvUj1XhwpGeUpt0WJsuAMHuGk26Y4JUfzDAjBwNMryILBJpzEHVyeznMAMFIsYcF1lk7LT0P2AWm3X9AyGERHS+AvVy9J9HLLykREg+vYFisH2/HP0Os0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.41
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-69a50189d25so1604934a12.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 09:04:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783526682; x=1784131482;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=hO17YRpuaXnOXgeP7ftbHwpUP+dSdnes8jnl1DmJr/I=;
        b=K4XQWAMqYau17GkjxH+MrLN+ChMhaxX+w7LQZil9r9ljZTGafoS8crq3KnUwelGzd2
         lpoximfvL0tZfPqABH/jRgWxwIARTPnC9bmj8M3fecZO6kGBgF7pvmeyqvbC0EuegDQo
         tzgeB/awI0S3kuBgJbYMYhu+9OIMFUjLPFzK6pVQ8rQ8o3rRu87kb1FM0IjmOQ1LV65m
         kWjAndC/FOb7I30zAMEtltSc1Cb03HAZkk3tWUgCZSeOo1dNz4U0K1x5m6LW5DVa9Mn9
         7anrsGMGd0Vs7/VYhbF9+UnjHkGnOpyCEXMk3MNB3IZ2CzOa9ogP5HTTUX3yiZo63+VJ
         iDuQ==
X-Forwarded-Encrypted: i=1; AHgh+RrWW1QBu5SnQieiDqyAkaqKqHH66IXNgI2RZYACbID7TePGO/SkihlH7GyMKqhrAosp8sBR3WAfgy74@vger.kernel.org
X-Gm-Message-State: AOJu0YxSv0D+8c2nTN2RJLgj5RTMYhgvQa6/8Kc9g1aecXEAnCMRBoCa
	9HusEouoBQnPRaIpX0YqNR9mvaeMyCKKJnZl2XmHa+fmTBa6iG1aUD823epNghqCGbs=
X-Gm-Gg: AfdE7ck0YxEG/H+wQanB91UiOFhQeZIgu/beuqqZcTzK4XlJ66FD0lffQeHZXcW7y+z
	S/lVAjPFJNpaI/oZLfvthZTZuHN0Rmuvp+kRCRsjBfcjlO5aMkzgdGndyyB2cYudrIF4WfiexSv
	kcEoWyb/ZAp8jEb2FnbMumWLFX8/HOnaYQP+/yPNsp5ybGZNedpppv6TPeNAm7S7HaCBdni4PUd
	rLjX4rjXt8f0OBMK9eJ7Y7ZRxZRJmir/XYOJP+tw8VrggiAKzhI3wRBijnah/TMo3rx2/xb2oiw
	AWMhCaSnJWVlD6RM0rfgFS4WeP46qPMVYmUoUGpwbF0UxhG2g3jYyAGHX5Dr/U2xPb8tvSMcvtc
	lWG+HI1OVA1OJTFmWloMA+EczL3+2E2w0dd7V36UFM9fZpCjFvgJvDCK0VexfDAlv96LD3jDRrN
	quI6pJRiW2dYx4ftIcdn089KUF6+KmaqkOd9k4V84joemnpehBew==
X-Received: by 2002:a17:907:1ca1:b0:c15:9058:5f62 with SMTP id a640c23a62f3a-c15ce0603f6mr155674466b.35.1783526681451;
        Wed, 08 Jul 2026 09:04:41 -0700 (PDT)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com. [209.85.208.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ada05d72sm354015766b.53.2026.07.08.09.04.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jul 2026 09:04:41 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-698bf7a1a2dso1265668a12.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 09:04:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqYGWuuVh0F9fwEey0wQLygdIBArr3cL4QbSgvCLOnLMqYjV9DhORVlxMfFnxZmdrI5pcjNTkl8+1gd@vger.kernel.org
X-Received: by 2002:a05:6402:1475:b0:698:1973:1da9 with SMTP id
 4fb4d7f45d1cf-69ab44a2082mr1330602a12.19.1783526681164; Wed, 08 Jul 2026
 09:04:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1783505329.git.geert+renesas@glider.be> <3c76a2d4-a8b8-493a-9196-c5cc72958118@mailbox.org>
In-Reply-To: <3c76a2d4-a8b8-493a-9196-c5cc72958118@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Jul 2026 18:04:27 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUVUKYrrms0Vd4i3_nwq2LVjvnvFRWswi8UY3cA67u2-w@mail.gmail.com>
X-Gm-Features: AVVi8CdIlIxklIbGHNZaygjBAfJd_Dhsc8WBwlY036WlOLVf0uDAr_hqlDulMbU
Message-ID: <CAMuHMdUVUKYrrms0Vd4i3_nwq2LVjvnvFRWswi8UY3cA67u2-w@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] R-Car X5H Ironhide CPG/MDLC SCMI remapping support
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Sudeep Holla <sudeep.holla@kernel.org>, 
	Cristian Marussi <cristian.marussi@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Saravana Kannan <saravanak@kernel.org>, Ulf Hansson <ulfh@kernel.org>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, Kevin Hilman <khilman@baylibre.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, arm-scmi@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-323034-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marek.vasut@mailbox.org,m:geert+renesas@glider.be,m:sudeep.holla@kernel.org,m:cristian.marussi@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:saravanak@kernel.org,m:ulfh@kernel.org,m:rafael@kernel.org,m:p.zabel@pengutronix.de,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:bartosz.golaszewski@oss.qualcomm.com,m:vkoul@kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:khilman@baylibre.com,m:florian.fainelli@broadcom.com,m:wsa+renesas@sang-engineering.com,m:marek.vasut+renesas@mailbox.org,m:kuninori.morimoto.gx@renesas.com,m:arm-scmi@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mailbox.org:email,vger.kernel.org:from_smtp,linux-m68k.org:from_mime,linux-m68k.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D726E728BC3

Hi Marek,

On Wed, 8 Jul 2026 at 17:42, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 7/8/26 12:16 PM, Geert Uytterhoeven wrote:
> > Geert Uytterhoeven (10):
> >    firmware: arm_scmi: Add scmi_get_base_info()
> >    of: property: fw_devlink: Add support for firmware
> >    pmdomain: Make genpd_get_from_provider() public
> >    reset: Add reset_controller_get_provider()
> >    dt-bindings: clock: renesas,r8a78000-cpg: Add firmware property
> >    dt-bindings: power: renesas,r8a78000-mdlc: Add firmware property
> >    clk: renesas: r8a78000: Add SCMI remapping support
> >    pmdomain: renesas: r8a78000: Add SCMI remapping support
> >    arm64: dts: renesas: ironhide: Enable SCMI devpd, sys, clock, and
> >      reset
> >    arm64: dts: renesas: ironhide: Add CPG/MDLC firmware properties
>
> I think 10/10 did not make it either to my inbox or lore.k.o , but the
> remaining 9 patches look good. Thank you !

Thanks, I did something silly while sending.
Lore now has it, b4 still seems to miss it, unless I specify the
Message-ID of 10/10.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

