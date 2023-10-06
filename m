Return-Path: <devicetree+bounces-6569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE72A7BBD3B
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 18:50:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2D3C6282463
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3A428E23;
	Fri,  6 Oct 2023 16:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKKIYCm1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C92B28E1B
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 16:50:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD7F4C433C7;
	Fri,  6 Oct 2023 16:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696611037;
	bh=2aaZimPgHTbIm4nYbzzNMap4dmH7kQIVxsi+EmgVXzk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jKKIYCm1cbYRcvcQLLOlTTHe4wq6pp/CzXSjhvdRhLGlAx18oEMTQ3LXm0QGUDH6n
	 hyBpwuP6H2nthJm8hWhPbuI6flcwWfj8S99rHoqyr6XrhT13dbmtyvKmRIQ0Hysbac
	 rOp3JM5Do7cSOFUAIUjp60ozaH83GE2prLw34lZGQhmUSVFFd8SdzX4h4LGetDOk7K
	 KagfRn5BhO4epM9lNg3RetFKlPZT4nQeHqcdX6WDymgXsal8z+kmZzj+zm0mc7DCxR
	 pDkjaaY1VRWxMCrqBCc6xS3DWszOI3vvmCqSGeSWPIsRzngH5syTqScpSguAwrQ7B9
	 lyGPSxZHyqQhg==
Received: (nullmailer pid 4059854 invoked by uid 1000);
	Fri, 06 Oct 2023 16:50:35 -0000
Date: Fri, 6 Oct 2023 11:50:35 -0500
From: Rob Herring <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Paul Burton <paulburton@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Vladimir Kondratiev <vladimir.kondratiev@intel.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, =?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 06/11] dt-bindings: mips: Add bindings for Mobileye SoCs
Message-ID: <20231006165035.GA4049125-robh@kernel.org>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
 <20231004161038.2818327-7-gregory.clement@bootlin.com>
 <CAL_Jsq+NkRM07U8enKSVvpOg+9qtDdnkqs2Pc0X8LgjVVo7Vhg@mail.gmail.com>
 <87pm1tce5v.fsf@BL-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pm1tce5v.fsf@BL-laptop>

On Thu, Oct 05, 2023 at 04:55:08PM +0200, Gregory CLEMENT wrote:
> Hello Rob,
> 
> > On Wed, Oct 4, 2023 at 11:11 AM Gregory CLEMENT
> > <gregory.clement@bootlin.com> wrote:
> >>
> >> Add the yaml bindings for Mobileye SoCs. Currently only EyeQ5 is
> >> supported
> >>
> >> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> >> ---
> >>  .../devicetree/bindings/mips/mobileye.yaml    | 36 +++++++++
> >>  include/dt-bindings/soc/mobileye,eyeq5.h      | 77 +++++++++++++++++++
> >>  2 files changed, 113 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/mips/mobileye.yaml
> >>  create mode 100644 include/dt-bindings/soc/mobileye,eyeq5.h
> >>
> >> diff --git a/Documentation/devicetree/bindings/mips/mobileye.yaml b/Documentation/devicetree/bindings/mips/mobileye.yaml
> >> new file mode 100644
> >> index 000000000000..f47767bc2c8f
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/mips/mobileye.yaml
> >> @@ -0,0 +1,36 @@
> >> +# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause
> >
> > Use what checkpatch tells you.
> 
> >From my point of view GPL-2.0-or-later is compatible with GPL-2.0-only,
> but OK I will do this.

GPL-2.0-only is compatible with GPL3, so why does that matter? And MIT 
is compatible with BSD-2-Clause, but we don't include that. 

Are we okay with GPLv4, v5, ...?

What I really care about is having a free-for-all and having a 
proliferation of different licenses and combinations of licenses under 
bindings. If everyone paid attention, then I wouldn't care. But they 
don't and just copy code around. We already have a license mess with DT 
headers and .dts files. Besides the copying problem, it is not hard to 
find GPL only license included in dual or BSD/MIT only licensed .dts 
files. Seems like an issue to me.

Rob

