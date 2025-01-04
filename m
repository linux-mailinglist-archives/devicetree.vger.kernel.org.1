Return-Path: <devicetree+bounces-135600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D189A0176E
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 00:09:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 772B67A1775
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 23:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B14018C02E;
	Sat,  4 Jan 2025 23:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="i6iGQ2tP"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E68143725;
	Sat,  4 Jan 2025 23:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736032192; cv=none; b=dj75bpWsH0rNKf5s+k6VwdgHM9zdakX5YfDkxhY2xma0DX2tFfQKm2IZ8dq7EaLtMg9dVLvqUITEqXyuCr+3yKNjBB8ZacSVJAiQfl57gMGICyvobUx9U4z8QuPHnPiIEAk4pAyERdZuWSDNkskMf9HCVTXusSc7ynLpuigOD04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736032192; c=relaxed/simple;
	bh=0Od/auY2qm0naxnuNijFXvprADJkGqJZFJrhytaxy5E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AMrbvZhClHAANI6+FXJRYzZ5oRi/G7YDfx9Y0pmt/HB+8HwVpSpxBAAEPFHHj0MOiYY/29bgAxewEqT5SW4Z7fVIrtx7W7NFzTejgbKgo6lmmo1Knkcj+XxDcby2Ag/OU3URD0uGULPJI/+ZnBMjvQOLl6GNGWDOfQ/s6rhTku8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=i6iGQ2tP; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ujcfpRKEAeXT1T9589mAQuACGTaXWAGgYaTuHKcYIq4=; b=i6iGQ2tPd85SXBX/OGgpILVT2A
	QRQgN3I8cI1mVINs2U2DImtrA731rjtefzyd/7ms73qP7Gg0OBWoqcBDDEMAj7y8gdP1QTRzJE7aC
	v5PEGI40HT4/OzEFE6gLvWZD+qYxCf84rlI9YkElDiDLjXct0N90FIuTcsBamYo/9XOLpZ0HmXdsK
	Z6GfgjPRatEFbRpJCKirCDYr7fKMCvL945tD41Q5Nm0acrxn7oNqmOFJ/oxn4nDbpvQ0S8uyU9toS
	0sOAI3cAUJO1/Rv4oxMOKcN65weCid1/+WngZ++o8mOkEi4ek6iytC5KcYrgIwwG68lcM9lu3/TPC
	vM5CN2WQ==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tUCb6-0005tm-J3; Sat, 04 Jan 2025 23:26:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org, Andy Yan <andyshrk@163.com>
Cc: cristian.ciocaltea@collabora.com, kishon@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3] dt-bindings: phy: Add rk3576 hdptx phy
Date: Sat, 04 Jan 2025 23:26:19 +0100
Message-ID: <2195662.yKVeVyVuyW@phil>
In-Reply-To: <20241231092721.252405-1-andyshrk@163.com>
References: <20241231092721.252405-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Dienstag, 31. Dezember 2024, 10:27:11 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add compatible for the HDPTX PHY on rk3576, which is compatible with
> rk3588, but without rst_phy/rst_ropll/rst_lcpll.
> 
> In fact, these three reset lines are also optional on the rk3588,
> they just used for debug, then they were removed on the rk3576 IC
> design.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



