Return-Path: <devicetree+bounces-262307-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPG7IEAQgmm9OwMAu9opvQ
	(envelope-from <devicetree+bounces-262307-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:12:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F10DB1DF
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C33F23032F72
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 15:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45A28310764;
	Tue,  3 Feb 2026 15:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ufw1VQUX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF1B2F362D
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 15:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770131426; cv=none; b=Sz0ljpC7ltPgniK/vecaiOwtlA3xA8WTkGaC3y74cYet3fdL2OHd01bWLIW0Yl2Hwsa9s6pry3IEWk/IjCLTykuXM6c2Ezdg+NOaR/nYEOJQ+ZoBWXMEPVmPM9QU/X3fobRS0LsThDdDRfxaOQlV9YKk9unbJGzzOO1PIDZ/IdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770131426; c=relaxed/simple;
	bh=CGco3RTGwFYlUfO1+ZCitSfcqs9d4KyZ+wAbTb29ysw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kIMUY+owSybjcz/Pkc2MlIyhYdHwaPN8L+4Gv3Gg+MXrcIz3qmr5ceHoTwj+bBcllFJ1iAZtv+eSp9mhgTZD782CrUV7OO4i6O4BTKk3k+h386G4Waotvbj8hpwGeFRRWjI3Q8Fe3It/uiOlu08E/xBdyvTDBIWBB5FftXPBn/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ufw1VQUX; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a929245b6aso6828525ad.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 07:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770131423; x=1770736223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MK5oboaEkHiYwSTjLFoCDPQwjjJ04uX2RfYZ7bqzPwQ=;
        b=Ufw1VQUXLiA0mBwZzjFZP/b6+q4P6VgLgQuztRcVtuAoR+6bUjIdOQg6b/Ez6z7xGJ
         WCQtfbEnERdlDnsgp1ZqwboFtbk7P/RlGUhT7eRImILTbbg4WBDXDJZJP3q0LTizytg+
         J5K6p/JRrbpnpvu0V00cMmKJaHiafn/8SC4wr9oJNO8vAOw1dM/UCU5+tzqg4hgY2vnc
         g0TaUMnVixCp1k8S61yAWPJn6RJGJYnDAnT1eTAii0iOwcpdhOJMvNe1YOWDPzw/iqyE
         tlQ357QSfC8yZ8vVn9Ar6pj0Su/5AhfOadSfWJVoOt9Sia+XUVaxHlzIufFO0fJfsZ/k
         WaiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770131423; x=1770736223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MK5oboaEkHiYwSTjLFoCDPQwjjJ04uX2RfYZ7bqzPwQ=;
        b=DCMybYizYD7acyaZUOBLLA3ytaj2BDGAG4cV7neMFCHv3gqZ5Djhdnhcv8gH2bGqhO
         XcAHUhw8l72ROpIlSRGO3FQove6/HgCiEXosvagmIFoLYpPKIcPJb/03hT7Gi9dveYxQ
         p2djVddRIKR3TGchpzQRTOzgJ7iqmUG1eyEjteLnzrFBwCf6AwyZDtmgzhjE94TYeNNX
         gh6P1cq1yIDqtlUNdGMbzMxbQPVO2BaH6huPRH1M+pWyCjo2js8Ybc+B1FHSCQPCEXml
         JXuvS/dpG2R/ztBsOeFh4UvPxG4gWSbECSxvYjH9hZu+RbCIy6TTcy1ZxOGd+FZ+vqxD
         lq2g==
X-Forwarded-Encrypted: i=1; AJvYcCV6oBkuVxj94mj39NbhDzrQAlkaxftvUu1XHUsv3alvAhsS2L3yB739gkDySl/5BW7zDtUTsMt5WLNe@vger.kernel.org
X-Gm-Message-State: AOJu0YyDxcm84kO3appQDiKYiXTY2ebUf63vvY46uNiR+2/v/AQa54AR
	YZ3VPxoC5KlJyapexG7cgDvE8/Ig1vrr75S7Tw7R3W93dlffWEpsvoG3
X-Gm-Gg: AZuq6aIaOB5qUNHexoV4zcQzUyp1ikMDS3t0ToWyI+s8sEKBfrFug4+f/TxzFC0xqGi
	jyqxuO3fVhO1qC81y5M2erdkAjzgNQ3TqZbpTzFOoNCg6AvB67hjwWXmyREBGhn+jcYIfK28slY
	SWPPIQaxd+/RtDhnzTvYXQRqQzWmOK7mf520fUfbqjdpjB+g1g5Nt+6pbliro+2Y59JqQ+5m9HS
	2sPdh0Fepcj+1RJe2hDazcjBgpKdSiasJnytC6D5UdXG1jKtw/S2saArx189zCIxbrmA7AcINMo
	zFAzOpNz63QAlNa4trgP7423YTKfrA3556Mq8xhDOWzVWeTf7XRCo8531Rg1VfHWLq7KApkYsdI
	PcDENfX3Xb4RWr+kAU4Tc8r+gRo9iUTRWP1IZ9QMhYCKsyEET1DW/9d00uV0D/cvHNb0fxO1wF5
	EtHKJtyQ6E
X-Received: by 2002:a17:903:1112:b0:2a0:d33d:a8f0 with SMTP id d9443c01a7336-2a8d993d3b3mr134577365ad.50.1770131422758;
        Tue, 03 Feb 2026 07:10:22 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3e04sm172196585ad.46.2026.02.03.07.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 07:10:22 -0800 (PST)
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
Date: Tue,  3 Feb 2026 23:10:13 +0800
Message-ID: <20260203151013.305032-1-jerrysteve1101@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,163.com,kernel.org,vger.kernel.org,sntech.de,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-262307-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,onethingcloud.com:url]
X-Rspamd-Queue-Id: D1F10DB1DF
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

Sorry for the quick follow-up.
In official documentation (Most of it is in Chinese) from OneThing Tech[1], 
the designations "OEC/OEC-turbo" are more commonly and widely used.
for this reason, I propose retaining the "OEC/OEC-turbo" naming in the model 
property.

[1] https://help.onethingcloud.com/be81/OEC1/80c5

Best regards,
Jun Yan

