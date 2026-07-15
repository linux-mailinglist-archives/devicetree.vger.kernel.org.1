Return-Path: <devicetree+bounces-326681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c4oUD+gtV2oMHAEAu9opvQ
	(envelope-from <devicetree+bounces-326681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:51:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE4B75B3CC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:51:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=KPchxVhL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326681-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326681-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 294A33004D95
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 06:51:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0516531E82E;
	Wed, 15 Jul 2026 06:51:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C95921CC71;
	Wed, 15 Jul 2026 06:51:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784098274; cv=none; b=cXeLWs06FibLKxuHyRdnWM6lJ4MIlzfP7+GNX7UBltzgEln/QI03FL+VVgWWCcJM4w2SyEdrRq8ZB1kWq/ZUDmOqCJ9aFkPFyMAzjrT1gnjhRnM7VP6gH8TRuMCRAOVVJzeG6UU8QvkbcPgfIlB7nFh4nPcJtwza83bfFugMmr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784098274; c=relaxed/simple;
	bh=jm3Fp1OxVfLWQNXEgcghvnmtKSa9n+UQn9qCVN6+yc8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gzntDo8s1n/32HG14C18pLhWL7Tvi0pHPJhJTUD3Or4wyOSFRh477aL8rX+IQffnLwRQ92XSdnju1C6R+XZUHY/H8HD03EqlADBBSze3v4vtFdmFKkq4xYS/042dI5gn7Jt2+uLZe+XrjP8O4RDvhOxF+8CqZJUzPNQmEORkJA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=KPchxVhL; arc=none smtp.client-ip=192.198.163.15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1784098273; x=1815634273;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=jm3Fp1OxVfLWQNXEgcghvnmtKSa9n+UQn9qCVN6+yc8=;
  b=KPchxVhL7K0/2dJv8Yo9BOOR5vh/VRh1K5EtZ7tIstmXnK/+N+FXZbxq
   08tiVQyiO4f/iujCRgg27/ziKdSrjWXQgdvlf6i+2dtdhOFPRblqEV2Da
   ZgvUzmZxTGbaAsqqIm9KdCPB7ymi028XA4WWQs7oiSPiXgLXU5DbJ41ln
   T9GWzYMPKbUWPuQkXmxk/2VmJ50WU32mSLNpnj9jLFd1uYydzexGFRNnL
   CyN9reAiq4WpxurjQn1GcnaOLlKmtm2y3vn5y96a5vje6XlSb4WfeOjJE
   XN83We+Zy00qnYNtjDL064mrqPfTB90khBt2mSU9tm6+My7l8eiFbkq1W
   Q==;
X-CSE-ConnectionGUID: /lp2AuI7RKyZrhh5PXIEXg==
X-CSE-MsgGUID: LWnpeLBHQPyFcGJEdqNZCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="84843826"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="84843826"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 23:51:12 -0700
X-CSE-ConnectionGUID: FgmvN1u7Romd21DsaFUtUw==
X-CSE-MsgGUID: GMTfaPmVQuaB2s3PLm5nMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; 
   d="scan'208";a="286155256"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.44])
  by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2026 23:51:08 -0700
Date: Wed, 15 Jul 2026 09:51:06 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Stefan Popa <stefan.popa@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>, Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Siratul Islam <siratul.islam@linux.dev>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>,
	Ciprian Hegbeli <ciprian.hegbeli@analog.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] iio: adc: add MAX40080 current-sense amplifier
 driver
Message-ID: <alct2kGoQAC8pNMd@ashevche-desk.local>
References: <20260715063652.368501-1-stefan.popa@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260715063652.368501-1-stefan.popa@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326681-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stefan.popa@analog.com,m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:siratul.islam@linux.dev,m:u.kleine-koenig@baylibre.com,m:ciprian.hegbeli@analog.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,intel.com:dkim,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2EE4B75B3CC

On Wed, Jul 15, 2026 at 09:36:15AM +0300, Stefan Popa wrote:
> This series adds support for the Maxim MAX40080, a bidirectional
> current-sense amplifier with an integrated 12-bit ADC and an I2C/SMBus
> interface. It measures the voltage across an external shunt resistor and
> the input bus voltage.
> 
> The driver operates in direct (INDIO_DIRECT_MODE) mode. Each raw read
> triggers a single on-demand conversion (SMBus Quick Command) and reads
> back the matched current/voltage pair, so results are always fresh. It
> exposes the current and voltage channels with raw and scale attributes,
> a configurable oversampling (digital averaging) ratio, and PEC-protected
> register access. The two selectable current-sense ranges are exposed
> through scale/scale_available; the current scale is derived from the
> shunt-resistor-micro-ohms device-tree property.
> 
> Tested on hardware with four MAX40080 devices on an I2C bus.
> 
> Regarding Andy's question about *iv being updated even on error in
> read_poll_timeout: yes, this is intentional. The poll loop must update
> *iv on each iteration to check the valid bit. On timeout (conversion
> never completes), *iv contains the last-read value with the valid bit
> still clear, but the caller always checks the return value first —
> "if (ret) return ret;" prevents any use of the stale data.

My point also is that we can do it only once. And since the above a comment is
a must. See more in the comment I'm going to give against individual piece of
code.

-- 
With Best Regards,
Andy Shevchenko



