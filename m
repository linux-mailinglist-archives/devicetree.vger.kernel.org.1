Return-Path: <devicetree+bounces-257301-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CJLEkh5cWkvHwAAu9opvQ
	(envelope-from <devicetree+bounces-257301-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:11:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8687C60328
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:11:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 085227C8179
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 353903D6661;
	Tue, 20 Jan 2026 10:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="lxZMgDnA"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF983F076A;
	Tue, 20 Jan 2026 10:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905836; cv=none; b=K7MmRib898TSyGnGl8U5GJwXvMkDWrrbBcquu2oKxi14Zl4pKurZD7ximpWK0Z3F1XDDZPryg6zEDPpGhjlF/yIedo8uK0XVrFICJ2Q4xsGGee/0KrBPzaNYkfoor4BEaWA4i/SQHnlprZy7YxRSllpA1nXRhhotvXxzYwCk7qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905836; c=relaxed/simple;
	bh=O2FhviPnC5jz5ZsBAwO6tzGpttxJxSsq9OxCi424fEk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tFN/GqgsNJWDLstrkfDlhS8L3F/L1D6aI0Fa77YDuB/KrhvGuN6FjFN/zuRuOQ0ZyBv0M0AGT4n2qTlUVjAnVyqreT2tCfwTsttlwqm7BPE53Ns9ZQaOmKCWQpqVm79jG+gLPKnxTN575fSqj/yYhwOFM6uLGGcZq8x+rPsx3UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=lxZMgDnA; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=O2FhviPnC5jz5ZsBAwO6tzGpttxJxSsq9OxCi424fEk=; b=lxZMgDnA7WGotJ0c12IMFqkU7a
	rwtU+DoqMrphu1iorjPcGFxsr1p0/WtuZXWjU9WIWLzaIIDwgRAjmFpdOQr72wpzlEwBRKSxY1jUA
	zpKgaOK1KezXk/bc0zdRwF7YZmrCBgt3CfDv/jmR5HEsJVlsQXdkH02mqs4lak3nNBx/pU6YyXQdL
	W1t7Y+39lfIc1Tmxok2lYKPNC1R9UPgCAimMDW9NEIo2H/i1hxwJBdr+RUtsyVUVsJwuwCeaPrHVM
	9QUlDYrhBFOrjOYNZHJM4IMdbqwJz7kzu0vi+vdAwxQXChIf+0jbUeOWnPBcIZNAi5VLurg7Qy9Tg
	Oqh96xGg==;
Received: from [192.76.154.238] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vi9D4-003N5V-46; Tue, 20 Jan 2026 11:43:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dmitry.baryshkov@oss.qualcomm.com, Andy Yan <andyshrk@163.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, cristian.ciocaltea@collabora.com,
 Laurent.pinchart@ideasonboard.com, mripard@kernel.org, hjc@rock-chips.com,
 robh@kernel.org, sebastian.reichel@collabora.com, tzimmermann@suse.de,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject:
 Re: [PATCH 2/5] drm/bridge: synopsys: dw-dp: Set pixel mode by platform data
Date: Tue, 20 Jan 2026 11:43:41 +0100
Message-ID: <4083071.q0ZmV6gNhb@phil>
In-Reply-To: <20260109080054.228671-3-andyshrk@163.com>
References:
 <20260109080054.228671-1-andyshrk@163.com>
 <20260109080054.228671-3-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[38];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257301-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,163.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[sntech.de,none];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,linaro.org:email,intel.com:email,sntech.de:dkim]
X-Rspamd-Queue-Id: 8687C60328
X-Rspamd-Action: no action

Am Freitag, 9. Januar 2026, 09:00:45 Mitteleurop=C3=A4ische Normalzeit schr=
ieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
>=20
> The DW DisplayPort hardware block can be configured to work in single,
> dual,quad pixel mode on differnt platforms, so make the pixel mode set
> by plat_data to support the upcoming rk3576 variant.
>=20
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

While Dmitry helped a lot with looking at bridge drivers recently,
I think your recipient list does miss a number of other people
listed as bridge reviewers/maintainers.

$ scripts/get_maintainer.pl drivers/gpu/drm/bridge
Andrzej Hajda <andrzej.hajda@intel.com> (maintainer:DRM DRIVERS FOR BRIDGE =
CHIPS)
Neil Armstrong <neil.armstrong@linaro.org> (maintainer:DRM DRIVERS FOR BRID=
GE CHIPS)
Robert Foss <rfoss@kernel.org> (maintainer:DRM DRIVERS FOR BRIDGE CHIPS)
Laurent Pinchart <Laurent.pinchart@ideasonboard.com> (reviewer:DRM DRIVERS =
=46OR BRIDGE CHIPS)
Jonas Karlman <jonas@kwiboo.se> (reviewer:DRM DRIVERS FOR BRIDGE CHIPS)
Jernej Skrabec <jernej.skrabec@gmail.com> (reviewer:DRM DRIVERS FOR BRIDGE =
CHIPS)

As you'll need to do a v2 for the binding, please add the missing people
to the recipients.


=46or the change itself, can you improve the commit message a bit.

I assume the Single/Dual/Quad-Pixel config is a real hardware-feature
that is set when the IP is integrated into the soc? Or this a runtime
setting and a soc can support multiple output variants?


Thanks
Heiko



