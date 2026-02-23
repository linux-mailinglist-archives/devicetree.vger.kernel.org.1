Return-Path: <devicetree+bounces-267211-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIOaG8Wvm2mi4gMAu9opvQ
	(envelope-from <devicetree+bounces-267211-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 02:39:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B00D9171597
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 02:39:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00E4630038D2
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 01:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6953818C03E;
	Mon, 23 Feb 2026 01:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Y6EXrtL1"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513E8F513;
	Mon, 23 Feb 2026 01:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771810754; cv=none; b=Wu6L/H8GBzMKces+6j/u4F2nAg1LZKHFUK4ogMZdnqWLlJnpcc0RERviAc5mqSIL06aa64BVLO2uTjNaETtPC3qMczgB8lZCeZqhoKH1w/yC+WpvJUKYWPnlQQHr7aYflPN23MBdOkGCQU2pTvB+RT3JHNGloZumNinxVyAyhcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771810754; c=relaxed/simple;
	bh=WY2LXRJCGxQONcT83inA7Jfo+W0nJD+r6lKuSltxDK8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=EcR8JAFTOlASaxwq7xyzLWRHxN1hhVs4PwwNgl8JjPwqDnqyMvJMdemWhUswPKi6aew5QBPn0UkBiVudh25WtLBEQBvGW0vvI6PUBJREaUKlxdGa6d2mm9/HJHHGQZX5HKyLaNHn6dQLllUfopYIJEIOEIqa3wDe94fLZSDsdYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Y6EXrtL1; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1771810744;
	bh=MIR4lVMnkdb804M5R0VdfzVoSc5X3oa8pX/88m18+4Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Y6EXrtL1+IpDBKjQ+CE4IfTVsQtB4H+67UIbgSuuUBAw/68tx9orgqZhqB0my/a2e
	 DcfYfLefmXr/bwwiAnrpkKeEjF8vwqRW8pjxh906dww/IGvC7hTxGaMyqfSYy6TqQH
	 +/gGcNSOJpZngELx/1DV3zHiXzV+ftpQFDjjzCWoQ5GyHO8oeP5U6/L3Xmgl+pBs1B
	 NvPSZDM683jbwEBUqsiJOWJBqaM2uo+UGA3UFXk1F2H3ktnHOtuRQ/1eA44KReyEo7
	 lsGV2et7gbICX0wqS0Jq5Fo1dNVK3LnfRb2Mi/HPdrojDzDPxaZQBEiTHpmCNafSqT
	 6tGr3RRVwS7Tw==
Received: from [127.0.1.1] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id C9C45600E1;
	Mon, 23 Feb 2026 09:39:01 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Dirk Chen <dirkchen@amd.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260219-b4-anacapa-dts-fix-v3-1-4f70fd2d1070@amd.com>
References: <20260219-b4-anacapa-dts-fix-v3-1-4f70fd2d1070@amd.com>
Subject: Re: [PATCH v3] ARM: dts: aspeed: anacapa: Add retimer EEPROMs
Message-Id: <177181074172.1150784.15634520346683503197.b4-ty@codeconstruct.com.au>
Date: Mon, 23 Feb 2026 12:09:01 +1030
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
	TAGGED_FROM(0.00)[bounces-267211-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B00D9171597
X-Rspamd-Action: no action

On Thu, 19 Feb 2026 23:44:47 +0800, Dirk Chen wrote:
> The Anacapa board features Atmel 24C2048 EEPROMs on i2c0 and i2c1, which
> are used to store retimer configurations. Add the corresponding device
> tree nodes to support these components.
> 
> 

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


