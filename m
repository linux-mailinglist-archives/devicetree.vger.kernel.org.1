Return-Path: <devicetree+bounces-323053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id w2aJCiqCTmqBOAIAu9opvQ
	(envelope-from <devicetree+bounces-323053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:00:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A201728F85
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:00:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JLuG1Ovs;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323053-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323053-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A7A2B302A700
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 16:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DEDE44E02C;
	Wed,  8 Jul 2026 16:52:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D9B439351;
	Wed,  8 Jul 2026 16:52:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783529537; cv=none; b=fqdy9y5BIIf753qWxx2LzQOCFvp+tNhm5RgOqEBQQ5hsqLswoeIPPx9P6Z9D7SocDoFGjMdWcBUTq7+oXyHITDdZ19wyaddYxUojbZaWXaQblkmCqS0s05u/DzzMRBfeiWbr5xHgwmTLf4vt1bSP1Ni8n+tSpPcCJtkCvw2BC9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783529537; c=relaxed/simple;
	bh=R9fcaMdguJ7xgWlJ3kA2Zvw7Do+nE3aBhc2VfvicLqA=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=LpSvcTjYqGAOEqCqRpvFzJTwKaTD1KSCzOVQnKmpDyTSsuxxm/j06J5WQtcf7EG/giBmIsXHelpG62aLc8QH5hTpDGFhNAdjXs+jro01eHd/94XMpM/PoEfUEv1Hy1evDZ4bkytiOrLl0+Os5NZ8bCpU9n91J2yh94AURWdOF3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLuG1Ovs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A67231F000E9;
	Wed,  8 Jul 2026 16:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783529526;
	bh=plHS15QW33IPNnenRu2SRoBFtCA/UKPiq/4pB5mHiV8=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=JLuG1Ovs1tncsn3lEbkGAPhbclG+Mov9RB6nLDPXfC6RdEbijOLLntilzcn0T7WUl
	 v83nD+a4SuH3dDpdN2fYYP67Z3W0/KCCwZK32/yOqIzVRGEhntqabR0OdlmW3Cz9i3
	 Nx0aY6PDRumnYK2E6rM7vcqb5mWyPjag17TDlRLT+WpnnzNzRcbbA3CGwLlbWxwMgX
	 +9064x1jBy3B9N0IMT1UHyOj8rcrbz9T103cFS8Wg9xpYDdIn3wBPWt3VQt1gK4uTB
	 DCmV5CqDKXSx7y1SqYScCuKgc9DhcwPJuFbVlizYoUdQ8ZAXB3CS9t7d4o8ggpuIEf
	 JxghZB0++0N6w==
Date: Wed, 8 Jul 2026 10:52:02 -0600 (MDT)
From: Paul Walmsley <pjw@kernel.org>
To: Jia Wang <wangjia@ultrarisc.com>
cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
    Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
    Lorenzo Pieralisi <lpieralisi@kernel.org>, 
    =?ISO-8859-2?Q?Krzysztof_Wilczy=F1ski?= <kwilczynski@kernel.org>, 
    Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
    Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
    Xincheng Zhang <zhangxincheng@ultrarisc.com>, 
    Krzysztof Kozlowski <krzk+dt@kernel.org>, 
    Conor Dooley <conor+dt@kernel.org>, linux-riscv@lists.infradead.org, 
    linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
    devicetree@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 1/3] riscv: add UltraRISC SoC family Kconfig support
In-Reply-To: <20260427-ultrarisc-pcie-v4-1-98935f6cdfb5@ultrarisc.com>
Message-ID: <3cf5f6f0-25f2-c0ca-d0ac-aa8672ea4586@kernel.org>
References: <20260427-ultrarisc-pcie-v4-0-98935f6cdfb5@ultrarisc.com> <20260427-ultrarisc-pcie-v4-1-98935f6cdfb5@ultrarisc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323053-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[pjw@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:wangjia@ultrarisc.com,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:jingoohan1@gmail.com,m:zhangxincheng@ultrarisc.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-riscv@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-pci@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,google.com,gmail.com,ultrarisc.com,lists.infradead.org,vger.kernel.org,microchip.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pjw@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A201728F85

On Mon, 27 Apr 2026, Jia Wang wrote:

> The first SoC in the UltraRISC series is UR-DP1000, containing octa
> UltraRISC CP100 cores.
> 
> Signed-off-by: Jia Wang <wangjia@ultrarisc.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

I pulled this out and will queue it for v7.2-rc.  As Krzysztof mentioned, 
it's best if you group patches together into separate series that will be 
merged by specific maintainers.


thanks

- Paul

