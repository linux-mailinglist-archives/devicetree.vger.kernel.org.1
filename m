Return-Path: <devicetree+bounces-262645-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wP2RFMFHg2mMkwMAu9opvQ
	(envelope-from <devicetree+bounces-262645-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:21:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0A0E6550
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0DB123011C75
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16CD7283C83;
	Wed,  4 Feb 2026 13:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yg6zMBke"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50C527FD45
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211256; cv=none; b=P3Tp4tz/wTVtyKnMIIqMCZrPzZpTObs/IYtMXCLaQAPgUfUCunttQmqRt4dBV/691a9TgPEUp4x9jEoMz1qn+mswZZikUYTXGtWlYn2K/2rA3uvxmGqhF/Nukit8dzpmx5TIN39JR39NLlUeiSFJflOhUROu9iGSOiZGOuCIQTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211256; c=relaxed/simple;
	bh=XK6v4DFKQNqKOq1OZbPFkEpEPaCfHWQ5WVsORn7uEaQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hHXDG7/kpMxZaEsjxa5ZYL5ASqRP8RkCpTgcG+hzMEPBD7ZjqU3X4oiV9Dtu3PUg+9dodoXV2MxcCr2oLf57KVm0IJbNqd+B7+7sNWOYlH6Fxlig6m38USIJuMbMqjt/AHiTEfYe2r/800VW/VikR5qYzp0VjgeNVUCQMMc1UC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yg6zMBke; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2a90055b9e9so3913435ad.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770211255; x=1770816055; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rKC9479RtmvQxjIDGbP/TybkiDx+Ouj854nFtYQtJb4=;
        b=Yg6zMBkeZBgZ3o5HbdWMxoxqN/YiNTExjiA9f9mHdpqYXQhJp2SABIeOPVhYtEanSx
         f/QZ4J6dNBMzKFb5WrwT7jNTSYr0v8fp39U0UneNXOIEae+FPGOLcrPeF9lhSRS3qsTs
         tBdQqGqf9Y5NKqnF9ug7k0pmc2vNHHr0n5Mk7R87pfzEtN8AWLQ5cjOVDoC2wbJNy9WY
         vo257nUERJWEIp76rontIhUQZ0EiBUJwiyjKjYJQhF375QPDlY3k51HvVfPKj4y+sxoV
         weQuoJ+PR0e81vROTyVEUPmU/n8FEyG4JyS0/k4nZUHKcS0nW4wc1PTnLyplJs5B7Xe4
         Wg4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211255; x=1770816055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rKC9479RtmvQxjIDGbP/TybkiDx+Ouj854nFtYQtJb4=;
        b=HMglc0Nb1cBh38YbBuAKS+xupf+9dZB2vSSQoTEfcBOO1A0e7nS2Y8MMHygjGJqGjZ
         lk6R4XGKhHCUGpIfjusgVd6Ucd21K/Z2fp1qqWKiEjkCqt7VHbCRhyFH2OyXMmjQmlK/
         EJ8P1WrramcpyLEfQwgdnCl8Jq4NJwrAWlv++16DCodFOPgTHIvcQ+jNElIUpXRhZOrH
         VnUsjTK8O91xizy7Y5G1SgNNFSPDw2QWcvLZHfZGDnCiAAmJoYntV5ncdplv5KWAngXG
         WwhWbSIUDxdNucz2QF6ICgTpaDDX53wbyFzMhgf8+Oh2+ObHaIeC59AX9g9Cs6s2zk3A
         NRYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXS3BA4DLOUB8F3qz/y3eEU9/Y0teJGOpN4oQNkFVUpjw2uc8gn56iyOWAW+7mbUwhgreXD7wz6Nw2m@vger.kernel.org
X-Gm-Message-State: AOJu0YwYmFkNxT4/6cevEMO5cBu2u1OxZHt+tB1hDctW6u1y1iv08UdH
	KN6oW6+sjoDOWGYf9KeQX2xTBEm/TdY2Ilwaav12D6UasPE/1xTlC8+z
X-Gm-Gg: AZuq6aKJluwvevnR6dK9PWjHnuaXP2yH1ExssDIn4kSQ0FonxwElHCS6hPtB6Vek2RM
	nixqAPh9fBsqqswFxsfA06tMVgzrlf7Z0tbuwN0UovfDGYSCrjicuacaPjI3Ryh0Q2F+qi4kcJ6
	yyNMV7qLE8EMdLjuuGARHnNtOVs/61UuTPY7wJsZe03fgABWaeoXYpLCyw1Gvuc+RHVtvs2AWP4
	SaWvE/cEB6/pbJuOOFYWAZ6ApKDbo1vXb5M/YVbsGcDoDjl6yJzwxb7UbwuoCnLisBIC9Y+6fwU
	RHq8RqPoEz84kP17xFrTm6OB1ExNkesyLp2AD3Ggcxbsccqw+6H8eYmNyFRegbXqowjIUNcxnH9
	VTzPxeX8hXKD958+ifeYVEU1YqHucR62+8DO27qHuvMFtwVGzIP3gSb1Ewd1JH5DeS/ElDBGl/M
	BRh5gPIqXM
X-Received: by 2002:a17:902:ec82:b0:29b:e512:752e with SMTP id d9443c01a7336-2a933fad904mr38729415ad.47.1770211254785;
        Wed, 04 Feb 2026 05:20:54 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a93397cd43sm24287045ad.91.2026.02.04.05.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:20:54 -0800 (PST)
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
Date: Wed,  4 Feb 2026 21:20:49 +0800
Message-ID: <20260204132049.327451-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <f6eb572c-dd2c-9606-4fb5-b26b51bbbb06@manjaro.org>
References: <f6eb572c-dd2c-9606-4fb5-b26b51bbbb06@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,163.com,kernel.org,vger.kernel.org,sntech.de,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262645-lists,devicetree=lfdr.de];
	PRECEDENCE_BULK(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: BC0A0E6550
X-Rspamd-Action: no action

Hello,

> Hello Jun,
> 
> On Tuesday, February 03, 2026 16:10 CET, Jun Yan <jerrysteve1101@gmail.com> wrote:
> > > On Monday, February 02, 2026 16:04 CET, Jun Yan <jerrysteve1101@gmail.com> wrote:
> > > > The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> > > > eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> > > > port, and one USB 3.0 port.
> > > > 
> > > > Other than the difference in RAM capacity, the OEC and OEC-turbo are
> > > > identical in all other specifications.
> > > > 
> > > >   Specification:
> > > >     - Rockchip RK3566
> > > >     - LPDDR4X 2GB (OEC) / 4GB (OEC-turbo)
> > > >     - eMMC 8GB
> > > >     - Gigabit Ethernet port x 1
> > > >     - USB 3.0 port x 1
> > > >     - USB-C 2.0 port x 1
> > > >     - 12V DC Power supply
> > > >     - SATA 3.0 connector x 1
> > > > 
> > > > These devices do not have a PMIC, and their hardware circuit design
> > > > is highly similar to that of the rk3566-box-demo[1]. Hardware schematics
> > > > are not available at this time, with the vendor firmware dts available
> > > > for reference[2].
> > > > 
> > > > Ethernet, USB 3.0 and SATA 3.0 ports tested, all working well.
> > > > 
> > > > [1] https://elixir.bootlin.com/linux/v6.18.6/source/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > [2] https://archive.org/download/wxy-oec-RK3566-4G-dump/wxy-oec-RK3566-4G-dump.dts
> > > > 
> > > > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> > > >  .../rockchip/rk3566-onething-oec-series.dts   | 312 ++++++++++++++++++
> > > >  2 files changed, 313 insertions(+)
> > > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > > > index 4d384f153c13..234fa53abe17 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > > @@ -104,6 +104,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-odroid-m1s.dtb
> > > > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-oec-series.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v1.1.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v2.1.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > > > new file mode 100644
> > > > index 000000000000..2007b93e190e
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > > > @@ -0,0 +1,312 @@
> > > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > +
> > > > +/dts-v1/;
> > > > +
> > > > +#include <dt-bindings/gpio/gpio.h>
> > > > +#include <dt-bindings/leds/common.h>
> > > > +#include <dt-bindings/pinctrl/rockchip.h>
> > > > +#include "rk3566.dtsi"
> > > > +
> > > > +/ {
> > > > +	model = "OneThing OEC/OEC-turbo";
> > > > +	compatible = "onething,oec-turbo", "onething,oec", "rockchip,rk3566";
> > > 
> > > Thanks for the v3!  After thinking a bit more about it, it would be better
> > > to name the board dtb "rk3566-onething-edge-cube.dtb" and omit the "series"
> > > part, because the only difference between the board variants is the amount
> > > of DRAM.  Also, "onething,oec-turbo" should be removed from the compatibles,
> > > and the single compatible renamed to "onething,edge-cube", because I see no
> > > need to have an additional compatible, which may be added later if really
> > > needed for some unforeseen differentiating purpose.
> > > 
> > > Also, it might be better to use "OneThing Edge Cube/Edge Cube Turbo" as the
> > > combined name, because "Edge Cube" is more self-descriptive than just "OEC",
> > > which may also help with various search engines down the road.
> > 
> > Sorry for the quick follow-up.
> > In official documentation (Most of it is in Chinese) from OneThing Tech[1], 
> > the designations "OEC/OEC-turbo" are more commonly and widely used.
> > for this reason, I propose retaining the "OEC/OEC-turbo" naming in the model 
> > property.
> 
> I see, that's an interesting twist.  As some kind of a compromise, it would
> be best to have the board dtb named "rk3566-onething-edge-cube.dtb" and use
> "OneThing Edge Cube (OEC)/OEC Turbo" as the combined name.  That way the
> board dtb name isn't too short, while "OEC" is present in the model name,
> for search engines to pick it up, hopefully, and for people to see it in
> a few places. :)
> 
I appreciate the compromise and fully agree with it: naming the dtb 
"rk3566-onething-edge-cube.dtb" and using "OneThing Edge Cube (OEC)/OEC Turbo" 
as the combined name.

The V4 patch will follow shortly.

Best regards,

Jun Yan

> > [1] https://help.onethingcloud.com/be81/OEC1/80c5


