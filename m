Return-Path: <devicetree+bounces-50696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8224887CC1C
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 12:16:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAC6F281D16
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 11:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B32F1B7E1;
	Fri, 15 Mar 2024 11:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LGopsBlt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA341AAD2
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 11:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710501391; cv=none; b=PiHlLHcb+scZ3wT4mLq47ElNduUSTbjS5uVwzlA/QYlnmMYcgUPIji4OQ84RE+vevniiiB/19DvZ5ytQ6HfrkfnaXd1TwpVWnZ24XL4D/7dFkrpjL11iZCCBFdam9UZgX+b3ZjTQ1wUjoye3+JjWe+bDK7IZrcirYk96GZd7kYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710501391; c=relaxed/simple;
	bh=KNgckelpASRuDVwM6/F6UstZSiOZfWHRVUIRnQQxR2c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pVMo9KVHnRbyJaEuJ5B9CvOD5v4IN4jTHVlHrVi+i/xWubx+q/LbcPgjhcy9o3Rz8sbngNIKLvpFVWRaForIT7OI+3AOdMl3SS5P0jumZ/W63msrOkpBbRA6VwIFibTvb0y0tRbShapnTCs1vBfImq1KF6vkwr06jhK7yIVzcek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LGopsBlt; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-6e6f4ad4c57so850220b3a.2
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 04:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1710501389; x=1711106189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T5JNiRjaunQauoZyRAKchrBIX3whGa58HwzCcAYhjAQ=;
        b=LGopsBlteWxpY8he09Td36l5z3oxXVcT1BRUoulmufOCd6N6ppU85s5xvdYmKUEVFm
         v2Bnu2x146hUYt61upmo3BbRdfDoFP42wPXZB7ijw2kZaVznNV1jjxWQXtKyvbbhDIgl
         7pQ8c1dfdjvJhsp4CFvhpECUhmdNcGRrjsKng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710501389; x=1711106189;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T5JNiRjaunQauoZyRAKchrBIX3whGa58HwzCcAYhjAQ=;
        b=gyh/4CMhd4IZxC4jqbkLnvRM+8XuKtCIlt1j6gUHHm8YiTz5EcFCGOoqssSz14d0Uy
         lfOB6uJeNGjfEpvJqPcHH/6qbw72RN+XHEXJONsaacf9ZNmLF6EjZFlLvkYnKyY7FbBU
         Ywm5s+RLfcf4EiVgtzjM2vxECoQ41i6+WWs3M0GVNEvEtEa7i4foP9YpZKPdnlqjKn22
         iANJg6ySH1PsdlojzrLBTkG0njX5w7kr1FatfiMvhAjgNT8Z243f2CuzSvuBT1Ph0I5m
         BitPXupHVwovIvGABs6Ye72FgyFu9KUV+L/wWnWEnCUWAjHhWNCf44Kd6+Ne9MwqmxfO
         2nlw==
X-Forwarded-Encrypted: i=1; AJvYcCUKE/9qjucW/bVGVbtXuW2s80+l3YaSlYBTGu8Os1l+wlNEQA6qCi1fqnP8+PWgxFFJf1PPZV7ZVzcIC47eaBmPaOjJxklCCPZAzA==
X-Gm-Message-State: AOJu0YyuKWC+IB/9omBZzsf24z0vxIqB1sptfW9+tUnjqF7LbLsr6YsH
	W6O7E2esoBa5muPFCxAKfbPXk78oSF5oZadTbnqbeJBGGd1vOBISm+2F0QVp9w==
X-Google-Smtp-Source: AGHT+IFRpeh/WVEnweWX4MTzDUNDWzLUpB5GIhy5sqcAsiRnOjZL5HQfDQh6rz45tKF+tXg2LIwk0Q==
X-Received: by 2002:a05:6a20:2445:b0:1a3:5015:ec93 with SMTP id t5-20020a056a20244500b001a35015ec93mr1101499pzc.26.1710501389194;
        Fri, 15 Mar 2024 04:16:29 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:2f9c:c00a:bf1f:e53c])
        by smtp.gmail.com with ESMTPSA id c11-20020a62e80b000000b006e6aee6807dsm3122683pfi.22.2024.03.15.04.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 04:16:29 -0700 (PDT)
From: Pin-yen Lin <treapking@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	linux-mediatek@lists.infradead.org,
	Pin-yen Lin <treapking@chromium.org>
Subject: [PATCH v2 1/4] arm64: dts: mediatek: mt8192-asurada: Update min voltage constraint for MT6315
Date: Fri, 15 Mar 2024 19:16:02 +0800
Message-ID: <20240315111621.2263159-2-treapking@chromium.org>
X-Mailer: git-send-email 2.44.0.291.gc1ea87d7ee-goog
In-Reply-To: <20240315111621.2263159-1-treapking@chromium.org>
References: <20240315111621.2263159-1-treapking@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the minimum voltage from 300000 uV to 400000 uV so it matches
the MT6315 datasheet.

Also update the minimum voltage for Vgpu regulator from 606250 uV to
400000 uV because the requested voltage could be lower than the minimum
voltage on the GPU OPP table when the MTK Smart Voltage Scaling (SVS)
driver is enabled.

Fixes: 3183cb62b033 ("arm64: dts: mediatek: asurada: Add SPMI regulators")
Signed-off-by: Pin-yen Lin <treapking@chromium.org>
---

Changes in v2:
- Change the value to 400000 and update other mt6315 usages

 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index 43d80334610a..2eafe66fbb8a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -1421,7 +1421,7 @@ regulators {
 			mt6315_6_vbuck1: vbuck1 {
 				regulator-compatible = "vbuck1";
 				regulator-name = "Vbcpu";
-				regulator-min-microvolt = <300000>;
+				regulator-min-microvolt = <400000>;
 				regulator-max-microvolt = <1193750>;
 				regulator-enable-ramp-delay = <256>;
 				regulator-allowed-modes = <0 1 2>;
@@ -1431,7 +1431,7 @@ mt6315_6_vbuck1: vbuck1 {
 			mt6315_6_vbuck3: vbuck3 {
 				regulator-compatible = "vbuck3";
 				regulator-name = "Vlcpu";
-				regulator-min-microvolt = <300000>;
+				regulator-min-microvolt = <400000>;
 				regulator-max-microvolt = <1193750>;
 				regulator-enable-ramp-delay = <256>;
 				regulator-allowed-modes = <0 1 2>;
@@ -1448,7 +1448,7 @@ regulators {
 			mt6315_7_vbuck1: vbuck1 {
 				regulator-compatible = "vbuck1";
 				regulator-name = "Vgpu";
-				regulator-min-microvolt = <606250>;
+				regulator-min-microvolt = <400000>;
 				regulator-max-microvolt = <800000>;
 				regulator-enable-ramp-delay = <256>;
 				regulator-allowed-modes = <0 1 2>;
-- 
2.44.0.291.gc1ea87d7ee-goog


