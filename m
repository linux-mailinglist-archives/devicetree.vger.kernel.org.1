Return-Path: <devicetree+bounces-3816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3187B0356
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 13:53:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6D23328203A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAAC211703;
	Wed, 27 Sep 2023 11:53:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78E63FF5
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 11:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B393C433C7;
	Wed, 27 Sep 2023 11:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695815583;
	bh=w7NOYvDlz9WwO8/lZ+B4+xWRuFiX5D0MM18h/+ZIoV8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qKJam3pBL23Re2oidE3bSNRNlZF5e8ZSoDSs7Cw1pLhO4rHGwsqd+KKBrKauUl14s
	 SquphGJCtaUq2UKoqefo8+fRC8PafFUGr8g9cWJ7yI01YMLpLqGzhjzhqil2Cg7AZB
	 Bse98S5TCJjHTmvujAYQXDWrwDr4VmLV3eRgBMS4vleoBf+E2Ehr1eFxJMVRFIG+Ol
	 ycpU2Lr8e9bDPN627R9ym6FkXBRyh2X5rH1Sf4BVo8uv8AzS4wUFlMZyQOEp17PIQF
	 PAbW5N853xcJynP0pn9/Lqi5lf+mgW57OPuHiH6/Qjd4TtGXYRqVxfNqq/k602tNpR
	 QD6JQ+HtS7gog==
Received: (nullmailer pid 1595187 invoked by uid 1000);
	Wed, 27 Sep 2023 11:53:00 -0000
Date: Wed, 27 Sep 2023 06:53:00 -0500
From: Rob Herring <robh@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Cc: Lino Sanfilippo <l.sanfilippo@kunbus.com>, linux-integrity@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: reset: Add Infineon SLB9670 TPM reset
 driver
Message-ID: <20230927115300.GA1587935-robh@kernel.org>
References: <ae40859b82494d75e9ad7bf616b3264138ad1f6a.1695754856.git.lukas@wunner.de>
 <169576062741.534473.12201606598910537660.robh@kernel.org>
 <20230927063116.GA6252@wunner.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927063116.GA6252@wunner.de>

On Wed, Sep 27, 2023 at 08:31:16AM +0200, Lukas Wunner wrote:
> On Tue, Sep 26, 2023 at 03:37:07PM -0500, Rob Herring wrote:
> > On Tue, 26 Sep 2023 21:09:35 +0200, Lukas Wunner wrote:
> > > A new reset driver is about to be added to perform the reset sequence of
> > > the Infineon SLB9670 Trusted Platform Module.
> > > 
> > > Document its device tree bindings.
> > 
> > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> > yamllint warnings/errors:
> > ./Documentation/devicetree/bindings/reset/infineon,slb9670-reset.yaml:29:111: [warning] line too long (124 > 110 characters) (line-length)
> 
> That's the following line:
> 
>   [1] https://www.infineon.com/dgdl/Infineon-SLB%209670VQ2.0-DataSheet-v01_04-EN.pdf?fileId=5546d4626fc1ce0b016fc78270350cd6
> 
> I'm not sure what to do about it.  Use an URL shortener?

The link doesn't even work for me.

> I did see the warning when running static checks before submission,
> but it seemed like a false positive to me.

I suppose we could bump the limit by 1 as I think it is set to 110.

> 
> > dtschema/dtc warnings/errors:
> > Documentation/devicetree/bindings/reset/infineon,slb9670-reset.example.dtb: /example-0/spi/tpm@0: failed to match any schema with compatible: ['infineon,slb9670']
> 
> The TPM DT bindings in Documentation/devicetree/bindings/security/tpm/
> haven't been converted to YAML yet, hence the warning/error.

Yes, there's been multiple attempts. Everyone disappears when I say work 
together and consolidate the efforts.

> Is it a prerequisite that I consolidate and convert them before
> this patch is acceptable?

Yes. Can't have warnings.

Rob

