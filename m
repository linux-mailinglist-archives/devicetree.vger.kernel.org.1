Return-Path: <devicetree+bounces-8203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E8F7C71AF
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:38:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 666D71C20A56
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:38:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EC8327ECA;
	Thu, 12 Oct 2023 15:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7602773F
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:38:07 +0000 (UTC)
Received: from elvis.franken.de (elvis.franken.de [193.175.24.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 802BEC0;
	Thu, 12 Oct 2023 08:38:05 -0700 (PDT)
Received: from uucp by elvis.franken.de with local-rmail (Exim 3.36 #1)
	id 1qqxlA-0001sp-00; Thu, 12 Oct 2023 17:38:00 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 61D6EC0148; Thu, 12 Oct 2023 17:34:56 +0200 (CEST)
Date: Thu, 12 Oct 2023 17:34:56 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Vladimir Kondratiev <vladimir.kondratiev@intel.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 02/11] MIPS: use virtual addresses from xkphys for MIPS64
Message-ID: <ZSgSIPxrnx2FmHsk@alpha.franken.de>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
 <20231004161038.2818327-3-gregory.clement@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004161038.2818327-3-gregory.clement@bootlin.com>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 04, 2023 at 06:10:29PM +0200, Gregory CLEMENT wrote:
> From: Vladimir Kondratiev <vladimir.kondratiev@intel.com>
> 
> Now 64-bit MIPS uses 32-bit compatible segments KSEG0 and KSEG1
> to trivially map first 1/2 GByte of physical memory. This memory
> used to run kernel. This mean, one should have memory installed
> in this area in order for Linux to work.
> 
> Kconfig CONFIG_USE_XKPHYS introduced; it adds support for kernel
> to use virtual addresses from the XKPHYS segment for both cached
> and uncached access. XKPHYS allows to access 2^48 bytes of
> memory, thus allowing kernel to work with any memory
> configuration.

IMHO it doesn't make sense to introduce an option for a generic
kernel, which then renders the generic kernel useless on all
platforms other then yours.

Please don't use generic, but setup a new platform for it. Hopefully
we can get rid all of the weirdness in this patch.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

