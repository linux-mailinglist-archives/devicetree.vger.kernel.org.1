Return-Path: <devicetree+bounces-315283-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pLDROA7wO2oDfwgAu9opvQ
	(envelope-from <devicetree+bounces-315283-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:56:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C65026BF5AB
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:56:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZdKC6d6C;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315283-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315283-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B5D24300C394
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 14:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F913D8130;
	Wed, 24 Jun 2026 14:53:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 981993D8104
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 14:53:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782312830; cv=none; b=pZvfYDSweAEfWwBcdGAt36wxRYNMwgsvjl02LpZieKC7PNTufUe+kBmM7G2Em93EvhZlz2oORF3Ir1I8pG5Ho7gz6EwR3748Vc9mLuNMjn1R4SLxmRWclJty6OkQZmdSIiMo5ozGCVqS38QhkT3dLR9KRgtiEbR1zELSNMOEcv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782312830; c=relaxed/simple;
	bh=T1ZW3B1oxy+AwPAaJjtBaPp3AJaG0/Vt/SRnSUtaCV0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gGh3JeXYN2kG1zjjtx6Vzkq7hIhDhekXRL/TTbsQpSyqX/IZ/ri8b4z2jw1iT1Kq1LGHx7rsHpqzoQN3jLj3rxYzuiv6gMEsHBvGlU0YOgxy31sPJq3ukH1WrgQi9xK7ewsyTWJTgM6h2G51xZ8/VPx2eQrfh3L8wkQMJVP1Ji8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdKC6d6C; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2228E1F000E9;
	Wed, 24 Jun 2026 14:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782312829;
	bh=jWLqbMwKtMfUe+KzGq0Dc3FNKvHou5VdD/w32z3hjjA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZdKC6d6C4Jo//4vFDPLqFyEOi2BVjMbctZ7zv9St1F9llK/GY69cRnnwSoOPvO9cV
	 RKwT802LXhxbd/r/lNZcQ4EKEFPcmn31CpV2dWEEZ8yRoZD5vsx2ydzOzVrBwtOniV
	 y62AHYzDUDFUYbLnuai9cTo4RXXVQsahL5sIDtHvu/npbc06cUdfWqe13JaNmciq+c
	 HrnpThjQEmaIpklEEOfJgpMOPopREcnS7PEcGvjiMWw1+WQeJB8JJNssG57W308xEC
	 VYIsKf+yxaLIGobZrDwavIyTsScv0EPZi2HV8KsDlA4qE1Kpdsi1atI0lNfbbxFo3Y
	 Fc0x4Lan0r2Mw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 4/5] iio: adc: versal-sysmon: add threshold event
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Salih Erim" <salih.erim@amd.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260624143722.4047649-5-salih.erim@amd.com>
References: <20260624143722.4047649-1-salih.erim@amd.com>
 <20260624143722.4047649-5-salih.erim@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 14:53:48 +0000
Message-Id: <20260624145349.2228E1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315283-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sysmon_unmask_work.work:url,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C65026BF5AB

Thank you for your contribution! Sashiko AI review found 7 potential issue(=
s) to consider:
- [High] Supply voltage threshold events permanently disable themselves in =
hardware upon triggering.
- [High] Unmask worker silently drops voltage alarms.
- [High] Use-After-Free due to delayed work scheduling after cancellation d=
uring unbind.
- [High] Race condition in interrupt configuration re-enables masked alarms.
- [High] Hard IRQ handler triggers sleep-in-atomic panic on I2C devices.
- [Medium] Data corruption when setting negative temperature thresholds.
- [Medium] Integer underflow in lower threshold calculation breaks hardware=
 alarms.
--

commit 5011ca744b3ab433f6a307686494ec49213c41b4
Author: Salih Erim <salih.erim@amd.com>

iio: adc: versal-sysmon: add threshold event support

Add threshold event support for temperature and supply voltage channels,
introducing hysteresis mode for temperature and window mode for supply alar=
ms.

> diff --git a/drivers/iio/adc/versal-sysmon-core.c b/drivers/iio/adc/versa=
l-sysmon-core.c
> index 03a745d3fb4f3..8f2c502d9cb6d 100644
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

[Severity: Medium]
When a negative threshold (e.g., -256000 mC) is converted to Q8.7 format in
sysmon_millicelsius_to_q8p7(), will it produce a negative 32-bit integer due
to sign extension?

If this negative value is subsequently written directly to the 32-bit
hardware registers without masking, could it overwrite the upper 16 bits wi=
th
1s and corrupt the hardware register state?

[ ... ]
> +static int sysmon_write_event_config(struct iio_dev *indio_dev,
> +				     const struct iio_chan_spec *chan,
> +				     enum iio_event_type type,
> +				     enum iio_event_direction dir,
> +				     bool state)
> +{
[ ... ]
> +	case IIO_TEMP:
> +		if (state) {
> +			ret =3D regmap_write(sysmon->regmap, SYSMON_IER, mask);
> +			if (ret)
> +				return ret;
> +
> +			scoped_guard(spinlock_irq, &sysmon->irq_lock)
> +				sysmon->temp_mask &=3D ~mask;
> +		} else {
> +			ret =3D regmap_write(sysmon->regmap, SYSMON_IDR, mask);
> +			if (ret)
> +				return ret;
> +
> +			scoped_guard(spinlock_irq, &sysmon->irq_lock)
> +				sysmon->temp_mask |=3D mask;
> +		}
> +		return 0;

[Severity: High]
Because the hardware interrupt is disabled via SYSMON_IDR outside the
sysmon->irq_lock, can a race condition occur with the unmask worker?

If the worker runs concurrently, holds the lock, and calculates the enable
mask using the old state, might it write to SYSMON_IER and override this
disable command, resulting in unexpected interrupts?

[ ... ]
> +static int sysmon_update_temp_lower(struct sysmon *sysmon)
> +{
> +	unsigned int upper_reg;
> +	int upper_mc, lower_mc;
> +	u32 raw_val;
> +	int ret;
> +
> +	ret =3D regmap_read(sysmon->regmap, SYSMON_TEMP_TH_UP, &upper_reg);
> +	if (ret)
> +		return ret;
> +
> +	sysmon_q8p7_to_millicelsius(upper_reg, &upper_mc);
> +	lower_mc =3D clamp(upper_mc - sysmon->temp_hysteresis, -256000, 255992);

[Severity: Medium]
Since sysmon->temp_hysteresis can accept any positive value up to INT_MAX,
will subtracting a large hysteresis from a negative upper threshold
mathematically underflow a 32-bit signed integer?=20

If an underflow occurs here, wrapping to a positive value, will clamp() then
incorrectly set the lower re-arm threshold higher than the upper threshold
and break the hardware alarm logic?

> +	sysmon_millicelsius_to_q8p7(&raw_val, lower_mc);
> +
> +	return regmap_write(sysmon->regmap, SYSMON_TEMP_TH_LOW, raw_val);
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
> +	case IIO_TEMP:
> +		switch (info) {
> +		case IIO_EV_INFO_VALUE:
> +			/* Q8.7 signed range: -256000 to +255992 mC */
> +			if (val < -256000 || val > 255992)
> +				return -EINVAL;
> +
> +			sysmon_millicelsius_to_q8p7(&raw_val, val);
> +
> +			ret =3D regmap_write(sysmon->regmap, SYSMON_TEMP_TH_UP, raw_val);
> +			if (ret)
> +				return ret;
> +
> +			/* Recompute lower =3D upper - hysteresis */
> +			return sysmon_update_temp_lower(sysmon);
> +
> +		case IIO_EV_INFO_HYSTERESIS:
> +			if (val < 0)
> +				return -EINVAL;
> +
> +			sysmon->temp_hysteresis =3D val;
> +
> +			return sysmon_update_temp_lower(sysmon);

[ ... ]
> +static int sysmon_handle_event(struct iio_dev *indio_dev, u32 event)
> +{
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

[Severity: High]
The IRQ handler clears the administrative alarm configuration bit in hardwa=
re
when a voltage alarm triggers. Does the driver ever re-arm supply alarms li=
ke
it does for temperature alarms in the delayed worker?=20

If not, will a single threshold event permanently disable the supply alarm =
in
hardware?

> +			if (ret)
> +				return ret;
> +		}
> +
> +		return regmap_write(sysmon->regmap, alarm_flag_offset, alarm_flag_reg);
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
Since SYSMON_ISR is a write-1-to-clear register, does writing the entire ISR
back clear all pending interrupts, including any newly asserted voltage ala=
rms?

Because the worker only calls sysmon_unmask_temp() and ignores the voltage
alarm bits, will this silently drop any voltage alarms that fired during the
worker's execution?

> +
> +	if (sysmon->masked_temp)
> +		schedule_delayed_work(&sysmon->sysmon_unmask_work,
> +				      msecs_to_jiffies(SYSMON_UNMASK_WORK_DELAY_MS));
> +	else
> +		regmap_write(sysmon->regmap, SYSMON_STATUS_RESET, 1);
> +}
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
If the device is instantiated on an I2C bus and the device tree provides an
interrupts property, will this hardirq handler trigger a scheduling while
atomic panic?

The handler acquires a spinlock and calls regmap_read(), which would sleep
when using the I2C bus's mutex-based locking. Should the driver verify if t=
he
regmap is suitable for atomic context before requesting the IRQ?

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
> +
> +static int sysmon_init_interrupt(struct sysmon *sysmon,
> +				 struct device *dev,
> +				 struct iio_dev *indio_dev,
> +				 int irq)
> +{
[ ... ]
> +	ret =3D devm_request_irq(dev, irq, sysmon_iio_irq, 0, "sysmon-irq", ind=
io_dev);
> +	if (ret)
> +		return ret;
> +
> +	return devm_add_action_or_reset(dev, sysmon_disable_interrupts, sysmon);
> +}

[Severity: High]
During unbind, sysmon_disable_interrupts() cancels the delayed work before
the IRQ handler is freed. If an interrupt fires after
cancel_delayed_work_sync() returns, will the still-active sysmon_iio_irq()
handler reschedule the delayed work?

Could this cause a use-after-free when the sysmon structure is freed shortly
after, allowing the delayed work to execute 500ms later on freed memory?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624143722.4047=
649-1-salih.erim@amd.com?part=3D4

