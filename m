Return-Path: <devicetree+bounces-310210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jqRfFAJqKmrzowMAu9opvQ
	(envelope-from <devicetree+bounces-310210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:55:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C0B66F9BA
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:55:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310210-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310210-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 893813019389
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DD4436F90A;
	Thu, 11 Jun 2026 07:55:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121EE36F8EB
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 07:55:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781164542; cv=none; b=hJLwh/2zX8//xKuu8VRe2ttRNv/ISgLnGUhAlIRpOSHGw8Yx+x+wsG7AXB8GasTadH9683hwE2jKH5jr/EuVAKDaRhTmH2isKnTNBDgLp4ZQtnsJ8oSY1qI9tz1aUDs2T+AQfPfFPMTc0rSS/he96epyLzWRMghRUYZ4DSpbyes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781164542; c=relaxed/simple;
	bh=FcwS1Ux5KwgtnX8CZVP0j4SNeEXvGKNAL+eLSlc/HUM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fh1sQcMvTM0Yol9vJqYp6ud5Egouq/XPa1hkAkZxWotXGrLpSPm+7OoC1qIJpzSsTVJToITEpgfLSZ7aIrmluVsJdMV/uVfrwdAAZmbW6jvZLksS1IlSe1x5+YjfpAnF4BMBvFaotKnUCkhq8gxJg/taRXkk62S8mT+yMCn7AFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-59d4aa96ef2so5323789e0c.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 00:55:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781164540; x=1781769340;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w2NiokGN/wizVGUGbdWYAqnmeeSP+HB1QCep5aAksHU=;
        b=imrBDJ0Eqeuhbm6MdvqCkfWIawjMoisl2e+Nmq79h0g/3BI3SAAR5ah+c7b8UIgEL6
         O+hBPSWMRO8jY9sPXKQuEEny/maPX4Jfi0rYMNqTU+iyXQo2ivnkYGEepPRC6rM3I+XJ
         YeHHydOQmyxPUdkc9OObMSxzTWe7+21V4b0ACHk+dt+MVQxdWzl8CVD0akruGJqcg3nC
         3ZdaRrqFE7P3RoQBNyNyV5WtAAyG3Np0fDVqo3HvEFXD0CP6rjUC/8cnUXFEib8rexu9
         wtrpJRzRD34btHrdAhWrEAxGy3syz5oF+brEmhXksKjuVClEptitXqMkcuziheGLdcDk
         cUyg==
X-Forwarded-Encrypted: i=1; AFNElJ/Yqzvsnu1nPm17MXxuNTAW8XFEo2hLK+HDJ2BcErOCXSdlglEpqGRBH6dgxpmpSrtzEgFYnlbRbMAc@vger.kernel.org
X-Gm-Message-State: AOJu0YxTRYFqNs6H5vjS1zJx3DuLOWuiFSqL8TSqE1qPOXrDWt3siJ14
	gXBVANvFIQLz6bSY5uw5i+leLSDT1MAY8Fe/JRJ9pzHUS3lUc+um17w7Wosv14qGoMQ=
X-Gm-Gg: Acq92OHwm//lfwT7XXRTY9f+KtsIqAdK9nf9PbkOybRyG9MFJklrHZ9gHKLp/N1r5Q4
	utNdzyf9e2ewbXk/q0q1MgmwK+dY1E2VKMbKQFkktUZOK22228lcSm+e8QLgtwwZ74XWaHChRsv
	8ekiIplbcS7UUshMa9GNlQgDF2zXDPHN43348OoKRonuQZ7NCYULJrYgWQe1AAqjV3MbZmv4ZS2
	afBd8I4kpCbL9cj3Lh4+prp7eLIEdaOH5kB/NcMizushtcKJzdTuprL8cM8g8BNqEfqzFTjVfFb
	5NOIlgDwqramTk15unieX06UiffHr4giTKwCGt30JqpK+bgNhrWrLIwTgZO4Pdr2SqRmFox9j5j
	cWQL3yuqoS30YaHnQ/vTXMClcTqCrzY7m8xzNys0KhkzwjGQ3sJtnW/2rpyx/VYoq0+kJRrpngK
	cNz2CynnV4grOOl2NLi6Ck/tIEgsyoxXuf61iNraE7cl/8vM36qbImosxeFeSPHAMVSuxS4D/xv
	ss=
X-Received: by 2002:a05:6122:4d82:b0:59e:f988:51e with SMTP id 71dfb90a1353d-5baff6ed69emr522012e0c.5.1781164540001;
        Thu, 11 Jun 2026 00:55:40 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bb0136ec13sm829674e0c.0.2026.06.11.00.55.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 00:55:38 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5b22b023e1dso2943192e0c.2
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 00:55:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8bH0080E41rKYwynhJCs5I5J8SBtwxRwr199qDjktDQjGdORQjLJkMDvn8+jxvbn5bu3emOLiEKtgt@vger.kernel.org
X-Received: by 2002:a05:6102:419e:b0:639:1e8b:ecd9 with SMTP id
 ada2fe7eead31-71d5ca6f14emr533723137.20.1781164537632; Thu, 11 Jun 2026
 00:55:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260611005952.146825-1-marek.vasut+renesas@mailbox.org> <20260611005952.146825-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260611005952.146825-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 11 Jun 2026 09:55:26 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVU=msc6f3KpW1PeC1mB4dLKhAdqRaFx2i7GMRNDv+4vg@mail.gmail.com>
X-Gm-Features: AVVi8CctB5g3lahw0kyIeWwLgXx3I55B4rJDSwSay_Z70zWBy3E0yh5vjNFIWN4
Message-ID: <CAMuHMdVU=msc6f3KpW1PeC1mB4dLKhAdqRaFx2i7GMRNDv+4vg@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: renesas: r8a77965-salvator-xs: Enable GPU support
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Matt Coster <matt.coster@imgtec.com>, 
	Maxime Ripard <mripard@kernel.org>, =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
	Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310210-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:marek.vasut+renesas@mailbox.org,m:linux-arm-kernel@lists.infradead.org,m:conor+dt@kernel.org,m:airlied@gmail.com,m:frank.binns@imgtec.com,m:krzk+dt@kernel.org,m:maarten.lankhorst@linux.intel.com,m:magnus.damm@gmail.com,m:matt.coster@imgtec.com,m:mripard@kernel.org,m:niklas.soderlund@ragnatech.se,m:robh@kernel.org,m:simona@ffwll.ch,m:tzimmermann@suse.de,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-renesas-soc@vger.kernel.org,m:marek.vasut@mailbox.org,m:conor@kernel.org,m:krzk@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,imgtec.com,linux.intel.com,ragnatech.se,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7C0B66F9BA

On Thu, 11 Jun 2026 at 03:00, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Enable GPU on Salvator-X 2nd version with R-Car M3-N.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.3.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

