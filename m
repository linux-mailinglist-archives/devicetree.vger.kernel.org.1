Return-Path: <devicetree+bounces-265936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCi9GZ2Xk2lI6wEAu9opvQ
	(envelope-from <devicetree+bounces-265936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 23:18:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7A4147E72
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 23:18:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36EBB3024A27
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 22:17:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B4FE289378;
	Mon, 16 Feb 2026 22:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="eyaXEYD2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D8614A60F
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 22:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771280261; cv=pass; b=q364AulyAtLHm71snLEBuAWvC6hHvBHN43siCmsXxy6hkh5+9SMTLs5Lq22OsyVTVmuRi3AxCndNfcgKDUh/sz08FXorkPlRzwC2jMujc95xFRdJuu6ArdGq/sY3+y2tIBCncLdsgjOvJsjKezOTcWvesnEdIZbbF0UMKIx6sjc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771280261; c=relaxed/simple;
	bh=M0tZLLCijhYp0BiqLeRqHZYee516b5yWz7OgvKuM0Xc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dXIAMmk6TwxPzGLtOzVCfDeruW8p2fh/wzT3wRdFQC9EssJ+Jq8K30fgBpy3b2iOdIMGQWYUOx5/nTGZc0OQVZmvzMIvQd12OxQL8JRThpXE1JjqzZ3Hr0eieziRg3uOkp+lVVM6wL4z5rYzllClkcJcRra7GFGHfdS82TCQ514=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=eyaXEYD2; arc=pass smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-794fe16d032so29470047b3.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:17:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771280259; cv=none;
        d=google.com; s=arc-20240605;
        b=J/fPmqcyxa1QAQSjsWlq+xwF6D9UwyxDYgyPAT4d1e07ljCSyFc/dUOUpUMdLrKi/w
         fGZpBwmP8FQkrW/d1ThRHuMaiD/Zq9H7U6UIccI5rrLCZ+luNeKDJ1eeLS8XEykqykzS
         k8p/ELins/ptHNPMIZW2mlVgtkGhw+6jxWLGIq/nd4xGxXMO4uFth+eCq+QlZQdSrshC
         njUcssz/ekObm1oUSU1+K+oY8aso0tM+BGZc3rtiLmlf5g7Hkrby10FSdtOyCpN/RjEW
         u5r92Ah6oFbQlUjziTACaDN6nt1htQ2vXEHUFgH9A5Co+cOqBMkufzEKEZU7wjJ00V32
         XQGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fbDbwMbQLt5XbpuHjhGQIUh0CrFsQYIf/s77CykekJo=;
        fh=wfcmfqjAbARGzuJqoeKrBSmufHoLLfyRoIpzKtymYTk=;
        b=FObKV9MVHvLygHizYbhFgbjAyTS8ay0lR+Ky19jJ2ygfh+1v4NE+vkMj/HwRpClBqf
         qhyzkZJ51t2jN1J9tMVFG6ob84wGVblStYZoxEtlx5Xlm31p7q00SHAm2gv9UTl+TH+8
         GcLo3QYMcZmczR/Bd+g1UdZi1YMtOU6Brhgm0WUQkCLAWaNck5MPEmqaaJPMZiG3qE5T
         tpGEyusWKgYRKiePI6OG0EIvKweQzz51tlWbojYhI7+Ehvb1x++wh3TYYPiUuUe5Kxyb
         ghCNnPC11tt31oqN7zzCB1SURPYu8YxGos5S5EhOeH8e7q+pFMsaxxYb6wNx29r2kZ01
         Ww2Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1771280259; x=1771885059; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fbDbwMbQLt5XbpuHjhGQIUh0CrFsQYIf/s77CykekJo=;
        b=eyaXEYD2GkrFHRyULkcrQdp1nIxF0VbGixUnyEY85ca0lN8i9gltkZn1vwAZ6yeT83
         TcCyeGLIu+HW1/O4j9+6b6KkUdklHU9rlCiOrBss+vj0uuossTlrJ4HE28DMyVW+jwfu
         dPy95xMLup/+ml037pgO3cbQGo7J4fH1r6v4/OJibiWso/CiDsyYDLnD5EhzqNLhLwBf
         ygC7SdnhEDWt8hnHIyK9VKpkPA7MLehtutyiN9ivA2BwaEA7BfIhoxQzx+FO2Os3fE0G
         IXvpgz1Wqc893eM9V4vPCGYtUVMRBgHmuGwCSroHgKCaz4GJN4c85QgAEC+iLh0aZbzC
         3ikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771280259; x=1771885059;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fbDbwMbQLt5XbpuHjhGQIUh0CrFsQYIf/s77CykekJo=;
        b=pXDVWKRMcmbl+ZwQD5JBqfVdWAutONgA6/QkeD3kyEQcNbGrQmhGM6I7s02mLjGD1e
         bIHMpsHgbFFn8l9Rm7YB68U5UxXbxsa4c9VZLQETZOisafbcIufb6Q8J9zagqpJL7MG+
         tmQrHZX8WmuWRs9xKAca7VBXYpa0b3OB+ulDPVAgmEZlr9DN/VRPHeHVnc95K60Zt2rm
         /K2h/cpcPvhxEnq1/BLAFUjqsgKwMOsiYpsvuFbdXTzMtmhSOEJWyrM+NqlJJzC6tWku
         mlK8T1IVdHhtnuZmz1j8datsK5dZOHbD/XCSGawtnsfEJYQMiQ2Qz7l0PDSzUIv/tnXY
         IwxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUjRFasuNJyPBHSARoVHgkOTwi9GzHsELxnXIj+YI9wCpnWryUP/AXCPpJHXvEF0XiMXfcr4cmEZwP@vger.kernel.org
X-Gm-Message-State: AOJu0YyYbF9WAuqZnehu8K6mNnGd+8C+q8Y3b6oIiYvjOPlGtSvIuNRo
	Wi6bn00BuVqQEuiX3+ov+107RnHTZ+VxbJ3ovGHJsRsB8SnZh4zlYeLfr3u/hsgg1y0veRxuCiu
	hICpw4fZfd2+7cz5SK66Tsfh37etraKQ8MIDwPc/ZAA==
X-Gm-Gg: AZuq6aJ9V20aTiL8W0JkmY61CLBh6Mrj9GYq4ouMGjAfmjJrNBTskTOLaLhwL/N3ZCZ
	Ggd6+DUdEcBG40fwxLx4V8tyqUUDoyUcOJXdIdDzNT5MbWkEHRnHdyCtGBneSXjEeyAcV0NPaNU
	0vxCIpmk83a6kxNK9dy0KzN13QtHTaEDhcxQlZnEV9bkEiC3SjokMuuRQcYn0X8a15rwGjzRT6P
	XIEmsKJAkRR6bZiyWAREgOp6EqcWBGtOBXyllcqtqDM3V/rLWswKiC0Phc4vXvbZh7oyI34P0Xi
	YOQlI8UOOHp0FdzlJ2Vs65lQ2iJ/rxEU2O0tPjdwYQZBxl4butKozF3aak3EzW6WWW+w6g==
X-Received: by 2002:a05:690c:ed5:b0:796:312a:b817 with SMTP id
 00721157ae682-797a0c0a56amr85503357b3.9.1771280259025; Mon, 16 Feb 2026
 14:17:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260130-atlantis-clocks-v4-0-46de52d52924@oss.tenstorrent.com>
 <20260130-atlantis-clocks-v4-2-46de52d52924@oss.tenstorrent.com> <d17eaa6b5fcb22a4c06f7c36408fb919ec60b45e.camel@pengutronix.de>
In-Reply-To: <d17eaa6b5fcb22a4c06f7c36408fb919ec60b45e.camel@pengutronix.de>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Mon, 16 Feb 2026 16:17:27 -0600
X-Gm-Features: AaiRm50q4OGcgQ2WR3mQNWcX2yR9Qi1_VyUxZhZmCORJZkYdV6XOGqE6n6kyxlM
Message-ID: <CAEev2e_uMb+fSQymuNuMZvLDatCTKnHmUQ-d-PkautDjeBND+A@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] reset: tenstorrent: Add reset controller for Atlantis
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
	fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
	npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com, 
	bmasney@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265936-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,pengutronix.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,tenstorrent.com:email,tenstorrent.com:dkim]
X-Rspamd-Queue-Id: 0C7A4147E72
X-Rspamd-Action: no action

Helo Philipp,

On Mon, Feb 2, 2026 at 8:05=E2=80=AFAM Philipp Zabel <p.zabel@pengutronix.d=
e> wrote:
>
> On Fr, 2026-01-30 at 11:50 -0600, Anirudh Srinivasan wrote:
> > Adds Atlantis Reset Controller and auxiliary device definitions for
> > reset to share same regmap interface as prcm (clock controller).
> >
> > This version of the reset controller driver covers resets from the RCPU
> > prcm.
> >
> > Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> > ---
> >  MAINTAINERS                                |   2 +
> >  drivers/reset/Kconfig                      |  11 ++
> >  drivers/reset/Makefile                     |   1 +
> >  drivers/reset/reset-tenstorrent-atlantis.c | 160 +++++++++++++++++++++=
++++++++
> >  include/soc/tenstorrent/atlantis-prcm.h    |  31 ++++++
> >  5 files changed, 205 insertions(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 0fc7bc6d0458..0cde1774567d 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -22537,7 +22537,9 @@ T:    git https://github.com/tenstorrent/linux.=
git
> >  F:   Documentation/devicetree/bindings/clock/tenstorrent,atlantis-prcm=
.yaml
> >  F:   Documentation/devicetree/bindings/riscv/tenstorrent.yaml
> >  F:   arch/riscv/boot/dts/tenstorrent/
> > +F:   drivers/reset/reset-tenstorrent-atlantis.c
> >  F:   include/dt-bindings/clock/tenstorrent,atlantis-prcm.h
> > +F:   include/soc/tenstorrent/
> >
> >  RISC-V THEAD SoC SUPPORT
> >  M:   Drew Fustini <fustini@kernel.org>
> > diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> > index 6e5d6deffa7d..cade77717492 100644
> > --- a/drivers/reset/Kconfig
> > +++ b/drivers/reset/Kconfig
> > @@ -324,6 +324,17 @@ config RESET_SUNXI
> >       help
> >         This enables the reset driver for Allwinner SoCs.
> >
> > +config RESET_TENSTORRENT_ATLANTIS
> > +     tristate "Tenstorrent atlantis reset driver"
> > +     depends on ARCH_TENSTORRENT || COMPILE_TEST
> > +     select AUXILIARY_BUS
> > +     default ARCH_TENSTORRENT
> > +     help
> > +       This enables the driver for the reset controller
> > +       present in the Tenstorrent Atlantis SoC.
> > +       Enable this option to be able to use hardware
> > +       resets on Atalantis based systems.
> > +
> >  config RESET_TH1520
> >       tristate "T-HEAD TH1520 reset controller"
> >       depends on ARCH_THEAD || COMPILE_TEST
> > diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> > index 9c3e484dfd81..a31959da0a88 100644
> > --- a/drivers/reset/Makefile
> > +++ b/drivers/reset/Makefile
> > @@ -41,6 +41,7 @@ obj-$(CONFIG_RESET_SOCFPGA) +=3D reset-socfpga.o
> >  obj-$(CONFIG_RESET_SPACEMIT) +=3D reset-spacemit.o
> >  obj-$(CONFIG_RESET_SUNPLUS) +=3D reset-sunplus.o
> >  obj-$(CONFIG_RESET_SUNXI) +=3D reset-sunxi.o
> > +obj-$(CONFIG_RESET_TENSTORRENT_ATLANTIS) +=3D reset-tenstorrent-atlant=
is.o
> >  obj-$(CONFIG_RESET_TH1520) +=3D reset-th1520.o
> >  obj-$(CONFIG_RESET_TI_SCI) +=3D reset-ti-sci.o
> >  obj-$(CONFIG_RESET_TI_SYSCON) +=3D reset-ti-syscon.o
> > diff --git a/drivers/reset/reset-tenstorrent-atlantis.c b/drivers/reset=
/reset-tenstorrent-atlantis.c
> > new file mode 100644
> > index 000000000000..6fe9143ad76c
> > --- /dev/null
> > +++ b/drivers/reset/reset-tenstorrent-atlantis.c
> > @@ -0,0 +1,160 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Tenstorrent Atlantis PRCM Reset Driver
> > + *
> > + * Copyright (c) 2026 Tenstorrent
> > + */
> > +
> > +#include <dt-bindings/clock/tenstorrent,atlantis-prcm.h>
> > +#include <linux/auxiliary_bus.h>
> > +#include <linux/reset-controller.h>
> > +#include <linux/regmap.h>
> > +#include <soc/tenstorrent/atlantis-prcm.h>
> > +
> > +struct atlantis_reset_data {
> > +     u8 bit;
> > +     u16 reg;
> > +     bool active_low;
> > +};
> > +
> > +struct atlantis_reset_controller_data {
> > +     const struct atlantis_reset_data *reset_data;
> > +     size_t count;
> > +};
> > +
> > +struct atlantis_reset_controller {
> > +     struct reset_controller_dev rcdev;
> > +     const struct atlantis_reset_controller_data *data;
> > +     struct regmap *regmap;
> > +};
> > +
> > +#define to_atlantis_reset_controller(_rcdev) \
> > +     container_of((_rcdev), struct atlantis_reset_controller, rcdev)
>
> Please make this an inline function as well. With that,
>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

I've made some non-trivial changes to the reset driver in v6 based on
some comments I received in v5, so I have dropped your Rb tag.


>
> Since this patch both depends on patch 1 and is a dependency for patch
> 3, I suppose this should go through the clock tree.
>
> regards
> Philipp

