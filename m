Return-Path: <devicetree+bounces-254669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5388BD1AB2C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:45:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 01C173037681
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68AF739341A;
	Tue, 13 Jan 2026 17:44:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CB2392817
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 17:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768326291; cv=none; b=BAl2+rWl8JqjZ3KlNUXDpGHtmhlAAHeGAFG9t57e+VAsDdFZZAbCY5kpiymhlhBMS/QjJHsqhDeRCf0PDRjf8SOudlY8LCcNKpKeErfNZ+4QpYVKDTjGAPTjV1iSW4u3JPHw/pNAoqlpQI1G/UawvxhV99SRcMxnKEUNfmaYrzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768326291; c=relaxed/simple;
	bh=724MKfbyRVpOlMBiWmZ+VnfVEBQCW/q6CKIp1BMjM/0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p7cfTifub2AIcdwNWBxNxVN7YSQ5+F9JCJj/RIANhvpLZ8sIreEBikXfSGi3vX/8NXtis4ftfJBsUG1GqpCQJ6MCph9lNPfjUBpinx/B3KuRJF2rpXQ7z/JuyLSKNfkJaeVL7YFHWSqCh6+xBkiToVECeH+bjDiXIMo5mYkPk/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b8710c9cddbso396545066b.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:44:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768326288; x=1768931088;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=s8k0pXMV1y8Iq4ImwhXf2ahDkvy9IQZJDHOXmgWjWKM=;
        b=VlNcInevZs/gbX+7PDn2YCuHjp3Sk/Irix+hKIrsME93apR5gAQRC14u1Dj7n3sg0A
         KoPOW0TjZB+CUwZVAw0q/cpUarR/6aWW8LNhKrgF1b67vn5dZ9IhyI50MmGOx9pLKVjf
         SDV+BsMtHn68J7prJP6mceRPxBUMkGbfn3ulQHN9d/jd7sPy8qjf/cG9We5LR9rQRCrL
         F0/YWvgbVv3nFEmzQJm35e06/eB2OPPRK6mDs3CDCz2DI3NCRtJHpHeVx1VuLmtz2ZRu
         hYQLVE4US6dcb6fg9RZkZTJq43CxdZv+JCZJa5ybuVNn9oK7cxZNUuXkxZB+bxarp/Xc
         DYcw==
X-Forwarded-Encrypted: i=1; AJvYcCUJrF5MtycLi3AiIBb1wDkkh0Vy5y4EfAkbMBG1zg9rTVUmEjujlaxa8Ne7lYbE7DhI5UjdOU95YyZy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/PBgwJSSivEBqUcJ8soh/McCIHMBd143e49RsO9ac0IaHeTNB
	nNvdVKHxx6ySDJ1YtuO4h8RuCte/sSyNArzfC4fUxTBq9Akmhvu86Y0wjqJpzA==
X-Gm-Gg: AY/fxX7VyqjSr1AyKd+cK5HfAqDSFrD8K+he6oEoJzMP6Iw+iiHgLEWP7kX7kqEbY+9
	OecbByhaHFcPno8+vNWE4hdT0+579KbcsJXmzWZEjzrZYFHr+KEbzTfJCF4aiBMnVuHlv9NNnxx
	40jMFmcBaT+8JuJg6k8uEOSmGbemk6yM38f3Io9xcCYc8kz8tXSu8967d9muiTA6Ea6NfpRPpUk
	3Z2C5ZeJLz/Cmx8opeS5OVQU8gZ1EyyLcVKJT9lVjgSL93EAwOKvChZko/p5/iRHNM7ho4m4edP
	5I/Up/VFMnWa8zR6yt62qB14ces+jkfLckUder/bAiDx7Cc/5Eb6zaFO7SOm90ubPfGu8vQ4Cgj
	goqxZuKzD48l7Tbpa+mytQk9SiToaL4cCPc7yo1afj6oFK/73OyAq9QkX0YU95X3S9O9HBvhLSF
	HjjYaC4NOELuiEDjygjqcF6LedNI8MfvCnF2aX54PM0auDqw==
X-Google-Smtp-Source: AGHT+IE2YWlpMgqpFTSUm4yiwlEdYSG2L29zcJaQPD88F1bJ4MCCWbGfpor4ndxKjRsmJ+9m366jmQ==
X-Received: by 2002:a17:907:7282:b0:b87:892:f440 with SMTP id a640c23a62f3a-b8708930758mr832434466b.38.1768326288113;
        Tue, 13 Jan 2026 09:44:48 -0800 (PST)
Received: from [10.42.0.1] (cst-prg-36-231.cust.vodafone.cz. [46.135.36.231])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm20873259a12.17.2026.01.13.09.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 09:44:47 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 13 Jan 2026 18:44:35 +0100
Subject: [PATCH 1/5] arm64: dts: ti: k3-j722s-ti-ipc-firmware: Add memory
 pool for DSP i/o buffers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260113-thames-v1-1-99390026937c@tomeuvizoso.net>
References: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net>
In-Reply-To: <20260113-thames-v1-0-99390026937c@tomeuvizoso.net>
To: Nishanth Menon <nm@ti.com>, "Andrew F. Davis" <afd@ti.com>, 
 Randolph Sapp <rs@ti.com>, Jonathan Humphreys <j-humphreys@ti.com>, 
 Andrei Aldea <a-aldea@ti.com>, Chirag Shilwant <c-shilwant@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
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


