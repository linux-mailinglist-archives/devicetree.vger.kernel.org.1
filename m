Return-Path: <devicetree+bounces-247521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14923CC8562
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:05:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6744B305846C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E63398B63;
	Wed, 17 Dec 2025 14:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FLKVEgDx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBEE396DDF
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 14:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765981837; cv=none; b=FfVNI23wa4jr9oRYOvFGTABECFFaVQuHNWgLQp+TBoa6NFKCysVCqlfwQWRQKCrPmOuUhmvxxL8cBOCAIrF5FlPWuHCmkRiHjt/g0bJEl6DF+SYrZGReFALzD7xIWTOuM3/GsdQXLeLr+rd5Sv+lEZBl2GCPezdrS28dgNYFCzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765981837; c=relaxed/simple;
	bh=SMAij2UriwHSdZLlFoHovgIELbFQzZS3+HoFJQ54rKE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u0j2tvVQz3UJTPMaQFxTaQkVdmoET5FY/o8Zaf3FX+uqZjWirVIOMhye2W5eApAGAZk3kSRwGWFraVx3j122Tb7mOOT/HE1W3bf7wuVKqtfqupXFuUqA81f3TwZFhToY6mrOPmKzWr3zSVtbxg5ZQ7uaNsqCxrO7i/J4D50W0aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FLKVEgDx; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477b198f4bcso46981055e9.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 06:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765981834; x=1766586634; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AuiYIGooRr6N9cCaAXemrVf0K1T1Vy32gUakY0SX5AE=;
        b=FLKVEgDxNxRuqwKEVD1tB3gpUnAbbwiF3h7imkunf6LBhqc6cVjNo52AZ/sSYZtmTl
         7DAEU90XbnFlBwAXkrun4z6ssxzXy4CVcyiIFtjPp2ZBSELRuRfrjxA7bXux777SzRfP
         /MB6/2XuPO6q0jcW6+oDAcmuB+nlJSGNrbcjkRJMgsA7PiEX25jyHJoJmo33HCr7ymTY
         QW+o4XGqVrtsEOsQdjLSxj06O++FGDgf+Pqk3iY4VB/6N5GjZV1+QEM28i+mZJMob4TA
         7BGqQubhwHmrH9/i72rZg2AMW4mNHTiLJPy6NNRqbkWpRwBeoFernLq1lDhH8Zd18GI7
         +4jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765981834; x=1766586634;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AuiYIGooRr6N9cCaAXemrVf0K1T1Vy32gUakY0SX5AE=;
        b=TdvFBfiL46K1QWuX0hbqHQACBcEzxDzp615hL0qiS0HMeTMNYXrK5Df5ENG5Tlsg05
         I2zDpOeZ0/sWOED4pyF9nwmbF7+KjRa+pHymzJJoBQNJKPTNi1Hm7AuoObURSZL6HBYQ
         7noCILWbR1ZhX81mJD0CvGTZu/iU+HuUNZtShGn0G9q8GOAsLfkieBF32cXD78677EGd
         zthb+hUD9UkFIUNNYWdnxEL9AazCPd51k0sm9dIY4NaA6HPQHuy6jEJP6TJwLRnAxD7n
         gXhbghgL7n2/Gg8sDWoYZiOVy7LOBzqvw9hx3OoO0qley6cCEz+bcJpnM/xmqbPkbffh
         EX1Q==
X-Forwarded-Encrypted: i=1; AJvYcCUAWxg3K2B2Fpwkgia5fpGz2n4IAHLDqIXz7uxvuPpZT7Xpi3ytOFueZAMd/lgsjraMlSjZyn+PTdeJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ+i2IIAat6cyGzmyWoHMIU83aIKBksk1DrOYInnkKNpiGSs7w
	ApIypge+ILAknWEnwfBvopgZzU4lYgrbIbYScO0Nb2wDf+EYR4eMaZsC
X-Gm-Gg: AY/fxX7p1Pmjqh5SP/i34+OOBzdVcsQFMmfUZZFwHWwHDLla7LQjzDxMHOgpZmRkPXW
	sGUdWyZ1JC8tfLzXaR3743wEa0u/0wUZC8NsGmUdGFKWlJ4C2upc2N6YJ3Co9sI/9OqO5GX/QVR
	d6+6tTAeQP3EADaldhM8wJCkBl2tvuSqzU8je9RtE/2cgV9P76v/TireSTgWBKu756G8c6G7BCw
	u0OtEBMZb8VkNYQEO1ENbBQ4pmtz2v19QEN4ODNKCtuAzUW1zRZnjL7R04JRvXUmc6Ad7TkmaBh
	NtN4GBsxw+QfRGpMKwNxvAa2gHHw/ZeXKQY+uUXjRIhqguvfd18usTfQzmwUhwHb5ZkEU6UNptA
	MmqnUzCdVBKU9kiwf9adPpb7VvMGSddl3KYCp/SsOHm0CnCFlYk3PRnfwzlFuKzFJN6hj7h9tX5
	noR4NQrHUJrDI=
X-Google-Smtp-Source: AGHT+IGA939LDs5bel/MHUVhqmVVYkWEB9HCE2LIzFvNEdXc2q1NmuhACUmHgPpSNxzfYkqpethSOQ==
X-Received: by 2002:a05:600c:1c92:b0:477:333a:f71f with SMTP id 5b1f17b1804b1-47a8f905306mr243968655e9.17.1765981833713;
        Wed, 17 Dec 2025 06:30:33 -0800 (PST)
Received: from eichest-laptop ([2a02:168:af72:0:b288:1a0e:e6f7:d63a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be011ccfasm6964805e9.7.2025.12.17.06.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 06:30:33 -0800 (PST)
Date: Wed, 17 Dec 2025 15:30:31 +0100
From: Stefan Eichenberger <eichest@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, hkallweit1@gmail.com, linux@armlinux.org.uk,
	geert+renesas@glider.be, ben.dooks@codethink.co.uk,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, francesco.dolcini@toradex.com,
	rafael.beims@toradex.com,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH net-next v1 2/3] dt-bindings: net: micrel: Add
 keep-preamble-before-sfd
Message-ID: <aUK-h6jDsng0Awjm@eichest-laptop>
References: <20251212084657.29239-1-eichest@gmail.com>
 <20251212084657.29239-3-eichest@gmail.com>
 <20251215140330.GA2360845-robh@kernel.org>
 <aUJ-3v-OO0YYbEtu@eichest-laptop>
 <aUKgP4Hi-8tP9eaK@eichest-laptop>
 <20251217135519.GA767145-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251217135519.GA767145-robh@kernel.org>

On Wed, Dec 17, 2025 at 07:55:19AM -0600, Rob Herring wrote:
> On Wed, Dec 17, 2025 at 01:21:19PM +0100, Stefan Eichenberger wrote:
> > On Wed, Dec 17, 2025 at 10:58:54AM +0100, Stefan Eichenberger wrote:
> > > On Mon, Dec 15, 2025 at 08:03:30AM -0600, Rob Herring wrote:
> > > > On Fri, Dec 12, 2025 at 09:46:17AM +0100, Stefan Eichenberger wrote:
> > > > > From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > > > > 
> > > > > Add a property to activate a Micrel PHY feature that keeps the preamble
> > > > > enabled before the SFD (Start Frame Delimiter) is transmitted.
> > > > > 
> > > > > This allows to workaround broken Ethernet controllers as found on the
> > > > > NXP i.MX8MP. Specifically, errata ERR050694 that states:
> > > > > ENET_QOS: MAC incorrectly discards the received packets when Preamble
> > > > > Byte does not precede SFD or SMD.
> > > > 
> > > > It doesn't really work right if you have to change the DT to work-around 
> > > > a quirk in the kernel. You should have all the information needed 
> > > > already in the DT. The compatible string for the i.MX8MP ethernet 
> > > > controller is not sufficient? 
> > > 
> > > Is doing something like this acceptable in a phy driver?
> > > if (of_machine_is_compatible("fsl,imx8mp")) {
> > > ...
> > > }
> > > 
> > > That would be a different option, rather than having to add a new DT
> > > property. Unfortunately, the workaround affects the PHY rather than the
> > > MAC driver. This is why we considered adding a DT property.
> > 
> > Francesco made a good point about this. The i.MX8MP has two MACs, but
> > only one of them is affected. Therefore, checking the machine's
> > compatible string would not be correct. As far as I know, checking the
> > MAC's compatible string from within the PHY driver is also not good
> > practice, is it?
> 
> It's not great, but probably what you need to do. The 2 MACs are the 
> same (compatible) or different? As that only works if they are 
> different. I suppose you need to only check the MAC the PHY is connected 
> to.
> 
> I think the ideal implementation would be the MAC driver calling some 
> phy API to apply the quirk, and then that gets passed on to the phy 
> driver. Surely this isn't the first case of a MAC-PHY combination 
> needing to go fiddle with some special setting.

I was also hoping to find something like that, but I couldn't really
find it. However, I will try looking in that direction. At least we can
identify the broken MAC via the compatible string of the MAC driver, as
they use two different compatibles: 'fsl,imx8mp-fec' (fine) and
'nxp,imx8mp-dwmac-eqos' (affected by the errata).

Regards,
Stefan

