Return-Path: <devicetree+bounces-15896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6DF7EC3E6
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 14:39:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33E92B20A6F
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 13:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 807291CAAF;
	Wed, 15 Nov 2023 13:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUTy4gSP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656221A737
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 13:39:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7EEAC433C8;
	Wed, 15 Nov 2023 13:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700055577;
	bh=+m5EkdsuFgk4M8NgYmYjSHFQr191uVxuI+jCtlMUOdw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sUTy4gSPEZVY1b1dUA7g3l2l1Pjx6h4pd44zta+k9/BLgrwu2g907HexbUKqb8p3L
	 PXtWeBDSN5DsolmNPBeXwGGeNAv9DDOwap9o59WksBFGtsSsY3nq1iQaLKpeEC75zj
	 deGYYaz8tRPiSJGmy2j+pj7JTfl4hGgic2/Hj2OVHP6wOiMgKxhHguNqGJi4NNNwXZ
	 Wd2Yy1U8HX5jjhxvUMmXGRWEoHD5IHmjN/bHBoHpgZX6kwxRdGInAcXgS8bW8EeX59
	 M/2hXSw958zAWSyd7sp6oQ2KN3oZ6QzJdmipMODs3uc3P9Fw/zZChlAMjWVsfVdJgj
	 RSPPd1UMxfigg==
Date: Wed, 15 Nov 2023 21:27:14 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
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
Message-ID: <ZVTHMsXaPdHiuUOF@xhacker>
References: <20231113005503.2423-1-jszhang@kernel.org>
 <20231113005503.2423-2-jszhang@kernel.org>
 <44f21244-5bf1-4e0f-80a9-6ec76d65eea4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <44f21244-5bf1-4e0f-80a9-6ec76d65eea4@linaro.org>

On Tue, Nov 14, 2023 at 10:12:35PM +0100, Krzysztof Kozlowski wrote:
> On 13/11/2023 01:55, Jisheng Zhang wrote:
> ...
> 
> > diff --git a/include/dt-bindings/reset/sophgo,cv1800b-reset.h b/include/dt-bindings/reset/sophgo,cv1800b-reset.h
> > new file mode 100644
> > index 000000000000..28dda71369b4
> > --- /dev/null
> > +++ b/include/dt-bindings/reset/sophgo,cv1800b-reset.h
> > @@ -0,0 +1,96 @@
> > +/* SPDX-License-Identifier: GPL-2.0 OR MIT */
> > +/*
> > + * Copyright (C) 2023 Sophgo Technology Inc. All rights reserved.
> > + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > + */
> > +
> > +#ifndef _DT_BINDINGS_CV1800B_RESET_H
> > +#define _DT_BINDINGS_CV1800B_RESET_H
> > +
> > +/*				0-1	*/
> > +#define RST_DDR			2
> > +#define RST_H264C		3
> > +#define RST_JPEG		4
> > +#define RST_H265C		5
> > +#define RST_VIPSYS		6
> > +#define RST_TDMA		7
> > +#define RST_TPU			8
> > +#define RST_TPUSYS		9
> > +/*				10	*/
> 
> Why do you have empty IDs? IDs start at 0 and are incremented by 1.

there's 1:1 mapping between the ID and bit. Some bits are reserved, I.E
no actions at all. Is "ID start at 0 and increment by 1" documented
in some docs? From another side, I also notice some SoCs especially
those which make use of reset-simple driver don't strictly follow
this rule, for example, amlogic,meson-a1-reset.h and so on. What
happened?

And I'd like to ask a question here before cooking 2nd version:
if the HW programming logic is the same as reset-simple, but some
or many bits are reserved, what's the can-be-accepted way to support
the reset controller? Use reset-simple? Obviously if we want the
"ID start at 0 and increment by 1" rule, then we have to write
a custom driver which almost use the reset-simple but with a
customized mapping.

Thanks

