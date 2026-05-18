Return-Path: <devicetree+bounces-299423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CH4/F4sUC2qA/wQAu9opvQ
	(envelope-from <devicetree+bounces-299423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 15:30:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B05756DA60
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 15:30:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5D10B300159E
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EDD643CED9;
	Mon, 18 May 2026 13:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="hDEFirza"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B08ED45104C;
	Mon, 18 May 2026 13:21:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779110494; cv=none; b=TgehICV5g/vaEJPrfljk2paBOvbvT5BZgeIbhu0CODoFyvJ9mJrqFckS/0RUYCT6v4yLgGFum/nF9929t0TNbCGXRXrXWUEFDYLED3obphf8/CfsOsko8GwvnZODXrMF5850btb5r8fktW6X2/lPKYDlGQ2WT2qD6GhsiCfSg9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779110494; c=relaxed/simple;
	bh=/D3FOijVCbwakJK7k0IEK20q0t+rXmh5ZU/LsGufHeo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=dbhPVjK52MhbeQoH/St2/yKho9oiiuMGSmP0YiEADlewBPG19KE35X6x+pUN6+UiUt4nI09GZy/H25zbtTL67VOUKP5kA6L0RKh17P6GQDQhVKFuClf0g+dzCnglKsRavNqzu3B5mNc/ECUw06nhI2+nRqYUI+6axR16MwYCn48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=hDEFirza; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1779110489;
	bh=JXZoMwG6Tq2zUsTH+zIYCTcolUhrlhhkb8dDKfwVMps=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=hDEFirza8m1RgJJ4fITtD4O7v1mJn+kDX0+ykhsSsA8bV4Q2G+obJXnrUaVCKq8AE
	 nIVrZnfWz2AZmAfI4Z96nKjDqyQmwbfoms/EgqD56fjJSyFdbZL4vUIEgO3HVqORhS
	 S5GwBwtIuYOliiIxO4z8nqzImblYdw51yKu8HjMtPSX3+JCoSSD4MQ9wofcqDVnnU7
	 yyApWLNJTlifGccheD6149zegNNnlEe2kIQyDU0u3h3Y3/9fchxnT6zCKgsJj9FYEY
	 9TtpgH2P4ETam1xkCp/96FtEDQEpLI0/WftJEZ1KaanxqnKc35u/Uo31/HFT8n8GKx
	 txrAj+nJwh9Sw==
Received: from [127.0.1.1] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id A52726025D;
	Mon, 18 May 2026 21:21:28 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Billy Tsai <billy_tsai@aspeedtech.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260326-g6-dtsi-v1-1-348e7a0661c2@aspeedtech.com>
References: <20260326-g6-dtsi-v1-1-348e7a0661c2@aspeedtech.com>
Subject: Re: [PATCH] ARM: dts: aspeed: g6: Add PWM/Tach controller node
Message-Id: <177911048854.1942419.17635653553206157832.b4-ty@b4>
Date: Mon, 18 May 2026 22:51:28 +0930
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Queue-Id: 5B05756DA60
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299423-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:email,codeconstruct.com.au:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Thu, 26 Mar 2026 18:29:22 +0800, Billy Tsai wrote:
> Introduce a device tree node for the AST2600 PWM/Tach controller.
> Describe register range, clock, reset, and cell configuration.
> Set status to "disabled" by default.
> 
> Prepares for enabling PWM and tachometer support on platforms
> utilizing this SoC.
> 
> [...]

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


