Return-Path: <devicetree+bounces-290582-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OPHJVZs72nFBAEAu9opvQ
	(envelope-from <devicetree+bounces-290582-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 16:01:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id F3700473EC4
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 16:01:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 07AB43004939
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 13:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E7913CF689;
	Mon, 27 Apr 2026 13:58:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="j/LqEJEo"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882303C945A;
	Mon, 27 Apr 2026 13:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777298290; cv=none; b=IKQpGHDQsmgJtT6FQsxLV+werze6l2mIpUr7g5PPFUH6qzc76aFsmzWV/mdH0X9wRmDduhG3mkAjtAorkkSwrH2wQ3k6ZNua9M16T+geQbjRNXdoE3SYIuP571mN/Ck3xjwk9SekQr0NTVrTxyACDNMSArWyco9Na/YYidioJbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777298290; c=relaxed/simple;
	bh=hsrZUKNChwuYVCJzhmaqBiOTMO8wTQFrYuMPa82iCxI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L0nWv+/UOoUIDwdiauEGPAlUNHJar2nBAE7WO79UdpQMA0aAQh0qjHvsFrU2Ly4cNvUFEmauq29xAYQb/tPmq8xikoOdeM6vCsdeKbIcrcUN+JjzW4utPJUc1x/20vUko8gKpuyzE5KBMb5BacUWQfW5/KVqpQylarAXja/qOLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=j/LqEJEo; arc=none smtp.client-ip=198.175.65.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777298289; x=1808834289;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=hsrZUKNChwuYVCJzhmaqBiOTMO8wTQFrYuMPa82iCxI=;
  b=j/LqEJEogD/J8dSl+BKiROTbi0GCpuupqq2uue8Ibp0bltl7OlXlkRhx
   0mjUZnC4cgniXLbIFFPu9L8z1XV3oFlXPwQg5NhZNeMOhA8G+szoGDwHo
   7VLaotxtREmbbezeZGHNNL4j/540dtggw7KsOrVjW0nXIzElsVzBEEFVO
   Pz+X2Fqbcmwj52gM9Nq627T+e0J7c3ap78/ncTR3242+vGyBnprSn11Tr
   QFPAfzBjmqKop2a35c+psjzpB7JNKiFd6JCOOlayJYKp4Fvrci+BTFifh
   rN+TsG1lvFen8kiHgOoz86KjmpjUr2+O/7Iv22EW15NSctQoBPBX7XCeg
   w==;
X-CSE-ConnectionGUID: slz3iEgFQFOiIgoh8+hjuQ==
X-CSE-MsgGUID: OigC4juyR7qpamdeYCBmoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77891145"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="77891145"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 06:58:09 -0700
X-CSE-ConnectionGUID: k/SezTGpRPGnLj1zSawNCg==
X-CSE-MsgGUID: 1ChPpiPeRTiBM4Serrwapg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="235408838"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
  by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 06:58:05 -0700
Date: Mon, 27 Apr 2026 16:58:03 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: ak@it-klinger.de, jic23@kernel.org, dlechner@baylibre.com,
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/7] iio: adc: hx711: update Kconfig, module
 description and file header
Message-ID: <ae9rayYbr1UbYIQD@ashevche-desk.local>
References: <20260427100950.33936-1-piyushpatle228@gmail.com>
 <20260427100950.33936-4-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260427100950.33936-4-piyushpatle228@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: F3700473EC4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290582-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MAILSPIKE_FAIL(0.00)[172.232.135.74:query timed out];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,ashevche-desk.local:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

On Mon, Apr 27, 2026 at 03:39:34PM +0530, Piyush Patle wrote:
> Update the Kconfig entry to "AVIA HX711 and compatible ADCs" and list
> supported chips one per line to make it easy to extend when new variants
> are added. Change the module description and file header to match.
> 
> Add direct includes for linux/array_size.h and linux/types.h rather than
> relying on transitive includes pulled in by other headers.

Obviously something went wrong. First of all, I have told that MODULE_*()
changes doesn't belong to the refactoring patch. Second, I meant that the
Kconfig help text to go to a separate patch.

Header inclusions should be taken care when it's required. It doesn't belong
here.

Looking at this again, most of it probably should be folded into the new HW
support patch where you add a new chip_info.

-- 
With Best Regards,
Andy Shevchenko



