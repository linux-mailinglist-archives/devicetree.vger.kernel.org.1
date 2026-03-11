Return-Path: <devicetree+bounces-274349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QBQhIaXusWnbHAAAu9opvQ
	(envelope-from <devicetree+bounces-274349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:37:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D14DD26AEDE
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 23:37:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BDA3304B4D0
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 22:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA55838E111;
	Wed, 11 Mar 2026 22:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrEJKBw9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984181E8320;
	Wed, 11 Mar 2026 22:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773268642; cv=none; b=bQF8kKL7tiyXdCTrr/sBhEXfa/qbFwjE4wRbyrfLr5MMtvhwHdXN0fmlMcjWFrRtSJ/3T+3imCSGGuSkE/ycxMzU5lJc+MnG3ezRn4Yr/7D0eCQ89/Hc1chVnfylWARimdxx6aiUz8TKPN5yI04bAyr/ohDk710lF3a9l85sAEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773268642; c=relaxed/simple;
	bh=kjz+fssyvvsuvr3of8nST+SbJEIKmg6GJZk1RtnRmKw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q1lg65YHg/Cd05QaqbISFj1kdVU6J5JevDPFh4z4Px1lEMTZQ6U0k9i2sb3Vy/3C9Z+k7HnY56BiVyLjwH2pkovvmNSY6cyVMOU5hGG7xxbbNdYNtTy/fDjHuMlsQQ2w2tToU1n5PLqVZMZ26zndbyAXhr6nel4rHiyhwTkyii0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrEJKBw9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12E45C4CEF7;
	Wed, 11 Mar 2026 22:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773268642;
	bh=kjz+fssyvvsuvr3of8nST+SbJEIKmg6GJZk1RtnRmKw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LrEJKBw9Um2yF24GWHEcwFx2Ps/iK6o4VOuG2F0AAXvH5oyI5OYwn5CmLgqwDy3GV
	 8Bj78emHbss7Bv+0ubWSGf5F0krzjw4g6l0ssUisleNL87IWc6WCUPgtxgY+Qz7fgy
	 YzIegaLCFFmNzHEihlEZfbRuPBDGtIh5O+PkzsR2IytTlKRG8hpZdyNVN/j2NnPdHR
	 Jl0wVpkDGFCFwOSaCy6MYZhqPc6HVSH5oZ1XwxzlEam+NKZKbSpOz1hdeIYvV45BYe
	 xV97qWtorT2oUxdgbI2LHVfsGNbm6V1JenubYvsIAjlmNmATdDLbtxDb4TQvbSwmc6
	 WhvBE7cCvm4bg==
Date: Wed, 11 Mar 2026 17:37:21 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunyuan Liu <cunyuan.liu@cixtech.com>
Cc: devicetree@vger.kernel.org, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, heiko@sntech.de,
	neil.armstrong@linaro.org, dev@kael-k.io,
	linux-kernel@vger.kernel.org, liviu.dudau@arm.com,
	marex@nabladev.com, andre.przywara@arm.com,
	dri-devel@lists.freedesktop.org, cix-kernel-upstream@cixtech.com,
	simona@ffwll.ch, krzk+dt@kernel.org, airlied@gmail.com,
	tzimmermann@suse.de, prabhakar.mahadev-lad.rj@bp.renesas.com,
	conor+dt@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Arm Technology
 (China) Co., Ltd.
Message-ID: <177326864053.1070354.5817720252321082544.robh@kernel.org>
References: <20260311055506.12023-1-cunyuan.liu@cixtech.com>
 <20260311055506.12023-2-cunyuan.liu@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311055506.12023-2-cunyuan.liu@cixtech.com>
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
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,linux.intel.com,sntech.de,linaro.org,kael-k.io,arm.com,nabladev.com,lists.freedesktop.org,cixtech.com,ffwll.ch,gmail.com,suse.de,bp.renesas.com];
	TAGGED_FROM(0.00)[bounces-274349-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,armchina.com:url]
X-Rspamd-Queue-Id: D14DD26AEDE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 11 Mar 2026 13:55:04 +0800, Cunyuan Liu wrote:
> Add "armchina" vendor prefix for Arm Technology (China) Co., Ltd.
> 
> Link: https://www.armchina.com/
> 
> Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


