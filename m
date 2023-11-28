Return-Path: <devicetree+bounces-19772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1377FC80D
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 22:35:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AA73282BB6
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 21:35:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2492846B9B;
	Tue, 28 Nov 2023 21:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="cbk9zdgl"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14AD912C;
	Tue, 28 Nov 2023 13:35:40 -0800 (PST)
Received: from beast.luon.net (cola.collaboradmins.com [IPv6:2a01:4f8:1c1c:5717::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BF98766022D3;
	Tue, 28 Nov 2023 21:35:38 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701207338;
	bh=sv/2D1zMBLJgchnhIhV6rK/+bWi0GcCcH0kKNpe62Ws=;
	h=From:To:Cc:Subject:Date:From;
	b=cbk9zdgl0apMId4gfLfr4H/GO4fNNOOaJLurMJ40z0HDkC0g97Zu1F4q/cGGhqQZ3
	 IvQ9EFdhtt6eicA1jz8CY3Gu+ch5HR/Tf67mF5DxZ2fWJR08TZ3bSItPyCjWiQL0nZ
	 IyEnNLxwQrQ0qwT5QO2pPEQQGYyAtaeNqmcqY5DBX5Nff9RZ/AMlCfO5XXp3Smvm8q
	 hR1tuT/wX7PFnkJRm3gvyVHiu9j/geX+Ouyx6UC3VxJrupIiNehsRHnFZrY72O3/Oh
	 KMSAqJ0UyFEYxYvd8+rghc1aDnxKEGf/FRvc59IDPI4HBJ95dDuBju946ODg7ymIIO
	 kdwxp4X+t1XJA==
Received: by beast.luon.net (Postfix, from userid 1000)
	id E9D929676CF8; Tue, 28 Nov 2023 22:35:36 +0100 (CET)
From: Sjoerd Simons <sjoerd@collabora.com>
To: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Cc: =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
	kernel@collabora.com,
	Andrew Lunn <andrew@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] Moxtet bus fixes
Date: Tue, 28 Nov 2023 22:35:03 +0100
Message-ID: <20231128213536.3764212-1-sjoerd@collabora.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


It seems the moxtet bus support was broken since 21aad8ba615e ("arm64:
dts: armada-3720-turris-mox: Add missing interrupt for RTC") for two
reasons:
* The moxtet irq isn't marked as shared so the driver fails to load if
  the rtc driver gets set up first.
* The dts change didn't set the IRQ type, so in case the rtc driver got
  probed first irq setup ended up wrong (rising instead of falling edge).

On top of that the moxtet module isn't auto-loading due to a missing spi
table

Changes in v2:
- Add cover letter
- Add patch to set the irq type

Sjoerd Simons (3):
  bus: moxtet: Mark the irq as shared
  bus: moxtet: Add spi device table
  arm64: dts: armada-3720-turris-mox: set irq type for RTC

 arch/arm64/boot/dts/marvell/armada-3720-turris-mox.dts | 2 +-
 drivers/bus/moxtet.c                                   | 9 ++++++++-
 2 files changed, 9 insertions(+), 2 deletions(-)

-- 
2.43.0


