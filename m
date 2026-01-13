Return-Path: <devicetree+bounces-254714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DEFD1B269
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 21:08:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C98FC3018969
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 20:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 698943191D0;
	Tue, 13 Jan 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="xAwMXeA3"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F41318EC5
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 20:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768334914; cv=none; b=jgKvL2Er3lL+h+zRNFji0J4lDUsHqPr23lpDqkd7/ox3QpyC3xsyL+IE1PAqVKIwkrZ0qBp5G4C07S4hwA2EbzTOl+vjzZSCuD4djEFWUhxXk6/C6QLtLxs6MGVvHc1rcHeo6Tiipr8l3g9ItDMX5EngUmB6y+oDbBFDcdORcX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768334914; c=relaxed/simple;
	bh=y5i6zNgB/mLp9XFria465D/SmHCPYx+L3rwkXrbZnb0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Wpf5qD1LR9PAvJjbiz38sDDGf0UjKgIlKLBHVGM4q0EAh38bsaEoXX44B7Wv/cXOcS1bFav2V75etsltr/xXrqgIiDZwdCFthtyyIgOr+LHT3GrBH3YGm1P07PFUS7KR9dFun7QHlTG29UwxUFlAFUX8coH4+oJlmdPFRVw+B58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=xAwMXeA3; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=y5i6zNgB/mLp9XFria465D/SmHCPYx+L3rwkXrbZnb0=; b=xAwMXeA30Upix0sJfjipJR4isv
	A44PYx7FDi4LRes4YG8H5K5OQYZTxw/N9yo4MeCQJqrDE3ZijgFcOZlAv8jAVzFL8hfe6Tc3vaD//
	dumYulNy7LYH6i2XlYnlPeQt1vW39C5IOKSlcuS8g0KeE7AWhpcZ+cQM9ZeqG/gWC+cyRGZEHc5RP
	TGa8UfIXXBhkP0xcCiKEAusrP69PW8h03TkjDTZV+P187K5lHK2Fa0Z+yLKGBD0ZLpgIFk3XOMFJG
	QKCIOUh9S80GWtzfcsOv27a+eddONBmwW2ggZh4az7SksZlWO6JlP2nusjj3Y7aFPBkF1BFv4Mr0A
	yKVBLUEQ==;
Received: from i53875b63.versanet.de ([83.135.91.99] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vfkgg-002AcJ-Kj; Tue, 13 Jan 2026 21:08:23 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 dmitry.torokhov@gmail.com, simona@ffwll.ch, airlied@gmail.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 jesszhan0024@gmail.com, neil.armstrong@linaro.org, jagan@edgeble.ai,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 aweinzerl13@yahoo.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/6] drm: panel: jd9365da: Use gpiod_set_value_cansleep()
Date: Tue, 13 Jan 2026 21:08:21 +0100
Message-ID: <13199470.iMDcRRXYNz@diego>
In-Reply-To: <20260113195721.151205-2-macroalpha82@gmail.com>
References:
 <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-2-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Dienstag, 13. Januar 2026, 20:57:16 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Change instances of gpiod_set_value() to gpiod_set_value_cansleep().
> Uses of gpiod_set_value() generates warnings when used in instances
> where desc->gdev->can_sleep is true.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>





