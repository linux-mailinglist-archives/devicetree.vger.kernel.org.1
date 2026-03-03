Return-Path: <devicetree+bounces-270527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDPWNB7npmnjZAAAu9opvQ
	(envelope-from <devicetree+bounces-270527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:50:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B7C1F0B89
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:50:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BF1E73048AB2
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52A9E322C99;
	Tue,  3 Mar 2026 13:45:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44DD27FD76
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772545534; cv=none; b=lKnl6Vo1GkYJcuwsXpwrOPSGvBq3RnzeRzglHuqOj68KZ3Yt3XkTJlRfzQPB4iZ3Mdh8YmpudBtjvV3ycr8BNNski44O+9u7OvzRptnJAm89Wx8ZLk681sE5Bm9mE9gAACCRBsYGoSczy2pkNe9SvrcFRaXvP2v9864RRB/w/Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772545534; c=relaxed/simple;
	bh=SNR2xpDpa8W7QuRujmnxUoyX2RpkimCf5xkJXD338gI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sL8KjWR2/K5evU6lf4lc2llIt6KIGx8AuH2+v100LrrZDpAYVnWaSiOM6wFf2n+G/h3hsC8ppp+YvIq2fHDBzJebrnoJvMdOtlYpDwwvRJsu5JtadmAYCQW+O1HWynkC09DBUxZkpmKgYAASXORivmr7+eyWlUMnsNxuTSHJdhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5ff14dd9be4so4041838137.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:45:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772545532; x=1773150332;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mkmGwXveHkztkZyIBSY0oYR0tIf3nTxHZrajuRtCfLY=;
        b=vppX30EM04PA05FNwm94bSb2il0cYWThg3r7Ctd4my8lZmBJv6sC0VvaU7BbTnt9XQ
         7eSjdBpG+avJGsUxqRrRLkYCyGPll9IutuonrYw7itgINZ2EoB1VfSmicp6y89BOPidI
         3kivpRrvJlnmJgm8PwR9xbofpbJL3lg9OVXLjgRWGulY+21uVNIHePvkVQegEN+xDPqP
         l0SxwjBFkKXqaTJtbNcPAjpD+pMidQEm9tIQo5tXv7uV5usPakvg7RK1c9Rz8cHvOBJW
         Boa/vaKdsSHoSSJBYsleKLoxwrukxnuhh502Ft3nkjwL1llJoDbK6lDjfgkWNju1MYnC
         4e5w==
X-Forwarded-Encrypted: i=1; AJvYcCUAcXiQRtiLWcPjNRH0vYiKO8idRha9V81uvvHIRf0eazZZSYarsX2WF2P6n6y9zYaT1Tcjikb6e7MR@vger.kernel.org
X-Gm-Message-State: AOJu0YzeR1sz4KCMSQjCSEx+Bxpjw/iP0MFV8F8sEfbzQgIOYGc6j3vL
	tdFZT8ylWnz7ndED1wWuKNAUZMsGtf5RHUE6mpaSIhCHc28upmuK29R7pDR1Qtt2
X-Gm-Gg: ATEYQzxXHZW7a5opNpJCh089Z1jFRbg+YR3przWvSIXh3eQPbUNnIvum0SPv4f4uq3g
	Y0Q4pUxZ5LcJPqojN9MGosmKxug1+N3YArFPY6r0gCArgmo8arHEUz/nRr7GGnOLSAN2ytpyL6s
	nzehjFhFbUADfKGxaUAAend4R7sTgzjIrrA2waL7K7dv+Z8LoBWD4GGRKNdqeZXZ/XvashIrFEC
	5XRsG/KsRj7U6Zl0rPtsaI8TflkLzVx3VVaegiD/hT9TT/mMfU26FT/PBoYEvxflQNjiLCEp0oN
	d2m5YTwLy5wZkvtysGGqx4sP+y7xbc/hWoMLTj1dBzI/AI2Sut/63ugMRw2Rj0p6GEG0kphJhaf
	l6ttfUSpaWirwQtA+sTuzA+jzc4Xn+w7iXfmZSmnd2a1QmKuTXCz+46CLwpYv5cCtwwop8EdXEl
	PB3tquUQHmGNoGD9fr3sot/Y+NplcjJIMS0Id2OvBXuHWKTPvsCYLdyXYWOEz2AnH+
X-Received: by 2002:a05:6102:4422:b0:5f5:3c00:180f with SMTP id ada2fe7eead31-5ff322cab47mr7899031137.4.1772545531825;
        Tue, 03 Mar 2026 05:45:31 -0800 (PST)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com. [209.85.221.172])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e808164sm16811019137.4.2026.03.03.05.45.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 05:45:31 -0800 (PST)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-56a9402b52fso4854136e0c.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:45:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWuBZZ2Sw7/se/fUBtguIefaXU9BXi5/ssx6WIFW+AeURqA7oVpi2m0aPoR8S1utIZsVYYkaSHfiEIt@vger.kernel.org
X-Received: by 2002:a05:6102:c47:b0:5f5:487c:83d2 with SMTP id
 ada2fe7eead31-5ff325d53c9mr7848373137.38.1772545530401; Tue, 03 Mar 2026
 05:45:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260213131742.3606334-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260213131742.3606334-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260213131742.3606334-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 14:45:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVxz_PywgAAJk-ogGtQSxokw0=Rdd6QRU9kuFm5ZfdkpA@mail.gmail.com>
X-Gm-Features: AaiRm530N02eB2qKZhtE3cDoZ7vWzVsvl_vuwpysdaQWZ03UidaUkNSht_tuOvM
Message-ID: <CAMuHMdVxz_PywgAAJk-ogGtQSxokw0=Rdd6QRU9kuFm5ZfdkpA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r9a09g087: Fix CPG register
 region sizes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: D4B7C1F0B89
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-270527-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_SPAM(0.00)[0.506];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,linux-m68k.org:email,glider.be:email,renesas.com:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Fri, 13 Feb 2026 at 14:18, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> The CPG register regions were incorrectly sized. Update them to match
> the actual hardware specification:
> - First region (0x80280000): 0x1000 -> 0x10000 (64KB)
> - Second region (0x81280000): 0x9000 -> 0x10000 (64KB)
>
> Fixes: 4b3d31f0b81fe ("arm64: dts: renesas: Add initial SoC DTSI for the RZ/N2H SoC")
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-fixes for v7.0.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

