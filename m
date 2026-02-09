Return-Path: <devicetree+bounces-264035-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGo1ENz0iWl+EwAAu9opvQ
	(envelope-from <devicetree+bounces-264035-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:53:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 801CE111276
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:53:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9E159301DAA5
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 14:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0233337A488;
	Mon,  9 Feb 2026 14:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lsT5x/q8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE112C3268
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 14:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770648413; cv=none; b=Tr0INES9ag32INdW5CvRHnYporcRPYCbtw71zJDQ83yo5qUt0x/dWpTLMOm/oHeJreOCLYdipft7X3Qc7mQoHviLeHpQLDd+lJHWbHxjpE7oS32A9YCz1ZdWdkPEHT5Rs8RwY4fjJiynQ+zFInVl2BH/+8VgyV3pAn42PyGCFVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770648413; c=relaxed/simple;
	bh=lfCZvo1BYY+V3BUBac9tCSWJ7M2G0L0QR1+eQrvTvus=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WFA88pD4kkrUItNZLlzvQTX5h9LvbX51iGjo4Mc0kYdA/tYwv/qp693K9RZCdLJaVnTjbPjPF8w1U1gl9thpccq8umTTlvENTOWTXT0larvEO6xMBA/emMNji1KC9oOxq9bOx69y5vWjN8RVYab47kadVyfKG3d293Q3Mi4PtlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lsT5x/q8; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-649278a69c5so3788896d50.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 06:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770648412; x=1771253212; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iupTL7g1VPbKZeaieFodcs5jMThRswgGpkmXziygeYw=;
        b=lsT5x/q8rfE8IzypC1nIhUqjWAsBmO3ZXU7CfVbi5RNThj2vwZzknQySyNd5XOjsro
         vEUUWLz3ytVhzAD/2pbNx2RIvtNrdLhw0oMi2WoxxYRvmcy/xf8cGyW1Tfis68C4/DbH
         9p9q+fAzy0eA6ATyCOx16H5RRMAAzokcLlPOuL+Ootp0qYjDLD4NOTSsggCTZq0/iuy3
         ooM8wQszRbksD/sXTa3w7LyyWCcawECzyDFKPhZzVGa6Muu5PajhWECZE+2TGdwipAHP
         eYPjjtwAjIOsCpYcEtbPg1RIvN0+dshDVR1ZNUUtRWxHJsKTes2wJGwXwxUQY0fO2dmL
         Os+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770648412; x=1771253212;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iupTL7g1VPbKZeaieFodcs5jMThRswgGpkmXziygeYw=;
        b=bgO3S5L4Rc5HuCKukmsN/N7E6YeZJVdQUYlRc4+PoN5R1K1ERGudTjSDxQ9RnC12cK
         OMlT9kpN/mmrwWGKEiQbJ3bdh5dOJ2qWxjLom5AfZ9S2zxndkwFWdzimG8Q82yX7p3M8
         G15fPo/RNr/B8LC+YNb5XGSpUbNmBG4gA7DRDQMMMsZ5120keJm+SmdmTm5azIRiiLpE
         AzDAw4JoxC+dLp3kYGdqtrdJysWMToeuZy2rLAwO5i2XpbH8raKFgo0f0JjGHqiwkbrw
         u7Qyow5BuvCsLieKCSPx9Nrap5uwcGNv/LGAcVR8cydGfVVdhBypLrlx2dg41x95558d
         2aMg==
X-Forwarded-Encrypted: i=1; AJvYcCXCZnbF2QIGYg467JHNVycGmTeenOu2FJSEuT6oZOBd98s4FXxkrz3NQz5WvoaGLC7laPgMgYxyIh5i@vger.kernel.org
X-Gm-Message-State: AOJu0YzBuSB+IIoEd5KfMKsV0BFY04l3Mn+wt3NyCdS/jQrOyFOOS9Dq
	2ER2g1Cm6mlW5ZjGgw5BD8JG/cig1Mlj/hsoB55wMgGvcnRfQJbgyiR4
X-Gm-Gg: AZuq6aLwmAO9iobXcw1aedaWjJM93CusS2xlty7LALo0lUhW5hzstV6hwFXH6JylpGK
	OI0Uey9MgZ2cMJybQcdgrazK6qidtdJhCuff9IlOxppx3KvqoiRUyS/UXbdlcJ13l3BM08BuKYh
	FR3dRqjSKW7e/4oTA/bXfIXsd17M18M5FjEDUgxEbeCCVGEvVxbsT7JnYQWfGSwralMSM6/f7rL
	2RjXKLUxjqxTq7GaO9SA2kh8eT7kO6m1+tu5vLxtAwP4Q2QfPGGh3hE6FddIpu85dWrSiGax/zh
	mrd2WATkMYsOfMLJuAs0r1Hm24C8qtYMHGMZo5gg7jmK9OPwQxtpW8t/XPJS0Hmc/TZb5it7+Av
	zldp4nxgQYH6V3NNHnWlGGCBUrm/NAXTXSNolus6S8G6kLx72zaAHYQru667VhuYolC4oQEMMmP
	K07INvXEsm+whMEK7mhecS
X-Received: by 2002:a05:690e:4085:b0:64a:db22:1cef with SMTP id 956f58d0204a3-64adb221f23mr4737453d50.42.1770648412369;
        Mon, 09 Feb 2026 06:46:52 -0800 (PST)
Received: from localhost ([2804:30c:163a:1300:9b68:dd2c:feb4:459b])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64ae1076ab1sm3552146d50.5.2026.02.09.06.46.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 06:46:51 -0800 (PST)
Date: Mon, 9 Feb 2026 11:47:19 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org,
	michael.hennerich@analog.com, nuno.sa@analog.com,
	eblanc@baylibre.com, dlechner@baylibre.com, andy@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net
Subject: Re: [PATCH v8 7/8] iio: adc: ad4030: Add support for ADAQ4216 and
 ADAQ4224
Message-ID: <aYnzd55yYK5xRSpr@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1770403407.git.marcelo.schmitt@analog.com>
 <b437e4ca90df98220f2cabc514c201743e269889.1770403407.git.marcelo.schmitt@analog.com>
 <aYiXKq5SJ3wNl8DA@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYiXKq5SJ3wNl8DA@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264035-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marceloschmitt1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 801CE111276
X-Rspamd-Action: no action

On 02/08, Andy Shevchenko wrote:
> On Fri, Feb 06, 2026 at 04:02:19PM -0300, Marcelo Schmitt wrote:
> > ADAQ4216 and ADAQ4224 are similar to AD4030, but feature a PGA circuitry
> > that scales the analog input signal prior to it reaching the ADC. The PGA
> > is controlled through a pair of pins (A0 and A1) whose state define the
> > gain that is applied to the input signal.
> > 
> > Add support for ADAQ4216 and ADAQ4224. Provide a list of PGA options
> > through the IIO device channel scale available interface and enable control
> > of the PGA through the channel scale interface.
> 
> ...
> 
> > +/*
> > + * Gains computed as fractions of 1000 so they can be expressed by integers.
> > + */
> > +static const int adaq4216_hw_gains_vpv[] = {
> > +	1 * MILLI / 3,		/* 333 */
> > +	5 * MILLI / 9,		/* 555 */
> > +	20 * MILLI / 9,		/* 2222 */
> > +	20 * MILLI / 3,		/* 6666 */
> 
> In case you would need a new version, or Jonathan is okay to tweak, I think
> it's better to use float in the comments. The above comment explains the
> MILL multiplier for the values.
> 
> 	1 * MILLI / 3,		/* 0.333 */
> 	5 * MILLI / 9,		/* 0.555 */
> 	20 * MILLI / 9,		/* 0.2222 */
> 	20 * MILLI / 3,		/* 0.6666 */
> 
> > +};
> 
> Btw, if this true (if I am not mistaken in the gain values), the question is
> why 0.2222 is much higher than 0.555.

I guess it has to do with how the PGA is set up, but I don't really know.
Those fractions are specified in the data sheet [1] and test results have shown
those are correct. I can't explain why we have those specific gain values, though.

[1]: https://www.analog.com/media/en/technical-documentation/data-sheets/adaq4216.pdf#unique_2_Connect_42_T1
> 
> -- 
> With Best Regards,
> Andy Shevchenko

