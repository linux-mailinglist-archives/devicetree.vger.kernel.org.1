Return-Path: <devicetree+bounces-319968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QkOdKMOBR2oxZwAAu9opvQ
	(envelope-from <devicetree+bounces-319968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:32:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2FD700AD0
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 11:32:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Uf1g0M3w;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319968-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319968-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A9747303EB3F
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 09:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26A2D39FCD7;
	Fri,  3 Jul 2026 09:31:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F4080242D67;
	Fri,  3 Jul 2026 09:31:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783071067; cv=none; b=E7I000qj4bU4MsZNVjhcYkwnfgQP5rjKh9zNL/MlNCvyEKotcH7ZLwdZDS4/oYodEktdBvKDMKfyjtXienmlULHOUdjAarqHfEWnH7aWqS4DFObVgelKQm7zAY+0ExFk2fsvhfxjT0bkLdeDyi9mUVz5OSGi3MIZALw4zQG2gpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783071067; c=relaxed/simple;
	bh=/17YfCpR6+pjL/FAODA9dH99tA9mp8d9ZPgTgf42MCM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dnx3HB96g4pjFPXZ/2yie3mh+cWZDz1138DH3nfBSiUW14KObhjLyPBEW2qUGtn8bWYAGEXdg5L8J0RcX/O0IM5VEn3bmCi1Fzajbbcgegk1rhCfQVc1QRW54wzcghWX4RiVjin0svsUhnasnL0qFn6iIjVHgpAklq3Gq0XPHgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uf1g0M3w; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F1751F000E9;
	Fri,  3 Jul 2026 09:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783071065;
	bh=W8xw3etIy6foek9WKsJsilEnRxUxYjJaX/UNXM0wvDM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Uf1g0M3wV1698VZIbuY8+hqW383x/+006Kb9l3XLzyXfctAnYUTigVmdxWpa6u5hm
	 zPiNZcLTaMpBdpupo/A3gHIIizuLKjIfFG1fqLFGbKySUG7Tom6iqWPwZ6dln72j5Z
	 618jQ4le4aEybagTfBg/OCPOqNV4ySmA1/yB1njPmMUwHnCOrML4o3El2gDUjLZ/9S
	 Na+klAOrDNfMNk7cD8ckn3EC283BWRTwxjTEMxGrD34unGA6TWWJ/Gs/MDf7DUsty1
	 bx4Xm+G3GtfwW8jkhcFBp4H7vWc6YYZMkaOZB3LdZlmA2c4vEUkAU2Yz2Hj7zdye8y
	 0pJouUk4rroMg==
Date: Fri, 3 Jul 2026 11:31:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: daniel.baluta@nxp.com, simona.toaca@nxp.com, goledhruva@gmail.com, 
	m-chawdhry@ti.com, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: w1: Convert HDQ One Wire to DT schema
Message-ID: <20260703-furious-cordial-firefly-eb11fd@quoll>
References: <20260630124826.2992529-1-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260630124826.2992529-1-egbostina@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319968-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,ti.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[quoll:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3D2FD700AD0

On Tue, Jun 30, 2026 at 12:48:25PM +0000, Eduard Bostina wrote:
> Convert the Texas Instruments OMAP HDQ One Wire bindings to DT schema.
> 
> During the conversion, several updates were made to reflect actual hardware
> usage and resolve dtbs_check warnings:
> - 'ti,hwmods' has been made optional.
> - Added 'clocks' and 'clock-names' properties as they are used in actual
>   device trees (e.g., am437x-l4.dtsi).
> - Added a second example for the AM4372 HDQ controller to demonstrate
>   the clock and interrupt configuration.
> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>

Wearing DT hat:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


