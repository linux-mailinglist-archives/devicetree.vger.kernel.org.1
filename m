Return-Path: <devicetree+bounces-238153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 636BAC57D46
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 15:03:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C1116357274
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 14:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 657C1261393;
	Thu, 13 Nov 2025 14:01:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m49197.qiye.163.com (mail-m49197.qiye.163.com [45.254.49.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28596221FCF
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 14:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.254.49.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763042475; cv=none; b=ZW7ef0a9Z8py8uT57FgyxVIXuADJvFOTHmN60PgG03Pg3Fxb6P9qLVSA3SHan7ru9Gzjb4fUdpjt89z43P3B7hcXX7KWOL2sw3b6U/0qN2+cRcTP5i1UqC74g8nAqWi4XjSHMSVbzb5ztvDSH2mn/BRkg8MKEalsP8cdFOrP0zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763042475; c=relaxed/simple;
	bh=h+h4upm/LaOvP2ZwubEqbg/5N2I1FFn31plis4OrkeU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=d70Loy/+QReRApCbqQY69cTJJuwbwXuuCbR4wIYE4uHigs/O6h7aoXWDH+RrVgSXLdlIwkMnWox2uA875Hhb5LPOlbrVkhzSXVyJ+1Oh/KCWJN4qtezJShnLfgS0zN/hviZiBXG59nIJs8X5pDXlo/s9yRZk2qgc/6s56GNzwvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.254.49.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from localhost.localdomain (unknown [58.61.140.134])
	by smtp.qiye.163.com (Hmail) with ESMTP id 297cfdf04;
	Thu, 13 Nov 2025 22:01:05 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: alchark@gmail.com,
	amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
Date: Thu, 13 Nov 2025 22:00:20 +0800
Message-Id: <20251113140020.919159-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251112035133.28753-5-naoki@radxa.com>
References: <20251112035133.28753-5-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9a7d85162e03a2kunmbae28cdc135b3d
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGEpOVhlCQk4dQ0tLHk5JHlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0tVSkhPWVdZFhoPEhUdFFlBWU9LSFVKS0hKTkxOVUpLS1VKQk
	tLWQY+

Hi,

> Make the BL24C16 EEPROM chips found on Radxa ROCK 3C, 5A and 5C SBCs
> read-only, [1] [2] [3] because they contain factory-programmed data
> that isn't supposed to be modified by the end users. [4]

Is this true? I confirmed that the EEPROM was empty when I submitted
the ROCK 3C support. Based on the Radxa boards I purchased, it seems
that only the "Network Computer" series SBC (E20C, E24C, E52C, E54C)
have production information in their EEPROM.

Thanks,
Chukun

