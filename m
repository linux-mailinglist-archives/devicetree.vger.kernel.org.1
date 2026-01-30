Return-Path: <devicetree+bounces-261128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mM3pHjx4fGmWNAIAu9opvQ
	(envelope-from <devicetree+bounces-261128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:22:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C18C9B8D5D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:22:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBE0B301779D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:19:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28DF0326D76;
	Fri, 30 Jan 2026 09:19:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4537E329C74
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769764787; cv=none; b=ELyvI7BSbJxCQ3I5P5blw6lKlns/LpK6IUhBpysCyQhemftpYxLB/AjEoBn5jeIp4VTlrnYuRFpYCcDb3wC4dp3YjUgU8nISfV5pFZh8VCO0tEQm6LdufaWbK5wYDOUbUbEBNzeRGE546wO3u1lwAGSahcFQZRZg/31GJkGZm6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769764787; c=relaxed/simple;
	bh=rb4EuzCXuTKTVqbpFElzoMQdpdnMXSS0x58YBQfZZgY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u3iN0nQTRyNWzJYcnQ+0rnMwXVIQQw7232oBEJJWK8HenweWJOLaPvnsbHz9MgUOrspfwUCywaf85f06PKclw1/riDiqQTe3j0bhXMtyCeqb29l5KNaFU5ZnxJDUOsZbKJFOpuntWji0wmcEtZx8NxP90VGKlapkEiIg3aHlE1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-947fea7590cso488469241.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 01:19:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769764784; x=1770369584;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sV1LMONvjqxJmyWmmePKRhrEiX3yiJWUNyHMjjj9WKE=;
        b=V/Et4Z4Jx39270i+1ry656PnpPVXjGWhYOu+zQxzB4wKUWtMsLQV5tPn/lLBEWNNcp
         akNT+3mZuddRNRD+t5YRoyzdA15nBMU8fxXVJEVDAxuGON1VvuLLgCT/e+iEPS3sIRgE
         9dPE+iZY8/VWJxiJd3ID9r+zJww0aTYkoVST2vR1cHPpWuoUOg1+MMzOupU6bSTwVWlY
         nfxM4spDfAhyeaz5be4C3sC3Ai0PeJXDpkUi1KCvz+MtalltpgZ6s88A4g6pzcSOb7hy
         8CA7/Uav3SX4PHaOQrHn4QHaSrFkmNS8ATUrWCF8fa02PSILDst2BttnXmgIUuW5YUsW
         t9eA==
X-Forwarded-Encrypted: i=1; AJvYcCUSFenGE1yZcboQ0GNDnGLuLVXsCTWCzOu0ocrjrDmWkjfS/RaW4PueCeW9s2pN2D25UvpBMgba9Lo6@vger.kernel.org
X-Gm-Message-State: AOJu0YwRiShuik25z2RYvWx+xyvpNbEoF/bETKRktvRtiza+MScKySfL
	V7/3qh5ltclIaNHPUceT3QznJ8T/c1eUebvzE7SF6XBAVaps1pSjJGOkyzZ85Y45
X-Gm-Gg: AZuq6aLBWH6nUNpSD10ji2pzGpNWVhw+fzLCYSxXK0Lxg3b2nhshONW0g2bp/u21Uus
	JF5k97qPrLHzzP5ClDORE+mVsxLb7jqZYKF4ethGLW0PS+U01sL/fx9CIpeiOb8nYMjNztjyuv/
	Q1M/SHqovk/biC27nrgLjw/3T0kzbfzG3MrxkCjw3DXIhE6FswJyFIiMuidi4979V6u6menQ8vl
	G9etmdqM9EgNhjNJO2kPoU1gwAPn/mVuDbjsKrA8n9HqGTLOj6T7IeyF0dmKH0uhwA1Fb+mZ9L2
	6dzT56HPdbPzba/d5F/YEUJs5tMqCniBgPlPPY6US2vrPWGtDlPrRoPJ5hPitkWEfkrg6klA+oo
	W7WApeim1hT5G5kuZAVY6hegUeRZz982Zd0IVyY8d5vMupYGBRhHnJWk3HjMpe9JbwAGTmYJ9tZ
	k2B3W1kUjuQ1+SAucheVuuZi/u8M1qzAtbu1eTa15ZI/z4zN9k
X-Received: by 2002:a05:6102:d8a:b0:5f5:35bd:6fb3 with SMTP id ada2fe7eead31-5f8e23760a7mr711664137.5.1769764784038;
        Fri, 30 Jan 2026 01:19:44 -0800 (PST)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com. [209.85.222.45])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-948724e41c7sm1868009241.12.2026.01.30.01.19.43
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 01:19:43 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-948104feb8eso519967241.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 01:19:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVOB1K6odGxDIFCUibg+3jAM4C6UNGTD2wWgZtixcIRbZ9yKDCRA0FdTAxa8biebISCsraFI4WuR6HR@vger.kernel.org
X-Received: by 2002:a05:6102:32c3:b0:5ee:a0de:65ea with SMTP id
 ada2fe7eead31-5f8e25fcd99mr682216137.38.1769764782873; Fri, 30 Jan 2026
 01:19:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260129165412.557643-1-tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <20260129165412.557643-1-tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 30 Jan 2026 10:19:31 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVG4o4-3tJNXnLgK6ejopfoN8Kp384my+72vN5Bz1AmXw@mail.gmail.com>
X-Gm-Features: AZwV_QiqqityMJ4wlbQdNw-loL8M4m5eOc3ehO8F7z2M2oZ_zXPwPRLyN4p_l4k
Message-ID: <CAMuHMdVG4o4-3tJNXnLgK6ejopfoN8Kp384my+72vN5Bz1AmXw@mail.gmail.com>
Subject: Re: [PATCH v7] dt-bindings: usb: renesas,usbhs: Add RZ/G3E SoC support
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,bp.renesas.com,linuxfoundation.org,kernel.org,renesas.com,microchip.com];
	TAGGED_FROM(0.00)[bounces-261128-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,linux-m68k.org:email,renesas.com:email]
X-Rspamd-Queue-Id: C18C9B8D5D
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 at 17:54, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Document the Renesas USBHS controller found on the Renesas RZ/G3E SoC.
> The USBHS block on RZ/G3E is functionally identical to the one found
> on the RZ/G2L family, so no driver changes are needed. The existing
> "renesas,rzg2l-usbhs" fallback compatible will continue to be used for
> handling this IP.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

