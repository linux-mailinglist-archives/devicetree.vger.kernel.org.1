Return-Path: <devicetree+bounces-183773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54ABBAD1B80
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 12:24:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E0203A9AE5
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 10:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65C09255E34;
	Mon,  9 Jun 2025 10:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="lNlOB6Mg"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB32253F20
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 10:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749464624; cv=none; b=tZI+UHy6qHM9GwxOa7J+yHnXPwIBHGFt7+8JHngZEj3RWcHNo9TASLNF+aX47Gjn/uVL9UCiCp9wLXzQZvb6egUrAu4WIgvniXK39NYEAKXaSjeAGL4G7EMKvQjsUNsq4/XH66hcXdfmjEaO3wIXQYnD8jiVyrr1EUDRBjik4UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749464624; c=relaxed/simple;
	bh=yxv6/a5z2R633AaMKbzCCOoltFPSN/uOA307FSebJuc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kgSDm2qy36UfCqLNRvRIznTsKD5fqXMn0DLoLIHwA11+SjUJR7d8Jnqj9vSBn8E2bzaBzUhfz0ql6kIzAKOM+WZMiPAFtoi3/9OmX1MBD8AZsYCdLhxgF2JuRx2YaZt8FTZfBjFLjPx3KdMs/4A0x8yUVCBiOTMacjrdbT7kl84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=lNlOB6Mg; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=K0AL5zLG/bnHCisTlv3I7JUPhVxh/ayleUVJo70oA0w=; b=lNlOB6MgeXdxPAe9TjFU3cpJVZ
	GfryxcfdyOMRrD1gNxqJWb5iNEvacx97E7D+mBRhLeF4SORLw7nMxOC15dTvP5ZsmqmUHKKHu314T
	8UebT7IP3vHNlEFm9RI6KWy2++fkk3vKn2NvPi+OVZRjGr2EBTnnyYy54DVLctrwdF8Z1eJyGW1LM
	E51O+QYqEnKiV1j80ZPRfq4Q0OGb1XRuJo3KmFX69ZdHTqmAyPutux8Ix7pAO3cva+Fkl85CakzAY
	9daEDAejh2c0dHn6fdPTHevTCmXYTynjNIH0mhfn89hycndTNiStFVUZMSnMODAC9z8ZgfW7+f7Sn
	3yhpi7zQ==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfF-0006Av-18; Mon, 09 Jun 2025 12:23:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/4] Add DSI Panel for Gameforce Ace
Date: Mon,  9 Jun 2025 12:23:03 +0200
Message-ID: <174946455531.762051.4163841843437974105.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 03 Jun 2025 14:39:26 -0500, Chris Morgan wrote:
> Add support for the DSI panel as found on the Gameforce Ace handheld
> gaming console based on the RK3588s.
> 
> Chris Morgan (4):
>   dt-bindings: vendor-prefixes: Add prefix for Huiling
>   dt-bindings: display: himax-hx8394: Add Huiling hl055fhav028c
>   drm/panel: himax-hx8394: Add Support for Huiling hl055fhav028c
>   arm64: dts: rockchip: Add DSI panel support for gameforce-ace
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: rockchip: Add DSI panel support for gameforce-ace
      commit: 6b28769116971a4427ea09ed2cb1cf1afa79ab82

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

