Return-Path: <devicetree+bounces-233278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 925BDC206AF
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 14:58:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 30FFF4EF24F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:55:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C118526A1D9;
	Thu, 30 Oct 2025 13:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="p0luglfQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay94-hz2.antispameurope.com (mx-relay94-hz2.antispameurope.com [94.100.136.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854C02620E5
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 13:55:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.194
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761832506; cv=pass; b=EHvnHEqsvnvhHkpTGnmElZoQdlhOwOWlzySdJPgM8+Vh0R5mfNcFD+b8hXLUTkBAXyjda1hI5IFhMt8VYkV684+J/1ZVs7gTkU6ylJLrh6Ju5/ho2et4YE8QTLV7Msvb/wnAMaVVkzEatAS2qMHJ+oMNdVygGOLlDT6XIoSwzvs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761832506; c=relaxed/simple;
	bh=Js2Xlt1TcksUkzr8bWmp3YdEt6kTQ3aB6Ws4q1qzjx8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sZJjGzHW7ZJOwV5vo44UwAjMpEA/cjmSZ3AzHg8lpd9547pGTEwx+BzFVI5t7bdOeNr65Oag4/NGMBK3PSc8HS2QnDJbAuPEVacweg99ZCpVa8u/9XyX3evuaAQc2I92ZOERjQzdpLT0U3yjOUeIO1ZygwIEExXd5HBEUIogniE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=p0luglfQ; arc=pass smtp.client-ip=94.100.136.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate94-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=OgKqByS2/RO1SRU9MW5M+/ddL3PnmL8qHsnqkvfLvhY=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1761832409;
 b=WQJEuqdvYwxs5nizNI/k7+TeawqKSxZ+lqBZuSDIov4IJnqnzS4TqEk8zvMpL5bE/7Cd3cly
 QAJ9OjqdlJGCtdu4R/8z3D/l3c0ZIFDng8rXBYJFwHGvT9wYG+l6NRx2GNtGqpyoiutJ6UrITnu
 TvXRmNzfVDBsIO+CSnAzsg6z/7j28juPsDUkBmvI2yeNiCmaFw1z8v915dweo+tq6ddypxPRTAi
 2yGraPR3zC/PQ/lqyhLupvO8ZCECGbePCHFSAuhLZq33BDGi0BGBrB/GVPlSM/rYtwhdVm/vHFi
 jDjeCh5p4weEiy9S+e9eZh1o7kjl/SNEiCwJd/t0DSg3A==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1761832409;
 b=MsS7YG+zXeuDGdxDjqGGkJQ4oxgg+fS23sEMDc6EwLualm+V7Pb9qWD6jmU6sFNCcgDlsQLh
 5kuBTBuGuGkEjpzLHgjSHq9bqMSskg/5EYcNE2eSzSepPyZFnO6B0yjl0dPrMq/lZwMJrt7IH4w
 wXxAVUXc/WexIEs6W99htaovr8LuBJ7ncuQvBWQ5BA2S4F8eUNs9Yg0pIkNjIqmPbi91r9yTgbc
 0R+3Pj84NWfkYkjmSrC2YxCwkfg2Z9ESHXgpBjankWg3Hs9BZacPfzZvWSp2pXD6rl1bZdBSLFb
 vXdlj412AGzqqAN1ti587+KQPjRnYolAK1e166gZa8UzA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay94-hz2.antispameurope.com;
 Thu, 30 Oct 2025 14:53:28 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 136855A07D3;
	Thu, 30 Oct 2025 14:53:14 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 14/19] arm64: dts: imx95-tqma9596sa: whitespace fixes
Date: Thu, 30 Oct 2025 14:52:56 +0100
Message-ID: <20251030135306.1421154-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251030135306.1421154-1-alexander.stein@ew.tq-group.com>
References: <20251030124936.1408152-1-alexander.stein@ew.tq-group.com>
 <20251030135306.1421154-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay94-hz2.antispameurope.com with 4cy5DK3v73z3dGQg
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:783d95388d58bfc72f1c3cb0f6f3ac9e
X-cloud-security:scantime:1.915
DKIM-Signature: a=rsa-sha256;
 bh=OgKqByS2/RO1SRU9MW5M+/ddL3PnmL8qHsnqkvfLvhY=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1761832408; v=1;
 b=p0luglfQK44XOx327DBREYfdu9x9voLb8U0znNZdJQo887xcE4X+XMRpWjZaY532VdN5o+je
 cygIGlh/LUcjBeCqEqlMV4Pzond69oSlWybjagZiNXYyCQ8Eitl6XFFzhZkH6KdUmEYb6ocL16A
 lXvUb9IM8OJCyP/vIfBOL+/DHloTuV4nxaVz1W8/ywnS/nhL7wDS5q7sTxTPmEofAWqLSXf4xP6
 f8icqVFGigt+PmXVaDyL2FuX9Eif+EFcXzmf8Gcb0eZAukYRQ2QPCnfJ2/9lahjsJZ6TM+GLq7E
 14WAz4GOMtvCW/Crjkz6+osCjjrHTzCxocK27BWX2ZJ0Q==

Use tabs instead of spaces for indentation.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
index 9c892cd8ff215..a4c6083ab43b1 100644
--- a/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-tqma9596sa.dtsi
@@ -621,8 +621,8 @@ pinctrl_lpi2c3_gpio: lpi2c3-gpiogrp {
 	};
 
 	pinctrl_lpi2c4: lpi2c4grp {
-		fsl,pins = <IMX95_PAD_GPIO_IO30__LPI2C4_SDA             0x4000191e>,
-			   <IMX95_PAD_GPIO_IO31__LPI2C4_SCL             0x4000191e>;
+		fsl,pins = <IMX95_PAD_GPIO_IO30__LPI2C4_SDA		0x4000191e>,
+			   <IMX95_PAD_GPIO_IO31__LPI2C4_SCL		0x4000191e>;
 	};
 
 	pinctrl_lpi2c4_gpio: lpi2c4-gpiogrp {
@@ -631,8 +631,8 @@ pinctrl_lpi2c4_gpio: lpi2c4-gpiogrp {
 	};
 
 	pinctrl_lpi2c6: lpi2c6grp {
-		fsl,pins = <IMX95_PAD_GPIO_IO02__LPI2C6_SDA             0x4000191e>,
-			   <IMX95_PAD_GPIO_IO03__LPI2C6_SCL             0x4000191e>;
+		fsl,pins = <IMX95_PAD_GPIO_IO02__LPI2C6_SDA		0x4000191e>,
+			   <IMX95_PAD_GPIO_IO03__LPI2C6_SCL		0x4000191e>;
 	};
 
 	pinctrl_lpi2c6_gpio: lpi2c6-gpiogrp {
-- 
2.43.0


