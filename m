Return-Path: <devicetree+bounces-324986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FuagLs08U2qwZAMAu9opvQ
	(envelope-from <devicetree+bounces-324986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 09:05:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CACA74407D
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 09:05:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=P+f6nkwQ;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324986-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324986-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E48C3014571
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 07:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79060371895;
	Sun, 12 Jul 2026 07:05:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAD92FBE1F;
	Sun, 12 Jul 2026 07:05:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783839944; cv=none; b=W3gT+dyo9twbvnrqnQIAbLQ2lzDQOdrOenhNT6qtXcvBkvoCT8zadNFIpnDWBK147eJf+zZ90odFhRzd3+p58ptf43NPUfLc+WYe6y53xsbc6WJpWGdNvbH2R9+mWQSgOcYP6unOLGEHeU2U5+eLIfjUm1Dx69cOTMlfSHsNzYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783839944; c=relaxed/simple;
	bh=DjiMdsf/045VAP7/DTjJA3yvXoG/ZkyCISOXSxyMNLU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KqrbEB9Nysv6jHtbsBICmHbwGqEiVb9JTh8phUY1zOGyntH/6oZz/g06VYxLwpt4h/wunNDmElvd9minbG9j3jp/MB1lJBFEYmZ6iXyXK+eg+O+8xeuksoNiXHGG7Xl6J4d7lKoiFyiqDv3bFZnvSb3XDAUsN0vOC0gRR91F5SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=P+f6nkwQ; arc=none smtp.client-ip=198.175.65.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783839943; x=1815375943;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=DjiMdsf/045VAP7/DTjJA3yvXoG/ZkyCISOXSxyMNLU=;
  b=P+f6nkwQzQoGZfdMkiD1+NJIDnFP4h5lYiq5HpVWkpgFI8gKZAkUdXLd
   Ks++2XXVk6pCWZWxxdJqipu+aAm8lQkXjgi2nWC+ZVKpTph3xqsDgcqty
   AgwoWEGsLMU/QPnITJWhDx/VoBXfosut1KZebd03ie3LiYpDDpZM7NYiP
   0OKElrDmiYKyDyxOD+pKMuMLAaoATLSYbVq6M0pS5gvPj5Jiw2AHIpR8M
   r57HQmIsDPXdIOm0d/H9jO0lGJG/ZUdb841Db80UqbD8o6h8jSydf/7Ph
   Ab59491YtDAfmFtad5RUxzhR0P6ZLWmdLOGvuEc9BXO5laEVg8mea1KKr
   g==;
X-CSE-ConnectionGUID: Hip+Nh3FTZi3685YQ9Z5Cw==
X-CSE-MsgGUID: B36zgPMlS1m0DdLGNPLKNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="94835777"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="94835777"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jul 2026 00:05:42 -0700
X-CSE-ConnectionGUID: XVrTxIksTN2KFjYMipB4mA==
X-CSE-MsgGUID: LzkXxeepRNu7ljwprtkLuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="251878641"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.245.24])
  by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Jul 2026 00:05:38 -0700
Date: Sun, 12 Jul 2026 10:05:35 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: rodrigo.alencar@analog.com
Cc: Michael Auchter <michael.auchter@ni.com>, linux@analog.com,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	sashiko-bot@kernel.org
Subject: Re: [PATCH v7 2/7] iio: dac: ad5686: refactor command/data macros
Message-ID: <alM8vxmzvHM8zYxc@ashevche-desk.local>
References: <20260710-ad5686-new-features-v7-0-1bcc8c280e4d@analog.com>
 <20260710-ad5686-new-features-v7-2-1bcc8c280e4d@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260710-ad5686-new-features-v7-2-1bcc8c280e4d@analog.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324986-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,ashevche-desk.local:mid,intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0CACA74407D

On Fri, Jul 10, 2026 at 12:20:46PM +0100, Rodrigo Alencar via B4 Relay wrote:

> Replace usage of bit shifting macros for FIELD_PREP(), which would not
> ignore bit masking when preparing SPI/I2C commands. This change is a code
> hardening measure to be paired with the upcoming triggered buffer support.
> For the AD5310 regmap case, 16-bit data coming from the buffer may overlap
> with command bits if the data field is unmasked.
> 
> *_REF_BIT_MSK and *_PD_MSK bit position macros are renamed (with a DATA
> prefix) so to indicate that they are relative to the DATA field.

> Reported-by: sashiko-bot@kernel.org
> Link: https://lore.kernel.org/all/20260628143026.EC6CA1F000E9@smtp.kernel.org/#t

Reported <--> Closes.
Also, '#t' part may be dropped from the URL.
Doesn't checkpatch make a warning on this?

-- 
With Best Regards,
Andy Shevchenko



