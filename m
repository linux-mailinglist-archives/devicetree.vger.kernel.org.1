Return-Path: <devicetree+bounces-161725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E43C6A751CF
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 22:04:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE68F188300D
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 21:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7C91F5402;
	Fri, 28 Mar 2025 21:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="CJ+RyN9R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3A71EDA10
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 21:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743195770; cv=none; b=LLA8ZZ2imR0oY4ErYEHogQjm4M82V1FeO4VF5NkCr1oDUgSgkFcQjtYBAEUtypHfwNoQn92x+PuvzH+CBWTEt1EngeVnu+Oz9A91/rjQ2AhyESysoUfMUEryH8ZyT4oH/qkg8ojKxfy4MoQSGa6bxakl6reu9XIrDvlF+UjNfIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743195770; c=relaxed/simple;
	bh=qVNF/97Fzr1SWnglsbvekG+r808MZVRjwdBPHhVs+jM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WJ6YaNvipl24YuBeCe/ivsFPxRch5Z14S9Qev0faQEAoJ5YMfmba4aslatplSOSw1Clu/6kL1qz6bc/mfHEPT1eH1cfITeIDnMF2PXP/iLdTXuj2eMFd+vkkpz7UcmfA8xOerOqfbE4AxPIcLgS+ygE0y6agTdYkYSj+2d71kFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=CJ+RyN9R; arc=none smtp.client-ip=209.85.166.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-3d46693a5e9so21220385ab.3
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 14:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1743195768; x=1743800568; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Up6UVO27Yn/XqWtQdUwLGOA59Ljhuzuee1Xv/FAc+zk=;
        b=CJ+RyN9RpRelRlmPUEU53s9zgD27jdtZod7yaP2ba6eoB5sTvH6lMdSeMqW6zkJec7
         Z7YDJEwtPaaRb9tougW3du4L/h5Lv/IQpcWE9bUGnXilU47dk1F17ouAm/1HUgrUAw75
         5Uya1kNPEGe4Y2QqRkucUvDQ62+4CZISfVt+nNnvzVAVaafvVwLcvLNYD7CBXlJrNaI9
         7qeQit6lcf4egmXug8tEo7oHAoyPkkjmnsr8Ga2tYR5zAX7oWdP8Ov37KOw8pgkY0sLB
         me3mDuVlFxvXFeAaCXTq4J80m1ht+lneoB5F/+304mVmjJajsm68i/AObrmzN0h60Ayk
         vKPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743195768; x=1743800568;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Up6UVO27Yn/XqWtQdUwLGOA59Ljhuzuee1Xv/FAc+zk=;
        b=i8C+Q/re4xwU7mSzOU/X9fs93Kz3oCxxIWpSZsMDawVDYwfuDLiB6bzqdSiwmYQYiB
         x1Cpe7Up3fYaIa4+tuii7k6oriImh6bo3ZuyWpRkNZJVh1ACoiGdI0uPldGxPzdpCD2b
         PVZePE2A/+SOheLspS1vB8rnFO+e3knc36+NQw4g0g4Ult0G0hL/cClORnu4/KSP0h8j
         7/wy+3aTngPEtOSo9MfH6lJL/RbFiSFZ6+ySZOimH1iTTmn2F0iUcRfLcBXEhGbDA5Dm
         qxMqduHYIUs+Ad3l635gg//Qu/n/ueK672rR6t8yxzDDLhJIbrKQSgiRt3CUPugmzbYR
         QXFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh98iB3WTo/6cq4992vjvlxrhdsbm917BXtLY3mkCeA7lZi+ofRTquTKDL1mVvuG/H3FlKwC0sWJRd@vger.kernel.org
X-Gm-Message-State: AOJu0YyyVpsBa0VEWnMiRfYd35RbEyv2bd8LgC1omYubmwl+jJczn4Yl
	tk1dIv7guidromgOb5LH4/SkeF5jja4ija05uXX3qe4ASUr/oUX1rT9eZor+IkM=
X-Gm-Gg: ASbGncsB2g+pwVVuyjxj8g2QVpVEFbpAMA+tlAgf8EMDvUxXgoPD+oZiy21w9nFj2lO
	IKQRQhU50vTncY2E7vHLZJN4s2Px8OB+XTMNG72Jdub7kKopChTgAkRMcOG67LcuY4dSUG+qXhI
	DQ3fxKRNK0R4yht0kXGp1NrqBJbJj5SyCdCVGO+37vKfWSImnhfuPSlwOncjlDccpGUEUyxKn8n
	zeLpD4LaZeBCugCmmh5alSdA0/Qe6lzXrWzv0Ntjbn04YJQX2cnxwM+VDmX7bwUzOvF8NvoZ0yu
	FxiNKbUyWfKIcqvjEzFiZJGjtra/c4GSoCQCejjjg6DBLH34lcFJJQLqv03japv0uOvz268U1W+
	m0YHtaWadmufNGh+AQQ==
X-Google-Smtp-Source: AGHT+IGycY5TIkiYNgkSFBznHFQkpXRLd390tmdbEA+ih3++uzphzN5QAmfZxFmfAoPvrq6k/CN1+Q==
X-Received: by 2002:a05:6e02:23ca:b0:3d3:e296:1c1c with SMTP id e9e14a558f8ab-3d5e090e3e0mr11364365ab.9.1743195767546;
        Fri, 28 Mar 2025 14:02:47 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d5d5a74286sm6769405ab.39.2025.03.28.14.02.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 14:02:47 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: p.zabel@pengutronix.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dlan@gentoo.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/7] riscv: dts: spacemit: add reset support for the K1 SoC
Date: Fri, 28 Mar 2025 16:02:32 -0500
Message-ID: <20250328210233.1077035-8-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250328210233.1077035-1-elder@riscstar.com>
References: <20250328210233.1077035-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define syscon nodes for the RCPU, RCPU2, and APBC2 SpacemiT CCUS, which
currently support resets but not clocks in the SpacemiT K1.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 09a9100986b19..f86d1b58c6d35 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -350,6 +350,18 @@ soc {
 		dma-noncoherent;
 		ranges;
 
+		syscon_rcpu: system-controller@c0880000 {
+			compatible = "spacemit,k1-syscon-rcpu";
+			reg = <0x0 0xc0880000 0x0 0x2048>;
+			#reset-cells = <1>;
+		};
+
+		syscon_rcpu2: system-controller@c0888000 {
+			compatible = "spacemit,k1-syscon-rcpu2";
+			reg = <0x0 0xc0888000 0x0 0x28>;
+			#reset-cells = <1>;
+		};
+
 		syscon_apbc: system-control@d4015000 {
 			compatible = "spacemit,k1-syscon-apbc";
 			reg = <0x0 0xd4015000 0x0 0x1000>;
@@ -518,6 +530,12 @@ clint: timer@e4000000 {
 					      <&cpu7_intc 3>, <&cpu7_intc 7>;
 		};
 
+		syscon_apbc2: system-controller@f0610000 {
+			compatible = "spacemit,k1-syscon-apbc2";
+			reg = <0x0 0xf0610000 0x0 0x20>;
+			#reset-cells = <1>;
+		};
+
 		sec_uart1: serial@f0612000 {
 			compatible = "spacemit,k1-uart", "intel,xscale-uart";
 			reg = <0x0 0xf0612000 0x0 0x100>;
-- 
2.45.2


