Return-Path: <devicetree+bounces-69948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6478D1FF0
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 17:13:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46A31286920
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 15:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E35171069;
	Tue, 28 May 2024 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJJUawnP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49CA17083A;
	Tue, 28 May 2024 15:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716909173; cv=none; b=bOY/f21fyzOtPSbM6i91VNU4l+YpG3Wy75ibtF/skkP5dPkICUnAmzauZmWq5DWJX/M+gKzVMlpQhBOmcMwScofRuHhG7CQqh3kr+I9Mco8XmMExIm58ZUQ0PN23t6nZscChA0ZVKpwZh9IlXK1gcpxM+9b9piuzL+2QU8b0aoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716909173; c=relaxed/simple;
	bh=+9UMt6ZwFql+6FM2z13BFGcx4BThAb8uyyg74D4j+RA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k9LB2pMof8NCCdcV3uteV+sLDmhdddLTm4v1LslSbhmTCuPVsx2mDK7OLdxhvERDBKLXKqjB8V/F88Sw8nycceCUSVN8P6Th3rQb8ZB+HdWWiYf0y0j4AcdwvIjaQFMJUBTJ1muWpKJkDPw+bR2ytcHkOxF90G548vz3bUq6B3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJJUawnP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09A8DC3277B;
	Tue, 28 May 2024 15:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716909172;
	bh=+9UMt6ZwFql+6FM2z13BFGcx4BThAb8uyyg74D4j+RA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JJJUawnPnKVoRjtsgXIkf4X1GwBExoQdWjZvgBhgBBgsBpd8mMHD/LE8qh5h1pXS/
	 yWiqzP44TSUjIS5Y3ciOAvrBMLt8gqGOqPfYYv6gj7v+jqv06LxntpmibVUSUatoJp
	 NbuuDP97JWVsxxm7cst6gQd26rqtqTUFOGse/xclEPF/inkVhy9OsZ5KjiG/6pwHmn
	 k3qxhMttRpfEuXPkOfGyCYRTIp45U8Ry5t6DwoE4o1YF9EREEZPAenoFbLrKRgXb9B
	 ci0KJ3bTe6vcZijUMO99+Vt2hwNfJ6UAJF25kmNjonzhmOKu6gEkTzn/fny0XeZGo4
	 NVdrlhqiK/CmA==
Date: Tue, 28 May 2024 10:12:51 -0500
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>, Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH 2/5] dt-bindings: Add bindings for the Analog Devices
 ADP5585
Message-ID: <20240528151251.GA155664-robh@kernel.org>
References: <20240520195942.11582-1-laurent.pinchart@ideasonboard.com>
 <20240520195942.11582-3-laurent.pinchart@ideasonboard.com>
 <11a383f3-a6db-4de7-a5f8-2938c69e98fc@kernel.org>
 <20240521194309.GA8863@pendragon.ideasonboard.com>
 <075f5a03-f288-4dfb-a293-3a6c0675881b@kernel.org>
 <20240522072224.GC8863@pendragon.ideasonboard.com>
 <92e85dff-ad02-4673-a625-2248b249c262@kernel.org>
 <20240523231641.GJ6640@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240523231641.GJ6640@pendragon.ideasonboard.com>

On Fri, May 24, 2024 at 02:16:41AM +0300, Laurent Pinchart wrote:
> Hi Krzysztof,
> 
> (There's a question for the GPIO and PWM maintainers below)
> 
> On Wed, May 22, 2024 at 09:40:02AM +0200, Krzysztof Kozlowski wrote:
> > On 22/05/2024 09:22, Laurent Pinchart wrote:
> > > On Wed, May 22, 2024 at 08:57:56AM +0200, Krzysztof Kozlowski wrote:
> > >> On 21/05/2024 21:43, Laurent Pinchart wrote:
> > >>> On Tue, May 21, 2024 at 09:05:50PM +0200, Krzysztof Kozlowski wrote:
> > >>>> On 20/05/2024 21:59, Laurent Pinchart wrote:
> > >>>>> The ADP5585 is a 10/11 input/output port expander with a built in keypad
> > >>>>> matrix decoder, programmable logic, reset generator, and PWM generator.
> > >>>>> These bindings model the device as an MFD, and support the GPIO expander
> > >>>>> and PWM functions.
> > >>>>>
> > >>>>> These bindings support the GPIO and PWM functions.
> > >>>>>
> > >>>>> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > >>>>> ---
> > >>>>> I've limited the bindings to GPIO and PWM as I lack hardware to design,
> > >>>>> implement and test the rest of the features the chip supports.
> > >>>>> ---
> > >>>>>  .../bindings/gpio/adi,adp5585-gpio.yaml       |  36 ++++++
> > >>>>>  .../devicetree/bindings/mfd/adi,adp5585.yaml  | 117 ++++++++++++++++++
> > >>>>>  .../bindings/pwm/adi,adp5585-pwm.yaml         |  35 ++++++
> > >>>>>  MAINTAINERS                                   |   7 ++
> > >>>>>  4 files changed, 195 insertions(+)
> > >>>>>  create mode 100644 Documentation/devicetree/bindings/gpio/adi,adp5585-gpio.yaml
> > >>>>>  create mode 100644 Documentation/devicetree/bindings/mfd/adi,adp5585.yaml
> > >>>>>  create mode 100644 Documentation/devicetree/bindings/pwm/adi,adp5585-pwm.yaml
> > >>>>>
> > >>>>> diff --git a/Documentation/devicetree/bindings/gpio/adi,adp5585-gpio.yaml b/Documentation/devicetree/bindings/gpio/adi,adp5585-gpio.yaml
> > >>>>> new file mode 100644
> > >>>>> index 000000000000..210e4d53e764
> > >>>>> --- /dev/null
> > >>>>> +++ b/Documentation/devicetree/bindings/gpio/adi,adp5585-gpio.yaml
> > >>>>> @@ -0,0 +1,36 @@
> > >>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > >>>>> +%YAML 1.2
> > >>>>> +---
> > >>>>> +$id: http://devicetree.org/schemas/gpio/adi,adp5585-gpio.yaml#
> > >>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > >>>>> +
> > >>>>> +title: Analog Devices ADP5585 GPIO Expander
> > >>>>> +
> > >>>>> +maintainers:
> > >>>>> +  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > >>>>> +
> > >>>>> +description: |
> > >>>>> +  The Analog Devices ADP5585 has up to 11 GPIOs represented by a "gpio" child
> > >>>>> +  node of the parent MFD device. See
> > >>>>> +  Documentation/devicetree/bindings/mfd/adi,adp5585.yaml for further details as
> > >>>>> +  well as an example.
> > >>>>> +
> > >>>>> +properties:
> > >>>>> +  compatible:
> > >>>>> +    const: adi,adp5585-gpio
> > >>>>> +
> > >>>>> +  gpio-controller: true
> > >>>>> +
> > >>>>> +  '#gpio-cells':
> > >>>>> +    const: 2
> > >>>>> +
> > >>>>> +  gpio-reserved-ranges: true
> > >>>>
> > >>>> There are no resources here, so new compatible is not really warranted.
> > >>>> Squash the node into parent.
> > >>>
> > >>> Child nodes seem (to me) to be the standard way to model functions in
> > >>> MFD devices. Looking at mfd_add_device(), for OF-based systems, the
> > >>> function iterates over child nodes. I don't mind going a different
> > >>
> > >> Only to assign of node, which could be skipped as well.
> > > 
> > > It has to be assigned somehow, otherwise the GPIO and PWM lookups won't
> > > work. That doesn't have to be done in mfd_add_device() though, it can
> > > also be done manually by the driver. Looking at the example you gave,
> > > cs42l43_pin_probe() handles that assignment. I would have considered
> > > that a bit of a hack, but if that's your preferred approach, I'm fine
> > > with it. Could you confirm you're OK with that ?
> > 
> > I am fine with the drivers doing that. It's not a hack, for all
> > sub-devices (e.g. also auxiliary bus) you won't have automatic of_node
> > assignment.
> 
> I gave this a try, and here's what I came up with to drop the compatible
> string. Please ignore for a moment the fact that the child nodes are
> still there, that's an orthogonal question which I can address
> separately. What I would like is feedback on how the OF nodes are
> handled.
> 
> diff --git a/drivers/gpio/gpio-adp5585.c b/drivers/gpio/gpio-adp5585.c
> index 9696a4cdcfc1..8480ceef05ce 100644
> --- a/drivers/gpio/gpio-adp5585.c
> +++ b/drivers/gpio/gpio-adp5585.c
> @@ -174,6 +174,7 @@ static int adp5585_gpio_probe(struct platform_device *pdev)
>  	struct adp5585_dev *adp5585 = dev_get_drvdata(pdev->dev.parent);
>  	struct adp5585_gpio_dev *adp5585_gpio;
>  	struct device *dev = &pdev->dev;
> +	struct device_node *node;
>  	struct gpio_chip *gc;
>  	int ret;
> 
> @@ -187,6 +188,13 @@ static int adp5585_gpio_probe(struct platform_device *pdev)
> 
>  	mutex_init(&adp5585_gpio->lock);
> 
> +	node = of_get_child_by_name(dev->parent->of_node, "gpio");
> +	if (!node)
> +		return dev_err_probe(dev, -ENXIO, "'gpio' child node not found\n");
> +
> +	dev->of_node = node;
> +	dev->fwnode = &node->fwnode;

Use device_set_of_node_from_dev().

> +
>  	gc = &adp5585_gpio->gpio_chip;
>  	gc->parent = dev;
>  	gc->direction_input = adp5585_gpio_direction_input;
> @@ -204,6 +212,9 @@ static int adp5585_gpio_probe(struct platform_device *pdev)
>  	ret = devm_gpiochip_add_data(&pdev->dev, &adp5585_gpio->gpio_chip,
>  				     adp5585_gpio);
>  	if (ret) {
> +		of_node_put(dev->of_node);
> +		dev->of_node = NULL;
> +		dev->fwnode = NULL;
>  		mutex_destroy(&adp5585_gpio->lock);
>  		return dev_err_probe(&pdev->dev, ret, "failed to add GPIO chip\n");
>  	}
> @@ -215,6 +226,10 @@ static void adp5585_gpio_remove(struct platform_device *pdev)
>  {
>  	struct adp5585_gpio_dev *adp5585_gpio = platform_get_drvdata(pdev);
> 
> +	of_node_put(pdev->dev.of_node);
> +	pdev->dev.of_node = NULL;
> +	pdev->dev.fwnode = NULL;
> +
>  	mutex_destroy(&adp5585_gpio->lock);
>  }
> 
> diff --git a/drivers/pwm/pwm-adp5585.c b/drivers/pwm/pwm-adp5585.c
> index e39a6ea5f794..3b190567ea0b 100644
> --- a/drivers/pwm/pwm-adp5585.c
> +++ b/drivers/pwm/pwm-adp5585.c
> @@ -146,6 +146,8 @@ static const struct pwm_ops adp5585_pwm_ops = {
>  static int adp5585_pwm_probe(struct platform_device *pdev)
>  {
>  	struct adp5585_dev *adp5585 = dev_get_drvdata(pdev->dev.parent);
> +	struct device *dev = &pdev->dev;
> +	struct device_node *node;
>  	struct pwm_chip *chip;
>  	int ret;
> 
> @@ -153,16 +155,34 @@ static int adp5585_pwm_probe(struct platform_device *pdev)
>  	if (IS_ERR(chip))
>  		return PTR_ERR(chip);
> 
> +	node = of_get_child_by_name(dev->parent->of_node, "pwm");
> +	if (!node)
> +		return dev_err_probe(dev, -ENXIO, "'pwm' child node not found\n");
> +
> +	dev->of_node = node;
> +	dev->fwnode = &node->fwnode;
> +
>  	pwmchip_set_drvdata(chip, adp5585->regmap);
>  	chip->ops = &adp5585_pwm_ops;
> 
>  	ret = devm_pwmchip_add(&pdev->dev, chip);
> -	if (ret)
> +	if (ret) {
> +		of_node_put(dev->of_node);
> +		dev->of_node = NULL;
> +		dev->fwnode = NULL;
>  		return dev_err_probe(&pdev->dev, ret, "failed to add PWM chip\n");
> +	}
> 
>  	return 0;
>  }
> 
> +static void adp5585_pwm_remove(struct platform_device *pdev)
> +{
> +	of_node_put(pdev->dev.of_node);

Wouldn't the driver core do this already? It's not going to know how or 
when of_node was set, so should be doing a put regardless.

> +	pdev->dev.of_node = NULL;
> +	pdev->dev.fwnode = NULL;
> +}
> +
>  static struct platform_driver adp5585_pwm_driver = {
>  	.driver	= {
>  		.name = "adp5585-pwm",
> 
> Is this acceptable ? I'm a bit concerned about poking the internals of
> struct device directly from drivers.
> 
> I have also refrained from setting fnode->dev to point back to the
> device as fone by cs42l43_pin_probe(), as a comment in struct
> fwnode_handle indicates that the dev field is for device links only and
> shouldn't be touched by anything else. I'm not sure if I should set it.

I think no, but best for Saravana to comment.

> 
> > >>> routes, could you indicate what you have in mind, perhaps pointing to an
> > >>> existing driver as an example ?
> > >>
> > >> Most of them? OK, let's take the last added driver in MFD directory:
> > >> cirrus,cs42l43
> > >> It has three children and only two nodes, because only these two devices
> > >> actually need/use/benefit the subnodes.
> > > 
> > > Still trying to understand what bothers you here, is it the child nodes,
> > > or the fact that they have a compatible string and are documented in a
> > > separate binding ? Looking at the cirrus,cs42l43 bindings and the
> > 
> > What bothers me (and as expressed in many reviews by us) is representing
> > driver structure directly in DT. People model DT based how their Linux
> > drivers are represented. I don't care about driver stuff here, but DT/DTS.
> 
> DT models the hardware as seen from a software point of view. 

True, but it's for all software's PoV, not some specific s/w.

> It
> shouldn't reflect the structure of Linux drivers, but it has to be
> usable by drivers.

Either way is usable.

Rob

