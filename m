Return-Path: <devicetree+bounces-239012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 10999C607AF
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 16:00:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 01AA14E4CAD
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 15:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71311298CAF;
	Sat, 15 Nov 2025 15:00:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCE229D266;
	Sat, 15 Nov 2025 15:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763218829; cv=none; b=DUZINENgto9PDwL6lOjtLqPECZiIdUiNoHxNETiAB1WuJtN+yAIIg7VuDVSgFlalN4zYJyJWmeoA7MBZbf7g1W7TEp0OeH5pFEPi9dtat+XjUzpi2TwkQpyYUXXQpXvL6f0tufmk2zii10TqfFE8QGIZ2zku2eUdrXOxcUT/sR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763218829; c=relaxed/simple;
	bh=jBJFwFb5xhqhZ2WYotEK+TEy3DqXB9ncdM4TJiJS1PQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jk2MJIFrueDaz2rGwA/36r6Kuy4Onx6H57Yw59A+dfrWbbZS9ZkuGAXxsGvZoRSXpBvIrFsEO6+X0rcBZHKiY+a+suaWxo8UjZn54crnmi+1VI4lu/9KGE19FMZSXRrYWeT9aTLcgEkKGqH+3ZFexHaiBY59jaLtrh/qAiU7ElQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [116.25.95.231])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29b1c85f7;
	Sat, 15 Nov 2025 23:00:21 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: (subset) [PATCH 1/6] arm64: dts: rockchip: add mmc aliases for 100ASK DshanPi A1
Date: Sat, 15 Nov 2025 23:00:10 +0800
Message-Id: <20251115150010.1052575-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <176307502906.495066.9339764118786240746.b4-ty@sntech.de>
References: <176307502906.495066.9339764118786240746.b4-ty@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9a8808101203a2kunmc099134524c7f0
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGkMZVkIfQx4aHksZSh0YSlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSk1VSU5VQk5VSUhKWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+

Hi,

> Applied, thanks!

> [4/6] arm64: dts: rockchip: fixes supply for 100ASK DshanPi A1
>       commit: 621bb09a76fa12a9e61c9d745ae524db86abf781

Sorry, I don't know if this is a problem:

The commit message started with an extra ">".

>From the schematic, the supply of ES8388 chip and the vmmc-supply
of SD card both originate from the VCC3V3_S0 regulator, fix it.

https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=621bb09a76fa12a9e61c9d745ae524db86abf781

Thanks,
Chukun

