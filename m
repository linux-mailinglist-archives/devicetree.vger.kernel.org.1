Return-Path: <devicetree+bounces-133166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E449F9889
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 18:48:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 007F97A4C62
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 17:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30422228C96;
	Fri, 20 Dec 2024 17:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=uni-heidelberg.de header.i=@uni-heidelberg.de header.b="p2gD1cFR"
X-Original-To: devicetree@vger.kernel.org
Received: from relay3.uni-heidelberg.de (relay3.uni-heidelberg.de [129.206.100.213])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59FF21B1B5;
	Fri, 20 Dec 2024 17:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.206.100.213
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734715306; cv=none; b=GGr9i5G0hmQ9Y3f5mAZsu6rd9P69h40DmtiBpetpr7W6n420ciipK+VNOy0jkaXnAJ52oclgQexlP5rULnIRRxfxlRiPAheoGgX1zFp5Q8cwx5AAG59EKY+6LG7NgzQRTq+EylvENe2y8w5pjPSgC3nVP2ZXIo9G6vNqIeavJSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734715306; c=relaxed/simple;
	bh=0Iq/l1VCFWMzFCGzZtb+UJvIPEnIq0yAQf8ku6mfu/s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NRuqhKh3H9+xxFI45+H88VQQAgKUS5krzrZvMZhc36TFOCrAVYp97AXkxP2cRcToueeVmMAoBBbC4yjIPwWFWUKMwT8LbI93H1LeZE6Til7NHT6nT/vBo18ztXEgUkYf4ubF3sIG05nC52CbJSpI49CBjtPp3v4zjVfu+nwrBuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=iwr.uni-heidelberg.de; spf=none smtp.mailfrom=lemon.iwr.uni-heidelberg.de; dkim=pass (2048-bit key) header.d=uni-heidelberg.de header.i=@uni-heidelberg.de header.b=p2gD1cFR; arc=none smtp.client-ip=129.206.100.213
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=iwr.uni-heidelberg.de
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=lemon.iwr.uni-heidelberg.de
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=uni-heidelberg.de; i=@uni-heidelberg.de; q=dns/txt;
  s=s1; t=1734715304; x=1766251304;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=0Iq/l1VCFWMzFCGzZtb+UJvIPEnIq0yAQf8ku6mfu/s=;
  b=p2gD1cFRAjnTOJ8IUbFBExb8QekulVT+bagOJWpit9W77jh3Kd00mIDr
   yny3PhRA66sBaoIi6j38YcMlBRPIp4pRp+3gdZ2q4boKKSTNBeFK9dGeC
   8dGgQItpHSKo6hGkJ4HnoEWHufERCbEX2mmzvEf05P2LBWE0Sq/uWtTD4
   /t+zRNkGJG9MrxKXXopPD6cBIMqXycDAjo0X0qLZo1syGwJpn6puv/OH8
   ygxvEQhST9R4EWFzy15ATu5BGMqD9mqU0x4W+SO72LRBNASVqqmbtbh39
   ofVlAI2I4ydjLKtdbG+Q/6U17Db6cfafrO+HUXWXHrwPdZooHip5gHJ+C
   g==;
X-CSE-ConnectionGUID: HCj2TTxGSZSBRJGVLgyuww==
X-CSE-MsgGUID: zVamI+oyQ2u6XGS8KNPj7A==
X-IPAS-Result: =?us-ascii?q?A2BpBACkpmVn/1BqzoFagQmBU4l6kXGSNY1wAQEBAQEBA?=
 =?us-ascii?q?QEBCUQEAQGPdSg3Bg4BAgQBAQEBAwIDAQEBAQEBAQEOAQEGAQEBAQEHBYEhh?=
 =?us-ascii?q?giGWgEBBAEjMCYFCwsOCgICJgICFEiFViOwLXqBMoEB3jOBSiOBGi6Fa4JjA?=
 =?us-ascii?q?YVrhHc2gVVEgRQBgyo+hBoLg3k6gi8EgjhMgkqDSZ5LUnt4LAFVExcLBwWBK?=
 =?us-ascii?q?R8rA4EVggWBWwU2Cj06ghBpSTcCDQI2giB8gk2CW4I9hGGEV4YagheBawMDF?=
 =?us-ascii?q?hIBgVIdQAMLbT03FBukR4EuQJZJr0s0B4I4gWWBYwyfVwQWM5dRkwGYe6krg?=
 =?us-ascii?q?X1RgS4zGiSDN1EZD8s+gTMCBwsBAQMJjy6BfQEB?=
IronPort-Data: A9a23:6QqcLq81VmrLGmNZRIUoDrUDoXmTJUtcMsCJ2f8bNWPcYEJGY0x3x
 zQWDD+COveCZWWjf4xxYd++8xtUvZDXy4U1QQdspH9EQiMRo6IpJ/zAcxiqb33ORiHgoOCLy
 +1EN7Es+ehtFie0Si+Fa+Wn9T8mk/nTGtIQMcacUghpXwhoVSw9vhxqnu89k+ZAjMOwa++3k
 YuaT/b3Zhn8gVaYDkpOs/jf8Uk15Kyo0N8llgVWic5j7Qe2e0Y9Ucp3yZGZdxPQXoRSF+imc
 OfPpJnRErTxpkpF5nuNy94XQ2VSKlLgFVHmZkl+A8BOtiN/Shkaic7XAha8hXB/0F1ll/gpo
 DlEWAfZpQ0BZsUgk8xFO/VU/r0X0aBuoNf6zXaDXcO772bEKUfQ09pVPnocB683xMJ4EHxR6
 qlNQNwNRkjra+OexL++Te8qh9s5atTtPcYft3BswDXTAOwpB5zOK0nIzYYCjXFq3p4IRK6AI
 ZpBAdZsRE2ojxlnOlMeFZ8ktOOlg375NTxHshSIo6ty42XSwAF12rX3P5zZd7RmQO0PxBjG+
 TyWpjmR7hcyJuKWzBvG9WOV3PKRrQzACKE0LL/n36s/6LGU7jZKU0xLDgXTTeOColOhRvpeI
 EES/TU/660/nGSiSNXnUlugumyVoRcGUvJZCeh84waIooL07hycD24CCBpIddE8nNIwRHkq2
 16FktfjCCZg9rGYIVqH8b2UhTC/Iy4YKSkFfyBsZQgf8dqgrJ0bjR/VSNtnVqmvgbXdEjb2x
 CrJoDQWhLgJi8MPkaKh8jjvnD+qvbDCVQ84oALNUQqN7A5jYoOnIZer81HR4P1oI4OQT13Ht
 38B8+CF5eUTAJWljyyKROEEGr3v4OyKWBXYgFhyD9wo7THo+HO5e41UyDV/P1tydMcCdyXgb
 ELatUVW/pA7FH+ra7JnJpmsDdQr5azhDsj+EPTVaMdeJJR8amev8CxwZEWdw3rgnWAynqwlf
 5SWa8ChCTAdE6sP5D63QfoNlLwm3CYzwUvNSp3hiReqy7yTYDiSU7htDbeVRuQ06aSC5gTK6
 ZBCMcrPyxheXOD6aCTN/sgfIDjmMETXG7jWgM4NStKTDTFUI0sbKdDv5bwwZpN6yvE9evjzw
 lmxXUpRyVzajHLBKBmXZn0LVF8JdcslxZ7cFXFwVWtEy0QejZCTALA3W7ZfQFXK3OhuyPlyC
 fgaYYOdBPUKSjnG9zkZZ5Tno8pueXxHZD5i3QL/OFDTnLY5GWQlH+MImSO1rEEz4tKf75dWn
 lFZ/lqzrFpqb10K4DzqQPyu1UitmnMWhfh/WUDFSvEKJx6wrtMxcXKs0aNmSy3pFfkl7mbAv
 +pxKUpEzdQhX6domDU0rfnf9tzzQ4OS4GILRjmBhVpJCcUq1jD6mt4dC7jgkcH1SWX15qi4f
 uRJxvzgeP0KnVpHt4BxCbkD8E7Nz4WHmlKbpyw6dEj2g6ODVuo4fiDbhZYV6sWgBNZx4GOLZ
 65GwfECUZ3hBS8vOAR5yNYNBghb6cwppw==
IronPort-HdrOrdr: A9a23:5a0Ym628iWh+HfbqXUXgnQqjBLAkLtp133Aq2lEZdPUzSKOlfq
 GV8Mjyt3fP4wr5PUtLpTnuAsm9qB/nmKKdpLNhWItKIjOW3FdAXbsN0WKK+VSJJ8S9zJ8/6U
 4KSclD4bPLfDpHZL7BkW6FL+o=
X-Talos-CUID: 9a23:0Q5PvGOp2g60xe5DeAJlrnIoCu8eQEb39lX/HWu3GHt2V+jA
X-Talos-MUID: 9a23:0h/UigUusDc3oIPq/C3SjTRDd8B52v6zVnAiqsUlnfGGagUlbg==
X-IronPort-Anti-Spam-Filtered: true
Received: from lemon.iwr.uni-heidelberg.de ([129.206.106.80])
  by relay3.uni-heidelberg.de with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 20 Dec 2024 18:21:35 +0100
Received: from hlauer by lemon.iwr.uni-heidelberg.de with local (Exim 4.92)
	(envelope-from <hlauer@lemon.iwr.uni-heidelberg.de>)
	id 1tOggw-0002aC-JX; Fri, 20 Dec 2024 18:21:34 +0100
Date: Fri, 20 Dec 2024 18:21:34 +0100
From: Hermann Lauer <Hermann.Lauer@iwr.uni-heidelberg.de>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Hermann.Lauer@uni-heidelberg.de, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: Re: [PATCH v2] ARM: dts: sun8i-r40: remove unused GPIO regulator
Message-ID: <20241220172134.GA9899@lemon.iwr.uni-heidelberg.de>
References: <20241213195433.GA1568@lemon.iwr.uni-heidelberg.de>
 <20241214011612.4fd9e4bf@minigeek.lan>
 <e61c927a4dfe909f4ede4a07dffd9dcd762875be.camel@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <e61c927a4dfe909f4ede4a07dffd9dcd762875be.camel@icenowy.me>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi,

On Sat, Dec 14, 2024 at 03:13:23PM +0800, Icenowy Zheng wrote:
> > CC:ing Icenowy, who added the regulator originally, with commit
> > 0ca12c1ee43c ("ARM: sun8i: r40: add 5V regulator for Banana Pi M2
> > Ultra").
...
> > Icenowy: can you clarify what "newer" version this was referring to
> > in
> > that commit message? That commit in itself doesn't seem to do
> > anything,
> > as the regulator isn't referenced, and it's not always-on. It's only
> > later when the USB nodes were added that it got used?
> > So was PH23 really necessary? As Hermann reports, setting PH23 on a
> > v1.1
> > makes it reboot.

diagnosed that futher now: PH23 is indeed powering the USB-Ports. Whats
happens ist that I powered the board through the micro USB port which turned
out to be limited to 900mA in axp221s. So the setting of reg 0x30 is
the real culprit: Setting the two lowest bits in this register allows
unlimited power over micro usb.

In U-Boot:
 i2c dev 0
 i2c mw 34 30 63

Or power the board through the barrel connector.

In all cases the kernel turns on USB-A power and boots.

> I am not sure, the schematics I have here (which says V1.0) have PH23
> as NC... Well, the M2 Berry schematics have PH23 as 5V EN, maybe I
> messed up M2U and M2B when developing?

While V1.0 didn't need the PH23 setup due to nc, V1.1 needs it. Maybe V1.1
was already on the horizon...

Thanks for the insights and your support, guys.

With seasons greetings
  Hermann

