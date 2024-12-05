Return-Path: <devicetree+bounces-127650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 805459E5DD4
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 19:02:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A7E0286646
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B365227BB8;
	Thu,  5 Dec 2024 18:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xSVCz83q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1A621CA1F
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 18:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421729; cv=none; b=oBy13Qis09ciSSJXx1glhSyONQ+gatwZbMavBMVSZXq2tKEehug7pcwBAXc7IParDw8arm+ClQJhTqdzUtP90FAORYQde4Qz4sdV6uzLkBbNIknop1rtVM0MRreb4bO2j/SZT8Zig0MD80RMtCzVM6nv6N8JWJ9o4lHaw1kPVy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421729; c=relaxed/simple;
	bh=rl6qwSwPmwstxso3urexxTtZz5A3LKOG2dzER+Weveo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mZ+h3T0oV40ovMhWqllT3noHjnzaG3PZBYUofyTH6hBO3XrqmVrkigdVrESWAEckH/IPbsBI0J/4tip1ZveWJtrLazXp09fLPPqZSCL9cuYKRIhQU//VTa+uiY7Ssz482x+ySfWuXVqOJHPiPaPlK6d8J/aHsB2JRlq8IwycCus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xSVCz83q; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-385df53e559so975540f8f.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 10:02:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733421724; x=1734026524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fXkOgCi8HIHQGsuWXYvnWFeub+37cwugFPfSGaOkH4k=;
        b=xSVCz83qbeUd4lp+v3/89GpSYD9h9Ts+WttA81OYjlIIpJng5pHxl1L1RuEbWaXgQ2
         QO38uq1xPJSJriN3PKaUmKeYP7Wxpj5A2L9Tnb/OPK8PSYueBzmtoZq8Go6SnuwhbqzI
         sCu8L0+3YJmu2xiI/SpodLKM77MXMYuKlpuv+7Yj6Ix1NA+X+hQuxm5KEKDSQp4Zc1QW
         x4j8KcuRc4yrPaevx/TPjTo6RFoSi01uNzdG5Jb4LJsvCwvVeEHZlSwZmO/utcAkhENx
         y6Jd1nUxiA0JPKRu/deMHjsrNsiuwQxyJHu1iP3IGR+o271QH1TCcZktfV+D1ilKv73A
         eDuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733421724; x=1734026524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fXkOgCi8HIHQGsuWXYvnWFeub+37cwugFPfSGaOkH4k=;
        b=crxBBcq8LJifC7TGmGssBxZoynZ+AMXHarKixPqimtnwvnv3VnWzk46oNzBut8PU1e
         cUea4pBFKmgOW9DFwT0PUHVFh4TQL7TIWVJR0uSKjorR9sMC3mxMGp+Cxh65ucz76SDW
         dPxa1d0LuxfyPYMJJcIcT0OAAVsP121h9pgYT6a9mA/v4FsTJuj1a/ctXKjcVusOgxV/
         66TBrYHnUEjKqrRm/wD3ppz1OCy2i4hzimPP8kFITK5CoY5eRE5fOAHR8us8NnPA+E0h
         ek0CMsnD08GVmul/mt0+6+cLf8nv5M3boiEneAHldETE5/kmoeySudZ0DejUOY4JeW2H
         HBAg==
X-Forwarded-Encrypted: i=1; AJvYcCW67cmNBpeJzxsbqLJIeuoqRTWTckFzJHZ4Ygruulm5nJldCrqdu2bYQuLNCaN6fJKHrc+iFqx0F3yt@vger.kernel.org
X-Gm-Message-State: AOJu0Yxff4+WyppXaAUkPyf9j2hXiJHYGFE4N3ocjOdBtGzR7Mhgv+HF
	RAIjRoT2CFYMaAO1N3U4VBk6RSCZ3TB0pJOjKHFCiede24BaoCzoQ21cosJBRCI=
X-Gm-Gg: ASbGncvwzzl1BtwuzmGfsmQJpCJjaYmyppZxS94rkH81KHMWS0dq3VK5tcR9CUz9tgW
	ez5r9m+YwJC0M413fAqOLHhmFm3ITUzjkblB+8DNqK5WTrrNgdglzu9AigCUB/TDre7XxBsIacf
	nlcTx3dF/72E2vA60asSWCPwXaZULQ+aiBamr2Ccth2E4ft9jk+TXMVFO7HAjd83NT4WgTbGNYg
	CpvPsoZch13z9HyUrPaNb2GqiB/y95fiWgeLuBJ4YdYLOXCsPUZfs5Fl+ngEdAV8ns1PjaEk1Rv
	zOcoYs8658gvlTrgDKI8AHOj74yGPMGg
X-Google-Smtp-Source: AGHT+IEPtZMmft62bUPhgYrLR+oDZpiHUMZkgxHhYwyxhO4GONqKTULpT/JUlhKvm0dRtGKR4n2z+A==
X-Received: by 2002:a5d:59a6:0:b0:385:eeb9:a5bb with SMTP id ffacd0b85a97d-3862b34e5f0mr30744f8f.17.1733421724237;
        Thu, 05 Dec 2024 10:02:04 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386219098d3sm2618228f8f.70.2024.12.05.10.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 10:02:03 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	peter.griffin@linaro.org,
	javierm@redhat.com,
	tzimmermann@suse.de,
	daniel.lezcano@linaro.org,
	vincent.guittot@linaro.org,
	ulf.hansson@linaro.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 1/4] arm64: dts: exynos: gs101: add SRAM node
Date: Thu,  5 Dec 2024 18:01:57 +0000
Message-ID: <20241205180200.203146-2-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241205180200.203146-1-tudor.ambarus@linaro.org>
References: <20241205180200.203146-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

SRAM is used by the ACPM protocol to retrieve the ACPM channels
information, which includes the TX/RX rings among other channel
configuration data. Add the SRAM node.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 302c5beb224a..1441e9a252c2 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -269,6 +269,14 @@ bldr_log_hist_reserved: bldr-log-hist-reserved@fd900000 {
 		};
 	};
 
+	apm_sram: sram@2039000 {
+		compatible = "mmio-sram";
+		reg = <0x0 0x2039000 0x40000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x0 0x0 0x2039000 0x40000>;
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.47.0.338.g60cca15819-goog


