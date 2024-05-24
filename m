Return-Path: <devicetree+bounces-68992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2F48CE460
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 12:47:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D9B31C20A1B
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 10:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BADD085C77;
	Fri, 24 May 2024 10:47:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F02F85C58
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 10:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716547656; cv=none; b=q9z1vVrr8wNewGc9IvuhufEY3X9hZabzif1ynQ0cDk4oKqmTBeiIH2hPJaDq2Pc8bOGuUgZSuy5sDWxAuPLyQl+lOkyrfx5HRQKBSnpaIqZ+UNINrRYBsADsJOILIJ0dc4LHdG8Stt6vXWCsUWhw4N8rgRU61slQODSLZreL/Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716547656; c=relaxed/simple;
	bh=9TvjPqCliIU3ksv9BzpmBijNYq3dOmKIiwbn2vtAAok=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VpEbRdkbRAOULCX8HJGyXArW9fj6kksiaEEbzETnoWN11geYgENIQBpK/4mAUcN7KI6IQovfrkWNDV2JasNQ0cR7O8krAFRjhIlhC8SRT5VabVso+rEVaCtmmJ+AGKvBpnJzmGOQyr9IS7FPIrPJDGg89zIkGuG3I8XtgIv2YmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sASSE-00012m-SY; Fri, 24 May 2024 12:47:18 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sASSD-002mZn-Tv; Fri, 24 May 2024 12:47:17 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sASSD-00Bejt-2f;
	Fri, 24 May 2024 12:47:17 +0200
Date: Fri, 24 May 2024 12:47:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Pankaj Gupta <pankaj.gupta@nxp.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 4/5] firmware: imx: add driver for NXP EdgeLock Enclave
Message-ID: <ZlBwNbkFV1fcnPKE@pengutronix.de>
References: <20240523-imx-se-if-v2-0-5a6fd189a539@nxp.com>
 <20240523-imx-se-if-v2-4-5a6fd189a539@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240523-imx-se-if-v2-4-5a6fd189a539@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Thu, May 23, 2024 at 04:19:35PM +0530, Pankaj Gupta wrote:
> NXP hardware IP(s) for secure-enclaves like Edgelock Enclave(ELE),
> are embedded in the SoC to support the features like HSM, SHE & V2X,
> using message based communication interface.
> 
> The secure enclave FW communicates on a dedicated messaging unit(MU)
> based interface(s) with application core, where kernel is running.
> It exists on specific i.MX processors. e.g. i.MX8ULP, i.MX93.
> 
> This patch adds the driver for communication interface to secure-enclave,
> for exchanging messages with NXP secure enclave HW IP(s) like EdgeLock
> Enclave (ELE) from Kernel-space, used by kernel management layers like
> - DM-Crypt.
> 
> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
> ---
>  drivers/firmware/imx/Kconfig        |  12 +
>  drivers/firmware/imx/Makefile       |   2 +
>  drivers/firmware/imx/ele_base_msg.c | 286 +++++++++++++++++++
>  drivers/firmware/imx/ele_base_msg.h |  92 +++++++
>  drivers/firmware/imx/ele_common.c   | 239 ++++++++++++++++
>  drivers/firmware/imx/ele_common.h   |  43 +++
>  drivers/firmware/imx/se_ctrl.c      | 531 ++++++++++++++++++++++++++++++++++++
>  drivers/firmware/imx/se_ctrl.h      |  99 +++++++
>  include/linux/firmware/imx/se_api.h |  14 +
>  9 files changed, 1318 insertions(+)
> 
> +static int imx_fetch_se_soc_info(struct device *dev)
> +{
> +	struct se_if_priv *priv = dev_get_drvdata(dev);
> +	struct imx_se_node_info_list *info_list;
> +	const struct imx_se_node_info *info;
> +	struct soc_device_attribute *attr;
> +	struct soc_device *sdev;
> +	u64 serial_num;
> +	u16 soc_rev;
> +	int err = 0;
> +
> +	info = priv->info;
> +	info_list = (struct imx_se_node_info_list *)
> +				device_get_match_data(dev);
> +
> +	/* This function should be called once.
> +	 * Check if the soc_rev is zero to continue.
> +	 */
> +	if (priv->soc_rev)
> +		return err;
> +
> +	err = info->se_fetch_soc_info(dev, &soc_rev, &serial_num);
> +	if (err < 0) {
> +		dev_err(dev, "Failed to fetch SoC Info.");
> +		return err;
> +	}

This is called unconditionally but is not set for i.MX93. You should
either set it for i.MX93 or check it before calling it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

