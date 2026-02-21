Return-Path: <devicetree+bounces-267137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKF9HzcvmmnPZQMAu9opvQ
	(envelope-from <devicetree+bounces-267137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 23:18:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EECA716E182
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 23:18:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C373A301DC0F
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 22:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDFAD2F261C;
	Sat, 21 Feb 2026 22:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="WVQs//KY"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F090D946A;
	Sat, 21 Feb 2026 22:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771712306; cv=none; b=sfs6HZ5XGEscykQKlzaZh6ykbfkjmtaIYvjnXIylrai19ASYTbKyO3nr+KVCCUdIqbTkDza8wspUARTk6ElUs6MYhWt25029e2i5FP1E6MLD7m7Aebmz8S+vZgz3geXYsVjxycYCIx6y/oE0fvav9u3Y8jQbYUY4JnBBbEZkVVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771712306; c=relaxed/simple;
	bh=8cJ8Or0Wiyolp/5xE4ux+wjlBPt4IrR5ZJ7GtdVsPnY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cty9qTuoZzR18F80C3YrwTAt7Lr9vRZPK2msOA9g1rl03j9MDu7tXW244hC3fSi2LNMA23E6g7EfBi8Lbi76pkhFKI6StyP+7XHC7l5llcclCzeP/N6Car7kpBrSxxs8fr/CujEg+j2viDfS+0igHPyk+BZEI9WMR2/10x8Ma3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=WVQs//KY; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wmPg3krCGLYxqdO1s2V7OVlTQkXVv33YeZdELw95jYM=; b=WVQs//KY+NXeAo+Dvue1fb9wQc
	DIsj5/8yTFxBYQJbaM3qvfi25vwvM5BRljDrQp12BKMkC+nTc4hAWsB5UkJiSqoA0HC4WoBqOhPDr
	Wlq0QiUIkOc352X2M0Rwzoe+sTXM0lWC6J0v3wua7o56zEy/o2ay8CXS6VP8OTBdFIeVrESTUsJrI
	b8E9Vq7jmghyeELDjJh4/qjQMsnlun9/CccB75HZnVCvSzGR58GiTLx8EOrxnNjbeBMnsptJA/UMo
	gG8IMpHIBuarUK3B165gmG+FGiU1td1d12W+zqRFpJDXNfErvtsb2vgmsa3LBhWvj8zcgFINiRDuL
	SrKqTYGQ==;
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
Date: Sat, 21 Feb 2026 23:17:56 +0100
Message-ID: <177171224758.1745786.7493605269440201268.b4-ty@sntech.de>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267137-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sntech.de:mid,sntech.de:dkim,sntech.de:email]
X-Rspamd-Queue-Id: EECA716E182
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

[1/5] dt-bindings: display: rockchip: Add rk3576 DisplayPort
      commit: 3410ab9fbd642e24f21d2fe6db6e995fa14991de
[2/5] drm/bridge: synopsys: dw-dp: Set pixel mode by platform data
      commit: 77ae37018a2705f5abe8cc428e3496651258901d
[3/5] drm/bridge: synopsys: dw-dp: Make i2s/spdif clk optional
      commit: 388bb0899bc9acdb6e4eeaad9eb9dce3427ceca4
[4/5] drm/rockchip: dw_dp: Add DisplayPort support for rk3576
      commit: 70ad4780431e3936e9cb0cf13e286d304b418f94

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

