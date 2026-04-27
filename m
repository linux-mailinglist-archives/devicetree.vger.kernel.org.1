Return-Path: <devicetree+bounces-290489-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJUZJ6Y872mD+gAAu9opvQ
	(envelope-from <devicetree+bounces-290489-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 12:38:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6624711E0
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 12:38:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7856A30008B1
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 10:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7177A377023;
	Mon, 27 Apr 2026 10:38:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="ungP194k"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FDD245005;
	Mon, 27 Apr 2026 10:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777286306; cv=none; b=MySQXwz4wNxz5V4ESO8d+kDDJcu9uGmVePCGulUqFqtQPbscf8HHkrAtkDpvxNBIA3edMg13E4sk8Oq0M6SvnbyAUbRJjvnocizjWw8F91svX5LVa4qe9IGg6S0u4XAD2T2CP97XUHV1Orj8YFcIB27wacc8Zfnvsyazd1y2tH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777286306; c=relaxed/simple;
	bh=Yp6hw9YMUgyBOlWT7AEyu22BSsvL8XW4ydyheGX7ebs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QCTrCvs/ZSJfyU4dAYr+ItcZDPAyCyx3070vx9Sag6dLusBQzznobUZ10b71CYDqVZXoeyXH2v3C0WNAG/n9FfSMCuxCiZZCDekkfYH1peRQKZXZn2KoG2uxJLRctHvwV5juHKJ0Oc2yaNZrFrc7cp1O97B62kFjwUkE6m10TH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=ungP194k; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Yp6hw9YMUgyBOlWT7AEyu22BSsvL8XW4ydyheGX7ebs=; b=ungP194ke67KZU5pOYDrDK4HRt
	39+h5iKodZrPPc3WP3GJYIdwdDcuK7sfhBdP/fYS8mBpBW0L+4x7+27aTH8nwmc6AVV4RkcoT7DQL
	IkYwhSHkJRRfA9FPYpGD4uGLFm0ZI50bARTZK4MxIq/FDHWr40hHzrnqTDe/8VSoZGfJWozga84HQ
	dTJRkKQGn3u1R9MosVaskZDpqpb55lW9AvrkzxjlGm102hV9MJGIFvnl2WC4lDCVylE54QDvn+rPr
	nj/JKQmt/ZRhA5tZmTcyE9H0Dz+Nxzz34vQ/1ZwD8fuDmhEvIsml4+mPFHCnzS4g9jZXFhu0c+gef
	y2SGQNEg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Dennis Gilmore <dennis@ausil.us>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@gmail.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Dennis Gilmore <dennis@ausil.us>
Subject: Re: [PATCH v8 0/6] Add support for Orange Pi 5 Pro
Date: Mon, 27 Apr 2026 12:37:57 +0200
Message-ID: <6856027.GXAFRqVoOG@phil>
In-Reply-To: <20260425031011.2529364-1-dennis@ausil.us>
References: <20260425031011.2529364-1-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: 3C6624711E0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290489-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,ideasonboard.com,kwiboo.se,gmail.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org,ausil.us];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

Hi Dennis,

Am Samstag, 25. April 2026, 05:10:05 Mitteleurop=C3=A4ische Sommerzeit schr=
ieb Dennis Gilmore:
> This series adds initial support for the Xunlong Orange Pi 5 Pro, based on
> the Rockchip RK3588S SoC. The board features eMMC, SD card, NVMe (PCIe),
> a Motorcomm YT6801 NIC (PCIe), WiFi/BT (BCM43456), dual HDMI output (the
> second via a Lontium LT8711UXD DP-to-HDMI bridge on dp0), and a 40-pin
> expansion header.

more as a general node as the dp-hdmi thing is ongoing, you might want
to just submit the orange-pi5-pro basics first and do a separate series
with the display parts (both driver + dts integration).

That way the core board support can already be applied and get testing.


Heiko



