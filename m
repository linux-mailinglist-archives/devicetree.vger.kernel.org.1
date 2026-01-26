Return-Path: <devicetree+bounces-259567-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GKUMN6Qd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259567-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:05:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 660FC8A77A
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 17:05:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C59B230058CD
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C75A02BF015;
	Mon, 26 Jan 2026 16:05:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F91029E0F6
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 16:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769443548; cv=none; b=Vw1+ysck/cM4Mn1ty55A3fdPq+XQGcvVhK/tdMS4uNlBldOszsFj5nLS+s019GS2sQoArvicmvEF6Mu9JePqBva1OO6QBrVWIlEqEhqpH0qetZaakLJS7p5SAvfcMtfMvxi56Zh7Vf1yMjEm22hk01eniuAU9U7m//t422GuL30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769443548; c=relaxed/simple;
	bh=bXHAel1NwLDuPGwtU7+OMOyzgPqVLj6MKMo+sEVl6lY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bE1PhUdpdQ833MVzSpkhEqVMYkjCbj7vq+KSChjkIgstET1xDPZw34NufKRsDUJ1q8vcBW6/b7f3vdFsCVI4hWCFYA/T66Gw4hSNPVld2LM8q9Ga3SMlsTWa9W+zoo+PGdsqxHI1GE6vhhmP+ewa+BzB0lPGzIMpb/yCRfCJHfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-559f4801609so2111495e0c.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:05:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769443546; x=1770048346;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QWlsYApapvL5A9IWANUoDMRFQZN+NsL2oKDWoPXwI+E=;
        b=Q5FukP7F7PMgz4ChkWVreWGVb9jf5c6mfgKQekmtdzFwYVr7MX/ZWzcTzdAR0POF2C
         bEysbdwTXXCxOyP9swaGG4Jj8Q1CoPAuz0KFaFQGexVxATVQSVqUhJ8CYjLQsaVfZ2wC
         tYRGEf6T1BHPlGGXy6uZ8Q0gGcL88uxNg8TOmM2lFd3d/brW3PfKn+EccFLx1kkYKL4B
         FB0uRV1C4k0QbL+athUN62U6svjxSUzEddB5tWhBXcCnyX5Yv5lRhwTnhSYzLsHcuX+m
         WZbK3XfCnKQAQKEWH6NvVCmFWXjH/FyNRrRfyZTSudRvhKm+xEekU5JBy584vTDcDAe0
         0EzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKdCVxi89SimRQtrgDMzd05c0UGSXme+KHBb+F4QQaSdcbbv4ggzbhZMz+6TRmFTZEOr9bb/DP/d1L@vger.kernel.org
X-Gm-Message-State: AOJu0YwGIT1A+JCYb+Byd05nsdZETUZCP/f5qvYCCI6KxyW5R2N+SFTO
	EKN1SFCJkit4i8AEHS+MDIUSEPGItng64XcqbAG+i0h+XtQ0y1tVBFuBZCLkJndv
X-Gm-Gg: AZuq6aINSZAev1F1Du4cZpuRsRuOM8SqhI4Rcn5KWmHp+vAItnZz9JwXIKf0d4USUWx
	/L8l2XOhb4kHwSO48lX+O4gERI63Z1t/CFhdr8sF0DfGTMHLZQLat+06/NKYNHxppfu0tXNzEte
	xkCMMM3ODYaVYR1Ki7Rko8ognE+PHPsIT6ICHAA+lM0XuA5gyOi7Zu/82QVpM+paEmOfAevAxUE
	c0BcJRc1/Cc1cc45DAS6T8UvGusNidC3dwbFRb2wJ20OLVRgnbYid3IUSBm0+l0I+6fDV8c2a7d
	ikc8TR8PJd5x91KFxg9kFyMlHpffS2gzcylVjqLqa4+X04Rbkn6JvVSR0V93R5DolKt4bS8RvJ1
	dhmmTAelCpwp7mocIM/YrzmOmf0qBsYhD22LC5oZgkuUyqSoyG7avRJOol3QuzkeoPvEPZrUeEX
	9FGfbh9o8P1ooU6zl8D8EINtH16HzVLvYbWxQk2PEwnqvQFBCzziXuFQVRsLg=
X-Received: by 2002:a05:6122:1d44:b0:563:7816:ed17 with SMTP id 71dfb90a1353d-5665c82f6e8mr1681613e0c.1.1769443546409;
        Mon, 26 Jan 2026 08:05:46 -0800 (PST)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fb584e0sm2075821e0c.14.2026.01.26.08.05.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 08:05:46 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5f52e500e89so5357704137.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 08:05:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWNDbxcgMVHU6Y6Bq6GlG4hkhYYwJ87yKY6Uo0MoHy+snwgxZ26WoELLKxmZE9iy0lt1n9c8bsLqcP8@vger.kernel.org
X-Received: by 2002:a05:6102:2920:b0:5f5:2ab7:cefc with SMTP id
 ada2fe7eead31-5f576514c47mr1614515137.41.1769443045773; Mon, 26 Jan 2026
 07:57:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260125192706.27099-1-ovidiu.panait.rb@renesas.com> <20260125192706.27099-6-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20260125192706.27099-6-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 26 Jan 2026 16:57:14 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVgn_hViAO13HE_AY7KG-guAwSMTMOdHwzzK+K=kUstkQ@mail.gmail.com>
X-Gm-Features: AZwV_QgRCwoHhziZOmAhSnKes9efiAhzVMELZ9SF4N6lYcHkaUa7uPK8VSG_D2s
Message-ID: <CAMuHMdVgn_hViAO13HE_AY7KG-guAwSMTMOdHwzzK+K=kUstkQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Enable RTC
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	URIBL_MULTI_FAIL(0.00)[renesas.com:server fail,mail.gmail.com:server fail,linux-m68k.org:server fail,glider.be:server fail,sto.lore.kernel.org:server fail];
	TAGGED_FROM(0.00)[bounces-259567-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_CC(0.00)[bp.renesas.com,bootlin.com,kernel.org,gmail.com,baylibre.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linux-m68k.org:email,renesas.com:email,mail.gmail.com:mid,glider.be:email]
X-Rspamd-Queue-Id: 660FC8A77A
X-Rspamd-Action: no action

On Sun, 25 Jan 2026 at 20:27, Ovidiu Panait
<ovidiu.panait.rb@renesas.com> wrote:
> Enable RTC.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

