Return-Path: <devicetree+bounces-294687-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBnOBdlN/mllowAAu9opvQ
	(envelope-from <devicetree+bounces-294687-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:55:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 848614FBB08
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 22:55:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 148D930242AC
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 20:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A0722F616B;
	Fri,  8 May 2026 20:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcblWFmm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370B141B370
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 20:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778273750; cv=none; b=kiRkkE16gHvHiiFTWPBE8pc3wfVdxYOg05As993197VzG2T2K+R/zaYqmTAGDG7YwycNJu+gFftX4XEsuos3L+TyMhk/RhT5YFe0EzYMTbzz9HHCFKpWf37l5KlPXQTgM0xDa5SbnS3PoUiQdYUfpxQsv4zEfajyOigvVZgGsjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778273750; c=relaxed/simple;
	bh=UNT6isB7GfpOMZjNIwO4o07KtzDLuLnOJjZ1w0GGic0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=InjwSUpwXuKw5QiJ0XbyU+BhHhoAsquW83Zev93Bk4Xu7S10zkdbcqLQ/1ywOCRJpocfzIRrVInRGrjKV8Rv86BCrrE4Pm33kgfbkwgVJzqRRuU0KZ3VvnKXMtebr/eCCtuaHmqlBnb2udoRnpg/RQhbBq6M1iv+GJzZ8ZpMXZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcblWFmm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E3DDC2BCB0;
	Fri,  8 May 2026 20:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778273749;
	bh=UNT6isB7GfpOMZjNIwO4o07KtzDLuLnOJjZ1w0GGic0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=gcblWFmmk55nxKa7A5Zhl5Z2qBW3YPnU8CZ0Yr0yAQjW5v2guh5iMELZT0a27C/WJ
	 Mz/kpPLQcHLKZWGZ6LvynYAG8HnpBCJbLXN7ZU4NLdVQpiokDXHLmdCvTWH9lN2eRq
	 nd9YT+3CR341PcyDqfFKnWTzjTwYkRAKgrzRO6/xdIDs26uwTfHU7+ASxJWCr6+IAc
	 TRDiT9Omq8sKkyEE9533cSpRFyDZu1eRn31lknqgS9EmZOagm6Isasv6uRn0JkKRBR
	 kpAZb9YXxL2yr3VHQamEQd7MamsRiv9gnUFK8B3cygIw9/HVLmCc4qJpJDKNvspVEh
	 ntPLXNKX3GUYQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] iio: dac: Add AD5529R DAC driver support
Reply-To: sashiko@lists.linux.dev
To: "Janani Sunil" <janani.sunil@analog.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260508-ad5529r-driver-v2-2-e315441685d7@analog.com>
References: <20260508-ad5529r-driver-v2-2-e315441685d7@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 20:55:48 +0000
Message-Id: <20260508205549.5E3DDC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 848614FBB08
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294687-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Critical] Incorrect SPI `read_flag_mask` causes all regmap reads to fail.
- [High] Incomplete hardware reset sequence fails to properly reset the dev=
ice.
- [High] Hardcoded output scale ignores device configuration and internal r=
eference.
- [High] Missing LDAC (Load DAC) trigger prevents analog output updates.
--

commit 02e32fb72beab3fdbff7c500ce586fab5c255e89
Author: Janani Sunil <janani.sunil@analog.com>

iio: dac: Add AD5529R DAC driver support

Add support for AD5529R 16-channel, 12/16 bit Digital to Analog Converter

> diff --git a/drivers/iio/dac/ad5529r.c b/drivers/iio/dac/ad5529r.c
> new file mode 100644
> index 0000000000000..3676956f6eff7
> --- /dev/null
> +++ b/drivers/iio/dac/ad5529r.c
> @@ -0,0 +1,564 @@
[ ... ]
> +#define   AD5529R_RESET_DELAY_US		10000
> +#define   AD5529R_SPI_BUF_SIZE			4
> +#define   AD5529R_NUM_SUPPLIES			4
> +#define   AD5529R_SPI_READ_FLAG			0x80
[ ... ]
> +static const struct regmap_config ad5529r_regmap_8bit_config =3D {
> +	.name =3D "ad5529r-8bit",
> +	.reg_bits =3D 16,
> +	.val_bits =3D 8,
> +	.max_register =3D AD5529R_8BIT_REG_MAX,
> +	.read_flag_mask =3D AD5529R_SPI_READ_FLAG,

Is this mask correct for a 16-bit register address? Since reg_bits is set
to 16 in the regmap configuration, setting read_flag_mask to 0x80 will
set bit 7 instead of the most-significant bit (bit 15). Should this be
0x8000 so the device properly interprets read commands?

> +	.rd_table =3D &ad5529r_8bit_readable_table,
> +	.wr_table =3D &ad5529r_8bit_writeable_table,
> +};
[ ... ]
> +static int ad5529r_reset(struct ad5529r_state *st)
> +{
> +	struct reset_control *rst;
> +	int ret;
> +
> +	rst =3D devm_reset_control_get_optional_exclusive(&st->spi->dev, NULL);
> +	if (IS_ERR(rst))
> +		return PTR_ERR(rst);
> +
> +	if (rst) {
> +		ret =3D reset_control_deassert(rst);

Will this properly reset the device if the reset line was already left in
a deasserted state by the bootloader? There is an unused
AD5529R_RESET_PULSE_US macro defined earlier. Does the driver need to
call reset_control_assert() and wait before calling
reset_control_deassert() to ensure the hardware sees a valid reset pulse?

> +		if (ret)
> +			return ret;
> +	} else {
> +		ret =3D regmap_write(st->regmap_8bit, AD5529R_REG_INTERFACE_CONFIG_A,
[ ... ]
> +static int ad5529r_read_raw(struct iio_dev *indio_dev,
> +			    struct iio_chan_spec const *chan,
> +			    int *val, int *val2, long mask)
> +{
[ ... ]
> +	case IIO_CHAN_INFO_SCALE:
> +		/*
> +		 * Using default 0-5V range: VOUTn =3D A =C3=97 D/2^N + B
> +		 * where A =3D 5V, B =3D 0V, D =3D digital code, N =3D resolution
> +		 * Scale =3D 5000mV / 2^resolution
> +		 */
> +		*val =3D 5000;

The commit message mentions the device features multiple output voltage
ranges from -20V to +20V and a built-in 4.096V reference. However, the
scale is hardcoded to assume a 0-5V range.

Will this report incorrect physical voltages to userspace if the device
defaults to a different range, uses the internal reference, or was
configured for a bipolar range by the bootloader?

> +		*val2 =3D st->model_data->resolution;
> +
> +		return IIO_VAL_FRACTIONAL_LOG2;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int ad5529r_write_raw(struct iio_dev *indio_dev,
> +			     struct iio_chan_spec const *chan,
> +			     int val, int val2, long mask)
> +{
> +	struct ad5529r_state *st =3D iio_priv(indio_dev);
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW:
> +		if (val < 0 || val > GENMASK(st->model_data->resolution - 1, 0))
> +			return -EINVAL;
> +
> +		return regmap_write(st->regmap_16bit, AD5529R_REG_DAC_INPUT_A(chan->ch=
annel), val);

Does this code actually trigger an update to the physical analog output?

The value is written to the DAC_INPUT_A register, but the driver does not
appear to issue a software LDAC command or pulse a hardware LDAC GPIO.
If the device doesn't default to a transparent mode, is an explicit LDAC
trigger needed here?

> +	default:
> +		return -EINVAL;
> +	}
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508-ad5529r-dr=
iver-v2-0-e315441685d7@analog.com?part=3D2

