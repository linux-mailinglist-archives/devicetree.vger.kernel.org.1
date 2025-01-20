Return-Path: <devicetree+bounces-139648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D30A167C1
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 08:55:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AC7F67A1052
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 07:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D4D419046E;
	Mon, 20 Jan 2025 07:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="rhqpwzp0"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AA5140E3C;
	Mon, 20 Jan 2025 07:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.245
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737359737; cv=none; b=ptjGYNtel1nP5JBBinIf6HjofWBpHrlB2te7UCn248ktaAsUTQysAoKtMGuSSvDt6j4YISMOiqZS4vbKIVnz00qhE+fOi5VxVgy4UUdKxzHGdwKtE7rS64fT1TEEPMJZ9L+O1R0b4QvYK5Xwffs20x6n+sGqbppCN1QQF0RzbWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737359737; c=relaxed/simple;
	bh=14AM3i6WtkPw8uVXWf2dyrxE+02kTGvO4Yahi8XOO0U=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=hXxCpD3nD+Tb5wUOIDwgyu3cq9PZ6Bsb04J0GZtuHRvqOsaQb213V1fXFXWCoQjIuoWp/ITCA7+tL8ckTPYBQpFUMyfKfNURcDNJSOb43bNp/Fcfa8lPCYAAsKt/pEvEsxImXEj7s3TpImju+zHlfVr9pho4ERnjOc56c9uUUhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=rhqpwzp0; arc=none smtp.client-ip=198.47.19.245
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50K7tDkC599415
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 20 Jan 2025 01:55:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737359713;
	bh=J8hAzpqhK+r7FJNtEnXIvhOhfkNchLyGSgqsngobflg=;
	h=From:To:Subject:Date;
	b=rhqpwzp0OynM4Vy13jMidlULjWtm039wwYrf65z/4SS42EPAuhcI0+1e3hr9XR+qo
	 7r4v5Z8XtKMH5+F0zpAsrdUT061q9je57nNeJW+7Su31LmHTX4O8M30jp70phjCTnQ
	 B3B/KqQn3ZrJRsXuS4vCA5F74AbztbbxMKDCMTjk=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50K7tD73038264;
	Mon, 20 Jan 2025 01:55:13 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 20
 Jan 2025 01:55:09 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 20 Jan 2025 01:55:09 -0600
Received: from uda0498651.dhcp.ti.com (uda0498651.dhcp.ti.com [172.24.227.7])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50K7t6hY036694;
	Mon, 20 Jan 2025 01:55:06 -0600
From: Sai Sree Kartheek Adivi <s-adivi@ti.com>
To: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: ti: k3-am62a-mcu: enable mcu domain pinmux
Date: Mon, 20 Jan 2025 13:24:42 +0530
Message-ID: <20250120075442.181191-1-s-adivi@ti.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Enable mcu domain pinmux by default to be able to access mcu domain
peripherals from main domain.

This also makes it consistent with the rest of the k3 platforms where
mcu domain pinmux is enabled by default.

Signed-off-by: Sai Sree Kartheek Adivi <s-adivi@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
index 0469c766b769e..9ed9d703ff24d 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
@@ -12,7 +12,6 @@ mcu_pmx0: pinctrl@4084000 {
 		#pinctrl-cells = <1>;
 		pinctrl-single,register-width = <32>;
 		pinctrl-single,function-mask = <0xffffffff>;
-		status = "disabled";
 	};
 
 	mcu_esm: esm@4100000 {
-- 
2.34.1


