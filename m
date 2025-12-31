Return-Path: <devicetree+bounces-250868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E09CEC9DE
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 22:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3471930065B8
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 21:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5BB630EF9D;
	Wed, 31 Dec 2025 21:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="QkGKBTjA";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="QkGKBTjA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4816E12CDBE
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 21:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767218302; cv=none; b=NW+Y3k8UDhcYFGRZpO0M4CKoc4Y6u+j68oIlGply7GH5XSqFMuHflXNg6x0DFAmP3TlbLhvBAxWnRUspp/3v5mdxHOQansZKUtOfFzeCplOJwzsUQaDX9hygiLozObVJWo4Z6fEJjYxRngc93Wtdw+T53oYJA7MiIhKR8m2KdY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767218302; c=relaxed/simple;
	bh=4OIZET21OivzenCd9QpQ2W7kxSGI4TD8QG9/7IayZc8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VTqRgOFlHcixzy4NBOl30kPvNYWEUitMTD6ukf+NKZUUX84SsQiy8L7JysMrcIQj0GvYJOTZ78g8CqDmpnp0xluCWawWjG5tbU41tJqftTaTgmfLG5KQ4dQEzGQ7mBoMwSDPViSjTDUG5cArNaUg6NUsQghJs2nPARmVL/RMJA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=QkGKBTjA; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=QkGKBTjA; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218299; bh=4OIZET21OivzenCd9QpQ2W7kxSGI4TD8QG9/7IayZc8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QkGKBTjANS2lcBjVxnTm70dgfT1Gg7Bdzc87sDcKzIx0th31MQxVgUxzh74fVknMg
	 P/fZoOpWYmWMqz6ofks8ISFxYXXITHzqhoFxVWHk02q2wAXU+0+ddzF5C3H3lDsgvV
	 uksovzW7Eb4VYZqG275Dv6yAKmjHWKY5Bt2ac7il3JSn1R3VNzLHJZldlHJLha0Yol
	 TYpHLDc5Dt+JE5pLezaC4uLpkCJ3mUQf3Io6s72W8BETqo10Fug5lWaNZ9ulNkoGvX
	 TCs4iPqob9AqL6yrGBamJmR4hWtYkFEIXzvJhFo6FHU4+/qd/fKPv9ouGlo4jIs/QU
	 74en5DHZVgPFg==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id C013E3E99A7;
	Wed, 31 Dec 2025 21:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1767218299; bh=4OIZET21OivzenCd9QpQ2W7kxSGI4TD8QG9/7IayZc8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QkGKBTjANS2lcBjVxnTm70dgfT1Gg7Bdzc87sDcKzIx0th31MQxVgUxzh74fVknMg
	 P/fZoOpWYmWMqz6ofks8ISFxYXXITHzqhoFxVWHk02q2wAXU+0+ddzF5C3H3lDsgvV
	 uksovzW7Eb4VYZqG275Dv6yAKmjHWKY5Bt2ac7il3JSn1R3VNzLHJZldlHJLha0Yol
	 TYpHLDc5Dt+JE5pLezaC4uLpkCJ3mUQf3Io6s72W8BETqo10Fug5lWaNZ9ulNkoGvX
	 TCs4iPqob9AqL6yrGBamJmR4hWtYkFEIXzvJhFo6FHU4+/qd/fKPv9ouGlo4jIs/QU
	 74en5DHZVgPFg==
Received: from mail.mleia.com (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 30A823E99A9;
	Wed, 31 Dec 2025 21:58:19 +0000 (UTC)
From: Vladimir Zapolskiy <vz@mleia.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/5] ARM: dts: lpc32xx: Declare the second AHB master support on PL080 DMA controller
Date: Wed, 31 Dec 2025 23:57:53 +0200
Message-ID: <20251231215754.2222308-5-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251231215754.2222308-1-vz@mleia.com>
References: <20251231215754.2222308-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251231_215819_806192_77669642 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message. 

Add 'lli-bus-interface-ahb2' and 'mem-bus-interface-ahb2' properties to
the PL080 DMA controller device tree node, tested with dmatest utility.

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 4f3944d6d765..389777ee6850 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -90,7 +90,9 @@ dma: dma-controller@31000000 {
 			dma-channels = <8>;
 			dma-requests = <16>;
 			lli-bus-interface-ahb1;
+			lli-bus-interface-ahb2;
 			mem-bus-interface-ahb1;
+			mem-bus-interface-ahb2;
 			memcpy-burst-size = <256>;
 			memcpy-bus-width = <32>;
 			#dma-cells = <2>;
-- 
2.43.0


