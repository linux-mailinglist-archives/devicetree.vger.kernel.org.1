Return-Path: <devicetree+bounces-41202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B09852BB7
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C86A81C22881
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605A41B298;
	Tue, 13 Feb 2024 08:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="txFjgBz+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1A43175AC
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707814596; cv=none; b=Fe1ZQ2UIROAuBuinzlZiYzNYAEpfDfzr+lHxzCILN9pOPxuKhs0IvMlJGyf0fYQXAsa58FJJZcUhNM6g1GBKaI5HBfQSh1/SSm/Um9Iviynb4/03p5LcOtH59Q3xPMXE063FXLZOfoV24+qz3kHRPlgGUw3e8zLpQ45ndlU8gMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707814596; c=relaxed/simple;
	bh=TakGXTNQRkMesSg/PE7LknQ/w52dBfFxSThPEQtqpMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=flnUI0MhzLxpKSTGlbTr+LzbTIPOEjtu0zPPimfhxx3Kas2DxFfaiIQnkmiWkrih2TkWXKQGzvXauw817nyrxnadVZIcj6fI8G9RCmR3Xwr6+muf7jEtqqWP9ivk8aS966AzxaRmdQhzKBR8cA8y+CfIvsJmts5ZC/zN5hepn5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=txFjgBz+; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id 58E6460505;
	Tue, 13 Feb 2024 08:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1707814594;
	bh=TakGXTNQRkMesSg/PE7LknQ/w52dBfFxSThPEQtqpMA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=txFjgBz+ooekDORkXwPGPXsIBcfGMK6WAYu9qDKUzYqsf3Bik9UggUyQDoyZFNJro
	 J2MqFZ91fnGD55iABTa41PpaQYW8tianqk8rg+3heNWTEMKp9Dpft+mbxno6ndnbVj
	 WgcFEseKO/q1cGqCsU8AFWjmUllRr/lVtwuxzUPDcfGMUqo7pLoxNk2lyIwsxOuTac
	 O4zsAUFLymEbYiHrza/3hRJ1Hmu/wyl7mK5XLb9euWcv1NBokEPhEVBmTdkip/FCWv
	 fn0lyz9uYc8AiTHHYnUpklrLN4XWLzyeOSuTdJQDRxVdi8W6+ESbBdyAN66OA6wLgF
	 AnMiRDPS7wpkQ==
Date: Tue, 13 Feb 2024 10:56:19 +0200
From: Tony Lindgren <tony@atomide.com>
To: "Raghavendra, Vignesh" <vigneshr@ti.com>,
	Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Dhruva Gole <d-gole@ti.com>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for
 wkup_uart0
Message-ID: <20240213085619.GF52537@atomide.com>
References: <20230912111215.18415-1-tony@atomide.com>
 <170368552643.1332094.7883858507182654481.b4-ty@ti.com>
 <e28a4f16-f9a8-499a-a6a3-7acef0e0aa10@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e28a4f16-f9a8-499a-a6a3-7acef0e0aa10@ti.com>

* Raghavendra, Vignesh <vigneshr@ti.com> [231227 15:22]:
> 
> 
> On 12/27/2023 7:29 PM, Vignesh Raghavendra wrote:
> > 
> > On Tue, 12 Sep 2023 14:12:15 +0300, Tony Lindgren wrote:
> >> The devices in the wkup domain are capable of waking up the system from
> >> suspend. We can configure the wkup domain devices in a generic way using
> >> the ti-sysc interconnect target module driver like we have done with the
> >> earlier TI SoCs.
> >>
> >> As ti-sysc manages the SYSCONFIG related registers independent of the
> >> child hardware device, the wake-up configuration is also set even if
> >> wkup_uart0 is reserved by sysfw.
> >>
> >> [...]
> > 
> > Applied, thanks!
> > 
> > [1/1] arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for wkup_uart0
> >       commit: 86224524b52a8efba26f920736d08c8bfdd22d87
> > 
> 
> 
> Please ignore above. I meant to pick v4. Sorry for the noise!

So we need to add ti,no-reset-on-init as noted by Markus. As I'm not
seeing this in Linux next, I'll send out v5 patch. If you need an
incremental fix I can do that too naturally.

Regards,

Tony

