Return-Path: <devicetree+bounces-8393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC78D7C7F51
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:04:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 38447B20910
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 08:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90E421078A;
	Fri, 13 Oct 2023 08:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5EA10784
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:03:57 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0A758BF;
	Fri, 13 Oct 2023 01:03:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 73D2080A2;
	Fri, 13 Oct 2023 08:03:56 +0000 (UTC)
Date: Fri, 13 Oct 2023 11:03:55 +0300
From: Tony Lindgren <tony@atomide.com>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Tero Kristo <kristo@kernel.org>, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-omap@vger.kernel.org,
	Andreas Kemnade <andreas@kemnade.info>,
	=?utf-8?B?UMOpdGVy?= Ujfalusi <peter.ujfalusi@gmail.com>,
	"H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH 1/2] clk: ti: Fix missing omap4 mcbsp functional clock
 and aliases
Message-ID: <20231013080355.GH34982@atomide.com>
References: <20231011071856.11594-1-tony@atomide.com>
 <879d697a9b1a816c75566c111c28ae01.sboyd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <879d697a9b1a816c75566c111c28ae01.sboyd@kernel.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

* Stephen Boyd <sboyd@kernel.org> [231012 22:42]:
> Quoting Tony Lindgren (2023-10-11 00:18:55)
> > We are using a wrong mcbsp functional clock. The interconnect target module
> > driver provided clock for mcbsp is not same as the mcbsp functional clock
> > known as the gfclk main_clk. The mcbsp functional clocks for mcbsp should
> > have been added before we dropped the legacy platform data.
> > 
> > Additionally we are also missing the clock aliases for the clocks used by
> > the audio driver if reparenting is needed. This causes audio driver errors
> > like "CLKS: could not clk_get() prcm_fck" for mcbsp as reported by Andreas.
> > The mcbsp clock aliases too should have been added before we dropped the
> > legacy platform data.
> > 
> > Let's add the clocks and aliases with a single patch to fix the issue.
> > 
> > Fixes: 349355ce3a05 ("ARM: OMAP2+: Drop legacy platform data for omap4 mcbsp")
> > Reported-by: Andreas Kemnade <andreas@kemnade.info>
> > Reported-by: Péter Ujfalusi <peter.ujfalusi@gmail.com>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> 
> Acked-by: Stephen Boyd <sboyd@kernel.org>

Thanks applying both patches into my fixes branch.

Regards,

Tony

