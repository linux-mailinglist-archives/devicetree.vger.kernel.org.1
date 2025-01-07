Return-Path: <devicetree+bounces-136165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53062A04198
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:06:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6C0E17A020D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 14:06:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 879641F76BF;
	Tue,  7 Jan 2025 14:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="bjnXdNtQ";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="gIEQmtsW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7692C1F76D9;
	Tue,  7 Jan 2025 14:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258510; cv=none; b=pjga7JYNm4KNeKhfOGVMEMCZQwBIp/q0wOxYeZKv8vualFz3v1QB0NUFZOT0lvIQjFD/ilwShaLfjGYtLCoCo2Lmc56G4lVuiyifWP63uoMlOyd8Ga3PAMj56ue8CSKn/XfLn02QCjgjNnx4lw9K4vBGu1jGbtOKs64EOeMWZaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258510; c=relaxed/simple;
	bh=XEJ6HK4rNn/2zQ3xI9uSveehlb7j5k6ReGzkDfhu76A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qHSqmTzo8gwI6cIwoz9og5rKkzphbg+XWxrVYk9Pr4CXMd3BplrlCON5gJdaUld3T/zFlbqyO4+vuHx3OQh8lKVvqmU8/AJjHBmlDZu4jcC2ZttjTtfQMbGX8GPcm7vNywtAmXS5Y7agiorLSekPQxWxnWfk4U81CYKGMrYlpSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=bjnXdNtQ; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=gIEQmtsW reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736258504; x=1767794504;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Q1XD9U4StAFSYqOP2eTxiCR4wjRB2kUp7ZaqDyYPEZA=;
  b=bjnXdNtQEHUdXSjtFxxxMuFp7nEyzXdxyHPHaOX80WIHmLBJ3Qg3Ppfe
   mfcTvhrdGDVcEtQNKusx6lwpr3alekjkno03HfS/VgmGsy++9nTTeLYOz
   sARYwWTvZ1aMGGOupz0QXUE/RlxS7qqxA4uGYLihAm6vMKxpAcQsx4fY0
   uWsZCuqOECsHYOWIzNKffzRaclAqXQIKHKZfKAnVoM9HfczZ21BUiY6fD
   kfo1HDmxW7BYDOu7iia2zDVHkAEAUY8bJnDfSGL7fJfIVCW/HiPJbwi0p
   5MNZXRmA/fnD91z8u9n2S5WWpo5dVFyJdsA7mU26sxZAuG5C9qekMJw4H
   g==;
X-CSE-ConnectionGUID: GfXL6MakQDK+HcvJTisHHg==
X-CSE-MsgGUID: oJX5ki0jSguRNjkjSHYVvA==
X-IronPort-AV: E=Sophos;i="6.12,295,1728943200"; 
   d="scan'208";a="40896228"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 07 Jan 2025 15:01:42 +0100
X-CheckPoint: {677D33C6-6-1D00F64B-E6C57517}
X-MAIL-CPID: C00BCC96483421507554777F05D4DDA4_3
X-Control-Analysis: str=0001.0A682F1C.677D33C6.0040,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 171B0164B12;
	Tue,  7 Jan 2025 15:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736258497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q1XD9U4StAFSYqOP2eTxiCR4wjRB2kUp7ZaqDyYPEZA=;
	b=gIEQmtsWVR7vCFrnQQem9F222ipijPihSgz8s2jp3qdWw1hpt6PaphqO6yZIXEJtv+JiQu
	/7bU4JlRAs8F6dK+XjQgbJIb+Vpp3XL+is9VjbiK3j+mPEzWfzPrRzDiruTDRnxoUT3+ZY
	k4fLWSvYNakdetzn8VLuZeXuIs0L7q/FcI7F7kpssKssRVXN8LC3vj5wr4SRnlSiTtSFeD
	FcjT9YIN20++Kz/oNk458XKbRP2Y/QPBvizXjc3k+qh8OH4Ij+xYZgQWeV7D/iQ03iu+CB
	PCIgffNc0vbeGXpupO+ZtIeL1oD/wMVmtwGRwXiXFfELVGJxYJ3HPIFRV0FcMg==
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
Subject: [PATCH 4/5] arm64: dts: tqma8xx: Remove GPU TODO
Date: Tue,  7 Jan 2025 15:01:09 +0100
Message-Id: <20250107140110.982215-5-alexander.stein@ew.tq-group.com>
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

Since commit 6196fe777513b ("arm64: dts: imx8qxp: add GPU nodes") GPUs
are supported.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/tqma8xx.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/tqma8xx.dtsi b/arch/arm64/boot/dts/freescale/tqma8xx.dtsi
index 50aa41e3b6d51..58693b774d4c8 100644
--- a/arch/arm64/boot/dts/freescale/tqma8xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/tqma8xx.dtsi
@@ -75,8 +75,6 @@ partitions {
 	};
 };
 
-/* TODO GPU */
-
 &i2c1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-- 
2.34.1


