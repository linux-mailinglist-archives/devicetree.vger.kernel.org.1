Return-Path: <devicetree+bounces-136163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BBFA041A4
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:07:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9DA13A57AF
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 325821F76CE;
	Tue,  7 Jan 2025 14:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="MVgegVoj";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="idYU8onf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8921F2C34;
	Tue,  7 Jan 2025 14:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258499; cv=none; b=ekyIeEnigrtsXj4ZGxNLsN6xMDjRwD9psCQuPaxCvOvWwNP9PK+ig3y17ysS+Bmv477Gy8n7BBBDmc2ArY1FSHvU/Z7nAdBtrA3V63xyp5Bd2aUtNfWYXhwCsEI4/a+CwHtFzDbAVyH5o1S7Fnuv5ZtETM6c1C0WuiYsW0d6/NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258499; c=relaxed/simple;
	bh=ctONgW4itzthiTLwY/Q+NsJ1fzIxeEKjeCx8EwY0Xzc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=j1zM728vZXgR3cG7KY1ZYIRUWewoAvOD/qZwN7y8iywZm5o2jgKU70fYnnPVqWZLwjiseH/uom212+vEvioOn7u8ak/O/N+gkxJNZB4m6BnANGU+OTOLKxnPCH/z1FayN4wfBuzATxEYQof2wD3Mg//tZ3WAr6yXSFdyDtA3qZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=MVgegVoj; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=idYU8onf reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736258492; x=1767794492;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=bec8u+1NcRe5MOhOgFsUDfbyCQeJhWQLLR/Hj+tPPhY=;
  b=MVgegVojW1pnvpNPv3KmDviiEgd1JDgpM4gT/35YgK4QL0m5C2toubeI
   64OcftWcT8CCrAMrjdv+XJZpynuvO7eHKuPOxOL9VcBMIPBS+3cGeG9Um
   MTNzabwTOTXHwkhvXff5QoZMoHYmOrKuWrEZ4qHvcWdpFxCUku80l3ReV
   rcBQ7uKy8o6A4icDB2Ttt8Qw62VY023lc1ciykPs+pxyMmmZHA71XFG6V
   8vTXge6bowvaGw9/4E8Xo+UXNdIlRjXWCNE1k2kBfpeEd16SBPXsDkuV5
   D713NwpVefPxN1QmW6BS/dEg+cNwooyb+XEAbpPDZgBhV2I27v9ORJcgD
   w==;
X-CSE-ConnectionGUID: OlD5Y6KiTVSl3Sim39BQkQ==
X-CSE-MsgGUID: UnoUyx6LQcmtncIo8MSlSQ==
X-IronPort-AV: E=Sophos;i="6.12,295,1728943200"; 
   d="scan'208";a="40896219"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 07 Jan 2025 15:01:31 +0100
X-CheckPoint: {677D33BB-13-1CE016C0-E589DA3E}
X-MAIL-CPID: DF236D25597C7ACC707A8E20B831674A_1
X-Control-Analysis: str=0001.0A682F28.677D33BB.0087,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5FC03164EE8;
	Tue,  7 Jan 2025 15:01:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736258487;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bec8u+1NcRe5MOhOgFsUDfbyCQeJhWQLLR/Hj+tPPhY=;
	b=idYU8onfqkDJ+YHA7tuREnGQuUz8yKBy8QQ/dLM4+u2rYVvxFjGrNnnrsCKFdk4kEngqAF
	3/3K2LQncWqt/1ftsy0+K7mY9kH4Q5uNDgRUxemOMsGktMpibheUcBh5QeERJ8x3f80dXt
	I96J9Qjk3H8iTKrBs2r7OD8OkY7C0OapkFA6mY/5am+HO16at2FT0xWG2ywLIRO5l7CUY1
	xfu9+CoDQO4VUzVByQLWEYsRfUKhNAbhpI2If3p10iQC8i9SnKjsVSk5ZhNvVOD3oXQMfG
	Guj4fbvm5sW5BjyYYkc/gvtYnXGmQPEZ0Nsu40AwEqPTOZwnnmf42Xp8ZUD7OQ==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com
Subject: [PATCH 2/5] arm64: dts: tqma8xx: Add vcc-supply for spi-nor
Date: Tue,  7 Jan 2025 15:01:07 +0100
Message-Id: <20250107140110.982215-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250107140110.982215-1-alexander.stein@ew.tq-group.com>
References: <20250107140110.982215-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

(Q)SPI NOR flash is supplied by 1.8V. Add the corresponding supply.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/tqma8xx.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/tqma8xx.dtsi b/arch/arm64/boot/dts/freescale/tqma8xx.dtsi
index 366912bf3d5e5..86b4e2b75adba 100644
--- a/arch/arm64/boot/dts/freescale/tqma8xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/tqma8xx.dtsi
@@ -65,6 +65,7 @@ flash0: flash@0 {
 		spi-max-frequency = <66000000>;
 		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <4>;
+		vcc-supply = <&reg_1v8>;
 
 		partitions {
 			compatible = "fixed-partitions";
-- 
2.34.1


