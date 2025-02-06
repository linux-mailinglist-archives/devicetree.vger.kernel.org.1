Return-Path: <devicetree+bounces-143571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5677BA2A70E
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 12:12:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DAAA188AA92
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 11:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3298522FE08;
	Thu,  6 Feb 2025 11:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="P5jy5Gbf"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77CF822F3BF;
	Thu,  6 Feb 2025 11:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738840196; cv=none; b=GBJC1793ll/nVY/vaEm7GjN35V60FnAEpGuglmDvTeHrin5dIJEmKktj1MOkSz4/Drw1qkOOiqK8l9PKt87VOY8Mw9urinHhaZHuixEqn/MCijfCXZZmJD2dRLNu94IXQ2g4syUBrVBoxNLKuq/AtU07/GgeXGfnOCECamk9IsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738840196; c=relaxed/simple;
	bh=8im6kH4DG+O2hNpCdRh03uV21ZEF44iqTdbcdw5fUrY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kdBYsyEp6rxqG5FjUeB+8h9CSMmtk6TNI7iQmSVZ/JdE5gDOe7vCNE5GkGNVqWRfWKeRn2fZrCQZ54ya5fDpYVysSpknIaakAB7BxWseysjY5wQjbZKNlf3ovoukGH+322WbHNsfwd7cBiFHzrRqIPPzcyEzOVTwgIskoDfyDhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=P5jy5Gbf; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=D3LmUU0Q2ZrkWgQMtaeBG5wHq/NIG8QQOgcqWRukFEE=; b=P5jy5GbfiFs3gAaSmJk3fFg8KL
	BxVlQzSQJ3e8uKC0XlMNvpmTSlouMRpg/Pq6RvmyYut4KOm4J35NmJrclON0aIk93bTF7X6XQlt5C
	W+pXfe3RGOLPfmul2IKSbuI3hgCrtK0LZThuJocj/Q1fUjhmzzdUg0SGITObA6gtMFsKGQUct6q0x
	pXbZ7ZP7FTnV8vQ0JBZDbZ001dxmT2gt2IXs2cMH9bOIiiim2OJV6AGoX42veLXLoL6PLU8S8lSMT
	yySLU/qsDmv0a2YlwBZVf0ZJ/Si78DRrtJw/QoRsJWPMZRqTPqunVrB8V1LUDK5u42iSWl2Ltk+h5
	zvMpoImw==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tfzc7-0008Kl-4B; Thu, 06 Feb 2025 12:00:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v7 0/2] Fix label name of hdptxphy for RK3588
Date: Thu,  6 Feb 2025 11:59:55 +0100
Message-ID: <173883958376.672361.2537697085076772562.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250206030330.680424-1-damon.ding@rock-chips.com>
References: <20250206030330.680424-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 06 Feb 2025 11:03:28 +0800, Damon Ding wrote:
> Picked from:
> https://patchwork.kernel.org/project/linux-rockchip/list/?series=927102
> 
> The hdptxphy is a combo transmit-PHY for HDMI2.1 TMDS Link, FRL Link, DP
> and eDP Link. Therefore, it is better to name it hdptxphy0 other than
> hdptxphy_hdmi0, which will be referenced by both hdmi0 and edp0 nodes.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588 HDMI TX Controller
      commit: 81dde32e7266e7132076b886337bd29b4648e542

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

