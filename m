Return-Path: <devicetree+bounces-266641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id raMQHWgEl2nhtgIAu9opvQ
	(envelope-from <devicetree+bounces-266641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 13:39:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F3515E9EF
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 13:39:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 224023006B4A
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 12:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C5F83168E5;
	Thu, 19 Feb 2026 12:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OIZSOYoD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AA12C21C4
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 12:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771504740; cv=none; b=ITs86cB2Wa4fdAsps03ziME+wmbQ2RR2HW1dyCohdkasmu4kH2ahip5bj/jDIxV0A2uKc8qwpu7uA+zzowyHu0K51kRDYzyuZuc80gYxwc7nxmTzWNK+qwcJZ3aO55cuyjRgzwFuD4Pkn+M0vIVjocXVUC3NFwMq/SjgZh4BpnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771504740; c=relaxed/simple;
	bh=zaEyoKufr8kJjMPlauNC6hFcaNXmh0VL7nMLWJY7Dms=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=il7hePE+AzLp53fFiaxxsKzAgsQzT3VOuLpHhWA+2unOePy8wHngRIYceQrVwmQoTypw8/YMqRjsb/UbHpDwBR6oPernqNwsHPHGRECozDCjo/M97f9FcAMvLiX9tjX3KiD8FWF066Wmxjt7yKCSn7sJjNUNsqwQG5DGGqRpFU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OIZSOYoD; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-56711650601so763897e0c.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 04:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771504738; x=1772109538; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b/Yeq/h1sK2QWMwvAHMWW/0uWsIY9PKo2xaxo2nKMJU=;
        b=OIZSOYoDia7EmFVoG/umYjRoJBDojJiGAhfJ2qIV0YfcFtDj2LOzj7355Y9RyCy06+
         6R1e0lQpXVUktj6MSO0XosuRbH3vD6/ymlv5R2erRNRish3i8SUtPYfB0GQgHR10t71T
         ctai1O588nyTR+igdUDogAr1KWcBG8UQqhZbwT4HrumZjPnoW66YYEWpSKujmFGsNNwx
         h+a44NyBcqdFQUgl71rMn5ZPylsTHkoxAkpKOSDzDYmuEnvkHIhwtRjdho3dpjG1s7O3
         ADspgEDvZDyT0Lq4A3QGMjfeCaxTtyZuwcf8RBqipgZjIm+0dZP70Stx9q1aHD+us2XI
         +W4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771504738; x=1772109538;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b/Yeq/h1sK2QWMwvAHMWW/0uWsIY9PKo2xaxo2nKMJU=;
        b=LUueIZZjanO785zdSTPQHsjguc5pweNcsThZVaFWytZfoKKsSnH66RDltl1B1pveUK
         2D645RnH5VQnzQhkx3tEbi/VWHbQnFGYXcWaUoUj+CSc8H04bCLSBvCLDQDqdir3Ya1f
         4F2c5Qm/TTQbALYhNRWLnRbHnE0QB1YUnwmNptul8MoCUe9uI7r5tZHNsygx9zXvtQJ9
         PguHkqZXlK8uIfv3NrSEREhUKJ4rCSQlzBFVZ+rSHGQNMcvhsNt1U7zFWQtpWswyl6I2
         teIMfGGkNshrW6w12+tp8741m3eToPu9MYHiiJw9UbnbkTNymJ3gkzKZFHn8j/j1/ZdV
         dsDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWV6IG64ymeHObY+WjjS42nWfz30H21JjYxUXj490o0axOFnGLKdD794OFlKXKVNbGfjK5IOeRalwlV@vger.kernel.org
X-Gm-Message-State: AOJu0YxSTEKja63d4ljC7yd9d42tCzwDqKnO4ayxtT7RPiAZ6cWSQi8N
	vYVvQ8p+D6//C/We/U+o9nc9O/AyWbnuWrBsbinQlVFlh8NTmSluBzEP
X-Gm-Gg: AZuq6aJGrDtyQSaRXsvdZ+wJoAGB99JIeejP/Evi5aaWD+PJts6Qyu6QCnjA2UrhTnY
	uIOGKqmUxMpYMS85SIlMWO3D2gIqnWfxzraw6J04cKTuLRUMIJyqJ0Z8TPOrR0EQ5dUfX0bxpjF
	xrBLdLH7zRf+SPO4fArfhKowyrbNzE/NVHMDAfS4M2fd0cNQ6l9o3tjiIdG9L9LwBmHG9CrKhPA
	B6+6jWLAobrxRF7A1xPTkw3aN0XQOuM3lEZR4hxCaqP+M+GzjOROUl/fKr5wVwxACYHkakjWBWq
	WEqYEj1fbmNfur3xhdYLkvSdf2hUiD98RG8TqRwpyJGqE2oMFEwnXZm0limkP1ZcRT1uue9+Wx1
	uUYlqVkB2/4wSolZ/wW860kcEyf5pzv1xaCUR5xa4S710CcGickHefIW2oYk06yXxR7hnL4nvmc
	Zok3xA7aDp4bp6+2kSX7Ctmt2jYPxJ13w=
X-Received: by 2002:a05:6122:3214:b0:566:271c:b48d with SMTP id 71dfb90a1353d-56889d4a600mr7345546e0c.18.1771504737800;
        Thu, 19 Feb 2026 04:38:57 -0800 (PST)
Received: from localhost ([2804:30c:942:5700:6773:2626:ab8c:582e])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5674bfe5ec0sm13742463e0c.5.2026.02.19.04.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 04:38:56 -0800 (PST)
Date: Thu, 19 Feb 2026 09:39:27 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org,
	michael.hennerich@analog.com, nuno.sa@analog.com,
	eblanc@baylibre.com, dlechner@baylibre.com, andy@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net
Subject: Re: [PATCH v9 7/8] iio: adc: ad4030: Add support for ADAQ4216 and
 ADAQ4224
Message-ID: <aZcEf75cOHXLKvNm@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1771253601.git.marcelo.schmitt@analog.com>
 <39ebbb49619d5d588efe590560046d747dd46ad5.1771253601.git.marcelo.schmitt@analog.com>
 <aZRikNMXKxW0JjTC@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZRikNMXKxW0JjTC@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266641-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marceloschmitt1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 09F3515E9EF
X-Rspamd-Action: no action

Hi Andy,

On 02/17, Andy Shevchenko wrote:
> On Mon, Feb 16, 2026 at 12:01:12PM -0300, Marcelo Schmitt wrote:
> > ADAQ4216 and ADAQ4224 are similar to AD4030, but feature a PGA circuitry
> > that scales the analog input signal prior to it reaching the ADC. The PGA
> > is controlled through a pair of pins (A0 and A1) whose state define the
> > gain that is applied to the input signal.
> > 
> > Add support for ADAQ4216 and ADAQ4224. Provide a list of PGA options
> > through the IIO device channel scale available interface and enable control
> > of the PGA through the channel scale interface.
> 
...
> > +static int ad4030_setup_pga(struct device *dev, struct iio_dev *indio_dev,
> > +			    struct ad4030_state *st)
> > +{
> > +	unsigned int i;
> > +	int pga_gain_dB;
> > +	int ret;
> > +
> > +	ret = device_property_read_u32(dev, "adi,pga-gain-db", &pga_gain_dB);
> > +	if (ret == -EINVAL) {
> 
> Actually instead of custom error hunting, this should be rather

Sorry, I messed up when preparing the patches. "adi,pga-gain-db" is not going
to be a dt property and this should have been just the 'GPIOs for PGA control'
below. Anyway, thanks for reviewing this. I'll hopefully recall this error
handling pattern in future contributions.

The other suggestions look good but I'll wait a bit more before sending v10.
> 
> 	if (device_property_present(dev, "adi,pga-gain-db")) {
> 		ret = device_property_read_u32(dev, "adi,pga-gain-db", &pga_gain_dB);
> 		if (ret)
> 			return dev_err_probe(dev, ret, "Failed to get PGA value.\n");
> 	} else {
> 
> > +		/* Setup GPIOs for PGA control */
> > +		st->pga_gpios = devm_gpiod_get_array(dev, "pga", GPIOD_OUT_LOW);
> > +		if (IS_ERR(st->pga_gpios))
> > +			return dev_err_probe(dev, PTR_ERR(st->pga_gpios),
> > +					     "Failed to get PGA gpios.\n");
> > +
> > +		if (st->pga_gpios->ndescs != ADAQ4616_PGA_PINS)
> > +			return dev_err_probe(dev, -EINVAL,
> > +					     "Expected 2 GPIOs for PGA control.\n");
> > +
> > +		st->scale_avail_size = ARRAY_SIZE(adaq4216_hw_gains_db);
> > +		st->pga_index = 0;
> > +		return 0;
> 
> > +	} else if (ret) {
> > +		return dev_err_probe(dev, ret, "Failed to get PGA value.\n");
> > +	}
> 
... 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
Thanks,
Marcelo

