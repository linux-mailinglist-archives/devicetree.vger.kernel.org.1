Return-Path: <devicetree+bounces-299199-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AI9zFk7MCmqf8AQAu9opvQ
	(envelope-from <devicetree+bounces-299199-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 10:22:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6675689E1
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 10:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6148E3001450
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 08:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E10243E275A;
	Mon, 18 May 2026 08:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="k8sqB1Xv"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8393D16F6;
	Mon, 18 May 2026 08:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779092553; cv=none; b=NXtu0Yv0Zzf4T/NYI7a4Xv4qFT4qyOA5sxHDqoI4/ILECfhFKWvdv+hLn1jvejdNQExiHkmF+AKO/iBwWcx1GwN0nwYd2F9i5Lfo40XnLDTnmPEctaj7zU1qcSZWY6RZlEimMU8fVtWnatdCeTmAv65PcOQPiv1EqDRZUP8ZEQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779092553; c=relaxed/simple;
	bh=JKQXM+aklvzg+HECTcbU6iBFBwV9nwFA+IONcsJPURo=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Wjay/zVD6h/TQc2FwC49VUTjuPhiBBJ4e77tqyBvALWX52uSMFH4/4qmBXbqafNlZ4goYe2u4vrCdVbHivUipssZWS9lPYn6/BCC/oKGoYlu5u4Bf51Bp2gHGY3AQA8NMWNpUzSa1Hlilkd7JDSpC2/nvNBG5KzBADaGTWaIeOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=k8sqB1Xv; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1779092552; x=1810628552;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version;
  bh=JKQXM+aklvzg+HECTcbU6iBFBwV9nwFA+IONcsJPURo=;
  b=k8sqB1XvYXZc9/9oC4wmmincRy/LBk0DsQ4ThYW6MYphOBVEsfrHWp8I
   6p2twVi92E1rsm0qmVz56Ho5lK/q6Jx0zOJbjyNQuroryJ7ABJY8pKVhJ
   lUCDcEvLloE/BuZG/PnuPjbMse4uvfaBPEbvYYqLZG/fvXZqfVv93XQ5W
   LL+YcWq8iUmaNX6A5O0qzhLWkmctzrPGi4WAX09/aQwZPSzeGExAKleTm
   ZTiBoL05UoiGXTHlybIID1mn84fIMJXktZW+phZelD+pj0W/1l3o95z8Q
   dt2uq7PupDMiBxOb1BvgjO452UnaqBbnuA78VPj+Kp/+GHjnVimEtZ9Pl
   Q==;
X-CSE-ConnectionGUID: dOUSHXj7TJuYf/Qz6pWgjg==
X-CSE-MsgGUID: 05MQdThCQsG/5j892tyW6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="79970705"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; 
   d="scan'208";a="79970705"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 May 2026 01:22:29 -0700
X-CSE-ConnectionGUID: 1uM92fndQOqU2AOGjgD0Rg==
X-CSE-MsgGUID: BrsBKavTSHyg+BioSlzHug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; 
   d="scan'208";a="238480389"
Received: from conormcd-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.244.1])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 May 2026 01:22:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jonathan Corbet <corbet@lwn.net>, Guenter Roeck <linux@roeck-us.net>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: sashiko-bot@kernel.org, sashiko-reviews@lists.linux.dev,
 sashiko@lists.linux.dev, Linux Kernel Workflows
 <workflows@vger.kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, kfree@google.com, Dave Airlie
 <airlied@redhat.com>, Simona Vetter <simona.vetter@ffwll.ch>
Subject: Re: Stop false review statements
In-Reply-To: <877bp2m586.fsf@trenco.lwn.net>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <ad139e54-a7f0-4d09-832c-6b2bf2e93e03@kernel.org>
 <fcc4b719-2696-4f31-bac4-6c07f8ddec47@roeck-us.net>
 <221cc52e-9918-43ea-b196-622a8cc6db05@kernel.org>
 <fd3b2ca7-4d64-4c4b-98a3-7d3285fa6826@roeck-us.net>
 <877bp2m586.fsf@trenco.lwn.net>
Date: Mon, 18 May 2026 11:22:20 +0300
Message-ID: <6010df0409abe1c9fc922ce57d7baa6c6998fa49@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Queue-Id: EF6675689E1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299199-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sun, 17 May 2026, Jonathan Corbet <corbet@lwn.net> wrote:
> That said, I was certainly considering *human* reviewers at the time,
> and all of the people who agreed with the suggested policy were too.
> Adding bots seems like a stretch to me.
>
> I can't speak for subsystems that require Reviewed-by tags on their
> commits, but I'm not sure that their maintainers would accept an
> automated review as satisfying that requirement.

For the parts of the drm subsystem that have a committer/maintainer
model, one of the requirements for pushing is that at least two people
have been involved. Reviewed-by is one of the ways to record this is
indeed the case.

I can't speak for the entire subsystem either, but to me it was always
about people, trust, and the community.

We may add ways to record that an LLM has reviewed a patch, but I think
the fundamental requirement that two human beings have been involved is
going to remain.


BR,
Jani.


-- 
Jani Nikula, Intel

