Return-Path: <devicetree+bounces-136488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7D8A05574
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:34:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAC171660A7
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 094161F03E9;
	Wed,  8 Jan 2025 08:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UZt7xUY2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3E31EE7D5
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 08:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736325275; cv=none; b=EidP9xD+dsCA4wGb4AdunvQ1b7bVYcFsRNXycnwSDg7P9o+39yoSs1oFxxlYpgEfZV/I1bsqbiCVRDtQiYTVkCJ8yTODoM6t8bUcEfeWajLQN4egSowg14KOQhjCXoMdoug8TQLBSBnx1/CCpM47IhKzYq6ltPEKqtqd02IDahI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736325275; c=relaxed/simple;
	bh=S31EuoUo20Y9bZD/xOZ381aJWON2thAc0A5iEHvpqoA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kkyBJ6Cs8LR4VzxKFlIMr3yxvGPlxW99yzU6wQ+BbwO5vMLcJJix5JiF6KJT0ep7KPMzxP9530ytR8PxHrCncdeJ4CuyOtkZL9otAMwCWRzWRwKMik81zyUJswBun0IFinOHRvvhXySSy8Tmdl2z7FVfemzbPG1RAZx8GDCAfdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UZt7xUY2; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-216426b0865so238121475ad.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 00:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736325274; x=1736930074; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YKxLwEb+Svw+X4QH38G5HrIoOKZ8wZ/vH6v0ze5XZw8=;
        b=UZt7xUY2guSoQnuAECh5cwB4dviBS3bxSF6Mom8tKbSBauIzldGcB1zZs4LJFnZNzG
         MN0Rvt3avIHa5gbzC9Cr/y6R2buV7leVIPOYQsnX56xeaNJbhElbjIQaHawb7znm/Flo
         9YxhO83gW6tGN3OLlicZxNUfsa6Yjwn7nKJJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736325274; x=1736930074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YKxLwEb+Svw+X4QH38G5HrIoOKZ8wZ/vH6v0ze5XZw8=;
        b=Bk1RNxyE1qUrmkWDrKr6ddw4aviITF4cdGP8xWbG+e5mbRTl0jLlvrD/X2wBywzOhP
         kCchxLIxJBUjJ6qPwCjaqp5+QwMzXx/croLnqRvnkHnNec4MZjgU2xL+nwhkQD2Xao5E
         nLh4AXzaZLqnWubapstohJWkdivX/uRptlFq+dtvzUoBU0JPydU1fYmYtRJXx9IVZcBK
         39eZ7tFkyssKN9kI590Ej5fsx0gZBskNZJl6lZFcGH1IdqZhyOw6/1MjUalwvJHfHkNZ
         3ynPKJg6ASGP9g6T9BKzsCPFj0kAtpB7P3d7RPWX7x85JFDTQKsEz0BjQ9Wp1WGGwtf0
         vIPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcmqcdM1wCaLx0jDw1wpkLqhGKOWXNyjQ5ZK6SN9uaa7uWWJirLL80qiUXytIFwiY3w1GKCpUmAfWv@vger.kernel.org
X-Gm-Message-State: AOJu0YzaBwvfWkDKswCKG7utkOVs0n76O/RPVYGxcz2V12znrcuGe4Zh
	5nE/s9wWM79g71Y8ZqgtWnYeF3+SZP6C+2Bei+J+qlKyuL0GfNM2cOuX1kP2KQ==
X-Gm-Gg: ASbGncvrruDx1kziKOP0CoAwJjaBJ5skVTUAso4KqWs7+4TEld3s9kNo1vaAU7VrgEs
	8rXvdYifsj3dOYm/RXLnO4DJIk3HQTuqyZD8ZptG7t5TPyzh9R/ikFT2PvmqNM6xu/KfLTgblQE
	uwklngyD4Y1zN+U/ot4vmZU87a+xRck5vEmfO17au5bH+TvMkWWDlIBRaer7jxO3oTs9cp3/PaN
	lL1VJP21r9xjsm7VWxTHuxBq6sSjchPaB1Ek72q0YE0M30UratV6jFB6SYf1z6w4TYawqP6yOA=
X-Google-Smtp-Source: AGHT+IGoE453H+6MpzjtZuhQVjLh7PmBh8mNjt0KKWtYW5XDmoMsP3lohDn3YLYpcAwJgLD11Zw5LQ==
X-Received: by 2002:a05:6a21:2d0a:b0:1e1:adb9:d1bb with SMTP id adf61e73a8af0-1e88d0dd4a6mr3868377637.44.1736325273798;
        Wed, 08 Jan 2025 00:34:33 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:511d:2d5f:1021:f78f])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8361b7sm34602275b3a.74.2025.01.08.00.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 00:34:33 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Eddie Huang <eddie.huang@mediatek.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 3/3] arm64: dts: mediatek: mt8173: Fix some node names
Date: Wed,  8 Jan 2025 16:34:23 +0800
Message-ID: <20250108083424.2732375-3-wenst@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20250108083424.2732375-1-wenst@chromium.org>
References: <20250108083424.2732375-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some node names are incorrect, causing DT validations due to mismatches.

Fixes: b3a372484157 ("arm64: dts: Add mediatek MT8173 SoC and evaluation board dts and Makefile")
Fixes: f2ce70149568 ("arm64: dts: mt8173: Add clock controller device nodes")
Cc: Eddie Huang <eddie.huang@mediatek.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index f49ec7495906..6d1d8877b43f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -352,14 +352,14 @@ topckgen: clock-controller@10000000 {
 			#clock-cells = <1>;
 		};
 
-		infracfg: power-controller@10001000 {
+		infracfg: clock-controller@10001000 {
 			compatible = "mediatek,mt8173-infracfg", "syscon";
 			reg = <0 0x10001000 0 0x1000>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 		};
 
-		pericfg: power-controller@10003000 {
+		pericfg: clock-controller@10003000 {
 			compatible = "mediatek,mt8173-pericfg", "syscon";
 			reg = <0 0x10003000 0 0x1000>;
 			#clock-cells = <1>;
@@ -564,7 +564,7 @@ vpu: vpu@10020000 {
 			memory-region = <&vpu_dma_reserved>;
 		};
 
-		sysirq: intpol-controller@10200620 {
+		sysirq: interrupt-controller@10200620 {
 			compatible = "mediatek,mt8173-sysirq",
 				     "mediatek,mt6577-sysirq";
 			interrupt-controller;
-- 
2.47.1.613.gc27f4b7a9f-goog


