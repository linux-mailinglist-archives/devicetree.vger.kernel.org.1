Return-Path: <devicetree+bounces-326208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Qi9TIfstVmqF0wAAu9opvQ
	(envelope-from <devicetree+bounces-326208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:39:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E36C7754A64
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:39:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IGX8V6M4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326208-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326208-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 03AB13078608
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 12:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39D8F448CF0;
	Tue, 14 Jul 2026 12:29:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B584483AD
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 12:29:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784032191; cv=none; b=IGbECbXwmqVIsWCfVMX6LW81k/KgYLXejkZBz3TGmddRByQ8t/F/PtFNQiS7KUfYcV8fMP96HSoNdOgWKHyPMpxBnkjpe6LeGdmfwRQ+NaicjQ1tXgjEtOgwjXTR7QAYtfp4E6s1elasKoTZjmyV3hPwFrSYDrRjE0N0yhIdkvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784032191; c=relaxed/simple;
	bh=wj0Ko2eFAq/iv2oXQiR3dXc9lDmeZ4ov7m/T3L3aMbw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cpBoW1O6MNZvvKbuQ0nwoVKapSKdsa09zFHquFFIQCZqFhQjCezb3i9DbNv0PtyuDpeTl0ObdfnroWAQtoE/E4mQiXP52fOcU5H8gxJX2xZYlPiOgWMadJ/5tc53Whev1k+e9BYGhFdcdPfwXjIXs+37olhjcTDtc/FreBH5QtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGX8V6M4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECAB41F000E9;
	Tue, 14 Jul 2026 12:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784032187;
	bh=eKlL5QjSvoK1KQnhe328lU4Po/u+swyddDTQUVkqGm8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IGX8V6M4EFIUs1JfiGPJdvEbeeNfTKHzVXx01hlnGi0Q/72YXLMV9o2xBnlueyLVT
	 0+4PiB04QPdHTkuYmrctdpk/s/U3IGrJnGpo2YJDNxtXtB9udry+BvahlpyfFoClTm
	 VT+T4SETbEn/nJwVEcDpSsO4mr3R/XrG0Z2Nkpux+nbgmHF1lHv29mqebrHo8WNdst
	 nI6AdLPWpx6Sk5MFnbRyoY3I9mOsifw6LB61ZyrMSQPtVgYcTMFYRh+q+MLZU5mWyD
	 C6oy9oF89OzzXo8LtMqCNZ8ETQEdH0ebdOWF/70dCvVfwf10nkzS/G+u69KADAHudE
	 NqsqLhKDcN38g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 10/17] iio: frequency: ad9910: initial driver
 implementation
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar" <rodrigo.alencar@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-ad9910-iio-driver-v8-10-36939c3c07d2@analog.com>
References: <20260714-ad9910-iio-driver-v8-0-36939c3c07d2@analog.com>
 <20260714-ad9910-iio-driver-v8-10-36939c3c07d2@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 12:29:46 +0000
Message-Id: <20260714122946.ECAB41F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326208-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E36C7754A64

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] State check in `ad9910_sw_powerdown_set` masks partial hardware =
failures.
- [Medium] Software state `st->data.output_current_uA` is updated before ha=
rdware write and not reverted on error.
- [Medium] The `adi,refclk-out-drive-strength` property is ignored if the P=
LL is disabled, preventing valid hardware configurations.
--

--- Patch [10]: [PATCH v8 10/17] iio: frequency: ad9910: initial driver imp=
lementation ---
commit fa8ede19ae75d86e6b54bd272809bde5cbcf3f66
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>
Subject: iio: frequency: ad9910: initial driver implementation

Add the core AD9910 DDS driver infrastructure with single tone mode support.
This includes SPI register access, profile management via GPIO pins, PLL/DAC
configuration from firmware properties, and single tone frequency/phase/amp=
litude
control through IIO attributes.

> diff --git a/drivers/iio/frequency/ad9910.c b/drivers/iio/frequency/ad991=
0.c
> new file mode 100644
> index 0000000000000..b41b011af2812
> --- /dev/null
> +++ b/drivers/iio/frequency/ad9910.c

[ ... ]

> +static int ad9910_set_dac_current(struct ad9910_state *st, u32 val_uA,
> +				  bool update)
> +{
> +	u32 code;
> +
> +	/* FSC =3D (86.4 / Rset) * (1 + CODE/96) where Rset =3D 10k ohms */
> +	val_uA =3D clamp(val_uA, AD9910_DAC_IOUT_MIN_uA, AD9910_DAC_IOUT_MAX_uA=
);
> +	code =3D DIV_ROUND_CLOSEST(val_uA - AD9910_DAC_IOUT_MIN_uA, 90);
> +	st->data.output_current_uA =3D AD9910_DAC_IOUT_MIN_uA + code * 90;

[Severity: Medium]
If ad9910_reg32_write() fails due to an SPI error, the hardware state isn't
updated. However, since st->data.output_current_uA was already modified, wo=
n't
subsequent reads (e.g., IIO_CHAN_INFO_SCALE) return this cached value inste=
ad
of the actual hardware configuration?

> +
> +	return ad9910_reg32_write(st, AD9910_REG_AUX_DAC, code, update);
> +}

[ ... ]

> +static inline bool ad9910_sw_powerdown_get(struct ad9910_state *st)
> +{
> +	return FIELD_GET(AD9910_CFR1_SW_POWER_DOWN_MSK,
> +			 st->reg[AD9910_REG_CFR1].val32) ? true : false;
> +}
> +
> +static int ad9910_sw_powerdown_set(struct ad9910_state *st, bool enable)
> +{
> +	int ret;
> +
> +	if (ad9910_sw_powerdown_get(st) =3D=3D enable)
> +		return 0;

[Severity: Medium]
If the previous powerdown sequence failed after writing SW1 but before writ=
ing
SW0 due to an SPI error, ad9910_sw_powerdown_get() will still return true
because one of the masked bits is set.

Will this early return prevent subsequent calls from attempting to recover =
and
complete the powerdown sequence?

> +
> +	/*
> +	 * When powering down, the DAC and AUX_DAC (SW1) must be powered down
> +	 * first, as they require an I/O update to take effect. The opposite is

[ ... ]

> +static int ad9910_parse_fw(struct ad9910_state *st)
> +{
> +	static const char * const refclk_out_drv0[] =3D {
> +		"disabled", "low", "medium", "high",
> +	};
> +	struct device *dev =3D &st->spi->dev;
> +	const char *prop;
> +	u32 tmp;
> +	int ret;
> +
> +	st->data.pll_enabled =3D device_property_read_bool(dev, "adi,pll-enable=
");
> +	if (st->data.pll_enabled) {
> +		prop =3D "adi,charge-pump-current-microamp";
> +		if (device_property_present(dev, prop)) {
> +			ret =3D device_property_read_u32(dev, prop, &tmp);
> +			if (ret)
> +				return dev_err_probe(dev, ret, "property read: %s\n", prop);
> +
> +			if (tmp < AD9910_ICP_MIN_uA || tmp > AD9910_ICP_MAX_uA)
> +				return dev_err_probe(dev, -ERANGE,
> +						     "invalid charge pump current %u\n", tmp);
> +		} else {
> +			tmp =3D AD9910_ICP_MIN_uA;
> +		}
> +		st->data.pll_charge_pump_current =3D tmp;
> +
> +		prop =3D "adi,refclk-out-drive-strength";
> +		if (device_property_present(dev, prop)) {

[Severity: Medium]
Is it intentional that adi,refclk-out-drive-strength is only parsed when the
PLL is enabled?=20

The hardware appears to support routing and buffering the reference clock
output regardless of whether the internal PLL is enabled. If a device tree
omits adi,pll-enable but provides adi,refclk-out-drive-strength, won't this
property be ignored entirely?

> +			ret =3D device_property_match_property_string(dev, prop,
> +								    refclk_out_drv0,
> +								    ARRAY_SIZE(refclk_out_drv0));

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-ad9910-iio=
-driver-v8-0-36939c3c07d2@analog.com?part=3D10

