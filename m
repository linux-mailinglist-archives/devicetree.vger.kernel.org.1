Return-Path: <devicetree+bounces-164222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2438DA7F8E4
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:03:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C93F316820F
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516D9263F5E;
	Tue,  8 Apr 2025 09:00:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DA42222D5
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744102822; cv=none; b=nUri2KaacqlXI4u24VU/1OaitnFGwQ87oah9FZ+20qIPn8vtg0bMFK+fIIg4JQNoqBbJAw6vdJ0bbCdS1Zfz7BpK+DnX3y3KUznGTNkc2uuwA8Ne8CvaxaY+pIZCbs78iZKoPCQnEzy0ynn6H1uFBt6K4O0bSOxZ6Iy1cxiNegs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744102822; c=relaxed/simple;
	bh=nl1hpaXBm54KjyizKr5foqeIrLkVu4aS5xEBVQ231t8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=FxHrz5f11y0nvm6v845dLbwT+n6GXa8GP+xITaA2VHoT0aPynD1+E1RdmxkClECOJx4sWqs0QhasdrTn2ZRCbqYp3PmohU6wvoFL7GmeyAQBLtCfF5bjAM5vClgswW9eEvdxu2+vg2crX4gyzlY1Uoq4cjU6XMFtwUqO/KskcjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1u24nS-0001k3-Nf; Tue, 08 Apr 2025 10:59:06 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1u24nR-003tta-2c;
	Tue, 08 Apr 2025 10:59:05 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1u24nR-0003e6-2L;
	Tue, 08 Apr 2025 10:59:05 +0200
Message-ID: <710569e305924a0a84e9792bc779d37a24011477.camel@pengutronix.de>
Subject: Re: [PATCH v8 3/7] memory: Add STM32 Octo Memory Manager driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Patrice Chotard <patrice.chotard@foss.st.com>, Krzysztof Kozlowski
 <krzk@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>
Cc: christophe.kerello@foss.st.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Date: Tue, 08 Apr 2025 10:59:05 +0200
In-Reply-To: <20250407-upstream_ospi_v6-v8-3-7b7716c1c1f6@foss.st.com>
References: <20250407-upstream_ospi_v6-v8-0-7b7716c1c1f6@foss.st.com>
	 <20250407-upstream_ospi_v6-v8-3-7b7716c1c1f6@foss.st.com>
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

On Mo, 2025-04-07 at 15:27 +0200, Patrice Chotard wrote:
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
> Signed-off-by: Christophe Kerello <christophe.kerello@foss.st.com>
> Signed-off-by: Patrice Chotard <patrice.chotard@foss.st.com>
> ---
>  drivers/memory/Kconfig     |  17 ++
>  drivers/memory/Makefile    |   1 +
>  drivers/memory/stm32_omm.c | 474 +++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 492 insertions(+)
>=20
[...]
> diff --git a/drivers/memory/stm32_omm.c b/drivers/memory/stm32_omm.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..db50aeffb0aa32a9d51a205d8=
ba30ab2299e1c34
> --- /dev/null
> +++ b/drivers/memory/stm32_omm.c
> @@ -0,0 +1,474 @@
[...]
> +static int stm32_omm_disable_child(struct device *dev)
> +{
> +	static const char * const resets_name[] =3D {"ospi1", "ospi2"};
> +	struct stm32_omm *omm =3D dev_get_drvdata(dev);
> +	struct reset_control *reset;
> +	int ret;
> +	u8 i;
> +
> +	ret =3D stm32_omm_toggle_child_clock(dev, true);
> +	if (!ret)
> +		return ret;
> +
> +	for (i =3D 0; i < omm->nb_child; i++) {
> +		reset =3D reset_control_get_exclusive(dev, resets_name[i]);
> +		if (IS_ERR(reset)) {
> +			dev_err(dev, "Can't get %s reset\n", resets_name[i]);
> +			return PTR_ERR(reset);
> +		};
> +
> +		/* reset OSPI to ensure CR_EN bit is set to 0 */
> +		reset_control_assert(reset);
> +		udelay(2);
> +		reset_control_deassert(reset);
> +
> +		reset_control_put(reset);

With this reset_control_put(), you are effectively stating that you
don't care about the state of the reset line after this point. To
guarantee the reset line stays deasserted, the driver should keep the
reset control around.

Are you requesting and dropping the reset controls here so the child
drivers can request them at some point? If so, there is an
acquire/relase mechanism for this:

https://docs.kernel.org/driver-api/reset.html#c.reset_control_acquire

Either way, reset_control_get/put() belong in probe/remove.

regards
Philipp

