Return-Path: <devicetree+bounces-270038-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MnTD/mVpWmPEQYAu9opvQ
	(envelope-from <devicetree+bounces-270038-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:51:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D23611DA228
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:51:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 40A0E301DF4E
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71F336C9D0;
	Mon,  2 Mar 2026 13:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaVcDfDj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4916430BA2;
	Mon,  2 Mar 2026 13:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772459510; cv=none; b=TdS0esrdlIbbTlDe9IVAhDbbUob+uVi+fbJlj+WAAVCQGtzCQJo39xu0ytR7EWwePLotLTEnZmdCho9CoC184d1s1vSF9w2j9gLcStmBrug7KhjdjEJfex6DSbL9qmAHVTRsgqHApJkbkLu+m9Hzl2bVPVRiz0f7XuMDSQDzvjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772459510; c=relaxed/simple;
	bh=tQCilvgxn/2ATSQQHI/UiTAlYQVvLFF1dtvOuDOXZ3I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AenpdLKabx99GhnD5fbokG1fz4KwR5dHZ1a0+JFaKcVapl4wm6vUrkah+9aK1kQX8j0MYD/x73rvCKGAucRCeKJk47tXcyhUFpG84MC/v2keNBZ75qbtiEsRLZ/hahtoC0StDTiTz8kwuN5ascRmSYDZryx/doE4DBVXpoqwpvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaVcDfDj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D767C19423;
	Mon,  2 Mar 2026 13:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772459510;
	bh=tQCilvgxn/2ATSQQHI/UiTAlYQVvLFF1dtvOuDOXZ3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LaVcDfDjh858XG9IFMWlXGB3NH6tL29bG/bar0f79mmr19/xDSty53Yn4Q9Wk9iit
	 oJfgLx0appg8Lj61ANRHzeUog+VTecRMUH+1SMHbZa85WIFucEPqcz3x2xnmnJiME8
	 wopEeurozu6ej3Ei5yZ8Uuo00SZCvU5ppn/YwDML8Wz26ytoMwmkGKW+1qkhSCnGqe
	 49tCoOnaHIaWt3oWS9PyhdHv+p4aQyDvGFHXcDjfe6NKfkDnfrGeuHgC8mP0OWAHLr
	 K52iarfEBJ3a+EL5g6atu29bFaRDL1WmYZ/GTEPTjoWvBfjl/K81w4kedqScdj5X7W
	 PWkbHVIM2sQAQ==
Date: Mon, 2 Mar 2026 19:21:22 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/1] PCI: dwc: Remove not-going-to-be-supported code
 for Baikal SoC
Message-ID: <ndzk3mcrkymcf3ru7my6om6llkbc6w4paxmgyqab4b46txxjr7@2upwgzrnlu7s>
References: <20260220142600.2397070-1-andriy.shevchenko@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260220142600.2397070-1-andriy.shevchenko@linux.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270038-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D23611DA228
X-Rspamd-Action: no action

+ Arnd

On Fri, Feb 20, 2026 at 03:21:12PM +0100, Andy Shevchenko wrote:
> As noticed in the discussion [1] the Baikal SoC and platforms
> are not going to be finalized, hence remove stale code.
> 
> Link: https://lore.kernel.org/lkml/22b92ddf-6321-41b5-8073-f9c7064d3432@infradead.org/ [1]
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

I see Arnd's comment in the above thread:

"I don't think we'll merge the rest of Baikal, we should probably
remove the entire platform."

But is there more to the story?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

