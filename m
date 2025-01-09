Return-Path: <devicetree+bounces-137001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2F8A0737D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:38:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 564DE168470
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4BC216E20;
	Thu,  9 Jan 2025 10:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XkUs7NoP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B1A216604
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 10:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736419086; cv=none; b=lzp5bDmpNZ54uOCy2x8tfY3/m1ty+iKiwgq1x+2GmrfELWRJMPAadoEqBBNEJtHwAK7Em6ps8QpiREy2uOiR/HvN7EA8knACpi3hFvWOJkkGw0X69a7i3abeZIpd1/9UXBpr7El4rDPyqHgvGHwnOjRsLpwT4KHX4wdEUksY9zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736419086; c=relaxed/simple;
	bh=5LcQ4cCyrjtrBHi+BM+fpfBFczkCA62rUsdMrSt+Gvg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rCvOLdjXTVfFpDwWDIyyphZxUZyi3grTpWCeI0Xmw1gWmoQn9KUFQi73HASBXShNfA7OM61xq0+33n74veungVBIuIjqqZocozyWc+BTCGXpwxP4iNb2D/zrWA3hpljPHymLZX1jG/0DpYYcH7S4uhg3DHqLyLH3iSFJGvh5DYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XkUs7NoP; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43624b2d453so8047815e9.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 02:38:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736419082; x=1737023882; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DCXEkdQUkL2wd08/hMtAK7d558exhzf0emr4McwTqMY=;
        b=XkUs7NoPU912KQwGtd5NtRkRM805/wWu4a+BnYowQnD3Ohm64gVA3nizVb/NMF+u1g
         qsLPfMn1x/BUVmIlT/u9Af3wt/UlS9OPGyweWMn8egskahXJA7vmSkwzcLjaYNTKGvw9
         XHrPNSs2OyxmFURRy8iUSIaO8OWEv6cAu5IreU1Zhzr29QcoHnjpxyWodAtKNbCVRN1W
         RZhI7IpJ5c/aSoc1CL8/6vVmyQxmzgiaCJQQABH3zvts0UDT/YSr92bLxyBvxPEu/OfR
         X8rj6f/cHIwMDRrWmrdkb2yk5h/pN8U+P/9SH/KP7Vk4lzcRSdEaM+BqWlz6plIwRM6c
         qO8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736419082; x=1737023882;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DCXEkdQUkL2wd08/hMtAK7d558exhzf0emr4McwTqMY=;
        b=o8b9QpR/ApDG3Ho/EWbg/QilCCmQs6aYHNeM9eQiRaBT7f2ITZD29ptLclk8fvo0wH
         AKDPk9JVltg6U5e0xBFb4yhTLDJyyl7upR4ryu8RYG9AHoI6E/Bb9thA7hBZkpTHg7lh
         bj36hnbza2861leX6Q3YDmI3nY+L8eSme9Vuokn8hO+aBxkOTjHda/R7EAcVUs2zRMP+
         DaIozUtQwGqwveEQEoe8jNJkDSpIY+LYmfwUH94wQrdtfQvIah95d38HOT+gChKEOC3x
         cuVgvYTJ1C3vXr2yMLPsRz+efxtGfgPD+oAL8M9MiOxiOtUffE35LG2ZEaQ7sJvPTUMq
         PIHA==
X-Forwarded-Encrypted: i=1; AJvYcCVvc9D2hwg73dyj2yXGvr0R6pxzpdNDoAI3lU/wlxfxn/rz3qOmz5q1ntM7897NpCy4IOLQPqbu7kHy@vger.kernel.org
X-Gm-Message-State: AOJu0YybSbIyY6xGRIJ8A0ffJpf78zq5q+TEgQC2kGLrYYeB4TTHIWRn
	kutKkfBivH0Z0pf0FScyCZRK0caGESBkmA3N/zEGYFkK0tRAoLnHLB54GKdPXDE=
X-Gm-Gg: ASbGncukDC5+OdYvkxfvWD8lszquaghenRXM/orBXbhUWXPQCA7UhwqpwSsO6vWjPIC
	CovHB+wYKxTuBUW53jYdibvfx3uZ9JrrQrS45zwokmC7oyyVvHmCg8K9Jj8Icrg5fJeXsw7Mzu/
	/RU82GK6VI1OlXUWXPx97qFhiyCPghWbUo9GiC/he4rY3Gl+FtqfltgOdVFKfv4sHbO1BJva5Vj
	BIMcptMOjGJjQfCLFVLrvGr6XR4zuwk57FTrNbh9o+jLbOtGGQDr332f2k=
X-Google-Smtp-Source: AGHT+IHDqk9Dn/QqIZHU6jgykmIRsxf9NASNh5jt9YjZTPMmzwA2ZvT2ZXMyssDp6F9Dcqpt/13q0Q==
X-Received: by 2002:a05:600c:1c8b:b0:434:a852:ba77 with SMTP id 5b1f17b1804b1-436e26a7e1emr61442675e9.15.1736419082410;
        Thu, 09 Jan 2025 02:38:02 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:125:358f:ea05:210e])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436e9dc8826sm16428195e9.11.2025.01.09.02.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 02:38:01 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Thu, 09 Jan 2025 11:37:57 +0100
Subject: [PATCH v6 4/6] arm64: defconfig: enable display support for
 mt8365-evk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v6-4-c6af4f34f4d8@baylibre.com>
References: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
In-Reply-To: <20231023-display-support-v6-0-c6af4f34f4d8@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=884; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=5LcQ4cCyrjtrBHi+BM+fpfBFczkCA62rUsdMrSt+Gvg=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnf6cDT94L4X0YgQPmvNBZWcAPwVjpeyziQ4f7xGFx
 12bbNdCJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ3+nAwAKCRArRkmdfjHURfIID/
 46lLcLh3k8s/bf1kjHlDFKxQYXHfHNEk+fM0kc/FCBgx/BsY3Pqwg5Xxop+5OsozYOirZeb6Pue8XR
 MYFlq2xGGOhzoi6L6cv9U4D0aTPkyRAyotixoFwXz/vff51ZwS7HJbjE6lyv5LVw9Om+EDHfpv/Ri5
 fcvo32f8ArHOWrw248Sq83AdKC6Rb/4oEf9NyEjCNhScCnoniayIQhsEvX2AnlGWRsk5SCFH/R3YAl
 qH2wsE4mXIR2n11/R2OSbSVJPRQrJW4r5zP6thvZyO0tlHD6c4wQIB+f8xkqEMI7rpTMIvIxyzZwcC
 /+K24WvmfO/rVeKeAEI/ZXh0kwYFmR5RlWlCBJEzah3Y7/HmnFGmHdZnGtU13PGuubeU1yKXBQeRoo
 kb4auVvR8xbDwifrB5Rd3Rcdu45OercclIlfXA3SFsPqmR5VsW2Osvlhj+Bx1J5HLvHv5c5gu1q7Rc
 UBw5z5jYRnBN9jLagFonr+sdNAabpWx03urz9/Dn6OHhxjwG2Gyi4opLY8Wj++uhF3vXa8pX0EGUpo
 PrbUw7qmwh2ozUnc6YqBNjkGy/uMpHjS9XLUKh9HowiZyWvve+3pPsvCh48F1joL0yS3VPIk+jvWU6
 e/eT7KD81nVSxjVNX6sTAW6Wo7/o4ICmWbBJ4BvUfK9LkwjnkH5G4YnoPJfw==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Enable the DRM HDMI connector support.
Enable the MIPI-DSI display Startek KD070FHFID015 panel.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c62831e61586..1e2963a13500 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -897,9 +897,11 @@ CONFIG_DRM_PANEL_NOVATEK_NT36672E=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
 CONFIG_DRM_PANEL_SAMSUNG_ATNA33XC20=m
 CONFIG_DRM_PANEL_SITRONIX_ST7703=m
+CONFIG_DRM_PANEL_STARTEK_KD070FHFID015=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
 CONFIG_DRM_FSL_LDB=m
+CONFIG_DRM_DISPLAY_CONNECTOR=m
 CONFIG_DRM_LONTIUM_LT8912B=m
 CONFIG_DRM_LONTIUM_LT9611=m
 CONFIG_DRM_LONTIUM_LT9611UXC=m

-- 
2.25.1


