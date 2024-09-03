Return-Path: <devicetree+bounces-99454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4C3969D95
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 14:29:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA14E1F219EF
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 12:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 163901D0954;
	Tue,  3 Sep 2024 12:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="IbY6SCP4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605211CB539
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 12:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725366556; cv=none; b=Ad0U6PCYUl7W7SpbR+75uxLEZ+Lxip2mROCvN6XmRdUPZjQMpca/a7DqaXvdUigyw/WX+PWhOix2dasswsZZfgGnj2fsWYRhxEGS0AbJIcsYPgKVDbMcFUbCPNelD1dxQMfvtd3BoLHSsTEKlEtLC57JPActT4hXBOMGKspXEHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725366556; c=relaxed/simple;
	bh=LYZ3g1BOQrAmEV2a5L00wMHSlNaPPgLH0lWGP87X9VE=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rps2qk8B0wTkz30KRv+yE8JhHO2ic3t+fUQdkyFE/BWasD74juxHa9YA91pGPib98AKCptpjA25qgLjk09qSyWg18GTIziF1HiOg9o0NlP8toCUAVbhtLb5c7zQtcu9pFYXlmLf+/APyagmjr8B4ErRBUQXiInhuiOlYJdWdo7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=IbY6SCP4; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53345604960so6085952e87.3
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 05:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1725366551; x=1725971351; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pQaEXKZRWyREIUo8wC8RcTnNWfD1rXPNnUAij9Sr27k=;
        b=IbY6SCP4WWPPL2wU29cTSHcvBDgNnVeuU2grWCJXHhk+8cJGN+SSnRloO9PpTLhe4b
         LfHYLzWEfoCva2m/GdE8rJ7f62g5YKa0X0eUeeJlCOfybn5LI79N6kFW66kvOiFeQsI4
         nwhl2hdZbXWiAMrbE89ngBhyAfDA6Df5AKAs07lJUXb6dklEVIGdpN3/ZMrhQn61wc8k
         NCfOuJ+8YGx7apRuj0krn9P0DlpMk0AeQ+/8hLUd/EjOSK4WIsr6Fz8kMpCSPR04ocF7
         Ur+e4xK+Hlp8/W0ymMOcrQ9WaxoE++Mj9jQUuF92/3dQCfDuJ/lUIytA6SwFu0eK6Jvt
         /r1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725366551; x=1725971351;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pQaEXKZRWyREIUo8wC8RcTnNWfD1rXPNnUAij9Sr27k=;
        b=Ti10KPrmOL4OkR7xVqRsFUpXrMOgqO8+D+8VD25N28hg7om4AdmCQHmMJjW0th4j+X
         AN6mIe9kMzCKbqeZk3ziAFb9hNTZ6Xsk/IHv5Sgvxe2IXgTm4JdM7jp0+UyLhOHjkQVH
         dPIjJpoHx3/uwYNlZS7P9rHj0QmCteiggzlGEpuduCpU8Xz/QA74IHnuotXb252lG49p
         JXvEAAcE15aHrJZXTnsuJkGtg9tD4yA7NJdXMJls2kK0pCex5evBNew3mfMqvHYUrJ5t
         cW69B7sOf0DJ1n5RLY4gMNrErA6+p7CYqJ1XK3NpV6BSE/ip10PbEFzzgoVkPZotPvJe
         Faug==
X-Forwarded-Encrypted: i=1; AJvYcCU1Sl7hrcZit7vMD0T3SUJdXHrdQ9tqo6qlIViLQ/nuz3t+USto4YTu9BgCEKdeLdnm6C64jxSAoALe@vger.kernel.org
X-Gm-Message-State: AOJu0YxnaCFx9Q8lBa7UgMFJZyKawl9FnhpK4e/1S8P1sXChxGM5tTdw
	iBUIoA7n/UXHmwGRs7NjSge9vviAHNgn1BE+GpKPuYnCkDKoTvKx2hDPOXiSvRw=
X-Google-Smtp-Source: AGHT+IFq5h7rZ8oQIIXm6nz6CibNpWmLcPJNLG4TGtm/2ICu6a9ZqKTz9NHYYqSXDVwrc61upSj1pQ==
X-Received: by 2002:a05:6512:2254:b0:530:ea60:7e07 with SMTP id 2adb3069b0e04-53546bb9455mr9237621e87.58.1725366550821;
        Tue, 03 Sep 2024 05:29:10 -0700 (PDT)
Received: from localhost (host-80-182-198-72.retail.telecomitalia.it. [80.182.198.72])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891d7834sm688285166b.177.2024.09.03.05.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 05:29:10 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 3 Sep 2024 14:29:18 +0200
To: Stephen Boyd <sboyd@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Eric Dumazet <edumazet@google.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Stefan Wahren <wahrenst@gmx.net>, Will Deacon <will@kernel.org>,
	devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	netdev@vger.kernel.org
Subject: Re: [PATCH 05/11] vmlinux.lds.h: Preserve DTB sections from being
 discarded after init
Message-ID: <ZtcBHvI9JxgH9iFT@apocalypse>
References: <cover.1724159867.git.andrea.porta@suse.com>
 <12d0909b1612fb6d2caa42b4fda5e5ae63d623a3.1724159867.git.andrea.porta@suse.com>
 <2113b8df52164733a0ee3860bb793d6e.sboyd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2113b8df52164733a0ee3860bb793d6e.sboyd@kernel.org>

Hi Stephen,

On 12:46 Fri 30 Aug     , Stephen Boyd wrote:
> Quoting Andrea della Porta (2024-08-20 07:36:07)
> > The special section .dtb.init.rodata contains dtb and dtbo compiled
> > as objects inside the kernel and ends up in .init.data sectiion that
> > will be discarded early after the init phase. This is a problem for
> > builtin drivers that apply dtb overlay at runtime since this happens
> > later (e.g. during bus enumeration) and also for modules that should
> > be able to do it dynamically during runtime.
> > Move the dtb section to .data.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >  include/asm-generic/vmlinux.lds.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> > index ad6afc5c4918..3ae9097774b0 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -365,6 +365,7 @@
> >         TRACE_PRINTKS()                                                 \
> >         BPF_RAW_TP()                                                    \
> >         TRACEPOINT_STR()                                                \
> > +       KERNEL_DTB()                                                    \
> 
> The KERNEL_DTB() macro shows the section name is dtb.init.rodata. Can
> you remove the ".init." part if this isn't initdata anymore? And
> shouldn't it be in the RO_DATA() macro?

Ack.

> 
> It would be nice to keep the initdata properties when this isn't used
> after init as well. Perhaps we need another macro and/or filename to
> indicate that the DTB{O} can be thrown away after init/module init.

We can certainly add some more filename extension that would place the
relevant data in a droppable section. 
Throwing away the dtb/o after init is like the actual KERNEL_DTB macro that
is adding teh data to section .init.data, but this would mean t would be
useful only at very early init stage, just like for CONFIG_OF_UNITTEST.
Throwing after module init could be more difficult though, I think,
for example we're not sure when to discard the section in case of deferred
modules probe.

Many thanks,
Andrea

