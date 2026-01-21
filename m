Return-Path: <devicetree+bounces-258034-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL3rMdYUcWkEdgAAu9opvQ
	(envelope-from <devicetree+bounces-258034-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:03:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BC15AF39
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 19:03:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D0E317E8964
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 16:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D302425CCB;
	Wed, 21 Jan 2026 16:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjH6/1HZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5903DA7FF;
	Wed, 21 Jan 2026 16:11:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769011897; cv=none; b=dC+d6v5JiNdsej6UA+/8DF8XUxhpEEsRJQApyLI9pujnEgApKHthpS/rkWwAJbbXs1p7KJwCLZ5eyntSwxdhaceUhjb4XEEC1ZQZ9dqTBSkgW+my0izVn7j1ved9ZYmwPqdLOwtkBdrECtxlJJC+28G/OM2xKp1vUka0G/qnR88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769011897; c=relaxed/simple;
	bh=V2uPC8qCjAB3AyCXXwB0jIWRbx8pyVz0OgnL1DHGJN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZWBQGljHpYCIoMTbTKYwvk/+701gguGV4c2SlsZVzB/wYHcWbssdB+Wocg0yv7PfcmJwk1smZ3kuGTPcExxnmbiLolJj49KwY96fVqSi68pV5s/8ZC68YdJqyONnqXhmkm51fj0sQuS52FxYYNaZZL+02AcKPCvz8xjhBkFNrfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjH6/1HZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6264C4CEF1;
	Wed, 21 Jan 2026 16:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769011896;
	bh=V2uPC8qCjAB3AyCXXwB0jIWRbx8pyVz0OgnL1DHGJN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CjH6/1HZgrFT//oGtTljMKhxg2FxyZPoxE1TrtPGZruiZHdoTEpLgJeTRLdb7RObA
	 RNCxjpTI224lrdg9FswF/sRmaH0qKU0BBMq93rNFfQVEn2Qv132OhG8gDsbFk7We0w
	 lMwxD7oNuJIJ0C3fx6MCP8e1sD5FlhBIGnQNwcevOV8d/l08fpzgcP0pv/2LNPxkdZ
	 9vx2HdETXyORW9IINUWKT9QJPUV7FbC0Vppg+gLfE9dYc5nKT2mtlZyiL8k1uKBPl7
	 rvCd6TIY+CChqM9YZuy6e3A7DHe8UTn3q4lT/klQdmG/Bh+194glab9fCuXdg7hzsD
	 iTzY6mWHF3h3A==
Date: Wed, 21 Jan 2026 10:11:35 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: Tony Lindgren <tony@atomide.com>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Roger Quadros <rogerq@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2] dt-bindings: omap: ti,prm-inst: Convert to DT schema
Message-ID: <176901189053.3298295.8466412681618003898.robh@kernel.org>
References: <20260120-prm-inst-v2-1-a025873cee27@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-prm-inst-v2-1-a025873cee27@kemnade.info>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-258034-lists,devicetree=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,kemnade.info:email]
X-Rspamd-Queue-Id: 65BC15AF39
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Tue, 20 Jan 2026 19:54:23 +0100, Andreas Kemnade wrote:
> Convert prm-inst binding to DT schema. Use the closest matching standard
> node name in the example.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
> Changes in v2:
> - rename and move file to the place where also omap board compatibles
>   reside
> - Link to v1: https://patch.msgid.link/20260102-prm-inst-v1-1-e85402b86885@kemnade.info
> ---
>  .../devicetree/bindings/arm/omap/prm-inst.txt      | 31 ------------
>  .../bindings/arm/ti/ti,omap-prm-inst.yaml          | 55 ++++++++++++++++++++++
>  2 files changed, 55 insertions(+), 31 deletions(-)
> 

Applied, thanks!


