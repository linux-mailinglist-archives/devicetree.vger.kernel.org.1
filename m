Return-Path: <devicetree+bounces-316907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2jOQNptFQmqa3QkAu9opvQ
	(envelope-from <devicetree+bounces-316907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:14:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9806D8C38
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 12:14:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GFOExlZG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316907-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316907-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71B9F30453A3
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 10:10:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE65F3FFAA4;
	Mon, 29 Jun 2026 10:09:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6903FF1B1;
	Mon, 29 Jun 2026 10:09:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782727789; cv=none; b=cxh7/n5++pc6Sp1wxlD+e/EfOo701WcVP2GStfTV2rcU3BTRGuhPwdTQgBkH7s3Fq2gQLPxMc54i7GEMbFV6dMVvZO7AUIvcLMOQchWd3zJiD6cv1toDQID7j1BoLd9FENu9PU1P0uZzhS7JYir+RA1KC9Dk4+BU0lhGhDAhW1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782727789; c=relaxed/simple;
	bh=wgJgTmTrZ0Tr8X3PL7kf22Aho4u7KXUZnuA8pbAn2dw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=Mb+xy874vgLHE/HmrUAzbsAZb3CI9asoRH01tdcMbntwNjxdhlxgVcgxcK3w733//vAqf02rT0+jBlvuEYwuWdbU1slRYYjuXJaK3LQCYfVXyhRLvpQjo+FY3SL5isXtlVt6TOzulO4IL0Up3VGitrQHGLR3qHWxEUvo5eHFeYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFOExlZG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 131491F00A3A;
	Mon, 29 Jun 2026 10:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782727786;
	bh=ItAKP20RI9esoGeDHxr1WJWirGiHqPYpMiHn1uOiiOg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=GFOExlZGfw+UGyuouh6jCtu5d0nOCvSFpS4h8RSDP0p9zK9pKYvbVB2O8q5kxRIAJ
	 fKofkt07rM36nwcdthvDLbGyHCrGFr7dxOw8jAFgf49eaYaO7/5CLIjVtrc0oCUtdk
	 I88SDoAOyye5S0+9W27ng1FWVhS3hGaKU1wJvhjLda+xXBBHH98V26A81YaUVYs7y3
	 JSHL8V1ptbkUDEhInm4w4Nzpy94lno5ngYd8Dsgmgrw4Een33BoOG0XTzhZFTQHNP0
	 RZofR3PQANUEG3wV14u5NamqUiS/7TpHm9SB6gqXUacA6JGZv9lVzYYDYOykdF4fWG
	 UJt1PXyujqyVg==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Lukas Timmermann <linux@timmermann.space>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexandre Marquet <tb@a-marquet.fr>
In-Reply-To: <20260614-manta-bluetooth-v2-1-52de06cabf9d@timmermann.space>
References: <20260614-manta-bluetooth-v2-1-52de06cabf9d@timmermann.space>
Subject: Re: [PATCH v2] ARM: dts: exynos: Add bluetooth support to manta
Message-Id: <178272778358.113362.3049339184584034398.b4-ty@b4>
Date: Mon, 29 Jun 2026 12:09:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316907-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:alim.akhtar@samsung.com,m:linux@timmermann.space,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-samsung-soc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:tb@a-marquet.fr,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A9806D8C38


On Sun, 14 Jun 2026 22:16:35 +0200, Lukas Timmermann wrote:
> Enable the bcm4330-bt device for manta boards on serial0.
> Also adds the necessary pin definitions and interrupt handling for
> wakeup.

Applied, thanks!

[1/1] ARM: dts: exynos: Add bluetooth support to manta
      https://git.kernel.org/krzk/linux/c/718b15471c2b13a4830e80efbb489c2a849060d1

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


