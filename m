Return-Path: <devicetree+bounces-297154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cP75GYrwBGr7QQIAu9opvQ
	(envelope-from <devicetree+bounces-297154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 23:43:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF72B53B25B
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 23:43:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 51BB73024A36
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 21:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 693663C3C0B;
	Wed, 13 May 2026 21:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm6Mo8xQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057A73C3781;
	Wed, 13 May 2026 21:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778708613; cv=none; b=E2D2Y0Wea9UnRTzlI6z9qEUNT0baczm1QoyUusdy8gY9TWjdGuMp4/56gNlM8MRIjRzUHnhs+yQ05ubJ7GnwsY/YaY/CZAEkq8drjfUiXI1R7DeSBXJJ4hf5bDTm0bV+anhvptunGaOzUi71teOoUcFDH+5iKJkw5DYjf1+yBUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778708613; c=relaxed/simple;
	bh=LT8Be7Q4Bi/XtelKyT3U23dHJqp7FkMFF//vn8LYL9s=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=qSeqNnf8Qn+0CqYyelbPbTdlNy4NyKFSvIb8M7cEqk0jcy0A6B2haFXjwMayJeVlIJowjIUOHW5eP5HllMyBOdbKB3fQHfWHKwuN+huL0mCe73svaFbAN+RMCL9aUK/fC7azbZXkAKMiRWtqBSnLStBgpHkg6zl2zJ9sM4aadgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm6Mo8xQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67B7AC19425;
	Wed, 13 May 2026 21:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778708612;
	bh=LT8Be7Q4Bi/XtelKyT3U23dHJqp7FkMFF//vn8LYL9s=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=Nm6Mo8xQ2zXpJKHexPXmHPRrkolH9pKoUK5XOkv5YzPpitvR2GTk+n5nBZtShkFur
	 ra4J0fo5F0oE3oFsGLlDSu2c5Z4XlcRJxYHrbu4BGG2DWU1JIN9h6leuBa2zFKUrx2
	 IMec4JSSZ9BI5qI4989bBCiEQH+B9h55ARDzu3Fmc+RwpFyCbdHwVQ6RCXqQOULqMp
	 Oe4WJ+X8uMa+nYDYtqAFxUT4XIJaY52sYimFQ1f5hzUNLW4HQcIMhzew4EQDeW92Jx
	 5Y+lIPP2/QrsVRGOPEj1NW+ibNDfV0SDDE48PpkeD4JfOcn2/bbOK43PgIZ3VEG6ii
	 WZ6BlHeojGTWw==
Date: Wed, 13 May 2026 16:43:31 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sai Krishna Musham <sai.krishna.musham@amd.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	mani@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, cassel@kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	michal.simek@amd.com, bharat.kumar.gogada@amd.com,
	thippeswamy.havalige@amd.com
Subject: Re: [PATCH RESEND] PCI: amd-mdb: Assert PERST# on shutdown
Message-ID: <20260513214331.GA339797@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260427121227.290604-1-sai.krishna.musham@amd.com>
X-Rspamd-Queue-Id: CF72B53B25B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297154-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[tor.lore.kernel.org:server fail,amd.com:server fail];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, Apr 27, 2026 at 05:42:27PM +0530, Sai Krishna Musham wrote:
> Add a shutdown handler for the AMD MDB PCIe host controller that
> asserts the PERST# signal via GPIO before the system powers off or
> reboots. This ensures the connected PCIe endpoint is held in reset
> during shutdown.

I see a few other drivers (dwc/pci-imx6.c, dwc/pcie-fu740.c,
pcie-iproc-platform.c) that do something similar, but it doesn't look
consistent.  *Should* this be consistent across all drivers?

> Signed-off-by: Sai Krishna Musham <sai.krishna.musham@amd.com>
> ---
>  drivers/pci/controller/dwc/pcie-amd-mdb.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-amd-mdb.c b/drivers/pci/controller/dwc/pcie-amd-mdb.c
> index 7e50e11fbffd..69d21b4727e4 100644
> --- a/drivers/pci/controller/dwc/pcie-amd-mdb.c
> +++ b/drivers/pci/controller/dwc/pcie-amd-mdb.c
> @@ -507,6 +507,14 @@ static int amd_mdb_pcie_probe(struct platform_device *pdev)
>  	return amd_mdb_add_pcie_port(pcie, pdev);
>  }
>  
> +static void amd_mdb_pcie_shutdown(struct platform_device *pdev)
> +{
> +	struct amd_mdb_pcie *pcie = platform_get_drvdata(pdev);
> +
> +	if (pcie->perst_gpio)
> +		gpiod_set_value_cansleep(pcie->perst_gpio, 1);
> +}
> +
>  static const struct of_device_id amd_mdb_pcie_of_match[] = {
>  	{
>  		.compatible = "amd,versal2-mdb-host",
> @@ -521,6 +529,7 @@ static struct platform_driver amd_mdb_pcie_driver = {
>  		.suppress_bind_attrs = true,
>  	},
>  	.probe = amd_mdb_pcie_probe,
> +	.shutdown = amd_mdb_pcie_shutdown,
>  };
>  
>  builtin_platform_driver(amd_mdb_pcie_driver);
> -- 
> 2.43.0
> 

