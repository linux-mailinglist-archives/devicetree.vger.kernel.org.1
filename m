Return-Path: <devicetree+bounces-299395-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IG9EF8HC2r4/QQAu9opvQ
	(envelope-from <devicetree+bounces-299395-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:34:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D648A56CC0D
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:34:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9DA1E306C08D
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FB7940584D;
	Mon, 18 May 2026 12:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="JgiEpNGs"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE40409E1A;
	Mon, 18 May 2026 12:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779107283; cv=none; b=BWZgoF7OJK56hTRtyhsdx3aE0Cy/gCGl+vD2dUhFKrPaVPEWOQAA42XwVWzyp0rAH6hcxxcqydfixT5k5gXU5cVeb9cOAGg+nMIV3UtruCcxfyeT/UvoIc4lc7tUN+9r9xQ7Wi3kKdWRp1eAHUFGRIBwfAt/xdt9WZ1UCBHJZAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779107283; c=relaxed/simple;
	bh=YsFmvc4ZHblbCYQuISYKcXJQ07qCsDZ6i5l+JLxB9eA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JrGry97105c1SIAs5POB5LP+FqJDVc/NERJWMjnt6DPiz/XmotOv/weOWbrWPV5bOFwMY3/HtHAYjbvH760ntBQYA1q3o0RRD0shDYGMI+8ZqzoBVHUlvB4x5diMkheK0iKLiyYeOPtHE9CQo9H2saBu7Dv7jVDqBdE3PByeHxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=JgiEpNGs; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1779107279;
	bh=wj0yR9PYapzRO9WETQEouL8N/6Cx3siFuTTA4xukOso=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=JgiEpNGsV/MptSZiLUBCsoKNZCnbg/Pong+ZdioH3V1VMSsXzpLBszyHPglpYeEcu
	 AA4yQrnj8775FFAT69kdOk23mSjjgbjGlDpcGnQeRBk1PS/sNMIoLX3emWPtgQuaqn
	 qfvhc4ndnsfwkJf72cqvekBDXC67fFp4PwHbWmpKi8EejioKsEwUZl2JjroUSqL19X
	 lflx7wLZeHr1i04ctMSPuOy0vrNcSC3iw9tT8M2IUO8+iTlY3dX7RhzKMp7HFsutQ1
	 kYi8C9ccG7DhQC/HcuCfVynQchUH13RHHhCtUMPBuQbQdvezOMrPCM1GOy+WXeoor2
	 BKnxh2aQe9B0Q==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 4F6096024D;
	Mon, 18 May 2026 20:27:59 +0800 (AWST)
Message-ID: <663d06c8c42892586075ddb2ba7111b06c58752f.camel@codeconstruct.com.au>
Subject: Re: [PATCH v13 0/2] Add Meta (Facebook) Ventura BMC (AST2600)
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: "P.K. Lee" <pkleequanta@gmail.com>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, joel@jms.id.au, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc: Jason-Hsu@quantatw.com, p.k.lee@quantatw.com
Date: Mon, 18 May 2026 21:57:59 +0930
In-Reply-To: <20260407081700.2658011-1-pkleequanta@gmail.com>
References: <20260407081700.2658011-1-pkleequanta@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: D648A56CC0D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,jms.id.au,vger.kernel.org,lists.infradead.org,lists.ozlabs.org];
	TAGGED_FROM(0.00)[bounces-299395-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi P.K.,

On Tue, 2026-04-07 at 16:16 +0800, P.K. Lee wrote:
> Add Linux device tree entry related to Meta (Facebook) Ventura specific
> devices connected to the BMC (AST2600) SoC. The purpose of Ventura is to
> detect liquid leakage from all compute trays, switch trays and rack
> sensors within the rack, log the events, and take necessary actions
> accordingly.
>=20

...

> ---
>=20
> P.K. Lee (2):
> =C2=A0 dt-bindings: arm: aspeed: add Meta Ventura board
> =C2=A0 arm: dts: aspeed: ventura: add Meta Ventura BMC

A few things on the commit subjects. Can you please:

- Capitalise the first word of the short description (the word after
the final colon)
- For the DTS patch, capitalise 'ARM' for consistency
- Avoid redundancies

So:

   dt-bindings: arm: aspeed: Add Meta Ventura board
   ARM: dts: aspeed: Add Meta Ventura BMC

Cheers,

Andrew

