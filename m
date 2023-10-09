Return-Path: <devicetree+bounces-6977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A717BE389
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 16:51:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85901280EB3
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 14:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B550A18C3F;
	Mon,  9 Oct 2023 14:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="NLU6pUeG"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221B418C04
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 14:51:12 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E73D8F;
	Mon,  9 Oct 2023 07:51:10 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 23070FF809;
	Mon,  9 Oct 2023 14:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696863069;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0jOgIroi+iceWUGJkzAJZdhaJt8sxoVXfGAQv9kuVdk=;
	b=NLU6pUeGGxtOdPdzShVeqEzjjzNJSfum1NtTamhihBpEndp18MGOP6Mxen2fcjy16Xumuq
	2oTcbY0cKKfK5SvP2qabncSayezcFI1bdb84rTeT22ANBjBcSPdDYij+5ZwlrRfGjAoRdU
	2se371nUGJCwoYzrVSWO8aYMbRhGAe0cE1Z+Sy0XkWP0N1FBPQGN3kdWF0Ee+PwYTKNeqH
	4zgTuNJV6gLEE1m4civlQGLZoXg79YTcgrEGPgXmE55snhQUq1X2ZE6uI9fkJ8+ko51JY/
	d0knW2deRZdvXFSjS0grBf8qMLFOU0xS24CkJl+iSch3i57PSWFSnmyS7MPIGg==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Paul Burton <paulburton@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 linux-mips@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Vladimir Kondratiev <vladimir.kondratiev@intel.com>, Tawfik Bayouk
 <tawfik.bayouk@mobileye.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, =?utf-8?Q?Th=C3=A9o?= Lebrun
 <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 09/11] MIPS: mobileye: Add EPM5 device tree
In-Reply-To: <37d3c19a-4106-45f9-ae2a-99bf41a8bab0@app.fastmail.com>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
 <20231004161038.2818327-10-gregory.clement@bootlin.com>
 <37d3c19a-4106-45f9-ae2a-99bf41a8bab0@app.fastmail.com>
Date: Mon, 09 Oct 2023 16:51:06 +0200
Message-ID: <87sf6jc0it.fsf@BL-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-GND-Sasl: gregory.clement@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

"Arnd Bergmann" <arnd@arndb.de> writes:

> On Wed, Oct 4, 2023, at 18:10, Gregory CLEMENT wrote:
>> +
>> +	chosen {
>> +		bootargs = "cca=5 earlycon console=ttyAMA2 ddr32_alias=0x40000000";
>> +		stdout-path = "serial2:115200n8";
>> +	};
>> +
>
> The bootargs should not be needed here, at least most of them:
>
> - no need to set both console= and the stdout-path if you have
>   earlycon support

OK I keep stdout-path.

>
> - ddr32_alias=0x40000000 sounds like something that should be
>   part of the dtb elsewhere and not require a command line argument.
>   I assume this is needed to even build?

I will answer on the other email but in short I agree.
>
> - For cca=, it looks like this is intended to be autodetected from
>   the c0_config register. Does that not work for you for some reason?

Indeed I checked and it it nost needed anymore, it is already set in
cps_smp_setup. I remove it.

Thanks,

Gregory

>
>      Arnd

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

