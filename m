Return-Path: <devicetree+bounces-275079-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cI5aBkvbs2mzbgAAu9opvQ
	(envelope-from <devicetree+bounces-275079-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:39:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5A3280A20
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:39:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2CEAF300D4EA
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BDD1375F98;
	Fri, 13 Mar 2026 09:39:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FE633ADAE
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773394755; cv=none; b=Dmm5Px0hbK6sqR+R7fgY5vMjQeRyBfO/tmy6qTJCynoW6pIjqphbfdHi2D9SKmrSOeLYpS47J8YeNgz2pF310t9Of6lNhCHEgGsWbWkhsu+BozBM5MxyjkvxTFubKmNLoBi0R51/gu9dIg/ms6RCpg121SahHsC3YSvDuzeE4N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773394755; c=relaxed/simple;
	bh=PL67avBPtYMTmKLtVbuj476ob0Oj2q3BQ12b2+YW3gA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lqbGkRSInp4l67tQLhHxdbQOGKGXoKNUZRlu6Q4xyhXsvCRR9IZ48MaozO9G/F55xFFRCBD1fnf31DMoEoumUkC5bsJ3G+qpWICUIiEfV3XPWioWJwOM9+1QUXju46+rTrww0R39n514apCRn9J24nsEdkOvB9tVjt5/g5+YX3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-56a9076813bso804951e0c.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:39:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773394753; x=1773999553;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kFDLymno3ShHwPEKQQsYPw63HdXuC5g9oISBtZGhCk=;
        b=ILcwnNtr2195TqEQlhR5hKfgKoYqHv9HWYFhLTQctE09CPkKshFCyZk0JBstIofqTU
         HT+oCCvGp+J0cg+vgq4DSlYrEiEA5MqfrZ40A+lP10awB+GQmsuKn8lAF9Sg/s7NG4H3
         c35XQGHmbE4MAdWCrsp+D/y3D44wMhrPPXWGp6xpKnXjiHFxJkKZZhtQhmTO0sAHrh3b
         A8fjc5uPUYOO1gHJz79snZ4YTqr0zm4MCN/6Jml/nhewNCr19c/w5V3yGVkBBr77iZrH
         Bs1wlMlHnEVT4+fn58JvMQCwwfeOgBcBabB1W+uYsAV1hMMcvfzDm2D4Aznbshiz2x6z
         8GVA==
X-Forwarded-Encrypted: i=1; AJvYcCUI1si6j8KFK3MLkMs5ofKWgBqw6+4LlhIi5BoqgFSG/P9ZisArLUpSEKcPu5KGb0Jo5umVFxpXQ/aG@vger.kernel.org
X-Gm-Message-State: AOJu0YyGtgBAj7ojr7kfnAnBIowVT5dQkwDGqAnqLoGzlq3QzzAfpEcY
	L6drROi9qzDjLZRtcxcztv7Ej2lQesOUyucd4eYUenfQKvjIqH8mWUgOiWIGwwHzUtE=
X-Gm-Gg: ATEYQzz+radAXjtwxPdzZTbo+MbUqVQVM6yE6hq/trVPZZLRLZ3dKrRFBdBmCgLCX4h
	PcF4j13pmYjPqhiyh/8l0DtcI9nwJf8PuzgVYHs3ejPkd3EwXmfbSBT/v4SwLcS5cMwu8j7VjNh
	zwGsbCFN2SKW1af0gz7rsJnUB8stmbIjoFbzD3URf7+WK8ltF0nDSMdXL20GJDjR3WZADfvLGdB
	wodoyEfpcdSqL+d3/w08ipd59Xwva/ZDbmwRT2v3Fr8802mYFM8zDNhyB7mXTb1caJVlKFLIXjt
	+WRansPLyL98dm4ShXqPJu8NHHWXi8q3bFaqxuqqKFW5I7/oHpQAaSZbQCvLiyjim61deP+csPq
	UCV75xdQXJ167JT+rK9jp5Qtb7CAUwVt7/QdEKvjkbA7wdPuZrK4SIYQOfxMlXtksmP+PdEbpWh
	yK2JZ4Nd+Xm1/4/wtnOWiyDdm0rydWsofgnHStGWto/8xXjlNUTtUB6TX/OKxY
X-Received: by 2002:a05:6122:2511:b0:567:4aec:a27c with SMTP id 71dfb90a1353d-56b62980636mr955784e0c.17.1773394752676;
        Fri, 13 Mar 2026 02:39:12 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56b4648dd38sm3637726e0c.14.2026.03.13.02.39.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 02:39:12 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5ffd57b6fc6so477262137.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:39:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWQ5feWRUxnhm3OLBhkc49XeXNf3TAPL8P6iIxpS5cynCIQN6e+IaOzDmv9IB2TeEajIrBhiugFfp77@vger.kernel.org
X-Received: by 2002:a05:6102:26d1:b0:5ff:cee8:6620 with SMTP id
 ada2fe7eead31-6020e20d4afmr1001751137.11.1773394751766; Fri, 13 Mar 2026
 02:39:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260212073819.41304-1-phucduc.bui@gmail.com> <20260224074532.60046-1-phucduc.bui@gmail.com>
In-Reply-To: <20260224074532.60046-1-phucduc.bui@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 13 Mar 2026 10:39:00 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXhDfFUnfOATQEWKY-kYxyR3QgmLoD8QFXGbsuLL8SzsA@mail.gmail.com>
X-Gm-Features: AaiRm52TLe172c21oV-Mw-rROyewWRa5GPG-BaaZAy05NtJZt9zNHx8--4wUlis
Message-ID: <CAMuHMdXhDfFUnfOATQEWKY-kYxyR3QgmLoD8QFXGbsuLL8SzsA@mail.gmail.com>
Subject: Re: [PATCH v2] arm: dts: renesas: r8a7740-armadillo800eva: Enable SDHI1
To: phucduc.bui@gmail.com
Cc: magnus.damm@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	krzk+dt@kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-275079-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 1D5A3280A20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 24 Feb 2026 at 08:45, <phucduc.bui@gmail.com> wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
>
> The Armadillo-800EVA board provides an SD card slot and an AWL13 SDIO
> interface connected to the SDHI1 controller. Routing between these two
> interfaces is controlled by a mechanical DIP switch and a set of
> multiplexers.
>
> This patch adds:
>
>   - A fixed 3.3V regulator for SDHI1 power, controlled by PORT16 (G2).
>   - SDHI1 pinmux groups for data, control, and card detection.
>   - A gpio-hog for PORT6 (J5) to control the SDHI1/AWLAN multiplexer.
>
> PORT176 (N21) is already configured as output-high in this DTS (via
> lcd0-mux-hog), routing the SDSLOT2_ENABLE signal to PORT6. Since the
> hardware includes an external 10k pull-up resistor (R94) on this line,
> PORT6 is configured as an input to allow the physical DIP switch to
> determine the routing without SoC interference.
>
> Both configurations have been verified:
>
>   - SD card (CON8): detected as mmcblk1, high-speed SDHC.
>   - SDIO (CON14): detected as mmc1, high-speed SDIO.
>
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

> Note: While a specific driver for the AWL13 SDIO module may not be
> present in the current mainline kernel, the SDHI1 host successfully
> detects it as a high-speed SDIO device, confirming the hardware
> description is correct.

With SW1.5 OFF, the AWL13 SDIO module is detected as a high-speed SDIO device.
With SW1.5 ON, SD slot 2 works with SD cards (incl. card detect).

Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

