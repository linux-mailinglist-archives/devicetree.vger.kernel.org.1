Return-Path: <devicetree+bounces-317128-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id E8Q6KwSNQmpw9gkAu9opvQ
	(envelope-from <devicetree+bounces-317128-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:19:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C496DC911
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:19:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZcE1nbTN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317128-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317128-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 440783054E42
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6054416D1A;
	Mon, 29 Jun 2026 15:12:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFEB3DEAD3;
	Mon, 29 Jun 2026 15:12:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782745952; cv=none; b=e29aRUgKsVRYYtpUMLREO8dRltEJfQnA+psPxKj2YFsejNTj4XnCPKElpv45CMPaknRAIigEUm2XBRymG5dVedljBUITGPAm7q8s46fH8q1sQtq6VWnrbZme2MmiRX6fawV4Kd/Wabk7dOYidpEVv8bi8Eq12ubzl0b7QKxNwKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782745952; c=relaxed/simple;
	bh=Q4yRyEhw7bDXWzxs9m+mUF3vclIU80f3veW8JmIJkYM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=D9oxuace5lNEIOiuOOxmWTFNciTaDxAu+EjmS5vGAuR5gRRIi2zNweJ1pVHjJ8MSlUMcP1I8AVYu55BFCSgwJ61wtkfAayOoKF1RdeIDW/7iYbE4sNKyyxF0fhog8764lHIuRcuHcVK662VSwt9LOZdnYRmxbcS2icOqzkCJ1SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcE1nbTN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C4481F000E9;
	Mon, 29 Jun 2026 15:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782745951;
	bh=BHHurmrc65sg7plcKiIhnOsIO7ay6w+kqVqpivexUa8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=ZcE1nbTNFvjBiXzjgdmMBuacIzfEaXKaIEErFbYAuFENN84EXbSTN7THV/s4nOO5f
	 QCiux0pBqPSc2cSdpfLhxj1tq4e0HMwVqFdMMapzKQktKlf9QmHeVymIRcciM0SAJM
	 4LrTBVXzPiG3qQdpmtM97Ene6qv0ap2nSBoJZWNiBNMlH5KyNwV49DWtimNUkAcQf5
	 4QLqgP4i1Zcbo0cXUqJ0lFTbz6JQJv78lYgRE4n3k82TSXqr0np9IEjO4f7Ma1VBHj
	 ZtdQpBInNY4Q3enlBuwogdrS7DVyI6UXqzA8iHV25uqI0g07r5YBkFd0gkWbPw/tLn
	 jFJ9LCVsmUiWA==
From: Thomas Gleixner <tglx@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mail@birger-koblitz.de,
 bert@biot.com, john@phrozen.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: Re: [PATCH 4/7] irqchip/irq-realtek-rtl: Add mask for interrupt
 handling
In-Reply-To: <20260605211646.2101652-5-markus.stockhausen@gmx.de>
References: <20260605211646.2101652-1-markus.stockhausen@gmx.de>
 <20260605211646.2101652-5-markus.stockhausen@gmx.de>
Date: Mon, 29 Jun 2026 17:12:16 +0200
Message-ID: <871pdps7n3.ffs@fw13>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317128-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:markus.stockhausen@gmx.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mail@birger-koblitz.de,m:bert@biot.com,m:john@phrozen.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmx.de,kernel.org,birger-koblitz.de,biot.com,phrozen.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[tglx@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmx.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,fw13:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53C496DC911

On Fri, Jun 05 2026 at 23:16, Markus Stockhausen wrote:
>  struct realtek_ictl_output {
>  	struct irq_domain *domain;
> +	u32 mask;

Data structures want to be declared in tabular form. See documentation.

