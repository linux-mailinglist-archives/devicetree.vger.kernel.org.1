Return-Path: <devicetree+bounces-272397-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDeBOxH+q2mfiwEAu9opvQ
	(envelope-from <devicetree+bounces-272397-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:29:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CDB22B0E7
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 11:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B06E0300B9EF
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 10:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A27437882A;
	Sat,  7 Mar 2026 10:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHppHgHm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7796E371066;
	Sat,  7 Mar 2026 10:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772879375; cv=none; b=FA1NTcZVWtisTkOQBwVydZl8B10/7agID5PcleqaYtaA1pvvkRKVACxkDvGK3ay6k9NNVwrk8T650EA7l8Ku8KNs8vQIJYM7C10gSmdfltYMaaAbzZYn7hkEpjKLPE+uNrTfbRK5P9XWBl83BlJeNgVcUK7aOj0SfYvmIAu1mQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772879375; c=relaxed/simple;
	bh=Rs91B4+PcG6vEi+B0TdzuE9KIq/VuYpa8ADVKgBLvfk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lNUUNrxGPzONqFeG5EDswQK+Bs3PYKgN5SZAFXdHCRDksXIf2BfBW1F+tBmdxIaGP05M6YtBsQ3J0uj85idSLR1Sz/COAJWYuaPlzIoxIBw4QL5s4/WNgHHHXSyJBX4mqtRctrZxr4N2kGRe3QraJc0Qt1VV6pmQVeEvipH7l10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHppHgHm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0A43C19422;
	Sat,  7 Mar 2026 10:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772879375;
	bh=Rs91B4+PcG6vEi+B0TdzuE9KIq/VuYpa8ADVKgBLvfk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iHppHgHmQbxfgKu6Le6HuH7wGZTeSeyGx2103ymUImshBH7p1WKietXJCBgvu3B1+
	 kfzLBmp9hUoNg0DJvHUOLI9qb0KFv/A8ST1m8RPIoFG6XpuZdyTV57Ud528r6P0k3j
	 6bTpg6rM3fBaWBviL3ujsVEYfhMWPXO22ISZNEL19L6gAmBQdUN+9dXKYA/QBCDWGw
	 RNSL12jqmirP+hBQgrPlj2B7/gUDIzBRIBZjnsmt3hvYwk2S/y14Oox3KqQxBVusuW
	 fwiCu5FhGNxmws8hAGPfftxfCZL9PjcYBeb9wtEVkdXS/cQbwJqpiW2SPnwtVtdPlp
	 BbCn5F52Pyqdg==
Date: Sat, 7 Mar 2026 11:29:32 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: soc: Add bindings for Airoha SCU
 Serdes lines
Message-ID: <20260307-crouching-uppish-gazelle-08fc1c@quoll>
References: <20260306190156.22297-1-ansuelsmth@gmail.com>
 <20260306190156.22297-2-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260306190156.22297-2-ansuelsmth@gmail.com>
X-Rspamd-Queue-Id: 99CDB22B0E7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272397-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.967];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 08:01:50PM +0100, Christian Marangi wrote:
> The Airoha AN7581 SoC can configure the SCU serdes lines for multiple
> purpose. For example the Serdes for the USB1 port can be both
> used for USB 3.0 operation or for Ethernet. Or the USB2 serdes can both
> used for USB 3.0 operation or for PCIe.
> 
> The PCIe Serdes can be both used for PCIe operation or for Ethernet.
> 
> Add bindings to permit correct reference of the different ports in DT,
> mostly to differentiate the different supported modes internally to the
> drivers.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  include/dt-bindings/soc/airoha,scu-ssr.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>  create mode 100644 include/dt-bindings/soc/airoha,scu-ssr.h

No, this is not a separate patch. Binding headers ALWAYS go with the
bindings, when you add new devices.

Best regards,
Krzysztof


