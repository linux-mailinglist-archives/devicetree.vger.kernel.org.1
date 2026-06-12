Return-Path: <devicetree+bounces-311078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8WHuOdk2LGo9NwQAu9opvQ
	(envelope-from <devicetree+bounces-311078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:42:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 560D067B04B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:42:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="dhR4/+K4";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311078-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-311078-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 557D53018C37
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F69E3EFFB8;
	Fri, 12 Jun 2026 16:35:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD693F7A84;
	Fri, 12 Jun 2026 16:35:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781282121; cv=none; b=VKnlMmAPNaSw62+pKO//dOdMNH2KrqMVsaSf1eJw3xI+TzcLQ6JKLRVmuO9beaotzO24Xm5qRoWTJPyh1tdbS5Yz162m2rvffALIISprciszNCYS6bVDWXh+XSYD004gcB0NDFHvQlXAmho6BEse6wO+od3YQrlbxF8V6WidOJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781282121; c=relaxed/simple;
	bh=QhO66wGa8dpax8QyyxAxAgJMNCsuTqfg6dhuXO9n2Y0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OeltYxp765UALZHDs+SKC4sl+nuXHt/v0NbHR8tHnLOQd8VNR3Oh0vw5lHk1DFbydlF5sMa/seRVbpEYcq0zCwXWnqDS7NhHB5XD8lM4UdhVSV+KPJmARmKCBkxsRccB8/NPWTC37kMZj2LUisGJm2Q7Dw4AtXvi65vNmrIJvTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhR4/+K4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E50F1F000E9;
	Fri, 12 Jun 2026 16:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781282118;
	bh=IE1t3ciRaWNCvOLYw1cgrR91YZzgxvGHt+e93lnNrU8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=dhR4/+K45PIUkLy/v6GVNJzCz1LtznCgBv+FVXfMjYLexXYxBok+AXAVMFsY2s0DD
	 x/+zP95F026+Unt95noeXJVg3+9yFuPk+KS1+Wkd5962sk+/HaRaUvIwxJAeoB7Xlc
	 6uXrmGnPhs62KZX4JW1d2v83vZebBFoZ0JQxo6GZrvxSdrMhBl0cxAL8eY706uvb82
	 U41v3/Dd00FTNhnnYkK/bxRYhr+9wQmHWclJPNQAgkC8b1WoVPPhyGvgR8GyXWz6KD
	 IwDGYXT7MfmmbyBk9oZlQTOxxLPnRZIheDtmEHwzTQ0xUhTlZUC5ipRSd1yoTKD+jN
	 1QRIfwXvn8Tsw==
Date: Fri, 12 Jun 2026 17:35:09 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Siratul Islam <email@sirat.me>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] iio: magnetometer: add driver for QST QMC5883L
 Sensor
Message-ID: <20260612173509.2d10b77e@jic23-huawei>
In-Reply-To: <20260612154922.00003723@gmail.com>
References: <20260612124557.13750-1-email@sirat.me>
	<20260612124557.13750-4-email@sirat.me>
	<20260612154922.00003723@gmail.com>
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
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joshua.crofts1@gmail.com,m:email@sirat.me,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:joshuacrofts1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311078-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jic23-huawei:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,qstcorp.com:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 560D067B04B


> 
> > +	{
> > +		/* 50ms headroom over the slowest ODR (10Hz) */
> > +		ret = regmap_read_poll_timeout(data->regmap,
> > +					       QMC5883L_REG_STATUS1, status,
> > +					       (status & QMC5883L_STATUS_DRDY),
> > +					       2 * USEC_PER_MSEC,
> > +					       150 * USEC_PER_MSEC);
> > +		if (ret)
> > +			return ret;
> > +
> > +		if (status & QMC5883L_STATUS_OVL)
> > +			return -ERANGE;  
> 
> Sashiko has a remark:
> 
> If we return -ERANGE here when the overflow flag (OVL) is set, does the
> sensor get permanently stuck in an overflow state?
> In typical I2C magnetometers, the Data Ready (DRDY) and Overflow (OVL)
> status bits are only cleared by reading the data registers. By returning
> early without reading the data registers via regmap_bulk_read(), the DRDY
> and OVL flags might remain set indefinitely. 
> On subsequent measurement attempts, regmap_read_poll_timeout() will return
> immediately and this check will instantly fail again, potentially locking up
> the sensor until a reset.
> 

I was curious so checked the datasheet.
https://www.qstcorp.com/upload/pdf/202512/13-52-04%20QMC5883L%20Datasheet%20Rev.%20B.pdf

Sashiko looses this time as overflow resets if the next value is in range.

I'm with Sashiko for explicit access being needed for data ready (or a write 1 to clear)
but overflow is more of an intermittent thing so both styles exist for devices
(with and without need for specific action to clear).

Jonathan
> > +
> > +		ret = regmap_bulk_read(data->regmap, QMC5883L_REG_X_LSB, buf,
> > +				       sizeof(buf));
> > +		if (ret)
> > +			return ret;
> > +
> > +		*val = (s16)le16_to_cpu(buf[index]);
> > +	}
> > +
> > +	return 0;
> > +}
> > +

