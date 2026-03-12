Return-Path: <devicetree+bounces-274518-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGkRAMeRsml5NgAAu9opvQ
	(envelope-from <devicetree+bounces-274518-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:13:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5E42702DC
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:13:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A5B563019CB5
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 10:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9D7F3AC0DB;
	Thu, 12 Mar 2026 10:13:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABFB63B7761
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 10:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773310393; cv=none; b=IQLG9+1a0cwgqO2hrR09oqPVYkaruOMjdFBOH4Ni+7OIvOWgqKnEdM6gikNh3DmXsQZy6yJ8gnqc+E3tHtlrjleq9Ud9AvFGFINjzPWQ0U4iNZ9hnEbjOLgFsTdE7XDv4yhTEKizALDYfLvWzug+OFsL4033rU6FtKGkiCdAd4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773310393; c=relaxed/simple;
	bh=anBT9rHzajcp5J37Vaca7h+6VrrR9T6D0lZFYoavTjs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p8IETrWUYXVWGj2wjv38+J9TSgnu+kh8RgMae8/gYAz0GLHrCYXMXrKPlBLWwitZNZzy34jMOA95rgj4TgiCkk2POypXNyUUt2GaSB734/1MtrWYbOz+1xwEAhqFKZzCsQtvxrk/t4YspnL3b848TkaBIUaCS05+VqF8FedN2IM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-56adf76631cso308299e0c.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:13:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773310388; x=1773915188;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mRUIGhDHBmpDT5lNoF1B+T5NZ6zsaWhp+bjML87d5C0=;
        b=JF/hNxWhzg3KOS1ECdLJdG6jE2Rjmysqv8eTQauN4HK1wPXXj5WOI6LU7EYyuyzeGt
         ZgVLCtUuKoLWheXkx6usq5j/AtNpP0YpnnjnkJB8VLg4MHwtibdhriIQDfpMMahHWaeI
         uqNlWW1beqyNVbjhtJDgqEBqijM8nRA3pAxZdUWuOg3Z+NKRWxgeLpl34dMgyr2+fDEP
         b8lCUtcaJ3RW/3liB+bTHndlL39RcfpwsfSXji5kMf57yBPwYfvuMmtqZ6Xi131BOfMY
         zbAqNFzUeOS67DdpmNDv6SjMNiQmoN3i56uSBXwG5F5DXWmG6QfOH3adymhTXz/ykM9l
         VsOg==
X-Forwarded-Encrypted: i=1; AJvYcCVT/vTOH/F6bCHq8uWhpkLNNULNsrTKroZtp2+JRTzouPiz7N3Q3JPr+ulrsHpQmyr8oLZRSyyTzpTe@vger.kernel.org
X-Gm-Message-State: AOJu0YzBYkESrB1HXtlSIajwgW5ukgbMxC+c+8R3Kti33Mg2BIm6kt29
	YJOQfLykISOvCFORmCcLXquLHSs3nC1KZY5bCFt7gfQssLVo3hJX00AJ+XJYuRx5DXM=
X-Gm-Gg: ATEYQzzzNc6Ws5e1VKw0OX9+SXZS7MhXpgp1Ai6fakfKSG0PN0VeCKonmujbFBSVzMI
	R1e0/ev5YUh9nD+fXk27cZnlsEpACaLkG0aWep3pBqRJkKDTTj7QnAqQ38DdfdAFWLdYYdQUiky
	awF/G1xlYAK/QUZBh3KdzMDp2LovMMW/dzC4vV9/b/3VB4OjT1UwYDKnHD8QSmHkuKR7RR5USy3
	9NLlSnLNQI+Tg0x3zZUmPEliLfO97ZzKCq29SWJS9p+4G7a1bJ2WlxWZPcf8ae4gFos15Okqsmn
	XyLzSF/ozSVC1X3oIvSsaGImUgBAY7F6UrU4fsjtxcq2mpUAcCIhdcPmhEO1oRH87mn7d3zUy6f
	pDYHX3BvYOHweeXsuGn5vAmb75N/USXtxb++NTwhClO9dbAMD4RrZv68NEmoCyM+jAzMmm2/6LO
	DggxSv7lC+MXtodWYXUq5LGw5ZmQeE3NwOCNpmLEIy0uYcoYYOYIsLrBcKXFuVuC9z
X-Received: by 2002:a05:6102:3e8c:b0:5fd:f14d:4cd6 with SMTP id ada2fe7eead31-601def7d301mr2006104137.27.1773310388294;
        Thu, 12 Mar 2026 03:13:08 -0700 (PDT)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-601de74a80asm1781345137.6.2026.03.12.03.13.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 03:13:08 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-56adf76631cso308294e0c.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:13:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUy28eZgZvgSNtN/ygQ7thmG0FJTdBCdSfffYQswo5zhFQyPjYi6HuN0mohdQAv9COW/2xxVMHwLzcp@vger.kernel.org
X-Received: by 2002:a05:6102:6c8:b0:5fd:f509:c97 with SMTP id
 ada2fe7eead31-601ded4f6bcmr1922271137.18.1773310387815; Thu, 12 Mar 2026
 03:13:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311200307.16034-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20260311200307.16034-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 12 Mar 2026 11:12:55 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVT9WoXN=9SCXr-rBoTn8tG8uQptuVEkA2Bnamaky6wJw@mail.gmail.com>
X-Gm-Features: AaiRm50l5HVFmnjSkJzKh_VBVP91gGl5Lzdoyu5m4T1kcOaEkTPJSpDpnqS3aEo
Message-ID: <CAMuHMdVT9WoXN=9SCXr-rBoTn8tG8uQptuVEkA2Bnamaky6wJw@mail.gmail.com>
Subject: Re: [PATCH v3] ARM: dts: renesas: r9a06g032-rzn1d400-db: use
 interrupt for Micrel PHYs
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,bootlin.com,gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-274518-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email,bootlin.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linux-m68k.org:email,mail.gmail.com:mid,sang-engineering.com:email]
X-Rspamd-Queue-Id: 9C5E42702DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 11 Mar 2026 at 21:03, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Make use of the interrupts wired to the Micrel PHYs via the GPIO IRQ
> mux.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Herve Codina <herve.codina@bootlin.com>
> ---
> Changes since v2:
>
> * use pull-up bias (much better now)
> * keep pinmux sorting correct

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

