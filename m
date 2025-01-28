Return-Path: <devicetree+bounces-141345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 046C9A20726
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 10:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54864188B24C
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 09:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD5E91DFE10;
	Tue, 28 Jan 2025 09:18:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082CD1DF757
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738055909; cv=none; b=KhBfsQxyB7tZdYFrZGygU/aFWlkf/K4HAgct+SEoGtsbeL8iccF7dxBjEjeS+Mljon6+ZTQ/ULZCfoxB0BHr2pj3f5F7r3pfw3h09QoGv3zV8vZHDTyAjB77O3djSB9KkS3B7rnlWlsH3l7gume8uHaAhse7j3NVq6x4E+r+uuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738055909; c=relaxed/simple;
	bh=16YnyOH7xom0w8z7EmJ1N0PdsPQqvXJ8xXyEPUZ0THg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SxSVQOG6Q+IzWyOwq04oDOJNwwraTWxPmy159j0E5CLWVfZGrVL/rWkcUAmxzaXNWOE2Nm8uXjloBoP74BHG8nNE4hk6/xu9PqxtgezLHt4PVF6KlYLEsz9L2Xw4g6gKrMsLA8/8YzvfnlrvFFRjHRkyohFRkXruNihnCryZ1rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tchjI-0002II-Ly; Tue, 28 Jan 2025 10:17:56 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tchjH-002Gpb-1q;
	Tue, 28 Jan 2025 10:17:55 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tchjH-0001lT-1Y;
	Tue, 28 Jan 2025 10:17:55 +0100
Message-ID: <3d6cfb082ef8ee0fc66c885a84f64ae0a851234b.camel@pengutronix.de>
Subject: Re: [PATCH v2 4/9] memory: Add STM32 Octo Memory Manager driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: patrice.chotard@foss.st.com, Mark Brown <broonie@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>,  Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>, Catalin
 Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 christophe.kerello@foss.st.com
Date: Tue, 28 Jan 2025 10:17:55 +0100
In-Reply-To: <20250128081731.2284457-5-patrice.chotard@foss.st.com>
References: <20250128081731.2284457-1-patrice.chotard@foss.st.com>
	 <20250128081731.2284457-5-patrice.chotard@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Di, 2025-01-28 at 09:17 +0100, patrice.chotard@foss.st.com wrote:
> From: Patrice Chotard <patrice.chotard@foss.st.com>
>=20
> Octo Memory Manager driver (OMM) manages:
>   - the muxing between 2 OSPI busses and 2 output ports.
>     There are 4 possible muxing configurations:
>       - direct mode (no multiplexing): OSPI1 output is on port 1 and OSPI=
2
>         output is on port 2
>       - OSPI1 and OSPI2 are multiplexed over the same output port 1
>       - swapped mode (no multiplexing), OSPI1 output is on port 2,
>         OSPI2 output is on port 1
>       - OSPI1 and OSPI2 are multiplexed over the same output port 2
>   - the split of the memory area shared between the 2 OSPI instances.
>   - chip select selection override.
>   - the time between 2 transactions in multiplexed mode.
>   - check firewall access.
>=20
> Signed-off-by: Patrice Chotard <patrice.chotard@foss.st.com>
> Signed-off-by: Christophe Kerello <christophe.kerello@foss.st.com>
> ---
>  drivers/memory/Kconfig     |  17 ++
>  drivers/memory/Makefile    |   1 +
>  drivers/memory/stm32_omm.c | 509 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 527 insertions(+)
>  create mode 100644 drivers/memory/stm32_omm.c
>=20
[...]
> diff --git a/drivers/memory/stm32_omm.c b/drivers/memory/stm32_omm.c
> new file mode 100644
> index 000000000000..6f20fe0183ec
> --- /dev/null
> +++ b/drivers/memory/stm32_omm.c
> @@ -0,0 +1,509 @@
[...]
> +static int stm32_omm_configure(struct device *dev)
> +{
> +	struct stm32_omm *omm =3D dev_get_drvdata(dev);
> +	struct reset_control *rstc;
> +	unsigned long clk_rate, clk_rate_max =3D 0;
> +	int ret;
> +	u8 i;
> +	u32 mux =3D 0;
> +	u32 cssel_ovr =3D 0;
> +	u32 req2ack =3D 0;
> +
> +	omm->clk =3D devm_clk_get(dev, NULL);
> +	if (IS_ERR(omm->clk)) {
> +		dev_err(dev, "Failed to get OMM clock (%ld)\n",
> +			PTR_ERR(omm->clk));
> +
> +		return PTR_ERR(omm->clk);
> +	}
> +
> +	ret =3D pm_runtime_resume_and_get(dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	/* parse children's clock */
> +	for (i =3D 0; i < omm->nb_child; i++) {
> +		clk_rate =3D clk_get_rate(omm->child[i].clk);
> +		if (!clk_rate) {
> +			dev_err(dev, "Invalid clock rate\n");
> +			goto err_clk_disable;
> +		}
> +
> +		if (clk_rate > clk_rate_max)
> +			clk_rate_max =3D clk_rate;
> +	}
> +
> +	rstc =3D devm_reset_control_get_optional(dev, NULL);

Please use devm_reset_control_get_optional_exclusive() directly.

regards
Philipp

