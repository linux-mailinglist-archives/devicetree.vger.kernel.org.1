Return-Path: <devicetree+bounces-275647-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBwUOOkstWkXxQAAu9opvQ
	(envelope-from <devicetree+bounces-275647-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:39:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 475B128C6AE
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:39:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4CAAD3041BCA
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 09:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA9B024BBF4;
	Sat, 14 Mar 2026 09:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6xVJuRV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A765219ADA4;
	Sat, 14 Mar 2026 09:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773481163; cv=none; b=NYOe1esAjNoVXU6Lgqjd2Ie+h4ux0ZiHQ/v2SdqQagwRjyJpDyiXu4U8OQJlNfWRLrn26bygk+c2P8Sf08xBuNiCLDlHIY8ZU/7KBrPW6iEpxSRCT3reya6gWlyr3Kzaf92pKOqfsFWrCM2QZAxwtEZzzyqN65QQ8WlouU/FnLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773481163; c=relaxed/simple;
	bh=/T27SgPuJ9tG4ll4/hiyf8ufo6FzDa78qv1iAZ8cmKo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CzttrstODxI/53F76rJ739dmWLdw0DpxqjC1DnNVM9AgJUogKdJLMek9qsuXSGQbtwWTIeKcLz3K3oOMNcxOgMOAGyoS9BNX5gAoxKvsCsaf+7gAkbBenItUGBUUSp5Ci8cD/bWcTG2yiPND1uHg6RCzwfniBAjdP7q8ofxICpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6xVJuRV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3787C116C6;
	Sat, 14 Mar 2026 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773481163;
	bh=/T27SgPuJ9tG4ll4/hiyf8ufo6FzDa78qv1iAZ8cmKo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C6xVJuRVaMCY40Y/gNiU39cmNhiMvlzU38yDfEUffkl5Z0VFrqRQwrNCSWn62Q/9P
	 LWrPxaA8ekgd9aES/uRFe/xs3i+beSHbohEcF3k80QvGRi3toO5MgYxRZ5z5RQyg7j
	 ymY4ANF6eBjipxJt1FiRC7NZrRGENRx+BvIJUZxCIqotJ6VkiirFrm68OrlLZ947d8
	 eA+dwcE5DCZJ9sA1ob4HqWYVQhHlizT3BeJ0ljrqKyNcUNzC7ZXR132oGCYRDbYnG3
	 aBenbkrtAQJzTQEOXL9Regw1he9wC2t0empiX4oH0j37PMKW0DynXW9vihYczGXquR
	 49JWCKCuR6UMw==
Date: Sat, 14 Mar 2026 10:39:21 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hermes Wu <Hermes.wu@ite.com.tw>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Pet.Weng@ite.com.tw, Kenneth.Hung@ite.com.tw, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: Add ITE IT6162 MIPI
 DSI to HDMI bridge
Message-ID: <20260314-electric-enlightened-rook-98613d@quoll>
References: <20260313-upstream-6162-v3-0-8497fb7c4406@ite.com.tw>
 <20260313-upstream-6162-v3-1-8497fb7c4406@ite.com.tw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260313-upstream-6162-v3-1-8497fb7c4406@ite.com.tw>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275647-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,ite.com.tw,lists.freedesktop.org,vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.1:email]
X-Rspamd-Queue-Id: 475B128C6AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 02:16:00PM +0800, Hermes Wu wrote:
> +    required:
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - ports

Your driver clearly marks supplies and gpio as required. Probably much
more, so all this is just not matching ABI you wrote.

Best regards,
Krzysztof


