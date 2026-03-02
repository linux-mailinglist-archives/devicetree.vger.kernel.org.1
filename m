Return-Path: <devicetree+bounces-270217-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGejAWv1pWl5IQAAu9opvQ
	(envelope-from <devicetree+bounces-270217-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 21:39:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6251E00A9
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 21:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52E1431A7807
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 20:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05B59481FA6;
	Mon,  2 Mar 2026 20:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ub3v0m7U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56CC47F2C1;
	Mon,  2 Mar 2026 20:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772483300; cv=none; b=RNPfS3rp507ZRJESqOHKvUobkjiZgtZIPCJX0O0ME+7qM9pVo59kZU5dzX6c0hs1rr1tQiTVUAtnXPyO4LfQPGxd5qu8dlwr5Y5/hqBATIv31tSYcDcFFVSdwDQ85x3wTNjPY9wsHrbEji5v7OkTm2CBwz9qhb6rnW0LVUZvYd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772483300; c=relaxed/simple;
	bh=JMm4Lj5p9ymHNF0tbfBTx9QhoXcbK5+4pkGgKEOx5z8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aqhpPv9anqkUjVHrlZfz8sUtHnlvhPL68oxc0j04LQQ0T/52CNlUeTcRPVVzqCc8YsI+Y3+37Q8xnYD0UFkvCzFtqUy1LtpVKyJlIj6QJWjaFrZFcKJ4uDTs+DDEGGf9a9OpgMqSCdBe1wB3ReSTdBUum6701wtTGjkXUljFHfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ub3v0m7U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DF5CC19425;
	Mon,  2 Mar 2026 20:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772483300;
	bh=JMm4Lj5p9ymHNF0tbfBTx9QhoXcbK5+4pkGgKEOx5z8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Ub3v0m7U8mLlIH93JOjh0ZzJZlWEsejVs2s6bJf1fTMpvNY/q0ACxQjXJ0mp2mMGJ
	 YkNAQNT2MfXw2psx6336Wyp3X/t7rk4bvIu+oAYFDy5oEsbZ9WYFdrr3Wg2ysp4tTO
	 5eqZUONP+hEoLLDzea6QXmOVTeZOWTSdCkO/VCDDUDYWHCubyjwI+4YzAoQJGhEEz3
	 BxPyj8WyrfkY0BHAPBTDvAfvojxe9GexkNRAoLVATbS9yEcwJQl4PO4nzRWpxsSXJn
	 ct9ZGoY5SJA8ywfVwNgFA+QUfvsZ5AHbi6ntnt0Zh2vVomap6agAp5lVm+dVavuvC0
	 9ZhdDACTK6fsQ==
Date: Mon, 2 Mar 2026 20:28:10 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Antoniu Miclaus <antoniu.miclaus@analog.com>, Lars-Peter Clausen
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, David Lechner <dlechner@baylibre.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Petre
 Rodan <petre.rodan@subdimension.ro>, Jorge Marques
 <jorge.marques@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] iio: accel: adxl372: introduce chip_info structure
Message-ID: <20260302202810.3eea2a2e@jic23-huawei>
In-Reply-To: <aaWJucx5VY38Qtqp@ashevche-desk.local>
References: <20260302122116.1282-1-antoniu.miclaus@analog.com>
	<20260302122116.1282-2-antoniu.miclaus@analog.com>
	<aaWJucx5VY38Qtqp@ashevche-desk.local>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 8D6251E00A9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270217-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Mon, 2 Mar 2026 14:59:37 +0200
Andy Shevchenko <andriy.shevchenko@intel.com> wrote:

> On Mon, Mar 02, 2026 at 02:20:57PM +0200, Antoniu Miclaus wrote:
> > Introduce a chip_info structure to parameterize device-specific
> > properties such as ODR/bandwidth frequency tables, activity/inactivity
> > timer scale factors, and the maximum ODR value. This refactors the
> > driver to use chip_info lookups instead of hardcoded values, preparing
> > the driver to support multiple device variants.
> > 
> > The sampling_frequency_available sysfs attribute is changed from a
> > static const string to a dynamic callback that reads from chip_info,
> > and the SPI/I2C probe functions are updated to pass a chip_info
> > pointer instead of a device name string.
> > 
> > No functional change intended.  
> 
> ...
> 
> > -static IIO_CONST_ATTR_SAMP_FREQ_AVAIL("400 800 1600 3200 6400");
> > +static ssize_t adxl372_show_samp_freq_avail(struct device *dev,
> > +					    struct device_attribute *attr,
> > +					    char *buf)
> > +{
> > +	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> > +	struct adxl372_state *st = iio_priv(indio_dev);
> > +	int i;
> > +	size_t len = 0;
> > +
> > +	for (i = 0; i < st->chip_info->num_freqs; i++)  
> 
> > +		len += scnprintf(buf + len, PAGE_SIZE - len,
> > +				 "%d ", st->chip_info->samp_freq_tbl[i]);  
> 
> This is part of sysfs, use sysfs_emit_at().

Instead can we switch this to read_avail() based handling?
That means setting info_mask_shared_by_all_available
bit for sampling frequency.

Looks superficially easy to do the same for the
filter_low_pass_3db_frequency_available.

The attributes go away entirely.
Advantage of this is it both enforces the formatting without us having
to read the functions carefully and it makes them available to in kernel
consumers.

Jonathan



> 
> > +	buf[len - 1] = '\n';
> > +
> > +	return len;
> > +}
> > +
> > +static IIO_DEVICE_ATTR(sampling_frequency_available,
> > +		       0444, adxl372_show_samp_freq_avail, NULL, 0);  
> 
> What's wrong with IIO_DEVICE_ATTR_RO()?
> 
> >  static IIO_DEVICE_ATTR(in_accel_filter_low_pass_3db_frequency_available,
> >  		       0444, adxl372_show_filter_freq_avail, NULL, 0);  
> 
> Make sure this is closer to its callback(s).
> 
> ...
> 
> >  static struct attribute *adxl372_attributes[] = {
> > -	&iio_const_attr_sampling_frequency_available.dev_attr.attr,
> > +	&iio_dev_attr_sampling_frequency_available.dev_attr.attr,
> >  	&iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available.dev_attr.attr,  
> 
> >  	NULL,  
> 
> Side note: At some point consider dropping trailing comma in the terminator.
> 
> >  };  
> 


