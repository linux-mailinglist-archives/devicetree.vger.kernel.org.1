Return-Path: <devicetree+bounces-273940-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIcSEU4osWkBrgIAu9opvQ
	(envelope-from <devicetree+bounces-273940-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:31:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EF50825F5AB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 09:31:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C482A3059AD1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 08:22:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A54873B52F6;
	Wed, 11 Mar 2026 08:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBgtW0Qv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 809E530C35F;
	Wed, 11 Mar 2026 08:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773217182; cv=none; b=FHkzrOGfcqmiaS+dNKsnrNrezPnhUFZ6RvjNUY/b9r9KIVPiZZb8F92Ibslz6cwWLOR6AvuxkqlYxy8TlAAO9oiDeDI12qkP/bGLff8xRZo24ed0NBfdJthVjGl822N76yWZxaEcIAh+gIWiEG8S/q7n3dszPIlQ8VZefI825Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773217182; c=relaxed/simple;
	bh=P/hUtHq2Vjn+UX3qqxGu9qF3gyaE/w/W3z5oMkjbGqI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JeddHgNzY9zIHNt0443q1qlyH1OvK1KvgbauuPxHcw93VnZsXs6UMTYV+MoBOQapNLErppJIoNJCzGfe8u2J7jqOYMAQv8NsKv2rb4KqOoK1Vxm5DVY2QZLTt0j8bn3ZIf9FOJDBkbJP8pWjLP1x/AwyyBhZmNiLC4aKEQJ6GWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBgtW0Qv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D32C1C2BC86;
	Wed, 11 Mar 2026 08:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773217182;
	bh=P/hUtHq2Vjn+UX3qqxGu9qF3gyaE/w/W3z5oMkjbGqI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TBgtW0QvKqVlpJy9xnmanVAvnMjK8n5VlUwU8W/Q3W8RNKKGQX/UZOJVbz+QqDlts
	 hGbFCQX1VTk4pWgl0nYfNNSBRxpFDUe7J2DP8SsL+8ftHJh1ureFGEdySpFCpiI1ou
	 MN5zrsfdP+M5mBBw4M8J32DjB2c3TYuaui0PV/i3Y4JgVMvAEuZgzzmed1tExqmVuP
	 mkjQYL/HlIc9jR2TUDY7hS1X9jewpxRu6HC7VwdD4RVcqjjQCWzL4eOpw0Ph/NU6uy
	 /RAOOPrtrDrwuf68+6QE51MKUFkCm43hVVQlsxqdkaIOqr5J9QjBYhL66DqGBpZBQx
	 JwjqxQfPpxPzQ==
Date: Wed, 11 Mar 2026 09:19:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: linux@roeck-us.net, wim@linux-watchdog.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-watchdog@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, heiko@sntech.de, 
	Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH v2] dt-bindings: watchdog: rockchip: Add RV1103B
 compatible
Message-ID: <20260311-elastic-premium-gharial-eab832@quoll>
References: <20260310002040.417424-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260310002040.417424-1-festevam@gmail.com>
X-Rspamd-Queue-Id: EF50825F5AB
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273940-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 09:20:40PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> The RV1103B watchdog is compatible with the existing DesignWare Watchdog
> binding. Add the rockchip,rv1103b-wdt compatible string.
> 
> Signed-off-by: Fabio Estevam <festevam@nabladev.com>
> ---
> Changes since v1:
> - Fixed a typo in the devicetree mailing list address.
> 
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


