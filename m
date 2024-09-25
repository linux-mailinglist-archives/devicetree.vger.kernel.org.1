Return-Path: <devicetree+bounces-105235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEC998578B
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 13:02:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BF4B1C22ABE
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 11:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30D29189F3C;
	Wed, 25 Sep 2024 11:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jafBm6Fn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE51D189BB2
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 11:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727262103; cv=none; b=p0sGLlJd7exubPm5M5GBbIxswTmeW/E858+esN9pXpEFqkzEtLXc75sHBerGZXnw2JXHVh+3edXoX32sna+1AMhdeswyW3V3PZqO5Xv9R4PmgkwBTepqmdbG6SKm3a06zvbh34IuSsiOH148eL8AuD3pGy06KNl5ON7khr4vJA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727262103; c=relaxed/simple;
	bh=qTmn6cvNPS/41vZDFYHAEqEZ5hFW5+iV9uAFz4c3bHQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rE4ZjVQIkBQOqVCUIUt4KJvBT91zTO0H3nvaIsxpng0vFO8llkeLOf8XfHID0icqiXhimI7uGlESBOvW2koOnlYyqxM1IJQzmoKmoR/ysW4hdTQldMmJ2Rdv6tWmVjFzS64xCIbdBBsQaZFr8PdKgz+0v6KZAatBo7lElxfXF28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jafBm6Fn; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-7179802b8fcso4656856b3a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 04:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727262101; x=1727866901; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+0gdoWEmQ8OIzTuFnl4n60fS6o89niEVW+7kgdyvnOE=;
        b=jafBm6Fnr9LjWk5Ht+bIW1Rd2r0XRHGe6g0ZYsvjgMW7yJ0HnDAhWAagmYGXHNUSAN
         8goMzYrk7HMXJqUxMZoCEzcUMhj/5iTprDCPnC7iwO/3j1G26f/28ooii62tAWkv/Hmd
         w3S13Y+kcx+lcwHBbvamisSJAssHpPsb6APjI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727262101; x=1727866901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+0gdoWEmQ8OIzTuFnl4n60fS6o89niEVW+7kgdyvnOE=;
        b=e83a54rieSV7PwLU4fzfXaLPD+rS2OVruW2TD9hWWoAkR8yUJLj+Agpe6jAuw8WeTv
         nSJ4qt1dAgKwMwXnie2xrQVPiXiMe5jKnKSvGECJE+wwGOm7HW08iYyGsovxJksgCGJK
         yZIBWVHOojSM2EATn2V5U63oLGUhbC6zSnwxM/s6FSHmerlskarikFQBJh5OurP1aKO6
         HDq0xW+mj8herWE8qa2SEA95Pz5WfL9JRSH/PBL/ZDPNav3vx4IpBfzEd/KJh06uYnW8
         eDAfbzas8hNXE+eLh4fFVPZ4DIlpb5l6Xwmzoplw9pX/m+g3yjVrLcS0ASa5UQFIf2DI
         SVlg==
X-Forwarded-Encrypted: i=1; AJvYcCUiE6/RVvpTfd64NC+eSJFxni7TUwpwBbSrz/bozWMb0k1FKzUkxWLAC8YvPMIF7ezhvwVTJAmjsu2O@vger.kernel.org
X-Gm-Message-State: AOJu0YwtMZ9cyYQTWyaL2aTXJ9cPyC2CmH+yQ2PILMyvb8Y+o+t2g2zd
	mDFmUrcrxIYmvQfVUuV2bsaCQIKork9TsQ+mfMeOJFoROo3utNWWCKSwXuvEmw==
X-Google-Smtp-Source: AGHT+IHW8akhne8ifxBoarbEIqQkjZqpqla6rNR9R3QeDqTmmCGIt95+B1YaGfD1lQYvQ0y0FfdixQ==
X-Received: by 2002:a05:6a20:1010:b0:1d4:e56e:93b5 with SMTP id adf61e73a8af0-1d4e56e93bbmr1103285637.16.1727262100947;
        Wed, 25 Sep 2024 04:01:40 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:2b86:78b6:8ebc:e17a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7e6b7c73085sm2570298a12.59.2024.09.25.04.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 04:01:40 -0700 (PDT)
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
Subject: [PATCH 6/6] arm64: dts: mediatek: mt8188: Update vppsys node names to syscon
Date: Wed, 25 Sep 2024 18:57:50 +0800
Message-ID: <20240925110044.3678055-7-fshao@chromium.org>
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

The MediaTek mmsys is more than just a clock controller; it's a
system controller. In addition to clock controls, it provides display
pipeline routing controls and other miscellaneous control registers.

On the MT8188 and MT8195 SoCs, the mmsys blocks utilize the same mmsys
driver but have been aliased to "vdosys" and "vppsys", likely to better
represent their actual functionality.

Update the vppsys node names and compatibles in MT8188 DT to reflect
that and fix dtbs_check errors against mediatek/mt8188-evb.dtb.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index a6cd08ea74eb..98ba3485a8bd 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1783,8 +1783,8 @@ mfgcfg: clock-controller@13fbf000 {
 			#clock-cells = <1>;
 		};
 
-		vppsys0: clock-controller@14000000 {
-			compatible = "mediatek,mt8188-vppsys0";
+		vppsys0: syscon@14000000 {
+			compatible = "mediatek,mt8188-vppsys0", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
@@ -1801,8 +1801,8 @@ wpesys_vpp0: clock-controller@14e02000 {
 			#clock-cells = <1>;
 		};
 
-		vppsys1: clock-controller@14f00000 {
-			compatible = "mediatek,mt8188-vppsys1";
+		vppsys1: syscon@14f00000 {
+			compatible = "mediatek,mt8188-vppsys1", "syscon";
 			reg = <0 0x14f00000 0 0x1000>;
 			#clock-cells = <1>;
 		};
-- 
2.46.0.792.g87dc391469-goog


