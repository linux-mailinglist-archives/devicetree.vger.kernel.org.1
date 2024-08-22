Return-Path: <devicetree+bounces-95716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF3795ADED
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 08:47:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1496281BF0
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 06:47:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2E5314D28F;
	Thu, 22 Aug 2024 06:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LojdAPvO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3FF13AA4E
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 06:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724309232; cv=none; b=p/5dOmookJfSdAneWH1+nrkCEkbqa3PkjeYePhIsqSMq0FyC94qinflutebQZXNy+u701KEjoNwPXTaD23mlYmxLxDNw0Oqp9Oz1mtxT/l6XuwVi5M1q59rEPsGUaMCJDYwJVqlOHIDW3uOGtjveZ2NZ45qxU+pChuTigXJCBNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724309232; c=relaxed/simple;
	bh=4prlT2M7ptUqVHJcht1st+Q4i8V3iRCnND+nUDH4uSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nnCMzSbZsUA0jfNWRH3DSLSlnzGJtWSPYjuampfp3DCECg6nQSKPRthuV+kWFkLaM/J7FR2gmtKU3IbnbUI54jifKXh0PpCnR6qEnKmeT7iF/efmmfyxCOJQPYjuSdpQjYJguy3HmQ3Fnw6u03vTjOD0EUlYGbwRl1bNIDRJjXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=LojdAPvO; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2d3c05dc63eso373682a91.0
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 23:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724309229; x=1724914029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iox3pW+t1+/mCNWqBkSwh8gOTlOVaTTolmdqxDRdGuE=;
        b=LojdAPvOJnREJxYUBfk2+10UGcePw5EjiX9YfKrimetPKWvs9gFHNZta7UBt8BZprN
         sHVtTy/8PsKu7/PNFCuZU/RmiuolcanfkZiRr+BofhmwJNKOcAxMX3w+uNCbSVqru/5i
         C9ORygHaZbnIVVjaui3qX3FfaYzNpIvI7SK+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724309229; x=1724914029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iox3pW+t1+/mCNWqBkSwh8gOTlOVaTTolmdqxDRdGuE=;
        b=dBCOmdNLD1IzWNDw6VUyDfNhXS6k2zHJKxUhyJJjbghG2AZV9cX2cshbqjtUhxF770
         pStafGMQLD1Nb4Nk9LJVOORaVmK84631FFo75OI0rDei6YSXRNJKI3URtz97gwN0EEnq
         hQOYsOTITM034/xKdkVEc0ZS3yuF+/HGAtlWR7fQD07O/GliA0Xy936eMhl+oaYEtswZ
         QYKmZlTQ1BKKFFvSb6DWiTxzeTyQeHXCmyRJdM/EeBO/NC2+FpQ1uIUavt9n34XooXj4
         hpScSRWAHFyUMRP2DZj+2rNJW3iip44rY7xdaIncu9oCdCwoFO+J1PuhoqcGNSILkpP+
         3h3g==
X-Forwarded-Encrypted: i=1; AJvYcCX/eul166DALEoOtRvns0AHPM6MbA6SvfcGqOpEB55mQrAoIMAu0vrwf5vu6+XlZ3vSNjotyMgpeM1M@vger.kernel.org
X-Gm-Message-State: AOJu0YzIWD15SATGlls+rwXZ44Ro0wEmhqR5CIRGMxV8DbsMljC31ACW
	trVmlM6bXGo8yYTWwLYJLdyJwE3s+0dsaAIh7XfMX64woC4yX6hq/TppYmxGuA==
X-Google-Smtp-Source: AGHT+IGDm0aYL8ExBHHTkePgeJ1dnpbTcM/gseUSEQPj47QfaHrXBDFNOT0Ci3LVj6t5wZrZxdp1CA==
X-Received: by 2002:a17:90b:4f89:b0:2d3:dca0:89b7 with SMTP id 98e67ed59e1d1-2d5e99fb6d1mr6084906a91.3.1724309229382;
        Wed, 21 Aug 2024 23:47:09 -0700 (PDT)
Received: from localhost (185.174.143.34.bc.googleusercontent.com. [34.143.174.185])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-2d5eb90c542sm3166866a91.18.2024.08.21.23.47.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 23:47:09 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	ck.hu@mediatek.com,
	jitao.shi@mediatek.com
Cc: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>
Subject: [PATCH v3 2/3] arm64: dts: mediatek: mt8186: Add power domain for DPI
Date: Thu, 22 Aug 2024 06:46:49 +0000
Message-ID: <20240822064650.1473930-3-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.295.g3b9ea8a38a-goog
In-Reply-To: <20240822064650.1473930-1-rohiagar@chromium.org>
References: <20240822064650.1473930-1-rohiagar@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add power domain phandle to the DPI controller in mediatek
mt8186 SoC.

Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index 4763ed5dc86c..e27c69ec8bdd 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -1824,6 +1824,7 @@ dpi: dpi@1400a000 {
 			assigned-clocks = <&topckgen CLK_TOP_DPI>;
 			assigned-clock-parents = <&topckgen CLK_TOP_TVDPLL_D2>;
 			interrupts = <GIC_SPI 309 IRQ_TYPE_LEVEL_LOW 0>;
+			power-domains = <&spm MT8186_POWER_DOMAIN_DIS>;
 			status = "disabled";
 
 			port {
-- 
2.46.0.295.g3b9ea8a38a-goog


