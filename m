Return-Path: <devicetree+bounces-299346-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CEVBRX+Cmop/AQAu9opvQ
	(envelope-from <devicetree+bounces-299346-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:55:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7C556C07C
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:54:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 02B893047059
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 11:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E32543F6C4C;
	Mon, 18 May 2026 11:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Xdhit/c8"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961E5366577;
	Mon, 18 May 2026 11:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779104900; cv=none; b=S2+AXRlbCHZlVaso51TmCJn8axaYOlOa1Fkwsus51cyfHMlY9CGZJdA0wfMcaErGfGs8wjO7J9pazkRvaUyHpPjFnit/ymuekc+vooVQvVdYTX9FhxoIsLJHfmuMLrKgN7XR4JXgDe05Tfk6f9497kNeA6cLYdM6TAbGbcaPOuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779104900; c=relaxed/simple;
	bh=UAk9DPUxql2R3yHNvD+iNvZvEeDA2Ir161zC5Z6yhNk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ZpiaxslKV3tCinA1o8KoDT9y+dZE4Z0mzu2Q82pssTmmZlL0yC9Pvjw1dUAzxbykHceJGVs4wOUjii8QOu6IP99y1JwXdIeJ6kDK6TNYdu2mP0UEuUoKgxfCABFFdP75NjqVSSioOhQjqMOdISx60LpcYpXH+/0nr/IKCTFcxKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Xdhit/c8; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1779104897;
	bh=RqVGUA3uSgAUjexcINA82gz5Nnz3mAqZB4EHGUzNSx0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Xdhit/c8ZXUu6hclYtQqjI+ZOMKReIoKuek0qUDo64h9QYqlKaC0SJ8TGIA47m5NU
	 EldYK6ZYamgBeIRR7tMSb8ScpClPRYE4TW/372xHB7W4UUfiSWozN17herbMvVE1EO
	 u3QmYaJw/jFZ2l3zaYKjLvO67E84X0w1NDvgTZODvZW5l55wukjQuhOGLXx9D/UI1N
	 4jUAGFm9mZSRPMVNsKZ9AB1scpwT7gupExcmESL5l2pJFs97/WhAIg6GNDDeVVqfcH
	 +/d56zuLxI0wHiqIzZidd4xSQcsE38KryfYrEa4VIsLS6vd677xlBy6wd5r4TLWJ2A
	 Kagxg9eQLaKGg==
Received: from [127.0.1.1] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 696F56024D;
	Mon, 18 May 2026 19:48:17 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Rex Fu <Rex.Fu@amd.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260417-anacapa-pca9555-irq-v1-1-9a6d28b1b656@amd.com>
References: <20260417-anacapa-pca9555-irq-v1-1-9a6d28b1b656@amd.com>
Subject: Re: [PATCH] ARM: dts: aspeed: anacapa: add interrupt properties
 for PDB PCA9555
Message-Id: <177910489732.1782799.1747360209738224632.b4-ty@b4>
Date: Mon, 18 May 2026 21:18:17 +0930
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Queue-Id: 7D7C556C07C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299346-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Fri, 17 Apr 2026 14:41:49 +0800, Rex Fu wrote:
> Add interrupt-parent and interrupts properties to the PDB PCA9555
> nodes in the anacapa DTS.

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


