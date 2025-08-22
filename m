Return-Path: <devicetree+bounces-208143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E44B319D1
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:39:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB0C21C205E3
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF2BA3126AE;
	Fri, 22 Aug 2025 13:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k81pPbp7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7567311966
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869643; cv=none; b=uzykbMLy7/n0EKm2j8ujWfhndd6TI5iJC8R4etBJ4KnFuH0UK5RgwQLrHK6Jn5c9A9pBh8rsNcDV5s+CaP5yiqlH9K7ti40/fjcpWMRrl8MDPtslaWHRiP0F5kK1g7tIEbrcBXrq1Lk/bbR9c3kFapUr8QkiwtM+PKSLLHM+/rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869643; c=relaxed/simple;
	bh=5atFZObtrKpnJgmo3YJtQJOpQJ+u0UszDqUhQBXM1Nc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lNpI8adNgBs6C3zsyE84X/bwsqdl8ZVtMG8JH2n4O8zWZ/6eCJ6RouTW16F5/zTSp6akihqzsWncFbw2hRYQHlAB78dWPcw1j0Ze3vCcH3hpYMIx7kR4fO2yOZINrDs0V3etOFKObo0NlO3EcFQf95SlSASEbyNwMhhywl3dKP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k81pPbp7; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-afdefc9b005so33649066b.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869640; x=1756474440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gIbUpOBxMgd9xJXdgFTREqyCWOlmw8WyO+WxG/Gv6lw=;
        b=k81pPbp7QpvoeB+bsSkEKaWR0jiLT2rLgMPQ/2Zu1iu7wOTYn31U4esPa5jJ/6PjmD
         OXdHZ9SffcjZbDUL7qr0q4DGzpMayfYCo2o1pfdJ+rInO1YlDakTU9/9nCBZoQ09V56V
         XwKOYcVTVsvSUZHdGUDVKwjJZI5G36ZbtMNzAuYNbhncCxjswVONLClACzdwce6koX3L
         0VlMZ3BFuie9nSwz6kokk3s4bXPFM865q59ER4eNZoGCeDgi32tG8fvzGq9oc0/S3iji
         ApJzBlvn/m2IeM1yTNNyijgKV8DibCKn77rM5dF9qGrABaT2JmQppWwyux5j9WsQCS4C
         rogw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869640; x=1756474440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gIbUpOBxMgd9xJXdgFTREqyCWOlmw8WyO+WxG/Gv6lw=;
        b=Bc74MzVBk0rFEttEDFDHpkmk2WVlDnasBgbS0WSbqsE91zHv1r9oWVkt4sDESMM9TQ
         gvqyitVvk+Mo/yhjDFOTsDFMakIM3UHlDqvusvspMQbKPazlWsU27pGr7qozXl+GXGWl
         0fpNBppIhkgzkVOAsGJjh2WKEa28a2AqIoM0sagJkHFj6XenJ6R1dRfCJdZrSLsV41bk
         qnX0ysaaLcbxc98N3sSHdiAirBjusxA1oHmzPd+atuHrQ4txuSS1vzav5mwTor5W7KHz
         AJgadCcdT9yXYaOoWfXHGJ+znPl4oxNf4jUHZxWMUVMw7jT2NaRFVHmr0rmjXBJ6ZkPu
         pOew==
X-Forwarded-Encrypted: i=1; AJvYcCVtJuZmisgPs68dqS+aXCRHNLN4wE6eTlbBQheuqxqnsOhBqoSuvv3eoco/kddYVRxIaBpacaPhpEL0@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy3tlycw1+10C8eMIN5oOUkCyqx+luYW8ll7+IdWxyLpJIMb4D
	8qZNf+IKWPRPLuj+tkzXWi611ln9rvsyPBvglT1zpp0YgtclKSM4tfJogFRDy8UYBU8=
X-Gm-Gg: ASbGncsTyCbIw1DF69rKnedabnhBfUbmWm4QRtsLP7bf9kxxOn2rAgQonMHvY5B0L1X
	Hv37Ub53os3d6iEilULBXlj5E+yJ4Lb+FRb4ySfQzXxeN+dvk+KXB7niqfaj6xQbHTl0xvNc+dY
	HJb2RseS9TuKCVCjsRJc9ox5VRq72jbpy6kCul3h4QXsf5dz+QHquF8mU+Q3CWlPKMKLwLt7Wka
	VyxDmLs/VVHFABK7tmZxWsyZHhUtdiL5mpfN9p2MfWKwJG/tmWcnEOMJSlgYFeJgR4pPt0hz444
	3Wae63fk470C27N32tW6qDhGwE1wPCgt9tRkqF/i508a1IvdURGjYT/VD32WFZunrV50e0vlCDi
	Mhv8lroK064NIOOHEF52Kof98nq60BqkXhw==
X-Google-Smtp-Source: AGHT+IGKR+92fxX5+Z9yJGkvAm6H0/KbqZgdhDgNr2OSqOSrSs9eDLAbKH458nV1ZrGSEn5tz9kKyw==
X-Received: by 2002:a17:907:2da9:b0:af9:649c:d0ae with SMTP id a640c23a62f3a-afe294b454fmr144596166b.8.1755869640065;
        Fri, 22 Aug 2025 06:34:00 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded537f98sm606493066b.104.2025.08.22.06.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:33:59 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] arm64: tegra: Add default GIC address cells on Tegra194
Date: Fri, 22 Aug 2025 15:33:54 +0200
Message-ID: <20250822133351.312424-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250822133351.312424-5-krzysztof.kozlowski@linaro.org>
References: <20250822133351.312424-5-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1248; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=5atFZObtrKpnJgmo3YJtQJOpQJ+u0UszDqUhQBXM1Nc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHHBQIbhlJ3imq5KsmMQfKx9f+EstPrtFGlm4
 p0hsndhH6CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxwQAKCRDBN2bmhouD
 1xkCD/oD1zUaszwiqKPLyuGMr5PM0NCHH6utO08UhTPZelp1VJXkzksRDIqbgJLfo/1RKvb554L
 8pGrjNUGX7RiZYtuBS7/9s6khM4le1cwljfgkmg2nOPDM5HD/yFsH3A9P2Ym90PoSak9gH4pHS1
 EHGnv78GovXiDfbXX85u/8pMPyH1r3kMam09KXUWQdyZLb/Frrp1J8LwXZHT/Am2+pTNHp8MCG5
 z9Z1IuHUIpBaaR0SQszliJYTpeG+R+6Y4McX6xDKrVAPXZekfirOgAWSLnH5zbK5iJHO0xKMejT
 zwTbi3OT2zsQP5embmVo4gI/XB3c4K5ZxThanDur0KIhL/REGr8Ef8R3K1asAgSJJ1Y7tpp8F7T
 gPmIcFSoWxcwD7xIBW+1+XGomTHPsfrBAt4fZISd6NfXXW24KVFP9h0WJRNi3w/QuTnEb4CJw3w
 Bw+d0UeQISRg93HUXRDLDJ2pZaHnRgZ0yYfelt45Yh8+OV8ljYWg7e9VWS/3oCqZFNKV832tBGl
 DmZumdNpl2A8lp/mV9cZhOM1WBUQrFA8Xqzvh5DIFQLbDaHOMHmVO928eCwXnPccUe48CzLgeEe
 ZZ0fI+0acxD/85tL1AXEIQIbDCll5Jzq8kjllcRoX5AOi5oHjKW4i0iIYKPyuwhZbxUYo0TdaoD 3nukuUTlr/mFtXw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  tegra194.dtsi:2391.4-42: Warning (interrupt_map): /bus@0/pcie@14100000:interrupt-map:
    Missing property '#address-cells' in node /bus@0/interrupt-controller@3881000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/nvidia/tegra194.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index 1399342f23e1..b782f8db1288 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -1331,6 +1331,7 @@ fuse@3820000 {
 
 		gic: interrupt-controller@3881000 {
 			compatible = "arm,gic-400";
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 			interrupt-controller;
 			reg = <0x0 0x03881000 0x0 0x1000>,
-- 
2.48.1


