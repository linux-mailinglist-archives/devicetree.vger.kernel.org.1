Return-Path: <devicetree+bounces-259562-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDUEGHmOd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259562-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:55:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BA18D8A5DE
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:55:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F4B33035A94
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:55:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C99340A72;
	Mon, 26 Jan 2026 15:55:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE86341041
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 15:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769442907; cv=none; b=UD6bFvp7PAuGvnh9gpYOAO8x2g3ElYsPmnx8quU7+SES6fkHA3nI/fXHkv9CUAoiwCQUSP9rGKY6WQoWk7oh6eFIfySw28v9jkWFg/TFYPZxBiw/7DCY1pSa2yk1HdD2hxlyFsJSzYFo/L3LF+APG7VOxaaO7oJ4ove0GBXoseA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769442907; c=relaxed/simple;
	bh=1XOij24fFL3jCp8FgItwLjml+TZ1bGZsb0l3e5RoGWk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H1CaOCwmfWIW5aMM8qPIKu3IpRa8+ZShcD1zvNH41wgUD2/q6NJC33J22acWnXEY4R/DEgV50Oq3F3NkIYReSNUXhkZiwjVa24CoG6pEqz52yu9YlV4kRGRi2eZ4q3oviELRoUeLCBCo71gDRKG9vjeFraBqN84RnY9OQq/+2tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-56376c3e866so4478062e0c.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:55:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769442906; x=1770047706;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GfmszpDLcKM3me+QqaBglak1H7HW82219TFin6bK4Mc=;
        b=BdQMNR+/Bm7kbEFLwc3b14FPthsavPhQZdsBN2CjVGQIMhR5uDd7X7frMz2Tq/Aice
         2BCPXFxC3s6zm6dnQjPQsCtdhzLN3hf+70J1OxqNuivmREKXAcknhSQzLfomTfEZLS55
         CgDiL+x1zJ6m32J9Rw2+0krRGtZEBsJ56m5OGs3LLuBIbNPhq6U7Wz58BU/FEmZ/V86q
         hlf17dw4Z6eTbNHtTy5upwMV4r21LJN3sdlV81nPZZBX4XMllv3d0OSqTJay9sH3Uc8e
         i9TvaTfmmozjbHYza5K1InqqJVcjjC1Nw0xPCx7OFgGCC3U7WG651kdPoQInZHrAHNgp
         YToQ==
X-Forwarded-Encrypted: i=1; AJvYcCUI10NrLgOp2ZKnO8JJ83yHpkUaV1a7MA0INRfJ/c7bUS0qht97NSBhIpCJXGuhwnzKMf2sia/Kd/j7@vger.kernel.org
X-Gm-Message-State: AOJu0YwFCOWtTT0lzUP1QieJYOObaEROoRkTrvtdIuJpzIQvD1oyvwW6
	gnjnMCKLrOY5TD/Cl8DYaf3vQlglKxcYmBPz0jfCbF+jRhTtcbkpm1i2wY58KBY+
X-Gm-Gg: AZuq6aJ1CVd3qryso8TTUs7hNV1R+bl6pxtozWf2bDiktpBGPSVle06SmlXa/srqOYc
	4nk5m2cXOXrCWMljkzLfjlkyv6BpWWRqpvAyysC74l2zQgnosZLVyPnYLTdQSxJ2x09tvGR8Snj
	fJC6T/4S+npoFjIwVM37RzilsjQJVrHjFO+J7//SKx5gMQKHgwiystaSmDGGYl2pLz6Ken/bewj
	NSQRunAHXX8vxQkpBRkPRyjEEGada3BhnfqEPY9FLFgekDGScMpHKBERaj3UhlS/4p2adqnoNOq
	Q7229mLWxtQ9pfUJ/Nuy1XH6b80Lv+wN/pWYlN19NT7rYrO7NHjIX7DRwNbp1WsrQnXXAbBnt07
	qiaf/Wu9Xx649IS1K/Jj81h57pJzxFUbGqvyLJgBZ6bkI4Pp1BsjoxAUFw4BGL/lCLommfuSH4r
	LC0iZQOJAq3Z50mT0YfBQqEXPJ6zGU/3z0j+AG+BiCQcd8PY2nIKqi
X-Received: by 2002:a05:6122:a04:b0:566:221a:ac27 with SMTP id 71dfb90a1353d-5665ca1ff10mr1692892e0c.21.1769442905519;
        Mon, 26 Jan 2026 07:55:05 -0800 (PST)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fa6333esm1781032e0c.5.2026.01.26.07.55.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 07:55:04 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-56376c3e866so4477994e0c.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:55:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVpkHiRYPbdX6c6o7jvcBN4f7DYDNSSBpXJ8hXJr0aoyn2LnRHKKTIxwWixIqvGPyv7FDnuhOF4D1mz@vger.kernel.org
X-Received: by 2002:a05:6102:cc8:b0:5f5:256d:c0cd with SMTP id
 ada2fe7eead31-5f5764c0342mr1772360137.34.1769442902454; Mon, 26 Jan 2026
 07:55:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125192706.27099-1-ovidiu.panait.rb@renesas.com> <20260125192706.27099-3-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20260125192706.27099-3-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jan 2026 16:54:49 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUCiAxhrxFnj4w3=hmMKXVggaqsbswBcCNLUaMnue0Dag@mail.gmail.com>
X-Gm-Features: AZwV_Qhbv0qDo3qYKrsna5xVdUyAWWjt9-sxoW2iEe0kNcXEgj8fU6MWgw8rCcA
Message-ID: <CAMuHMdUCiAxhrxFnj4w3=hmMKXVggaqsbswBcCNLUaMnue0Dag@mail.gmail.com>
Subject: Re: [PATCH 2/5] clk: renesas: r9a09g056: Add clock and reset entries
 for RTC
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, alexandre.belloni@bootlin.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, mturquette@baylibre.com, sboyd@kernel.org, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, linux-rtc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,bootlin.com,kernel.org,gmail.com,baylibre.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-259562-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,renesas.com:email,linux-m68k.org:email]
X-Rspamd-Queue-Id: BA18D8A5DE
X-Rspamd-Action: no action

On Sun, 25 Jan 2026 at 20:27, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> Add module clock and reset entries for the RTC module on the Renesas RZ/V2N
> (R9A09G056) SoC.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.21.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

