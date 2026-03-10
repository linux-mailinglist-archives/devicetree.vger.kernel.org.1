Return-Path: <devicetree+bounces-273317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPJVIobPr2kfcgIAu9opvQ
	(envelope-from <devicetree+bounces-273317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:00:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 80086246D18
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:00:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8DC103009801
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 08:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C81AE364EBA;
	Tue, 10 Mar 2026 07:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+0IQUgT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A470136495B;
	Tue, 10 Mar 2026 07:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773129598; cv=none; b=HdlMjrMDa2kB2Ojo6/2hHI8dHSeLqmlNNCXegW4WNWZ9bKKPFvHpA7ZSEYeeGv7TgEbQ5taZCj7MfaV+e5vBynQfdqxf3pC+ouAiYFPxLDh1f+9mEjU5tTOwMB1lT8fQjhpoVL8o9r2FlbmbcCKNg2z0zcLCokhjKowNqPcZwI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773129598; c=relaxed/simple;
	bh=jkpjgvC2FbGCGFeMOvnQrLTSu+pQoksP+d5G2FrdBPM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nMIi5bfWQvvmPL6GtYJUDsiGxW1LjPhiJbm1oRQb2xIMVE3uef5tXwkyv5nwuKVt3tyqNloCxGqzHD2Y3iPQ7BEybRZyTVqawUCEgLJYBXkIThQREekq+V/oDTqfUkAuqp8GsGIS57yQhIqrqFfCZEGRmbAXlSDDTu4y+Ulp0Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+0IQUgT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1A4AC19423;
	Tue, 10 Mar 2026 07:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773129598;
	bh=jkpjgvC2FbGCGFeMOvnQrLTSu+pQoksP+d5G2FrdBPM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X+0IQUgTsjChB/7j/QS1pOad+Co+VyFYYLCNyUSZ2dJLAh+vWOliodhxbekJzFXFP
	 CX9YlqvuxbHvlPdjro6RdIgCPMHKjUyzy37qwCTEghwEWKyHcRjNYuIritW3FtZ/y/
	 IpDTivXQeG4AGG+/o3AX9ipA/5yYMXk9UiI5KDybe6vI2PZuW81lIOokyOJk2avRg8
	 0IYF1VNselYgOqfLtRJUPqU35TpINaTLtNTDXALmTdviiz4aIK4uttD7hZFwlouXTV
	 aYDppvcm/JDxH8ZJTORUI329E0p+16Y5pWR3XqwHDzWOYXeu67r/SmSVLKJ4+jnMTy
	 yEbHrFbCD6r3w==
Date: Tue, 10 Mar 2026 08:59:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	bhelgaas@google.com, frank.li@nxp.com, l.stach@pengutronix.de, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: PCI: pci-imx6: Fix build warning
 after adding extref clock
Message-ID: <20260310-prudent-exuberant-monkey-a4953a@quoll>
References: <20260309084431.3015463-1-hongxing.zhu@nxp.com>
 <20260309084431.3015463-2-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260309084431.3015463-2-hongxing.zhu@nxp.com>
X-Rspamd-Queue-Id: 80086246D18
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273317-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,google.com,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:email,4c300000:email,4c380000:email]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 04:44:28PM +0800, Richard Zhu wrote:
> Fix dtbs_check build warnings by updating the maxItems property for
> clocks in fsl,imx6q-pcie-common.yaml and completing the clock
> descriptions in fsl,imx6q-pcie.yaml.
> 
> The warnings occur because the clock arrays exceed the previously
> defined maximum length:
> 
> imx943-evk.dtb: pcie@4c380000 (fsl,imx95-pcie): clock-names: ['pcie', 'pcie_bus', 'pcie_phy', 'pcie_aux', 'ref', 'extref'] is too long
> imx943-evk.dtb: pcie@4c300000 (fsl,imx95-pcie): clocks: [[5, 74], [5, 41], [5, 40], [5, 75], [46, 0], [47]] is too long
> 
> Fixes: 1352f58d7c8d ("dt-bindings: PCI: pci-imx6: Add external reference clock input")

This was three months ago. Can you finally start testing DTS the moment
you send bindings patches?

It is not a one time issue - I see multiple buggy patches posted by NXP
which are never validated with DTS and then months later turns out
bindings were wrong.

Many of them are posted and immediately trigger build errors reported by
LKP.

Are you going to finally test patches BEFORE you post them?

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


