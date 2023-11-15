Return-Path: <devicetree+bounces-16002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 682817EC722
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:27:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C7361F27143
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 15:27:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B0633CCC;
	Wed, 15 Nov 2023 15:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9uSX5wy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073C2381DD
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 15:27:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 590ECC433C7;
	Wed, 15 Nov 2023 15:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700062053;
	bh=vIyO62Y1rX3UiM9wLvewj/4J1jBrDX4ryBgvCxiLOMg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b9uSX5wyi2/f49m9IDT2ro1jZBmesSIY6wLeLsuwUMohCuDNcwmMuo5mcp2Y5zTMl
	 xK/u9kXS+G9rSoxpPYHC3LMBjlOl3DYBQmBlnQ0bYfQw5in+YsKGenObCOmtQt8IfG
	 IS+uVORTkrHg9OJoJOXiaSQVt4oaFfa1mY8PHTHrraPl150MXJuTtVhhrJFyJrNJ69
	 19Iq1lZL/R1mKu6USmOsBiVDj3SYkgRKKd4NlEVKH1lzhwEPHylHdO0iUHvosooOlz
	 zLsIR7nnrMT0B3ltU0gYATGvZpHY9ZAljZ3RRan8ejw7RK8ANfpj5O2W2+F9VjkOHf
	 XzBstOU1XpSoA==
Date: Wed, 15 Nov 2023 23:15:11 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Samuel Holland <samuel.holland@sifive.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: reset: Add binding for Sophgo CV1800B
 reset controller
Message-ID: <ZVTgfzeK6GkKpArK@xhacker>
References: <20231113005503.2423-1-jszhang@kernel.org>
 <20231113005503.2423-2-jszhang@kernel.org>
 <44f21244-5bf1-4e0f-80a9-6ec76d65eea4@linaro.org>
 <ZVTHMsXaPdHiuUOF@xhacker>
 <80e28d77-4a0e-4827-91c0-951094176bbd@sifive.com>
 <20231115-upward-unsworn-7746e0aeb5dd@squawk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231115-upward-unsworn-7746e0aeb5dd@squawk>

On Wed, Nov 15, 2023 at 03:02:21PM +0000, Conor Dooley wrote:
> On Wed, Nov 15, 2023 at 09:56:07AM -0500, Samuel Holland wrote:
> > On 2023-11-15 7:27 AM, Jisheng Zhang wrote:
> > > On Tue, Nov 14, 2023 at 10:12:35PM +0100, Krzysztof Kozlowski wrote:
> > >> On 13/11/2023 01:55, Jisheng Zhang wrote:
> > >> ...
> > >>
> > >>> diff --git a/include/dt-bindings/reset/sophgo,cv1800b-reset.h b/include/dt-bindings/reset/sophgo,cv1800b-reset.h
> > >>> new file mode 100644
> > >>> index 000000000000..28dda71369b4
> > >>> --- /dev/null
> > >>> +++ b/include/dt-bindings/reset/sophgo,cv1800b-reset.h
> > >>> @@ -0,0 +1,96 @@
> > >>> +/* SPDX-License-Identifier: GPL-2.0 OR MIT */
> > >>> +/*
> > >>> + * Copyright (C) 2023 Sophgo Technology Inc. All rights reserved.
> > >>> + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > >>> + */
> > >>> +
> > >>> +#ifndef _DT_BINDINGS_CV1800B_RESET_H
> > >>> +#define _DT_BINDINGS_CV1800B_RESET_H
> > >>> +
> > >>> +/*				0-1	*/
> > >>> +#define RST_DDR			2
> > >>> +#define RST_H264C		3
> > >>> +#define RST_JPEG		4
> > >>> +#define RST_H265C		5
> > >>> +#define RST_VIPSYS		6
> > >>> +#define RST_TDMA		7
> > >>> +#define RST_TPU			8
> > >>> +#define RST_TPUSYS		9
> > >>> +/*				10	*/
> > >>
> > >> Why do you have empty IDs? IDs start at 0 and are incremented by 1.
> > > 
> > > there's 1:1 mapping between the ID and bit. Some bits are reserved, I.E
> > > no actions at all. Is "ID start at 0 and increment by 1" documented
> > > in some docs? From another side, I also notice some SoCs especially
> > > those which make use of reset-simple driver don't strictly follow
> > > this rule, for example, amlogic,meson-a1-reset.h and so on. What
> > > happened?
> > > 
> > > And I'd like to ask a question here before cooking 2nd version:
> > > if the HW programming logic is the same as reset-simple, but some
> > > or many bits are reserved, what's the can-be-accepted way to support
> > > the reset controller? Use reset-simple? Obviously if we want the
> > > "ID start at 0 and increment by 1" rule, then we have to write
> > > a custom driver which almost use the reset-simple but with a
> > > customized mapping.
> > 
> > There are two possible situations. Either the reset specifier maps directly to
> > something in the hardware, or you are inventing some brand new enumeration to
> > use as a specifier.
> > 
> > In the first situation, you do not need a header. We assume the user will look
> > to the SoC documentation if they want to know what the numbers mean. (You aren't
> > _creating_ an ABI, since the ABI is already defined by the hardware.)
> > 
> > In the second situation, since we are inventing something new, the numbers
> > should be contiguous. This is what Krzysztof's comment was about.
> > 
> > For this reset device, the numbers are hardware bit offsets, so you are in the
> > first situation. So I think the recommended solution here is to remove the
> > header entirely and use the bit numbers directly in the SoC devicetree.
> > 
> > It's still appropriate to use reset-simple. Adding some new mapping would make
> > things more complicated for no benefit.
> 
> Further, I think it is fine in that case to have a header, just the
> header doesn't belong as a binding, and can instead go in the dts
> directory.

Hi Samuel, Conor,

thanks a lot for the suggestion!

Regards

