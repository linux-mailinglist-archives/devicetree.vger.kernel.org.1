Return-Path: <devicetree+bounces-253409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E83DD0C1C4
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 20:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A05230274CD
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 19:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE6835E55E;
	Fri,  9 Jan 2026 19:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="cTWK5hdO"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6C52D7DF3
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 19:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767988330; cv=none; b=YGysTkqToUzZB6VYYfvmlm0NQKrXrfx66gJNws78CH64BeJ4uP68LRgUqCI5osHasvtZ5k6zcIg9+lK2uJsAD8n34Ja0O67yN98gu3pcCnw0IH1V3KwQzWmCgi3oVPrZ4DRDuT70UzG7I4bUrpsWAf8pQ8yXMns8qN48Sw4VuD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767988330; c=relaxed/simple;
	bh=W5A47F68qctbJYzePXnvqUC4/LznmzcNexhCjrwqv9g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=GqcYKNRIC09PIj+IMYj4yj3upfzE23hak+4K3WtYf5CwhQisHP/uwhsgjrpeX71IMm3JJNBbh5HcjYy+nt00zl8CI4RfcyWlXtkpZfLcCu4aFmk+C27Fe2xx9t5IXfTtakXFDSwOxQ7AXoXcoi+4PhPleAj7l2U8GJQi9DxzndA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=cTWK5hdO; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=UXv5SDgabeUxHI5NH+8KwOclEnx72hBve7UveRrT45E=; b=cTWK5hdONnvZF3ymA/s+bPw93s
	KaXA7CIhUQ3bqsbO/2o2LN6q6njDpZ6iDqvUVtYIcFWwh5VvfnsQXQSqCpt6mjaUS3vvuvXJEjuFG
	NHRl0pshWfay9dv614AdsHV+biFqKrCbCdeaQo5yXtQdLckjU1m0DEpZHbd6LcT/fd8Vg+Z2fWqaq
	mlJAx2xSWv5owGZuNWoNuHfxuxKPOff9ylHglBIaK0waUmCoQKHNewjuAk4OoeXjb9AnB0hSCKPrL
	+dC4lYM60P/bppB8w3N6zrUFulgPM/0dy2tUE+PonVkMOzvSPDk82Kd2nZTd+zuT390fqAvmIjO9x
	GqPPv4AA==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veIWi-001fth-ER; Fri, 09 Jan 2026 20:52:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	cristian.ciocaltea@collabora.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH V3 0/3] Add HDMI for Gameforce Ace
Date: Fri,  9 Jan 2026 20:51:53 +0100
Message-ID: <176798831388.3446147.13187044565812566559.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251119225526.70588-1-macroalpha82@gmail.com>
References: <20251119225526.70588-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 19 Nov 2025 16:55:23 -0600, Chris Morgan wrote:
> Add support for the micro HDMI port for the Gameforce Ace. This port does
> not have a HPD pin so it requires making changes to the HDMI controller
> to support this configuration.
> 
> Changes since v1:
>  - Simplified checking of no-hpd parameter and changed to
>    device_property_read_bool() function.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: Add HDMI to Gameforce Ace
      commit: 97a9b5edcdd4179063773f17a00904a464b8aa7c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

