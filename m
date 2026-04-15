Return-Path: <devicetree+bounces-287466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CC4F+M232nAQQAAu9opvQ
	(envelope-from <devicetree+bounces-287466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 08:57:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A327D40120B
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 08:57:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E7F9301725B
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2026 06:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D0623921F6;
	Wed, 15 Apr 2026 06:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7aXrrG4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292033914FC;
	Wed, 15 Apr 2026 06:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776236256; cv=none; b=ckwLCONx2a3Z7KrJKGKQN/TZpqVj7BPzU4nQOjIB515vyPXx3ihyP8dXj/EBXjyXdKm/68t2FA64xDouyPRcEe7SVLLPzicnsBAmSIkBc/a3wmzc9u1Wqea256heYw1CYq102i3Zd4Izt05eCezAHlOSAYwxwT9MVTufcrYbLOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776236256; c=relaxed/simple;
	bh=kGxHkwuajsqPzKzACuGpkIM3KPBsa1RsKd1WBe82kfs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=msV8CHkIwVg5IozTGA7aso+dum5KBgekhOtzu0sQ1w+hLaxi5OKh+WxttL9pUoRtQpfIY83D1AntSEfuJZBXb4S3PguvtxcPeUIeoTp8lfE70XjA97pM6LevZf36JtjzF79ZIV5seEkllbXwJ1ZtrVaS2LQU9Vn9SGX/f17EGXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7aXrrG4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CC51C19424;
	Wed, 15 Apr 2026 06:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776236255;
	bh=kGxHkwuajsqPzKzACuGpkIM3KPBsa1RsKd1WBe82kfs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q7aXrrG434LMA8+2kL8zkHyOvd5zpxEeqxkMECeA0tBGBbG66MJX5Yc0dXjAczDTy
	 05zQJ5j7KqoU/TfYgGicBsUlr+PJ4gtKwbov0BWe6IcZbzTP9LJY47XO1P3KqeXMpt
	 phV/EvwVib5ztbxmy4SHZHF4nxNp2FAxA6VGJleKy/OSEpgNyaWSvwrBGHtPCy2hhQ
	 Krsx8rqneQhtEmR6Lyf/sEyvIQqMC5nUwc8HbsH9Dd7CqaXSnR10xR0PuEmFWcw9OC
	 QLAoNsHFCMMTukZtVvmwZU1ECWf457mv1x5gU1HxtiEQjakQx6eGES70U8FG5vpXmG
	 de5ZceN/I36DQ==
Date: Wed, 15 Apr 2026 08:57:33 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Dennis Gilmore <dennis@ausil.us>
Cc: Alexey Charkov <alchark@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, FUKAUMI Naoki <naoki@radxa.com>, 
	Heiko Stuebner <heiko@sntech.de>, Hsun Lai <i@chainsx.cn>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>, 
	John Clark <inindev@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Michael Opdenacker <michael.opdenacker@rootcommit.com>, Michael Riesch <michael.riesch@collabora.com>, 
	Mykola Kvach <xakep.amatop@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Peter Robinson <pbrobinson@gmail.com>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Robert Foss <rfoss@kernel.org>, Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v7 2/6] dt-bindings: display: bridge: simple: document
 the Lontium LT8711UXD DP-to-HDMI bridge
Message-ID: <20260415-wondrous-premium-hamster-f8eccf@quoll>
References: <20260414214104.1363987-1-dennis@ausil.us>
 <20260414214104.1363987-3-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260414214104.1363987-3-dennis@ausil.us>
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
	TAGGED_FROM(0.00)[bounces-287466-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,lunn.ch,intel.com,rock-chips.com,kernel.org,vger.kernel.org,lists.freedesktop.org,radxa.com,sntech.de,chainsx.cn,kwiboo.se,ideasonboard.com,lists.infradead.org,linux.intel.com,rootcommit.com,collabora.com,linaro.org,cherry.de,ffwll.ch,suse.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email]
X-Rspamd-Queue-Id: A327D40120B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 14, 2026 at 04:40:53PM -0500, Dennis Gilmore wrote:
> The Lontium LT8711UXD is a high performance two lane Type-C/DP1.4
> to HDMI2.0 converter, designed to connect a USB Type-C source or
> a DP1.4 source to an HDMI2.0 sink.
> 
> Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> ---
>  .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


