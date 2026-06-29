Return-Path: <devicetree+bounces-317243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vNwkNEKvQmrD/gkAu9opvQ
	(envelope-from <devicetree+bounces-317243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 19:45:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B87A6DDDA6
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 19:45:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=JuobyOBI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317243-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317243-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 14D26302A7FC
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A36C2E7369;
	Mon, 29 Jun 2026 17:45:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E103F2E762C
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 17:45:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782755118; cv=none; b=lCaBi9BorKSH8+cEFhtXoOZkNSqqKk/8EKGIsTrCIv/Yw/GLLD55xU9BYj+EfpXxac4ffawN+gQhxjbNbi4mBOlIJgaICVXho7smeoIkz9d02DQ1Nb13EH2iomXDFz3tylU6vsbSxoyNHRe/nxAshal9E3T5GDJEUIyqV5U3H6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782755118; c=relaxed/simple;
	bh=BiJEny0LSD1212/l0Ybzk08mrhYUdni/um4kOzIeC5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hS58pyK/QEuV/zcT6rSofrj/eKX93Qv0/NfF1vWqzlS79FHmqXzYBIRB5J10WZiZ1zwuyUChvrPSBw1Ur7jlGaeip3MSNKWrUP8v4F79g0cqMQp81GtEG4kJEDSDsxuirFMkF6gb5H6Wa4Bwy6LGW1emqDoXzUZJKWEqeri8mG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JuobyOBI; arc=none smtp.client-ip=209.85.221.182
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-59c9b666822so2842310e0c.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 10:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782755116; x=1783359916; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Twvn/bIc7PA5IV9RrXY1WwG29WqyLHjssToGt3hx7lY=;
        b=JuobyOBIeAWPoeKZ19PcubUIHkofhtCkxbfTH9yUKd3CE0lRr5MiHpD3qysDZnro3C
         hXfpfMSdlLFmGZuWaRoN8I/A5gXAXi0ghMX8eM2wf8EfX+LMO3fI3GwM2m1aTosFS0z3
         F6dhFfb4dz/KTVr+ux3xB2G/UYhpODnsgxDMxG/Sp/mYQ9sLLQFc+LqanKU0g4jQGNL2
         LkSXOG7+eIu4X0wTf9vPEV+bVFhikiqjq4N8UryTflq8KtfP/4fvjMkNUlJaCzVrT2qa
         kkKKtnvjt4mTSS8OYEql/MVq2QO8qwUd22J80viFncOaDMC5f7zJEsdJjDw3Sq5VMC2S
         +IqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782755116; x=1783359916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Twvn/bIc7PA5IV9RrXY1WwG29WqyLHjssToGt3hx7lY=;
        b=dWgxplza5XW8vAiD2iV/UvevCgGif0B5oE39TGOYvy8n27iZf0ezJrxY0cz1kgWrCu
         voDHcC1EiDmCXG8r04+7qYn67hLoAPiT2UlkdQ0UA8uR1FcMlrZGw2D5iwGIFvdwngUS
         XWVqFTz4Fv4RWeKtRpVMZaHP+6oJIasewvQHI621NrZa6M6EMdijd/ieyFI/HWDfyCg2
         X9FC1RyfZ5uQlFbrk24JkU8kEmMARgfKxYzpO2LUosWttIy0zr3TuYGREDabcJWQ63zg
         t5eGoET53QVws08eWC5p0bLkCQOL04F2TksaMpkliWgQ5pQOnoM2PxZkzvWA2L0TDG5Y
         OJww==
X-Forwarded-Encrypted: i=1; AHgh+RoHArKYpYS3hmSHjxUxYh21Dqs8UDHv+7BgjSrFvb2KtpPfnnUb9ACqje/6+g7dv730M6ss87tlQ0Ux@vger.kernel.org
X-Gm-Message-State: AOJu0YzkiaZO2vxrNr+sUMx0wMQ9mUVRl2OKYbwZpefAFiZX2uTDOfef
	F+jy7FgTyZezDxxdiQtYLNuUZ1SlwRyYlBlZATdnpnMPighqE6j+ifeA
X-Gm-Gg: AfdE7cmrIsCJhwkotbg5cWl+VTJbCTguDOjL1am1pBNkaZajPiXMOSttyY5/AZnsoMS
	VM3h4muj2ZReeuvMeE0aVMaoD63li0Hvfn7kvW47sJqBpZCeCuuwes0qyPt75ilmh5UA+8BmZ8b
	18nqGCgn/EjEP40DbhETX1OHR8Hn2qBehtI/ZWqtXj2+Z9qoqtxSrOsQEXWUeApje67LgelaWrl
	imd3hy/psDjXlnkzLmuF1CPyU0OKB04+A92DY44GyvKaRdSMzGQ/pUjBfv/jd+JQgm7vqgu3XTL
	0apFfdSePRWH+meTsicchyTDpZ6shO+HjwlQY4bJwolU3iovBbB/920oUNrJ4eUIVcEuDRR2X1b
	UNMaFhVLQpExY/nVlRxdq5axbMhbK+vbZMIGwArvX3ASKaaQXVsUYdynG/tK7qG7fnRaqe7QATl
	fBNvdKRiDz/c6Jixuh6xNk3w==
X-Received: by 2002:a05:6122:17a2:b0:5a5:3eea:4513 with SMTP id 71dfb90a1353d-5bdbedec567mr459042e0c.12.1782755115782;
        Mon, 29 Jun 2026 10:45:15 -0700 (PDT)
Received: from localhost ([2804:30c:1618:8400:e838:86ad:21d4:de00])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5bd78e4bf00sm5740525e0c.2.2026.06.29.10.45.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 10:45:14 -0700 (PDT)
Date: Mon, 29 Jun 2026 14:46:00 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: David Lechner <dlechner@baylibre.com>,
	Marcelo Schmitt <marcelo.schmitt@analog.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, jic23@kernel.org, nuno.sa@analog.com,
	Michael.Hennerich@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, julianbraha@gmail.com
Subject: Re: [PATCH v4 2/4] iio: adc: ltc2378: Add support for LTC2378-20 and
 similar ADCs
Message-ID: <akKvWOIy44jZMY_h@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1782397418.git.marcelo.schmitt@analog.com>
 <0abf862eeb277ae82262d09b11b1446f04c47be7.1782397418.git.marcelo.schmitt@analog.com>
 <9c6e0a74-c9c5-43ee-8eca-ae1667c51c32@baylibre.com>
 <akKHv7j22P6KczXb@debian-BULLSEYE-live-builder-AMD64>
 <3a96a20c-f435-4b98-9e95-26a28bd06e7b@baylibre.com>
 <akKZOq6DV5x1FvAc@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <akKZOq6DV5x1FvAc@ashevche-desk.local>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317243-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[marceloschmitt1@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:dlechner@baylibre.com,m:marcelo.schmitt@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:julianbraha@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marceloschmitt1@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,vger.kernel.org,kernel.org,gmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,debian-BULLSEYE-live-builder-AMD64:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3B87A6DDDA6

> > >>> +static int ltc2378_regulator_setup(struct device *dev, struct ltc2378_state *st)
> > >>> +{
> > >>> +	int ret;
> > >>> +
> > >>> +	ret = devm_regulator_get_enable_read_voltage(dev, "refin");
> > >>> +	if (ret < 0 && ret != -ENODEV) {
> > >>> +		return dev_err_probe(dev, ret, "failed to read refin regulator\n");
> > >>> +	} else if (ret > 0) {
> > >>
> > >> Else is not needed here.
> > > Why not?
> > 
> > The if returns unconditionally, so else is not needed. This is just a general
> > principal.
> 
> Unfortunately in this case ENODEV will go further, I don't see full context,
> but it may lead to something unexpected.
> 
> Personally I prefer the ladder of
> 
> 	if (ret == -ENODEV)
> 		...
> 	else if (ret < 0)
> 		...
> 	else
> 		...
> 
After splitting regulator availability check on a chip specific basis it will
probably simplify to something like

static int ltc2378_refin_setup(struct device *dev, struct ltc2378_state *st)
{
	int ret;

	ret = devm_regulator_get_enable_read_voltage(dev, "refin");
	if (ret == -ENODEV) /* refin is optional */
		st->ref_uV = st->info->internal_ref_uv * 2; /* ref buf amplifies REFIN by a factor of 2 */
	else if (ret < 0)
		return dev_err_probe(...);
	else
		st->ref_uV = ret * 2; /* ref buf amplifies REFIN by a factor of 2 */
	
	return 0;
}

For 'ref' only parts it will probably look like previous versions

static int ltc2378_ref_setup(struct device *dev, struct ltc2378_state *st)
{
	ret = devm_regulator_get_enable_read_voltage(dev, "ref"); /* ref is required */
	if (ret < 0)
		return dev_err_probe(dev, ret, "failed to read ref regulator\n");
	
	st->ref_uV = ret;

	return 0;
}

Calling the appropriate ref setup function for each part shall then (hopefully) 
error out incorrect device trees.

