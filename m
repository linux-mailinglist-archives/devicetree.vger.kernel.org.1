Return-Path: <devicetree+bounces-136760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D88A0618E
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:19:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB298165E62
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 16:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB273204096;
	Wed,  8 Jan 2025 16:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="019Ly4Tr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C323320011B
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 16:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736352957; cv=none; b=C33WmVprLMWRZ3yGJdhnx/aVf4ilXwGilgCM9pV8eeHlWhZjTHCKwyGIppMFLM3O4ALS5sgx1lGYwRDtc7DqBSvBWFim7E7BuKZxfcgtZNC1K5/frBP1HpP7uzp8TzPIna4z6Hxlgl6fyxIcDl/TAjeRPJP0Z+fBtAONq8Vm3wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736352957; c=relaxed/simple;
	bh=/H4ZYocEqi4RE1sb0guDfUix0kyAfFw8e32hk6SxuDc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VfrkFgSjkqnzpzJvnCEdRoeqhHW4jeBaHYnxgOOYTvmODe+Uz2nGEirK4CeHz2bF9Dp4pUpx9BFz6S1DMaqyjFbJ2/V6sq5WQhOQ/Lt0F937ARpjn+wC4jZPuNjFGVBPXnd0ud9QIQir2Pbk8lGpjaAhJUq40ivCYYEUTxOqdiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=019Ly4Tr; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4361b6f9faeso7096345e9.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 08:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736352953; x=1736957753; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bZRl/jIT8uB/r9kmnVgG5TBst8UCINOdajarq/Q+Phg=;
        b=019Ly4TrAwBWGFa+AWFPMOtN8fpFofRaEs9OAi3CltIizhdFCl3MqF9W+kVp3Yoyeo
         z2J8g1vSrdOiUc1ctTSLJrfKrPuDsWs43KV1Cifn8bIoFePDl+lsqPxCGb7W9eLqbusl
         us5EV6ff0mGaDaZFkb6lHRCeDXBuvq8B9kRIPnzpUfP76xfWfu5U86P4Q6E2zU4E5MJX
         3oH5JDTqta+UaisH9JYOv0b4ZkR6WVdCujfThpo7AIL9jdBqOXUzCfEdK5vP0lH228MY
         0NdhbN7zDUchBv3XD5vD13MF/gbplA3i+R7rl7Qytb2dlFaBVUmW4M/1QcCkVlHKqTEt
         1HGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736352953; x=1736957753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bZRl/jIT8uB/r9kmnVgG5TBst8UCINOdajarq/Q+Phg=;
        b=d0D2kDFm2nWZNGX4LOiW/SSl+671lIaP6DKDLvCbbyDR7cY7BXxdlMe8d6S3dUZtQw
         hYWpNQ9B9ktL3uETB5p4u5jlpybdcliPDcDi6ptUOR0ayplnrPE56Plzu9ZIPUOESAh+
         sL49cY/A19uHer39FRE2Em/hqMr7lXO3zt23VRGDyUoLIWJ92pSudg0Fmu91oOxc83br
         EfXux7/YeegxrjifEbhsUz0IuZe6LEzANQ+2Qdt70Q0tXLL1SsV5nQ4+8eGzBvwCSKNk
         dAAPSX9egyDybuZhUxgbpkNnHRJZEUQeQ6Xxya+/oubmCUQPW89d8qxtpqSSuKYPs2Wn
         GDgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtWeUImYi8WViD5MQ/u2vAFpi7/BiMevQOiaHIKsW/xVOESEotju0weEk02/azNDrQgQkQttmV1pMe@vger.kernel.org
X-Gm-Message-State: AOJu0Ywexe1kK4r2WF/7NQqhuoBKvi3JZevpT5Xp5lVrHKdRwQrMO0mx
	DeWUrYPjzdvCI1+STf25iiTcsmWhXOe3VRO2LvVRUJrRtZOYHGJyesIWVb+6KP4=
X-Gm-Gg: ASbGncuwdtMuwYte67/rA1a1cOK7tpo3Qis223Yp5BWcvOu1Po5QXdDfJV7GSSby3CQ
	AxKGTNLEpYYkEkUVTqQq8hzRLyOR+psZHxUN8vY/GEa/Ar5JkTwE9BPUoSyCaJ72knuGuc4XQqU
	y+DZkPoyUIjnUos/UmU6GYenx8nDVcVfR3mukKCXqVMJu2UE0ONpYr4bKKxHfPaE/sEvfVCypoK
	hlU3yW3o5Cbjjw7/FGTgJ5/UxOt6DzWwREu25IMFapKVp1ljIT7sjQntJlr
X-Google-Smtp-Source: AGHT+IGT2W9yiRNnHWhCQFwEtFEOBt+fTSjqZ7msqjn6YQpc4lBgX0/mDPLImROOnOo9J0j7h9H6Gw==
X-Received: by 2002:a05:600c:1c28:b0:434:ff08:202e with SMTP id 5b1f17b1804b1-436e1de8c6bmr31114125e9.8.1736352953222;
        Wed, 08 Jan 2025 08:15:53 -0800 (PST)
Received: from [127.0.1.1] ([2a01:e0a:5ee:79d0:a6ac:e6d2:88e3:8ea1])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436dd14dfcasm44378105e9.1.2025.01.08.08.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 08:15:52 -0800 (PST)
From: Alexandre Mergnat <amergnat@baylibre.com>
Date: Wed, 08 Jan 2025 17:15:47 +0100
Subject: [PATCH v5 5/7] arm64: defconfig: enable STARTEK KD070FHFID015
 panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-display-support-v5-5-3905f1e4b835@baylibre.com>
References: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
In-Reply-To: <20231023-display-support-v5-0-3905f1e4b835@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=772; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=/H4ZYocEqi4RE1sb0guDfUix0kyAfFw8e32hk6SxuDc=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBnfqSyZUqWDoRMqRxRWHdPZ1OmxpMWlPUStE40NTbR
 Qh5ok4mJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZ36ksgAKCRArRkmdfjHURcKfD/
 4j0lpGO03jOuFcKFmvdaUaWEoZgiGAxt8XbpFYnaIbzTWK37FaYHEIf0bmWVzjb36+j7dMvjk3G0vE
 tDu1yKnGhJNNZvpXYAotSbPYGfrG0wFGa53PDQ25CFHWfjw6AuBoMmQx89hkTD7WXlECivSkpMG9Ex
 /dM+uCbl7m7BimpucKnVF8YrFNrw3vGeLald1Otgt9AWwjDSsCeU2Oy57L+BnP+/eBI+jmv9r0Dap2
 M4p1qYPfkMm3ebiLkEUvu2THntvG+8inAV+RvNAoRWfLaGejPYVB5zrPi2DJoECyhMvYKLIu6m23Kj
 gGa1P8jpok/dMlR58qCfw7xoFeSqTItsSI/W4p6Xymz2Htq+CQJjI0sQW6r52jj0GTGK1mE86Zkyh5
 V43A6rJeF+D2c9KFPX/DU0TOts8T7yrae/3G4Kx9mIae1bYWIRqROUP027GtOiWt0Oid5EENR+fxWW
 hrZONNg7KZIhiRHx2lgcdSCRSSawj8U5v/OFOVgl7n8aDGMm4L20ldq0upuGTEH0/58PvzDPNm1lxM
 5DnnNPlY2E3sd6V8WfmAMkOdZC4b6Z0cPzIq/yUilH6307scGsEPpoehZoNfiLRnAep0Mj4wsSrsM5
 GWG7aY9McdcqYrM94dwZQtfzr98WvGjRc61h8Py9+LTeTBkcxSX/bKsb8KOg==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445

Build Startek KD070FHFID015 panel driver. This MIPI-DSI display
can be used for the mt8365-evk board for example.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b2db31e010ff..1e2963a13500 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -897,6 +897,7 @@ CONFIG_DRM_PANEL_NOVATEK_NT36672E=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
 CONFIG_DRM_PANEL_SAMSUNG_ATNA33XC20=m
 CONFIG_DRM_PANEL_SITRONIX_ST7703=m
+CONFIG_DRM_PANEL_STARTEK_KD070FHFID015=m
 CONFIG_DRM_PANEL_TRULY_NT35597_WQXGA=m
 CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
 CONFIG_DRM_FSL_LDB=m

-- 
2.25.1


