Return-Path: <devicetree+bounces-308750-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5WJKB+K9J2qs1QIAu9opvQ
	(envelope-from <devicetree+bounces-308750-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:16:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E1465D1C1
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 09:16:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Rjxcx0sB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308750-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308750-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D19B7301CF87
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 07:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7DC83DA7EC;
	Tue,  9 Jun 2026 07:13:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE52E3D88FA;
	Tue,  9 Jun 2026 07:13:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780989222; cv=none; b=Xd+HhE6R6zhXZRY5f6kgLKR4Hf3B/jiIHO3T7tfVgff7tbYnN5PQ4JS7W8n0E7/DRFDNJzdXvqCg6i76rWhqRzaZr5HJTecIul7Y3F3gHROJ48iSsrAY80wCQmLcB+FN1qL20NrpbS79+2QbrwEckB8+ajpfeJ8niHBt9P1Vk0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780989222; c=relaxed/simple;
	bh=cotxYSfe04gbaqevssF5kYsQsBjRl6Porlqf1cmDAlo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RaqV+I0/4mpzHI8dYQDPFJPAHgA2e0BrAqbF1G5d24Uq4XsAoCnuQy7trC2JuFXJquVFGjFWV7+AB9L1TBTdWDF3noQvqOPz1KFZ6R25WOWgp1b2Rj/9AR79WyFqwa0WEPNE1Tose/xDmtLjg4NupmsHeNDNF5bZUPA/5yp8iSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rjxcx0sB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89D341F00893;
	Tue,  9 Jun 2026 07:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780989221;
	bh=xpvqltnPyHaKeLXzA9Xq8lTFZuFUY8y5YG012UOsqCg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Rjxcx0sBgDiEMRzB/7X8XkxLuCVjsO7TGrmnDfdnehXL9KI9qfxXwIJvseL1RwT0x
	 gJzwPNXoDsWIwK8j72/iv0G+SPQcKO2l0t4LNadxY7JYN56Z1PJwFkxzedWXHNhx4g
	 t6nDooNTkEIxmd/kBELBlOMadB9VpZQiIrlrYQqa7As/HHTX1df7zVa8ydlJsOKsr8
	 3/Xd3+m2QzWoRasoQ3mAtG5KFss1UjF0u8UDsAKGz+B9Inq9384bYHa9y7T5NlbLM5
	 IQ3M/80ubT7AlkRBtDeMvI5c2sHKXo1oKpxCoyBHK8BMRq3wBlXf0f6UgXmcsJRyRa
	 kNHdlmDtKOVWQ==
Date: Tue, 9 Jun 2026 09:13:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tomer Maimon <tmaimon77@gmail.com>
Cc: andrew@codeconstruct.com.au, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, openbmc@lists.ozlabs.org, 
	linux-spi@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	avifishman70@gmail.com, tali.perry1@gmail.com, venture@google.com, yuenn@google.com, 
	benjaminfair@google.com
Subject: Re: [PATCH v2 1/2] arm: dts: nuvoton: npcm7xx: Drop bogus FIU memory
 reg-names
Message-ID: <20260609-tidy-defiant-kestrel-cd813e@quoll>
References: <20260608175418.1936892-1-tmaimon77@gmail.com>
 <20260608175418.1936892-2-tmaimon77@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260608175418.1936892-2-tmaimon77@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tmaimon77@gmail.com,m:andrew@codeconstruct.com.au,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:openbmc@lists.ozlabs.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:avifishman70@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:krzk@kernel.org,m:conor@kernel.org,m:taliperry1@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-308750-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[codeconstruct.com.au,kernel.org,lists.ozlabs.org,vger.kernel.org,gmail.com,google.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50E1465D1C1

On Mon, Jun 08, 2026 at 08:54:17PM +0300, Tomer Maimon wrote:
> The NPCM7xx FIU controller nodes only describe the control register block,
> but they still advertise a second "memory" entry in reg-names. Drop the
> bogus name so the DTS matches the resources actually present in each node.
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> ---
>  arch/arm/boot/dts/nuvoton/nuvoton-common-npcm7xx.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


