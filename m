Return-Path: <devicetree+bounces-276516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BTkEL0IuWm+nQEAu9opvQ
	(envelope-from <devicetree+bounces-276516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:54:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2572A524D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:54:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC96C301F489
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E8AF392C5F;
	Tue, 17 Mar 2026 07:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qidu3F6x"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B77633F370;
	Tue, 17 Mar 2026 07:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773733905; cv=none; b=X4GYzgqfRcB6Yzew4C1MBxTnQSVAh5fQUf//JUOWG4ZUJaGoN/v0u25XNDAlHJ0dVyt1cLn3U/CJulKAbT03PrnwyNAZ85n7jABJ2A1olgCmw+A4uUEGEvUTt5uKMpIMW/jVBo35ilzWa5FaWRd3INO7w7GeTQRyWib/3t6jQBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773733905; c=relaxed/simple;
	bh=DTgKQOjGOjxInuU85/citXraFmUYvI60GQFWFQGivGo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TLIY9BdxBn66H+0xL9b+yXLyEy5S5LIKL91QKE8KRYfP2ko5z44jI+6YSSPuRAkugUpMqotPgGg6O3uO4Vd/Dzcq3wgIttskuNrAYHUoKCBgAaLw+ctkT3bW4HNNkY7KrfeQNBgQk1CMJGHnJuBssml+NiSSxDWNUqgyWHy8Rb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qidu3F6x; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A7E7C4CEF7;
	Tue, 17 Mar 2026 07:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773733905;
	bh=DTgKQOjGOjxInuU85/citXraFmUYvI60GQFWFQGivGo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qidu3F6xPSfyzd49HdwXhZO4pHv3E4IMKdNXYKJRWJDnrrjGfZ6zKmNIp3YuNIvn1
	 xRthSNUdTN5K1NGxXK1q9ikCfuHkUp1qJWxoQrL8zvDh6ysHlC/Un8cdYmmAcYD6sC
	 j1IlyzbNC/T4gKOfnJEC5FNxuhJrVtQmG4rbsT6YFOETIca6whLACWPCJaR5+HrMDK
	 Nd/YPO1TbpJJM99NXX6MytiTDAIHh2vrZdBBCiD+d9nRlOWgzoFxqvp4kyd50f9LGi
	 R0UyvTH1Pu13WcrqAP7YNJxE/jKpaVzgPnTqGHX2fttbHI7aRc1ArlKoGxk1GcMh4C
	 mRbuS1VaWc8wQ==
Date: Tue, 17 Mar 2026 08:51:42 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Alexey Charkov <alchark@gmail.com>, linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Subject: Re: [PATCH 1/2] dt-bindings: ASoC: rockchip: Add compatible for
 RK3576 SPDIF
Message-ID: <20260317-accelerated-mosquito-of-experience-e8cc7a@quoll>
References: <20260316-rk3576-spdif-v1-0-acb75088b560@collabora.com>
 <20260316-rk3576-spdif-v1-1-acb75088b560@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260316-rk3576-spdif-v1-1-acb75088b560@collabora.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276516-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,sntech.de,vger.kernel.org,lists.infradead.org,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BB2572A524D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 07:23:00PM +0100, Sebastian Reichel wrote:
> Add a compatible string for SPDIF on RK3576, which is similar to the
> one on RK3568.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


