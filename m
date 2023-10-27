Return-Path: <devicetree+bounces-12322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FF47D8F5C
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:14:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6703B1F227D1
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 07:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54EE3B656;
	Fri, 27 Oct 2023 07:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="yjRTcK/3";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="jHx8e7bH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16F0B64F;
	Fri, 27 Oct 2023 07:14:02 +0000 (UTC)
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FCE8116;
	Fri, 27 Oct 2023 00:14:01 -0700 (PDT)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1698390839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eJVMpiIeVpk7seuFKZfSHdhPh2uWAHUcs45v1cNLNhw=;
	b=yjRTcK/3HzHdJlxf+rNLkpWCvE+GXuLsHOqzK4Eoe2oksmgDWddVwYQ+fRSjo1D7616Vry
	H4jCeZX3g6FIrk7Ti3uYeH3csx+mDg2gIY71hddUSUKpaDaDmZiua8tN8vYicUoNFpJJqf
	/nPyz3FpKLh+DHdfUcvr57/Pqy2cDt++xhw2bS1slf4UT2gl04Fkiijq7Pxv5DjrN1bD5Q
	V6SUkXxWBUteuUGs8r2abdiJQ/X+4575r39Bz+2p/p0Ht8bdJeWJky8L6tuppJDtInX8fU
	cBZLUuHUrg9beMho6ba/v7/JIXYylayjZl88T3tDvskyWI4zsqi4YPrDq/l8GA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1698390839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=eJVMpiIeVpk7seuFKZfSHdhPh2uWAHUcs45v1cNLNhw=;
	b=jHx8e7bHfbKM/IOLO1Lz2Zfw896ficoDWczCWdGHFlQrzI5neRSnnei4Nv8xLffuOdJRSI
	NpyHrax2awuojpBQ==
To: Yu Chien Peter Lin <peterlin@andestech.com>, acme@kernel.org,
 adrian.hunter@intel.com, ajones@ventanamicro.com,
 alexander.shishkin@linux.intel.com, andre.przywara@arm.com,
 anup@brainfault.org, aou@eecs.berkeley.edu, atishp@atishpatra.org,
 conor+dt@kernel.org, conor.dooley@microchip.com, conor@kernel.org,
 devicetree@vger.kernel.org, dminus@andestech.com, evan@rivosinc.com,
 geert+renesas@glider.be, guoren@kernel.org, heiko@sntech.de,
 irogers@google.com, jernej.skrabec@gmail.com, jolsa@kernel.org,
 jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-sunxi@lists.linux.dev,
 locus84@andestech.com, magnus.damm@gmail.com, mark.rutland@arm.com,
 mingo@redhat.com, n.shubin@yadro.com, namhyung@kernel.org,
 palmer@dabbelt.com, paul.walmsley@sifive.com, peterlin@andestech.com,
 peterz@infradead.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
 rdunlap@infradead.org, robh+dt@kernel.org, samuel@sholland.org,
 sunilvl@ventanamicro.com, tim609@andestech.com, uwu@icenowy.me,
 wens@csie.org, will@kernel.org, ycliang@andestech.com
Subject: Re: [RFC PATCH v3 RESEND 03/13] irqchip/riscv-intc: Introduce Andes
 IRQ chip
In-Reply-To: <20231023004100.2663486-4-peterlin@andestech.com>
References: <20231023004100.2663486-1-peterlin@andestech.com>
 <20231023004100.2663486-4-peterlin@andestech.com>
Date: Fri, 27 Oct 2023 09:13:59 +0200
Message-ID: <877cn84jwo.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Mon, Oct 23 2023 at 08:40, Yu Chien Peter Lin wrote:
> +
> +	if (strcmp(cp, "riscv,cpu-intc") == 0)
> +		chip = &riscv_intc_chip;
> +	else if (strcmp(cp, "andestech,cpu-intc") == 0)
> +		chip = &andes_intc_chip;
> +	else
> +		return -ENXIO;

See the other reply.


