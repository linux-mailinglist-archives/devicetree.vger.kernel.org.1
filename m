Return-Path: <devicetree+bounces-306219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XnnbI8cjIGp7wwAAu9opvQ
	(envelope-from <devicetree+bounces-306219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 14:53:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D8307637B6C
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 14:53:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Aeil1ksO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306219-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306219-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D9393173A38
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 12:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02AFB40F8F8;
	Wed,  3 Jun 2026 12:42:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1FA30FF08;
	Wed,  3 Jun 2026 12:42:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780490524; cv=none; b=JFVFAehOYow5nNdLtDsw1Pa3s6X3bpAwiD39rm2usW86S3wadFnWKK0rWM9lPpse8q8GE4He28e1zmYpdAV5rN3gnXWuA5/pPeJuOxgSyqPe7+S9UKBnmuGDJEqKUy8h58C4XkHbPbH+OvchrAeD0eIa/pAO+C7AIRwsp6+TLTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780490524; c=relaxed/simple;
	bh=dWwGk9rQfTnjchtezlSWjb+t1YEjffClPqKEsjmAgZA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sADotwpGLPubRdtJujTSNp/zMdo6jABwmG5kcq3v5pkjED/TkK2tmfb8ukhNeqRJcVdkMTcNa8hNxIZ5+QJvmFM/J2U/rPAlVuYJ+mJQMilMSDLlHytm080sq5kkbzQO/g/G8NMciwW7ogbHydc6ppALLGZZdy7jJSEpO7kcDPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aeil1ksO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57C021F00893;
	Wed,  3 Jun 2026 12:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780490523;
	bh=G8yheY5+6eUkXr3fPaoHOlmsKDT+Lz00pXPX5Sex3X8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Aeil1ksOTAsuqE72xZUS5FbFWWbX8seUrg32UHwTUpr1sOm+iTHTUJt1W/RFlPcEv
	 uBv4MTbQa/YaGHCWajre1k4IPvhmyRsCr7pUuY+0q2Iab4Mowuc7iA4JBF2DsJSAk+
	 3Vwr3WdH41x9hNdBEJjr2gAEmZrKpZQHig9tI4Ck/X/rJnmPH8OJCpxZSV35KwE1vK
	 fNyqiQCegm0CcrxgMUJZzzigpFV5dV8Ia5PYWfIZPcfCi53w+9rn/mcBGhWbuYp30Y
	 ScFPsqr8JCw0UkziI7XxEP2WYAbaTOZ3AUrsTYCdJP5sZ1m1m8/P2eFzHTEb9CJJo1
	 YVTkNEJ5hXtiA==
Date: Wed, 3 Jun 2026 13:41:51 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, Michael Auchter <michael.auchter@ni.com>,
 linux@analog.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org, Michael
 Hennerich <Michael.Hennerich@analog.com>, David Lechner
 <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Kees Cook
 <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH 10/12] iio: dac: ad5686: add triggered buffer support
Message-ID: <20260603134151.7cf1654b@jic23-huawei>
In-Reply-To: <20260602-ad5686-new-features-v1-10-691e01883d27@analog.com>
References: <20260602-ad5686-new-features-v1-0-691e01883d27@analog.com>
	<20260602-ad5686-new-features-v1-10-691e01883d27@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:devnull@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306219-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8307637B6C

On Tue, 02 Jun 2026 17:33:57 +0100
Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:

> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Implement trigger handler by leveraging the LDAC gpio to update all DAC
> channels at once when it is available. Also, the multiple channel writes
> can be flushed at once with the sync() operation.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
One passing comment inline. + some musings... I'd love to avoid
the need for lots of drivers to call iio_trigger_notify_done() manually
as it always results in ugly code paths.  
> ---
>  drivers/iio/dac/Kconfig  |  2 ++
>  drivers/iio/dac/ad5686.c | 59 ++++++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 61 insertions(+)
> 
> diff --git a/drivers/iio/dac/Kconfig b/drivers/iio/dac/Kconfig
> index 657c68e75542..5f14fcd780e2 100644
> --- a/drivers/iio/dac/Kconfig
> +++ b/drivers/iio/dac/Kconfig
> @@ -240,6 +240,8 @@ config LTC2688
>  
>  config AD5686
>  	tristate
> +	select IIO_BUFFER
> +	select IIO_TRIGGERED_BUFFER
>  
>  config AD5686_SPI
>  	tristate "Analog Devices AD5686 and similar multi-channel DACs (SPI)"
> diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
> index a4cc0f86ea54..5052df44ab1c 100644
> --- a/drivers/iio/dac/ad5686.c
> +++ b/drivers/iio/dac/ad5686.c
> @@ -19,7 +19,11 @@
>  #include <linux/sysfs.h>
>  #include <linux/wordpart.h>
>  
> +#include <linux/iio/buffer.h>
>  #include <linux/iio/iio.h>
> +#include <linux/iio/trigger.h>
> +#include <linux/iio/trigger_consumer.h>
> +#include <linux/iio/triggered_buffer.h>
>  
>  #include "ad5686.h"
>  
> @@ -245,6 +249,7 @@ static const struct iio_chan_spec_ext_info ad5686_ext_info[] = {
>  		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW),	\
>  		.info_mask_shared_by_type = BIT(IIO_CHAN_INFO_SCALE),\
>  		.address = addr,				\
> +		.scan_index = chan,				\
>  		.scan_type = {					\
>  			.sign = 'u',				\
>  			.realbits = (bits),			\
> @@ -469,6 +474,53 @@ const struct ad5686_chip_info ad5679r_chip_info = {
>  };
>  EXPORT_SYMBOL_NS_GPL(ad5679r_chip_info, "IIO_AD5686");
>  
> +static irqreturn_t ad5686_trigger_handler(int irq, void *p)
> +{
> +	struct iio_poll_func *pf = p;
> +	struct iio_dev *indio_dev = pf->indio_dev;
> +	struct iio_buffer *buffer = indio_dev->buffer;
> +	struct ad5686_state *st = iio_priv(indio_dev);
> +	u16 val[AD5686_MAX_CHANNELS] = { };
> +	int ret, ch, i = 0;
> +	bool async_update;
> +	u8 cmd;
> +
> +	ret = iio_pop_from_buffer(buffer, val);
> +	if (ret)
> +		goto out;
> +
> +	mutex_lock(&st->lock);
> +
> +	async_update = st->ldac_gpio && bitmap_weight(indio_dev->active_scan_mask,
> +						      iio_get_masklength(indio_dev)) > 1;
> +	if (async_update) {
> +		/* use ldac to update all channels simultaneously */
> +		cmd = AD5686_CMD_WRITE_INPUT_N;
> +		gpiod_set_value_cansleep(st->ldac_gpio, 0);
> +	} else {
> +		cmd = AD5686_CMD_WRITE_INPUT_N_UPDATE_N;
> +	}
> +
> +	iio_for_each_active_channel(indio_dev, ch) {
> +		ret = st->ops->write(st, cmd, indio_dev->channels[ch].address, val[i++]);
> +		if (ret)
> +			goto cleanup;
> +	}
> +
> +	if (st->ops->sync)
> +		ret = st->ops->sync(st); /* flush all pending transfers */
> +
> +cleanup:
> +	if (async_update)

Error paths are always fun.  Do we care about setting ldac_gpio to 1 if
we failed to write the channel values?  That will set any that did successfully
update, but not all of them.  Note I'm not sure on the right answer for this.
There may not be one!


> +		gpiod_set_value_cansleep(st->ldac_gpio, 1);
> +
> +	mutex_unlock(&st->lock);
> +out:
> +	iio_trigger_notify_done(indio_dev->trig);
We get this pattern so often (though not always).  Feels like maybe
we should put some effort into a generic opt in solution for this.

A job for another day but options that come to mind.
1) (hideous) a flag
2) Maybe an alternative callback. thread_always_complete or
   something like that.  Pain to wire through all the calls though
   and injecting the necessary wrapper isn't great either.
   Implementation wise would be a case of popping in a wrapper function
   in iio_trigger_attach_poll() call to request_threaded_irq().
3) Maybe a helper macro?  Bit ugly as we'd need one to generate
   the wrapper function and another to use the same name for
   the registration function.

Hmm. Those are all ugly (maybe 2 is ok ish).  Suggestions welcome!


> +
> +	return IRQ_HANDLED;
> +}
> +
>  int ad5686_probe(struct device *dev,
>  		 const struct ad5686_chip_info *chip_info,
>  		 const char *name, const struct ad5686_bus_ops *ops,
> @@ -569,6 +621,13 @@ int ad5686_probe(struct device *dev,
>  		return -EINVAL;
>  	}
>  
> +	ret = devm_iio_triggered_buffer_setup_ext(dev, indio_dev, NULL,
> +						  &ad5686_trigger_handler,
> +						  IIO_BUFFER_DIRECTION_OUT,
> +						  NULL, NULL);
> +	if (ret)
> +		return ret;
> +
>  	return devm_iio_device_register(dev, indio_dev);
>  }
>  EXPORT_SYMBOL_NS_GPL(ad5686_probe, "IIO_AD5686");
> 


