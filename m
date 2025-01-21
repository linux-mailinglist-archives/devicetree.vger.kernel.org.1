Return-Path: <devicetree+bounces-139994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5213CA17BBB
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 11:31:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BFA316594C
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 10:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B20041F0E34;
	Tue, 21 Jan 2025 10:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="kI114FQi";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="qAeQKRcc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118981DF983;
	Tue, 21 Jan 2025 10:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737455451; cv=none; b=lM31uowheatSn9vozz2okQ8cJ63/zOUUwsu/bKWLvuFqkdmAnLjSoPoTcBZ8YcN+2jXV/RecKgSs0nttTbtzjzkjX5qPBdhSqs3ecZVJw5lBoO/AZI0UG/TNwieT9LRbOZHsuV0virsor74KJLV0OuK1s84FEJRqkcPlAilrlLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737455451; c=relaxed/simple;
	bh=JYeyBbC+sYeV9QG0niAVNzhsmxHNLA5PocCA1FLzw4M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PvNvXNlaXkKzUCEz7d0WjzigKnqrmoyCdz2HuIwNCYSM9i7JV4wi7Ckb5u+X28eDzkD2nuhQe+um4CpWqPVwIl/npzByFF7yjhp1dtj8ReDGoAYysP2d3yAaXpt+7boBz7ZlAfz9aaVGRYnnGB13emmFqmWMVW83iSINQQ3s9tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=kI114FQi; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=qAeQKRcc reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1737455449; x=1768991449;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=tlsQlCfHIq8vz2iy0CiSylKrrpSDs+IY+o+lQyf3C0k=;
  b=kI114FQi1bISbzV1ypJfn4ZnvEgla+I0VRgw5HThws9Ib+iDxAhQbE/8
   fcUNaI90CsljxJ4fv3JHLglsk2EE8fHj68LkHrKDkrnFnoeNqsWGT37wq
   1BAF09w64pTAdgxg8yeG4Kp0h+OnbsK82CFg0WNbrra7nPIbgbA7TDD4V
   NqsS30Qza1yl8qlpv18S2JCHgoV5YnaSYlNzJMmd+t+TH4q0H2AwH7MCZ
   BuBMb8Jx3UyIsJHzXCI1YmI9n78Fuq4k6zfw8uPJaj2X4ges49SJtjuwR
   /pMk9y5HnAxqMXYA46ZwoV0pTfXJRL9a/zmoPHZtNrwd7SmcJCjpCDKCx
   Q==;
X-CSE-ConnectionGUID: r9WjoSbqRruXpBNY16awEQ==
X-CSE-MsgGUID: 727sMbwzTsy9F+LICVegPg==
X-IronPort-AV: E=Sophos;i="6.13,221,1732575600"; 
   d="scan'208";a="41196369"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 21 Jan 2025 11:30:46 +0100
X-CheckPoint: {678F7756-3E-3C670366-E45AD810}
X-MAIL-CPID: FF8A12664048BA2D1665EDA16725E622_4
X-Control-Analysis: str=0001.0A682F22.678F7757.0010,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E97541636B1;
	Tue, 21 Jan 2025 11:30:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1737455442;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tlsQlCfHIq8vz2iy0CiSylKrrpSDs+IY+o+lQyf3C0k=;
	b=qAeQKRccwtvxt/kwm26hatik7fnK7x3FQgE4C4/d+bmmi+3LYMH9exhrwH3nCbs4Aav82F
	WFI76tRFq+4DpTvd4li9pWvn43SDkWt/MzejPAPy+UthW4AcZnPNpNdBDrY7b/NWyhYUkG
	L0pE6s0ng5UE6x4ErL97Hiqa1X5OijH9Ey4NqifrPGsdohNuVBsiZAs/AfGSVu8lqgapLo
	CfW9LbSiDSV26uRc97JP7UXAd8l1wXaN7DL4j9TQOxwaaV0XDZ9qmaV+l+prfMgXOXmk4z
	bA7rSUFpHR0SckKlUOa8nY18GUaQe0BMkjNhVFTvPxNhwGJU6CTO+59/B90POA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: freescale: tqma8mq: Add vcc-supply for spi-nor
Date: Tue, 21 Jan 2025 11:30:23 +0100
Message-Id: <20250121103026.1404856-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250121103026.1404856-1-alexander.stein@ew.tq-group.com>
References: <20250121103026.1404856-1-alexander.stein@ew.tq-group.com>
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
 arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
index 01e5092e4c40a..c92001c80f114 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq.dtsi
@@ -254,6 +254,7 @@ flash0: flash@0 {
 		spi-max-frequency = <84000000>;
 		spi-tx-bus-width = <1>;
 		spi-rx-bus-width = <4>;
+		vcc-supply = <&nvcc_1v8_reg>;
 
 		partitions {
 			compatible = "fixed-partitions";
-- 
2.34.1


