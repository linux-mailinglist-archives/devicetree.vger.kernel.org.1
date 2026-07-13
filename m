Return-Path: <devicetree+bounces-325292-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mHTtJayjVGqLogMAu9opvQ
	(envelope-from <devicetree+bounces-325292-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:37:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B4A748C81
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:36:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Tl5ACkCq;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325292-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325292-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E938C30DBA3F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 08:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C56F13AA1A7;
	Mon, 13 Jul 2026 08:30:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDAC347FFE
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 08:30:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783931454; cv=none; b=IwBJwbXwagrSckPSwkECISs8o4GfyHX5dkIlwm7/C7TbIxrF2gCNNcGGBMZ4srxTEi+pklLIC1dDdvSh2WWD7oIW+6sNYgx66X+PVwYsLbFyrbcH6B18fA8nfAeQZPPWUUDIlKklWUIezvzfTHO+DyVNxI6V4nrVxzXkVH6KwfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783931454; c=relaxed/simple;
	bh=x8pYtEFEs5YSqMTm1gG5ExN4sE7Ks+t6B9OuOkTtB7w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PPvp7C2zJfoWQbGDUrTG8Er6j29208sUDWVdooIQvcRAtIR0Qow05/T0GlxbglPPL99oD1VZkFUSqeSEpo2Tvn9ymwAv/3Kd97V0jXjLlh3P9jo6DIS16Tmxxk/SNdjFfKF1WRggOb8E0FNkOVJvGH2APnecPUeObDfd0xc0mHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tl5ACkCq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 536341F000E9;
	Mon, 13 Jul 2026 08:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783931452;
	bh=OB/XCRuPMGlwD1EjTMT+B7ySU22bmxDladMzvW3oMw4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Tl5ACkCqlxHs6W2/T2GIqWQ0GcvfRNNyTk8Jn61OKG1l3HojHQ0BjdZ84fvoWWxqg
	 pT3qrqe53Qt78hG1OJfarU5d1CbNfFst7nRhUJ2M8oD6bTZVlNcVTnuM6h6uzJNMV+
	 mYfP774K49F/2sz7NP8EhLF3uZ+yzdLA98bPAUDwRdqQddsCPLF+y13y6ZZO7K3tbY
	 l4WbAiaTAUAG+6bYBuPkjjCpwFp9+AGXcb7rsAKUsO69IoyCsiXSjJ6NnJxFM3Qb5t
	 aWkpohxJPu+sELqa9lu4dFxLyoIEZvFqf8tEnnDHaF7YJVWf1sNK8bfSGrTVdlkeba
	 9JyKDQjLACyAA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] iio: adc: Add Nuvoton MA35D1 EADC driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chi-Wen Weng" <cwweng.linux@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260713081127.115197-3-cwweng.linux@gmail.com>
References: <20260713081127.115197-1-cwweng.linux@gmail.com>
 <20260713081127.115197-3-cwweng.linux@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 08:30:51 +0000
Message-Id: <20260713083052.536341F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325292-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:cwweng.linux@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:cwwenglinux@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nuvoton.com:email,lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4B4A748C81

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:
- [High] `ma35d1_adc_update_scan_mode` incorrectly rejects valid scan masks=
 that include the timestamp channel.
- [High] A timed-out conversion can leave a pending ISR that spuriously com=
pletes the next conversion, leading to stale data.
- [Low] The driver uses non-existent macros `IIO_DEV_ACQUIRE_DIRECT_MODE` a=
nd `IIO_DEV_ACQUIRE_FAILED`.
- [Low] The driver attempts to assign to a non-existent `format` field in `=
struct iio_scan_type`.
- [Low] The `MA35D1_EADC` Kconfig entry lacks an architecture or `COMPILE_T=
EST` dependency.
- [Low] Mixing `guard()` with `goto` for error handling violates `cleanup.h=
` rules.
--

--- Patch [2]: [PATCH v2 2/2] iio: adc: Add Nuvoton MA35D1 EADC driver ---
commit e4312453e3f2955d13e6052b2ffd1d6a2a5739a1
Author: Chi-Wen Weng <cwweng@nuvoton.com>

iio: adc: Add Nuvoton MA35D1 EADC driver
   =20
This commit adds an IIO driver for the Nuvoton MA35D1 Enhanced ADC
controller. It supports direct raw reads and triggered buffered capture
using an external IIO trigger.

> diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
> index ea3ba13973928..c657b3627a11a 100644
> --- a/drivers/iio/adc/Kconfig
> +++ b/drivers/iio/adc/Kconfig
[ ... ]
> @@ -844,6 +844,18 @@ config LTC2497
>  	  To compile this driver as a module, choose M here: the module will be
>  	  called ltc2497.
> =20
> +config MA35D1_EADC
> +	tristate "Nuvoton MA35D1 EADC driver"

[Severity: Low]
Is this missing a dependency on the architecture or COMPILE_TEST?
Without something like depends on ARCH_MA35 || COMPILE_TEST, this will
prompt users during kernel configuration on all architectures.

> +	select IIO_BUFFER
> +	select IIO_TRIGGERED_BUFFER
> +	select REGMAP_MMIO
[ ... ]
> diff --git a/drivers/iio/adc/ma35d1_eadc.c b/drivers/iio/adc/ma35d1_eadc.c
> new file mode 100644
> index 0000000000000..b2733e816c49d
> --- /dev/null
> +++ b/drivers/iio/adc/ma35d1_eadc.c
[ ... ]
> +static int ma35d1_adc_read_conversion(struct ma35d1_adc *adc,
> +				      const struct iio_chan_spec *chan, u16 *raw)
> +{
[ ... ]
> +	timeout =3D wait_for_completion_timeout(&adc->completion,
> +					      MA35D1_EADC_TIMEOUT);
> +
> +	ret =3D ma35d1_adc_disable_irq(adc);
> +	if (ret)
> +		return ret;
> +
> +	if (!timeout)
> +		return -ETIMEDOUT;

[Severity: High]
Does this timeout path need a call to synchronize_irq()?

If the hardware interrupt fires right as the timeout expires, the completion
could be signalled by the delayed ISR after we return -ETIMEDOUT. The next
conversion would call reinit_completion(), but the pending ISR might
immediately complete it, returning stale data or failing.

> +
> +	ret =3D regmap_read(adc->regmap, MA35D1_EADC_DAT(0), &val);
[ ... ]
> +static int ma35d1_adc_read_raw(struct iio_dev *indio_dev,
> +			       const struct iio_chan_spec *chan,
> +			       int *val, int *val2, long mask)
> +{
> +	struct ma35d1_adc *adc =3D iio_priv(indio_dev);
> +	u16 raw;
> +	int ret;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW: {
> +		IIO_DEV_ACQUIRE_DIRECT_MODE(indio_dev, claim);
> +
> +		if (IIO_DEV_ACQUIRE_FAILED(claim))
> +			return -EBUSY;

[Severity: Low]
Will this compile? The IIO_DEV_ACQUIRE_DIRECT_MODE and IIO_DEV_ACQUIRE_FAIL=
ED
macros do not appear to exist in the IIO subsystem.=20

Should this use iio_device_claim_direct_mode() or=20
iio_device_claim_direct_scoped() instead?

> +
> +		guard(mutex)(&adc->lock);
> +		if (adc->suspended)
[ ... ]
> +static int ma35d1_adc_update_scan_mode(struct iio_dev *indio_dev,
> +				       const unsigned long *scan_mask)
> +{
> +	struct ma35d1_adc *adc =3D iio_priv(indio_dev);
> +	const struct iio_chan_spec *scan_chan =3D NULL;
> +	unsigned long bit;
> +	unsigned int count;
> +
> +	count =3D 0;
> +	for_each_set_bit(bit, scan_mask, indio_dev->masklength) {
> +		scan_chan =3D &indio_dev->channels[bit];
> +		count++;
> +	}
> +
> +	if (count !=3D 1 || scan_chan->type !=3D IIO_VOLTAGE)
> +		return -EINVAL;

[Severity: High]
Does this logic unintentionally reject valid scan masks that include the
timestamp channel?

If a userspace application enables one voltage channel and the timestamp
channel, the mask will have 2 bits set. The loop will increment count
for both, causing count !=3D 1 to trigger and reject the configuration.

> +
> +	adc->scan_chan =3D scan_chan;
[ ... ]
> +static irqreturn_t ma35d1_adc_trigger_handler(int irq, void *p)
> +{
> +	struct iio_poll_func *pf =3D p;
> +	struct iio_dev *indio_dev =3D pf->indio_dev;
> +	struct ma35d1_adc *adc =3D iio_priv(indio_dev);
> +	IIO_DECLARE_BUFFER_WITH_TS(u16, scan, 1) =3D { };
> +	u16 raw;
> +	int ret;
> +
> +	guard(mutex)(&adc->lock);
> +	if (adc->suspended || !adc->scan_chan)
> +		goto done;

[Severity: Low]
This isn't a runtime bug, but does this violate the cleanup.h guidelines?

The documentation for cleanup helpers states that we should never mix
goto-based error handling with guard() declarations in the same function.

> +
> +	ret =3D ma35d1_adc_read_conversion(adc, adc->scan_chan, &raw);
[ ... ]
> +static void ma35d1_adc_init_channel(struct iio_chan_spec *chan, u32 vinp,
> +				    u32 vinn, unsigned int scan_index,
> +				    bool differential)
> +{
> +	chan->type =3D IIO_VOLTAGE;
> +	chan->indexed =3D 1;
> +	chan->channel =3D vinp;
> +	chan->scan_index =3D scan_index;
> +	chan->info_mask_separate =3D BIT(IIO_CHAN_INFO_RAW) |
> +					 BIT(IIO_CHAN_INFO_SCALE);
> +	chan->scan_type.format =3D differential ? IIO_SCAN_FORMAT_SIGNED_INT :
> +					      IIO_SCAN_FORMAT_UNSIGNED_INT;

[Severity: Low]
Does struct iio_scan_type have a format field?=20

It looks like the IIO API uses a char sign field instead, and
IIO_SCAN_FORMAT_SIGNED_INT does not exist. This will likely cause a build
failure.

> +	chan->scan_type.realbits =3D 12;
> +	chan->scan_type.storagebits =3D 16;
> +	chan->scan_type.endianness =3D IIO_CPU;
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713081127.1151=
97-1-cwweng.linux@gmail.com?part=3D2

