Return-Path: <devicetree+bounces-6984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 672C67BE3E9
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 17:08:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1FCB9281619
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 15:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A6063589F;
	Mon,  9 Oct 2023 15:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48F9171C0
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 15:08:18 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 983F98F;
	Mon,  9 Oct 2023 08:08:17 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F38A31FB;
	Mon,  9 Oct 2023 08:08:57 -0700 (PDT)
Received: from e120937-lin (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC9153F5A1;
	Mon,  9 Oct 2023 08:08:15 -0700 (PDT)
Date: Mon, 9 Oct 2023 16:08:13 +0100
From: Cristian Marussi <cristian.marussi@arm.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>, sudeep.holla@arm.com,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
Message-ID: <ZSQXXW1NRiCpsENu@e120937-lin>
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <20231005025843.508689-6-takahiro.akashi@linaro.org>
 <20231006132346.GA3426353-robh@kernel.org>
 <CACRpkdaLsfSBEG-h9ZNT2_Lm8tW8AZO7tedDVNeuZoQAqSkyjw@mail.gmail.com>
 <ZSPDILYZkxvTnQia@e120937-lin>
 <CACRpkdY=eza0TuBRDb_cWk9LM2qNQg76rZSgWa-RP4TYLL=Ppw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdY=eza0TuBRDb_cWk9LM2qNQg76rZSgWa-RP4TYLL=Ppw@mail.gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 09, 2023 at 03:13:24PM +0200, Linus Walleij wrote:
> On Mon, Oct 9, 2023 at 11:08 AM Cristian Marussi
> <cristian.marussi@arm.com> wrote:
> 
> > > > +    gpio0: gpio@0 {
> > > > +        compatible = "pin-control-gpio";
> > > > +        gpio-controller;
> > > > +        #gpio-cells = <2>;
> > > > +        gpio-ranges = <&scmi_pinctrl 0 10 5>,
> > > > +                      <&scmi_pinctrl 5 0 0>;
> > > > +        gpio-ranges-group-names = "",
> > > > +                                  "pinmux_gpio";
> > > > +    };
> > >
> >
> > Assuming the above &scmi_pinctrl refers to the protocol node as we
> > usually do,
> 
> No it does not, it is a three-layer cake.
> 
> scmi <-> scmi_pinctrl <-> scmi_gpio
> 
> it refers to the scmi_pinctrl node.
> 

Thanks, this explains a lot.
Cristian

> There is no SCMI GPIO protocol, instead SCMI is using the
> operations already available in the pin controller to exercise
> GPIO. Generic pin control has operations to drive lines for
> example, and Takahiro is adding the ability for a generic pin
> controller to also read a line.


> 
> Yours,
> Linus Walleij

