Return-Path: <devicetree+bounces-8422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC517C821F
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 11:34:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90BBCB20974
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 09:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E592210A3B;
	Fri, 13 Oct 2023 09:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWMAeeBq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C918511181
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 09:34:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6354C433C7;
	Fri, 13 Oct 2023 09:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697189652;
	bh=aqNTWk/jLrgnCA59noQX1Z0OD+kaSq0f7Cj2KJ+dY7M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sWMAeeBqIkpI34Z+ITknz6l3Bw/5EvKniAa2W9YT6hM+MssyAs6Z+4VuyQ1LHE9m4
	 7K2yz6zc8HBODFAsnlPAViSy5OmwWBWu5JFoTB5i3KtXXu71zbSllc85RQrHQVssCL
	 ca0g9xRjkWR7D/3s1fj3nIklhqs24WWQoUpPI+RVfL51wdxZp+XhGkt79fgpaEj1/T
	 UVjPymfCA6ZhNSOPZ0SdNBy1MaGznZKwnhs9EtvZIHGU9IftrK6HeeY+dP5URXehs1
	 bg2qA3QdcObOy3NQifFNmWh5ItRopcwdJQqrLjRXZ9rB2awpZYD6WTbHgDSOsnRYt9
	 BNmevFk8cgr+A==
Date: Fri, 13 Oct 2023 11:34:07 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Cc: Peter Rosin <peda@axentia.se>,
	"gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] i2c: mv64xxx: add an optional reset-gpios property
Message-ID: <20231013093407.p2oqsagk62vrqacc@zenone.zhora.eu>
References: <20231012035838.2804064-1-chris.packham@alliedtelesis.co.nz>
 <20231012035838.2804064-3-chris.packham@alliedtelesis.co.nz>
 <20231012102140.kydfi2tppvhd7bdn@zenone.zhora.eu>
 <63403365-2d23-b4a0-d869-070686d62ab5@axentia.se>
 <812dd506-c61b-4967-9b0b-ea35a111bc7f@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <812dd506-c61b-4967-9b0b-ea35a111bc7f@alliedtelesis.co.nz>

Hi Chris,

...

>              static struct mv64xxx_i2c_regs mv64xxx_i2c_regs_mv64xxx = {
>             @@ -1083,6 +1084,10 @@ mv64xxx_i2c_probe(struct platform_device *pd)
>                     if (drv_data->irq < 0)
>                             return drv_data->irq;
> 
>             +       drv_data->reset_gpio = devm_gpiod_get_optional(&pd->dev, "reset", GPIOD_OUT_HIGH);
>             +       if (IS_ERR(drv_data->reset_gpio))
>             +               return PTR_ERR(drv_data->reset_gpio);
> 
>         if this optional why are we returning in case of error?
> 
> gpiod_get_optional() will return NULL if the property is not present. The main
> error I care about here is -EPROBE_DEFER but I figure other errors are also
> relevant. This same kind of pattern is used in other drivers.

we already discussed about this, I don't have a strong opinion,
you can leave it as it is... I recon this is a matter of pure
taste.

Would you just mind adding an error message using
dev_err_probe()?

Thanks,
Andi

