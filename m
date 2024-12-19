Return-Path: <devicetree+bounces-132440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5762D9F71A6
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 02:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B088188A149
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 01:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43E023594B;
	Thu, 19 Dec 2024 01:19:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABAC21E4BE;
	Thu, 19 Dec 2024 01:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734571177; cv=none; b=CijaVYo4WjqoL7xmUZV+cBLi5l9cif2TkurkuavwRIF0MASVqiHXQDh2kt+ErrGss2NiWVruikVQVlmKT+8HYAXfKRa1h4eIG8LzjDxVCF0vlzZWJrwcawk3GJTrnhPdmqMAIHZlj9GnjSJkQ9NcBIB64zqigc6PPJWWddGyjv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734571177; c=relaxed/simple;
	bh=I0SewFA1VoefEY975OIzBb5s2oanHjaAzU4Di+5KW3U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oqnSGukAmfl/gOON84ii7T34HW1++rN9uRGMwu5X7cOwLe8rIBXnaYdvxxUDih091fHp3yVVRwevMyl8FEtLw4y1uxKIttXEt9DpzTwCw73Eq0kVAcMFYKSbjBKxqFTJyoQmpfui4m7AkasHgB0kDQX0hbTA+v+AjLTV5T64Lv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
Date: Thu, 19 Dec 2024 09:19:30 +0800
From: Yixun Lan <dlan@gentoo.org>
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	linux-riscv@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, cyy@cyyself.name,
	daniel.lezcano@linaro.org, tglx@linutronix.de,
	samuel.holland@sifive.com, anup@brainfault.org,
	gregkh@linuxfoundation.org, jirislaby@kernel.org, lkundrak@v3.sk,
	devicetree@vger.kernel.org, linux-serial@vger.kernel.org,
	linux-kernel@vger.kernel.org, Jesse Taube <mr.bossman075@gmail.com>,
	inochiama@outlook.com, zhangmeng.kevin@spacemit.com,
	jszhang@kernel.org, matthias.bgg@kernel.org, kevin.z.m@hotmail.com
Subject: Re: [PATCH v5 00/10] riscv: add initial support for SpacemiT K1
Message-ID: <20241219011930-GYA3472859@gentoo>
References: <20240730-k1-01-basic-dt-v5-0-98263aae83be@gentoo.org>
 <173395638199.1729195.1529576042123666894.git-patchwork-notify@kernel.org>
 <20241212101901-GYA2292414@gentoo>
 <20241215-reward-nutlike-23f481fb1b75@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241215-reward-nutlike-23f481fb1b75@spud>

Hi Conor:

On 15:04 Sun 15 Dec     , Conor Dooley wrote:
> On Thu, Dec 12, 2024 at 06:19:01PM +0800, Yixun Lan wrote:
> > Hi Conor:
> > 
> > On 22:33 Wed 11 Dec     , patchwork-bot+linux-riscv@kernel.org wrote:
> > > Hello:
> > > 
> > > This series was applied to riscv/linux.git (fixes)
> > > by Conor Dooley <conor.dooley@microchip.com>:
> > > 
> > > On Tue, 30 Jul 2024 00:28:03 +0000 you wrote:
> > > > SpacemiT K1 is an ideal chip for some new extension such as RISC-V Vector
> > > > 1.0 and Zicond evaluation now. Add initial support for it to allow more
> > > > people to participate in building drivers to mainline for it.
> > > > 
> > > > This kernel has been tested upon Banana Pi BPI-F3 board on vendor U-Boot
> > > > bootflow generated by Armbian SDK[1] and patched OpenSBI[2] to enable
> > > > Zicboz, which does not in the vendor dts on its U-Boot. Then successfully
> > > > booted to busybox on initrd with this log[3].
> > > > 
> > > > [...]
> > > 
> > > Here is the summary with links:
> > >   - [v5,01/10] dt-bindings: vendor-prefixes: add spacemit
> > >     https://git.kernel.org/riscv/c/7cf3e9bfc63d
> > If I understand correctly, only patch [01/10] of this series was accepted
> > to 6.13-rc1
> > 
> > for the rest of patches, they would be expected to go through SpacemiT's
> > SoC tree? which should I take care of them.. so if no objection, I'd like to
> > queue them at branch k1/dt-for-next [1] first, we might rebase or revert if
> > something happens before merging (since the clock driver is still under review)
> > 
> > Let me know what you think..
> 
> Sure. I had grabbed the first patch because a couple trees needed the

No problem, thanks for helping on this

> vendor prefix for peripheral drivers. How is the clock driver getting
> on? Do you think it is close to being merged?

The clock driver's review is still on-going, the biggest concern is about
the mix clock implementation [1], which isn't decent, and Haylen's working on
to have a better version, I'd hope we can catch this in 6.14's merge window..

But, in the worst case if we have to postpone clock to next merge window,
would you think it's ok to push the basic dts and pinctrl dts first?
IMHO, they have no hard dependency on clock driver, and pushing them
first would simplify the future developement..

http://lore.kernel.org/r/Z2LBsQ7a3T3mElLl@ketchup [1]

-- 
Yixun Lan (dlan)
Gentoo Linux Developer
GPG Key ID AABEFD55

