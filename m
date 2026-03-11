Return-Path: <devicetree+bounces-274154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mArpGRd+sWmjCwAAu9opvQ
	(envelope-from <devicetree+bounces-274154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:37:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB40A265840
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:37:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A10EA30D20D9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 467583B9D93;
	Wed, 11 Mar 2026 14:34:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFD63C3427
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773239688; cv=none; b=bweFYlfZVSNdUvlN3dVGexiHjPmrzbqsHjLqdHGqAaVf/Z5ETdbe3R/FVHeIxO3kRSQnX74HleDL/NH19Wgu3aZ+Iuq3OQ7hmwaPSc0iQOLwO/Zq6v8M7ddaLUritVcnQsLmZzoTt6asuS/l8VlVmko7x5O8Qscq6LRPc1uiVo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773239688; c=relaxed/simple;
	bh=h0DZuW9sYYcJamuzoLXZHLvqI13ncnNrtDS51eDhLzM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RCaCCbV9zP0ilvToI0TqjSLKU49SWWf/wj58/QJhUm/RHHb68tWwWDkNsB5wxi+sWI/aH8KYTA7g6mkJa2Q/3dHn6Hf5NBaN0p3WZh0Eg4UenMW/Fdgp4ehtNGhxZCjOSanJ0QYvwqYrSbd83bKOLAMRM2b0flETbiS4Ph4KRhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-56b49b943c1so277591e0c.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:34:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773239686; x=1773844486;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6/8nBsnGoOuvPOKFHrGieQ7jCFEIsrq8dvQknaSfKDE=;
        b=CID3c6D2kw2OcvgrTHnoCweVl2uyCywHUEQzYJV6n9KCk0tMJHfsOffHE4PJ+XjQDB
         gnrgfqv9ydIIfEmeiTKi7Jd77oEcmObVpWWHjjBzrG+lc5Wpq5+bs7V0L8A+9To6RD0m
         ALDPc3KOgYdsSfjRpKtbHwLFfZYTF/n7Bg6vypOmn6hZr6Tlf4iff7CoeK6wvlokDAqp
         S8mY23SqSM+1P29bNJf5MnrSglaTxS4StKq5o+SqZuuX8PVc8u/NHm/AMt+CMXnTcX6R
         vLdr/HEoAbFQ5WjzCYUlcLtK/dDF01+/7o6ZcpqK4t6aFCQjtgiPTl2dWHDPA62WANnw
         kxUg==
X-Forwarded-Encrypted: i=1; AJvYcCUaydjKrNauTPI1m9Z2+KFvDIt03e4VmpgY2QFdycl0wccZ/fxMwGZbKmBKRw6WiT10EYWEY/RUwEzz@vger.kernel.org
X-Gm-Message-State: AOJu0YzUjsfRWwKYWBqG+hmdkqPne7MN/eXDyUKs7KSEu8DDIkWN41F4
	H7gEfLfYfz2ZdF7EpNkx5hvgm4BPznktpBymk/YIUVcPkBGLRepkOITQHxYLB5JsuEo=
X-Gm-Gg: ATEYQzygSpJ4/iSBb0I2sZie+gopJ1ZvbyPg5mTYV0cYc+E5CrRKjyodX+S9xuz6InX
	/VrPL8CFS5BCS803ZDM3jgbFaBCvmEi5trv1vzH+mDzhQ1IcuVpLaA5nkTt9OTiZLUiWGVVLNtS
	4t+r+JormkNrMDtmx8mG/LuDRCVrNaxOaREx09Gs+AL2gUPOC4PjFMg+eFvwRZsTUzLVoOPUoqP
	tzwJbebDo4748VOO9Y2YTZTjfy6buvQksXtw2wv/uMmxL+FN79LD6rRqvbbPaI/r3Qpay7MIOqX
	TEcHCGxJz9/hZ8TiOpUPYq4t/nFQgQR1F3wYzG11O2yHkSXGCSre5WWbWCEKXKeqEj78Vft6CDj
	4rUagyRPTISqzfF5WK3a8wKkj5TvaOFx2BLtlOHDAKjyaC/RLwjMnem+vwaDFOw4Qtrzb5iMJdh
	zmqmLeGFNINW6CVfR9c9k+jmyEGPfdkcz+PqNM6kueV2+7DpgJ+lVZMlTGgWmz4o18
X-Received: by 2002:a05:6122:c96:b0:567:39dc:43fd with SMTP id 71dfb90a1353d-56b4769eb0fmr857633e0c.19.1773239685568;
        Wed, 11 Mar 2026 07:34:45 -0700 (PDT)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56b463510a5sm1014295e0c.8.2026.03.11.07.34.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 07:34:45 -0700 (PDT)
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-56af41d1e0bso2857118e0c.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:34:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXLTiseGJ55k1MtORtnJ8xoMQEZSX16CavJhApwkcye/awnc3nmS9yEHmy5W0XvF/3iR/mjRE8J7GBH@vger.kernel.org
X-Received: by 2002:a05:6122:1dac:b0:566:36e7:8934 with SMTP id
 71dfb90a1353d-56b476770ebmr874061e0c.16.1773239684796; Wed, 11 Mar 2026
 07:34:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260305221939.32643-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20260305221939.32643-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 15:34:33 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVFsxsJW46Xb6BSXztAAvXqBgbD6N7A7jL_Xc-FEBCnVQ@mail.gmail.com>
X-Gm-Features: AaiRm51mmgYpVi1_pO89qn1P3q9K9zLqFKfY7oYAMzssuYebMabvxkW732abDY8
Message-ID: <CAMuHMdVFsxsJW46Xb6BSXztAAvXqBgbD6N7A7jL_Xc-FEBCnVQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: renesas: r9a06g032-rzn1d400-db: use
 interrupt for Micrel PHYs
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,bootlin.com,glider.be,gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-274154-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sang-engineering.com:email,bootlin.com:email]
X-Rspamd-Queue-Id: BB40A265840
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Wolfram,

On Thu, 5 Mar 2026 at 23:19, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Make use of the interrupts wired to the Micrel PHYs via the GPIO IRQ
> mux.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Herve Codina <herve.codina@bootlin.com>

Thanks for your patch!

> --- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
> +++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
> @@ -256,6 +268,13 @@ pins_cpld: pins-cpld {
>                          <RZN1_PINMUX(122, RZN1_FUNC_USB)>;
>         };
>
> +       pins_gpio2: pins-gpio2 {

Please move this below, to preserve sort order (alphabetical,
and ignoring underscores that will be removed soon).

> +               pinmux = <RZN1_PINMUX(147, RZN1_FUNC_GPIO)>,
> +                        <RZN1_PINMUX(149, RZN1_FUNC_GPIO)>;
> +               drive-strength = <6>;
> +               bias-disable;

Shouldn't this be bias-pull-up, given the pull-up resistors R20 and
R78 on the interrupt lines are marked "not assembled" in the schematics?


> +       };
> +
>         pins_eth3: pins_eth3 {
>                 pinmux = <RZN1_PINMUX(36, RZN1_FUNC_CLK_ETH_MII_RGMII_RMII)>,
>                          <RZN1_PINMUX(37, RZN1_FUNC_CLK_ETH_MII_RGMII_RMII)>,

The rest LGTM, so with the above clarified:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

