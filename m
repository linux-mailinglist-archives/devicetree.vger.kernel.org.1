Return-Path: <devicetree+bounces-6646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 645867BC4FE
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 08:25:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A88D1C20957
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 06:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A2446AA8;
	Sat,  7 Oct 2023 06:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39E75CAF
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 06:25:21 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 3BBDDBF;
	Fri,  6 Oct 2023 23:25:20 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 7E0F980E0;
	Sat,  7 Oct 2023 06:25:19 +0000 (UTC)
Date: Sat, 7 Oct 2023 09:25:18 +0300
From: Tony Lindgren <tony@atomide.com>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: =?utf-8?B?UMOpdGVy?= Ujfalusi <peter.ujfalusi@gmail.com>,
	bcousson@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz,
	tiwai@suse.com, jarkko.nikula@bitmer.com, dmitry.torokhov@gmail.com,
	linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH 1/3] ASoC: ti: omap-mcbsp: Ignore errors for getting
 fck_src
Message-ID: <20231007062518.GM34982@atomide.com>
References: <20230705190324.355282-1-andreas@kemnade.info>
 <20230705190324.355282-2-andreas@kemnade.info>
 <7d58d52d-2087-45af-b29e-2515b63ead13@gmail.com>
 <20230920063353.GQ5285@atomide.com>
 <dac768d2-2c66-4d6b-b3d3-d1ef69103c76@gmail.com>
 <20230921121626.GT5285@atomide.com>
 <20231006102348.GK34982@atomide.com>
 <20231006213003.0fbac87a@aktux>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006213003.0fbac87a@aktux>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

* Andreas Kemnade <andreas@kemnade.info> [231006 19:30]:
> On Fri, 6 Oct 2023 13:23:48 +0300
> Tony Lindgren <tony@atomide.com> wrote:
> > Here's what I think the regression fix for omap4 clocks would be, the
> > old main_clk is not the same as the module clock that we get by default.
> > If this looks OK I'll do a similar fix also for omap5.
> > 
> > Or is something else also needed?
> > 
> 
> hmm,
> audio output works, the waring is away, but something new is here:

OK good to hear it works, I'll send out fixes for omap4 and 5, seems
the runtime PM warning is something different.

> omap-mcbsp 40124000.mcbsp: Runtime PM usage count underflow!
> # cat /sys/bus/platform/devices/40124000.mcbsp/power/runtime_status 
> active
> 
> even with no sound.

I guess if the mcbsp instance is not used, runtime PM is enabled but
pm_runtime_resume_and_get() is never called by ASoC?

If so then the following might be a fix, not familiar with runtime PM
done by ASoC though and not sure if some kind of locking would be
needed here.

Regards,

Tony

8< ------------------------
diff --git a/sound/soc/ti/omap-mcbsp.c b/sound/soc/ti/omap-mcbsp.c
index fdabed5133e83..b399d86f22777 100644
--- a/sound/soc/ti/omap-mcbsp.c
+++ b/sound/soc/ti/omap-mcbsp.c
@@ -74,14 +74,16 @@ static int omap2_mcbsp_set_clks_src(struct omap_mcbsp *mcbsp, u8 fck_src_id)
 		return 0;
 	}
 
-	pm_runtime_put_sync(mcbsp->dev);
+	if (mcbsp->active)
+		pm_runtime_put_sync(mcbsp->dev);
 
 	r = clk_set_parent(mcbsp->fclk, fck_src);
 	if (r)
 		dev_err(mcbsp->dev, "CLKS: could not clk_set_parent() to %s\n",
 			src);
 
-	pm_runtime_get_sync(mcbsp->dev);
+	if (mcbsp->active)
+		pm_runtime_get_sync(mcbsp->dev);
 
 	clk_put(fck_src);
 

