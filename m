Return-Path: <devicetree+bounces-285606-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGy0CDUJ1mnbAQgAu9opvQ
	(envelope-from <devicetree+bounces-285606-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:52:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D083B892F
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:52:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBFCB3003EF8
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 07:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 865273947A5;
	Wed,  8 Apr 2026 07:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeqOcXhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62357388E70;
	Wed,  8 Apr 2026 07:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775634556; cv=none; b=bXYtAre5Imbt0Af2rlqvJAN8Auh3uelEejxu5+qT14COP3wtGhu5X9IHku2QERw9wNvDRJEsGwbhA4ON2LiIS+umRmymJAQL0AZeG3uWI+9Z8yR10ZkXoguDpRxqhvC6rzjPNV4znA2fYJnvJC8oWpTjyxELgW3cx7U8qYztnFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775634556; c=relaxed/simple;
	bh=Jv086wRCTgDQEnk5xBJcqY/wA8Jo7MQuTSmZDLrN9R4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MZRdRDSJA3PJEBsAxZEd9Ma+lCbsK1SwPhgJVfsSp0Lls2gFRo4fGSBbw0AWtTqXUY/7NnD1H9SXgz5mfXxd+3kxlsyy3n4znnb41Hcsgc9Of+IcZAwTXMLX86F+yBYRByvV8fg2WgOThtxTnvImV4/bXAEYgpryaPMtEvXMtIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeqOcXhZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75C8FC19424;
	Wed,  8 Apr 2026 07:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775634556;
	bh=Jv086wRCTgDQEnk5xBJcqY/wA8Jo7MQuTSmZDLrN9R4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BeqOcXhZmUB350qlMNwuUtGnfMfb+r0SMedeLQzQbeaVs5sigCt5di9z+Kga2Zk7A
	 fgatcOiE5u6PZMk5o8Vts61Y/atvLsycs8ApIDv0pZal6YyGumIZ25stwWJRBgv2mU
	 QE1aGy6itQstaR+VdHStJ5B0nsUiIxafSy88Um0KsLK+7b54k7/DkXM/LsYnKB9hl9
	 /oJEB0XR6c6PiBl8kKifX2MUcDFUswXqobJHg5bmgpegPignRfOSzDagMP7jCOe0Rc
	 X2VXI7YpweE4gDOGC369Y40THtuD2NeE76orkqDKy2btgrs7xRH83tzdw0axuNiLTH
	 0ysOnFd6T2Njg==
Date: Wed, 8 Apr 2026 09:49:13 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add Startek
 KD070HDFLD092 panel
Message-ID: <20260408-stirring-chubby-petrel-edeac9@quoll>
References: <20260407-panel-simple-startek-upstream-v1-0-76721696655f@pengutronix.de>
 <20260407-panel-simple-startek-upstream-v1-1-76721696655f@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260407-panel-simple-startek-upstream-v1-1-76721696655f@pengutronix.de>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285606-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ravnborg.org,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,pengutronix.de:email]
X-Rspamd-Queue-Id: 75D083B892F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 11:31:16AM +0200, Stefan Kerkmann wrote:
> Add Startek KD070HDFLD092 7" WSVGA LVDS panel compatible.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


