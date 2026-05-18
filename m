Return-Path: <devicetree+bounces-299113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDlVCO6fCmp14QQAu9opvQ
	(envelope-from <devicetree+bounces-299113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 07:13:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2D3565EBC
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 07:13:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B92B33010B9F
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 05:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95140386C25;
	Mon, 18 May 2026 05:12:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="aPKfRaxl"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210E43002DF;
	Mon, 18 May 2026 05:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779081171; cv=none; b=TfwCHqVY2IJENkfRl3tqqr6A/TAJUVsFDZyxCIrwt7NGjiBlJoX4AP0UMuZ9j+ZoCSOtTfEBLGfnY/OuoJsB4BkYlMSdWBBVcNGbvfxsemBVS3Fbgzp0EBItkswR0wKKqLbRuy5vsDWMVqwYk/MLXUblJ1bMENELn5u3GOK0aCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779081171; c=relaxed/simple;
	bh=orsPxhonnr/v/HpKuWbDz7ODhFRD0owe77PSgOmgzBo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=B22SkfsXyuvmP+VnL/Vb1a/NSLGU/BFEvP63x7+22XXH7oHXCUAGLLZqTmlk/Lw7eMiw8D8fFC5zv5U6cPfbay8ckdcd9pJHJml73O68tiKRaqPXLt4MJ9VYBWWWgPsOqvFdUzxzhnAC/+nS4zFuM4ERapbQNRFVsCe9Ji3Wvqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=aPKfRaxl; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1779081168;
	bh=i2PykgTZ59OqLYyaVj3A9+ycwaibzO5zZ0kF4EM5pJA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=aPKfRaxlpjRjX1lxwyOR0yHKYT3GuwmduyuUMuIz4evV85Lhyye6c/jHOGUCIdNvB
	 S5xtRrhGTLc5RP9pZSglxjsFBOPgX3ieP658Ou3ACBnx3XTLEhi7vRzYtNdUxh1jdd
	 kiCOuVgYeX8VSaa4gw3E7ayvZX/tSsblwiYJLdTckSrGK+HNVPXYVJO6usfs3MkjZV
	 ojMBo3aCxP9DfhGbNf4LAtgcZsy9ckbl6CdtoSY43nftGwYvVtirenIYoGO6GdO3s8
	 MokfjlSrD/lpiqfqLxhwqQe02ke9lSoyIK9FhXefC5zhcPSpWJhchdVLbG9MKNNbGA
	 oSII5YKFtnUgA==
Received: from [127.0.1.1] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 97F586025D;
	Mon, 18 May 2026 13:12:47 +0800 (AWST)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Colin Huang <u8813345@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 colin.huang2@amd.com
In-Reply-To: <20260511-add-jtag-trst-pin-v1-1-b0be2f7b2da5@gmail.com>
References: <20260511-add-jtag-trst-pin-v1-1-b0be2f7b2da5@gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: anacapa: add JTAG CPLD TRST pin to
 SGPIO map
Message-Id: <177908116750.1269230.16667761190075154399.b4-ty@b4>
Date: Mon, 18 May 2026 14:42:47 +0930
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Queue-Id: 8F2D3565EBC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299113-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,jms.id.au,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:email,codeconstruct.com.au:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Mon, 11 May 2026 17:47:56 +0800, Colin Huang wrote:
> Add JTAG_CPLD_TRST_R_N to the sgpiom0 pin name table on
> Facebook Anacapa BMC.
> 
> This exposes the CPLD JTAG TRST signal through SGPIO,
> allowing proper JTAG reset control during debug.
> 
> 
> [...]

Thanks, I've applied this to the BMC tree.

-- 
Andrew Jeffery <andrew@codeconstruct.com.au>


