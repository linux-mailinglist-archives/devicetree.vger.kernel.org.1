Return-Path: <devicetree+bounces-317055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ETQ1NER3QmqE7wkAu9opvQ
	(envelope-from <devicetree+bounces-317055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:46:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E17B6DB781
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:46:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fnN9+tS+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317055-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317055-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3D8AB30B704D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8ECD409611;
	Mon, 29 Jun 2026 13:13:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE853B960B;
	Mon, 29 Jun 2026 13:13:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782738839; cv=none; b=Cf5srAl8jtmSVMkVCao2Oi97LBA7mBA1jjMb+buC/9N17LHlKR3Pn4lu/aWb8smNVb7cLxGSf2l2cfg9uHVhk+cU02H6NWK0rC62M8FFRjn5YySx+j2zmKnh2hxxTG4jby/HPZtOV7yz4H0HEwljJ8+Fn9cUbQ7DImGR6OtJQbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782738839; c=relaxed/simple;
	bh=BdIOTTbeI1nykp26J8rBagRrwJIgAy9enoDUh/m2NuI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KoKNY9fp9kbX+GVOtRQqerQNVq4KmGD3ak1W3NMfXfZQ5V1/M7UTY5Wbvu0ylIIoSaTzAg4jJI/U6E7sKSPy/KYbp8yrEYg4lKKfDqB6NixP9Md1aIRbtvgKYd9g9AaNDc4o0O90TUqQuldecWokgWJMPJj58HD199r9SFfSL2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=fnN9+tS+; arc=none smtp.client-ip=192.198.163.11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1782738838; x=1814274838;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=BdIOTTbeI1nykp26J8rBagRrwJIgAy9enoDUh/m2NuI=;
  b=fnN9+tS+NmkF03FX9VixqaqTjA0xz77dbjsdKQZvqW6jg865C3CEAu8E
   2x2sS1k1ZFtPxNxnxHcAVEFdZeDbg830jwtz+cT8o/qidJ9owB2Ne/Yw2
   9aG5AfN80Cg4Y3nu7B5CCXcu6M98TSsxHGJ+uO6LLcRhnEpkGJ/8TlJHk
   4yszes/Lnl/58uHo4vcur/cQKSPWYMBNQIrSNzSpW6KS9/f23Uw5E2qNA
   ixF+c/WE7D/DtsdmoboTUhrt2klfFKl+HhCDKuXHi4MblZyTGeA0IVkn1
   lxCYlvzRJZdDSQxO7I5CC+LS7MGkgyBICfvkHNlpZIW6p4jRU/cCnud6q
   g==;
X-CSE-ConnectionGUID: j7os7OPZT1WAlULBUQIoIQ==
X-CSE-MsgGUID: 4/95zXUKSbC5JPmi5/ao4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="94007854"
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; 
   d="scan'208";a="94007854"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 06:13:58 -0700
X-CSE-ConnectionGUID: /q3m4QrASzinS657SBWuVg==
X-CSE-MsgGUID: OnNcX6AJTuCdH2WoveEH0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; 
   d="scan'208";a="250892970"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.207])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Jun 2026 06:13:54 -0700
Date: Mon, 29 Jun 2026 16:13:51 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Zijun Hu <zijun.hu@oss.qualcomm.com>,
	Alban Bedel <alban.bedel@lht.dlh.de>, driver-core@lists.linux.dev,
	devicetree@vger.kernel.org, Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH v2 2/2] software node: Fix
 software_node_get_reference_args() with index -1
Message-ID: <akJvj3pxZwOAd97v@ashevche-desk.local>
References: <20260618152035.1600436-1-alban.bedel@lht.dlh.de>
 <20260618152035.1600436-2-alban.bedel@lht.dlh.de>
 <85b2bac4-9882-4f35-81e4-1718a52aacc9@oss.qualcomm.com>
 <akIfHJd2gpLC1u5o@ashevche-desk.local>
 <bdb69b50-ef98-47f5-92c1-48e73fd2da72@icloud.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bdb69b50-ef98-47f5-92c1-48e73fd2da72@icloud.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[intel.com:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317055-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[icloud.com];
	FORGED_RECIPIENTS(0.00)[m:zijun_hu@icloud.com,m:zijun.hu@oss.qualcomm.com,m:alban.bedel@lht.dlh.de,m:driver-core@lists.linux.dev,m:devicetree@vger.kernel.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:saravanak@kernel.org,m:linux-kernel@vger.kernel.org,m:sashiko-bot@kernel.org,s:lists@lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,lht.dlh.de,lists.linux.dev,vger.kernel.org,gmail.com,linux.intel.com,linuxfoundation.org,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,intel.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ashevche-desk.local:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E17B6DB781

On Mon, Jun 29, 2026 at 08:33:24PM +0800, Zijun Hu wrote:
> On 6/29/26 15:30, Andy Shevchenko wrote:

...

> >> who will use UINT_MAX ?
> >>
> >> This function is a interface function.  the best fix should check
> >> input parameter @index and return -EINVAL if it is not expected?
> > And how do you know which index is allowed without doing that division?
> > Basically this patch does what you asked for: check input parameter for
> > the allowed range (which is dynamic, depending on the property length and
> > size of the reference structure.
> 
> Introduce a common macro to limit the max reference handle count and put it
> in include/linux/fwnode.h with the following macro.
> #define NR_FWNODE_REFERENCE_ARGS        16
> 
> OR introduce a macro for software node only.

The property can be still smaller that capacity. I agree that division is not
the best approach performance-wise, but in my eyes it makes less checks needed
to be done. Let's see what others think about this?

-- 
With Best Regards,
Andy Shevchenko



