Return-Path: <devicetree+bounces-312812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 51yjOTtLMmoLyQUAu9opvQ
	(envelope-from <devicetree+bounces-312812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:22:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4454D697238
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:22:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312812-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312812-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15D233030B14
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 07:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C86243B9DAC;
	Wed, 17 Jun 2026 07:22:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8AF3B6C0A
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 07:22:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781680953; cv=none; b=YvwKjo4KFFfl9wjnIvFod+5blJnxmzm8yrwelRm4FsU7C72Q5YIdV3YJ1okZe1zP4/CkkLS6bTKPw+V9SZgFaI6B1qcYLog7I8vpe6kDzWj49WjAQqQYnNuPRHD+0rVgfBsXvnhVErFyx4Y/dNkAhkK/7hOrApS6+82dpTACPsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781680953; c=relaxed/simple;
	bh=zqRNRewoBpmHTp7Xk3UHetwxFmtfNMdTc5mpQ80sxZo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VQ4x/65W4eKTUDKOfLScCiP+yEJWhlloY0k3KR6MeNETGTjLt86mQhsNXlELxr98Vu9s40aPKoZABwAO/iS33XG8HfmW7Bp3HJ1zuBOLFBLWwBSkIdj9YXSDlZh42QM/0mYI9RhQD+QFr9g7uURnuDO1g21zw4Pd7AQu8nRB3iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-6c3154fa46dso2639269137.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 00:22:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781680951; x=1782285751;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JJJv1PNEf0VpJ/XXPLmaxN61dHusNzB2ydX0p6N48v8=;
        b=DYBy8XzmSJX3R99I9G9rWPx1Zp2XpqSdnTXrjpD/MZ7q1pqwqzz1iwTmOv6cjV9vdm
         iWPXYBfSYl32/KKlAOP+pWnvxGb2M/x8xTjEBZ9i7cwP0wUvftjFlKuA4iv3/VFGIZL3
         KU1ciGlO3r03tGRMQGggwJGk8B7XklA7F7HiepMiO0cZK4DTGay3mh7TQgsV4P8hUBf6
         HYI4nHogg4UjYE/HI5YIKbk9YIr5gdTJKwqb7P5PvLUU2JV2DZQBz7OVOl1ag7Nb9D3H
         RUTFOs3opZuyYFjpW8QhM3WI1riG0tOssVByiroWgcS0UBW2JsOlJnDtYjlD7J2s6wPx
         Qnlg==
X-Forwarded-Encrypted: i=1; AFNElJ+nChBevGDCrzuLDsqp9YI2qm94k3M1uEYPqDFpsDjcUF6jFByCyzZfMLH3nyHMkl83/gizOc5zlZ64@vger.kernel.org
X-Gm-Message-State: AOJu0YxpG4MuJy20k1x1Zu1PvRrIDMoE3fZL5cGeOdnTBbnUeqddGQxq
	bp9B1Fdf+8zItlxZPgC42Eez0dwvj9MjO7oG4401jCb2WFMz6vByfn6KaGhyT1PQ
X-Gm-Gg: Acq92OFm2gjwIfvF2LG5vXjB4KacI+XFljuhkLIdgRR0P1IKHC12cG45c+AJxb9021E
	GFZpAM8YFRxy7pKY5hM3fWBF2pXCmjw/TuZ/VKibg46ckDawhE6dyp8QUD5xZ0FRCvZztFz9J7/
	xUPRLesLb+4xxl8CBzko+gP/fmfWl2322+CGVz7CXnVbrHR/hefMIz+35LJfdSnAsoSQ+7Ty9CK
	HBXarMh4y4DSs2GWdnMbNcuV78pLOUS1+2kOTr99uQStzvoF+3PpmGw0g4ur87ZKwt6IxtPfRK5
	vvM8lT77z7AUAWnTE5oWYYzb1DmPtTN8DwcxR+udbazDR8l5LyAxwyRFjaEt7ii/8CvZB57kDt3
	pk6DUBN3f28s4l/TOoy4cajarwuZc5UP/sk+w1X4kPHoOzM3gz/zqWCVo/rqwe0KRaEmSGkmlTl
	siFA77CBMcoNhbuXAF1EvORChXmQvFdSFiJR1bFJVXj6ujSJJPBg==
X-Received: by 2002:a05:6102:3047:b0:612:c135:1b77 with SMTP id ada2fe7eead31-7246d5339e5mr1371024137.27.1781680950776;
        Wed, 17 Jun 2026 00:22:30 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-966a05a7067sm6886238241.9.2026.06.17.00.22.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 00:22:30 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-6cfc8f8e127so2151681137.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 00:22:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8THgNMXzzlfzk+mALUxtFMULSPo1MfxRKJqRELq1PfHMVLEIIyoZHd9XH/SGQCckcqWrgmtRBcXq5S@vger.kernel.org
X-Received: by 2002:a05:6102:2b9a:b0:62f:2d04:db5b with SMTP id
 ada2fe7eead31-7246d42dc41mr1280153137.24.1781680950072; Wed, 17 Jun 2026
 00:22:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260615154805.1619693-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260615154805.1619693-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260615154805.1619693-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 17 Jun 2026 09:22:19 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXg16frnn88_P_jHRH+HPy00wWfoqNKdOv8teSWNpMEGg@mail.gmail.com>
X-Gm-Features: AVVi8Cf4OglYcZCFMrrSmgF7E4807IU6wsvfZGr3kR7N8sXGY6lLU3UyPN82lAM
Message-ID: <CAMuHMdXg16frnn88_P_jHRH+HPy00wWfoqNKdOv8teSWNpMEGg@mail.gmail.com>
Subject: Re: [PATCH 06/12] rtc: rzn1: Sort headers alphabetically
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	linux-rtc@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:miquel.raynal@bootlin.com,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:wsa+renesas@sang-engineering.com,m:linux-rtc@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:prabhakarcsengg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312812-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[bootlin.com,kernel.org,gmail.com,sang-engineering.com,vger.kernel.org,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,mail.gmail.com:mid,glider.be:email,renesas.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4454D697238

On Mon, 15 Jun 2026 at 17:48, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Sorting headers alphabetically helps locating duplicates, and make it
> easier to figure out where to insert new headers.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

> --- a/drivers/rtc/rtc-rzn1.c
> +++ b/drivers/rtc/rtc-rzn1.c
> @@ -15,8 +15,8 @@
>  #include <linux/clk.h>
>  #include <linux/init.h>
>  #include <linux/iopoll.h>
> -#include <linux/module.h>
>  #include <linux/mod_devicetable.h>
> +#include <linux/module.h>

Sorting of special characters w.r.t. alphanumericals is always
a bit fuzzy...

>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/rtc.h>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

