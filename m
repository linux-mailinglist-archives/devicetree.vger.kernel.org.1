Return-Path: <devicetree+bounces-262902-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +M+CBVdfhGng2gMAu9opvQ
	(envelope-from <devicetree+bounces-262902-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:13:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD1AF06BA
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:13:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 09E5B30752A4
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 09:01:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9854F36E48C;
	Thu,  5 Feb 2026 08:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZGrsfJD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75B462BEC5F;
	Thu,  5 Feb 2026 08:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281902; cv=none; b=H48/fev+b/4AUnzdIxV9i0LShTdOjmuefqKuUQ0MTAHRDfCLn1KCcZZk/bV9TIeOqqgME4zaxARNezFtfwZn+JGiHbsxCEFz8RAykCQQ78I4nXiJdZdOMSe8SFMtsrr5+p7IJePynUXEXTgqsO5Jg/19wSeud4qXLwetCp+EY6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281902; c=relaxed/simple;
	bh=vEzXCJoRBGkhhZKBFWIH4fhYfwPKyl9r9lvIYdyhKiY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MfiCdDD/R3SSn3Q7Ie05WH+X5A6iqAKXkML6lx/CGGz8BmyXNBrUGsJs3lYNqNe8UJvMOOXdV5YO/64KfGXwByIeW1P/D3OqyAKEYhdFiFJKVgugJYLZyXrOViZSCpz/KxuaM7fyhzZW6S4+p321+l8QNZX21/OTzRXLDstzck8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZGrsfJD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7EBAC4CEF7;
	Thu,  5 Feb 2026 08:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770281902;
	bh=vEzXCJoRBGkhhZKBFWIH4fhYfwPKyl9r9lvIYdyhKiY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RZGrsfJDGPjlUvn2ynhz01H4syPE8Eq7ODg7Kmdm/Gbe0Ni/Xxpzf/JSUTvazBpTO
	 BvrFckaeowWBMv4PtddX9mUBUrcZwUSjQdAvNZ8+MrWx79QNHoUub6aTJFzA4JKm7H
	 eEiM622zW7+H/x7kXZU2HlwXFLAVdR4/h/GTZi9N8s0zR2IWV41ss5NFCprcZVcP5J
	 UGD7p6qMP9pQvepu/RVkQY99qjZvSEAGmXPH1HMzkxd2X/sG1CtPa42uSSxKOoWKap
	 56dEbqUHNCP3gZLwLq221QW9beRFj1Pe92hF+cXyhJuG5DOafFUeKxrgxmwWQBGMI+
	 Ln2vcvW9gv/yQ==
Date: Thu, 5 Feb 2026 09:58:20 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 0/4] Add AST2700 INTC0/INTC1 support
Message-ID: <20260205-intrepid-vengeful-deer-14e2eb@quoll>
References: <20260205-irqchip-v1-0-b0310e06c087@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260205-irqchip-v1-0-b0310e06c087@aspeedtech.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262902-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4CD1AF06BA
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 02:07:18PM +0800, Ryan Chen wrote:
> This series replaces the existing AST2700 interrupt controller binding
> and driver. The original implementation was focused on a narrow,
> PSP-centric view and could not fully describe the complexity of the
> AST2700 interrupt fabric:
> 
> * It was focused primarily on the perspective of the Primary Service
>   Processor (PSP).
> * It could not handle interrupt route configuration.
> * It could not handle interrupt register protection.
> 
> By contrast, the new bindings and drivers describe the interrupt
> controllers at the block-function level and provide a unified binding
> design that can be used from the perspective of any of the four
> integrated processors (the Primary, Secondary and Tertiary Service
> Processors, and the Boot MCU):

Where and how did you address last feedback given to you here:

https://lore.kernel.org/all/20250814-auspicious-thundering-jaybird-b76f4f@kuoka/

"This binding is not improving. You are not responding to REAL problems
described to you. What's more, you send it in a way making our life
difficult, look:"

So how did you make our life easier now?

Best regards,
Krzysztof


