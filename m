Return-Path: <devicetree+bounces-310004-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SSlGAlG6KWrFcQMAu9opvQ
	(envelope-from <devicetree+bounces-310004-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 21:26:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6285066C7FE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 21:26:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GMINs6Nk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310004-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310004-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CE7531D5C18
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 19:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59350360EE9;
	Wed, 10 Jun 2026 19:23:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A9A3002D1;
	Wed, 10 Jun 2026 19:23:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781119420; cv=none; b=MEoao5eMOR0Spc7NPCjLILlsrwsOdOgAUUmhQ5iuLS4CgUxiVHmUH86ONVbP0lC/8O7A+yNKCd1LoPXQDAmgI2YT0PS2oUaz9reAJ2jpodq06O1UKOlEGf32X8cWdPy7iDo0V7IhMa0/I6SGbK+YLm4Ye+Vb7j5DnqKoAzmmNT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781119420; c=relaxed/simple;
	bh=Puy0+WDhFG/hdKVJlVU0FESwrANh4+pb2K1oMmWZSJ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TuZFg77R4eFnuZgn3Rmny0GIGNLYWUJmFTLhyTYifKXq6uAsF7B3ovGG26CK3JYzI8yFCOLb9yziaotCnbhu6+OJ4l8SbDrHDbKTjFELrfI+xnafzaxmRJ/TGMYly59/Ve03x7qNL/H7XfrGm/f+t1ixCQRt3uOXSy1FnqQSRPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMINs6Nk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09A901F00893;
	Wed, 10 Jun 2026 19:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781119419;
	bh=Ludsmq8Y6EgdyGWD/SlqPssF53N5QdGs0zpEsNTeonM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GMINs6Nk+wuYHh3dcKxXPTXvLojkj3LuvWhiC+WKK+7puuhorMX3Pz7/tm6Xiqfr0
	 qzcMvTa2BOng8W7ztb7w5pdpLN2Eb64Q38UBvKZMTjJcbzTa6U0aE8n+mtdT1XjRZe
	 VHpHpmd9/reef+zdGgicC0yGWHCkhu0lKqQEU3zw81nzCeHNnSe8voJ8iRfWsDye/l
	 ZOFA5gzb5GO71nkc0fsByMvrtlC3NG9NvpiZBYlO3hXcrKlOFH1oRrjO/sP51/z0On
	 nvQhIwmy02YlOuzgy/huyyAtXX7uwYjhEvkVx322QG429DUadySx7lvkKeW2xRn8cF
	 3l1fMCXl1SPog==
Date: Wed, 10 Jun 2026 14:23:38 -0500
From: Rob Herring <robh@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Md Shofiqul Islam <shofiqtest@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, krzk@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: accel: Convert lis302 binding to YAML
 schema
Message-ID: <20260610192338.GB626285-robh@kernel.org>
References: <20260610110051.1228-1-shofiqtest@gmail.com>
 <20260610165640.411c1477@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260610165640.411c1477@jic23-huawei>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,baylibre.com,analog.com,kernel.org];
	TAGGED_FROM(0.00)[bounces-310004-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6285066C7FE

On Wed, Jun 10, 2026 at 04:56:40PM +0100, Jonathan Cameron wrote:
> On Wed, 10 Jun 2026 14:00:51 +0300
> Md Shofiqul Islam <shofiqtest@gmail.com> wrote:
> 
> > Convert the STMicroelectronics LIS302DL/LIS3LV02D accelerometer device
> > tree binding from plain text format to YAML schema format.
> > 
> > The binding covers two variants matched via their respective bus drivers:
> > - SPI: st,lis302dl-spi (drivers/misc/lis3lv02d/lis3lv02d_spi.c)
> > - I2C: st,lis3lv02d   (drivers/misc/lis3lv02d/lis3lv02d_i2c.c)
> > 
> > Document all vendor-specific properties read by the driver via
> > of_property_read_*(), including click detection, IRQ routing, free-fall/
> > wake-up engines, high-pass filtering, axis remapping, output data rate,
> > and self-test limits.
> > 
> > Also correct the click threshold property names: the driver reads
> > "st,click-threshold-{x,y,z}" but the old .txt documented them as
> > "st,click-thresh-{x,y,z}".
> > 
> > Validated with: make dt_binding_check   DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/accel/st,lis302dl.yaml
> > 
> > Signed-off-by: Md Shofiqul Islam <shofiqtest@gmail.com>
> 
> Hi.
> 
> So the conundrum here is whether we want to keep carrying this binding
> as it dates to a previous era.
> 
> The driver never made it to IIO and is still in drivers/misc.
> The majority of what is the text document should never have been
> in DT in the first place. I'll guess this dates all the way back
> to the wild west days before we had regular binding review.

Where the driver is doesn't matter for the binding. Unless the 1 
apparent user is will to change things, we should just document what is 
in use (and nothing more). Some of this looks like it can be droppped.

Rob

