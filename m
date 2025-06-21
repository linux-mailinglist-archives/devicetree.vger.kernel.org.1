Return-Path: <devicetree+bounces-188045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18221AE282F
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 11:00:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A78AB17DDE3
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 09:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25E79153BD9;
	Sat, 21 Jun 2025 09:00:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7058F5B
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 09:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750496443; cv=none; b=gGjAENZo/XPnNyFnwni62yHoPUd05DpI1GPm9DuWsA2ZNhVyQtjsuvcXVytKTktkahoO5BDr0vFyZhBx9ReHsIHAPuE7VHzEXn+o+Ba2u9wofLGLZffLAcrLS7O5qtVFGU7IYKTneT5R9z8Va1LEDQwBcIzMtMI7WIx0SMSGo8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750496443; c=relaxed/simple;
	bh=5EQBJAXMCY6aQn65UPw1xxt4uDIdVBkw+YarFypg2ik=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=H14hAZKnx0cryjI+pjfiTy61PHotOZbdzoK8sbT01wfcYHs7PyZoo1++ECBjgVAUNGkEBWXkaCgfkjTauTZfBrf/Jl6Qowfg8Vp6NTbmxq1h9vi1ubj95sjRBct6QTjhZcSUr/YnJSdOSbWzul/uqLxSsCrl7aF1cPf0ivlaPh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.95.207])
	by smtp.qiye.163.com (Hmail) with ESMTP id 19728b98b;
	Sat, 21 Jun 2025 17:00:35 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn,
	ziyao@disroot.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] rockchip: Add GPU support for RK3528
Date: Sat, 21 Jun 2025 17:00:26 +0800
Message-Id: <20250621090026.23293-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <175045054807.1572438.8910024255365917623.b4-ty@sntech.de>
References: <175045054807.1572438.8910024255365917623.b4-ty@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSElOVkNKTxpJQkpCGEMfTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk5VSUtMWVdZFhoPEhUdFFlBWU9LSFVKS0lCTUhKVUpLS1VLWQ
	Y+
X-HM-Tid: 0a9791b7dc5703a2kunmb42a6c8b19ec90
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PVE6GCo*HTExMCgBMBU*FysX
	FU0KCQpVSlVKTE5LT0JNT0hNS01IVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	TVVJTlVCTlVJS0xZV1kIAVlBSkpLQjcG

Hi,

> Applied, thanks!
>
> [2/3] arm64: dts: rockchip: Add GPU node for RK3528
>       commit: 6b88b8a640fa5d2169e0ce47b88dc30727fc1105
> [3/3] arm64: dts: rockchip: Enable GPU on Radxa E20C
>       commit: 669080eb7f7c4720aa4e640a49f7490cd928cfcc

https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=6b88b8a640fa5d2169e0ce47b88dc30727fc1105

Should the gpu_opp_table node be above the pinctrl node?

Thanks,
Chukun

--
2.25.1


