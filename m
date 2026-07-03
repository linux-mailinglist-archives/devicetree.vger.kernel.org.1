Return-Path: <devicetree+bounces-320196-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JKO/Mp/IR2oAfQAAu9opvQ
	(envelope-from <devicetree+bounces-320196-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 16:35:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBBC703764
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 16:35:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=CV3eauhP;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320196-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320196-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6910E30E7096
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 14:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70DCA3D9DBF;
	Fri,  3 Jul 2026 14:20:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664B134D382;
	Fri,  3 Jul 2026 14:20:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783088439; cv=none; b=uxwqgzZ1i3fbXxH6ugdEqRowEtPkSPZUrperi+hrdzjfnSfCm17HozqSTC1vI0+IJoyOMUyPfQAsar1OZkc4zC5F7jPIEMmHRSBuw59SahovDpsghrRApPIrK7NXDWyoGyb7avQbDOiWw26X0ZtTEYozv4fD0TQ+GKHmu+oAMpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783088439; c=relaxed/simple;
	bh=0Lh2AAUoB1JC5DGuav624QON15nyQOs3xfpPwsgzzqs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e92zgGLuuBD2IgcVeXNIsLU/ESZs5/FPb+gJE/uHBRyt6ywWXZvlIS9LTBEuPUcnpiZTkkeJXwLjqqKc9mRsSD4zrWV31y72oKYPLIN/NDyKdHCU6wKo+9k2zp2YxmmsFw+2Zc8vM+eGv/XuptLPBtQ7Q74R6YszI/tkzUdeq0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CV3eauhP; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 026E31F000E9;
	Fri,  3 Jul 2026 14:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783088438;
	bh=0Lh2AAUoB1JC5DGuav624QON15nyQOs3xfpPwsgzzqs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=CV3eauhPjuGIcDWAuH7jmQQ0azXqPxyCAQx+VyWA76LBoY6RV6Ml8HdSg0GBxbMRe
	 MMzRFWVsjx3hHjyz2RYpJ/tba2gIgRzZioGO4aW1pNYWs8A2kVnZq+aikpl2QaiGNI
	 ENNkHklIR9iq7+exGB3mg2GttfiP0KyXXvEv4T34zFPrYLCXbkGza0Z6jQLCtCo+gT
	 0QhZH+2EGLx1sdF3J8l+/s/vWJFgi/t1MOe7UG439DRWCb3Bh0jmII46SIkiNA1chI
	 YGsizy5zkRaRy1hIhwIt7woYrNdfo3kFDtlHLOpmR2IpHMuvqBBwJR94QWWVNTr0uS
	 iOjlAAjfDkpgQ==
Message-ID: <d12320a3-65fb-4e0d-9f79-69368a708ded@kernel.org>
Date: Fri, 3 Jul 2026 16:20:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: apple: Add pmgr-misc nodes to t60xx
To: Sasha Finkelstein <k@chaosmail.tech>
Cc: asahi@lists.linux.dev, Rob Herring <robh@kernel.org>,
 Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>,
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260703-pmgr-misc-v2-0-4b26ba10c5a4@chaosmail.tech>
 <20260703-pmgr-misc-v2-3-4b26ba10c5a4@chaosmail.tech>
Content-Language: en-US
From: Sven Peter <sven@kernel.org>
In-Reply-To: <20260703-pmgr-misc-v2-3-4b26ba10c5a4@chaosmail.tech>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320196-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:k@chaosmail.tech,m:asahi@lists.linux.dev,m:robh@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:linux-arm-kernel@lists.infradead.org,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sven@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sven@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chaosmail.tech:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4FBBC703764

Hi,


On 7/3/26 14:44, Sasha Finkelstein wrote:
> Adds the PMGR misc control nodes for M1/2 Pro/Max/Ultra series devices.
>
> Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
> ---

Reviewed-by: Sven Peter <sven@kernel.org>

Thanks,


Sven

