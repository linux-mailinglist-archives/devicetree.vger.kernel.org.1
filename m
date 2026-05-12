Return-Path: <devicetree+bounces-295985-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qN6+Cn2oAmpSvQEAu9opvQ
	(envelope-from <devicetree+bounces-295985-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:11:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72590519832
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:11:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58DA1302D13A
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:09:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E469930B50D;
	Tue, 12 May 2026 04:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYX5y4de"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C571FC8
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 04:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778558948; cv=none; b=Hs0A7NXqzYE+FotSpr9IascLd9DZsGrB3Wmsjjunf0JuP/rz4s0goqSZitVDWnHRpE9Io8pMzObHZaftoHj/TT1B6nGKXH0sOmDLjSx5Fz8HV+4X2JDMDCO9dFueYmx7byBPIvnvLi83xBa3embd+/VZJEr/rak+dvTpO4Vni5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778558948; c=relaxed/simple;
	bh=gtu119iD2kH/c4XndqoDnWX/+om4xjW5kgGXgza09mU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=eTSjEZhErbQ3k/W/Af6D8uefhJJmJoevhifFPfehK2O2h9hrdhv4btEsn0AS+LRdV7w4FV/OmuZBh468eTgTPaofOL8zOkQ/gmOg8653Af50fKh6yETWR9h09JsGPDVsUVfQ9y5a+Ey+Q5ECGpnH2z0MNBKwBL1r0Cuej0GGbs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYX5y4de; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20562C2BCB0;
	Tue, 12 May 2026 04:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778558948;
	bh=gtu119iD2kH/c4XndqoDnWX/+om4xjW5kgGXgza09mU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=nYX5y4deP2Cs3xQMRBiWNmuyfEz4Wpl0AyGq5eeRiT7eCFtkSEuBWT85riV9I+dFZ
	 6Ya32aIg6nSOH9m9Dp6G531zBjLeg++bMDWUu3rQvTae6KFYY3IRtRBAi4tWjNcvuW
	 AlVW3nmQyLajEFJUX7/wUPKvVBnjRZGPzK28zAOouMBQTvKSqN2td/cqYrxHFkc1LH
	 7jyWZOmo/qu4CO2cb9K89MWNr77oydETQZmIt2Q3MeMK2sSzSixpvo8VMXBAnMpmys
	 /PAWbD13tn/hP/MME/5WMv5NeJhFgrRRUoTrASS3qESPDwGPL6TC6hpfB9HFnaqljC
	 uR79V07gE1kUA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 2/6] iio: adc: ad4691: add initial driver for AD4691
 family
Reply-To: sashiko@lists.linux.dev
To: "Radu Sabau via B4 Relay" <devnull+radu.sabau.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260511-ad4692-multichannel-sar-adc-driver-v10-2-e1fbb1744e38@analog.com>
References: <20260511-ad4692-multichannel-sar-adc-driver-v10-2-e1fbb1744e38@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 04:09:07 +0000
Message-Id: <20260512040908.20562C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 72590519832
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295985-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,radu.sabau.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Sparse register arrays matched using broad GCC ranges cause unalig=
ned multi-byte SPI reads.
- [High] `ad4691_get_sampling_freq()` performs an SPI read without acquirin=
g the required synchronization lock.
- [Medium] SAMP_FREQ is incorrectly placed in info_mask_separate instead of=
 info_mask_shared_by_all.
--

commit c07ff01f28d7750e0cbd4ed3b20b3bab0c7401f0
Author: Radu Sabau <radu.sabau@analog.com>
Subject: iio: adc: ad4691: add initial driver for AD4691 family

This commit adds support for the Analog Devices AD4691 family of high-speed,
low-power multichannel SAR ADCs. It implements a custom regmap layer over r=
aw
SPI to handle the device's mixed 1/2/3/4-byte register widths and uses the
standard IIO read_raw/write_raw interface for single-channel reads.

> IIO_CHAN_INFO_SAMP_FREQ is exposed as info_mask_shared_by_all because
> the AD4691 family has a single internal oscillator whose frequency
> register is shared across all channels. Writing sampling_frequency for
> any one channel necessarily changes the conversion rate for every other
> channel, so the shared annotation correctly reflects the hardware
> behaviour.

The commit message explicitly states that IIO_CHAN_INFO_SAMP_FREQ is exposed
as info_mask_shared_by_all, but the code appears to add it to
info_mask_separate instead:

> diff --git a/drivers/iio/adc/ad4691.c b/drivers/iio/adc/ad4691.c
> new file mode 100644
> index 0000000000000..5b72216bca80e
> --- /dev/null
> +++ b/drivers/iio/adc/ad4691.c
[ ... ]
> +#define AD4691_CHANNEL(ch)						\
> +	{								\
> +		.type =3D IIO_VOLTAGE,					\
> +		.indexed =3D 1,						\
> +		.info_mask_separate =3D BIT(IIO_CHAN_INFO_RAW)		\
> +				    | BIT(IIO_CHAN_INFO_SAMP_FREQ),	\
> +		.info_mask_separate_available =3D				\
> +				      BIT(IIO_CHAN_INFO_SAMP_FREQ),	\
> +		.info_mask_shared_by_all =3D BIT(IIO_CHAN_INFO_SCALE),	\
> +		.channel =3D ch,						\

Does this incorrectly generate independent sysfs attributes for each channe=
l?

If so, writing to one channel's attribute might alter the shared internal
oscillator, silently changing the conversion rate for all other channels.

[ ... ]
> +static int ad4691_reg_read(void *context, unsigned int reg, unsigned int=
 *val)
> +{
[ ... ]
> +	switch (reg) {
> +	case 0 ... AD4691_OSC_FREQ_REG:
> +	case AD4691_SPARE_CONTROL ... AD4691_ACC_MASK_REG - 1:
> +	case AD4691_ACC_MASK_REG + 1 ... AD4691_ACC_SAT_OVR_REG(15):
> +		ret =3D spi_write_then_read(spi, tx, sizeof(tx), rx, 1);
> +		if (ret)
> +			return ret;
> +		*val =3D rx[0];
> +		return 0;
> +	case AD4691_ACC_MASK_REG:
> +	case AD4691_STD_SEQ_CONFIG:
> +	case AD4691_AVG_IN(0) ... AD4691_AVG_IN(15):
> +		ret =3D spi_write_then_read(spi, tx, sizeof(tx), rx, 2);

Since AD4691_AVG_IN(n) evaluates to 0x201 + 2*n, the valid base addresses
are spaced by 2. Will the range match inadvertently cover the intermediate
unaligned addresses?

If so, iterating over the regmap (e.g., via the debugfs registers dump) cou=
ld
cause unaligned multi-byte SPI reads that cross register boundaries.

[ ... ]
> +static bool ad4691_readable_reg(struct device *dev, unsigned int reg)
> +{
> +	switch (reg) {
> +	case 0 ... AD4691_OSC_FREQ_REG:
> +	case AD4691_SPARE_CONTROL ... AD4691_ACC_SAT_OVR_REG(15):
> +	case AD4691_STD_SEQ_CONFIG:
> +	case AD4691_AVG_IN(0) ... AD4691_AVG_IN(15):
> +	case AD4691_AVG_STS_IN(0) ... AD4691_AVG_STS_IN(15):
> +	case AD4691_ACC_IN(0) ... AD4691_ACC_IN(15):
> +	case AD4691_ACC_STS_DATA(0) ... AD4691_ACC_STS_DATA(15):

A similar question applies here for the sparse register arrays like
AD4691_AVG_STS_IN, AD4691_ACC_IN, and AD4691_ACC_STS_DATA. Could this cause
readable_reg() to return true for invalid unaligned addresses?

[ ... ]
> +static int ad4691_get_sampling_freq(struct ad4691_state *st, int *val)
> +{
> +	unsigned int reg_val;
> +	int ret;
> +
> +	ret =3D regmap_read(st->regmap, AD4691_OSC_FREQ_REG, &reg_val);

Is it necessary to acquire st->lock before performing this regmap_read()?

Looking at ad4691_single_shot_read(), it holds the lock during the conversi=
on
sequence, including the fsleep() wait for the conversion to complete. If a
user reads the sampling frequency concurrently, could this SPI transaction
interleave with the conversion sequence?

(Note: I see this is fixed in a later commit that adds oversampling support=
 by
removing the SPI read entirely, but mentioning it here for the current patc=
h).

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-ad4692-mul=
tichannel-sar-adc-driver-v10-0-e1fbb1744e38@analog.com?part=3D2

