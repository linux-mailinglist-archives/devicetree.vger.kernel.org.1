Return-Path: <devicetree+bounces-249682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A38ECDE039
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 19:02:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 567A73007620
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 18:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96D0727F727;
	Thu, 25 Dec 2025 18:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="gAAEpH2X";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="gAAEpH2X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF699205E25
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 18:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766685756; cv=none; b=Q1XEpQV4SX+XukPiJ77Hl/+IcOqMMA9A+GpBQb1RI/M4S7a1Wf2qwsGm3YUpQjAAm7dCwo226JrSnI/tUFVNxuc2qPpGvtclMvjOuJsVAPW4klplgHIcJuHkxqeVeHXtpGamrec3JYKNT99vEloYPAPdqrCuEmoQLSWd10ySRvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766685756; c=relaxed/simple;
	bh=LmSVp390ROAY+bj2u5T0v58zEz53LnbaV4erMrJLs0s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jiCIJjuKoprT50kQ+8tYgNQtjeAOIORHjVEzo5R42LhMVeq4yxRU7wVT3g6yh0uafoDMK6A0wQ4VHOfoBiNYZbK29EqDU+iqtrNz1HW5YXb4kXfjcZaSGIdQk/PSLM2+dorCMjBajV74LX+6R/IiBAYVFJdYs1/ThJ250914a6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=gAAEpH2X; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=gAAEpH2X; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766685753; bh=LmSVp390ROAY+bj2u5T0v58zEz53LnbaV4erMrJLs0s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gAAEpH2XB7S6A9v183FNg8Dg417Las5HiuHVHAZJnCwEB4QUFSo02u8nmEP/yfgIG
	 7dPjYIiWRWivewbFXU8e9JZgCzalF/NyBA6xjGdVFXSUNDnW6JNCPrj23pr2SyGmeO
	 DVtuYKBlCCSRLmrOSIpyR5J0XIWZdlogB5ciVZfRKdJykM2T36nzkQlWsDaETRwynS
	 GJbEwQq+npmFZlv91uEqUZqjZAEqPqu7M+tFm087nzCykSoDVllBi0ltWjg0ssr9J4
	 cq3UG8MPVEbX4ujA7erym+c2sAx0PcyrGl2xtAd5nTtWxyjASporGIMBsk8F/waIbK
	 /QVUZHlAmajoQ==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 219323E8B7A;
	Thu, 25 Dec 2025 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766685753; bh=LmSVp390ROAY+bj2u5T0v58zEz53LnbaV4erMrJLs0s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gAAEpH2XB7S6A9v183FNg8Dg417Las5HiuHVHAZJnCwEB4QUFSo02u8nmEP/yfgIG
	 7dPjYIiWRWivewbFXU8e9JZgCzalF/NyBA6xjGdVFXSUNDnW6JNCPrj23pr2SyGmeO
	 DVtuYKBlCCSRLmrOSIpyR5J0XIWZdlogB5ciVZfRKdJykM2T36nzkQlWsDaETRwynS
	 GJbEwQq+npmFZlv91uEqUZqjZAEqPqu7M+tFm087nzCykSoDVllBi0ltWjg0ssr9J4
	 cq3UG8MPVEbX4ujA7erym+c2sAx0PcyrGl2xtAd5nTtWxyjASporGIMBsk8F/waIbK
	 /QVUZHlAmajoQ==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 9E9ED3E8C81;
	Thu, 25 Dec 2025 18:02:32 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org, lists.infradead.org@web.codeaurora.org
Subject: [PATCH 1/2] ARM: dts: lpc32xx: add DMA properties to the device tree node
Date: Thu, 25 Dec 2025 20:02:29 +0200
Message-ID: <20251225180230.1400420-2-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251225180230.1400420-1-vz@mleia.com>
References: <20251225180230.1400420-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251225_180233_152680_76150B30 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message. 

Define the supported by ARM PrimeCell PL080 controller properties,
the selected values are tested with dmatest.

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 5ddaea8c481a..a49b8e794126 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -84,6 +84,14 @@ dma: dma-controller@31000000 {
 			interrupts = <28 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk LPC32XX_CLK_DMA>;
 			clock-names = "apb_pclk";
+			dma-channels = <8>;
+			dma-requests = <16>;
+			lli-bus-interface-ahb1;
+			lli-bus-interface-ahb2;
+			mem-bus-interface-ahb1;
+			mem-bus-interface-ahb2;
+			memcpy-burst-size = <256>;
+			memcpy-bus-width = <32>;
 			#dma-cells = <2>;
 		};
 
-- 
2.43.0


