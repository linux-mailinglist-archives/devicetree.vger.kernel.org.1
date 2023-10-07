Return-Path: <devicetree+bounces-6652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 672847BC548
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 08:58:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20B622813E7
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 06:58:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCE118489;
	Sat,  7 Oct 2023 06:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDA279EE
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 06:58:17 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id BE59DBD;
	Fri,  6 Oct 2023 23:58:15 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id 3CC73809E;
	Sat,  7 Oct 2023 06:58:15 +0000 (UTC)
Date: Sat, 7 Oct 2023 09:58:13 +0300
From: Tony Lindgren <tony@atomide.com>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Cc: Andreas Kemnade <andreas@kemnade.info>, bcousson@baylibre.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: omap3-gta04: Drop superfluous omap36xx
 compatible
Message-ID: <20231007065813.GR34982@atomide.com>
References: <20231004065323.2408615-1-andreas@kemnade.info>
 <12323F42-3611-4685-8981-F6A18C4A5862@goldelico.com>
 <20231004130353.01228376@aktux>
 <FF3A3F35-E264-4D28-AFAC-EFA2ADB69F40@goldelico.com>
 <20231004135449.591b3f6c@aktux>
 <42806B60-E48B-4AA9-B375-E9F65F59AB87@goldelico.com>
 <6B245439-F9FE-4931-A0DE-81F825BB5FE5@goldelico.com>
 <20231007064439.GN34982@atomide.com>
 <6D2A2AA0-759A-4AF8-967A-ED6FE2F6C1BB@goldelico.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6D2A2AA0-759A-4AF8-967A-ED6FE2F6C1BB@goldelico.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

* H. Nikolaus Schaller <hns@goldelico.com> [231007 06:54]:
> Hi Tony,
> 
> > Am 07.10.2023 um 08:44 schrieb Tony Lindgren <tony@atomide.com>:
> > 
> > * H. Nikolaus Schaller <hns@goldelico.com> [231004 12:50]:
> >> What about the PVR/SGX driver. This needs a compatible that can distinguish
> >> between the DM3725 and DM3730. The first is w/o SGX and the second one
> >> with. Having all summarized as omap3630 does not allow to load the
> >> PVR/SGX driver based on the board specific compatible entry.
> >> 
> >> AFAIR this was the original idea behind 
> >> 
> >> 	compatible = "goldelico,gta04", "ti,omap3630", "ti,omap36xx", "ti,omap3"; 
> > 
> > I think we already handle this, see drivers/bus/ti-sysc.c and search for
> > DIS_SGX and similar flags for other accelerators.
> 
> Ah, ok. This means that the kernel module isn't loaded if the flags of the chip
> are not available. Then we will indeed have no need to describe such variances
> in the DTS.
> 
> > So I think this patch is
> > safe to apply?
> 
> Looks so (especially as I only have omap3630 based devices with SGX).

OK applying into omap-for-v6.7/dt then.

Thanks,

Tony

