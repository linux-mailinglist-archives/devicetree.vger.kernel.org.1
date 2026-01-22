Return-Path: <devicetree+bounces-258650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oF27Mvezcmn5ogAAu9opvQ
	(envelope-from <devicetree+bounces-258650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 00:34:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3722E6E88E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 00:34:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9E173008D3C
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F1AE38F243;
	Thu, 22 Jan 2026 23:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptB9NR8l"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390643DB757;
	Thu, 22 Jan 2026 23:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769124848; cv=none; b=Ydn2ZQE+uq7FG/r7XgTMFuyo37JVLbJNaIwMPkejtOYPDosnVFO7eSQVxg8sQDGDKAGiLXP1O8t8ksmjXUYi2lZNHiXbJ/utOcV/OcxR54KIjfbvRYpxQkNSRaDP/IBK2ElpHhff3pE7H2DjgaKJHQSJ67KdFbuX/3T2U1h/gFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769124848; c=relaxed/simple;
	bh=p/6yioS4UUYOkHdgzh+4CtAIpFXk6Ku7adka0gET+jQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UG5R5AgfHIPVA0zA0fltxjwYJpQSX5FnrS6iWRf6MgoD2qhQZgVz7YOi4miS/79eDqgqo8dBI4fBJxykeORh5S9lsoOr8hSNPEy7umCpQEHRx7q3DfZUTwMq29ZbX/D6fRiu8OuDELuRh6kNTM3I8d3VVWz+lNDZiSwZ0Qvr1fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptB9NR8l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B93C1C116C6;
	Thu, 22 Jan 2026 23:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769124846;
	bh=p/6yioS4UUYOkHdgzh+4CtAIpFXk6Ku7adka0gET+jQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ptB9NR8l/QTiZ9mmU78HCKmRpf+bAL7GCg6CPgaPRcMVIgy7jdlU4gJzevsEp5E7M
	 sZBiA+Pt5s6Dx58uRBA2xXHoSs7LAhM85mjxoSejhKdAwZ9hs1va9xAYBqlSpbfYVJ
	 TwKuQAjNlYPDw0AuVbAYlIZDIo7/vvsaGHYuR0teZc1dTiyzokAICu9YDitR69smYA
	 jOjFfhnrCBUZq6Q4EmcNh0G3YKq+/QCdOBJUxOdrMn/Xkf78/PbwGNnaIcb6SJdj99
	 TWIA/raypBSL9qLBSygGknD/xUx89xy7W2ARqW9kJ90AnTddX3yt/BD0kRzvRItoII
	 kQnY1QLnbX5jA==
Date: Thu, 22 Jan 2026 17:34:06 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Aaro Koskinen <aaro.koskinen@iki.fi>, Roger Quadros <rogerq@ti.com>,
	Tony Lindgren <tony@atomide.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Roger Quadros <rogerq@kernel.org>
Subject: Re: [PATCH v3 3/3] dt-bindings: phy: ti,control-phy-otghs: convert
 to DT schema
Message-ID: <176912484532.3737425.3268044409618489057.robh@kernel.org>
References: <20260122-ti-phy-v3-0-751619729433@gmail.com>
 <20260122-ti-phy-v3-3-751619729433@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260122-ti-phy-v3-3-751619729433@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258650-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3722E6E88E
X-Rspamd-Action: no action


On Thu, 22 Jan 2026 17:52:59 +0000, Charan Pedumuru wrote:
> Convert TI OMAP Control PHY binding to DT schema.
> 
> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
> ---
>  .../bindings/phy/ti,control-phy-otghs.yaml         | 99 ++++++++++++++++++++++
>  Documentation/devicetree/bindings/phy/ti-phy.txt   | 98 ---------------------
>  2 files changed, 99 insertions(+), 98 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


