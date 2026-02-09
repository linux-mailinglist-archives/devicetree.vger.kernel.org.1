Return-Path: <devicetree+bounces-263772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oD1dCz0viWlj3wQAu9opvQ
	(envelope-from <devicetree+bounces-263772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 01:50:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E70B10AC28
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 01:50:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EF5F730015A1
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 00:50:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0B41FF1C4;
	Mon,  9 Feb 2026 00:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="Qsv95FT3"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AD33EBF0E;
	Mon,  9 Feb 2026 00:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770598198; cv=none; b=YcO1hl4HAqc4ehN6bUr/Ns6DYGtEasBBFDTturheq0dNTRHGzKjavtYHLXxT0HHKu43+qYSucIJPLW8z26CLRRNr4tt9TtTzTHP5W10nkr6F2MWHk4VulC6+CeIiHu1NR0WuQYoYoYh8q9vOsPfmx789XK2yF9ugLqBAYKgTlAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770598198; c=relaxed/simple;
	bh=k8wVYqBrUVctAMsuVZgnG+59zkz/VsBL4xK5zf5yk1c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=FiXI+DiTdeWQkCqRZnkNl0whPx99mxUcbv4oISHolkmIpaTDnOFvJcMOfbku7bYQ3+wm1TU1c4X/6mhYDgC3PmYcTgsOEwcqQA5vAlx+szGvvzYAS7p3dQtyr2oYzg7fA2bQrPZUcRxKl9Y8KpH1uexF3jR7ZqBFmvGTHNdPTqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=Qsv95FT3; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770598189;
	bh=r7MCCqP45D0dY/QaEr0D6Ms9HT2gRvnzr4MI+SBARCU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Qsv95FT3JdSqVtCZt3NjwNcCnqE7TpLFpUEwRs6P6zgVBZepyXw4WDPudVkrI+rlI
	 +DXpoZSJPRHqZ7iytabmfOudbuTL5Se9YCVItkelw2W0caa3RjAM5gagZlCmXBk84T
	 9N38H53KsEEJ3lCDRxmmEMx3LyLm3Zg9g3PpJgC5z95PqkrNDLcTMQDBRttEESbign
	 CD0XUf2CM0ofN1ZTC7ztpbtxQiK9bhdHkNYGBVj9f5Efe8a22do6Eh4DUiO+sIuvt9
	 xtk3UdqIdqPTpNQMosbHFMN0JUkEy4s9jJiSUmc0vulrOd0WImOP1GKfq/NJgsuTdT
	 tvYnDJS+HrL3Q==
Received: from [127.0.1.1] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id B77AB60360;
	Mon,  9 Feb 2026 08:49:46 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Anirudh Srinivasan <anirudhsriniv@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260114-asus-ipmi-expansion-card-v2-0-12b72d20a9b9@gmail.com>
References: <20260114-asus-ipmi-expansion-card-v2-0-12b72d20a9b9@gmail.com>
Subject: Re: [PATCH v2 0/2] Add device tree for Asus Kommando IPMI Card
Message-Id: <177059818618.793195.12078369893551899945.b4-ty@codeconstruct.com.au>
Date: Mon, 09 Feb 2026 11:19:46 +1030
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263772-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,jms.id.au,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,codeconstruct.com.au:email,codeconstruct.com.au:dkim,codeconstruct.com.au:mid]
X-Rspamd-Queue-Id: 4E70B10AC28
X-Rspamd-Action: no action

On Wed, 14 Jan 2026 23:31:06 -0600, Anirudh Srinivasan wrote:
> Adds support for Asus Kommando IPMI Card [1] [2], which is a PCIe card
> with an AST2600 on it that provides BMC functionality to any host
> without an onboard BMC as long as it has a PCIe slot. The model name
> Kommando is based off the model description in the vendor fw.
> 
> Currently supported functionality includes UART, booting from SPI,
> KVM functionality(usb gadget for host, reading VGA framebuffer from
> host) and LED/Power Control via GPIOs. NIC support is not included,
> requiring additional patches which will be sent later on [3]. The
> entire BMC functionality has been tested on an OpenBMC build
> available here [4] (which uses a modified u-boot device tree [5]).
> 
> [...]

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


