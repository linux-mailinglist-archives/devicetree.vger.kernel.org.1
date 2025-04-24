Return-Path: <devicetree+bounces-170382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F8DA9AA3D
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:29:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 895FF1B85234
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 777DC242901;
	Thu, 24 Apr 2025 10:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="EL6uNv5m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED96B2405F5
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490358; cv=none; b=HTZU/M35mjSPYSW3qdv5yhfolaE2Tc3y3Pr2bRQOuKtJ2cDC2GiiGG1HZ8Vy0bQMMZAv1tJ9sZ2sBrrYCnT3Du7wDFZr47E+4a9JCaCb0Z1PnaDJjXwwtORTb3gFcSwbzZE5F2M9bUnomZp9qJP6tsZRMtzgQOJPpdhqD/Udp5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490358; c=relaxed/simple;
	bh=v4fkIWZlRlBlwcudSsMGRFd1gy1KN6jxgz3zZ2PYfv0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kD0nRxjvy4lg6KwtNXQemMUlVT62fAsiDbUVgZSH1UMnvozoGeEhuozTByoYQiPdj2OxwzzrNd09y30n4PrMLjjXQcWog5wjddPPV/aw/fCFH9wODcfC1EaeqMZyP5dSJrZ8Ni+RVm25JL2z+L7/tBHRZxAOgODHd0jB5k0j4c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=EL6uNv5m; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-224341bbc1dso9313865ad.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745490355; x=1746095155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aSScOVwhUO+K0/3KqN7maXbkfUTR6/cC4fz9TlS9l30=;
        b=EL6uNv5m3QW1X/b7SX9m4M4lIslDnX9Y+xejcBfq+KqM24ImmxwfKeUABLnxl50UZF
         QZN2TR5j7p9j3XzWAJiQvxuGTjWqGiMKgMHNuKxxgwvdfBiSMN2s1ZptGv68RGvt8VcZ
         lQTp4E3fjxN//eSjSAoLN8xQJs/gSmlSDhL2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490355; x=1746095155;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aSScOVwhUO+K0/3KqN7maXbkfUTR6/cC4fz9TlS9l30=;
        b=w1gFU6xnkAyWcjdRGnA+uTuYcuQv+a93caJCDld6shfL0J5yT6etidEhUSExki2tX0
         urMacd+J8S12B/HksTrqETbTcliNRmiGLRthap2TGGjUdDrTYzl3xLrkjqiCwor0odnS
         OsgTMJ6+oFjL2ur/+nrKgVcIg29VKH5GZfgac2n6FoZYXMe7+fXfU2dCJN6vMe2Jr9NB
         oKdGvqKaH/NcLTwNPHb+zZ6Kj8hHU6TFUqGUs1+2AE2mY11grN8pJunRYVd1osJm0DPF
         4XdjFpf0iF7bJC6t8c8x+5OtkqIwqyS9YkeHhU7EUEKLYGnS0bZxYNIE6TU080hqbI1g
         V6Wg==
X-Forwarded-Encrypted: i=1; AJvYcCW+sNCQ5FnYHfeQcOTLyQ9SrkL7EDNAIuA02WT4Hznigo4gYwgbWZtVnloYk03AGTKrvecdaNMgH8jH@vger.kernel.org
X-Gm-Message-State: AOJu0YzgBKg7XmATpqTKcaPbLvxdW2zsXzngFQff1507Dq3BeKusFgJD
	Htpw4Yt16CfqUJo5/4ib+fdLzTmYe6a/jQ3bm3NdBTiFoSL+rVyKIkLc64f6yQ==
X-Gm-Gg: ASbGncv0mczYp4QvmXm+c/srlRYxhLOeNV1ACesbL4wQrvqBQ7J5hE0mTIjU42UX4Ma
	AOfN2pxRwae2LMDTX8VZRIMSxwTGT3uWkIkGXwfvw748I287qUCrlv2kW7YQDmIyMz08jQFAjgD
	zR7Vfwh3MaGBCj7ZZQKI+4IukJocP278MZiMfV5UGE4gCNMB1f6vOXNUu3ksrYnxNDilPWWXu7c
	bdlaySTs6OokgUVXN2uMutlwKbnH+yQI2LfOfN5FDH8kQNOF9GEsuTMdWYS2SdXpIU/sR8cT708
	I+PIjCoLaf3cgx0yrYw6YJEOTVLh5bOn8hjX8sdj69eMXrXssmRoVhPrEw==
X-Google-Smtp-Source: AGHT+IGVWgP+9f44cPO1R7mfB5z1uFUey5yQnac/oTnGNxfAaOr9FFOdDrHbUFBI3ie8mEMC8Jfp1w==
X-Received: by 2002:a17:903:17ce:b0:223:5e76:637a with SMTP id d9443c01a7336-22db3c0e722mr27960035ad.23.1745490355124;
        Thu, 24 Apr 2025 03:25:55 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fa13:e633:684b:257])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dda40fsm9680305ad.104.2025.04.24.03.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:25:54 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 11/13] arm64: dts: mediatek: mt8183-kukui: Reserve memory for audio frontend
Date: Thu, 24 Apr 2025 18:25:05 +0800
Message-ID: <20250424102509.1083185-12-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250424102509.1083185-1-wenst@chromium.org>
References: <20250424102509.1083185-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some MediaTek platforms already reserve a small block of memory for the
audio frontend. These platforms reserve it at a fixed address, though it
is unclear if that is due to hardware access restrictions or simply
compacting the reserved memory blocks together.

Reserve the same size of memory on the MT8183 Kukui & Jacuzzi families
as well, to align with the other MediaTek-based ChromeOS platforms. This
also helps with memory starvation as these devices commonly end up in
low memory conditions.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 0fe9f2d1b912..00b97cfa0eec 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -85,6 +85,13 @@ reserved_memory: reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
+		afe_dma_mem: audio-dma-pool {
+			compatible = "shared-dma-pool";
+			size = <0 0x100000>;
+			alignment = <0 0x10>;
+			no-map;
+		};
+
 		scp_mem_reserved: memory@50000000 {
 			compatible = "shared-dma-pool";
 			reg = <0 0x50000000 0 0x2900000>;
@@ -198,6 +205,10 @@ tboard_thermistor2: thermal-sensor2 {
 	};
 };
 
+&afe {
+	memory-region = <&afe_dma_mem>;
+};
+
 &auxadc {
 	status = "okay";
 };
-- 
2.49.0.805.g082f7c87e0-goog


