Return-Path: <devicetree+bounces-261576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id U61UCNVRf2nunwIAu9opvQ
	(envelope-from <devicetree+bounces-261576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 14:15:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 665EEC5FC0
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 14:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CA98300C92F
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 13:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A82346777;
	Sun,  1 Feb 2026 13:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h4NNicLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4113533A70E
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 13:14:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769951698; cv=none; b=jqQaf/6p6s9v92Nz/jFTomp37dYBAWF3rAi4N1MIAku9Xgnlsrws8ZsYOnIF8NwT4kDGDECuWUECNdlU4j3XtYdgTef68OJF9s/hMMSMhwxP6LTM28vNQzZgND9N4VmR53S+NTE8hvIQyC7cS97q8qhSWA8NzS9ooDLMwWFPBaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769951698; c=relaxed/simple;
	bh=/QqqK/8u2LvhMRSMIOlnnj36ICapz7Y072OCVY5RMt8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E+SA2g7WoUS0BzvDyoFqZJBIZZl4S/QFGz7Kv0dnjIeXXnraWs2ZZK9ANEYlI1/SBiJWXkWuejmCSwl45ZdZvF/JIsUgFtiKhKS/yC8G1N9B38RvYsFYKaM+in/jNNij0I8cNFs+FEEyoJR6BQKDv2L4yOyb/FkRDTAUZYhTnwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h4NNicLg; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a102494058so20760975ad.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 05:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769951696; x=1770556496; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQFUULeH+fy8L9eOXKB3k7qBdbSqID9Bg3DoUQYdSfE=;
        b=h4NNicLg7BjacBeRSyC7KQhwY0Cw7w3bsVRkE/qKPsPNQ5Nr+ysyXUzcT5wqvwa7pY
         xBeBRHjvgUmtTkUYF11XWVDhasKZND+8rOmJdVj0Yx4lxXv2NpGAXGfSlhmkn2b/HAJ2
         4jWeYa0dH+ngBgS0EJlUmf1sVdPFrYuU9+U98wH8mG7IlTayLGAuDlBPaT9NN7epuWE8
         D3cFdUGD45L2YQ899HaBIjpkuFmhts/U3/pVj/PK5ZlISR/7w97Vv3zJaBEC4F1aJ/I1
         EfNaOqnlaGF/dRzGgWqpuhFxG/OnWLUzIybCoUL5D4mHAL7SpVFHEFh/VZYWBWsxdYwo
         qNbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769951696; x=1770556496;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LQFUULeH+fy8L9eOXKB3k7qBdbSqID9Bg3DoUQYdSfE=;
        b=Acz12BiSbtO/Ql4E8KM/6j6Oo2P1bwMZ6WfZffN4L39GFLSN1gndjXzl+fgm/pKbK8
         h78cWijzlnDVUPPzfSFTqx1Q4I6ZWGoEOKhr3YRBt1+prJSE8+84OWh0x+w4nDnj3/3x
         bPNYzGQqlIcKhTE2AkN0eb9xSAPHX62MMupcPGFio/0EX7GNimksdaE3kvo0RfPdMVEd
         eEvCVG5FuKLq9kbVOBYhvANthTGTzCf8OC2GUGABJYJAxO2vK6i2BpP/f8fZZLU6g4ga
         1Uk7jsXK+zki7iQR6w42Lc+y36EyBRauYTmX+Dza0YxRITwWKSXMSwgFswakv1Fv/QNR
         J1FA==
X-Forwarded-Encrypted: i=1; AJvYcCWhMJ16BG+oYs+uLTYbW7bYLebmMGmOx1vRJc89u80+ghpR1ljDuCnIFC3GmmmzMr7bIBghYxQKNcZs@vger.kernel.org
X-Gm-Message-State: AOJu0YyHL0Qn8rC2ucM7+wrnc2Noal6+CsIWwQMJATS1IRnlNQgU0U8N
	AZgXSjcXhg0FzXoaGJR0hFnTmQ6Fy2N+kxnMddFgx+8FbaSofn1OSIb3
X-Gm-Gg: AZuq6aK3hgOSaaU/OMNGCgrij9ykxpvRjJIZ+8JQKpEgrGO29zKzRelZ9lPDkDgUqSY
	hk1NVmnxVhTockkrFdI+J5wjU3aUKyTuzoYMzFWW4pE2BeHTZGiEv4WxujqkC4KOwAhuZhR45/l
	a6Xsx+z8rqot63i5eRvZhuJZYIuQjcwk8ITkV5opWYOCSm60n8o0sb3A5zvEH1Fh2WAWnqM5jmw
	GiRABBqbTw3K/6PurNGwb1wEPIMUz2MuYsZFh0oj7U9jG7sZSht77C57BKLj29aT37SYozxW3G+
	8WTMaJ046SSRLmSY+A6yzFoTh/sQ5vcieVPlEi9iLFHPIZn68+kBqLEDbbOaYFMdxCtIC+/oZaL
	qYVVkQvwVdlC5CryRX75kZJ4tSPX2J/XUsKtOopm5ImqNIyYY3iOss8a0HT5lQTjq11yJbR+gQ+
	Y1AjyJP1Ta/y35IO1McWM=
X-Received: by 2002:a17:903:380b:b0:29f:1b1f:784 with SMTP id d9443c01a7336-2a8bd3ebfeemr131616705ad.4.1769951696423;
        Sun, 01 Feb 2026 05:14:56 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b1d024sm13343816b3a.12.2026.02.01.05.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 05:14:56 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: dsimic@manjaro.org
Cc: alchark@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add OneThing Edge Cube series
Date: Sun,  1 Feb 2026 21:14:51 +0800
Message-ID: <20260201131451.65452-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <d2005c66-536c-8c0c-658a-fb6ed7b5f3c6@manjaro.org>
References: <d2005c66-536c-8c0c-658a-fb6ed7b5f3c6@manjaro.org>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261576-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,sntech.de,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 665EEC5FC0
X-Rspamd-Action: no action

> Hello Jun,
> 
> Please, see a quick remark below, for now.
> 
> On Saturday, January 31, 2026 16:31 CET, Jun Yan <jerrysteve1101@gmail.com> wrote:
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
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
> >  .../rockchip/rk3566-onething-oec-turbo.dts    |  10 +
> >  .../boot/dts/rockchip/rk3566-onething-oec.dts |  10 +
> >  .../dts/rockchip/rk3566-onething-oec.dtsi     | 309 ++++++++++++++++++
> >  4 files changed, 331 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dtsi
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 4d384f153c13..ec57719e4573 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -104,6 +104,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-odroid-m1s.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-oec.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-oec-turbo.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v2.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts
> > new file mode 100644
> > index 000000000000..16d0cd0cf577
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts
> > @@ -0,0 +1,10 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include "rk3566-onething-oec.dtsi"
> > +
> > +/ {
> > +	model = "OneThing OEC-turbo";
> > +	compatible = "onething,oec-turbo", "rockchip,rk3566";
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts
> > new file mode 100644
> > index 000000000000..81da771ad63d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts
> > @@ -0,0 +1,10 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include "rk3566-onething-oec.dtsi"
> > +
> > +/ {
> > +	model = "OneThing OEC";
> > +	compatible = "onething,oec", "rockchip,rk3566";
> > +};
> 
> The only difference between the two OneThing OEC board variants is, as
> far as I can tell, the amount of LPDDR4X DRAM they have, so I don't think
> it's justified to have two separate board dts files that descend from the
> common dtsi ancestor.
> 
> Having different amounts of DRAM on the same board design is present on
> virtually all boards from other manufacturers, and some kind of special
> DT treatment is needed only in some special cases, such as when different
> types of DRAM are used for different capacities.
> 
> The different naming of the two board variants could be solved by having
> something like this is the single board dts file:
> 
>   model = "OneThing OEC/OEC-turbo";

I agree with your suggestion and will implement it in the V3 patch set. 
Thanks for your valuable feedback!

> Having two separate board dts files only makes it harder down the road,
> such as having to build and provide two separate U-Boot builds, with no
> real benefits.  Every user can run free(1) to check the amount of available
> DRAM on their board, which also tells them the board variant.


