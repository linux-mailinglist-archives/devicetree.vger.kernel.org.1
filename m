Return-Path: <devicetree+bounces-270048-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +De9MH+dpWltCAAAu9opvQ
	(envelope-from <devicetree+bounces-270048-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:23:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3663A1DAB6D
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:23:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BB465307649F
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 14:17:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40AE23FD12C;
	Mon,  2 Mar 2026 14:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="fEotZYK4"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72B81EE7C6;
	Mon,  2 Mar 2026 14:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772461016; cv=none; b=UVSBQVniINJdtnNqODQO4PL+F6yftT7kxJZuEk7uGGbyJMKO8usl87ee5nEnhbGXVOZpuJYV+dbUckvvPjtSOBgZNuIkVgNntk8WAI2AzP46jqmroUJ9YafSnUiROEBRE00r5AXwrbGjLvzdWkDoWS5DBQKKtsgldvOMSwvM6zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772461016; c=relaxed/simple;
	bh=6hHyo/juCBP+/B0CK+jOAZVjvtmjVzEbRe5R02MtJZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h0jGB0UmpC/OSOJWdtvWfmEk0Jnuy7cJUbPfhvaGxQwMs64O2KPXDOICId1TJlk3KpG9LKCJ/iXu2Fxk2mePz3VGRnynfdWoNnCMaiDKlNbQhkjZRyNwLeB47aQcoxFRMJjviebHB1ElgJeJjFYgImHo4gTySVMw9DQf5o/w5yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=fEotZYK4; arc=none smtp.client-ip=192.198.163.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772461014; x=1803997014;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=6hHyo/juCBP+/B0CK+jOAZVjvtmjVzEbRe5R02MtJZo=;
  b=fEotZYK4xB3QM5ejmgEACqmNCUmZ7u/0QNhrdSYQVUweA7FfTE+g+XFJ
   I/KNWTxNfBYKZxcKPDCNp40RFX/hGzwxraiLYi+t34XfItVKBr7m9ICPD
   PHDddKSb+6FYeL5SLHicJqJaSeykdM11xmhe3jufPJ62h/Yt5ytjv7NcJ
   ojWzJrkwebt7QunFg4GnCzGodtUxclJv3vhMEuYTMW0B3bIuhJR/CVmJ9
   eUsNxI9U8Y5/tjv53tzXktW1C+CKfSvnLu95L0BS0HKUUjQoAdt3GtB8U
   lFjZsuOQ+DSRv20p3Vz9COq5ngMeiTz/HzwquC1QXo+zO+t4XLNv+V4mv
   Q==;
X-CSE-ConnectionGUID: 8ogUahvCSue7U/cTsyJalA==
X-CSE-MsgGUID: VkSh98n7TWCBgD46j098Vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="61037169"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; 
   d="scan'208";a="61037169"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Mar 2026 06:16:53 -0800
X-CSE-ConnectionGUID: bKMCFpmqQ7OQZKvDk7uvIw==
X-CSE-MsgGUID: a31NsuLKQ1mZeE+iDvk7ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; 
   d="scan'208";a="214128991"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost) ([10.245.244.52])
  by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Mar 2026 06:16:50 -0800
Date: Mon, 2 Mar 2026 16:16:48 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/1] PCI: dwc: Remove not-going-to-be-supported code
 for Baikal SoC
Message-ID: <aaWb0OYC5JjzwgEy@ashevche-desk.local>
References: <20260220142600.2397070-1-andriy.shevchenko@linux.intel.com>
 <ndzk3mcrkymcf3ru7my6om6llkbc6w4paxmgyqab4b46txxjr7@2upwgzrnlu7s>
 <aaWXWka5GpHEBjD3@ashevche-desk.local>
 <arw5dclubv4overootx6oouf6sdk5xgezm6ogegef2obab3ial@3ci7cwkmkk4x>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <arw5dclubv4overootx6oouf6sdk5xgezm6ogegef2obab3ial@3ci7cwkmkk4x>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-Rspamd-Queue-Id: 3663A1DAB6D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.105.105.114:from];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270048-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,intel.com:dkim,intel.com:email,ashevche-desk.local:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DNSWL_BLOCKED(0.00)[172.105.105.114:from,100.90.174.1:received,10.60.135.149:received,192.198.163.16:received];
	DWL_DNSWL_BLOCKED(0.00)[intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,192.198.163.16:received];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[172.105.105.114:from]
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 07:37:42PM +0530, Manivannan Sadhasivam wrote:
> On Mon, Mar 02, 2026 at 03:57:46PM +0200, Andy Shevchenko wrote:
> > On Mon, Mar 02, 2026 at 07:21:22PM +0530, Manivannan Sadhasivam wrote:
> > > On Fri, Feb 20, 2026 at 03:21:12PM +0100, Andy Shevchenko wrote:
> > > > As noticed in the discussion [1] the Baikal SoC and platforms
> > > > are not going to be finalized, hence remove stale code.
> > > > 
> > > > Link: https://lore.kernel.org/lkml/22b92ddf-6321-41b5-8073-f9c7064d3432@infradead.org/ [1]
> > > > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > > 
> > > I see Arnd's comment in the above thread:
> > > 
> > > "I don't think we'll merge the rest of Baikal, we should probably
> > > remove the entire platform."
> > > 
> > > But is there more to the story?
> > 
> > The Baikal enterprise is Russian entity under OFAC sanctions.
> 
> Yeah, I knew that part,

Then I can't tell you anything new :-)

> but didn't know that we decided to remove the platform altogether.

It was never fully added to begin with. That's why Arnd's reply is the above.
It's half-baked and hence a dead (stale) code altogether. Bulk which would
only waste our resources for supporting unused code.

> But I can see patches floating around for other subsystems and
> getting applied, so I will do that same for these PCI host controller patches.

Thank you!

-- 
With Best Regards,
Andy Shevchenko



