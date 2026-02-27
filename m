Return-Path: <devicetree+bounces-269366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIW2ItfRoWkfwgQAu9opvQ
	(envelope-from <devicetree+bounces-269366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:18:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D769A1BB537
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 18:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7D81303A920
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 17:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80D8B374174;
	Fri, 27 Feb 2026 17:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laxgkdEB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AC43F0741;
	Fri, 27 Feb 2026 17:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772212556; cv=none; b=e+QQyTAQ9y7Ad4AF5oImeCMU5pOttnRHS99+MRYxLbB7geWgsAsvbLV2EQ/a7iWgIvsVZRhTh8XLOUagKG0e5ifFxUJvN+/WsnCI5cT230uzrZ7OeoONAunXiUASP0My5FLvUPmP25LW9O3jKktPNbElVxdWOa4MHus6GxN2TE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772212556; c=relaxed/simple;
	bh=vY2PEim4h8ry91UAbejDugjqrXW6xhJuFeaKNWdNl4s=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=r7eFM5yWPULkEC/aJQmUEvR6fVuP8JaVG2IsKvVbitVwxCWtLw59mWkbdCKTG4qqkoJFcCPgMcfJ7X2CBmhiFUugxS3/K4ulkCWOsYUQdkElFr5fEkJKMFSc6N2wpC8deo8hjFOg7MYiA0aPdmOUQcAGgFCZsZYyP7hFPq61TPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laxgkdEB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 526EEC116C6;
	Fri, 27 Feb 2026 17:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772212555;
	bh=vY2PEim4h8ry91UAbejDugjqrXW6xhJuFeaKNWdNl4s=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=laxgkdEBO/NEZ7oIKJ1DHXEcv+D/BVuHOyjPm6vn0a7bZxBhxw6mZCFTBa96PAgyU
	 TpXaM7jazcFHTer7LsgecaBHJWfr60r/jHwN0iCM9UsseGyEQ/6SJg7uxf5YJj4zD/
	 z+C7dn2mAYWLG/3DeygIS2Dx5ANhAQ0pSIJaEYTUMjElu/wnxVRAaMg7eX0aVa918a
	 AbjvBAjjEU6J7+EsK5gikPmwXD8JupWTmoUHi5fBA508a4/n23LQvanx/adBVmxbm8
	 lntvclv59aZ6XVN7jQUO2m3zuLmrOfmVVHK2IlzvYtVMuRFqVeucHQRqKNgNuEMfoM
	 xWCKZHVw9NXkw==
Date: Fri, 27 Feb 2026 11:15:54 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: zhangsenchuan@eswincomputing.com
Cc: bhelgaas@google.com, mani@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	robh@kernel.org, p.zabel@pengutronix.de, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	christian.bruel@foss.st.com, shradha.t@samsung.com,
	krishna.chundru@oss.qualcomm.com, thippeswamy.havalige@amd.com,
	inochiama@gmail.com, Frank.li@nxp.com, ningyu@eswincomputing.com,
	linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com,
	ouyanghui@eswincomputing.com
Subject: Re: [PATCH v11 2/2] PCI: eic7700: Add Eswin PCIe host controller
 driver
Message-ID: <20260227171554.GA3898780@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260227111808.1996-1-zhangsenchuan@eswincomputing.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269366-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[google.com,kernel.org,pengutronix.de,vger.kernel.org,foss.st.com,samsung.com,oss.qualcomm.com,amd.com,gmail.com,nxp.com,eswincomputing.com,einfochips.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D769A1BB537
X-Rspamd-Action: no action

On Fri, Feb 27, 2026 at 07:18:08PM +0800, zhangsenchuan@eswincomputing.com wrote:
> From: Senchuan Zhang <zhangsenchuan@eswincomputing.com>
> 
> Add driver for the Eswin EIC7700 PCIe host controller, which is based on
> the DesignWare PCIe core, IP revision 5.96a. The PCIe Gen.3 controller
> supports a data rate of 8 GT/s and 4 channels, support INTx and MSI
> interrupts.

Does "4 channels" mean "4 lanes", i.e., what we typically call a "x4
link"?

