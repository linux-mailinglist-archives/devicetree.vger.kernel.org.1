Return-Path: <devicetree+bounces-267203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kImNJrOFm2mj1AMAu9opvQ
	(envelope-from <devicetree+bounces-267203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:39:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 139DB1709CD
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 23:39:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EBC153008470
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 22:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64FB635B645;
	Sun, 22 Feb 2026 22:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ABegtPgL"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384DB2AE78;
	Sun, 22 Feb 2026 22:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771799982; cv=none; b=G2j+mSzm2BDLJVUQy6HOCmYq4D98LedNBCy95CAE2/PdTa9U3TaSIKhoYMdY8u4/6RgcPlTF8e9rFknXILc9Fc1rK5oqkjVgBqiIcssxJ/hJHorKhY+7H7MdBhOYnGOt2GVX7Fck+TKODHhg97/QKviowzULhF3Y+XtRYkFT+f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771799982; c=relaxed/simple;
	bh=HyPtKUL9yvb0PL4EEnz4wLHxJ3J1K2m6V/rUWRRZfy0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Jwfo76lffdq/LZPKV+kk8Uw9mxamOe9Pu6MLXxe41YF7gd6ncWSgirvSJKr67lAK8MqcDF4oiYALpoVNPK3eba4oJWRUrpj4HYU78zFgTafGW68tV2hGgvGrn1Q63kHsxUOjPkM86Vuj7yoMQ6FI8+2AovawJSE4QMJcj9GEDWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ABegtPgL; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=t6aXQXpI+hIYWNJc19FQH/iLzUzzb2eomDnK90HQ/As=; b=ABegtPgLMfWzF/O2dxbd08oCG1
	OUidPXyqteouqHDzW+i0cTKhoQoeLbCykwEb2iZrP0RpJJgGaMYG+9S+FUlkyuTeoAbnOhfAUVwSr
	h97scWnztvIrnWo/Wi1z62DjAp2OoJPuCRHVXeoDsABsBxOXNjd8C9yKCp4vAnvNWlpvmNAvkveJG
	ezl8OPLal7svSL7aZpyVd/l9TSNpDQp9QZzFn+veJ7Il5vWgNYUGc/q1GIqI8nXJAAoglN8FpPQgC
	xgotDkSJrfPZvDkjTItHgvQsqITADOiUaRcQ/zqCEOO6ul9R5E0Pkm3U/hK19j6DBzyr0yoPzkw4h
	Shu06cFw==;
From: Heiko Stuebner <heiko@sntech.de>
To: dmitry.baryshkov@oss.qualcomm.com,
	Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	alchark@gmail.com,
	andrzej.hajda@intel.com,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	airlied@gmail.com,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	kever.yang@rock-chips.com,
	krzk+dt@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	nicolas.frattaroli@collabora.com,
	robh@kernel.org,
	rfoss@kernel.org,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	simona@ffwll.ch,
	tzimmermann@suse.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: (subset) [PATCH v3 0/5] Add DisplayPort support for rk3576
Date: Sun, 22 Feb 2026 23:39:02 +0100
Message-ID: <177179992291.1861430.1386382709600780109.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260206010421.443605-1-andyshrk@163.com>
References: <20260206010421.443605-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267203-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,163.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[sntech.de,gmail.com,intel.com,kernel.org,collabora.com,kwiboo.se,rock-chips.com,ideasonboard.com,linux.intel.com,linaro.org,ffwll.ch,suse.de,vger.kernel.org,lists.freedesktop.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim,sntech.de:email]
X-Rspamd-Queue-Id: 139DB1709CD
X-Rspamd-Action: no action


On Fri, 06 Feb 2026 09:04:10 +0800, Andy Yan wrote:
> The DisplayPort found on RK3576 is very similar to that of RK3588,
> but work in dual pixel mode and support for MST.
> 
> This patch series aims to add basic display output, not include audio
> and MST, which will be the work for the next stage.
> 
> Tested with 2 lane standard DP port and USB-C Alt mode output now.
> For those who want to give it a try, I have a reference branch here[0].
> 
> [...]

Applied, thanks!

[5/5] arm64: dts: rockchip: Add DisplayPort dt node for rk3576
      commit: 753ed4fa4e815669a025e08f5101ce0d91f46c8a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

