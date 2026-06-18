Return-Path: <devicetree+bounces-313537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JT9lOVYENGqqLAYAu9opvQ
	(envelope-from <devicetree+bounces-313537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:44:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9046A0FCB
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:44:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=PeZm+h0M;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313537-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313537-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 344F33051C97
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F245133A9E1;
	Thu, 18 Jun 2026 14:44:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F7130EF64
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 14:44:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781793865; cv=none; b=u0MQ2SYIs5SfZI9mPeFrbLZxMqSQ/cjh1eVXp5o4sqWpyNBTJYeC+J6J1BqYs4DBwMR1fBlEwhApC8iL2rQu+8Fdp5P1cKGdr7mjo8bSObGzJIes6NAI3fPK2RxUL6CGH9RJK1Tj6IEg56rMISs2V2Oa5Yp7tcbcDPFsBhxwp94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781793865; c=relaxed/simple;
	bh=Yu6YeUOnFWPrCqIB5YEhtWIJyvV2BtUwFJn4XL9Gr70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SRpz5NQRvrwLG+LCUS0yIh28xtvREyM6FQMG6VIwqFq7MVwKsNelmkWvNGT60s9PcKvRbCNA2PUBBYORxfnW+C1vFa8GqJh+tY+jJlSw7yVelgq06u8zInyUslBDM4h5XZizpA5bf1mLeNF6FgyPKfcfRSlQHgq9iOiwo44eP0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PeZm+h0M; arc=none smtp.client-ip=209.85.221.42
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-4629d80fa08so1045122f8f.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781793862; x=1782398662; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LemwOVSIrC22MjpNchRABfurYl4fHAx2ajxQmykJZ0A=;
        b=PeZm+h0MeG/A4/vv6gjIH0cRQLAoj4HR9JrACHWMuI476CY1k5gxpPl4O1f7KE/bra
         kaINdOfHenQopsMxCwSzvrhxH0snVHNZZNFYrArNkbfbFu9M4SLt5RP1/hI5UjYPSG+7
         uZ8sBJiEb18lP2gu4tl5zLgmgsVmREZ8uRatSMWukfDqGnp1CBKoyRSQjshkfFrFtz4u
         Sm53tA+s4coHz+RTU3+DyNUtjb2p2EDXnt1b0z3D26bgzWyX/i8N2s7y8a3EF0PVdhm+
         A8Hxy8ifIkZO6i889+NLb5uWt7u64mXks1uiFqczlrpmwYtrHsALfv4900rh4FmX5Nwn
         w1WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781793862; x=1782398662;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LemwOVSIrC22MjpNchRABfurYl4fHAx2ajxQmykJZ0A=;
        b=CaXXQWtT29RX9kIUj5oFQ5whwdxV/kWL979yQiapH4emghwYYuXdP2VE6XiyJRLBvW
         XbFnhpJ99Ku0TBlL4K3e5HaIP9sHXtB0WE3jqA2lX8291uEanUJOTMwpoyfMQJfZZUIX
         /cUruVMVq8ZGFKuUexWEsazn6gKC29wjlAmrZR8QQQ6/NBuwjKAr8A4WVaiPMAsSGApy
         5bX3cyokn/klhVTEp6xBR0vQieNrr+ktuIQIAlzdhdf6Qa3qXDGpiLmzOlSS+Eg4mq51
         oMrU/FEb4l4NLgPLB7gqs4BdbSzAlWVtARvtKxgBbM85LWGnBfQU1UbECCmFRKnej5ax
         cY9w==
X-Forwarded-Encrypted: i=1; AFNElJ8joyQhJkBTjACMIA5qu2s684g2YyGwKfVmqJ+jyN9mPlBPfyovX2liHry5EgL6XNMs9FPNW0SrqWFP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7VUWb2kePB3if3kjvHaCCpXXSLaXo5p4CDS6aH9XdlRBO9gAB
	rt/usZhtJqKhCvOFPYttRpbE0zjhoPgmcOs2qJ7emO1tTqZXpYwEoHqe
X-Gm-Gg: AfdE7cmXt2s1t0zVWPWhjoGF5W6e+fLWsBbqZik8PXp8qkwPZy83z2VoSbTzI0vJdUZ
	t3kp2QEF+GRiRN0yCMqD0Dv2bmYcCUWBZ4oGA8woPBjzdKXcETSjt9mBintePgELTkD8Y4xJVN6
	gy5uOpnyBLZC7sn6RaqfMx5JKScVU9zWDUusnXgphMbvWnZ/orSbq4fiKfl7XVRUMPOdbjUP+hN
	6xLVqUy8ppp+MzLQ5rCs4a2lFZe5w8jn5WGl9kuxqVYyXyG3mV8D7QReHmbGZjqYc9yka70iUoB
	OEWS8CatAhGvY+VQcnH+fwowHYJnEYJyDHRkht3tScdvT9ZXIeaI4uMs/d0Jgc9NZoxjNiYFPqT
	Pus3LkKGtHm4Ppq1cU3Xn/g5Dz1G++e/QTwlRTh14xfWBP9oWnDYBzaLVDeNMARjBHj6UcB4Ecn
	BKveqG
X-Received: by 2002:adf:e811:0:b0:460:1233:ecf2 with SMTP id ffacd0b85a97d-4623908e11dmr12410883f8f.30.1781793861659;
        Thu, 18 Jun 2026 07:44:21 -0700 (PDT)
Received: from nsa ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4620b1083e3sm20736217f8f.20.2026.06.18.07.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 07:44:21 -0700 (PDT)
Date: Thu, 18 Jun 2026 15:45:23 +0100
From: Nuno =?utf-8?B?U8Oh?= <noname.nuno@gmail.com>
To: rodrigo.alencar@analog.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-hardening@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH v6 05/16] iio: core: support 64-bit register through
 debugfs
Message-ID: <ajQDsZWJQRKKM0dv@nsa>
References: <20260618-ad9910-iio-driver-v6-0-79125ffbe430@analog.com>
 <20260618-ad9910-iio-driver-v6-5-79125ffbe430@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260618-ad9910-iio-driver-v6-5-79125ffbe430@analog.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313537-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:lars@metafoo.de,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kees@kernel.org,m:gustavoars@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4D9046A0FCB

On Thu, Jun 18, 2026 at 02:27:21PM +0100, Rodrigo Alencar via B4 Relay wrote:
> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Add debugfs_reg64_access function pointer field into iio_info and modify
> file operation callbacks to favor 64-bit variant when it is available.
> 
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---
>  drivers/iio/industrialio-core.c | 33 ++++++++++++++++++++++++---------
>  include/linux/iio/iio-opaque.h  |  2 +-
>  include/linux/iio/iio.h         |  4 ++++
>  3 files changed, 29 insertions(+), 10 deletions(-)
> 
> @@ -471,7 +485,8 @@ static void iio_device_register_debugfs(struct iio_dev *indio_dev)
>  {
>  	struct iio_dev_opaque *iio_dev_opaque;
>  
> -	if (indio_dev->info->debugfs_reg_access == NULL)
> +	if (!indio_dev->info->debugfs_reg_access &&
> +	    !indio_dev->info->debugfs_reg64_access)
>  		return;

Not really that important but should dev_warn() in case someone gives
both callbacks? Can't use both anyways.

(We now have agentic help reviewing the code so maybe even if someone
does it for some reason it won't pass review :))

- Nuno Sá
>  
>  	if (!iio_debugfs_dentry)
> diff --git a/include/linux/iio/iio-opaque.h b/include/linux/iio/iio-opaque.h
> index b87841a355f8..98330385e08d 100644
> --- a/include/linux/iio/iio-opaque.h
> +++ b/include/linux/iio/iio-opaque.h
> @@ -73,7 +73,7 @@ struct iio_dev_opaque {
>  #if defined(CONFIG_DEBUG_FS)
>  	struct dentry			*debugfs_dentry;
>  	unsigned int			cached_reg_addr;
> -	char				read_buf[20];
> +	char				read_buf[24];
>  	unsigned int			read_buf_len;
>  #endif
>  };
> diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
> index 711c00f67371..1c7d12af22da 100644
> --- a/include/linux/iio/iio.h
> +++ b/include/linux/iio/iio.h
> @@ -484,6 +484,7 @@ struct iio_trigger; /* forward declaration */
>   * @update_scan_mode:	function to configure device and scan buffer when
>   *			channels have changed
>   * @debugfs_reg_access:	function to read or write register value of device
> + * @debugfs_reg64_access: function to read or write 64-bit register value of device
>   * @fwnode_xlate:	fwnode based function pointer to obtain channel specifier index.
>   * @hwfifo_set_watermark: function pointer to set the current hardware
>   *			fifo watermark level; see hwfifo_* entries in
> @@ -572,6 +573,9 @@ struct iio_info {
>  	int (*debugfs_reg_access)(struct iio_dev *indio_dev,
>  				  unsigned int reg, unsigned int writeval,
>  				  unsigned int *readval);
> +	int (*debugfs_reg64_access)(struct iio_dev *indio_dev,
> +				    unsigned int reg, u64 writeval,
> +				    u64 *readval);
>  	int (*fwnode_xlate)(struct iio_dev *indio_dev,
>  			    const struct fwnode_reference_args *iiospec);
>  	int (*hwfifo_set_watermark)(struct iio_dev *indio_dev, unsigned int val);
> 
> -- 
> 2.43.0
> 
> 

