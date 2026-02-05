Return-Path: <devicetree+bounces-262900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJjbNpNahGl92gMAu9opvQ
	(envelope-from <devicetree+bounces-262900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:53:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF00F0161
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 09:53:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1B688300D0F0
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 08:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A1336212F;
	Thu,  5 Feb 2026 08:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph8JSWSr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0391A361DBE;
	Thu,  5 Feb 2026 08:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281613; cv=none; b=SUNKN6sVswwS2fxwbjgIOxaWPUpBUPs7QYmyt0Lw40eCckLQEmiW9v6r5JnDelpGUVNobINv+MoSr8h50gRNUJnaPHcNHv+bkZJObaAK+yfu4zFpFzrs+3J9u8yT++WWYtb2nOd9QLwmhkNF9G25/jDkQLI0eEi/F6C5cXR8VbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281613; c=relaxed/simple;
	bh=hGfoS2SrOUSUcNbo4lzcjQ1KpCcVybs+F31qmzUiqIQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f/Juom7HkLY52wruLAqAEGbQlmtq3GyDmPapejqtLmAiv1lrL2by8e+WRw1mubqUEY1vPX3JGv0dO5brFp7ZjHHEH8ywfgBoWLoqaZrkRgCVINw9dLlOu+2JxcDqi6g8Kfjm3R2Whd/gWnmn1sYHB3SYSteaXB9CQf8015jre1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph8JSWSr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CF4EC4CEF7;
	Thu,  5 Feb 2026 08:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770281612;
	bh=hGfoS2SrOUSUcNbo4lzcjQ1KpCcVybs+F31qmzUiqIQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ph8JSWSrJDO/nNl/EDjq1HLoqZ7oqDk9ZkC8ZHgNJIoJYcGndSMn7dt+ixyyNs/NN
	 soxAKOh22cP02z6s2AiMyvZ1HbQWiajQRn61b20N8nZyffm45mcUB/DlaIr+me8aHW
	 N9+MwiMvy8w+Y6xebb5w93SOs6lMxfHP6pc9kbFdUJdOv81Rd2NcBfWIe6fmslQ/dK
	 ET4UPmOBMUrDRiwQ6kH0bSwxwmeLauLWbHrdYUMm+FCBnvB6MfqXaabQBmV8nKEerO
	 WblDJBfsDaJNAt1kqJP7j4vl8zUnVcnH7CF2+9aUpyJ3wVj/jN5QRZJ5o+xO4Rvx9I
	 NiWLf248P3bGQ==
Date: Thu, 5 Feb 2026 09:53:30 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: interrupt-controller: aspeed: Add
 ASPEED AST2700 INTC0/INTC1
Message-ID: <20260205-hysterical-crouching-beetle-e0d1b5@quoll>
References: <20260205-irqchip-v1-0-b0310e06c087@aspeedtech.com>
 <20260205-irqchip-v1-1-b0310e06c087@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260205-irqchip-v1-1-b0310e06c087@aspeedtech.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262900-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9BF00F0161
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 02:07:19PM +0800, Ryan Chen wrote:
> INTC0 is used to assert GIC if interrupt in INTC1 asserted.
> INTC1 is used to assert INTC0 if interrupt of modules asserted.

What happened with 20 revisions of previous discussions?

Did you just ignore entire feedback?

Best regards,
Krzysztof


