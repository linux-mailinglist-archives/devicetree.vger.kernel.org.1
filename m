Return-Path: <devicetree+bounces-278112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGV1FAkFvWkO5gIAu9opvQ
	(envelope-from <devicetree+bounces-278112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:27:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A792D738A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 09:27:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E928E308C63A
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 08:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B4B373BE3;
	Fri, 20 Mar 2026 08:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzS5eoM0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DCA4372EF2;
	Fri, 20 Mar 2026 08:24:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773995099; cv=none; b=Z8VO1ZH4JFb9K3BoL5q18p5l+huPLh+PPk1NaPE6WZR0L+Sq3iD65r7lmEC8WOiuSl6vJl+AIualQeEdHnocKGCL3tjke/gLlt6B1XgzvP0L1idmQKwpV83iljQ181EwYePRxPoAbwqsbMsorswzCnN3kGLgzhOMFgwoB9/ftjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773995099; c=relaxed/simple;
	bh=5sQNvmWQfpu+8Hr47TI2X8prZ8bvsa2R1XHx8VD2x8U=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=CgVKyZjvbFIubV87D2n4rNHztaCvpXG1vBQCJZEt4+YrPaPMdQhMP4JBkwkh9ocxnbIRs5IKaXYeI6evnC89oQIBfN11TB3beLFAsOhOWTBdQSVrbczSxLL3qeVJ7KeAElkX5ZAlqULooFmEg+SOjrRipaWI+oxHUQ1EUu8jP94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzS5eoM0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FE54C2BC87;
	Fri, 20 Mar 2026 08:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773995099;
	bh=5sQNvmWQfpu+8Hr47TI2X8prZ8bvsa2R1XHx8VD2x8U=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=CzS5eoM0f2loHEf3GLYkghCyVQ2yYnMGqfDIRbO7GCqBNLBsQ20/Qo2IFO//yQjkP
	 L96R3cHLc0svMwur92gnB0/OMaBzF3mSeJdJp4zo5wqxfI9egzkjCXOs6lPnRexoGt
	 CGNUxpBADXLcD31k7tJNxqHxKv76QzAl1ebIPfaFSTVTR8e5ENh5uztgarug6VMKVa
	 IEKKMDfDDTO8UfULyEPLHWQeRnQHBVMBPq8NFPRGq+JeRhykAGDLox6sCMXO+BMHoP
	 sFgUAoEfG2zm6WrxHo8hYJFF4zEdDKxD3/6xhLEoUw06ZsXSpCkKd8Snq6ZXvqw/K1
	 BRzE7vr5n8D4A==
From: Thomas Gleixner <tglx@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew
 Jeffery <andrew@codeconstruct.com.au>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-riscv@lists.infradead.org, Ryan Chen <ryan_chen@aspeedtech.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: interrupt-controller: aspeed: Add
 AST2700-A2 support
In-Reply-To: <20260306-irqchip-v2-1-f8512c09be63@aspeedtech.com>
References: <20260306-irqchip-v2-0-f8512c09be63@aspeedtech.com>
 <20260306-irqchip-v2-1-f8512c09be63@aspeedtech.com>
Date: Fri, 20 Mar 2026 09:24:55 +0100
Message-ID: <87tsualxgo.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278112-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,meta];
	NEURAL_SPAM(0.00)[0.034];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 99A792D738A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 06 2026 at 16:07, Ryan Chen wrote:

> Introduce a new binding describing the AST2700 interrupt controller
> architecture implemented in the A2 production silicon.
>
> The AST2700 SoC has undergone multiple silicon revisions (A0, A1, A2)
> prior to mass production. The interrupt architecture was substantially
> reworked after the A0 revision for A1, and the A1 design is retained
> unchanged in the A2 production silicon.
>
> The existing AST2700 interrupt controller binding was written against
> the pre-production A0 design. That binding does not accurately describe
> the interrupt hierarchy and routing model present in A1/A2, where
> interrupts can be routed to multiple processor-local interrupt
> controllers (Primary Service Processor (PSP) GIC, Secondary Service
> Processor (SSP)/Tertiary Service Processor (TSP) NVICs, and BootMCU
> APLIC) depending on the execution context.
>
> Hardware connectivity between interrupt controllers is expressed using
> the aspeed,interrupt-ranges property.

Gentle reminder. Can the DT folks please have a look at this so we can
make progress here?

Thanks,

        tglx


