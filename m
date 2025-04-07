Return-Path: <devicetree+bounces-163575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A21D2A7D596
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 09:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 961373BE3AB
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 07:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FB0722C321;
	Mon,  7 Apr 2025 07:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="BKNm6qKL"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE93E22688C
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 07:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744010284; cv=none; b=gh+cATHczhrM5CGiJ0wgKHDXxohLocm2wwfDMun2BELxb729xIbQJ63+Bo87LZeMM1offR05M3ucC5Qj88kVaTQjBbLmR2ptzo15nx2sVLS8OXNaurohRarJB2oCnKeXIfEOVv+VvJPcFAAhGKpwN7vOHVz9C6Swk++J0wXltqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744010284; c=relaxed/simple;
	bh=LIly6h3bVCGFPvoi8r5gOVfayDgofcl7Eax+Isy7PrU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=THDWJyRMm/UCZmeJxP14k0fcNLxX7FPt/IPUobWGgw4BRwUZDgW8FKbMdKmKrzIU/9sCgFP9oZZqN8B9XNjtRnAnDv3uHm/W2DzMePKMrNZ+OjAUOWt1ZmdxbNAZWo37mG6zGVW6kGOhGFLKDCCFDOy6cx6OafucwQKPEm86XTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=BKNm6qKL; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4PrlT27m9EP8rauA//gYPo/7ZjcRwVCAYzD7lAeAzf8=; b=BKNm6qKL5YDNJ4RtcOlsTx3pmz
	q0Y87boZY7QNW/XctkHIjm2fywnulpwanlL3Fm8OeAgMdvkSmhq9XcCgV+s75GVyGHCCzjIIjjbcS
	g1t8lcboGl+ssRG9HG3Mex79tnMgk8TCg37CyO69hoWzlx0JSwekOpC8aXwR4qiFVdbQcNTVze3bV
	IanHrqCgmGv45szjSRPRKGRoH/pdiludTsU+/EYs/WB7Fzcylzy7MjJPmBbe7G9oNFltlQwGKPQq2
	NKsOtvho71+nVnAdFAqMtc65jmobpTQ/Z0DzWYsueNoLhNmyyVavyDqw480NCdmbcheFO1cSnp+7C
	WS7VBGKQ==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u1gjx-0000tP-Se; Mon, 07 Apr 2025 09:17:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: ts433: Add pinmuxing for eMMC
Date: Mon,  7 Apr 2025 09:17:45 +0200
Message-ID: <174401024397.372530.6675456820651613380.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250319113138.125192-2-uwe@kleine-koenig.org>
References: <20250319113138.125192-2-uwe@kleine-koenig.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Wed, 19 Mar 2025 12:31:38 +0100, Uwe Kleine-König wrote:
> With this added barebox is able to access the eMMC even when booted via
> USB.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: ts433: Add pinmuxing for eMMC
      commit: 7fc027e894fae7c8661b52b1fde223004b2a8e0c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

