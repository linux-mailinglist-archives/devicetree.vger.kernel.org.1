Return-Path: <devicetree+bounces-272064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QG0QEC7MqmnwXAEAu9opvQ
	(envelope-from <devicetree+bounces-272064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:44:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2C2220E13
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:44:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D46B3199E0B
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD278277007;
	Fri,  6 Mar 2026 12:35:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9332264D6
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772800544; cv=none; b=sasvNiyJvcUSRsK6/oIZpm8y9fnIM6gDMSictiZpERxweRFqe0dViaCt4Vz3FCBV90uDpNfY2kqyCBtdF50iewxYA5I1C5AmnKhqqbnHkik0PAo/l6l7DkUjUz/gVoKqcGnbtZ0xaof+7XS0qlKt1Toxax5nn/92q+I2uxUt4IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772800544; c=relaxed/simple;
	bh=t+zhrRtHdxJ0egPar6qDHLUgu1o7nIbY/t2grbrBnTw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c5E+wUUieQD2UIzNIl/Jlovz/XzP6A4fNyIi8dmVat9ztfNGKKtqMOzOlzbsgc7XWE/Y4GBWuG1TtDjZB/2ATjM1z/mkW2txGtLinKieiCeNP08U+GQKLbMHjJVdrB7/cmKE+/z1teN6d8I2Wa3Z5dumMzLDd22IO7H+2RzG7eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-56a857578a8so3124265e0c.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:35:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772800542; x=1773405342;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=96m0o8Clxl4fOeYKH2P2MIwu6gx/EjFZuUHZ+Kn4U/g=;
        b=jDILYAdnRzJbJO6ld8rkXwVPC1MGB2Y9Gbp19Qo3ARsnCdZEV6Aw+0C1FKpkzbPiPc
         d9xfGIBMiWyn7qPtXVvhGNV5Y1lcKe2qJEvEy8WOW6EkJIoui0/w6eTPr/obKighDIT2
         rrLMUTACFPpGTWLvSuRlMgi484+Q2UGuckZ9nu+agjiInGK2cGakaIhpc2uqZXlO3onp
         qXisD8do9ESbez4MPjYVXTDd237f6rBZ5BwDh/HPZMeJwlkEREYry5NnAXFhVAn8RPvo
         wSxZvdHPVl4VqxoGqamktqzo+NPFtD96wXvdO2u3tmH4LklV+XFE5dgapewD3EGmudVn
         pvZw==
X-Forwarded-Encrypted: i=1; AJvYcCX+DxPhufZJvrEvFpTgKT6RstPQ2rRBsrsp42BHIm2fs3cY5kmTawzzbPtowCJ7saBxUGaYUDyB7QGs@vger.kernel.org
X-Gm-Message-State: AOJu0YwiLkntrVFLxv4wAVr9SF93pgvKynq8NhPIaBFKAO08OPRzjI5k
	lIdT3wyCfySl4bHuzM+cTTxCd83E45etI9CzGYr07RkkUsFhVDd6AXn4Mc209m1lQuA=
X-Gm-Gg: ATEYQzwk8Mz/4kSpvLhPc/I47XqomsEAkE0UlGsvmBr864EwIuM4nKK1Nl+dOy3E6SP
	DJS9DpOJSlfhaIpo/9YhtH/5bke3lzWDUHYuAgR2IsT0eQ5QtQPSZklJVpPPUjEYgxyMIQJax9a
	vgCPIvEPmGJ1GqrfN7G3yOJAeuyKAFF9W/owauwj+sp9tKs9HTMTFq81o2dTJ0yu0pdQN8FW7W1
	wdhcU/idx3y3VswqVDvOqxU+K5AfqmByJ5smlTDmpGWWmud1Dq7I+0lokyjsLv2m0XUYj7aCfnP
	umBI5h5RHFko77IloxGlFxqjCo8n3JsdZmqW77pENdiQV7yPsmL/5uRObHnb0J2K6a32bdFqZSV
	ooSQ248p2Ea4M4lI8kEyRQWulGNfIonRX8Jxm1Ub4WOOxWbWIpHX8asN95dDnocLBxyGV/ov0h0
	9gK/lghkJT/sEOxxGhI5/oZ77t+ROeiEVOwIVfUzuhGK5Or48zHaJEISBQUXgntK8OHXeVI3o=
X-Received: by 2002:a05:6122:1797:b0:55f:c318:1afa with SMTP id 71dfb90a1353d-56b07d247ffmr573472e0c.6.1772800542131;
        Fri, 06 Mar 2026 04:35:42 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94e7b520673sm1228237241.10.2026.03.06.04.35.40
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 04:35:40 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5ffbcfbcec4so782570137.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:35:40 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWWk0G7k/nGxL5wYTKVNr7MvZ4OL+zgj79toyU/A3STjSk6M0fpKne+hE0aIvdBurvsGZvyMWpHnIut@vger.kernel.org
X-Received: by 2002:a05:6102:2908:b0:5fd:ee19:8b30 with SMTP id
 ada2fe7eead31-5ffe632e0d7mr598649137.35.1772800540255; Fri, 06 Mar 2026
 04:35:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125192706.27099-1-ovidiu.panait.rb@renesas.com>
 <20260125192706.27099-2-ovidiu.panait.rb@renesas.com> <CAMuHMdWZKUjptQCqe_DK3C_g5d9Zhp3r3j6+dAfE1g==NH+ofw@mail.gmail.com>
In-Reply-To: <CAMuHMdWZKUjptQCqe_DK3C_g5d9Zhp3r3j6+dAfE1g==NH+ofw@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 6 Mar 2026 13:35:29 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXyo3hYbWYzdYUUzk=OQJzKn4Q4DdxXZi_0C2zH_goK3w@mail.gmail.com>
X-Gm-Features: AaiRm526yeK4Pkoal5L7g4NriLGd-kQ5uifyBQ0CVN8Qd9yNZfzNgOUcuHaBmPw
Message-ID: <CAMuHMdXyo3hYbWYzdYUUzk=OQJzKn4Q4DdxXZi_0C2zH_goK3w@mail.gmail.com>
Subject: Re: [PATCH 1/5] clk: renesas: r9a09g056: Fix ordering of module
 clocks array
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, alexandre.belloni@bootlin.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 9D2C2220E13
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,bootlin.com,kernel.org,gmail.com,baylibre.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-272064-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.939];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,glider.be:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux-m68k.org:email,renesas.com:email]
X-Rspamd-Action: no action

On Mon, 26 Jan 2026 at 16:27, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Sun, 25 Jan 2026 at 20:27, Ovidiu Panait
> <ovidiu.panait.rb@renesas.com> wrote:
> > The r9a09g056_mod_clks array is sorted by CPG_CLKON register number and
> > bit position. Move the RSPI 0/1/2 module clock entries to their correct
> > position to restore the array sort order.
> >
> > Fixes: 1f76689d1715 ("clk: renesas: r9a09g056: Add entries for RSCIs")
> > Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-clk for v6.21.

Promoting to renesas-clk-fixes for v7.0, as I have other fixes.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

