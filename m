Return-Path: <devicetree+bounces-8716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C2B7C9C01
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 23:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D043B20BC8
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 21:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A34D14A89;
	Sun, 15 Oct 2023 21:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79FB15D4
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 21:48:33 +0000 (UTC)
Received: from mail.andi.de1.cc (unknown [IPv6:2a02:c205:3004:2154::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D04E8C1;
	Sun, 15 Oct 2023 14:48:31 -0700 (PDT)
Received: from p5dc58b95.dip0.t-ipconnect.de ([93.197.139.149] helo=aktux)
	by mail.andi.de1.cc with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <andreas@kemnade.info>)
	id 1qs8y9-0052jb-1N; Sun, 15 Oct 2023 23:48:17 +0200
Date: Sun, 15 Oct 2023 23:48:15 +0200
From: Andreas Kemnade <andreas@kemnade.info>
To: Tony Lindgren <tony@atomide.com>
Cc: =?UTF-8?B?UMOpdGVy?= Ujfalusi <peter.ujfalusi@gmail.com>,
 bcousson@baylibre.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
 jarkko.nikula@bitmer.com, dmitry.torokhov@gmail.com,
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH 1/3] ASoC: ti: omap-mcbsp: Ignore errors for getting
 fck_src
Message-ID: <20231015234815.637f5c14@aktux>
In-Reply-To: <20231007062518.GM34982@atomide.com>
References: <20230705190324.355282-1-andreas@kemnade.info>
	<20230705190324.355282-2-andreas@kemnade.info>
	<7d58d52d-2087-45af-b29e-2515b63ead13@gmail.com>
	<20230920063353.GQ5285@atomide.com>
	<dac768d2-2c66-4d6b-b3d3-d1ef69103c76@gmail.com>
	<20230921121626.GT5285@atomide.com>
	<20231006102348.GK34982@atomide.com>
	<20231006213003.0fbac87a@aktux>
	<20231007062518.GM34982@atomide.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Tony,

On Sat, 7 Oct 2023 09:25:18 +0300
Tony Lindgren <tony@atomide.com> wrote:

> * Andreas Kemnade <andreas@kemnade.info> [231006 19:30]:
> > On Fri, 6 Oct 2023 13:23:48 +0300
> > Tony Lindgren <tony@atomide.com> wrote:  
> > > Here's what I think the regression fix for omap4 clocks would be, the
> > > old main_clk is not the same as the module clock that we get by default.
> > > If this looks OK I'll do a similar fix also for omap5.
> > > 
> > > Or is something else also needed?
> > >   
> > 
> > hmm,
> > audio output works, the waring is away, but something new is here:  
> 
> OK good to hear it works, I'll send out fixes for omap4 and 5, seems
> the runtime PM warning is something different.
> 
> > omap-mcbsp 40124000.mcbsp: Runtime PM usage count underflow!
> > # cat /sys/bus/platform/devices/40124000.mcbsp/power/runtime_status 
> > active
> > 
> > even with no sound.  
> 
> I guess if the mcbsp instance is not used, runtime PM is enabled but
> pm_runtime_resume_and_get() is never called by ASoC?
> 
> If so then the following might be a fix, not familiar with runtime PM
> done by ASoC though and not sure if some kind of locking would be
> needed here.
> 
just checked: that one fixes the regression. runtime suspends again.

Regards,
Andreas

