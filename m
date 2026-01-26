Return-Path: <devicetree+bounces-259557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMt4A9yLd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:44:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7000E8A49C
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 16:44:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A38263035022
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:43:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B669D33DEED;
	Mon, 26 Jan 2026 15:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWbNZmcD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93157279346;
	Mon, 26 Jan 2026 15:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769442224; cv=none; b=WzslaJ1yi/8yMttEzQz3AdKoojDm/snXyP5ixm2i5eDhuju5mbL9sh50aIpuXQVGkXuedk52oenJULVIiok/tC2A+W012N+JIVwIrPwLFNQ3d7g85XV4WwdVAd/+EpWAzNsSybN7M8mAmPIhPHaNR6LyVKU2purP6Vzxj44Mc/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769442224; c=relaxed/simple;
	bh=6ySox9cmKvJhrP6FpRmvarrNPjCueGbh6a3+rXDpTDo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W2SrDN5lRdA2FLYRODZIbtQrthNT0BOTLTb5LblUYDYBWJbI4PB+9rOx0jztMCbIGX7OHvzGCmHxH67JTNxLmR8ThcDc0LvssnlLFDKRx+8TWPT5EQdePf3QDEX0DwrB/ySCugFHJi9C+ae0ZMi+kl+jSTgRHZ8uzivQv7DZQnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWbNZmcD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1DBA3C116C6;
	Mon, 26 Jan 2026 15:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769442224;
	bh=6ySox9cmKvJhrP6FpRmvarrNPjCueGbh6a3+rXDpTDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NWbNZmcDP6RPcCwLnaL/B+KQs9WdBKe7U5Cv/AeJU7qEO7THkzIqZ9TI1naNPFy5H
	 +jOgjLKWrUJno8i+NcTCV41L6aFq8RA0h2t3HXkdwEHfEmC+u8jPwhhOKuimLwf/RT
	 BGL1mii0f0HOy1XanOt4d1qD2rQ/KrbJb8Zv20w6/Q1aYK3MTG8zrotvEnvl8vcb8h
	 0qb99n3gkDVgLCQwLPP+u/Mh1rJCYhT3QMhjHrPZjF0GBs0gpZ9zOKMwdLiER9xZuG
	 +4R97ByVtYCpqbgT1RsJ9UAFhfJtBZQEpVFub9Xvq2iOFWj62FWgscCFyIUlvPm1v3
	 qFf3R1cHj4PqQ==
Date: Mon, 26 Jan 2026 09:43:43 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Andreas Kemnade <andreas@kemnade.info>,
	Roger Quadros <rogerq@ti.com>, Kevin Hilman <khilman@baylibre.com>,
	Tony Lindgren <tony@atomide.com>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Roger Quadros <rogerq@kernel.org>, linux-omap@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
Message-ID: <176944222247.2468561.9882009575651111970.robh@kernel.org>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
 <20260123-ti-phy-v4-2-b557e2c46e6f@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260123-ti-phy-v4-2-b557e2c46e6f@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259557-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7000E8A49C
X-Rspamd-Action: no action


On Fri, 23 Jan 2026 15:39:03 +0000, Charan Pedumuru wrote:
> Convert TI PIPE3 PHY binding to DT schema.
> Changes during conversion:
> - Define a new pattern 'pcie-phy' to match nodes defined in DT.
> - Drop obsolete "id" property from the schema.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 138 +++++++++++++++++++++
>  1 file changed, 138 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


