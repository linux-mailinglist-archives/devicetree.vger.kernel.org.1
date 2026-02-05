Return-Path: <devicetree+bounces-262901-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMeMAIBchGmn2gMAu9opvQ
	(envelope-from <devicetree+bounces-262901-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:01:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 38206F035B
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 10:01:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F3B2300EBD9
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 08:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F2B539527E;
	Thu,  5 Feb 2026 08:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEqnGVOA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3CF38F92B;
	Thu,  5 Feb 2026 08:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281808; cv=none; b=f1EI9nP/lMOwKTEewpOcLYSOyxyy06GOG7ns5Gvq2c4h1d4sTIYu+T/+1qWrxyHGt+kpGwgaRdFetuaPp1SWdPRrtW4+HvthJ4eCq3/Wh++CpYk0pUAiafYRQ9R3jb/bAif6JHp3AjIECVs2pDPUUInJbhBozEpDG1LZeuiUSOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281808; c=relaxed/simple;
	bh=EpeKVSUECcB0qRTU/0YGWj2Tn1oofcM/dtc2qrBjOCE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YfkvG89GMLwSBQdfSPbGMgQTUi1Ta9VPz/ofOEmL0VLAINZBFuYWm2L8spddznf6I0Rt20gSEM6c5djEWQwWlNLkTgXXe6gwa3I8GYuZYP5Zq3XK6RPC1jk7XJrWaKhFl9EFTrgyPKNsLmgqsBAZXYM9E3QHTj1Al3BpuODxUBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEqnGVOA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E1D4C4CEF7;
	Thu,  5 Feb 2026 08:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770281807;
	bh=EpeKVSUECcB0qRTU/0YGWj2Tn1oofcM/dtc2qrBjOCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VEqnGVOAoESTGAH1kB0Oty8u2WWao6axm3BidFtcpHznfrpYXSrc/a7v55Q6z+DGh
	 iOcCxtSKu6pINMwf9h3nbdFgopXZWj2ZtBocy+n/FP3+gEbCio2NJuZPKA4H4L42Qj
	 wcLsE38wpK1r1L1QRNrkPvyVM0/8ZTpqcfmVeLnMSZ8hAs9iI8ILQe+gJ8ugHtX3ZV
	 k6UKX/HQ7GcLOlYspbbkhddXgkOtnY3dglQ1jZtlFDbbOF9/yk+8tDOvwkWIgLUwdh
	 WDQg1xdSnzDg0kIHnBJdRRlIngHV33u6pFR44VxvoSp7Kdy3aJjFf/3Z6QE6XposNS
	 S5GOd9t+tLwkw==
Date: Thu, 5 Feb 2026 09:56:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 4/4] dt-bindings: interrupt-controller: aspeed: Remove
 legacy AST2700 interrupt binding
Message-ID: <20260205-neat-honored-monkey-74d37a@quoll>
References: <20260205-irqchip-v1-0-b0310e06c087@aspeedtech.com>
 <20260205-irqchip-v1-4-b0310e06c087@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260205-irqchip-v1-4-b0310e06c087@aspeedtech.com>
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
	TAGGED_FROM(0.00)[bounces-262901-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 38206F035B
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 02:07:22PM +0800, Ryan Chen wrote:
> Remove the legacy AST2700 interrupt controller Devicetree binding.
> 
> The legacy binding was limited to a PSP-centric view of the interrupt
> architecture and cannot describe interrupt routing and protection for
> the full AST2700 system.
> 
> It is superseded by the new ASPEED AST2700 INTC0/INTC1 binding, which
> describes the interrupt controllers at the block-function level.

You just added all this ~year ago. I also do not understand how multiple
previous revisions of patchset [1] were just ignored. No versioning, no
references.

This is either unprofessional or just wasting our time.

[1] https://lore.kernel.org/all/20251030060155.2342604-1-ryan_chen@aspeedtech.com/

Best regards,
Krzysztof


