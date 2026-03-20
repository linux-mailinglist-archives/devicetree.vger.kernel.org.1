Return-Path: <devicetree+bounces-278231-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cPRhAgotvWmI7QIAu9opvQ
	(envelope-from <devicetree+bounces-278231-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:18:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5756C2D9698
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE4A1317FC17
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:14:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847D33A1682;
	Fri, 20 Mar 2026 11:14:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC4539DBCA
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 11:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774005298; cv=none; b=sRuFdJUipQNKlDdCHtyny6lUk1M1wu27090v24ZJgnkVZmuoSGV5tdVvvVulKYo1BaAk+NSS0HyUlKBlf+RYhRMoVyqxSx12ttJvMM3kvFFIUlQtnEh3qqxnhjnqpGPa57h5hoWxgFfJP8uhqFlvnR28pXKAxoCFG0QYAOMOj3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774005298; c=relaxed/simple;
	bh=9ieM0PKneLc9XAFn1kgI0QbNwUio1Qq6fWkxlV5z1Fc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=icPJhCezoMV7JS+73bTq5I9BwGrJwDhjpS5iIyve6SuaOhL6vyGOgAJaUhjQ5r8uqwshQDzH40cTxKGfy/2BS5N3YwswQaucjQdc8bvERyLRhbrnqACaWO/rUyrZ/Ab3HC+fwNma8BUWdTFsQudAxzorchJuGh17TXppRGmsBTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-6028bb29cc9so948809137.0
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 04:14:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774005296; x=1774610096;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QM2QQuood2CIqMt6ghdF4q02+bVScicBaTi5mQcy40E=;
        b=TL+KSa86/wGdwn8stFU4duh7Ju/xuSzCgQ+J1uuHOeoT6AornBxjo7Y2cRBn+BHguq
         So+FxsJhrb9Vxsh1lg12NPmxs9smxI7YnoudCIjj7qSapQI1nUlS203s9BVnVXQvNZXX
         eSKMBae9dPQ++kiyNGGfnWKEzWeSmDts5bLDhc8lU97gBrLkXmkmBTW1O0/6Y3tjMRLH
         K1u1wnJVb6GSER3QsiLvmMtFMXXzk+AnDWm9RwlWJzFtslq8IQ2ubmYbOHr+/caGfo5D
         JHxCrMg+qD/DhZiGihn1rER6RQJs8nK+u9oAEIY4tlIq3IKTWdc+dZHP3qI/PKpiyip6
         drJw==
X-Forwarded-Encrypted: i=1; AJvYcCV4QgsS0vJoAc7lacewn19qv1oM8rKyi8niIMeNtppZQZE8R1YmGIFF6I0QOkYJY+Y0Xnh94uidHqij@vger.kernel.org
X-Gm-Message-State: AOJu0YyBeKm3JOwvYnSP0up2cffc4uDI6/dmVYO0MiIy2jtMVrVn7lZ6
	UZvqhqNKfkfG9SckBMfBaeSkkkfTj2vhwbl5YuwlJLXHsxCGaHHVxvyGY6swhHSmvDw=
X-Gm-Gg: ATEYQzyh8/MX+8CAYtpKZK9bdZx36/4DRW8Q+iKLP0LvayOk8dUHHAOgfF2JpzKhDFo
	o7/66UyRDGX4Y9f0x9nh2vBs4ykG7hM9QVgy7psI98Kd0cLzPVY7fskWU2UCTVRzTsQgumtvbRu
	7TZauAD69NXxChuJMmJ9VdTElX7Fe5Zai1qFYNMTeAlXFnFD8WyhIV1fUCnu40tDVi8G2pauaa1
	iKoTF2fT8Q9KLKr14XhfS54k3tHpIeXv4Tt459e+ChQHm9Q0157zoU17Uo9lxb4KJxBWawapNZw
	y3TBwCatPyMeqVMPr0mt+vVs2m1MDDoDwMGcg+cpuYj4ZogqV1HftvXulDCLgUWyBwTstDrwKGf
	PNbBXVI5mgdgwOqY3hqfOEw6k7vAMptTppHvPxAofZWH1qaVMNNF2WGiPJynQ0tETBmlhHDds49
	+IGhmemFDJT5tLUxwfH4myUlyqPNWt8ltl2sL/cMKL5mO9lgT8RUKIEgTujvOp
X-Received: by 2002:a05:6102:8016:b0:600:a2:1397 with SMTP id ada2fe7eead31-602aed2335bmr1324556137.25.1774005295796;
        Fri, 20 Mar 2026 04:14:55 -0700 (PDT)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-95136c4e2a3sm791206241.7.2026.03.20.04.14.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2026 04:14:55 -0700 (PDT)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5ffa277c115so1102856137.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 04:14:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV6yFGfQ927HNH0OKhzGyzu2Xk+F8JPqYN/y/hZCgRcR/Y1BthmP61bzep9oEsZn1SiXgzR6lsSafnl@vger.kernel.org
X-Received: by 2002:a05:6102:3713:b0:602:9228:34a3 with SMTP id
 ada2fe7eead31-602ae79cdfamr1587306137.0.1774005294541; Fri, 20 Mar 2026
 04:14:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771344527.git.tommaso.merciai.xr@bp.renesas.com> <c8df5202caf4e36ee5beafe78ad0940643edcbb6.1771344527.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <c8df5202caf4e36ee5beafe78ad0940643edcbb6.1771344527.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Mar 2026 12:14:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWTOPYxC7r0ztuPc72T5xeDgcfo6CUi8sRcupjiJbRLGg@mail.gmail.com>
X-Gm-Features: AaiRm506QxR9HoC6NaRd9ZijJZ6-iF5Bj8kjApAjQvVWwUbRpOpkLxT5Tya6COA
Message-ID: <CAMuHMdWTOPYxC7r0ztuPc72T5xeDgcfo6CUi8sRcupjiJbRLGg@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: renesas: r9a09g047: Add RSPI nodes
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-278231-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,bp.renesas.com,renesas.com,kernel.org,baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.483];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux-m68k.org:email,renesas.com:email,glider.be:email]
X-Rspamd-Queue-Id: 5756C2D9698
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 17 Feb 2026 at 17:25, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add nodes for the RSPI IPs found in the Renesas RZ/G3E SoC.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

