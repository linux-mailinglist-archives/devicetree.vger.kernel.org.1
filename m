Return-Path: <devicetree+bounces-195969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C4FB03B12
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 11:42:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3F2E1A6066B
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 09:42:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15C59246771;
	Mon, 14 Jul 2025 09:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="odzxTaAr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5BB246332
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752486050; cv=none; b=bydjkArFtpFTOYF2xNhESmWS2sFsYbhSatKNFlurapmkeTlm81ExEB/Ax4cScPcFB23SDFzYu+QVFKSDYhRmFxAujvygigyPLF0NBzXJlteh7DgNf67jyHoz9IzEBqXAQ+c6fnzfzf+OhxGPxNTT+w/E5+GOsYzhzn5v+9LIDq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752486050; c=relaxed/simple;
	bh=/btqLu9YUwLhGvieYWNsjaYgCGjJUVWfq3uFh2mxvQM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hlwhUV0X2T/QOUwYPlQzdvzjay3JnAYhiKNv9KPrGcpzM0IFrC/kqUf6T9Iz4vQwRSjAkXA+D7sEG+7oAD7uY+OSLcNLW9H4LjKEIvf6ZfW3lfEn9dey1r7sYVC3oy8ZOqaro2YrI79qKVYlD2Wv8CNjlwNjD8TpmUKAYPBydyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=odzxTaAr; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-456108bf94bso7674075e9.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 02:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752486046; x=1753090846; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gFrJpXFfbxx2B9ksANEMQWjDtT+enBv/IzvtrGekg3w=;
        b=odzxTaArcr8JE39wQswE3qmcnJXsr23kpPBHJ75Sn2ymlhZ2MnbANwwYUV7pF4aUmw
         lIDplRZAv1hxXHTHtEqKQIX5foMYtEWzyY++iDOlVxWgUUQHHJzdc6zrPVZFg0zBuM4L
         +5kiXhKAu+pP6CZBcwyN8CLIzuiqf4xJf9L7zSa0pwqg99C8Edo1OlDVdC7H+9EkPTR4
         lshSbKgd60Nbk7WDg/Wh6p8syVxAQSP0PaUHVAOlBZPzEeAlEP7uhMN+GGrOqRMnQfs7
         D1xFoMLHffxZLZh8tclHnk9cHFLlz4EOA7wi1erEHEZuQb9bA7AOg5yKj2jkrdCEqoPy
         TtcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752486046; x=1753090846;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gFrJpXFfbxx2B9ksANEMQWjDtT+enBv/IzvtrGekg3w=;
        b=ubKl456zyQlNJCZ1LITfeXjx/JmvoJmdI2YSNGyWIGk9t9D4o+K0mGcnatA9AMKL2P
         iMYLiJQt2U+pR8EGUH7z+LEGcvxo+s322JBw6Ale1J3T56H7b6m4zOTmBf4d7SmaZnJT
         vefWDsRZG8rtfavX2yJRLmAGX17zS/z8WELiCQQR+DiNrMzpwo9YhPhMhcAStNSGNTsK
         blc8N80po/Qki2pTo9tB6uAwb8RMSAYWiY8emu9b79kI40dc9YbGyAmwL+akb4HFIPft
         kk9z7cq1bmVrn/rmRpIwWgY9960OXk5sj6QvX4cN+6YRS0fff3RbSrSg6s/lVqaCGsNi
         WVtw==
X-Forwarded-Encrypted: i=1; AJvYcCUTdgH+exf4G4TQtCKxwiWKQBMDPcfsLB8mbAFpKPddDPuVwAL5McSo0RuEibSGAXkMWcb+US3FVnM4@vger.kernel.org
X-Gm-Message-State: AOJu0YywswXgmbm+LwQTeS6lWmOP45VnNN5IvWIFakbKJizHlG7IIb90
	YEfq1KRcQkzjgP0m2f+D1UUllAwYvVWMKeb3k7ssKrh5AlcXDDs51zPrAAM1Fcc+tTo=
X-Gm-Gg: ASbGncvPbC6GNOYrS9FaOatwitDDO4kOegt2GMi2GLr189PcEpDMDz/Tl/MGfY2XmRi
	XV6kU2bwz7wBfjSVNrJLjn/0UyR4zRJv+ioTxmvv0sZDAFfztjNLkn5N8XVyhK1g91EcMu/7xpv
	votrw22mT5D6VrG2GBHLQdooOGBVHZAnXSXq9RZI0eaJzONYN1WMPlf/Z8wvudn14a3GSDdpCUt
	3yFeVswssDLYYwbovD43NSF7ibRV/7bunXP3YlWoQNSmlejFikBrkYuxuqsxifGD1hVQNMES2AJ
	jaGwpTMIIfA3qF/Cn6jJuDIiF/k54cMCp0W92QPEfiOJgbhzYMGSYr9GLoXeMDkM+zgioal1dw=
	=
X-Google-Smtp-Source: AGHT+IF/LhOg6RIkatqA9vyQ71gHfsxJ1ctVouZmIzEYwK0/MuM77sFw7XTim5p/um56mFwUUDCigw==
X-Received: by 2002:a05:600c:198d:b0:453:b1c:442a with SMTP id 5b1f17b1804b1-454f4253f14mr101420315e9.27.1752486046346;
        Mon, 14 Jul 2025 02:40:46 -0700 (PDT)
Received: from [127.0.1.1] ([2a09:0:1:2::3035])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4561b25a948sm24989035e9.35.2025.07.14.02.40.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 02:40:46 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Mon, 14 Jul 2025 17:39:33 +0800
Subject: [PATCH v3 6/8] riscv: dts: spacemit: Add PDMA0 node for K1 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250714-working_dma_0701_v2-v3-6-8b0f5cd71595@riscstar.com>
References: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
In-Reply-To: <20250714-working_dma_0701_v2-v3-0-8b0f5cd71595@riscstar.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Alex Elder <elder@riscstar.com>, Vivian Wang <wangruikang@iscas.ac.cn>, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

Add PDMA0 dma-controller node under dma_bus for SpacemiT K1 SoC.

The PDMA0 node is marked as disabled by default, allowing board-specific
device trees to enable it as needed.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3:
- adjust pdma0 position, ordering by device address
- update properties according to the newly created schema binding
v2:
- Updated the compatible string.
- Rebased. Part of the changes in v1 is now in this patchset:
   - "riscv: dts: spacemit: Add DMA translation buses for K1"
   - Link: https://lore.kernel.org/all/20250623-k1-dma-buses-rfc-wip-v1-0-c0144082061f@iscas.ac.cn/
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index abde8bb07c95c5a745736a2dd6f0c0e0d7c696e4..46dc002af947893cc2c234ee61e63c371cd966ca 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -660,6 +660,17 @@ dma-bus {
 			dma-ranges = <0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>,
 				     <0x1 0x00000000 0x1 0x80000000 0x3 0x00000000>;
 
+			pdma0: dma-controller@d4000000 {
+				compatible = "spacemit,k1-pdma";
+				reg = <0x0 0xd4000000 0x0 0x4000>;
+				interrupts = <72>;
+				clocks = <&syscon_apmu CLK_DMA>;
+				resets = <&syscon_apmu RESET_DMA>;
+				dma-channels = <16>;
+				#dma-cells= <1>;
+				status = "disabled";
+			};
+
 			uart0: serial@d4017000 {
 				compatible = "spacemit,k1-uart",
 					     "intel,xscale-uart";

-- 
2.43.0


