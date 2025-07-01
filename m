Return-Path: <devicetree+bounces-191296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3553AAEEDD4
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 07:39:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 102B4177B81
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 05:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C69F423BD1D;
	Tue,  1 Jul 2025 05:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rjNU7r+s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5EA25C6E2
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 05:38:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751348294; cv=none; b=VOvS85ZxWiDMEFS7vgkbRau4+5P8pk5HcatUrk3E8wjYwaTYGGpuk5XJXHpF1Qs/v/GwgGVXIStVwnJphERyNA5KTOgLCeTChcyNAHfoXTcfilI/sEtLBZnHrCSgRgqaw6y9N8CikR8p964/tBq1bBzLRCA3OtaA6r9ZO2RPzZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751348294; c=relaxed/simple;
	bh=jeK9tZE+sqx6u/AlkHuW+Oi/yjhHjqxpmQf98di5WaM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pEVPTWNpNwL6upDPNzsHeXEiEMR7qpy/An4rNoVCJriyLHh5pWqQZGMDRAC6O7GQbDYyS1JWDgEPKKy7jMWpRicQjmnILupUXR6EjS5Du+caced8Z/WbvhPtMczqU2ws6DsxzrBc/Jl7loVXB5RZnr6vGDzJ89ihBAz7I2NTiK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rjNU7r+s; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-3138e64b42aso6018825a91.0
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 22:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751348292; x=1751953092; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pmX5fOXWCoBnrBEU79U5TxH9E1pYhnhJLwNdCcpNrA0=;
        b=rjNU7r+stZYLIlSXDSPItldbfXqkn1IeWgdUjNRmnGZZPC/Jgt8Soa4ocBgI7RVsds
         +dPVyDVC2gJGLbW2bd+I393mIEIOCEPEr1oETOoqYiMo9uZqrkhPiI24dUroaRx9btt9
         50N4Nd421QLjVYrdbLGzb8YNlKmYJmeHfJBR8zWaPLDoKcJ2t/8m9gi2no8CcXVnu3nR
         LDjGz3pPYlCowWdNXXWUr3FVElwj65M/Di1jusq8xRDLDvgESVb6+EXd5OrtcjdQSLHG
         +tCdwPshfRVJDoZ+At6lC73bKGQaD0ySns1cWPpkiIhlavj1UgZE4kNrKshPzzaaZ6Qk
         qbkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751348292; x=1751953092;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pmX5fOXWCoBnrBEU79U5TxH9E1pYhnhJLwNdCcpNrA0=;
        b=POBBiqr7kTIuJIk0g9P1hrFGzXkefrjN+rP0NAperIyfciygLjPkJcMa1wIpWwXkit
         AMqL/o1Ki+vPtrb0g+Ud1bdXVWYq5DasUHf+3adImIf7G/nxI0AMWyKhbbIqKwaJJArd
         +t9EZYPPtIrOlO/gQ/Yr+w9UbRpHvi2+blyVsndFgpbBtGpRl4+0Rk3DmrFcHAhhM7+9
         bURY0xYdS4YGbFgubFDdb4Kyon9x0YlgSBIvN/e2Au9fml/5vsiX3vVkPng9F+VX9ICo
         iBQRBogYRaSIvuXMZ6pUSAVe0yx0zxKLzGC98peQwv85JaYY8B4voIoPIOCs75zl9u9A
         H4yg==
X-Forwarded-Encrypted: i=1; AJvYcCXQq6kL6s+8uic+X3cnmXiypHwaxeolNFa8r4GABNuFlKL2G6lv8jpfZpZMgtDqI0I80dAJqxISddwC@vger.kernel.org
X-Gm-Message-State: AOJu0YziQUpP0bJZC1sRgWgVyujyvZzSITTwuXHgNopNvz7xdTIQDG1t
	N3DhnGel1h1WWQtyXCmohyfE+Tvh37Hn+u2Wmg1hAq6P47u+v8C64g8RxQ9NJgvtrHw=
X-Gm-Gg: ASbGncuXVaMA0zSxSOg/qOGPJNqakTauNKFq7WFp4qRqUeOe7bq7b9b+Ycnr3c/VJrc
	C3fZsfGiGV9zyWCXPq0nNVkIhphsnM2/RnAfTRhybdp7VyvPfZklYZGPRy8+ghk9AU044E8sNu5
	wzPvLUf9CnsI7fQDJ9QqizbioTPaQMYqoDidAC02NTtkWBoRUp0RYSz2/ciKmDPdyxsqSFFpc9h
	6CjyMM80nRZogwNhsL8ZdJ2gPCBqgKGr20SvHNpKLuyeup+aBthtYOXry1qjJh6Rz1xxpDh7jGX
	+PqKaUJtSvuBuzsEvA3ThL/OJcPd3cRzKq0UVdQ=
X-Google-Smtp-Source: AGHT+IFg+6q2IUBlKBteqcounl7lX9NwIth1jTPA47B/kJW1lDcCrpe2PThA1nJP2lbTdGGwBbnrEQ==
X-Received: by 2002:a17:90b:1dc4:b0:313:17e3:7ae0 with SMTP id 98e67ed59e1d1-318c93252admr20461773a91.34.1751348292231;
        Mon, 30 Jun 2025 22:38:12 -0700 (PDT)
Received: from [127.0.1.1] ([2403:2c80:6::3092])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acb39bf5fsm101729865ad.115.2025.06.30.22.38.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 22:38:11 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 01 Jul 2025 13:37:00 +0800
Subject: [PATCH v2 6/8] riscv: dts: spacemit: Add PDMA0 node for K1 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-working_dma_0701_v2-v2-6-ab6ee9171d26@riscstar.com>
References: <20250701-working_dma_0701_v2-v2-0-ab6ee9171d26@riscstar.com>
In-Reply-To: <20250701-working_dma_0701_v2-v2-0-ab6ee9171d26@riscstar.com>
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
v2:
- Updated the compatible string.
- Rebased. Part of the changes in v1 is now in this patchset:
   - "riscv: dts: spacemit: Add DMA translation buses for K1"
   - Link: https://lore.kernel.org/all/20250623-k1-dma-buses-rfc-wip-v1-0-c0144082061f@iscas.ac.cn/
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 8f44c1458123be9e74a80878517b2b785d743bef..69e0b1edf3276df26c07c15d81607f83de0e5d57 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -591,6 +591,17 @@ uart9: serial@d4017800 {
 				status = "disabled";
 			};
 
+			pdma0: dma-controller@d4000000 {
+				compatible = "spacemit,k1-pdma";
+				reg = <0x0 0xd4000000 0x0 0x4000>;
+				interrupts = <72>;
+				clocks = <&syscon_apmu CLK_DMA>;
+				resets = <&syscon_apmu RESET_DMA>;
+				#dma-cells= <2>;
+				#dma-channels = <16>;
+				status = "disabled";
+			};
+
 			sec_uart1: serial@f0612000 {
 				compatible = "spacemit,k1-uart",
 					     "intel,xscale-uart";

-- 
2.43.0


