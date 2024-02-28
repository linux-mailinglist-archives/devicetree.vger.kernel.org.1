Return-Path: <devicetree+bounces-46736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A8C86AB04
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 10:16:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8DD81C20ED1
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 09:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E252A2E62E;
	Wed, 28 Feb 2024 09:16:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3679421A06
	for <devicetree@vger.kernel.org>; Wed, 28 Feb 2024 09:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709111799; cv=none; b=tyXG1kclmE8qlS6caRVmcAj2GkWXrdr/icFG3K4DRLeOQA8JC/9UzQg5cfu+jBKJRVMdEOARk2VqVcybfeon/7rKMgjvkqxbhfHMOQ4iwGUOxI5Prgq7KP0ms8qH0ohtp6XcdPyh626RuFwUDQur+slxXr/BZOPIR41qTNz0h/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709111799; c=relaxed/simple;
	bh=lTA6ITKkAaPl2LhaNKY1RBoj4N2hECOtwgVzcWxexZM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=acShZ0IEyhR0BT2rj39ofNftDqPoTx9kM6C1ivPux2ew8sLueT+7YsnJEf8BZ584rYPfdL6rBDiEERtzZZfJ0CIAAc1CLmNjMnVS3WiauaRynfaNtdXQiJALnvM79Dp3oX3WwKlxDpfOzttOzfypqvX7UENytbvlEQduo/PnCus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rfG3H-00084W-3t; Wed, 28 Feb 2024 10:16:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	ukleinek@debian.org,
	Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add missing interrupt-names for rk356x vdpu
Date: Wed, 28 Feb 2024 10:16:32 +0100
Message-Id: <170911177587.875264.5357932973123944820.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240227173526.710056-1-heiko@sntech.de>
References: <20240227173526.710056-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 27 Feb 2024 18:35:25 +0100, Heiko Stuebner wrote:
> The video-codec@fdea0400 was missing the interrupt-names property that is
> part of the binding. Add it.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: add missing interrupt-names for rk356x vdpu
      commit: d1c44d9afa6f89aa0e10a191f30868eb12cd719f
[2/2] arm64: dts: rockchip: fix reset-names for rk356x i2s2 controller
      commit: 0fc19ab75acde78558bd0f6fe3e5f63cf8ee88b0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

