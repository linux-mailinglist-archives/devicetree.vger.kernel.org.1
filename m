Return-Path: <devicetree+bounces-254857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B66D7D1D3E6
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:50:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F29E2308BD4B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 08:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F09537F8D2;
	Wed, 14 Jan 2026 08:47:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BF83612D4
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 08:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768380440; cv=none; b=h+C6KLkVyZ9SzUMo0GBgE96W5PaGIazfKOJXhxcNFj4hgPTGwnDcFyUugzS1UYHnAPA0xqQ4SyFKVsKy4Xa0h/1WPrGTVWGSElUMWRRbRXA1HYtXDGD0be928wQtlML1dcftaOatLw/eGTC6eU2JOAiQX5hrNeGI/25j3KCAbDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768380440; c=relaxed/simple;
	bh=724MKfbyRVpOlMBiWmZ+VnfVEBQCW/q6CKIp1BMjM/0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pL1IwleLXJBTchupnp67laoDf7kBZ3JqQ8U1eFgIDBJpm+BoWrDrySPBqN3AGQRhMHtfUFuicZ6qxpjlhxsN7pAlLmf80Iidt/Bc2EDOFPyZw6fJoq7SoLiV2ZgjcJZ/wU6mvwXes1j4Kt0P8twWKnFX/YBminTep0PW/mSn3UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-65378ba2ff7so1960897a12.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 00:47:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768380435; x=1768985235;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s8k0pXMV1y8Iq4ImwhXf2ahDkvy9IQZJDHOXmgWjWKM=;
        b=KvNLv7PM85jRtvues60ltFGhsWzsTEwcss1mNvxYYhS+zA74ehHDXqyNcLusBfcAQ1
         cZAaCggIYfZEbWcvhMUiPkyCVcJ0tZ7MuDPO8prLrTG5mZKBlB8Uip5F7l2k/e/9wh9g
         ZoDjbqMYHUysrSZTQ9cHTXEbikoch3/Gxz5F6wXixfh/R9sb3EZnaMPoUi0L0P6shhv3
         3EP39gyN46c5e+mAuqIi5ZFSRM0CVPyOmmVPHDjeBpidrwLo/h5eJerQgDHEw8BU7oMG
         55DP9/qI8i+3hncLOCzET1yW2QU3rkfAWFLunroI7lUNtR/XoqBLlkNB7NveN53M3C6O
         RfAw==
X-Forwarded-Encrypted: i=1; AJvYcCVvG5ZLmqvm9ugb1x3/TcAgJw9XKtLMm8+4IWr9iPzx/RvPyLoVFVg7n56QdOkUAWkZmg1EGKlVLGPe@vger.kernel.org
X-Gm-Message-State: AOJu0YyIop4cZMG8Qw5Gm68Y0dTqvYDkT0df/qjY0Ybj3MTceMBmLt/P
	YCTlikAnX0YQScwM2A3wpWRaB8YRXsGrEEC8ay375RQftltlY8/QyGOs
X-Gm-Gg: AY/fxX7MMBQugY9QywENQsVnXKCYPOdaVPK5C2Fmia4ypMEq6AoHXvSCGTK5BqE4bPw
	NJI8cA9F/r1Td6gIjqRTXQbcgMOEAwDBBKA+J4R02pixB38cxW8jzwbqynStMmHYit6/7VIHc2q
	uMTNCpDVTf/bkF3JlQ3MuSzjYmMubt3HpJWmle/L6CpJhX2mkJPKX9tLnwYVlUa66QPiO6VyVA9
	BYMdFQzXBoqZ4OKJnjg7YNq9OULWtpeLiWNXX8jg+6q1PsaFMTILrgcmY0PfLujYSoWm6dJH7S3
	oq108uO1Dwk2x/vRulv5nKppKgiNd6c6hmOCXBVDyzWc1DN3aeL6AHrtVvUVEoIXNMqw6cCVpZC
	m4AdIWc6Mb1VfKJiokx6cmw07znnuTAjc+p+Bs4VLixVq/36/eRjwj9KoEXWYD7J9oWO7i+dgCt
	n5ZEKvwapGjTXCzIxLLzkSAwMWzVLLkmtPVORtMl/w9JkQOeSpzGHMrb++
X-Received: by 2002:a05:6402:1474:b0:64b:82c8:e7b7 with SMTP id 4fb4d7f45d1cf-653ec45985emr1298237a12.24.1768380435183;
        Wed, 14 Jan 2026 00:47:15 -0800 (PST)
Received: from [10.42.0.1] (cst-prg-36-231.cust.vodafone.cz. [46.135.36.231])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5d4sm22379136a12.32.2026.01.14.00.47.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 00:47:14 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 14 Jan 2026 09:46:48 +0100
Subject: [PATCH v2 1/5] arm64: dts: ti: k3-j722s-ti-ipc-firmware: Add
 memory pool for DSP i/o buffers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-thames-v2-1-e94a6636e050@tomeuvizoso.net>
References: <20260114-thames-v2-0-e94a6636e050@tomeuvizoso.net>
In-Reply-To: <20260114-thames-v2-0-e94a6636e050@tomeuvizoso.net>
To: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>, 
 Randolph Sapp <rs@ti.com>, Jonathan Humphreys <j-humphreys@ti.com>, 
 Andrei Aldea <a-aldea@ti.com>, Chirag Shilwant <c-shilwant@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Robert Nelson <robertcnelson@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, linux-media@vger.kernel.org, 
 linaro-mm-sig@lists.linaro.org, Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.14.2

This memory region is used by the DRM/accel driver to allocate addresses
for buffers that are used for communication with the DSP cores and for
their intermediate results.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
index 3fbff927c4c08bce741555aa2753a394b751144f..b80d2a5a157ad59eaed8e57b22f1f4bce4765a85 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
@@ -42,6 +42,11 @@ c7x_0_memory_region: memory@a3100000 {
 		no-map;
 	};
 
+	c7x_iova_pool: iommu-pool@a7000000 {
+		reg = <0x00 0xa7000000 0x00 0x18200000>;
+		no-map;
+	};
+
 	c7x_1_dma_memory_region: memory@a4000000 {
 		compatible = "shared-dma-pool";
 		reg = <0x00 0xa4000000 0x00 0x100000>;
@@ -151,13 +156,15 @@ &main_r5fss0_core0 {
 &c7x_0 {
 	mboxes = <&mailbox0_cluster2 &mbox_c7x_0>;
 	memory-region = <&c7x_0_dma_memory_region>,
-			<&c7x_0_memory_region>;
+			<&c7x_0_memory_region>,
+			<&c7x_iova_pool>;
 	status = "okay";
 };
 
 &c7x_1 {
 	mboxes = <&mailbox0_cluster3 &mbox_c7x_1>;
 	memory-region = <&c7x_1_dma_memory_region>,
-			<&c7x_1_memory_region>;
+			<&c7x_1_memory_region>,
+			<&c7x_iova_pool>;
 	status = "okay";
 };

-- 
2.52.0


