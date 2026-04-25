Return-Path: <devicetree+bounces-290181-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +K+HDLSQ7GnHZwAAu9opvQ
	(envelope-from <devicetree+bounces-290181-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 12:00:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 770EE465D43
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 12:00:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D39D3300D691
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 10:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14BE037AA70;
	Sat, 25 Apr 2026 10:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwmye6am"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E341529ACCD;
	Sat, 25 Apr 2026 10:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777111217; cv=none; b=QvvsPSUnGL3P4P8sEbHqMnwHcz2NqdZxyvKnFaDX/fuWA43j4FTGXR2BwALMnCTaUCu3/KMp7JWhFWeS4Eg3wYZFwdNBrBV2+rNwFSGRxTY3Qy5qjraPc/17CztPTxTQpmo1ii7sLOWmkjcVddl2vj6aQrsTKk0WJUvfME18H5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777111217; c=relaxed/simple;
	bh=0JI/sNhBy7s5x/BVI9wTKO0mI5GBqDtKbA7wQnD5N3g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i215y5zl85NRGGAFEDdd/hh4d8570X5GXcUaij+7a0RNbLiTLwqgVq5coPCVrOdtlRG8zESzZjx31CPmW+VIFelqFZlXEyUSb5NzIaCqJ7PEWDbiQg0Tiuj4YR/2BgCtwhB5yejIzxE42uelIX9A8+H3l/K35b+VotK57p+RsnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwmye6am; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9D2CC2BCB0;
	Sat, 25 Apr 2026 10:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777111216;
	bh=0JI/sNhBy7s5x/BVI9wTKO0mI5GBqDtKbA7wQnD5N3g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fwmye6amN9Ii56XtGCyVLlIySXU6NXdKia5YQdMmYiGO4+Qrad9jKp1zwC243Of+g
	 9Mtdo5xpmxVXCLNiU5Q1k1AAPX6ehs+5Nkepk8cmCDawaRvGDehvglZasErnowzf7F
	 JZqHGW+VbhzZ2x5zZ2EUhdXITKbhdG6U01aFVsgzL658R9atdQembuVCysJ507Yo7H
	 kbs6ZwoPsmmipysGr0K4uqcayBqchOE+R5I6zHy/NegQaDTzhQfEoP1/lSX+H5crbj
	 1u2J6H3e72bRv9idBoOZVGWonRPNZzXdvAdWfam3hTr/r+iifGfSAdalb/6RQWo4hy
	 DtSE5SopYCmMA==
Date: Sat, 25 Apr 2026 12:00:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Richard Zhu <hongxing.zhu@nxp.com>, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, bhelgaas@google.com, frank.li@nxp.com, 
	l.stach@pengutronix.de, lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/3] dt-bindings: PCI: imx6q-pcie: Add intr, aer and
 pme interrupts
Message-ID: <20260425-agile-impala-of-unity-cadced@quoll>
References: <20260424025735.1490772-1-hongxing.zhu@nxp.com>
 <20260424025735.1490772-2-hongxing.zhu@nxp.com>
 <20260424-sinless-unfiled-d1087a894da5@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260424-sinless-unfiled-d1087a894da5@spud>
X-Rspamd-Queue-Id: 770EE465D43
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290181-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,google.com,pengutronix.de,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email]

On Fri, Apr 24, 2026 at 06:06:18PM +0100, Conor Dooley wrote:
> On Fri, Apr 24, 2026 at 10:57:33AM +0800, Richard Zhu wrote:
> > Add optional 'intr', 'aer', and 'pme' interrupt entries to the i.MX6Q
> > PCIe binding to support PCIe event-based interrupts for general
> > controller events, Advanced Error Reporting, and Power Management Events
> > respectively.
> > 
> > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > ---
> 
> This binding supports lots of devices. Do they all have these additional
> interrupts?

Yep. Commit msg says only i.MX6Q...

Best regards,
Krzysztof


