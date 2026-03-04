Return-Path: <devicetree+bounces-270870-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iP1CLYPep2lnkgAAu9opvQ
	(envelope-from <devicetree+bounces-270870-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:25:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2153B1FB92D
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 08:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 884B73017C34
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 07:25:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3475351C2A;
	Wed,  4 Mar 2026 07:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BhosY8Tk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f48.google.com (mail-dl1-f48.google.com [74.125.82.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C2830E84D
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 07:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772609152; cv=none; b=FYjRN9iDW/3dVK80sVNHmzjfHnDGERJ0ycotmRuLjHhyoq9elbgTNOe/N9bii1nfv6cHEOSuZewWGiNGSS+37Ia+FVrR6L4d64yjvk+tiIchKPRXKDbEwxjNDVUAGIyKcFxXklaFGbrBP1Nhkc8MEAzVksSooPO69sazdI6FsCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772609152; c=relaxed/simple;
	bh=u2dqIwEcqB7gZGhAjpnE89HllIsn+qZmeaKPFJf4eC8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jCbcpUaOxV3VEZPxhVMdMBneg1M08X05t3YzgO9WvlCJ179lleZiPfBbUAhBNVje2i5JpnN0EV7g+ZCy6Y+KGze7cYJInm1EvWJCIeFPmccStPQpk7Ah/n8chL+zQ2wkV7YHGyYrYshVWLpG37x6+0zCQTzbP1wJ3MQQZH2Tkz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BhosY8Tk; arc=none smtp.client-ip=74.125.82.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f48.google.com with SMTP id a92af1059eb24-12732165d1eso7011602c88.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:25:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772609151; x=1773213951; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Xjt8bJH/L3RjqSPLVXpTgggvkPMU8B0IuZLjfddvGU=;
        b=BhosY8TkYsPKrhVgf9LfpjCt6MKdNhm7SfBppFqs1X1d4RYFo0KCfi2kpRsBa9f/AQ
         p7NK8qy/qmElgFyZKzfeWZU3LXPxnk7WjoBYKBfngPhGSa50qluVRvoCvEIrEj0E0wfu
         x2DhjRZ/LyIcYGaTVw8DQ+RYn7HBNawXWryWCILdl+F8+vERALHRtltNU+ZeldMMZkjY
         OP0theBT2+x1KJFflsF6u12LRgnsCObnQJsPv3rlqvTKw3aaqmRRnwB8QPw4rwgTmdkd
         nyzMpxSc80I8BQeMqmYHJBb3TpMlze37Hde8/QceS0vI/3/hBgNaTQ996waUOtFtqR6d
         W1lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772609151; x=1773213951;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2Xjt8bJH/L3RjqSPLVXpTgggvkPMU8B0IuZLjfddvGU=;
        b=VNpR3GmXDXMlrwUGVSyRpn4nYsm6DVAouxrBR7fq6KtaVpPfZo/98cOpooqr+thpNu
         Qeo8YXj6A7u1C1vCrGWHgHaLfZomFa4uCv+xkNWQQLwbVXliyPhNUxOIs5mnh2r9A9iL
         7jMvnjgyo6an6Q5BXqo+wa/mmo5EQuledJ/JZtIKqEvz9AwI3u2jg/QLd+SkcpVqwhzd
         hoXpci9KfSmPj/y1fA38kpbVR/+yzjoe+Zb5pP2eT9FQ0VF/EV3ukG70G1cuze4B9PA/
         La2yqaXi8G/b1tLya3t3MvEYh2kJYbWy00UKvjjo0bFL4ebfbb4o0QGim0rYWqDDKCAJ
         aJ8A==
X-Forwarded-Encrypted: i=1; AJvYcCWqRbcnDVuBp+Zn+L54c4RGet5Z5/uJHz+u1OQBzmdVZHS53htsZLwL5EgNHsRdLBqVbO0F7vkfijGM@vger.kernel.org
X-Gm-Message-State: AOJu0YzclcmTTwJdPQ/4fZ8+FSt7YiW2eYOYcUIe6Kt0YNSPP8ZtoxFx
	GRmp24JDiFykT63qLUrgz18LCFC/XZgidh6iX3dd7oNtWfXoEhfaHpYf
X-Gm-Gg: ATEYQzxDMRm08DaLQqk44ljM78nV1Q3kuKt6a6/orSMncoWL3+wMA/ARLcciwyv59gv
	2ZC+DjhRhxP9dQXFhArmp4SiXfXDTbIy8OLsLkkq+xgVpMi8CbrIVXaFT63Drrqj4+/iSOLzTlv
	3wg5M7Oy+i0ON362UEuup9nY18Hcqh9ch6pbSHpBdH9wlvBm8YmJxH1ZzYYsCYgZ75G2fRF5r1j
	xTPoRm0Y63FB4ASf7LYODJOW8sNxsI9REJu9fwDbWV7AJuNAfEbprTt0nGeldCj8pMlQo+r1+DI
	dMKgh+cWHJ6ojNBavT8RL5BGmkf9hc0x+MX8t8SEERyVrP2uF2XNSBMP8DIPrQiKRsRFxTvIHWw
	CBS7BTRtLkMf9+Jt+xdsNcuzoKnyWQQz8SzsfCFMIc2k2l8lfrOZbOWnz5LSWNiIms5guzjidHq
	jzb/uAsEy6Vz/KDYmSH+AHjq9SRqWoYwo=
X-Received: by 2002:a05:7300:72d1:b0:2ae:5e93:b69 with SMTP id 5a478bee46e88-2be310904acmr459054eec.29.1772609150602;
        Tue, 03 Mar 2026 23:25:50 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a55:9af1::1002])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be249ed6a4sm2548374eec.11.2026.03.03.23.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 23:25:50 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: jernej.skrabec@gmail.com
Cc: andre.przywara@arm.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	mripard@kernel.org,
	robh@kernel.org,
	samuel@sholland.org,
	wens@kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: allwinner: h6: Add TaiqiCat (TQC) A01 support
Date: Wed,  4 Mar 2026 15:25:43 +0800
Message-ID: <20260304072543.436707-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <5969847.DvuYhMxLoT@jernej-laptop>
References: <5969847.DvuYhMxLoT@jernej-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 2153B1FB92D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[arm.com,kernel.org,vger.kernel.org,gmail.com,lists.infradead.org,lists.linux.dev,sholland.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-270870-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,archive.org:url]
X-Rspamd-Action: no action

> Dne ponedeljek, 2. marec 2026 ob 03:09:56 Srednjeevropski standardni =C4=8D=
> as je Jun Yan napisal(a):
> > TaiqiCat (TQC) A01 is a set-top box powered by an Allwinner H6 SoC,
> > equipped with an AXP305 PMIC, 1GB LPDDR3 RAM, 8GB eMMC, an AP6212
> > WiFi/BT combo module, one 100M Ethernet port, one USB 3.0 Type-A port,
> > one USB 2.0 Type-A port, one Micro USB port, HDMI, SPDIF, Micro-SD, and
> > infrared input.
> >=20
> > It was released by Ultrapower(UQSoft) as a blockchain-based terminal and =
> is
> > now discontinued and no longer supported.
> >=20
> >   https://web.archive.org/web/20190409213228/https://tq.ultrapower.com.cn=
> /product.html
> >=20
> > Hardware schematics are not available at this time; however, the
> > dts from the vendor firmware is provided for reference [1].
> >=20
> > Based on the PCB silkscreen marking "AZW-KT02 2.0", the ODM/OEM
> > can be confirmed as AZW, and the overall hardware circuit design
> > is highly similar to the Beelink GS1.
> >=20
> > Tested, works:
> > - debug UART
> > - status LED
> > - USB 3.0 Type-A port
> > - USB 2.0 Type-A port
> > - Micro USB port (Host)
> > - MicroSD
> > - eMMC
> > - WiFi/Bluetooth
> > - HDMI video output
> >=20
> > Does not work:
> > - Ethernet (requires AC200 MFD/EPHY driver)
> > - HDMI audio
> >=20
> > Untested:
> > - SPDIF
> > - IR receiver
> >=20
> > [1] https://archive.org/download/tqc-a01-stock-fw/tqc-a01-stock-fw.dts
> >=20
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > Reviewed-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
> >  .../dts/allwinner/sun50i-h6-taiqicat-a01.dts  | 361 ++++++++++++++++++
> >  2 files changed, 362 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.=
> dts
> >=20
> > diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts=
> /allwinner/Makefile
> > index 2edfa7bf4ab3..d116864b6c2b 100644
> > --- a/arch/arm64/boot/dts/allwinner/Makefile
> > +++ b/arch/arm64/boot/dts/allwinner/Makefile
> > @@ -38,6 +38,7 @@ dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-orangepi-lite2.=
> dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-orangepi-one-plus.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-pine-h64.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-pine-h64-model-b.dtb
> > +dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-taiqicat-a01.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-tanix-tx6.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h6-tanix-tx6-mini.dtb
> >  dtb-$(CONFIG_ARCH_SUNXI) +=3D sun50i-h313-tanix-tx1.dtb
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts b/a=
> rch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts
> > new file mode 100644
> > index 000000000000..3138292abb45
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-taiqicat-a01.dts
> > @@ -0,0 +1,361 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +// Copyright (C) 2026 Jun Yan <jerrysteve1101@gmail.com>
> > +
> > +/dts-v1/;
> > +
> > +#include "sun50i-h6.dtsi"
> > +#include "sun50i-h6-cpu-opp.dtsi"
> > +#include "sun50i-h6-gpu-opp.dtsi"
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +
> > +/ {
> > +	model =3D "TaiqiCat (TQC) A01";
> > +	compatible =3D "ultrapower,taiqicat-a01", "allwinner,sun50i-h6";
> > +
> > +	aliases {
> > +		ethernet0 =3D &sdio_wifi;
> 
> Wifi has alias ethernet1 on H6.

Acknowledged. This will be fixed in PATCH V4.

> 
> Other that that, it looks good. With that fixed:
> Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>
> 
> Best regards,
> Jernej




