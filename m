Return-Path: <devicetree+bounces-228042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 335F5BE6F83
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 09:40:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A6FAF35B0E5
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 07:40:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4891923A9B0;
	Fri, 17 Oct 2025 07:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="J8EQN41r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2607245016
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 07:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760686824; cv=none; b=OFtRRBdSR2qBII0qW7/P7bKWsesbVG4yu2m+kBXU0mRbAfDtKrY/W/z6VNrqJ55VelEYshR5tfFP2wzsSROmwjBJWssAfVXaq5TG46u1k2krop3C0NrZsYOun0MoriiMevQKY47nR0qKu1wvNNw7z/0mdqsR2nAkZwApEmx/tTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760686824; c=relaxed/simple;
	bh=T5p4ysugil+bNKLSR6F/8xllg8Tu9eWt6vjkSEyOVcM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=im2NpYyjSfgqpbtkcT+dGuOe3fRw+F/2tfNwFc9ivMHViJ2YT2YWzMMNXc+5WHsc28t1Fe5xlCg2/fcz0V7BctC8d4WcQWVICy1Rutm9ONvQaRhhzYEPUl3lDBGqjxZJ88itGE3OmGSywrCF4tkNSX+Yf9Mzw80hDO+DlgnkvMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=J8EQN41r; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-33c4252c3c5so175069a91.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 00:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760686822; x=1761291622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8bx5Txy8og/O6i1T8MIDUUZY/+F2oP8HDFFEoUUoKHk=;
        b=J8EQN41rGoTwkw1P4I+j09pSZ6i4toVPuIW75BiMEjTn9kHx3i9eByYJ2UG9t3MDcG
         +sqJxUSMo/nMllNhMFK+722bJz9Rx6bh38EmBOAMDlgAb1us3xcOePZA9y25wGlbyozk
         bcIDkx8A8ukp1YI7MLWZC18FGFyKj5qVCYqrxgEQc9wG6nyE42tugxfnpN/aYLhBrZoJ
         IADBbI3JYsJ4vYH57fGgAwIxqg1iAgH39WAl8M00+ZF1n4UEw17/1JBcPE80zURzAt75
         Q++P4aY18jZ+VLmb7ZnFIE+xreI/wyqN7iQ7XECs3xAWCGFk+uhJR/NUva6D01HoUwjL
         AjlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760686822; x=1761291622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8bx5Txy8og/O6i1T8MIDUUZY/+F2oP8HDFFEoUUoKHk=;
        b=Med8sgACP++i+wWvDZ2OAzTm8W4r6a1bssEqsdbFCSvbcQM7cHTKUNvQJ8NeJ7XfaD
         147lGFGJJ1PllkyFtBz4k1WHNQzb2gRFO/dLQiHfqreXG+IB9Y3mewQus4XCI0nHVYxZ
         bGQwwWltnAOjt/2NKd7aH14VPsI4vu9IB4/1TvkA8O53LrthPIap/mB9hPZuIxErIbyx
         58pTcYwQKYsPgzOGUpeLfCPtZP2y0uWy5iRpx2GFK0h56xrQ5FMPku6vW1vIfICIik1a
         m/Sx301Jp/uFdxXOhmyyW9SKA5NdmBzLX/fPvDY+pbXsbgtb/kVNC8doifoV7D+tAFHz
         aWXQ==
X-Gm-Message-State: AOJu0YwjjKxK/J93dlraPLPqwgLmTlwGVxMlMNVTRP4R0/SFf86g0l+C
	TIb3ySni/cUU4zU9J1tKcidIf5Aatukn7FOPll0TkEagSEQFnw9KUTnW
X-Gm-Gg: ASbGncttcpomMwZ+UzzNGySQwHEp8/9CJNC90pfko9LfWNsF713PbwHnGZClrnY4oV2
	xHsoujS+pxLCWZu1jM6kcRcvox1IFaHZ2qgxCIw/iHnSDdv0L1tKLkbgVZyFiuzi1P6pVa6wD8L
	EshPN8TVGzcEslU4WLTwXxr9sC3nMAWGbqgkM2xrU+JljJ+5fuKd6Lh09atg8YvMEqtKLTm3AwG
	RW52fEIC/w3Ow8bbo6Ay/qb5bUpwyYxrvM+ETiR1Mymw9pYXVXWkztSJeGnVkllQ4qf03hS7kO2
	E63QS2hfXWxzCQxR0vuU9VUsirULtrkKgslbCdnYAzgf60i4QZRVkA+RtUj6yeLvQWRIiZNJ2XS
	X/uh1EKWG6pvXwjlK2B8kFw7yPOevHwsnwbqf+uypGzzELMDC+dYgQuDqQjYbRUY=
X-Google-Smtp-Source: AGHT+IE5Wq2LSw/8u7zxDPAEAndLC3TWgGO8LMJfU4cDrcRHWlGtfWo/mBTgBjACKeby5RgogHrlvg==
X-Received: by 2002:a17:90b:38c7:b0:339:d1f0:c735 with SMTP id 98e67ed59e1d1-33bcf91e032mr3105311a91.28.1760686821347;
        Fri, 17 Oct 2025 00:40:21 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2401:b60:5:2::a])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bd7b3173asm1879479a91.12.2025.10.17.00.40.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 00:40:20 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Grzegorz Sterniczuk <grzegorz@sternicz.uk>,
	Tianling Shen <cnsztl@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6 with A3A444 chips
Date: Fri, 17 Oct 2025 15:39:54 +0800
Message-ID: <20251017073954.130710-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Grzegorz Sterniczuk <grzegorz@sternicz.uk>

Some NanoPC-T6 boards with A3A444 eMMC chips experience I/O errors and
corruption when using HS400 mode. Downgrade to HS200 mode to ensure
stable operation.

Signed-off-by: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index fafeabe9adf9..5f63f38f7326 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -717,8 +717,7 @@ &sdhci {
 	no-sd;
 	non-removable;
 	max-frequency = <200000000>;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
+	mmc-hs200-1_8v;
 	status = "okay";
 };
 
-- 
2.51.0


