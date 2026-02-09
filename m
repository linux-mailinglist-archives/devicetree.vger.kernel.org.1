Return-Path: <devicetree+bounces-264031-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ID0DO/nwiWnGEgAAu9opvQ
	(envelope-from <devicetree+bounces-264031-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:36:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C97110843
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 15:36:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 331713006997
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 14:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1903537BE72;
	Mon,  9 Feb 2026 14:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Er1I+l+i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C9B379990
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 14:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770647794; cv=none; b=ssMJuZR5pVuIWQWXZMemQEYCO6/398Vt694+H7vJCFV15/KvkPllvuHjEVqL3V+7qpEnUujqDKJFN+Tje1zvvkiEssdRyMgY0nLb2HXnNZQpKUEq1grltQ4rebSxSb9m4vsyK+3osVOwL9L96coP46eehVsdGJn40cqDEskHnp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770647794; c=relaxed/simple;
	bh=hp0VIwG+tZ4C/xAipi8SSeLZ0cZ7Avit/lMHmraD0wc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AcGg0fW39xa3UPj3eev/D7uo8YI9P4eqwy4SF2eDQ9VQecoSr00vdWsKTHlqn3zzm691z4jgkdYUQi44/VeR+Jt14MpAXxJypg3I+zV8uPjoZYgdA3Fe5XSuv6HkopZ4HYvri5PG0Edx9W0i3AzpDSLCmuS47eOwO5595iIquq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Er1I+l+i; arc=none smtp.client-ip=74.125.82.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-2b7da62b487so1442017eec.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 06:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770647793; x=1771252593; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZxW9LgCH07BdNp/H9r+dMXWuibZ85UcJq1iPgsYd5Oc=;
        b=Er1I+l+iJUM3BjJlVhftPTss6/TmesRIVac2Xmef6bX9T/tcv+tS2IMH8eNQjavIEP
         EBD1V/dfFcdgxWsKqsm40m/a8Z9G+/6g5ZbmkifWUYkXitnywRvrPj2QSugRDolFv3cz
         d2OI+VST7UFf4DguR0iHHBYx8o007jCZ8LhDjQLoaVzmAFAwO8rJNYIBcobeQZbupLaU
         LWt/XTg35I8EIgHLF92h7znOMP91zFCEeB/46ulWDFNv6ssmZXx4ZoTd9UL3Xi/6r6g1
         MXDV/Ni/AFrShuQbBKHGX14gnrwn09YW/N3aSeWr6aMsfgrJJH1cM3h2ufIo1Nf2YxGK
         u5pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770647793; x=1771252593;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZxW9LgCH07BdNp/H9r+dMXWuibZ85UcJq1iPgsYd5Oc=;
        b=RjDi/JwUfLBmD8nFqn4WTIWYhpW2dhJqzSoL1L55dsl/LdV6hlgRPGBiSdIDyo2yc/
         I8Ftdt8PiPVV9MeRT6IhOKIIT+PLExv8dYmw97TguJPEazMbjgiCyxLhMBBuBcoAbRTN
         oDXkzN94Gdam2+PGgcBEeXC2TIHCE+NpbM+lPDk6ec3JaX/S11mOs00ZHjqgqubGaXPY
         YeRgHUNk6xiDZY8ePrsFtkkW7kdfm/mBmaW8sPB841lZ3TG4RhM7Nl0KT2kX0FN00VMq
         irBLjlzmK09ax9rB2tE4+NUoRGYsol2dEv4XYFI8+aLIIPfBJB4xHJpHdPvRqRw/Qb1y
         tTHA==
X-Forwarded-Encrypted: i=1; AJvYcCXo8rWwMBlePaQIvbL/zq9ZrNFg0bCu1ewpon5+4g4Ok/hoE+xzB+SXs+LwRH8ibOcWGIZwV1pEXN3Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxEl1zLiatDC+aaRAnHfNBi67EI0ule8LpCSaw6lbpSvQwam51M
	Qlhf8g694Q1MbLP0lnM8joSyiSRcfF2fF3tHvmFtMV2ppV5waMPnVIvT
X-Gm-Gg: AZuq6aJJz/RnIr9k6QczSGmrI3k4ClM8eR3XtozIq2PKet0WANbjGC2iPfj+H0G9mLK
	5KQkBXo6xA2sDfGjaXSR9aWeFxBdKE+l82gukGB0m8UQzZbH4Z5m1jzaJKpXpwZZn2sh4KzYZvv
	1IMQnIhsiTHh6CjiKjZ5zAV0stfSrNTKAZqOIQTf8T35fMbfgANJ+6A+A5Hbz1Vpr2L1lgi1YiA
	FrDKpPP3wDeGKKSWWQexinMKUzKNM9OxS1xXgOPLA74RAKg8nTXAmTHOubHij0xerB1SwaqEpdw
	DNT0ObGZSljw27K0WNCl3rGAIRueiPtleJ2F+xq78/BHLENS838ZJ1m24CLu/33kM25+azPyYSd
	fTTqrVnOiPCDf2dFzqOJA8XANfffuxzYQp3uUKPrSjBKZ/J7qE2DbZHzXuoXCB0DFAZy+nXXnWe
	d1S+DSH7pwoUWCbZwO8qJc
X-Received: by 2002:a05:693c:2d84:b0:2b7:b41:bbeb with SMTP id 5a478bee46e88-2b856723b28mr5265050eec.43.1770647790912;
        Mon, 09 Feb 2026 06:36:30 -0800 (PST)
Received: from localhost ([2804:30c:163a:1300:9b68:dd2c:feb4:459b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba6517c316sm3778411eec.3.2026.02.09.06.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 06:36:29 -0800 (PST)
Date: Mon, 9 Feb 2026 11:36:57 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org,
	michael.hennerich@analog.com, nuno.sa@analog.com,
	eblanc@baylibre.com, dlechner@baylibre.com, andy@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	corbet@lwn.net, Trevor Gamblin <tgamblin@baylibre.com>,
	Axel Haslam <ahaslam@baylibre.com>
Subject: Re: [PATCH v8 5/8] iio: adc: ad4030: Add SPI offload support
Message-ID: <aYnxCc1wv8MVfv2b@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1770403407.git.marcelo.schmitt@analog.com>
 <315c614e65e40634251e624d73d83fdea4c51c78.1770403407.git.marcelo.schmitt@analog.com>
 <aYiWA5ev2nPF8UxU@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aYiWA5ev2nPF8UxU@smile.fi.intel.com>
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
	TAGGED_FROM(0.00)[bounces-264031-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 62C97110843
X-Rspamd-Action: no action

On 02/08, Andy Shevchenko wrote:
> On Fri, Feb 06, 2026 at 04:01:33PM -0300, Marcelo Schmitt wrote:
> > AD4030 and similar ADCs can capture data at sample rates up to 2 mega
> > samples per second (MSPS). Not all SPI controllers are able to achieve such
> > high throughputs and even when the controller is fast enough to run
> > transfers at the required speed, it may be costly to the CPU to handle
> > transfer data at such high sample rates. Add SPI offload support for AD4030
> > and similar ADCs to enable data capture at maximum sample rates.
> 
> ...
> 
> > +static int ad4030_update_conversion_rate(struct ad4030_state *st,
> > +					 unsigned int freq_hz, unsigned int avg_log2)
> > +{
> > +	struct spi_offload_trigger_config *config = &st->offload_trigger_config;
> > +	unsigned int offload_period_ns, cnv_rate_hz;
> > +	struct pwm_waveform cnv_wf = { };
> > +	u64 target = AD4030_TCNVH_NS;
> > +	u64 offload_offset_ns;
> > +	int ret;
> > +
> > +	/*
> > +	 * When averaging/oversampling over N samples, we fire the offload
> > +	 * trigger once at every N pulses of the CNV signal. Conversely, the CNV
> > +	 * signal needs to be N times faster than the offload trigger. Take that
> > +	 * into account to correctly re-evaluate both the PWM waveform connected
> > +	 * to CNV and the SPI offload trigger.
> > +	 */
> > +	cnv_rate_hz = freq_hz << avg_log2;
> > +
> > +	cnv_wf.period_length_ns = DIV_ROUND_CLOSEST(NSEC_PER_SEC, cnv_rate_hz);
> 
> See below.
> 
> > +	/*
> > +	 * The datasheet lists a minimum time of 9.8 ns, but no maximum. If the
> > +	 * rounded PWM's value is less than 10, increase the target value by 10
> > +	 * and attempt to round the waveform again, until the value is at least
> > +	 * 10 ns. Use a separate variable to represent the target in case the
> > +	 * rounding is severe enough to keep putting the first few results under
> > +	 * the minimum 10ns condition checked by the while loop.
> > +	 */
> > +	do {
> > +		cnv_wf.duty_length_ns = target;
> > +		ret = pwm_round_waveform_might_sleep(st->cnv_trigger, &cnv_wf);
> > +		if (ret)
> > +			return ret;
> > +		target += AD4030_TCNVH_NS;
> > +	} while (cnv_wf.duty_length_ns < AD4030_TCNVH_NS);
> 
> Does the above have a side-effect on period_length_ns? If not, the below check
> should be moved up, otherwise here should be a short comment explaining the
> side-effect(s).

Yes, pwm_round_waveform_might_sleep() might round the period down. I'd add the
following comment to clarify that

	/*
	 * The CNV waveform period (period_length_ns) might get rounded down by
	 * pwm_round_waveform_might_sleep(). Check the resultant PWM period
	 * is not smaller than the minimum data conversion cycle time.
	 */
> > +	if (!in_range(cnv_wf.period_length_ns, AD4030_TCYC_NS, INT_MAX))
> > +		return -EINVAL;
> 

Best regards,
Marcelo

