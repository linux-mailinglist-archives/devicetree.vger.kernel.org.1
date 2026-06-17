Return-Path: <devicetree+bounces-313059-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eFuYGiG2Mmq94AUAu9opvQ
	(envelope-from <devicetree+bounces-313059-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:58:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B6969ABB8
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:58:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FDQcuGkP;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313059-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313059-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8B5631B9141
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 14:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4F972F1FDF;
	Wed, 17 Jun 2026 14:53:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6772D2385;
	Wed, 17 Jun 2026 14:53:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781708032; cv=none; b=YQ6g9fnDA/lNknONPT3OFZXy2INt+mePWs2YGjfh/Xo4cS4M0B3x8N4Ay8F4hYs1m3u44FACzxFd8RSz16prppAETcacVbGuhcQ175Qf6K+Vu7Yqb+jP4iSAilJs6ZmEU2VsmTpZI4U1d+XFPkruzqDK/9VzXjdJgHwGk5ryw6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781708032; c=relaxed/simple;
	bh=V1NRBosTlHTYoXbxPdpLgFWsOOOcNZZ72MroQat0r84=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N9jzUOmPEFFW+UC2cjl+jBli+rmlJ/pDb7auy3P5gn3WbVQeoxWl4LrRGcNGSdJYyqzNmIvOxLhvpzxNOr5fF7QJiUe8yWdE8ZDK1DDlw1BZwYHs6tqrrxxNCHeu4z9yy/foBtZMCWeJANyPSabV/GrdOdbguyM5Wz/4EW9iKbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=FDQcuGkP; arc=none smtp.client-ip=198.175.65.9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781708031; x=1813244031;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=V1NRBosTlHTYoXbxPdpLgFWsOOOcNZZ72MroQat0r84=;
  b=FDQcuGkP2t23gMiRUfO6X1VMuCjTEX3TUYMmGLYvke7Mq+1zw82ninHV
   KWVs2XnQJzmHvMrYroNG9/JPycsHEdFJWIJK3gudoVyxagwgWh3Q66uFV
   RT+bKCW8qnvPC1rKugrsSTJ0tw2ylvh7PuS4Ho9Isah7s2iEGobrkxTGt
   QDdPscqb5cPs7ducQSEdrou90oMTaocgNb7DdOeI++Ql+Z+VFac90GKYl
   N5ZkL/dyv+M8loPkABVUa1T66omiR3YYJ3cHA1IubTdX2wAvTSWZ6mcrh
   7AujNHVGIHvQ3cdPRSCJ8oVLrr8GAaUaveoa0SX+iGEaokJcfYV/nsqW8
   Q==;
X-CSE-ConnectionGUID: ecExvUo/QHeMqiiakWQOPQ==
X-CSE-MsgGUID: I4LSb8R4SJupMkQIM3e2mA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="105308996"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; 
   d="scan'208";a="105308996"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2026 07:53:51 -0700
X-CSE-ConnectionGUID: 7Klp/y4BSYiXOLj7a21O2w==
X-CSE-MsgGUID: Cvwuv5u5RuGpp99kGs2wkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; 
   d="scan'208";a="248163093"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.245.69])
  by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2026 07:53:47 -0700
Date: Wed, 17 Jun 2026 17:53:44 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Salih Erim <salih.erim@amd.com>
Cc: jic23@kernel.org, andy@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, conall.ogriofa@amd.com, michal.simek@amd.com,
	linux@roeck-us.net, erimsalih@gmail.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 3/5] iio: adc: versal-sysmon: add I2C driver
Message-ID: <ajK0-KmjxDPW_g4M@ashevche-desk.local>
References: <20260616131559.3029543-1-salih.erim@amd.com>
 <20260616131559.3029543-4-salih.erim@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260616131559.3029543-4-salih.erim@amd.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313059-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:salih.erim@amd.com,m:jic23@kernel.org,m:andy@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:conall.ogriofa@amd.com,m:michal.simek@amd.com,m:linux@roeck-us.net,m:erimsalih@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,amd.com,roeck-us.net,gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ashevche-desk.local:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D2B6969ABB8

On Tue, Jun 16, 2026 at 02:15:57PM +0100, Salih Erim wrote:
> Add an I2C transport driver for the Versal SysMon block. The SysMon
> provides an I2C slave interface that allows an external master to
> read voltage and temperature measurements through the same register
> map used by the MMIO path.
> 
> The I2C command frame is an 8-byte structure containing a 4-byte data
> payload, a 2-byte register offset, and a 1-byte instruction field.
> Read operations send the frame with a read instruction, then receive
> a 4-byte response containing the register value.
> 
> Events are not supported on the I2C path because there is no
> interrupt line and the I2C regmap backend cannot be called from
> atomic context.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>

-- 
With Best Regards,
Andy Shevchenko



