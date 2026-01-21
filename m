Return-Path: <devicetree+bounces-257770-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCxeCq6DcGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257770-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:43:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B5552F5C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:43:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0C2D4746019
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DF71466B74;
	Wed, 21 Jan 2026 07:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIeP31Ij"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B423876AC;
	Wed, 21 Jan 2026 07:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768981347; cv=none; b=ctfHdSdKYPnoSkYyZlK1n/8q5anGw53ybawsG5Us0v1s5THcRFjr4LmOrgbMQHXubSWWuy3UU87S4r+TSBXKoj+/dbbNn0qs0EjD/piLYYCv3a6ceTlBC4hAlLZGnLxIUPEh5LScGCSOwWy6wAX/qeGxZr54+DXls6svWTC7Fl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768981347; c=relaxed/simple;
	bh=bte/XQ4DIY+20st0PFZ4A741YBlWScrZ0zOdXWQH50k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XZVZD2gtiXiVpf1kqIDq49epamDR4PkE2C0W+p6qxqNy/15cqVARVLZ1jmWUmdefe5x5GDDw1fB2s6irUYtFL3stXW47+UrSC8JL0Gwv+PBT9Zn9jiqvz2mPwPnoaPFkcd5QuEjqLEYmyA7I/9LabzKa3XK3BfTWPLRClmC/nUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIeP31Ij; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F050C116D0;
	Wed, 21 Jan 2026 07:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768981346;
	bh=bte/XQ4DIY+20st0PFZ4A741YBlWScrZ0zOdXWQH50k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rIeP31Ij9uGOS5j+Mc24fKtxEPHM9BKYkUtJA3mDe9250G0Mggh8qOGv9UNGLhbXR
	 DX2XtYCw6ieRnjBon31V4xrq8AbjCcU0BUMcvpcltj2GcNEt/ThHJzwLfqb50iA/bE
	 ARXyylEX3on9ijQFThfDwjaXPBFD8pW2rcKTOPqnkK+kGMEm5p91ZrHf2slT3YPwgN
	 Gy+HFFBJaIxQtIW97cD6S5o6AdkyBmz+txMIgaWElD2p6vLRBHIej5bUA5uMiNDE2h
	 EQoeHS2gHI2ULewogq9xdLMfjQyowOi3oR1u5j6h3y4CA3I468HJbkFMgs6SAllEPT
	 LCTHAofRoIkQw==
Date: Wed, 21 Jan 2026 13:12:16 +0530
From: "mani@kernel.org" <mani@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Hongxing Zhu <hongxing.zhu@nxp.com>, Frank Li <frank.li@nxp.com>, 
	"l.stach@pengutronix.de" <l.stach@pengutronix.de>, "lpieralisi@kernel.org" <lpieralisi@kernel.org>, 
	"kwilczynski@kernel.org" <kwilczynski@kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>, 
	"festevam@gmail.com" <festevam@gmail.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 08/11] PCI: dwc: Invoke post_init in
 dw_pcie_resume_noirq()
Message-ID: <dbnnvvpki6oaqaribiuycpshk7qmisl42x3iti24aqzzrw2rfr@afoer4ku4do4>
References: <20260109152750.GA544801@bhelgaas>
 <20260120220441.GA1170239@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260120220441.GA1170239@bhelgaas>
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	FROM_DN_EQ_ADDR(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[dfw.mirrors.kernel.org:server fail];
	TAGGED_FROM(0.00)[bounces-257770-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[nxp.com,pengutronix.de,kernel.org,google.com,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mani@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 81B5552F5C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 04:04:41PM -0600, Bjorn Helgaas wrote:
> On Fri, Jan 09, 2026 at 09:27:50AM -0600, Bjorn Helgaas wrote:
> > ...
> 
> > The current commit log for this patch is this:
> > 
> >   Some SoCs like i.MX95 require enabling REFCLK after resuming from suspend
> >   in their post_init callback. So invoke the callback at the end of
> >   dw_pcie_resume_noirq() if available.
> > 
> > When .post_init() is called, the link is already up and PCIe devices
> > have already been enumerated.  I think REFCLK is required for the link
> > to come up, so it doesn't sound right to me that .post_init() would be
> > *enabling* REFCLK.
> 
> This never got resolved.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/commit/?h=controller/dwc-imx6&id=199c18221622
> says imx_pcie_host_post_init() enables REFCLK by applying the
> IMX_PCIE_FLAG_8GT_ECN_ERR051586 workaround.
> 
> I don't think that commit log is correct.  Can you please supply some
> correct text for that commit?
> 

Sorry, I messed it up. This callback is not supposed to enable REFCLK, but just
clear CLKREQ# override to allow the endpoint to drive it low when required.

I've just updated the commit text in the controller/dwc-imx6 branch.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

