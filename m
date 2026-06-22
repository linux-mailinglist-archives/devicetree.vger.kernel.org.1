Return-Path: <devicetree+bounces-314443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yZ9wBwU4OWoRowcAu9opvQ
	(envelope-from <devicetree+bounces-314443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 15:26:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3E66AFD74
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 15:26:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=C2xnT+2O;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314443-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-314443-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 38EE03010623
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 13:26:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 271D03AA51F;
	Mon, 22 Jun 2026 13:26:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B59136E468;
	Mon, 22 Jun 2026 13:26:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782134787; cv=none; b=iPry6/hMYQz1Sp+YyPx6EsVHroav86HUq+4ux9PG6HGLqu8Cf++hGslmSeXAkKrc3ZEmB6XZfol8HCkH87r0GKmqzR38kDlZa+r53Hr5QS2GXirMWRdlErKGYdgAwnSFOddn1/NvZI6WL6mDLIOa3h/TPM3KkIfATGTOjFiuF8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782134787; c=relaxed/simple;
	bh=MT2fqqoSEWX/oZYqrPo31IJHqlA0R77vnQdFJYGcz3Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uzpGF8X4HcC30wvIJOK4zmjGs+ueVaKKRXciVqWi8ILXzky7Zdrxt0jKkCIIdB3LJTPhrwCsBCl97F0pbP798TUw/e509O/MiW3lDKDp/owN6Jbu1ZMDCDbDCj/bRkUKrmy2+qTuHJ9YOFmj3TVYVOs/GI3tiKwliH1Ky46Y6oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2xnT+2O; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05B4B1F000E9;
	Mon, 22 Jun 2026 13:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782134785;
	bh=mNvAJ4vqqGIcu3OfuNyRNoQmCqh+htmYpa/S7+Nmfug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=C2xnT+2OhYyQ3LJDjcK3ORSu0zpDg6bP/Bs+PRVaBjlTtYIdHGG+zumA2PTzqhLmP
	 ncTKu3QFBvQwwD0pVNbSEzDAiW2Of0ooNvOSB1/t3ptY7qNkyl4sDX15sx/bDWnzk9
	 exUx68UYqBkIls0Mk3jnJdzzJyeNmqENch7zx0MrjYElFVoRTvDOhUnKZPTP/Tt1wk
	 CkCwj4nuCUKdCTz4VWGyjbsrwM3fHVns041A4WGrFbm86McYQSn3F14f21pUjBRWc2
	 wLDoBnbUcx5XRuvGF8zliECIBtgPOP11EILTAiSl/8EmYLkvU533lFiVSlm/7cdZ74
	 FYVal2fpjWD4g==
Date: Mon, 22 Jun 2026 15:26:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Patrice Chotard <patrice.chotard@foss.st.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Christophe Kerello <christophe.kerello@foss.st.com>, linux-spi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: spi: st,stm32-qspi: Add power-domains
 property
Message-ID: <20260622-gabby-fiery-skink-dab9f7@quoll>
References: <20260618-add_power_domain_for_qpsi-v1-1-4d7e57bcfb9a@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260618-add_power_domain_for_qpsi-v1-1-4d7e57bcfb9a@foss.st.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314443-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:patrice.chotard@foss.st.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:christophe.kerello@foss.st.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:mcoquelinstm32@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,foss.st.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E3E66AFD74

On Thu, Jun 18, 2026 at 08:46:35AM +0200, Patrice Chotard wrote:
> STM32 QSPI may be in a power domain. Allow a single 'power-domains'
> entry for STM32 QSPI.
> 
> Signed-off-by: Patrice Chotard <patrice.chotard@foss.st.com>
> ---
>  Documentation/devicetree/bindings/spi/st,stm32-qspi.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


