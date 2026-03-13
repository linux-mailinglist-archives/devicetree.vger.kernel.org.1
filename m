Return-Path: <devicetree+bounces-274953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDdvFMG/s2lQagAAu9opvQ
	(envelope-from <devicetree+bounces-274953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:41:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD8627EE52
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:41:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EBB630870C8
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE92F36C9CF;
	Fri, 13 Mar 2026 07:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0eql0lw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B07F36C0DC;
	Fri, 13 Mar 2026 07:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773387624; cv=none; b=Cbj4oR09/FrIQ3Yfzt5ZG479mBD/PBt4yHwCImCR34cxor+bIXZmLF1OXqDsPnFPOPLZcKvtQB/F/85Ocfeq9wMfvZcAP1eVBuI4QM/LdR4cJUYajSj6LJa9epzFJpwX9kDyD9o4qXv0jqIVyLq6GMB0lugayHDLJYYXiEmntFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773387624; c=relaxed/simple;
	bh=To0Aa/Q9Mri1earvz+KnhWMs71p1rLM1a4RhOLf2RBw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VsYLRc4967+81nNPLIJ16kg50Ht5Ayebegg3pTBevZh/FbPGzror02UPZ1/njubUkzGaeNtRWOVpaI9VeHn4OCCQv7qIYfVIGUgUKW2inZf1rs5jP6zMPvS7tPGtsF5iZM6BGUiZotG/PoQgnN2/OfSw+rhNuj0dlnyGS87kOg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0eql0lw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE7E5C19421;
	Fri, 13 Mar 2026 07:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773387624;
	bh=To0Aa/Q9Mri1earvz+KnhWMs71p1rLM1a4RhOLf2RBw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h0eql0lwQAKeD/tBsH/SGOpmf09FF63JARMNesREgpfx6NQU6r8Yxd3i/EiG7Iw6X
	 JoaqYi3tY2oRzEegOdG31lTvSf9djWI2fAdz0SNZA0Ke8eeh3mFSQjl1J53seSkJyZ
	 +zqdSqVT/BWWWp0h6SlbUPfabPc47Kr5UrkY8vv33qxvZQgzsTJB6mnUTQkhZNDt8/
	 QzUaEYhAXWsI63rt7iVaIokDCTZTrWhy4A6h0lNF43YKcGN9Ida+gF0vqrsE9zjVPG
	 m+pQPtB+KvOQc8EUQPWrD0DEu5AS0gKSw87EVt7DNmg/O3Y6ygD6DjqMnW0vPL6QpG
	 KY71ae5RDjvfQ==
Date: Fri, 13 Mar 2026 08:40:21 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	bhelgaas@google.com, frank.li@nxp.com, l.stach@pengutronix.de, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v6 1/5] dt-bindings: PCI: imx6q-pcie: Change maxItems of
 clocks and clock-names to 6
Message-ID: <20260313-tough-graceful-muskrat-f7e3a1@quoll>
References: <20260313051718.1931375-1-hongxing.zhu@nxp.com>
 <20260313051718.1931375-2-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260313051718.1931375-2-hongxing.zhu@nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274953-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,google.com,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,oss.qualcomm.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ABD8627EE52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 01:17:14PM +0800, Richard Zhu wrote:
> Previous commit 1352f58d7c8d ("dt-bindings: PCI: pci-imx6: Add external reference clock input")
> was incomplete.

Nothing improved.

NAK, read previous comments from v4.

Best regards,
Krzysztof


