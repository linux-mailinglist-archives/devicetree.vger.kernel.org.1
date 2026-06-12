Return-Path: <devicetree+bounces-310837-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w5YxDB/RK2ptFgQAu9opvQ
	(envelope-from <devicetree+bounces-310837-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:27:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EC6678421
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:27:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310837-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310837-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 12CEB301910F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1769737F73E;
	Fri, 12 Jun 2026 09:27:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D129D318ECD
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 09:27:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781256474; cv=none; b=Mvqg7zFA8iKhuJHNUbolGEkGgEbdp3+RNSZXw22fHfzRu5rp++VIBqNstJO4j5CwYPl/kVzxlzpvssMCYSFNmbZi//LbZ75A7Viz7wCi/Gsijui6sOlkac/jBIdgRa3iysWL9X7bExGMrgZyeORS66us8A5X/l7FIivMrpQSfNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781256474; c=relaxed/simple;
	bh=rw8Tvs+tqVHlE1yz/4QqXObm6oY6UdP3I1/O30mTwAI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WpQon+Fs2cbgNG6CVxOF5l6iWsoUWHiPk8Zhe58QTMt7iQGQOAzUWW3d8nEDkdoXTSIAqfoATbiTLa44vjXTABLmxPHifXbUQSS8pD7k+e0+n5SInQcMijimSJMSr9Nw68WJGE2CnVxfaBFbrTed13A5L0cKvhdASZzOC682eGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.46
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-963d7e5ffddso505504241.2
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 02:27:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781256472; x=1781861272;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iSZwYOeTmzPIFgGHYKIxzTEqMNY8O4D81LGf3X98Xhg=;
        b=VwCt5t3LK6wU/3qOOq2nFk/4ESaxZbJVEik/7NJiJ4+1okQe6yu/ZY+Lo9C0inxwHQ
         zLqJ+qFyZJPH6TlH34lo+pblPRWmmYbt/cISwr23nJM4bYKFqoLxkDwITsXO3ARwh23R
         McENtKg7iEFcAKDBdHePYIZi7BES5SeY0AIBjd9UyhDN1iaUtlfiDugXy0Mx+oVR5gfZ
         4o8FINQBpiX56UaYLaW9uc2eCHRvplsoxYTdYzBKxUYtQJQRaCCGLBSedCBXPw3ndq+E
         wXNXNMP3hqXUX0wk28O8N6ILVvJjbyc0QAmio1tlw90KK346C2GyGFscGL8Ihm4CfwNb
         WJ5w==
X-Forwarded-Encrypted: i=1; AFNElJ/zoh95+hJ5Rv4jh+9gDobwWbrF63tFzRpmZFTsIp/a74B1n+Jvu2QvypWJzxbnxlPbQqh8drq2d0RU@vger.kernel.org
X-Gm-Message-State: AOJu0YxDSZqeypjMNb33DZ3vNuwP1q6MefYxgTEvfamHJhL5VX2qqtOs
	z923eBoitA+/fVwklgHuvuReeH+ViObaUh+FTiHl3YtvUoGL7Jg9i4CJs79Bz2hE
X-Gm-Gg: Acq92OHCaPZX67g3W6a6aEpo9JkEeAP3L3mCw0dpcA8O188vLzBBmoun255xWqcfw3j
	bJ63FDW5/7SWrXq5UBXlEK7nRZk5J1EZ9a3PKW/KgzTaEs1IQ2I3mJPZCiP85dFoTnxqNcN/w7W
	KTp74m31iZOg1J5KJBnPiv6Fwws5UKmcOTZVfkLcqKtT3Zh2wwjoSgHLcIg+JLIWsRoKv7PJeM7
	hcVWt2VNrwZz7ugWKwu2rpAJbPQyI8h4Vgm7PL6KqbYSGf95cAG1bM2JLu5Fb5tLKDJfB671MLB
	t5VVZkfBR9Ne0Q/bA8Mp2f8uN4LVkXlxUeTPvyQcNnVkkRSJVbO1vNIB8+tFGqFnWtAJy26JvBw
	En5+OzNWh57iEELV5XIVlizMrD0UGQJTIuUt3hT36r0t/LBHhu4hn2+DS1kAsUm4hWfBWVWg3n+
	DQ4bDr96NOk7I3tmJ0GE0tCVs+KKAyKL4n4Sx5+YG5GyfmAWVXVAruCXWOUlm3
X-Received: by 2002:a05:6102:3582:b0:62f:2d6f:cc11 with SMTP id ada2fe7eead31-71e88ad70f7mr1011682137.2.1781256471805;
        Fri, 12 Jun 2026 02:27:51 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-96673e7ccfbsm977620241.6.2026.06.12.02.27.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2026 02:27:50 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-6c28e1511adso424869137.0
        for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 02:27:50 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+GReUGTUIvEZT6FNe+4x8HatM5ULfVO4VHQnsqjv7h3Qpku7G3K4mAWF4bzGNIaSYyVC4JqoKp1Csu@vger.kernel.org
X-Received: by 2002:a05:6102:1626:b0:610:1c78:9531 with SMTP id
 ada2fe7eead31-71e88dcdcc8mr852032137.24.1781256470532; Fri, 12 Jun 2026
 02:27:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260609113836.45079-1-phucduc.bui@gmail.com> <20260609113836.45079-3-phucduc.bui@gmail.com>
In-Reply-To: <20260609113836.45079-3-phucduc.bui@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 12 Jun 2026 11:27:39 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXku0BVRgwWWv1vNccKpRbvTu+1b0TjYacNJH94XBDOGg@mail.gmail.com>
X-Gm-Features: AVVi8CfaZvz-9jhnktf26BGxmAFl5Vd7m2Fjtdz0B71l3uBx6X_lEfTe-t2LChA
Message-ID: <CAMuHMdXku0BVRgwWWv1vNccKpRbvTu+1b0TjYacNJH94XBDOGg@mail.gmail.com>
Subject: Re: [PATCH v6 02/11] ARM: dts: renesas: r8a7740: Add clocks for FSI
To: phucduc.bui@gmail.com
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	linux-sound@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-310837-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:kuninori.morimoto.gx@renesas.com,m:broonie@kernel.org,m:lgirdwood@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:perex@perex.cz,m:tiwai@suse.com,m:linux-sound@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:phucducbui@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[renesas.com,kernel.org,gmail.com,perex.cz,suse.com,vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C1EC6678421

Hi Phuc,

On Tue, 9 Jun 2026 at 13:39, <phucduc.bui@gmail.com> wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
>
> Add the SPU bus clock, icka/b functional clocks, and xcka/b external
> clock inputs to the FSI device node.
> This prepares for subsequent driver changes that explicitly manage the
> SPU clock required for FSI register access on the r8a7740.
>
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.3.

I have one more general question.
arch/arm/boot/dts/renesas/r8a7740-armadillo800eva.dts configures
audio for FSI (fsia_pins), but does not fill in a clock-frequency
in fsiack_clk.  Instead, it fills in 12.288 MHz in fsibck_clk, while
the schematics call it FSIACK.
Apparently the FSIACK pin is shared with FSIBCK on R-Mobile A1, so
which function is used depends on pin control.  However, the DTS does
not perform any pin configuration for this pin?

Note that I have never tried audio on Armadillo myself.

Thanks!

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

