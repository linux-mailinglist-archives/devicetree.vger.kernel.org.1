Return-Path: <devicetree+bounces-244259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B088FCA2DAA
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 09:46:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E1EB3010FC4
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 08:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 513FE307AC5;
	Thu,  4 Dec 2025 08:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BLm/MtBQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834251DD543
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 08:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764838009; cv=none; b=GH+ID4AqPje5SbKAbERwKEfFyMghWnmPRdi0Ztmfbi4+uNMzEw0JvnbCeHYkniFPofOlUmaHo4RBiWyaCz5V6ESALwJds21Tg7zRpAhMBPmeNRstyJrkMxW+9qPez0mbuQg+O8I87XyY8wSQgIDfsi/V4UtdJdIJA96+LdYT4Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764838009; c=relaxed/simple;
	bh=5MsyoJKTr4eF88k1DWmG9hWB82ikFU21rjVWJP2KK98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tL7T27BniqYtboq1QDecHe5ch2KkDasgQqxnpAXsLnR4xFpfzm94n1EdA1hnh89DVekQf9hVOreXr9k6vBftBv8Cw/iTRU/XNSEuIMHXjqj0uWZYddloH/zCdPXC5lb193JrbXi4OWjMKRAXyf/Ysiv3z90/mKA61CKYNl2CReM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BLm/MtBQ; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477aa91e75dso787845e9.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 00:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764838006; x=1765442806; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gWkHWPtGsg+Xm2BeS7xJzUOT5NNUY3njkadNQnGgQus=;
        b=BLm/MtBQGTNRwRJRFyRi5jVzfmwabYWe7ze/aX0XawQwmTs2pbl6/Agw3K4FaCFZ5A
         dUVraczCDXpr5qmSGRFX6XFvKfCwrucKb5agcLsbOKMhN5lRRUjxorKuZ2c9Chbd0HPT
         91/CcV7cPGw9hNS4FKURR5tbWLZxArGEPC1xnJ/QERxtZOgDc10SGWiA5f+evL9iC7VB
         fmZMhKysrnoyYuOue76usX4b4OVjr5nRSOyZNhm/Cd/c3stdkQnawYFSF5nMgqlmFKjC
         VwSYoz+sSyxOSx8xmWhR7Atep90L2LViUrMadS9XtGo6xzOPaFZYLLqKinDD1273XV/0
         fdLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764838006; x=1765442806;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gWkHWPtGsg+Xm2BeS7xJzUOT5NNUY3njkadNQnGgQus=;
        b=rMovM6BTV19jauK13e9k7cUP2XoIgmgKvThr0kGRREYjwuHcfquQceyZULoPCSrZt9
         oepJbRsp9NivgiDProcOtePos79MhIByrfq7fusrk89HZQaYopnR5hFQj5UUoG8sEAx8
         r8DXYZBaSHPS5nk2pdh3UU9KgYEskECY0Nqg114ZOYTWv2l4wQxhlUkYoJTAtgRKv3ca
         Jbg5rbqZxnoYQN0xAu22XEJR/pMFW6ulIz3vAhobSzTZwtTrhmhtrK0wO5rqH30xcvfS
         hm/L4m0QV0hZv5AX2H4Z0c+QHJgCu9b+vrzayiwdb7W7otLtIOEdn1E1gIudCzd5DIJZ
         x4Ew==
X-Forwarded-Encrypted: i=1; AJvYcCUYbbxgSAeyXfF22DodMXj1QqQsUJcrsxuKkN4XPw4tjDdBQqMVRFyA/tGZvGnrU6uucgDraEQ4za1y@vger.kernel.org
X-Gm-Message-State: AOJu0YzoWB1lwMIrjz/pIMO0X0b46DZq0tvUmF0P/2JjdQHmxv7+tHHI
	arybHgxBwj6zhI9zqX6qLwXe01cXMbdliyzj9/6O1r1YmuiMBtZM+6JQ
X-Gm-Gg: ASbGnctF/c+XN0A1iXCrjMQfGejBPHB7CcMEI6ROru/AF2jJ4r9q7ZcOpZc56/0kK5Y
	cC+Qyql+7lezBFnk1/9yePjb4mfeTHMrwDwzsLKtMvnrkqjgFbcw/19sFkUAC1jm3GgbIqyTfgd
	w09lm0/1oXUcNGeW0H2EmUnjBzPZhA1i9NzsgeQj0cY/2QFZanRAQZ/RosJ4JUy1gK/aunpVbv+
	kE5E7cGTYKXSi5Rmghq4HMi7NLXWWrRO+70bbybfrvscryYaTEEBvzc6NfASTI1ORoW44TBzTqs
	TVpf+fqEZUL2HJ4yC4gXSJpcTntBpV79CJu/Up3cj/BNnvlkxkJ4jW2MTNgGXN5VNyMamvB/kbO
	ASWUuuL/vbCSQzjPaQVSWXQ0YNF7BtbJ3HiO+sw5SOu8xRADos3zColfAX0K2hW8XjKOwGtYE5y
	nF3Ic=
X-Google-Smtp-Source: AGHT+IFVTKZwo4vPlKApACc3OUpSIbjv0D99Exxz+P0II6Wh2U2WWgrCkhuhzseDjkfyaPOAoYhevA==
X-Received: by 2002:a5d:5f95:0:b0:42b:2c53:3ab9 with SMTP id ffacd0b85a97d-42f755890bamr2616039f8f.1.1764838005553;
        Thu, 04 Dec 2025 00:46:45 -0800 (PST)
Received: from skbuf ([2a02:2f04:d106:d600:dbb2:245d:2cf5:21d3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d2226d0sm1950044f8f.21.2025.12.04.00.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 00:46:44 -0800 (PST)
Date: Thu, 4 Dec 2025 10:46:41 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Frank Wunderlich <frankwu@gmx.de>,
	Avinash Jayaraman <ajayaraman@maxlinear.com>,
	Bing tao Xu <bxu@maxlinear.com>, Liang Xu <lxu@maxlinear.com>,
	Juraj Povazanec <jpovazanec@maxlinear.com>,
	"Fanni (Fang-Yi) Chan" <fchan@maxlinear.com>,
	"Benny (Ying-Tsan) Weng" <yweng@maxlinear.com>,
	"Livia M. Rosu" <lrosu@maxlinear.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH RFC net-next 0/3] net: dsa: initial support for MaxLinear
 MxL862xx switches
Message-ID: <20251204084641.fmha6irlfgkazsuw@skbuf>
References: <cover.1764717476.git.daniel@makrotopia.org>
 <20251203202605.t4bwihwscc4vkdzz@skbuf>
 <cover.1764717476.git.daniel@makrotopia.org>
 <20251203202605.t4bwihwscc4vkdzz@skbuf>
 <aTDGX5sUjaXzqRRn@makrotopia.org>
 <aTDGX5sUjaXzqRRn@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aTDGX5sUjaXzqRRn@makrotopia.org>
 <aTDGX5sUjaXzqRRn@makrotopia.org>

On Wed, Dec 03, 2025 at 11:23:11PM +0000, Daniel Golle wrote:
> On Wed, Dec 03, 2025 at 10:26:05PM +0200, Vladimir Oltean wrote:
> > How does this switch architecture deal with SFP cages? I see the I2C
> > controllers aren't accessible through the MDIO relay protocol
> > implemented by the microcontroller. So I guess using the sfp-bus code
> > isn't going to be possible. The firmware manages the SFP cage and you
> > "just" have to read the USXGMII Status Register (reg 30.19) from the
> > host? How does that work out in practice?
> 
> In practise the I2C bus provided by the switch IC isn't used to connect
> an SFP cage when using the chip with DSA. Vendors (Adtran,
> BananaPi/Sinovoip) rather use an I2C bus of the SoC for that.
> I suppose it is useful when using the chip as standalone switch.
> 
> The firmware does provide some kind of limited access to the PCS, ie.
> status can be polled, interface mode can be set, autonegotiation can be
> enabled or disabled, and so on (but not as nice as we would like it to
> be). In that way, most SFP modules and external PHYs can be supported.
> 
> See
> 
> https://github.com/frank-w/BPI-Router-Linux/commit/c5f7a68e82fe20b9b37a60afd033b2364a8763d8
> 
> In general I don't get why all those layers of abstraction are actually
> needed when using a full-featured OS on the host -- it'd be much better
> to just have direct access to the register space of the switch than
> having to deal with that firmware API (the firmware can also provide a
> full web UI, SNMP, a CLI interface, ... -- imho more of an obstacle than
> a desirable feature when using this thing with DSA).

I'm not sure I understand either, but is it possible that since the base
Ethernet switch IP was already MDIO-based, Maxlinear wanted to offer a
single programming interface for the entire SoC as visible from an
external host, so that's why they continued exposing the other stuff
that they did in MMD 30 (temperature sensor, LEDs, etc) using this North
Korean guided tour kind of approach.

I am noting that there also seems no way to control the 'GPIO' pins as
GPIO from the external host. No way to set a direction or a value on
them. They seem to be "GPIO" only for the microcontroller.

It also seems possible that Maxlinear studied what other MDIO-based DSA
drivers offer, and they wanted to keep things in line with that,
(over)simplifying access to resources to keep things tidy when they are
all driven from DSA.

Although for other switches like the NXP SJA1110 (which has a SPI-to-AHB
bridge to gain direct access into sub-devices that are also mapped in the
microcontroller's address space) I try to push for the MFD model to be
used, for better scalability outside of drivers/net/dsa/, I think that
trying to horseshoe MFD on top of the MxL86252, at least in the way exposed
by the MDIO slave API implemented by its microcontroller, would be
overkill and a big a mistake.

But before I give my OK on your driver design choice, could you:
- confirm that the Zephyr-based MDIO slave firmware is the single
  external register access method for these chips in production? No
  register access or other special communication protocol with the
  microcontroller over Ethernet, no secret SPI-to-AHB bridge that can be
  used when there is no firmware running? The firmware image is maintained
  by Maxlinear, and their customers can't customize it, right?
- make a list of all the subsystems you foresee this chip will register
  itself with? Essentially how will it drive the sub-devices that the
  firmware does give it access to.

So what I'm trying to gauge is how complex this driver will be in its
fully developed form, to make sure it won't suffer from early underdesign
issues.

