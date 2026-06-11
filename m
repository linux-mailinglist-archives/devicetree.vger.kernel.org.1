Return-Path: <devicetree+bounces-310272-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DtsBLql6KmosqgMAu9opvQ
	(envelope-from <devicetree+bounces-310272-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:06:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5258B670337
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:06:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kucb9rwc;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310272-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-310272-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 058133012B15
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3E81385D69;
	Thu, 11 Jun 2026 09:06:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D84376465;
	Thu, 11 Jun 2026 09:06:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781168782; cv=none; b=fSh3YhdJJulMxFsQFAdOGEq78JvKUQr6HUxFGP/5WFhTZQDhqVCmaIMyjvuOM7IAtrB3hOuqlR3/THkOLtmH5UKwFNE1gGg/7qryBC4k/CP6Ypg4t/JY5bi3oehaQwK263e9wt/02K11DaHitS1aPHzHiuby8oMPRXWxvXV8T4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781168782; c=relaxed/simple;
	bh=4AUvjuai4N+RkIT8LkzS8PD4w+SK8CcYOYgKFVO2Vm0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IK0hcsPMcymMkL6Z+fDtI6hOecUCLrZWGehxuRnh1XVFHzu0rVAfg1+n6bRdBhqfdogSVhXsqGLKUbBaHKg61yZtdZOa25EygY/+t1kGi4s5D1/51qL/Yvv3K6Ad6bvuy77AntTHgO6ji+bRXUTZkri5S+rifxuO22CeY5KSf7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kucb9rwc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE3491F00898;
	Thu, 11 Jun 2026 09:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781168781;
	bh=WbHo0RwI9j3Vdth4NfkBJIy1aubZyvoaCPcPZk7uecY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kucb9rwcHEXWUXr8GWMIN4nP/+rRE9XttQY0S+Zj5R9LxhwYhLrtkW7kiqK3T9wsA
	 K/LYBXzTyz+OXKned5q1s7+VHP8RPSuxThdytrcODgkZ+WJJ/oG+3CGGmKhET8HXpY
	 96GI9HN+WxBg41+Wpnt2hKpwERANapi38JxjM889yFXkDj+8pqgbvMKmuX+EUpasu0
	 Y3Pgl6cTE54EJtrPpncQUxLpAF2gizVoAbPBxi0M7QYS767K9QRKZ4hJY4mPgXfCW5
	 R6GhQAyLqv9M0aK9rFaK9KUUs7A/T4YuH4U5QqSC7E2AxD/lNuY63y47PkN6BMgOHx
	 eTNvgHmZQX8zA==
Date: Thu, 11 Jun 2026 11:06:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, pierluigi.p@variscite.com, 
	Stefano Radaelli <stefano.r@variscite.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
	Daniel Baluta <daniel.baluta@nxp.com>, Dario Binacchi <dario.binacchi@amarulasolutions.com>, 
	Josua Mayer <josua@solid-run.com>, Maud Spierings <maudspierings@gocontroll.com>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, Ernest Van Hoecke <ernest.vanhoecke@toradex.com>, 
	Francesco Dolcini <francesco.dolcini@toradex.com>, Hugo Villeneuve <hvilleneuve@dimonoff.com>
Subject: Re: [PATCH v1 1/3] dt-bindings: arm: fsl: add Variscite
 DART-MX8M-MINI Boards
Message-ID: <20260611-primitive-kind-crane-aa9800@quoll>
References: <cover.1781024557.git.stefano.r@variscite.com>
 <a3355082aec3454f671b44e1f9a78000d2733470.1781024557.git.stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <a3355082aec3454f671b44e1f9a78000d2733470.1781024557.git.stefano.r@variscite.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:daniel.baluta@nxp.com,m:dario.binacchi@amarulasolutions.com,m:josua@solid-run.com,m:maudspierings@gocontroll.com,m:alexander.stein@ew.tq-group.com,m:ernest.vanhoecke@toradex.com,m:francesco.dolcini@toradex.com,m:hvilleneuve@dimonoff.com,m:stefanoradaelli21@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-310272-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com,amarulasolutions.com,solid-run.com,gocontroll.com,ew.tq-group.com,toradex.com,dimonoff.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,quoll:mid,qualcomm.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5258B670337

On Wed, Jun 10, 2026 at 10:58:53AM +0200, Stefano Radaelli wrote:
> From: Stefano Radaelli <stefano.r@variscite.com>
> 
> Add DT compatible strings for Variscite DART-MX8MM SoM and Variscite
> development carrier Board.
> 
> Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


