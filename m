Return-Path: <devicetree+bounces-313395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E9HUB2rIM2rlGAYAu9opvQ
	(envelope-from <devicetree+bounces-313395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:28:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A35E869F50F
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:28:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EPgNAY5o;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313395-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313395-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1772C30071DE
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3A13D6CDF;
	Thu, 18 Jun 2026 10:28:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F1C23E715A
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 10:28:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781778499; cv=none; b=R2OHqm/Rs9QRFoA0RhdEvbTOFy7MEBtSBtKOfv5I6bnPV7okf5uHj4anUyrh5sjxQpCXYfmltJJ36w/NM//IzgDnxBvug6bcAXugTsvG1US4V4yHIHT0+yRAPksQrFkyKMMexJRcrrZ0us3rsazTwUUjYODdBwAsPLv0AjA82Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781778499; c=relaxed/simple;
	bh=d5CPOlcoSWvZlaTRswhS+5elk9SK5owHfICpVQLGnYQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gDytOCt+pa/FskWKkWF0qPgaD0V8GhIbicbVqXkhwq81gIrVZ24BOoSX3JPc/7o/uOmfM+1f4nGxwCW1MJZwnEknc2xIjOiHyiLfUW6vniq6Tfj7tyxE2hhdswtt5oH5yFQSf9WXG2G5w2ZXbcX4pBizbffx6OJ9RwyltzR7goQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPgNAY5o; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7C041F000E9;
	Thu, 18 Jun 2026 10:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781778493;
	bh=0RxLEYs4Q0Y+7NpGEWKixjtp1BWeL33uRv2f7CD/cmY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EPgNAY5oB1QJgDp3TA7j7sdmuq7+545HEvtv4CNtPsQxu15cy4mPbi8zciXcYUw0u
	 h2OphIeb+5SUDRkNzd6VCpa/DfWcfHb5NA5ZUW9TYnL1+cDPih4nEDwKbpIVOg/RBh
	 jvuL7dzskoU9kTyPhixcDJ8DtbBSJpqVsaO/Y7PrTfEwK9lifs5jDt7SrA4fDYicXz
	 MI8VFza4jEBUvyKhLXDFys5+SAS/ovSlTfKvgZtN3ydTkdhQQ5T1dAf7y6HRjnWwCO
	 p6PioVyflFkzEi92XjRITCv7KVRvP2z8R/D6lcg6HXDh6RZzp0++xZwLQ9JNQX1bxt
	 Stmy2IOKLycJg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 4/5] iio: adc: versal-sysmon: add threshold event
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260618101414.3462934-5-salih.erim@amd.com>
References: <20260618101414.3462934-1-salih.erim@amd.com>
 <20260618101414.3462934-5-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 10:28:13 +0000
Message-Id: <20260618102813.A7C041F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313395-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,sysmon_unmask_work.work:url,amd.com:email,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A35E869F50F

Thank you for your contribution! Sashiko AI review found 7 potential issue(=
s) to consider:
- [High] The delayed worker `sysmon_unmask_worker` silently clears all pend=
ing hardware interrupts, causing concurrent voltage alarm events to be perm=
anently dropped.
- [High] Missing bounds checking in threshold value conversion leads to int=
eger overflow and hardware register corruption.
- [High] Race condition between interrupt configuration/teardown and the un=
mask worker leads to unhandled interrupt storms.
- [High] Voltage alarm handler incorrectly disables the alarm configuration=
 and early returns leak ISR status, causing interrupt storms.
- [High] The hardirq handler `sysmon_iio_irq` takes a spinlock and sleeps w=
hen using an I2C regmap.
- [High] Writing a supply voltage threshold silently clears the format (FMT=
) and mode (MODE) bits in the threshold register.
- [Medium] Unconditional execution of the delayed worker resets hardware tr=
acking status on voltage alarms.
--

commit 4ebb615e40cc90088cf5fe0430223005d0197c79
Author: Salih Erim <salih.erim@amd.com>
Subject: iio: adc: versal-sysmon: add threshold event support

This commit adds threshold event support for temperature and supply voltage
channels on the Versal Sysmon. It configures hysteresis mode for temperature
alarms and window mode for supply voltage channels, along with an interrupt
handler and delayed worker to handle the level-sensitive hardware interrupt=
s.

> diff --git a/drivers/iio/adc/versal-sysmon-core.c b/drivers/iio/adc/versa=
l-sysmon-core.c
> index 03a745d3fb4f3..50b5228aa222f 100644
> --- a/drivers/iio/adc/versal-sysmon-core.c
> +++ b/drivers/iio/adc/versal-sysmon-core.c
[ ... ]
> @@ -52,6 +102,16 @@ static const struct iio_chan_spec temp_channels[] =3D=
 {
>  	SYSMON_CHAN_TEMP(3, SYSMON_TEMP_MIN_MIN, "min_min"),
>  };
> =20
> +static void sysmon_q8p7_to_millicelsius(s16 raw_data, int *val)
> +{
> +	*val =3D (raw_data * MILLIDEGREE_PER_DEGREE) >> SYSMON_FRACTIONAL_SHIFT;
> +}
> +
> +static void sysmon_millicelsius_to_q8p7(u32 *raw_data, int val)
> +{
> +	*raw_data =3D (val << SYSMON_FRACTIONAL_SHIFT) / MILLIDEGREE_PER_DEGREE;
> +}

[Severity: High]
Can this overflow if a large or negative value is passed from userspace?

If val << SYSMON_FRACTIONAL_SHIFT overflows, or if val is negative, the
resulting negative integer gets implicitly cast to a u32 without masking. T=
his
sign-extends the value, which then gets written directly to the
SYSMON_TEMP_TH_UP register, potentially corrupting reserved upper bits.

> +
>  static void sysmon_supply_rawtoprocessed(int raw_data, int *val)
>  {
>  	int mantissa, format, exponent;
> @@ -69,6 +129,33 @@ static void sysmon_supply_rawtoprocessed(int raw_data=
, int *val)
>  	*val =3D (mantissa * (int)MILLI) >> exponent;
>  }
> =20
> +static void sysmon_supply_processedtoraw(int val, u32 reg_val, u32 *raw_=
data)
> +{
> +	int exponent =3D FIELD_GET(SYSMON_MODE_MASK, reg_val);
> +	int format =3D FIELD_GET(SYSMON_FMT_MASK, reg_val);
> +	int scale, tmp;
> +
> +	scale =3D BIT(SYSMON_SUPPLY_MANTISSA_BITS - exponent);
> +	tmp =3D (val * scale) / (int)MILLI;

[Severity: High]
Does val * scale overflow the 32-bit signed integer before it reaches the
clamp() below?

A large positive voltage could map to a negative integer, clamping to 0 and
inadvertently programming a 0V threshold.

> +
> +	if (format)
> +		tmp =3D clamp(tmp, S16_MIN, S16_MAX);
> +	else
> +		tmp =3D clamp(tmp, 0, U16_MAX);
> +
> +	*raw_data =3D (u16)tmp;
> +}

[ ... ]
> +static int sysmon_write_event_value(struct iio_dev *indio_dev,
> +				    const struct iio_chan_spec *chan,
> +				    enum iio_event_type type,
> +				    enum iio_event_direction dir,
> +				    enum iio_event_info info,
> +				    int val, int val2)
> +{
[ ... ]
> +	case IIO_VOLTAGE:
> +		offset =3D sysmon_supply_thresh_offset(chan->address, dir);
> +		if (offset < 0)
> +			return offset;
> +
> +		ret =3D regmap_read(sysmon->regmap, offset, &reg_val);
> +		if (ret)
> +			return ret;
> +
> +		sysmon_supply_processedtoraw(val, reg_val, &raw_val);
> +
> +		return regmap_write(sysmon->regmap, offset, raw_val);

[Severity: High]
Does casting tmp to u16 in sysmon_supply_processedtoraw() discard the extra=
cted
exponent and format bits?

When raw_val is later written via regmap_write() here, won't this zero out =
the
SYSMON_FMT_MASK and SYSMON_MODE_MASK fields in the threshold register,
corrupting the hardware configuration?  Should this use regmap_update_bits()
instead?

[ ... ]
> +static int sysmon_handle_event(struct iio_dev *indio_dev, u32 event)
> +{
> +	u32 alarm_flag_offset =3D SYSMON_ALARM_FLAG + event * SYSMON_REG_STRIDE;
> +	u32 alarm_reg_offset =3D SYSMON_ALARM_REG + event * SYSMON_REG_STRIDE;
> +	struct sysmon *sysmon =3D iio_priv(indio_dev);
> +	unsigned long alarm_flag_reg;
> +	unsigned int reg_val;
> +	u32 address, bit;
> +	int ret;
> +
> +	switch (event) {
[ ... ]
> +	case SYSMON_BIT_ALARM0:
> +	case SYSMON_BIT_ALARM1:
> +	case SYSMON_BIT_ALARM2:
> +	case SYSMON_BIT_ALARM3:
> +	case SYSMON_BIT_ALARM4:
> +		ret =3D regmap_read(sysmon->regmap, alarm_flag_offset, &reg_val);
> +		if (ret)
> +			return ret;
> +
> +		alarm_flag_reg =3D reg_val;
> +
> +		for_each_set_bit(bit, &alarm_flag_reg, SYSMON_ALARM_BITS_PER_REG) {
> +			address =3D bit + SYSMON_ALARM_BITS_PER_REG * event;
> +			sysmon_push_event(indio_dev, address);
> +			ret =3D regmap_clear_bits(sysmon->regmap, alarm_reg_offset, BIT(bit));
> +			if (ret)
> +				return ret;
> +		}

[Severity: High]
Does this clear the hardware alarm configuration rather than just masking t=
he
interrupt?

alarm_reg_offset resolves to SYSMON_ALARM_REG, which completely disables the
alarm and forces the sysfs state out of sync.

Also, if regmap_clear_bits() fails and returns early, doesn't this skip wri=
ting
to alarm_flag_offset to clear the level-sensitive hardware flag? This would
leave the interrupt unmasked and unhandled, resulting in an immediate inter=
rupt
storm.

[ ... ]
> +static void sysmon_unmask_worker(struct work_struct *work)
> +{
> +	struct sysmon *sysmon =3D
> +		container_of(work, struct sysmon, sysmon_unmask_work.work);
> +	unsigned int isr;
> +
> +	/*
> +	 * If the ISR read fails, skip processing to avoid acting
> +	 * on undefined data.
> +	 */
> +	scoped_guard(spinlock_irq, &sysmon->irq_lock) {
> +		if (regmap_read(sysmon->regmap, SYSMON_ISR, &isr))
> +			break;
> +		regmap_write(sysmon->regmap, SYSMON_ISR, isr);
> +		sysmon_unmask_temp(sysmon, isr);
> +	}

[Severity: High]
Does this silently drop concurrent voltage alarm events?

SYSMON_ISR is a Write-1-to-Clear register. The code reads the entire regist=
er
and writes it back verbatim, clearing all pending interrupts. However,
sysmon_unmask_temp() only processes temperature interrupts.=20

If a supply voltage alarm fires just before this read, it is cleared from t=
he
hardware but never dispatched since the worker doesn't call
sysmon_handle_events().

> +
> +	if (sysmon->masked_temp)
> +		schedule_delayed_work(&sysmon->sysmon_unmask_work,
> +				      msecs_to_jiffies(SYSMON_UNMASK_WORK_DELAY_MS));
> +	else
> +		regmap_write(sysmon->regmap, SYSMON_STATUS_RESET, 1);
> +}

[Severity: Medium]
Does this unintentionally flush the hardware's internal min/max tracking
registers for unrelated events?

In sysmon_iio_irq(), schedule_delayed_work() is called unconditionally. If a
voltage alarm triggers the interrupt, sysmon->masked_temp remains 0. When t=
his
worker runs 500ms later, it sees masked_temp is 0 and executes the else bra=
nch,
resetting the hardware status on every voltage threshold crossing.

> +
> +static irqreturn_t sysmon_iio_irq(int irq, void *data)
> +{
> +	struct iio_dev *indio_dev =3D data;
> +	struct sysmon *sysmon =3D iio_priv(indio_dev);
> +	unsigned int isr, imr;
> +
> +	guard(spinlock)(&sysmon->irq_lock);
> +
> +	if (regmap_read(sysmon->regmap, SYSMON_ISR, &isr) ||
> +	    regmap_read(sysmon->regmap, SYSMON_IMR, &imr))
> +		return IRQ_NONE;

[Severity: High]
Can this sleep in a hardirq context if the device is attached via I2C?

The driver requests sysmon_iio_irq as a primary hardirq handler via
devm_request_irq(). Although the commit message mentions I2C won't have an
interrupt, if an I2C device node provides an "interrupts" property, it will
be requested.=20

When the IRQ fires, the I2C regmap will attempt to acquire a mutex while
holding a spinlock in hardirq context, leading to a panic. Should this use
a threaded IRQ?

[ ... ]
> +static void sysmon_disable_interrupts(void *data)
> +{
> +	struct sysmon *sysmon =3D data;
> +
> +	regmap_write(sysmon->regmap, SYSMON_IDR, SYSMON_INTR_ALL_MASK);
> +
> +	scoped_guard(spinlock_irq, &sysmon->irq_lock)
> +		sysmon->masked_temp =3D 0;
> +
> +	cancel_delayed_work_sync(&sysmon->sysmon_unmask_work);
> +}

[Severity: High]
Is there a race condition here with sysmon_unmask_worker()?

The driver writes to SYSMON_IDR outside of sysmon->irq_lock. Concurrently,
sysmon_unmask_worker() calculates the unmask bit under the lock based on the
software state.

If the worker calculates the unmask state before this teardown path acquires
the lock to clear sysmon->masked_temp, the worker will write to SYSMON_IER,
overriding the teardown path's IDR write. This leaves the hardware interrupt
enabled after driver unbind and IRQ handler removal, resulting in an interr=
upt
storm.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618101414.3462=
934-1-salih.erim@amd.com?part=3D4

