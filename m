Return-Path: <devicetree+bounces-66968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED308C5EEC
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 03:47:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5B611F21F51
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2024 01:47:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C0F879C2;
	Wed, 15 May 2024 01:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="z4g1OXQp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC76282F7
	for <devicetree@vger.kernel.org>; Wed, 15 May 2024 01:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715737627; cv=none; b=nBno/PILacadWT0ZEJvZOHDAlEbIcZI3KqnrA26pL8RqMnJPeH2NwX9vvFC4wDQThqSfffl0XslQU97Z1RH/cC7Lyx7fMVcQSHMdDkqVGCDDPMW+ubJ31Fq9MaQHd7PLYJU7KUr+8DHNjUEWpktbw1BOBWUAc1bcDUuGDy6Iod4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715737627; c=relaxed/simple;
	bh=4fLHwQPGk0QeNw9l9ZAq3BhROY3TA9pGgOZXf/44uJk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=USXLtG8X4B6AdnK0BGka70d8RDRu1G1LCDkH24gwsHsaRtU8/6yZURUP8rJWaWZB6Pc12i1QnrCF6YD2fpkWot+VGdMPlHaS4QoMYGgaNGinl9A2745xXZ8MZ0a9xMnBL20SAN1ngzBjEi5Pt+/McXRJZJGsIQIdcpRI0GEG2p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=z4g1OXQp; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1f05b669b6cso35089445ad.3
        for <devicetree@vger.kernel.org>; Tue, 14 May 2024 18:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715737624; x=1716342424; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kdgMcjk2SUhSnewSfUlS0/MTnaKK3tPj0hOvx8EtZQk=;
        b=z4g1OXQpAAXonlXDkeDM7F/pn44rdGTwzw/I7o28fudeYlV4j6PkVukic15klJHAz0
         mvHKWriAmL0W4bnavxnkjQzyrKnmlDgrsmPK9qyRXL6oGQNzZK5n5fjTOZzet2o0EyWX
         NVN6/iGF+AxyGe0YpYiaaNzpOoxglkaPwz1Ul8xJ9aC0btlRaujJPXl/RNMx1aV8ri+k
         rQ0UQpq+jE7iY8rLkvvlfLBuLGo5lVQ2LVTt1dNLrhTtlHZfmv7QgcunLjewIByx7ir7
         htPx0KaF5u/SoQOxyAFrRzz0QbFoCU0JsMGLMQvAXkvmYi80KnFz+LI392mg+Aa7qR90
         LX2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715737624; x=1716342424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kdgMcjk2SUhSnewSfUlS0/MTnaKK3tPj0hOvx8EtZQk=;
        b=jStp1rWg/7uokOCNm/qB2BvfKIJOfDBJo2+3p/UiTqYqsd1b8HecKpuxHu4qVfbUiL
         yc26OcrF8ubwWTTpCd0+7AD0zE8U8mSA5nr9HN6vk/wv9bJIt8bXyWMkMhNAeOgaD6uc
         BtiuRZ0LQMv0EVN9pYt2kDXc0Pby7up79B0FUBLia+stmnhMloyiqrX++Xxkgn0B+R1R
         SYAf8h66zay84xK38dqePBGd0HslUbAH1RUILXU3gVOCR+KC4628U8BdRXu0sBnmcJEX
         WAlJgLWREcDe06AVAZpRwFQpGCEdg6SpHnPvSbX42yfqpuzlGpzLod9P+iUcTTxDEMV5
         WBDg==
X-Forwarded-Encrypted: i=1; AJvYcCVl7Ikywf6mYrglSHLMKMFAc5Md/8DsBfShbUAmDD1kxZxzhEEs3jfeeYaIW67GtXlGqAulNCSBh/HbdNlIBxAB7bLRkub0/gBwLg==
X-Gm-Message-State: AOJu0Yy7SdRauDuqfzIHS8jcNq2RdDMUgfb/YBq9xaXy5UrAZCFLhicd
	B1d4Qr7FTSbnDsyooTlWtgxIO7w1dXLvgVi1YQSTa01kiNPNNaOUTKQKaBSGnqQ=
X-Google-Smtp-Source: AGHT+IF/Y5IjqSiHWK6hQBWVh1d+uba2aFO8m6/Dl7mHurcax/7WVutp1eMa6gbxtL9XATZHBr3qgg==
X-Received: by 2002:a17:902:e847:b0:1e0:f473:fd8b with SMTP id d9443c01a7336-1ef43c0f5f4mr180045495ad.9.1715737624203;
        Tue, 14 May 2024 18:47:04 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0c1368desm105582145ad.233.2024.05.14.18.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 May 2024 18:47:03 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	airlied@gmail.com
Cc: dmitry.baryshkov@linaro.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [v7 3/7] arm64: defconfig: Enable HIMAX_HX83102 panel
Date: Wed, 15 May 2024 09:46:39 +0800
Message-Id: <20240515014643.2715010-4-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240515014643.2715010-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DRM_PANEL_HIMAX_HX83102 is being split out from DRM_PANEL_BOE_TV101WUM_NL6.
Since the arm64 defconfig had the BOE panel driver enabled, let's also
enable the himax driver.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 2c30d617e180..687c86ddaece 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -864,6 +864,7 @@ CONFIG_DRM_PANEL_BOE_TV101WUM_NL6=m
 CONFIG_DRM_PANEL_LVDS=m
 CONFIG_DRM_PANEL_SIMPLE=m
 CONFIG_DRM_PANEL_EDP=m
+CONFIG_DRM_PANEL_HIMAX_HX83102=m
 CONFIG_DRM_PANEL_ILITEK_ILI9882T=m
 CONFIG_DRM_PANEL_MANTIX_MLAF057WE51=m
 CONFIG_DRM_PANEL_RAYDIUM_RM67191=m
-- 
2.25.1


