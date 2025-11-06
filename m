Return-Path: <devicetree+bounces-235828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF3FC3D434
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 20:41:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CBCA3A3617
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 19:41:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D372C33C50F;
	Thu,  6 Nov 2025 19:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="LAc7KxzN"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53532217F27
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 19:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762458068; cv=none; b=smO79hBYGzQxnozol/rBTvdWJTioUjQcA9tDMbxCGoWfLNEaJG/+IsR2SVIHSjsYBJpyG5Rlf5SvZM99bJ68197vXz0fuSeXy5jxWnKkmegGKR8HRwuI950H0oSZhTTyZU6fsLFW7BuLdw/z43jo6VHB8B1N8EImX3SfZFtcsB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762458068; c=relaxed/simple;
	bh=o6cyUnOSEnkNJRnne7+7rQncofgnhjqnJv2zFNpM1Ic=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gHuYIefah2RYsLiUCylvSAohg8IuDMSDornDnqAOWM3iHEH8othTf9TBu4BIi7lnBA0X5kJw0pTY1aROqBlhNLoHqxmoye8Ve7RB6mDjFdjzlssncUlgJQBXtChtBiXPaNskZrUPb4bMN46yNszcr9iJQsz99jXHnCnYXCP5Lmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=LAc7KxzN; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=fbewH0AF1zwBWF/L/JW/wVvoIg0eBxwJ3drbHbIHh1g=; b=LAc7KxzNkl0iUZclB18yXMzh4X
	j1f90hqDtSbxM8SeKE12FB/0WNsLNSSMDv++/XEwX4xObFn80jHszlI/0/KCgmF0WeASWadAZLOmv
	KqkoyZhE+lbx8CnRqJdl+fCsNyp8B+YknCq1L7a8mWVzx3oYk50aG6KkrKypvxJknkipi5NSEiZrX
	+/LfDJ4qbR+5/UqegZLn+beYiKOUzStxDf3hHPfYhVJsoivyPhVy2BlOIoONFXLU1hzQnQ3Fly+CF
	5IT0Nk+k9mtHBeKkEKdx5lwguHyM48bah1z5MHKoS76uRwViGX7Es+asgat3YXbqoLGuG0u2BqdRL
	y12KUbqQ==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH5qq-0000iJ-V7; Thu, 06 Nov 2025 20:40:56 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cristian.ciocaltea@collabora.com, sebastian.reichel@collabora.com,
 jernej.skrabec@gmail.com, jonas@kwiboo.se, Laurent.pinchart@ideasonboard.com,
 rfoss@kernel.org, neil.armstrong@linaro.org, andrzej.hajda@intel.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 tzimmermann@suse.de, mripard@kernel.org, andy.yan@rock-chips.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
Date: Thu, 06 Nov 2025 20:40:55 +0100
Message-ID: <2301926.irdbgypaU6@phil>
In-Reply-To: <20251106180914.768502-3-macroalpha82@gmail.com>
References:
 <20251106180914.768502-1-macroalpha82@gmail.com>
 <20251106180914.768502-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Donnerstag, 6. November 2025, 19:09:13 Mitteleurop=C3=A4ische Normalzeit=
 schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add support for the dw-hdmi-qp driver to handle devices with missing
> HPD pins.
>=20
> Since in this situation we are now polling for the EDID data via i2c
> change the error message to a debug message when we are unable to
> complete an i2c read, as a disconnected device would otherwise fill
> dmesg with i2c read errors.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

> @@ -1074,12 +1095,18 @@ struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platfor=
m_device *pdev,
>  	if (ret)
>  		return ERR_PTR(ret);
> =20
> +	if (of_property_present(pdev->dev.of_node, "no-hpd"))
> +		hdmi->no_hpd =3D 1;
> +	else
> +		hdmi->no_hpd =3D 0;
> +

what is the argument against

hdmi->no_hpd =3D of_property_read_bool(pdev->dev.of_node, "no-hpd")); ?






