Return-Path: <devicetree+bounces-263797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id BopECOBliWle8QQAu9opvQ
	(envelope-from <devicetree+bounces-263797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 05:43:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5802210B985
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 05:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 211DD3005785
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 04:43:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C7BB26B95B;
	Mon,  9 Feb 2026 04:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="LM8TiHiw"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E8123ABA9;
	Mon,  9 Feb 2026 04:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770612188; cv=none; b=EPvAi9L0Dvrgy3B8FhFe/D4mes+M5xQVlelEfocsElx2/tL5oZ58b1/yySbaljpt4ZeVgpf5Aa0iPkAoq39urn89YTtvtWBiraeLflUUChjnGQ+Gk+VXg/hE6fbQrEd76Q5IJWDYI8PCDtJDsHDkHaDJrmNphm8BXX45q4og2Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770612188; c=relaxed/simple;
	bh=++5qEu0daoBhBQcBtvQDBq4v5Ww42iLWUAb5NOqPK2s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nXf1R1RxMD4vNMr6oP8RiqTJiM+Ihr1QmXYikSa8Ts4X/e6tS5QAKDdsKh/WKyh2FZk4v5edni8oUarAtOJnZexaELn7rCF6JEQQOJV30LJtiT/orPoYEuT4c5UTBuYC3pGB+gKdeyf7vhKd8HEOSO6cm48sYBq7l65LaE1imw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=LM8TiHiw; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770612185;
	bh=2EDJMPOdQUIkj7B+MtnJTuwRWWsGcynJpHj9KDB1EX4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=LM8TiHiwLMi4JpxMmygPXU2C3mwSlUbSkF43jtqGvY2th0eP04oho0fdrfmkx4mcq
	 xcgN3b/mtuH2h2wFxPyNmvGSGK+WKhPzBcWkMKcuHXCdZ61nP3EUf79QvNuneU/+sf
	 VjnRi5Ei0q+nYEorLZxdK05JaAEDAFLn/UyGklTE7GGSpLhnBWs+SqPiXWGIsCaqww
	 ButJkpEb+LhtcV486396eGDPbQUQMtvhsVwlRROTMNP8cna4h1Ptka2z2Qm+b++PWN
	 XEGLqThGTkVwBnMkCWIYNoIWpltFL1tsB0GVyQYXYNt1H+BonrTj69NeH66xgOG0U9
	 WX+t4+RYVhRmA==
Received: from [127.0.1.1] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 72C846024E;
	Mon,  9 Feb 2026 12:43:04 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Marc Olberding <molberding@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260120-alt-128-v4-1-0e5c491a532c@nvidia.com>
References: <20260120-alt-128-v4-1-0e5c491a532c@nvidia.com>
Subject: Re: [PATCH v4] ARM: dts: aspeed: add an alt 128M flash layout
Message-Id: <177061218409.863052.13158700639798064370.b4-ty@codeconstruct.com.au>
Date: Mon, 09 Feb 2026 15:13:04 +1030
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263797-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,codeconstruct.com.au:email,codeconstruct.com.au:dkim,codeconstruct.com.au:mid]
X-Rspamd-Queue-Id: 5802210B985
X-Rspamd-Action: no action

On Tue, 20 Jan 2026 12:34:14 -0800, Marc Olberding wrote:
> Add a 128M layout for the BMC flash chip we didn't boot from. Including
> this allows the user to write to each partition on the alternate spi
> chip. This dtsi follows the existing standard of using the same layout
> as non alt version and prepending `alt` to each partition's name.
> 
> This patch also adds this alt spi flash layout to
> aspeed-bmc-nvidia-msx4-bmc.dts
> 
> [...]

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


