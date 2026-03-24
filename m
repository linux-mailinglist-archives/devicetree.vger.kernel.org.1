Return-Path: <devicetree+bounces-279442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ML+4AvblwWkYXwQAu9opvQ
	(envelope-from <devicetree+bounces-279442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 02:16:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D70430067A
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 02:16:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F0AC3020A70
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 01:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE53734F48D;
	Tue, 24 Mar 2026 01:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQ1Lq8CX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBA4D2DB7B7;
	Tue, 24 Mar 2026 01:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774314706; cv=none; b=ITow5b+ZBe4ZoERmge03HaWgILJKBrplsT50F3qktZPxelXK7HAPgwittJ27lTAtVV/nLNcgO1x9OqOFK7rfkoAchVgo5OgbxInDU1juAcuxAFrg+mlA16hZE/Sv9lgZWiJ5bmmBJ7AMeb2skZZ3cIMFv8aoGXPkpSu50EA8a/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774314706; c=relaxed/simple;
	bh=E9cCMGjU8K/dZwwXBy/xpq2fkGmeV9HMWGks3FqOKNI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sokb6SzoACyWL+MbtArfIXEttex+UJjEeqNOESk4gNn8Kd3TLeDHMPLSaTsWXL1u+tEE18BD885HazzVBuQzqt0TJIsYbyGeeSitHLQC0Z820xk3WCXT4iimev+VP/bfmjJ4ETtYGkuljDraBnYR0lwlN4JsDZdHYN7qivEMDaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQ1Lq8CX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D41BC4CEF7;
	Tue, 24 Mar 2026 01:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774314706;
	bh=E9cCMGjU8K/dZwwXBy/xpq2fkGmeV9HMWGks3FqOKNI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gQ1Lq8CX51IIxGWUqO11sOlbruLXVao0SZGoZNySK9vJ6XwePjpA4KDCDLAs1j2bp
	 1mFtRYrkIYb2lCfwKFHcla3OkyR30bsASk2+PyJsdJfIHk327coc/tv2E9qhEje9Gl
	 s3c+bB0ftwqgTMkXK6WCbKY5g6E/qsb6Hh0TggtVqC3zxIjTItg1ZlucwLF2WpXYJh
	 CUkdtahcKgWBVNCuN7ImriXsSvrf7fTVm7L4zrAqy/ktbZnIUmdGPTT6fFTwd0BH53
	 XEuakGprR/gt4xf/B10L629e2GjanTSmS661xug+IA/zuAn7c5Q0LPAWKLEnaRwsMk
	 TGlKjOeLjzRdQ==
Date: Mon, 23 Mar 2026 20:11:45 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: devicetree@vger.kernel.org, Simona Vetter <simona@ffwll.ch>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v4 1/2] dt-bindings: display: panel: Add Himax HX83121A
Message-ID: <177431470438.1869567.10359365187485586761.robh@kernel.org>
References: <20260316084040.728106-1-mitltlatltl@gmail.com>
 <20260316084040.728106-2-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316084040.728106-2-mitltlatltl@gmail.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279442-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,ffwll.ch,linaro.org,lists.freedesktop.org,kernel.org,linux.intel.com,gmail.com,suse.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5D70430067A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 16 Mar 2026 16:40:39 +0800, Pengyu Luo wrote:
> HX83121A is a driver IC used to drive MIPI-DSI panels. It is found
> in HUAWEI Matebook E Go series (Gaokun2/3) with BOE or CSOT panels.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---
> v4:
> - use v2 as the base since v3 was using v1 as the base by mistake
> - remove '|' from description (Krzysztof)
> - drop description for reset-gpios (Krzysztof)
> 
> v3:
> - remove '|' from description (Krzysztof)
> - drop description for reset-gpios (Krzysztof)
> ---
>  .../display/panel/himax,hx83121a.yaml         | 91 +++++++++++++++++++
>  1 file changed, 91 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx83121a.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


