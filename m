Return-Path: <devicetree+bounces-9484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E95457CD380
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 07:23:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02E601C209C3
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 05:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 744602F2B;
	Wed, 18 Oct 2023 05:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1982543112
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 05:23:48 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id D27B5BA;
	Tue, 17 Oct 2023 22:23:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 45DE78027;
	Wed, 18 Oct 2023 05:23:47 +0000 (UTC)
Date: Wed, 18 Oct 2023 08:23:45 +0300
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
Message-ID: <20231018052345.GK34982@atomide.com>
References: <20230705190324.355282-1-andreas@kemnade.info>
 <20230705190324.355282-2-andreas@kemnade.info>
 <7d58d52d-2087-45af-b29e-2515b63ead13@gmail.com>
 <20230920063353.GQ5285@atomide.com>
 <dac768d2-2c66-4d6b-b3d3-d1ef69103c76@gmail.com>
 <20230921121626.GT5285@atomide.com>
 <20231006102348.GK34982@atomide.com>
 <20231006213003.0fbac87a@aktux>
 <20231007062518.GM34982@atomide.com>
 <20231015234815.637f5c14@aktux>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231015234815.637f5c14@aktux>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

* Andreas Kemnade <andreas@kemnade.info> [231015 21:48]:
> On Sat, 7 Oct 2023 09:25:18 +0300
> Tony Lindgren <tony@atomide.com> wrote:
> > If so then the following might be a fix, not familiar with runtime PM
> > done by ASoC though and not sure if some kind of locking would be
> > needed here.
> > 
> just checked: that one fixes the regression. runtime suspends again.

OK good to hear. So is there some fixes tag for this one or where did this
start happening? I'm not quite following how the dropping of platform data
could have affected this, maybe it just hid the problem because of
returning early?

Regards,

Tony

