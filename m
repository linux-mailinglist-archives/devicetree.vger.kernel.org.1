Return-Path: <devicetree+bounces-257630-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MExRBccGcGmUUgAAu9opvQ
	(envelope-from <devicetree+bounces-257630-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:50:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D85DB4D44B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 23:50:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6D4E77AF59E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299653D3017;
	Tue, 20 Jan 2026 22:04:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laUvCro2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70D629E0E8;
	Tue, 20 Jan 2026 22:04:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768946683; cv=none; b=nn2Mh0/wzwQ2953iksCakPHvPb9xh81yoIuI7iDyPgdd06Ah4YpOKDWGceTnLYOSr0XI3E5P6vGD6nMQIY2ks5ZsNbcMuqirm3U7rNjLCUyaCPVwnekPisB1CTcdzsOITkhnRvTgGHiLUCWzpJKBz0f92LNY1wQv/NvMFI/xqXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768946683; c=relaxed/simple;
	bh=Ksd7axcgTS0Lavz7Iw2jFrS2gsUr2aSKtbp2LAryPmk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=C+AJRkTnLgYLbLJFMdBO0/7LB4nSsLsDhNSVVCzC3KffhNJnEOcDwawrRkzBRkclntXEV6TWJ80D0u70vnWSKOYKp2I8k/zw43S1PLnmMHX6W04x1XMC3j2GjGmNFCD9/YiOgeHLMy/ZIUf1jfpzl5X/fyCEbntiHmU1tnGpD/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laUvCro2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FF7FC16AAE;
	Tue, 20 Jan 2026 22:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768946682;
	bh=Ksd7axcgTS0Lavz7Iw2jFrS2gsUr2aSKtbp2LAryPmk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=laUvCro2hjtkpMTyGGJ9dHJXz8JR1c4XofHhT5wJf+CPN8Qo9/ULqHboEeChcQIrc
	 ZdxPuldd8oR/hlIMOVXWM0l15XGGzhvBYSlZ0tz4POx2KCuVpjZcTFXbsBvVqhWbUY
	 9SCowjOihAhnpzvVcDLNwDr5cOaisQeeQdOP0t5cOgWWwPHKo2IpM5FA9nBcf9JG4W
	 nN4u5A8aYkx5OleM2+2Rhcpt0mxqd2hfCW2dDzY3375uO5Gzf/7RjxcxvpZiiCxvYZ
	 hre4i0DyrOzTLJ8XFevDbrz7Ge0RLz5K9N8fXYTXbPShr0CFHVReq4My4QB8bpi7X2
	 ESpPrzrZXBhKA==
Date: Tue, 20 Jan 2026 16:04:41 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Hongxing Zhu <hongxing.zhu@nxp.com>
Cc: Frank Li <frank.li@nxp.com>,
	"l.stach@pengutronix.de" <l.stach@pengutronix.de>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kwilczynski@kernel.org" <kwilczynski@kernel.org>,
	"mani@kernel.org" <mani@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"festevam@gmail.com" <festevam@gmail.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 08/11] PCI: dwc: Invoke post_init in
 dw_pcie_resume_noirq()
Message-ID: <20260120220441.GA1170239@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260109152750.GA544801@bhelgaas>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257630-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,kernel.org,google.com,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[helgaas@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: D85DB4D44B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Jan 09, 2026 at 09:27:50AM -0600, Bjorn Helgaas wrote:
> ...

> The current commit log for this patch is this:
> 
>   Some SoCs like i.MX95 require enabling REFCLK after resuming from suspend
>   in their post_init callback. So invoke the callback at the end of
>   dw_pcie_resume_noirq() if available.
> 
> When .post_init() is called, the link is already up and PCIe devices
> have already been enumerated.  I think REFCLK is required for the link
> to come up, so it doesn't sound right to me that .post_init() would be
> *enabling* REFCLK.

This never got resolved.

https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/commit/?h=controller/dwc-imx6&id=199c18221622
says imx_pcie_host_post_init() enables REFCLK by applying the
IMX_PCIE_FLAG_8GT_ECN_ERR051586 workaround.

I don't think that commit log is correct.  Can you please supply some
correct text for that commit?

Bjorn

