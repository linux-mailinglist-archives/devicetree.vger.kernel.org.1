Return-Path: <devicetree+bounces-249695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12682CDE13A
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 21:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10BC13007956
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 20:32:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38996248880;
	Thu, 25 Dec 2025 20:32:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="hQhyvcol";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="hQhyvcol"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835D4209F43
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 20:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766694730; cv=none; b=FJKHt8FgVW4JarPOPgUPoo1tm/AKSlXDw4BN792C4xQYkemnUrusDLL5L6rO3K8sZzF+b3C+DZNIqtO813wjKsCDRvGxFbhsmlkLqyO0C3KntOmIhqk5XMXLmSOsLCLgqMVwYqR08vwH9orDXTR7SjWBEbY9SlvT3oXxLk8yirk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766694730; c=relaxed/simple;
	bh=LmSVp390ROAY+bj2u5T0v58zEz53LnbaV4erMrJLs0s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u65Etp51I+RfgqmODGg/I9D/skAkGvvFCr0lkq2emIgGg8FGaVgTd43dOt0TG2r1SA64tux1/Uvg0EdOlxZRiSFQfciBAsSdlDN5SGnJ1+ir+44mdF+Dn1H6SCOPH/9hq4WOMXkdXMQJ4PY/P3gLYx5rYvwJ3dfs39DZmPJKmAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=hQhyvcol; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=hQhyvcol; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766694726; bh=LmSVp390ROAY+bj2u5T0v58zEz53LnbaV4erMrJLs0s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hQhyvcolNHRieWFsT21yvp8Yx7adPu4Bhgs78K7YY/PKptIyNOgAIbrDmWuiZT4pj
	 zfCUKVcJt8wQtEgQMBWJBT3UZp8J4iqBNw0Totg6J1uLcNP8Zeauc8YBowfBjb2b3y
	 iInX7pAbIpzU4P4OR8FnaMSQyELuckp6FpTimcDLVgkR64ZC9cksYoP40ChmhdbTrQ
	 fp+KvOw2gT5j4SL1nbf/SVHbDpo83JBrKA+zjQdJcbjHIzCwxZrwx7WqFJUJ29Gwpa
	 v5+UoBqmgY3Ic1QS2CVDdnUt0i+iA9NpxFvzFHXW2rn2qqZlPWmPbEZyK70Sun49z6
	 VrvtagvVABvXg==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id A1D0F3E8CBA;
	Thu, 25 Dec 2025 20:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1766694726; bh=LmSVp390ROAY+bj2u5T0v58zEz53LnbaV4erMrJLs0s=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hQhyvcolNHRieWFsT21yvp8Yx7adPu4Bhgs78K7YY/PKptIyNOgAIbrDmWuiZT4pj
	 zfCUKVcJt8wQtEgQMBWJBT3UZp8J4iqBNw0Totg6J1uLcNP8Zeauc8YBowfBjb2b3y
	 iInX7pAbIpzU4P4OR8FnaMSQyELuckp6FpTimcDLVgkR64ZC9cksYoP40ChmhdbTrQ
	 fp+KvOw2gT5j4SL1nbf/SVHbDpo83JBrKA+zjQdJcbjHIzCwxZrwx7WqFJUJ29Gwpa
	 v5+UoBqmgY3Ic1QS2CVDdnUt0i+iA9NpxFvzFHXW2rn2qqZlPWmPbEZyK70Sun49z6
	 VrvtagvVABvXg==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 2AFC33E8B7A;
	Thu, 25 Dec 2025 20:32:06 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH RESEND 1/2] ARM: dts: lpc32xx: add DMA properties to the device tree node
Date: Thu, 25 Dec 2025 22:31:56 +0200
Message-ID: <20251225203157.1414349-2-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251225203157.1414349-1-vz@mleia.com>
References: <20251225203157.1414349-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251225_203206_677779_7B000988 
X-CRM114-Status: UNSURE (   9.26  )
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


