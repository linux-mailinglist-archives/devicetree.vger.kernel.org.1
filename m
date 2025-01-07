Return-Path: <devicetree+bounces-136164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F157FA041A3
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AA3E160C20
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:06:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B63881F2390;
	Tue,  7 Jan 2025 14:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="RS+Vx9iS";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Sjg0BqcG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D461F2398;
	Tue,  7 Jan 2025 14:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258503; cv=none; b=Ayn+Es1mzhxqMzPb/6cniO+7on9Vq/jW/fC3noIJQK4vuao61RYcq9VgYDXsAKLxL0gyeqDOaOQqtFxTYCAoTd7uNwp9F6JtodxBUBrmRfLndXNYMz0YpwEA/IEFyRJ39G+7WbV7cStLf7p9WZwQRw1+RgKmN/zGfS8RDNyQc08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258503; c=relaxed/simple;
	bh=dXsaCpmuyNm22DOO+WMy6aI+WmKcOYdTOnisiIf1bf8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=T2cEQksiYtLCpWYRNXeRUmOKr8y9r9n2VZYsjR+6K5ZxIXwLGLJR7y3iMyLxF8G/x9OD43StVwjYuUpFrgIaZhbSw/Q0G3nH/VlpFT2utdx6Ag10Yt6B87/LbN90V3/VG2NZfkzUeE/ELMOrBzJnwnK0obsZD8CV+HeDzwQhNdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=RS+Vx9iS; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Sjg0BqcG reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736258498; x=1767794498;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=GS3pClhkPDA+LwJhdHeZUgZI8RZQtDpKghxvyQ9FWH8=;
  b=RS+Vx9iShaM17boFDsJbqJPz5AFkZsBReJ6dTO6SBZ5r2jUo8QWNWuJu
   2jpcJ0qmzdsS8gPFbww9/TMFibpJ5I0GKq66IuugEM9ywBn8FDCZP2OvR
   ZMEtxBbdqCG1SDvSFL2ezaDkzqbck5E2OUFvbF5JuQzmzvJVfypmg5w/i
   qSipKcrf6MsAGCdjeJirgbostMvmnlvCBUXUYz13cvBQxs8rg6EGXPVgR
   epgn7Po1iC4LSOMUC092pVcmmIkMAviGpEMI6qu0NsDiV8ul6ktPmoEGO
   lMojXk09oM9qOKV802N4lyebZnRy2VpGKa6tqsY2T1MqCkBDN2mIHgzCA
   A==;
X-CSE-ConnectionGUID: sijIt1uwTQ2iWSD4Mcq7Xg==
X-CSE-MsgGUID: pQkbwoTpTRC8ZL1KtKdJSA==
X-IronPort-AV: E=Sophos;i="6.12,295,1728943200"; 
   d="scan'208";a="40896224"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 07 Jan 2025 15:01:36 +0100
X-CheckPoint: {677D33C0-4A-3C670366-E45AD810}
X-MAIL-CPID: E9B2B5707E61DDE3D759F2B39E22D7DC_4
X-Control-Analysis: str=0001.0A682F21.677D33C0.00D3,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A8983164F28;
	Tue,  7 Jan 2025 15:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736258492;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GS3pClhkPDA+LwJhdHeZUgZI8RZQtDpKghxvyQ9FWH8=;
	b=Sjg0BqcGNHUmWKsaSLDRySJbRiDoIzxHxmJ8GX637wdihyry7UUk1x9akC7kDvbEhIu2ft
	fBr0zXhcgJl7GGese07uUNALW6BLca9XhwS3oZ4A3iEODSOTbGAwvmVAK0KHnI1ITxnJgN
	m0bmdBsjM8wuEM1W9JQ3xS9Zwu5h26Ou0hc9K/hf0+tk/VcyQUf+YzmI0YhmnC33i5CTBH
	pJ43souOKQKCfj0bapOSopVAUhkAYpv/DEyi2cKeIZOlylRvAdGklPDpOsY0PQzIvCkTlQ
	g76g8CtgQnt+pkNoOWQRD2Gq8yK0luDU+Zo0OUqeWdEcweSyNlr3CbLbvhpL9A==
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
Subject: [PATCH 3/5] arm64: dts: tqma8xx: enable jpeg encode and decode
Date: Tue,  7 Jan 2025 15:01:08 +0100
Message-Id: <20250107140110.982215-4-alexander.stein@ew.tq-group.com>
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

Enable jpeg encode and decode.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/tqma8xx.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/tqma8xx.dtsi b/arch/arm64/boot/dts/freescale/tqma8xx.dtsi
index 86b4e2b75adba..50aa41e3b6d51 100644
--- a/arch/arm64/boot/dts/freescale/tqma8xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/tqma8xx.dtsi
@@ -115,6 +115,15 @@ m24c64: eeprom@57 {
 	};
 };
 
+&jpegdec {
+	status = "okay";
+};
+
+&jpegenc {
+	status = "okay";
+};
+
+
 &mu_m0 {
 	status = "okay";
 };
-- 
2.34.1


