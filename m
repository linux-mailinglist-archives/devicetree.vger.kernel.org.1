Return-Path: <devicetree+bounces-105232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C45A9985786
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 13:02:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35319B238C8
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 11:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC9517557E;
	Wed, 25 Sep 2024 11:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kX25KoAK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D59061741E8
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 11:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727262095; cv=none; b=ED2zv2ySOExRejKzLRToNuAYx/5aVq57l6c9xlwOUzwbi2MjsAo9J+cDn/+d9PEVGzWPYGDUs7YWutc99x5l3yvkloMqkvOqkn3d47BdffGnL+FmrWWLpe+zF2QPwJL8nGDxDXnrz5FmnVhFF2DA8Bolu4PSlCj2Nyhp5BlO/EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727262095; c=relaxed/simple;
	bh=EZ3tqnTMaj2Nrzm8CWRU1l7FBGWn2trh+dpyDESnJAU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HGmu/ZmnGMjsLA3Q1i0av54TJZX8YgGVtDtJPk8PtUKpujRfJLaR+dmP604ZcHsw3zriSvbTjpSfduheW4mp4PuI/qejsfvUqKCVWLSM0odv2fTdWVFdAspbI/cHXZnC4SIB30NWOY1fUr67rvxNtBEPuexYLUknheI0oPhQT40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kX25KoAK; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-71b0d9535c0so355462b3a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 04:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727262093; x=1727866893; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PLqdDDy4JfS9QGhHfm83WJGLQ+zasSrsBp9fJHTMisc=;
        b=kX25KoAKd4LzvpVFVvljpK7ON+E36l20tbgnjjCZYzN8yaJotWGXx+xQjVsgeO7Koh
         VXLs1dSEsgVaEiJa/wj1GEgeQvVUmU9+EpSahzRMlpSYSzTgeqdYrj902VxyylvH1YvT
         fLosNiKQHATTFeJBPhThcqecQZwyU3BlAbte0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727262093; x=1727866893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PLqdDDy4JfS9QGhHfm83WJGLQ+zasSrsBp9fJHTMisc=;
        b=Y82rHthwrx130hReKfFqx14SV8iHor8rrpRJYsmZ1XopbdtH5FqeP7jh74n9LbeNfV
         fLcyeiDWcp89ralrenCv6iD9v85edQsVMxFQ1HiP5hVnT1UbWhRpDaffQxfbNW5X7ucI
         ggAKX7L2H/384Q9dTc1DGO/79XV7gTtNaWE59xp6P2VpeP46jy33ykHZlSgfu001bJ+U
         jlBsxrQ/FIo8kfpZlxFoUEEtcB5wdPCLLm9i3EPkoNB2+4jffDNcRTg80rtXXalxLB5o
         7ORGivPScpO/a9v+0y26HJDW0BOwm++Y/623dKe1F+PXkPQTyMM3hAzZYLJi0laEyWct
         ThWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtJVe3XvXMm6wEu0yov7O+Mt93C+ENlvlS5APwA2cLsfzIbgSZH5djVTVbs6woBu3DVPOMBL0Z1UFE@vger.kernel.org
X-Gm-Message-State: AOJu0YwkPYh8sWmu5WCeLF/dlNJhcsaYY5FQxidCROtXaKqmGyQT67Dw
	4TVb7jdDoCy6JGuTo2uaslZYDXnWEVo3mgGQC45ZEXv5DRZOBdKGVKVF6JcUhg==
X-Google-Smtp-Source: AGHT+IENDwuswAJbiEaRG30wahCIU1K1GFedjK/Q2vnSIcuGe0nQVExkQCiGetyyP40F5XzuOozohQ==
X-Received: by 2002:a05:6a00:1496:b0:714:17b5:c1d9 with SMTP id d2e1a72fcca58-71b0aaa2289mr2816985b3a.1.1727262092682;
        Wed, 25 Sep 2024 04:01:32 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:2b86:78b6:8ebc:e17a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7e6b7c73085sm2570298a12.59.2024.09.25.04.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 04:01:30 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 3/6] arm64: dts: mediatek: mt8188: Define CPU big core cluster
Date: Wed, 25 Sep 2024 18:57:47 +0800
Message-ID: <20240925110044.3678055-4-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
In-Reply-To: <20240925110044.3678055-1-fshao@chromium.org>
References: <20240925110044.3678055-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MT8188 SoC features two CPU clusters: one with 6 little Cortex-A55
cores, and the other with 2 big Cortex-A78 cores.

Update the CPU topology to reflect the actual hardware configurations.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index cd27966d2e3c..51bf08b2ff9b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -195,12 +195,14 @@ core4 {
 				core5 {
 					cpu = <&cpu5>;
 				};
+			};
 
-				core6 {
+			cluster1 {
+				core0 {
 					cpu = <&cpu6>;
 				};
 
-				core7 {
+				core1 {
 					cpu = <&cpu7>;
 				};
 			};
-- 
2.46.0.792.g87dc391469-goog


