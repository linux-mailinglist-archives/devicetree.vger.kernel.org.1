Return-Path: <devicetree+bounces-252202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 884D3CFC570
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 08:28:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B5D9E30022DE
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 07:28:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D672765F8;
	Wed,  7 Jan 2026 07:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agWMJcdI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1F5250BEC;
	Wed,  7 Jan 2026 07:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767770882; cv=none; b=nE76I+b7mODHRD2LbH2YAeGTtb8mmQVFD+Al6Sa7hFuqkenlGyR/Wdo+FdvRQcH9NSP7RcdJbbMIeQgN86f+1A5gaHaj7KrBj6oQGCJpdy+6/yaW14dyWS2gbmaSjaiiBe3IDDpzGu34WHhEf7j7mpOs6S1TLiesIb/fOxPZ6HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767770882; c=relaxed/simple;
	bh=Fr2d/ZEQxhQhywWp3fCbJnuBSMlf/Sh5z/p3G/KM7Hs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ClnCR3VrHaspI9vN3+dun6/OiMLGzMc8y6DsQZ9FGdXy0Tt3x1aulLq1EmapFXNb+fm84bWhALnNC6SkSYSAAfqZnOnWNkou6llorfv3rGzcXB8fYqLpHoh1+wnHmZKIjzpRasu5nbRp3Ee1aUNl0uvzziz6YCQYtB38I6jpSGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agWMJcdI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14F10C4CEF7;
	Wed,  7 Jan 2026 07:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767770881;
	bh=Fr2d/ZEQxhQhywWp3fCbJnuBSMlf/Sh5z/p3G/KM7Hs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=agWMJcdIvrmRBvPVz/YHevPPVf6M7OdC4xCPjb0+USCNWEqtyOIKvLpWwHCNLl0dl
	 R2YQrkJleZfKIn6mTtzIrlL5NQ248Rp45ZaOy1i1P6ICnjfSHR7L+p4WUuEFATKlsM
	 Pr9fnLOqb1qiwTJlv5b55AlWEI5f+BFwGYwrtNPZKRI8KTRN3K4iqSEtqE3sPaG9Qq
	 Q44QjrQ2FAXku+cCOBHJEiFNzrku1G9fipYHs+8/PBtjoMKjFovf1H7aemAoEnf4sZ
	 dWS+Atrlj3EuKbRUeyqrEawQtyhXVNOHSYdouSbM+vRjC6FtCmEMpxa1ChCaG/WfD0
	 698POT/5DfDRA==
Date: Wed, 7 Jan 2026 08:27:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Timothy Pearson <tpearson@raptorengineering.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	lee@kernel.org, Georgy.Yakovlev@sony.com, sanastasio@raptorengineering.com
Subject: Re: [PATCH v6 2/4] mfd: sony-cronos-smc: Add driver for Sony Cronos
 SMC
Message-ID: <20260107-rustling-pillbug-of-abundance-f63a0e@quoll>
References: <20260107002136.3121607-1-tpearson@raptorengineering.com>
 <20260107002136.3121607-3-tpearson@raptorengineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260107002136.3121607-3-tpearson@raptorengineering.com>

On Tue, Jan 06, 2026 at 06:21:34PM -0600, Timothy Pearson wrote:
> +static const struct of_device_id cronos_smc_dt_ids[] = {
> +	{
> +		.compatible = "sony,cronos-smc",
> +	},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, cronos_smc_dt_ids);
> +
> +static int sony_cronos_i2c_probe(struct i2c_client *i2c)
> +{
> +	struct sony_cronos_smc *ddata;
> +	int ret;
> +
> +	ddata = devm_kzalloc(&i2c->dev, sizeof(*ddata), GFP_KERNEL);
> +	if (!ddata)
> +		return -ENOMEM;
> +
> +	i2c_set_clientdata(i2c, ddata);
> +	ddata->dev = &i2c->dev;
> +
> +	ddata->regmap = devm_regmap_init_i2c(i2c, &cronos_smc_regmap_config);
> +	if (IS_ERR(ddata->regmap)) {
> +		return dev_err_probe(ddata->dev, PTR_ERR(ddata->regmap),
> +				     "Failed to allocate register map\n");
> +	}
> +
> +	ret = sony_cronos_get_device_type(ddata);
> +	if (ret)
> +		return ret;
> +
> +	ret = mfd_add_devices(ddata->dev, PLATFORM_DEVID_AUTO, cronos_smc_devs,
> +			      ARRAY_SIZE(cronos_smc_devs), NULL, 0, NULL);
> +	if (ret) {
> +		dev_err(ddata->dev, "Failed to register child devices\n");
> +		return ret;

return dev_err_probe

> +	}
> +
> +	return ret;
> +}
> +
> +static void sony_cronos_i2c_remove(struct i2c_client *i2c)
> +{
> +	struct sony_cronos_smc *ddata = i2c_get_clientdata(i2c);
> +
> +	mfd_remove_devices(ddata->dev);
> +}
> +
> +static struct i2c_driver sony_cronos_i2c_driver = {
> +	.driver = {
> +		.name = "sony-cronos-smc",
> +		.of_match_table = of_match_ptr(cronos_smc_dt_ids),

You still have here compile test warnings. Drop of_match_ptr.

> +	},
> +	.probe = sony_cronos_i2c_probe,
> +	.remove = sony_cronos_i2c_remove,
> +};
> +module_i2c_driver(sony_cronos_i2c_driver);
> +
> +MODULE_DESCRIPTION("Device driver for the Sony Cronos system management controller");
> +MODULE_AUTHOR("Raptor Engineering, LLC <tpearson@raptorengineering.com>");
> +MODULE_LICENSE("GPL");
> \ No newline at end of file

And still the same warning - since v4 or earlier!

Please read own patches.

Best regards,
Krzysztof


