Return-Path: <devicetree+bounces-262301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GJMwGngNgmkKOwMAu9opvQ
	(envelope-from <devicetree+bounces-262301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:00:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7C1DAF3B
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:00:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4405E3014973
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:55:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B6E39524F;
	Tue,  3 Feb 2026 14:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B3djIGL6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6EDB2EC09D
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 14:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770130525; cv=none; b=eHedx2fI6e5tHTEmlgr4M0idGQ0WvLEvAsIHQIgn+JNCGmH7Y3TTmidArgaXTJUT27+G+V+1vdVXbjx6dwvMkqSP8mLZ45Pu1kxGjEDVrJCdue2HZAHnSk8HOHE4w/tm8sgOGyrbzWXy1BUHmUsI/J/GxoXybdNmAUvDjlZslko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770130525; c=relaxed/simple;
	bh=CQCpaDMDurPXeUcxt3VxJhHeMmeCEnu8Zp/01ETtf8U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CqMUCnpfCllK/E8F4H3efyjUbIHpD+IybJf6Z/kKli1csXI9ygvyhN9D+Sw19VeDjdKjYS2jHtDiQPZwKUEp1lnoAtNHmpKl99cLpFBfort+8hLfmy12S4zrg77MCE5OZGXyNcYvIFZOnso+VOnNNV4bR/QjLEehcoR/B6apvR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B3djIGL6; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-81f4dfa82edso3113275b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770130521; x=1770735321; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJQRCF6zYsE7XjiI+u2zUtRdMqWKpoc4+DQL0jQTZ6k=;
        b=B3djIGL6hzdNHsPD45K9/Tb2t3/aImYvUVdo+BqleaU7ZXpZ/TSOuVp6AIMMLfBQUQ
         XPcCCLNE5jTasVXdQlxdg3UB1S3SsPIfhMANfW5s8bsd5J3DYaEvZe7D481zdgQ3MI9L
         NY7o/F5zJ6APvGfYyYA6ia2OXoxlyrCqD+m7FGdlxWjDUQTiCzbzcqSO414muWsasUzn
         wrLaV8f90NBCX+JxK7skoN/qzQI4bfdEfZYmgyK1rNk+MmYl7so84Ud4InC9oITEFBUq
         UZQI854e/rJxiVRigX/DM5mOPXUWlWZGJhwbclPn8Pmz1l6Y6EcQ1IL4tFd/hZuJeKiM
         uk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770130521; x=1770735321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MJQRCF6zYsE7XjiI+u2zUtRdMqWKpoc4+DQL0jQTZ6k=;
        b=NSOWniNRDQ5Z7r+2AcuEvuzfUwHuFUJD4onVHpYZRw3+Tfg3W5LMLNhUBhM5H3h2Ek
         7q/QK0cN10YeOyHPriLjzuae5YJwjA+0nUXp3UOwykFllT3ozjdLboIzU81ICfKYHdJn
         38nt1/lnr/QasXUo3M/yBFRxYHq7yVgzs2CFIVyovL2E/Obc5sihOPYu0MAZwqc95h+n
         rveTMKDiJgAgO7OSOTPX0f1QiaBXeYRx4uoFPwEtpANzdfYKxl+pHAHXY1vfpdHNcLgu
         wXq4dLnvi1EBe58Mmz7GrNi7tT5MfxXvCRW7bjEfK5T1BvEiMNDN6woJjPp6LOXoWrk4
         bxIQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+oMzhkrMO9+Y1vNCLTH3qgdSlR7NJre0uS17y3bxvKSvbZf7CFk6UsoVNQPoDsOQQ/0XrW1NLK7G4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4tMTg+4Xr3EH4g7/AK2ICFSqi1iSKP1TsfH1TWQ+V0kDunyDR
	rdM4EqOVu0X+63stalEXGVX7siDROJ3xabjM7pldmHXQsjzLc897vyaV
X-Gm-Gg: AZuq6aJlrpb5MXpFuqt45js3BVDwQzpLUrlfmPFteH015Zgkp8lpuZpsg/U7xLirP4Q
	yeCpdb+vBgd34XqW+WRDKftbL/oNR4uwktnUqjxRHfoC9Zasx9gaS8CB0BmZ7WiPTKYgzNtFIm+
	SjjDl4YszmGycUQBE0SV988ckk+xsvTkzTiXpTsHILgskSrm1YhfUs8hlJa3lGogEpC13IIXMgO
	J1XVCa0APH647oIzBazQgUUfbjpV2iUR4xUtqtsH9/FVd/ukbLNbU5+gqz3svjizNSbm2jfER3Q
	LAbqrOXjMhUBe9vFpKOnL7mZhNClKRuZuOD0VVhVJcp/AUP6s2O3AKW2dSyoMciYbb0ZYIA9pGi
	uqfQOb5p+mIMCgg9JW6EGq+5+/ClMvohMBgUvwxZLdio5fFDhv/6fulaQOzvf0vrWUktc4PVQ7b
	A+AtbnEG6t
X-Received: by 2002:a05:6a00:aa8d:b0:823:786:1990 with SMTP id d2e1a72fcca58-823aa5365b9mr14315825b3a.21.1770130521483;
        Tue, 03 Feb 2026 06:55:21 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b65068sm21738348b3a.27.2026.02.03.06.55.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 06:55:21 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: dsimic@manjaro.org
Cc: alchark@gmail.com,
	andyshrk@163.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add OneThing Edge Cube series 
Date: Tue,  3 Feb 2026 22:55:15 +0800
Message-ID: <20260203145515.303754-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <705908c9-4552-d808-783e-3ce0cf45bbff@manjaro.org>
References: <705908c9-4552-d808-783e-3ce0cf45bbff@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	SUBJECT_ENDS_SPACES(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,163.com,kernel.org,vger.kernel.org,sntech.de,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-262301-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,archive.org:url,bootlin.com:url]
X-Rspamd-Queue-Id: BE7C1DAF3B
X-Rspamd-Action: no action

> Hello Jun,
> 
> On Monday, February 02, 2026 16:04 CET, Jun Yan <jerrysteve1101@gmail.com> wrote:
> > The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> > eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> > port, and one USB 3.0 port.
> > 
> > Other than the difference in RAM capacity, the OEC and OEC-turbo are
> > identical in all other specifications.
> > 
> >   Specification:
> >     - Rockchip RK3566
> >     - LPDDR4X 2GB (OEC) / 4GB (OEC-turbo)
> >     - eMMC 8GB
> >     - Gigabit Ethernet port x 1
> >     - USB 3.0 port x 1
> >     - USB-C 2.0 port x 1
> >     - 12V DC Power supply
> >     - SATA 3.0 connector x 1
> > 
> > These devices do not have a PMIC, and their hardware circuit design
> > is highly similar to that of the rk3566-box-demo[1]. Hardware schematics
> > are not available at this time, with the vendor firmware dts available
> > for reference[2].
> > 
> > Ethernet, USB 3.0 and SATA 3.0 ports tested, all working well.
> > 
> > [1] https://elixir.bootlin.com/linux/v6.18.6/source/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > [2] https://archive.org/download/wxy-oec-RK3566-4G-dump/wxy-oec-RK3566-4G-dump.dts
> > 
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../rockchip/rk3566-onething-oec-series.dts   | 312 ++++++++++++++++++
> >  2 files changed, 313 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 4d384f153c13..234fa53abe17 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -104,6 +104,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-odroid-m1s.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-oec-series.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v2.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > new file mode 100644
> > index 000000000000..2007b93e190e
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > @@ -0,0 +1,312 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3566.dtsi"
> > +
> > +/ {
> > +	model = "OneThing OEC/OEC-turbo";
> > +	compatible = "onething,oec-turbo", "onething,oec", "rockchip,rk3566";
> 
> Thanks for the v3!  After thinking a bit more about it, it would be better
> to name the board dtb "rk3566-onething-edge-cube.dtb" and omit the "series"
> part, because the only difference between the board variants is the amount
> of DRAM.  Also, "onething,oec-turbo" should be removed from the compatibles,
> and the single compatible renamed to "onething,edge-cube", because I see no
> need to have an additional compatible, which may be added later if really
> needed for some unforeseen differentiating purpose.
> 
> Also, it might be better to use "OneThing Edge Cube/Edge Cube Turbo" as the
> combined name, because "Edge Cube" is more self-descriptive than just "OEC",
> which may also help with various search engines down the road.

Thank you for your detailed feedback! 

I fully agree with your suggestions and will implement all of them in the V4 patch.

Best regards,
Jun Yan

