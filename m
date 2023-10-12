Return-Path: <devicetree+bounces-8284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BE87C77BA
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:15:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F274E1C20E52
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97C673CD1F;
	Thu, 12 Oct 2023 20:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+oU7ODQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773BC3CCFE
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:15:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CEDAC433C8;
	Thu, 12 Oct 2023 20:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697141746;
	bh=uxbafwMSKPAuWsobVTD03FL1mfzA+6nOjp0q9wlUssc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V+oU7ODQy+l57RW4bWyZRK7Ux1uSerl0wn8edtUk8VEVXSI0y/d1sBMe4JG8HGAun
	 pRFHcNn/492mMeowUMSi6Z/PN5t2TtgABuW2wy6nax/4+0mJx9Kz3HTyatldrte+PM
	 0QEBSPBNda4hF0nY5xPYeOh4FLLljGOPsYupsQ9Hf+FireOhpcJUuzy2WE4Cdx6Got
	 iP8sgPFkYupDDQJsv4icPkmwiTOJWhYOi128RRgytb9SxegDRIOgOBR1iPWzAJ7UVG
	 /n20nEo5EnTugsDaJ25nlluOL3dmQf7+S4wYn+xBvOJeD8CvHtjrOuWcJ2NE7iu0ne
	 un5ziBP4YecrA==
Date: Thu, 12 Oct 2023 22:15:41 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: gregory.clement@bootlin.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	pierre.gondois@arm.com, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] i2c: mv64xxx: add support for FSM based recovery
Message-ID: <20231012201541.nzlxyjngm3d5asir@zenone.zhora.eu>
References: <20231006003321.2100016-1-chris.packham@alliedtelesis.co.nz>
 <20231006003321.2100016-4-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006003321.2100016-4-chris.packham@alliedtelesis.co.nz>

Hi Chris,

...

> +static int
> +mv64xxx_i2c_recover_bus(struct i2c_adapter *adap)
> +{
> +	struct mv64xxx_i2c_data *drv_data = i2c_get_adapdata(adap);
> +	int ret;
> +	u32 val;
> +
> +	dev_dbg(&adap->dev, "Trying i2c bus recovery\n");
> +	writel(MV64XXX_I2C_UNSTUCK_TRIGGER, drv_data->unstuck_reg);
> +	ret = readl_poll_timeout_atomic(drv_data->unstuck_reg, val,
> +					!(val & MV64XXX_I2C_UNSTUCK_INPROGRESS),
> +					10, 1000);

mmmhhh... still a bit skeptical about waiting 100 times 10us in
atomic.

I'm still of the opinion that this should run in a separate
thread. Any different opinion from the network?

BTW, first question, considering that you decreased the time
considerably... does it work?

Andi

