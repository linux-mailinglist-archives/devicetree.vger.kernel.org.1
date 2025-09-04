Return-Path: <devicetree+bounces-212993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBFDB445B9
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A918EA04B1A
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A641257837;
	Thu,  4 Sep 2025 18:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="kdT30CI4";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="kdT30CI4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6B5624A069
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 18:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757011626; cv=none; b=OklozBEGR+4qVfxhrjhvMU0Nji3EK9suCCfhvOQoeviGzdb02zR7x1KDHjiV05fprDU3wGGcSOvXFj2/obIOAAtJj4rd+XK6cyUlKhjJcLOWvZ8DlMJ39VIDC919KiyJbYJk9cJF/I1+LbT5fAu2IgtHeCl9D1IW5kRmh/xdJyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757011626; c=relaxed/simple;
	bh=BxCKEq0uM/EJgswLUSDnW7GxriZ/hFzCcltp3NmjuDU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fL8CwMO0jQFyFWQtvgBj9VgWvCQPOQpiDgr8QoZ2CzOTkEajPSpRACmQkkdcWnej095bxsEoT36f0fJQ1L5tXHiIitd4/I8YEcj2SP1wh1A8sqnERItMCpC/iKuGM0EsO+H/ifEJGwhceQsXeSXFgy0KP9HrTDYdWxMFfRmRXQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=kdT30CI4; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=kdT30CI4; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011623; bh=BxCKEq0uM/EJgswLUSDnW7GxriZ/hFzCcltp3NmjuDU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kdT30CI40M7OAK9KXsgUtvwVyhaL/NjiHARXGDTA4aDCNvQhRgJ91X2Ie4cQk2I7Q
	 ceIlL2QP+xdFVv8B3DNAe9gat8guCy2tgRsu7gA/kW4uaG+yRVa7fJptVJafKPK2Xl
	 JVEwVXpbX0p1sW5B3NPnFtMJ9CNPxgbb+x7TBUbdP1BKr2h3kwJqmDO1mlli7luenJ
	 Q0o81rYr1kcQEgEn2sKrU3G8ARfbHFptMtzgcxyZ0xVDBcU6zPWGpFNfFF9ryH9Agg
	 eup23eHAQBC2C2GGOSO31B7VIlPXTvdkMrE+zhdT4JllGI/qjVR9ICWChtacyNIim6
	 NWeORgV21Pr3w==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 36B263D2186;
	Thu,  4 Sep 2025 18:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011623; bh=BxCKEq0uM/EJgswLUSDnW7GxriZ/hFzCcltp3NmjuDU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kdT30CI40M7OAK9KXsgUtvwVyhaL/NjiHARXGDTA4aDCNvQhRgJ91X2Ie4cQk2I7Q
	 ceIlL2QP+xdFVv8B3DNAe9gat8guCy2tgRsu7gA/kW4uaG+yRVa7fJptVJafKPK2Xl
	 JVEwVXpbX0p1sW5B3NPnFtMJ9CNPxgbb+x7TBUbdP1BKr2h3kwJqmDO1mlli7luenJ
	 Q0o81rYr1kcQEgEn2sKrU3G8ARfbHFptMtzgcxyZ0xVDBcU6zPWGpFNfFF9ryH9Agg
	 eup23eHAQBC2C2GGOSO31B7VIlPXTvdkMrE+zhdT4JllGI/qjVR9ICWChtacyNIim6
	 NWeORgV21Pr3w==
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Frank Li <Frank.Li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/7] ARM: dts: lpc32xx: Correct SD/MMC controller device node name
Date: Thu,  4 Sep 2025 21:46:44 +0300
Message-ID: <20250904184647.397104-5-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250904184647.397104-1-vz@mleia.com>
References: <20250904184647.397104-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20250904_184703_272661_597A05A5 
X-CRM114-Status: GOOD (  10.83  )

Change the PL180 SD/MMC controller device node name to the expected
'mmc' one.

The change removes a reported warning:

    sd@20098000: $nodename:0: 'sd@20098000' does not match '^mmc(@.*)?$'

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
---
 arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
index 761432673c39..c8b9d70e9362 100644
--- a/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
+++ b/arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
@@ -224,7 +224,7 @@ i2s0: i2s@20094000 {
 				status = "disabled";
 			};
 
-			sd: sd@20098000 {
+			sd: mmc@20098000 {
 				compatible = "arm,pl18x", "arm,primecell";
 				reg = <0x20098000 0x1000>;
 				interrupts = <15 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.49.0


