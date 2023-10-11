Return-Path: <devicetree+bounces-7779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4BE7C5727
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:40:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D1F21C20D64
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 14:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04279211A;
	Wed, 11 Oct 2023 14:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1473F20310
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 14:40:11 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 29436B6;
	Wed, 11 Oct 2023 07:40:10 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0AF4106F;
	Wed, 11 Oct 2023 07:40:50 -0700 (PDT)
Received: from bogus (unknown [10.57.93.106])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDF843F7A6;
	Wed, 11 Oct 2023 07:40:07 -0700 (PDT)
Date: Wed, 11 Oct 2023 15:38:36 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Arnd Bergmann <arnd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Yang Yang <yang.yang29@zte.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Sebastian Reichel <sre@kernel.org>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] of: rexport of_find_next_cache_node()
Message-ID: <20231011143836.q4c5rf6eqb2i6p53@bogus>
References: <20231011131431.2559029-1-arnd@kernel.org>
 <20231011135905.hveat7viflqluccw@bogus>
 <dccc0487-f254-4429-a6ab-fed037daae50@app.fastmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <dccc0487-f254-4429-a6ab-fed037daae50@app.fastmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 04:05:47PM +0200, Arnd Bergmann wrote:
> On Wed, Oct 11, 2023, at 15:59, Sudeep Holla wrote:
> > On Wed, Oct 11, 2023 at 03:14:08PM +0200, Arnd Bergmann wrote:
> >> From: Arnd Bergmann <arnd@arndb.de>
> >> 
> >> This function is now called from a cpufreq driver, but that breaks the
> >> build when the caller is in a loadable module, because of a missing
> >> export:
> >> 
> >> ERROR: modpost: "of_find_next_cache_node" [drivers/cpufreq/qcom-cpufreq-nvmem.ko] undefined!
> >> 
> >> Export this as a GPL-only symbol, like the other related functions in
> >> this file.
> >> 
> >> Fixes: 7683a63c08ff5 ("cpufreq: qcom-nvmem: create L2 cache device")
> >> Fixes: a3e31b4588443 ("of: Move definition of of_find_next_cache_node into common code.")
> >
> > I am bit confused as I see commit a3e31b4588443 didn't drop the export.
> > So how is this change fixing that commit ?
>
> My mistake, I was looking for the commit that initially introduced
> the function, but didn't notice that this just moved it from powerpc.
>
> I could have used "Fixes: e523f723d69cd ("powerpc: Add
> of_find_next_cache_node()")", but it's probably best to just
> leave that line out entirely.
>

Yes I was thinking to drop it as it is quite old commit(both a3e31b4588443 and
e523f723d69cd) and I don't see any point in merging this to all the concerned
stable trees as they must not have this new user.

That said it is not a complex change, so I am fine either way, just thought
of raising it in case it was not intentional.

--
Regards,
Sudeep

