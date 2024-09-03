Return-Path: <devicetree+bounces-99406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F14B8969AD8
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 12:54:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D8601C239F0
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 10:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C5F81D0957;
	Tue,  3 Sep 2024 10:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="AOnmScQF"
X-Original-To: devicetree@vger.kernel.org
Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B51A1C9858
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 10:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725360786; cv=none; b=ZuEK39j8lmUvC45Ui4L3gdRl9K/ErKi1LHmYVpAHDMO+l0eUhsA+XrbbJgQorm6/+6GLeAriyqtFQdDnmB20t/jaLMa69IyUIUBghKfiPB2gxE9nO8NDQQaKd9iC1kbktp9Ydl5Tey25IHrq3Ri2IlJ4Rv3YtG8upcigbO6opgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725360786; c=relaxed/simple;
	bh=PPLqb9L4Lb33YUhzlJHIMEdQ1CsCgkDnOf0oU80gaVA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=pRPQ3Aad0DmhzA1a4jGQRFZa8JU1oCpG7TPDVcTgXNy3e1B7WeS6GkTsOuRbDcd4NyRLVcDZIxz5HKBk2uTtQczv9BKFp3+0ZcvUayWoNaYVBQiFMQ1WJpfsSoQSVxXi/XxhS7Ect9GLrRNV7zjQYBYvOrA0bBZGRUAepSETpuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=AOnmScQF; arc=none smtp.client-ip=44.202.169.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5004a.ext.cloudfilter.net ([10.0.29.221])
	by cmsmtp with ESMTPS
	id lMpdsfyTdg2lzlR9hsXb7K; Tue, 03 Sep 2024 10:53:01 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9esQefQ0vWTlR9fsuSyr; Tue, 03 Sep 2024 10:53:00 +0000
X-Authority-Analysis: v=2.4 cv=ffZmyFQF c=1 sm=1 tr=0 ts=66d6ea8c
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=VwQbUJbxAAAA:8
 a=rT7NhT99x2eMfdz9cs0A:9 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
	:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=UppZcDWe1uFAJ+bvasF5er5A9xgV/I9BZ+SAKDSsjpM=; b=AOnmScQFEyQEi8MZEiPr8iondE
	FltM80ZG0elT5XHBVsklYzWtsA/cF7y5n7qds476Vjvb4GOGGIZ7CuakK4q6IM07bM3pqsvgW2stH
	g053R1U2d9Pi/bd410RNCBVxd1l12Td3A2muyhWvOsFwDv1Bz1JqEgsYrKkyqlaz9TGSOlgIGboIO
	LDKzzeg6ABnbgokk4ZfuOe0RzzRdQsg6OAiEGeqZkTOMhhkFcA+32nbwa6K1LNSJJoCK7a19aArXt
	tA9XuawYa6emQMHar3wnm/yM+Qg02FEly2b4l1i/kPD+dw9QP6WGqVFUdeui2Em6Y5BYT5Zh/V8ri
	s2LlJZBQ==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9d-000Elu-0i;
	Tue, 03 Sep 2024 16:22:57 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH v2 0/8] Add support Relfor Saib board which is based on Rockchip RV1109 SoC 
Date: Tue,  3 Sep 2024 16:22:37 +0530
Message-Id: <20240903105245.715899-1-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slR9d-000Elu-0i
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 6
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfAqRRDAJYfKyvobSIYhOZDnuCx6tG3oP20euiWg/yE+pAhJejOhCex0wClV+vLBev5Qq2jVLlR5RljtwRR/ZSrRVDmKCOHLX9B+TkLFaRZT0ikZusQUg
 qHHYBV/Q3KZsENqd2cZXaC9sNbJeWwtAiRKUIahH4pyY0BBXDWOg3ERSOhzmvHFBf3zu+gUTnJKzOVNZgjzKgaJLXk5J19JOgpc=

Rockchip RV1109 is compatible with Rockchip RV1126.
In this series, adding required missing peripheral in
RV1126 and its pin mux.

Relfor Saib board is equipped with 1GB of RAM and 4GB of eMMC
Pheripherals like Bluetooth 4.2, Wifi 5G, audio-codec,
ir transmitter and receiver, etc

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>

---
Changes in v2:
 - Align to the comments
 - Rebased with master
 - Link to v1: https://lore.kernel.org/all/20240823153528.3863993-1-karthikeyan@linumiz.com

---

Karthikeyan Krishnasamy (8):
  ARM: dts: rockchip: Add i2c3 node for RV1126
  ARM: dts: rockchip: Add i2s0 node for RV1126
  ARM: dts: rockchip: Add pwm node for RV1126
  ARM: dts: rockchip: Add watchdog node for RV1126
  dt-bindings: rtc: microcrystal,rv3028: add clock-cells property
  dt-bindings: vendor-prefixes: Add Relfor labs
  dt-bindings: arm: rockchip: Add Relfor Saib
  ARM: dts: rockchip: Add Relfor Saib board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../bindings/rtc/microcrystal,rv3028.yaml     |   3 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../boot/dts/rockchip/rv1109-relfor-saib.dts  | 429 ++++++++++++++++++
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 256 +++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        | 159 +++++++
 7 files changed, 855 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109-relfor-saib.dts


base-commit: 67784a74e258a467225f0e68335df77acd67b7ab
-- 
2.39.2


