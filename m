Return-Path: <devicetree+bounces-253405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AB66AD0C101
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 20:25:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5F81A300348F
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 19:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 398EA2E7F3A;
	Fri,  9 Jan 2026 19:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="EqSo1el8"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF91500966
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 19:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767986734; cv=none; b=SCN7MtC9+iXPz7u7xJwt/7MOAJg9eZYchZq9T/6p44vPCFO3od/XNd7ZChIVW97w/+FXAdfHrxQhs/IvGDHwXR0HZLDl2cFwYJX/mbN3m/G6DPniW7zv2nSUemdkarZctKH6VVQQx7iOe5OB58Vk2MO7QgPk14erXdS/vnkWm/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767986734; c=relaxed/simple;
	bh=UTTJSDWGbTU4I8+MyqchQgBJOjpKhisfNdRB/vtq0lA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RqO861CQjM8aOq6VV/VvuxQsfVB2y72300j5vngV2QONoKW4JZLsmgMKWDpYQLDx37f7KlqDwNHkggayg5UFrnbvhY/V75vPrrJbIE4MNB+bpRKJQLril/0WxfQVoY+Wv3e1VRsaOFo0KTOBcFeR6WbLGT86rFnrhOYZ2bcTAyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=EqSo1el8; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+24tglU3uRNfR8WBpyTeUFqEPV7UAKiBbfxKl2lF2eo=; b=EqSo1el8KT97vkoLiLwKnDxsAU
	SRwtc/OpfeAvG+rqYympG5yaWyUf3Yy4dMBKtBgm/P/Fu20Gv7tuwQpiUCFyxle+GdtxEalQGtlsP
	7vQb9MXRXEmYiDuv4hIoYIXXvBRdjnjhmPuLSu7AkFJZ4Gco7VnG5mD2sFbpAYuoibuFjDHioFNkB
	abjhG5J0tMatH75N/QbKHyV/VrxMBt83bc2gtTbar2r+QiiLuIij+4/x3S3AyA/uxN+OWZGiRN+qe
	7gMbA/Mrq+RrCE1ihwGz8dR81VM6rHzCi5mDm2lXBAeFTdoLP91HrVBEOjgy0mc+55SpLZXjm5HIc
	QQNRCvHw==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veI6y-001fmF-JC; Fri, 09 Jan 2026 20:25:29 +0100
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
Date: Fri,  9 Jan 2026 20:25:22 +0100
Message-ID: <176798671271.3432512.7495708105478828348.b4-ty@sntech.de>
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

[1/3] dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
      commit: db04f0d47dd1f18cf506a7dfa00035901be328a1
[2/3] drm/bridge: dw-hdmi-qp: Add support for missing HPD
      commit: bafb6863dd8cea94e7dc2f90979b30292e8ea31c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

