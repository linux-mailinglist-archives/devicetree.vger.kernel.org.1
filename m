Return-Path: <devicetree+bounces-9935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B347CF0F1
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 09:18:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44C311C209BE
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 07:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAE31CA56;
	Thu, 19 Oct 2023 07:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0698A46684
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 07:18:42 +0000 (UTC)
Received: from mail.andi.de1.cc (mail.andi.de1.cc [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F7839F;
	Thu, 19 Oct 2023 00:18:41 -0700 (PDT)
Received: from p200300ccff1c8300db3b230b99381d47.dip0.t-ipconnect.de ([2003:cc:ff1c:8300:db3b:230b:9938:1d47] helo=akair)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qtNIj-005BiP-OC; Thu, 19 Oct 2023 09:18:37 +0200
Date: Thu, 19 Oct 2023 09:18:35 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Stephen Boyd <sboyd@kernel.org>
Cc: bcousson@baylibre.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
 dmitry.torokhov@gmail.com, krzysztof.kozlowski+dt@linaro.org,
 lee@kernel.org, linux-clk@vger.kernel.org, linux-input@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, tony@atomide.com
Subject: Re: [PATCH v4 4/5] clk: twl: add clock driver for TWL6032
Message-ID: <20231019091835.6d8df469@akair>
In-Reply-To: <8c63372175266d42efbfca0104e19a14.sboyd@kernel.org>
References: <20230916100515.1650336-1-andreas@kemnade.info>
	<20230916100515.1650336-5-andreas@kemnade.info>
	<8c63372175266d42efbfca0104e19a14.sboyd@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Am Wed, 18 Oct 2023 18:20:22 -0700
schrieb Stephen Boyd <sboyd@kernel.org>:

> Quoting Andreas Kemnade (2023-09-16 03:05:14)
> > The TWL6032 has some clock outputs which are controlled like
> > fixed-voltage regulators, in some drivers for these chips
> > found in the wild, just the regulator api is abused for controlling
> > them, so simply use something similar to the regulator functions.
> > Due to a lack of hardware available for testing, leave out the
> > TWL6030-specific part of those functions.
> > 
> > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > ---  
> 
> Did you want me to pick this up in clk tree?
> 
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> 
Well, Lee has picked up 1-3 of this series, so I think it is a good idea
if you take it. I do not think it will make things any easier if it goes
through Tony's tree because part 5 is a bit tricky.
If picked up independently (of the whole set and not only part 4), there
will be a range of commits were WLAN will not work at all instead of
basically working randomly by the clock is enabled for some reason (can
happen if warm-booted from the vendor kernel).

So IMHO for part 5 we have to decide wether to decide if above is
considered to break bisectability and take the patch for 6.8 or
ignore that and take it for 6.7.

But no matter how we decide, that should not affect the route for this
part 4. So it is a good idea to have it through the clk tree.

Regrads,
Andreas

