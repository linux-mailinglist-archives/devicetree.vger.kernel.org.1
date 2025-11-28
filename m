Return-Path: <devicetree+bounces-242901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2B7C91022
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 08:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DDF9134FB16
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 07:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 915912D7DD1;
	Fri, 28 Nov 2025 07:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b="WNXwQWcr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgbr2.qq.com (smtpbgbr2.qq.com [54.207.22.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0552D5C8E;
	Fri, 28 Nov 2025 07:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.207.22.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764314026; cv=none; b=tDhvAQ6LQcpTSFZe8qQ6rjRsfvkexmXy9jMN4Ae/cD12vX51VgqzdlDbLbo2LCUY6jIICBihT8JphgWHpMK77oZVcvKPoaJPoGwiJeDWXq8GcamMepldxMv5sxBonCA2clG1sI7FtxYvJ62Cck9us4Q1KyKB5l/V9H/y982MjJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764314026; c=relaxed/simple;
	bh=ZE8RrK7vXOIiyiPm5GvZG8/2gl/OXY1eSjMwMyYpiaI=;
	h=From:To:Cc:Subject:Date:Message-Id; b=WRFfjMlkFaKTeFevzW6iAXsCC7PE664892A+qoB9E/+EBBJ2wljz4F41xAjWFJpDtaeWiBt+WP4HD2POtOXhmXMwqXjbUqdCGnss8LYajV0WENJZTAX36JpJmKpTNVqDOhKTlwSFL49fuV/zVPkODqnsKLtcC97t3qCXjZ324w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com; spf=pass smtp.mailfrom=airkyi.com; dkim=pass (1024-bit key) header.d=airkyi.com header.i=@airkyi.com header.b=WNXwQWcr; arc=none smtp.client-ip=54.207.22.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=airkyi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=airkyi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1764314010;
	bh=8r9aJGmUsw4md2Y+21WpPtb3FONAryJYnibLGFu+eE0=;
	h=From:To:Subject:Date:Message-Id;
	b=WNXwQWcri6/NjHZvi1TqSClYq2jwqlVZWFxjJ4/Omr1Zhi4Qnd+Pr/xFGMUA1pUmC
	 KVT+uQQgCkSrqUK9+av/CVUc/U0iGWXzc+M1hxbkb73Nwk4Mpr9W+FFxHaZsfSjRfF
	 lCvO+TokdXjmTlN0EkLyLloj3GBobcc3Z7YgTM8s=
X-QQ-mid: zesmtpsz7t1764314006t744032d7
X-QQ-Originating-IP: Mdi+Vc0qxw+qp6bUZ2zG3LK3yAZHFIYKYMa1h3TPCNE=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 28 Nov 2025 15:13:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2142567719846038083
From: Chaoyi Chen <kernel@airkyi.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH v2 0/2] iommu/rockchip: Add support for multiple interface clocks
Date: Fri, 28 Nov 2025 15:13:20 +0800
Message-Id: <20251128071322.92-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MP6adJLF6rB8BWB4wABoWFxAfaTKvdOtB6MSYIjQvTU9eoccbgMzjHSA
	1J8m5SxA00zg3+tgzuwp3sdnWjPSpNV3epggKrVrs4XJgudt8+EHLSZ0z8qvI7qmTRqKysd
	BRTxx1X00aHjx4yqBJAXYLZaoRWxpJwSgXpTktNJ3d8PjZSnzfPdTod9UyBrFssr+Hme9jB
	rcPkgFBJXHDuSWED38kU+MyH20drAK138geUC6ImX8CcR2qK9Ff6J/yMPwdbUeCM1riQWEC
	9ED9LH7YVBVNtaz2eN078qCrenVJViHN4RxCZSeSX0UZ0ZpsTux/KOa2pHZ1oEwUn6nJurQ
	a879hTSnAIrc+A7PSkwb5DC2t3q5VN7/IRNgBRQP9NB03NzuagzsWMpWge3NKIHLnP0+UUO
	YPepuszWDkSGt1/czuIOJPTcwxMK7iolj1uRr1KmBrsRUnRZD9414e28JweOJ0hMw4UqIRO
	hqiRxehiTD0EQ/3yWxJ4lhqWpbI4V2slYJDWjR2k70qMNSizdt1GNej8USmDdWiT/GrUVWI
	CKXXBdwyTKa5zxWD5I9X+nFWlZwG30kFTUY6jZepk/xQegWh/ZfJUy5CVqCg5oiRzhN/i/k
	sD7AqDzE19TDwjoLJ2WrFkkxUZczxMYlJ3zRGw2tirha7RgMwA0fEZrTxcFqXeDH7T4caz5
	lQTrsbdZTwamTJlABfahEIot7ScIRW530KWnFtMwIgrfACit88tAHSEC/fQ5tYeDCFtBANg
	sO9grMg0NZgBahLA7VR/vzs6KxVUUduiVZmY0U6kctsi0V3hoPPQRuEwZTyVgLDWsEFTCPo
	7KrxqyRyYa7zWwTkpKBRbfQF1Vbh//xi2m+4yepvdbdgizLXn2hEC4gKujBGfA9ZyLCDLW0
	y394jphQUrTbpIt/cwdKQnD+zirwlpAFnO5LfAywjrz1kNogNv3V9zd3ZEcIgSiE5JH2xcX
	1FYobiAG73PW2GS+j1jYgOSoYfGRzyC9uBHG1V9BK3pagzkEwzybJGQNZSB5X5ZhwyKy4Ty
	e9fgw6yg==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Hi,

Some rockchip iommus require extra clocks besides aclk and interface
clock, such as the iommus for NPU and RKVENC in RK3576.

Changes in v2:
- Link to v1: https://lore.kernel.org/all/20251126083345.88-1-kernel@airkyi.com/
- Rewrite dt binding.

Chaoyi Chen (2):
  dt-bindings: iommu: rockchip: Add support for multiple interface
    clocks
  iommu/rockchip: Use devm_clk_bulk_get_all() to get multiple iface
    clock

 .../bindings/iommu/rockchip,iommu.yaml        | 52 ++++++++++++++++---
 drivers/iommu/rockchip-iommu.c                | 20 ++-----
 2 files changed, 50 insertions(+), 22 deletions(-)

-- 
2.51.1


