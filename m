Return-Path: <devicetree+bounces-263116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wI3YLsbWhGlo5gMAu9opvQ
	(envelope-from <devicetree+bounces-263116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:43:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AF8F6187
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 18:43:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52C5D3076E47
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 17:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFD872FB612;
	Thu,  5 Feb 2026 17:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="dDiXS8Bs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810612F6925
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 17:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770313190; cv=none; b=YM5EP3LAqazTBUHo5vFD7EEV3RlPF+R/+zomQJwlwppbZbWZQYXiF0nizsQf7a3l/hxfNkdSN6bTjK0TpUWebOSWpMpJiHAC+NbjmQQYIRSIsO53xZq7mfWheoYaj7aoUPs0fnjSljWk2H8vppB+dBv1D48Hmkpa0k2w4h7+EBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770313190; c=relaxed/simple;
	bh=hAkW6nhF+LUmUNanvGpF1I/RUdvXsSUbwnPXo59V8eU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=W0HXSr5fmOMltOqUdjYe0ucgKgsy3ySe+P/mW/Xz5i5gzmUtUsAuMulHu5IQp+h0Lj/FdFry3lwKu9TLN+dh0fQM2loww7cTH3mmWBugO0SuJZ5jcNHiFyGdxYjxhduUCNPPJFubtX4WY9dgWqsOMmgODyhlK7/psr+rlZfmrRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=dDiXS8Bs; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 312541A2C33;
	Thu,  5 Feb 2026 17:39:49 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EC8AA6074D;
	Thu,  5 Feb 2026 17:39:48 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B160C102F1B6D;
	Thu,  5 Feb 2026 18:39:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770313188; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=m5bZ0GbyBq2QVmRhYdoLegbe54IqW06SZN2AvRVDWyo=;
	b=dDiXS8Bs+DJPLycI9dC8wYV3oa+ZNSsQMS1HwuWuKWiT5DRf9iH8wZtCUG4P/WgYQEW7YD
	RlnsVErwGI2UeiBRUVeAUy/QDvk3VKVRr98m7RoN//wwQ8lqEdZeDlbNWj0J8ouvMn1HPy
	T7s0ZCQVP+InnKgqFTFOV6HA31uoi30MOOpc8jKp+ot4OW1XArg+UBuMx5UfJIGjqfhv+O
	iNql0bUtA6Ecy91BK65fJlnOztGWix4BnpGDoI21deGLLm6f0bNyQy+kiIJnlynyO0f1G9
	LbvYCxDfTZCxMP6JHi1Keb0+hV4jyksJhGRoeiO3u3+5JYMC6UTkvn8142eyXw==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: <broonie@kernel.org>,  <robh@kernel.org>,  <krzk+dt@kernel.org>,
  <conor+dt@kernel.org>,  <richard@nod.at>,  <vigneshr@ti.com>,
  <tudor.ambarus@linaro.org>,  <pratyush@kernel.org>,  <mwalle@kernel.org>,
  <linux-spi@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>,  <linux-mtd@lists.infradead.org>,
  <praneeth@ti.com>,  <u-kumar1@ti.com>,  <p-mantena@ti.com>,
  <a-dutta@ti.com>
Subject: Re: [RFC PATCH v2 09/12] spi: cadence-quadspi: add PHY tuning
 infrastructure
In-Reply-To: <20260113141617.1905039-10-s-k6@ti.com> (Santhosh Kumar K.'s
	message of "Tue, 13 Jan 2026 19:46:14 +0530")
References: <20260113141617.1905039-1-s-k6@ti.com>
	<20260113141617.1905039-10-s-k6@ti.com>
User-Agent: mu4e 1.12.7; emacs 30.2
Date: Thu, 05 Feb 2026 18:39:45 +0100
Message-ID: <87bji3gkda.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263116-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Queue-Id: 24AF8F6187
X-Rspamd-Action: no action

On 13/01/2026 at 19:46:14 +0530, Santhosh Kumar K <s-k6@ti.com> wrote:

> Implement the spi_controller_mem_ops execute_tuning callback to enable
> PHY tuning support for the Cadence controller. PHY tuning optimizes data
> capture timing at high frequencies by calibrating the read data capture
> delay through the controller's PHY interface.
>
> Tuning algorithm functions (cqspi_phy_tuning_ddr/sdr and
> cqspi_phy_pre/post_config) are placeholders to be implemented
> in subsequent commits.
>
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>
> ---
>  drivers/spi/spi-cadence-quadspi.c | 241 ++++++++++++++++++++++++++++++
>  1 file changed, 241 insertions(+)
>
> diff --git a/drivers/spi/spi-cadence-quadspi.c b/drivers/spi/spi-cadence-=
quadspi.c
> index 0df286d24256..b8b0e85f4f68 100644
> --- a/drivers/spi/spi-cadence-quadspi.c
> +++ b/drivers/spi/spi-cadence-quadspi.c
> @@ -32,6 +32,7 @@
>=20=20
>  #define CQSPI_NAME			"cadence-qspi"
>  #define CQSPI_MAX_CHIPSELECT		4
> +#define CQSPI_AM654_NON_PHY_CLK_RATE	25000000
>=20=20
>  static_assert(CQSPI_MAX_CHIPSELECT <=3D SPI_DEVICE_CS_CNT_MAX);
>=20=20
> @@ -65,6 +66,7 @@ struct cqspi_st;
>  struct cqspi_flash_pdata {
>  	struct cqspi_st	*cqspi;
>  	u32		clk_rate;
> +	u32		non_phy_clk_rate;

This is the second (and last) main issue I have with the series as it is
right now. We cannot set this type of frequency in the driver IMO, it is
too board specific.

We currently have a DT property for the SPI maximum supported
frequency. I believe this is no longer enough. Why not making this
frequency property an array? First frequency would be the default,
non tuned maximum frequency. The second would be the maximum frequency
reachable when tuning the PHY.

The rest of the patch LGTM otherwise, but there is this frequency
information which I think should be handled with more care.

Thanks,
Miqu=C3=A8l

