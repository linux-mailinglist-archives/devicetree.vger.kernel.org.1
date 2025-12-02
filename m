Return-Path: <devicetree+bounces-243726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F08C9BAB7
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 14:50:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 907AF3A2722
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 13:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BD40313266;
	Tue,  2 Dec 2025 13:50:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155101.qiye.163.com (mail-m155101.qiye.163.com [101.71.155.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE673115BD
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 13:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764683431; cv=none; b=FoRLgFaOgnduWuB8FFlsB9yipMV858LRUb6LrpLyabPMYwUvmGgaVfCmvsfCOqe3Q1cj4YgKz5Ziea2f0YIE9hh8GubwPQjIpVg1GQpqiU1fjldUybko3Iv1hkoMtzRzsfvNjJrrLDz6gfDfmP49xc0Jwqf2I74z+NWEJz73HAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764683431; c=relaxed/simple;
	bh=e7HIhqh05+94LfCPTLtuXJCvoU84UwkbI2pn1liFaWg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jji1Vu3PUW4cUSVeVSuq0Ey8Hz06Ogi6r4U7qf5x2hDqWmQRpAQ6JiQLs7gg45QgGfQhI+D8hkhkdkR2Qu8MJms8y64H7eJ5xWVPeaViy8TEta6BD4AWeqsDukatXkgoSJgd1l/sIyMwa+6MDICQBXR2E4IuTL47wGbwO9e+n6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=101.71.155.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [119.122.215.79])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2bb30d74b;
	Tue, 2 Dec 2025 21:50:16 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
Date: Tue,  2 Dec 2025 21:50:08 +0800
Message-Id: <20251202135008.513685-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251201144629.135570-1-naoki@radxa.com>
References: <20251201144629.135570-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9adf54053303a2kunm3401432dd8698
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCH05IVklPSUpPTkJNTU1OHVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVMQllXWRYaDxIVHRRZQVlPS0hVSktJQk1LSlVKS0tVS1
	kG

Hi,

> Fixes: ee219017ddb50 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
> Fixes: 3ddf5cdb77e6e ("arm64: dts: rockchip: add Radxa ROCK 5C")

Since the EEPROM on these boards are empty, this patch doesn't
fix anything, so the Fixes tag is not needed here. If you want
it to be backported, you can add "Cc: stable@vger.kernel.org"

Thanks,
Chukun

