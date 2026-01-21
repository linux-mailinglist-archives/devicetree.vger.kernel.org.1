Return-Path: <devicetree+bounces-257874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJMxE5O0cGndZAAAu9opvQ
	(envelope-from <devicetree+bounces-257874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:12:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF9455C4C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:12:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CB7FF8C467B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 10:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50D5C421EE1;
	Wed, 21 Jan 2026 10:44:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiPtYKt9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2C83D2FEE;
	Wed, 21 Jan 2026 10:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768992297; cv=none; b=YItmgVHz/n8dCZN5mVBblz9+jaFlhgUDrVwIPnpPruuI2m/mcKlURwDpneAQKuDFs9Uxbh7jmocU+gp4bVaf3fkonqfi8SHX2uUANgX/w2RYScb85RkBCGjk6t3fTyU1OJG02D41Ess0zd3S7wI1LD72Lq85PAtu0zlSUcQMhPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768992297; c=relaxed/simple;
	bh=TOZuB+2yqLbtJOMDd2WB+YZbOWhoxkhnNzCazqbFRCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K4AUwRNLzbn7x8DIg2LVmNc0fCY7L6Ui0qZYoW82Ij+sPusc8vr6zJhGokZL8fl4nnx4C6+nPnQuD5mPQQvpl/Yhav4LEgw92u5gJ1lWku2B+xN0ooZhd2J7Xw3rNVtcMz9HMZNfRwDW02N6pbQ4tYAWYHe22wSkjr6kQSJY6/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiPtYKt9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13358C16AAE;
	Wed, 21 Jan 2026 10:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768992296;
	bh=TOZuB+2yqLbtJOMDd2WB+YZbOWhoxkhnNzCazqbFRCw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iiPtYKt9Si/btGlU9/TFr3qPVEcQOcRQPpIcJiSL5YCrbN5/ELnWMM177CE9wTxDM
	 le8mVg11Ne6WCa9i6ni2vxkgo6oXGFSR1mBIXFrXMacq61FoLSt9gfdvd3KzwS9XiO
	 V2ZH6D+utSEed4khFweEWJYllW9+IWH41loNFYzCCxjkRzymKi/6s1+Tg7A8yykqp/
	 BCOAa0g9IaJxvCeYwG01url82nsL/XFeHN8piti1CJcJE0z/h0PdT5gsvAetlf+VLy
	 yH7ptho0I/ZUPh+tDB/Joe6p4wmvgdhAQl4R7N4ebDtCGKDunxzeNUI+JYtL6qFi9m
	 becMyE3a+mhuw==
Date: Wed, 21 Jan 2026 18:44:53 +0800
From: Yixun Lan <dlan@kernel.org>
To: Yao Zi <me@ziyao.cc>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] mmc: sdhci-of-k1: spacemit: Add support for K3 SoC
Message-ID: <20260121104453-GKD61591@kernel.org>
References: <20260121-07-k3-mmc-v1-0-ff77c07bfdf6@kernel.org>
 <20260121-07-k3-mmc-v1-2-ff77c07bfdf6@kernel.org>
 <aXCg43ZepMm1DNHq@pie>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXCg43ZepMm1DNHq@pie>
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257874-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	MIME_TRACE(0.00)[0:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8AF9455C4C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 09:48 Wed 21 Jan     , Yao Zi wrote:
> On Wed, Jan 21, 2026 at 03:27:36PM +0800, Yixun Lan wrote:
> > The SDHCI controller found on SpacemiT K3 SoC share the same IP with K1
> > generation and introduce a compatible data to denote the change that broken
> > 64BIT DMA issue has been fixed.
> > 
> > Signed-off-by: Yixun Lan <dlan@kernel.org>
> > ---
> >  drivers/mmc/host/sdhci-of-k1.c | 22 ++++++++++++++++++++--
> >  1 file changed, 20 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/mmc/host/sdhci-of-k1.c b/drivers/mmc/host/sdhci-of-k1.c
> > index a160e1d5d9bd..a56cb8a36982 100644
> > --- a/drivers/mmc/host/sdhci-of-k1.c
> > +++ b/drivers/mmc/host/sdhci-of-k1.c
> > @@ -259,8 +259,20 @@ static const struct sdhci_pltfm_data spacemit_sdhci_k1_pdata = {
> >  		   SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
> >  };
> >  
> > +static const struct sdhci_pltfm_data spacemit_sdhci_k3_pdata = {
> > +	.ops = &spacemit_sdhci_ops,
> > +	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
> > +		  SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC |
> > +		  SDHCI_QUIRK_32BIT_ADMA_SIZE |
> > +		  SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
> > +		  SDHCI_QUIRK_BROKEN_CARD_DETECTION |
> > +		  SDHCI_QUIRK_BROKEN_TIMEOUT_VAL,
> > +	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
> > +};
> > +
> >  static const struct of_device_id spacemit_sdhci_of_match[] = {
> > -	{ .compatible = "spacemit,k1-sdhci" },
> > +	{ .compatible = "spacemit,k1-sdhci", .data = &spacemit_sdhci_k1_pdata },
> > +	{ .compatible = "spacemit,k3-sdhci", .data = &spacemit_sdhci_k3_pdata },
> >  	{ /* sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, spacemit_sdhci_of_match);
> > @@ -271,10 +283,16 @@ static int spacemit_sdhci_probe(struct platform_device *pdev)
> >  	struct spacemit_sdhci_host *sdhst;
> >  	struct sdhci_pltfm_host *pltfm_host;
> >  	struct sdhci_host *host;
> > +	const struct sdhci_pltfm_data *data;
> >  	struct mmc_host_ops *mops;
> >  	int ret;
> >  
> > -	host = sdhci_pltfm_init(pdev, &spacemit_sdhci_k1_pdata, sizeof(*sdhst));
> > +
got one extra blank line here, will drop in next version

> > +	data = of_device_get_match_data(&pdev->dev);
> > +	if (!data)
> > +		return dev_err_probe(dev, -EINVAL, "failed to get platform data\n");
> 
> Is there a need to check against return value of
> of_device_get_match_data()? It isn't a user input, instead missing the
> data seems a kernel bug to me, and shouldn't happen in production.
> 
I agree, it should be safe to drop this check

> Regards,
> Yao Zi

-- 
Yixun Lan (dlan)

