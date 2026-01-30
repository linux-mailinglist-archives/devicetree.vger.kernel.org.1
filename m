Return-Path: <devicetree+bounces-261215-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FFcLaelfGnCOAIAu9opvQ
	(envelope-from <devicetree+bounces-261215-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:35:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C23EBA927
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:35:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A9975303C4F7
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 12:34:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19DEB36B07F;
	Fri, 30 Jan 2026 12:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tB71njkA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD2523EAA1;
	Fri, 30 Jan 2026 12:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769776476; cv=none; b=LtFKSAIDlVTgCsAjMYNcrdjs8JnaVj3Y6Osv1BvDpE6YO2c7b6m8XlEtoRGT5GWR4kLKJ1/tMQv2QLlcmM4vcS6gpA/mBuc3eEEBCbJqHxGesiwPlO2Q/oeZ5wsjvhDdEKY0Kx2l19VtR/8vqOqVacSmS20+apDWhraXZdQQ3sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769776476; c=relaxed/simple;
	bh=zhVwVdb/153KmPoTgYqysHOn0kSacT4DH88UcwPi72Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aIKBJVfmMGHmpggX0J3mb9DMtlvQyDlL03h1BrAeSTd1ljL4BIX68w0vN4q9Jvdxc4hdb79Kj0YnCuvjUhJ1vFG8qD3qXrardjViBJWnASK/NEtuga64JU9ClMYx7ELjshShWZo1ulJIE/hNsUAdUTNo8JT3YtD3lQbucrKeplU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tB71njkA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0E8AC4CEF7;
	Fri, 30 Jan 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769776475;
	bh=zhVwVdb/153KmPoTgYqysHOn0kSacT4DH88UcwPi72Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tB71njkAEoAfkFfrk/EJCshWcIMXd5T4Sx5tSymI3q9kgfKSgdm6qUDexoCC5Yhjs
	 1dbAjAGWYrKgN59LWVkNor2zWJMhIHiCJ+JKxlfoBFkdoE0ggc3uGFHLbeOjPbEmrU
	 2NGFKgxm7rCqCbQ0jWrdoySmD1UtCWMpJsH+n1Y/F4ofIzHISTMbHvUjC4tgx3h+Vs
	 qkQbqQQcYa2gJNPYkZGMt9LuTYlrFjoA6pqjGOhcUF4X8QIWv1VbeddszC/kgduxk+
	 LX5GQl09WdBABxP9v/+CRwO7J2sFgdaKqMqI1g2jW0LcMB0pnfceHOHLD+3LuG4dGX
	 Lmn3Ya2ZihGTA==
Date: Fri, 30 Jan 2026 12:34:31 +0000
From: Sudeep Holla <sudeep.holla@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Debbie Horsfall <debbie.horsfall@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: zena: Add support for Zena CSS
Message-ID: <20260130-light-piquant-termite-fcbec4@sudeepholla>
References: <20260123-zena-css-v1-0-34adb95cdf89@arm.com>
 <20260123-zena-css-v1-2-34adb95cdf89@arm.com>
 <20260127132206.036892e4@donnerap.manchester.arm.com>
 <c1259bad-be4d-4489-840d-4ab2f4e466f2@arm.com>
 <8c343e6d-14f8-4f55-8218-bc3f0813e8cf@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8c343e6d-14f8-4f55-8218-bc3f0813e8cf@arm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261215-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sudeep.holla@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0C23EBA927
X-Rspamd-Action: no action


+Cristian(in case I am talking no sense)

On Fri, Jan 30, 2026 at 11:31:25AM +0100, Andre Przywara wrote:
> 
> So do you need just one "tx", but "rx" plus "rx_reply"? Which isn't valid in
> the current binding?
> If that's the case, then we would need a patch to relax the binding and
> allowing this combination as well.
> Looking into the kernel code it looks like the SCMI driver doesn't use
> mbox-names, but explicitly expects assignments depending on the number of
> mboxes? Somewhat confusing ...
> 

It is generally transmitted via tx, and tx_reply is necessary when the
platform has unidirectional channels. tx_reply is used to determine when the
synchronization commands have completed, without requiring polling of the
shared memory. rx_reply is necessary only if the platform firmware expects
it and doesn't poll the shared memory for OSPM/agent acknowledgement.

-- 
Regards,
Sudeep

