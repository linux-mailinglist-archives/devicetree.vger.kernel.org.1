Return-Path: <devicetree+bounces-311371-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1Ry7IzygLWoHiAQAu9opvQ
	(envelope-from <devicetree+bounces-311371-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 20:23:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FB367F4A1
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 20:23:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=No1Ztip0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311371-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311371-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 942AD3002336
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 18:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D6CB2EEE78;
	Sat, 13 Jun 2026 18:23:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683962D7DF1;
	Sat, 13 Jun 2026 18:23:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781375032; cv=none; b=nZVEReNmnNoLEucTAdyXa1AYObiJKeTbs6PCB/DJ8oPfb6UXbM7AHKvPV7Z2FM0o/dbpEDNPDWufjaofzN4i/vT9SKrT5d5HBmM68UDB+mZ0AB0OtXzUfQEx1hqLO4KYybLWX9a8XbqMILz7ptBResbctbBi8s+aNRlP05IO8Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781375032; c=relaxed/simple;
	bh=1gh2xQx7ax35Ma/iu7vPLX6Mu7o7bKJI+5MUIAzfFVs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ur56iS0bKPMRf/5UhKgWtAmAzOazs5mV2mqHgoxxB4QxOJQ+LJFtTrMZpNDFFv163wPVJnq6ZE/bTdZ3h4gwZKOGPZXiYxhiioJNO974kMVf/SD6j9rdxDE6CbPM6GmyJklUIk8/0DCuijG+di2VfNySG3jx0jiAITOH7Wb6APk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=No1Ztip0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 617DC1F000E9;
	Sat, 13 Jun 2026 18:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781375031;
	bh=bW2ZyNL9PiJBJq/IMQkuWCqxi4Vg0c2aSHkAUwoZk6M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=No1Ztip04mrjRw05vEGbGPvtUmEvkfRBo5kfLRBSnzDsATn8fI3HuMuMXdkr7IBxL
	 U/j1GNs2mA+/8aRN9VBSYVUDpphiGvaOtc8YU87Zr300snMOrYtWc24nRjrLP0NweU
	 X6spneq9II0WyxlKl7je+qLjEp8ef6xAvlwaIkilbKuWo1oXfq1l8jMeYI0w6DOVmj
	 bQ775jZr+KSfKvsRKuVsdlvxI2sapb77Vj654UFyE9KYh/IjCm9nCNNoYYvPQEL8BJ
	 0MHKiaJZUAwB+2vz5Vrcr5ciDEVX00L9OyRQ2h+orYgi81RBrVJu2yUiz8AtaqHMPz
	 dcwVc0Ofnix0w==
Date: Sat, 13 Jun 2026 20:23:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Patrice Chotard <patrice.chotard@foss.st.com>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/2] arm: dts: st: align node patterns with
 established convention
Message-ID: <20260613-wondrous-shapeless-pelican-6b927d@quoll>
References: <20260613-st-mmc-v4-0-b3c385617c16@gmail.com>
 <20260613-st-mmc-v4-1-b3c385617c16@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260613-st-mmc-v4-1-b3c385617c16@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311371-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:ulf.hansson@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:peter.griffin@linaro.org,m:patrice.chotard@foss.st.com,m:linux-mmc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:charanpedumuru@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 21FB367F4A1

On Sat, Jun 13, 2026 at 09:39:39AM +0000, Charan Pedumuru wrote:
> Update ST MMC DTS node patterns to match established convention.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  arch/arm/boot/dts/st/stih407-family.dtsi | 4 ++--

Thanks, but please fix all the files of stih in one commit, not file by
file. git grep gives more instances of it.

>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/st/stih407-family.dtsi b/arch/arm/boot/dts/st/stih407-family.dtsi
> index 3e6a0542e3ae..08acba209c56 100644
> --- a/arch/arm/boot/dts/st/stih407-family.dtsi

Best regards,
Krzysztof


