Return-Path: <devicetree+bounces-78818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A447791379C
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 06:23:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55D3E1F21B92
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 04:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5781B125D6;
	Sun, 23 Jun 2024 04:23:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m243.xmail.ntesmail.com (mail-m243.xmail.ntesmail.com [45.195.24.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18AA9473
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 04:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.195.24.3
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719116603; cv=none; b=PmvqH8JmiJ5HKan9oM7qtMcApVn2XeYBn1kvl+jRBhHkTIg21Pd+43DxxNNPh7gGoe0UWD8sgzEUYjCYhZqw6V7tkyo1x9lMoQV3UA4cCwDC/beKpEVt07XMnNIgpMUxE1/QAd/y51EmS+n+MEUxgtakQsOCiEaSVzAsqihZEFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719116603; c=relaxed/simple;
	bh=QjJftPKU4rJlBQ0fKHtCicRGbzJs5CcO3uapC90jZjA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=rGF8JPgfzwCbKEkLQgyuhaSLjmfhklT/E0nTlOjVJJC7yzkiwmT0UUU7Hd/mLSDz3gIDihiMXhsQb0P0gxEBtkC1vuJVNNPS3jfvwkJBJfm6LpUaWXOcIJ9daaUhTEQW1enXy+ShTryInOHd8Mu3LmfuI0M1N8gbuIyPBkCJuyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn; spf=pass smtp.mailfrom=jmu.edu.cn; arc=none smtp.client-ip=45.195.24.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jmu.edu.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jmu.edu.cn
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:9890:bf8:dc2c:bace:c7cf])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 98F7F7E0166;
	Sun, 23 Jun 2024 12:04:13 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: naoki@radxa.com
Cc: amadeus@jmu.edu.cn,
	chris.obbard@collabora.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK 3C
Date: Sun, 23 Jun 2024 12:04:09 +0800
Message-Id: <20240623040409.1756986-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240623023329.1044-3-naoki@radxa.com>
References: <20240623023329.1044-3-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSU9JVk5PTktOTEJLT0xNSVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtKQUJDQktBGR1DQR8YSRhBGRoYHkEYTBgdWVdZFhoPEh
	UdFFlBWU9LSFVKS0lPT09LVUpLS1VLWQY+
X-HM-Tid: 0a90434415a203a2kunm98f7f7e0166
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P1E6Sio5SzNLTj8DNxQ2SSE1
	KhoKCxBVSlVKTEpCSkpOT05PSUtCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBQkNCS0EZHUNBHxhJGEEZGhgeQRhMGB1ZV1kIAVlBSk1JQzcG

Hi, 
> SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.

I don't think a fixes tag is needed, because there is no documentation
for this. See also (sfc part):
https://lore.kernel.org/lkml/d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se/

>
> Fixes: ee219017ddb5 ("arm64: dts: rockchip: Add Radxa ROCK 3C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Thanks,
Chukun

-- 
2.25.1


