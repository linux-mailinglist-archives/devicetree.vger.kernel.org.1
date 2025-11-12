Return-Path: <devicetree+bounces-237429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C27DC510BB
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:06:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D241B4F51CD
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54FB62F39B1;
	Wed, 12 Nov 2025 08:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QVZ42ao4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C245F2F25FB
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 08:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762934614; cv=none; b=f5t9b+PBiD/7nFPBKBgEaebM01ZHcGIkmhWGStHD4JK2biJ47E2CJ3MsKvuiuBasbT6N0yO21SlITpN85sQEQ8p3ReVxZJfvS6otB9DyVWruCVZ55rao9hupxwozSzPQOpWfW1lj/g938f355+1E9qt+WeTl1tFb28+T8fEb8Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762934614; c=relaxed/simple;
	bh=zPGu40RBS+rv+lA9IJtOCrLM35WUPLbmW8rMipxE56o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rKeIKtWdcZz0Gp9EZTCACWodsUS9x6xK89jOnNYnfTktl/asWlNKEmIiOxB8/0uOD2ClKAq9XGItrzpYrTuv8kSvMkfVLUI0ZthGR3KRedFP+A4PxAGlXLdPJ0op/yVqszWEnSTscWRvy7+/hbNFI28emMwLOBY8qZvKOXFmmmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QVZ42ao4; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-29516a36affso6248795ad.3
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 00:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762934612; x=1763539412; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IOQ8gbWYR/8pIKJHHt25CkEHl+HOhDt/PI+YYG3jAcU=;
        b=QVZ42ao4mMs2CpSTRfVM3TADYwdgVveukUPeJiFkT0zZyeU1C745UJmB+LNccHAs4w
         6OfI7wK7cm/5iPhzt8HwZQjUBeQZzHCXy/u1nRNJ4I92q/q/jTmlAKk12TPG9jOxj3ow
         Cq41QXcXAH7ukzFK2ddDqNjOIvXhL2zgMkGLaGC4J9E9yVHMMrm2dM8xjIOnhByTV74E
         1jiOj4nhvFJXEsbGixflauc1r2QgSgglutwMi/FP1ZEl3bIydaTBV+PVFgaKAncxhs1g
         etoO4XUL6xXbVFn2lQ9nZfoQgxGrh0j+ykYkz9xKRqytcummxrSF61Ev47qetGTXAmuZ
         KTRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762934612; x=1763539412;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IOQ8gbWYR/8pIKJHHt25CkEHl+HOhDt/PI+YYG3jAcU=;
        b=I9353RrLGASojb1d3WmSrkA5jdj8yOyO4PKmzmiagMtzkX65YlQ+JQv33afX/QrNTz
         C6EDLdVMJnAes2k/YN+N4yp+IRNfZ7ufbPEqZyx8zlhY9nXZ8bPQh1OsFFnFlXjz64qp
         X9EM1Xyty0j8EnGPCGcvy+jb3dPX+33DjZRUrd/Ynlb0X7aCAI+KVfjc7VF8CX9UIJ9D
         QMxidcRzZ2R+2uYlsJJXRzl3kbqx2lgMqSPLNEZqCVzCrrp3Dm4I0NbCq+ZzN6iq3CyJ
         1LzQc9PXManjtvWIMJcZtdeRxswC94TGjrhYtlnDlcd4kmZOGhelVcHABCHxvE+0Z0gJ
         0UXQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2OP3Ut2/tNS0ci8SgdWNig2Hhy3TP0YDxluEcT+lB5UY3ic3ll6vmmMtI5yhdO7UqgJXFkY5oaCEG@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy17EFVamIg1C6PewdqN1aUh+4Kp2sIeaO5ZW94Re+9zQOe7ck
	WRORtiw8WQeYA93qOb4UdQtGA6OZ6Rb0GNK2O0BW+X7CaPCU24RdIvIO
X-Gm-Gg: ASbGncsZxdS9yO36fkG+tMOfa1YvADCdpnMXpkioSRO2ZZxTuTga01yp0QDe2tezORc
	xyJ+FZORacrO+/X1/eAlz4sccTVllfWsvsDDu+W3nI7b+Mzw2i2ndkGWeC7zWTPUcOBMigrJch/
	X0vhgMLqvihUEecRU7y4/uCNRyF+ZNPM7abo0TZT5rWGOyCQFzvFxL6gmdyxvv7oDYflu+XLN5U
	q4Fa11SFgG2eSKt62KdbU4ZrRnrZp/0OZ5YVnBIN5UtujDsW/6b4zjrkDKwLPWRjwGaoXaipni0
	FnPqSSXj781oatrjfJcvdaXq/hdV08A3856FPdIDaqrtqs/eeSOqp/BRwoTK7uPz6pYLswsITln
	MZAC4Yis/h1OwMTn0TZWsWnan6OAkuQR9IvUucLvlNPbU1kuxXCBjRABK4hL+zS79NpztEfJa0w
	==
X-Google-Smtp-Source: AGHT+IH+DPJMbQNSOGKgtCR72ZONR0AxugfjM0MLXwjdzOTvsq+YFq9t1EqGEJ/mZYCDIKH8bOXU0g==
X-Received: by 2002:a17:902:e78b:b0:269:8d1b:40c3 with SMTP id d9443c01a7336-2984ed2b619mr28705965ad.12.1762934611984;
        Wed, 12 Nov 2025 00:03:31 -0800 (PST)
Received: from geday ([2804:7f2:800b:7c80::dead:c001])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dbdac10sm21286815ad.22.2025.11.12.00.03.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 00:03:31 -0800 (PST)
Date: Wed, 12 Nov 2025 05:03:19 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: =?utf-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci <linux-pci@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	krzk+dt <krzk+dt@kernel.org>, conor+dt <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <aRQ_R90S8T82th45@geday>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <aRLEbfsmXnGwyigS@geday>
 <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>

On Tue, Nov 11, 2025 at 03:47:04PM +0800, 张烨 wrote:
> Hi Geraldo,
> 
> In standard GPIO operations, the typical practice is to set the output level first before configuring the direction as output. This approach helps avoid outputting an uncertain voltage level at the instant when the direction switches from input to output.

Thanks for the explanation Ye Zhang, it makes sense to me. It avoids the
pin to not be floating so to speak. I kept hammering at this problem, by
the way is PCIe PERST# side-band signal refusing to co-operate and
failing PCIe initial link-training.

You're not going to like this:

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 47174eb3ba76..fea2c55992e8 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -183,11 +183,13 @@ static int rockchip_gpio_set(struct gpio_chip *gc, unsigned int offset,
 	struct rockchip_pin_bank *bank = gpiochip_get_data(gc);
 	unsigned long flags;
 
+	rockchip_gpio_set_direction(gc, offset, true);
+
 	raw_spin_lock_irqsave(&bank->slock, flags);
 	rockchip_gpio_writel_bit(bank, offset, value, bank->gpio_regs->port_dr);
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
 
-	return 0;
+	return rockchip_gpio_set_direction(gc, offset, false);
 }
 
 static int rockchip_gpio_get(struct gpio_chip *gc, unsigned int offset)

By setting direction INPUT, then writing out, then setting OUTPUT again
miraculously it doesn't fail initial link training, with no other
changes that already have been rejected by PCI folks and Shawn Lin.

Everything works as expected. Is this an explainable behaviour by
Rockchip GPIO core?

The problem I am observing is that once I set PERST# it becomes
unsettable again. So that's why those open-drain/open-source hacks
worked (gpiolib will hack the pull polarity to INPUT).

Thanks,
Geraldo Nascimento

> 
> Additionally, for Rockchip's GPIO controller specifically, setting the level value should not be affected by the direction setting - the data register write should be effective regardless of whether the pin is configured as input or output.

