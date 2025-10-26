Return-Path: <devicetree+bounces-231131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB7AC0AA71
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 15:38:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96A4E3A8DF9
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 14:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0768322A4F4;
	Sun, 26 Oct 2025 14:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MYgUC0fX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91627218EA8
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 14:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761489472; cv=none; b=IQ2nChCHX0o9kgF2cKalvuRPCUBbMBuRBcE35hfZaeJTSj7WpvNdRrukmE6vqFNkMnMX5Tu9VLg+fXDpFq6UXh5sraE4t535O3FfgvJ0k7OSZpWrZcu7KSBmjTe9lCdgQNeP7CT7y3/hwuJHeg3Eu6xwFXK8arTZ2ntDcVJi5aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761489472; c=relaxed/simple;
	bh=6EBhaAV6a7FA2r3SP0wp+EL6O6ZmLiovT9x9nt8WHL8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=paRhgkTOEZWnuU/BOowi4Hvoydh7r9pCwBvR8x6qbJces6Weons+jysP9BXf0FQ86CnJi8LBTa+EyUcoz+RbLMeLdtu0idVv6SXCbm0DaMmxPLquVtWujp/Z4uP1JFYc9Ae+qFafCnSipMnnYEVX78uPAqsogXQQTohSD+sgc4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MYgUC0fX; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-7a28226dd13so2586041b3a.3
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 07:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761489471; x=1762094271; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h+ee3KqA2yzD2P8W3Se92HTLPVHTZnMBaNq34xZJiVY=;
        b=MYgUC0fX4sm57C6DMqP+h2v4l6nntrPRJZuSWyErFz4kOq7wZrDAcJn+MllXNv0/JB
         OX5TW4fou8kvPRdmtp8INODUzQGJuPoVtST6uEc5J3AfJCvNnLldFBfAmlUFL+0E/hTv
         rJHRmYuMwOinC9U4g1Tq12uFEYvGrtmqa5b5XynRE39vuMeR8gRPJDRkbmPSO2MhVV2k
         c5b/wPtuXApJ64n64MZ3CX8Do7r1RgyZOxp6wgaIS47ToqVlMcAtmMUbUQXb9bm2qPN5
         LoLph8VKUoxDbwRT7Oe/w2eLaFsvoESMuUFraqC39RM0r45tuOxztj1u3hB5ypVEpSsv
         xSPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761489471; x=1762094271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h+ee3KqA2yzD2P8W3Se92HTLPVHTZnMBaNq34xZJiVY=;
        b=xILXcwar6j9jMySOItx9HZU2rjfxSdAdSSQb93X5D0ER6w3buDcIKxaB7a4I8uDw5v
         YpJjBO3c5KZIv5gEjH+o/Cj0sdpmfLOxQjJsLJ1PwtPCsyGM/2l7c4wWLFjoqhD14ElE
         m1W3RGST/M7FZbLB+68YlY+DGhVccP7yEvzITnHclnKxojqiN4cX9Ah7uKzjKYCHCrCX
         HkPaJ1LLECe+GCuctn+IGXnkenM/wldR/hWGNd88IHLaf/VWwkSXvdbPRMj8elHs2OHj
         tSKgdtS+dzjeGcX71FJzQzaqi54eMvOvpzb2QYzS/iaIZQMA9QsBzGgfwwuRQs5wCDUl
         RJdQ==
X-Gm-Message-State: AOJu0YyOLcc2jWLFlXDYtw/bMz+8En1cwYXLEoo2/hY/KW2YAmhsW/zX
	Q099QMK0i1cibWxVmwcvaygmaOAKIxuJ7e87KFPSeq3RMLV0FNFzDjb6
X-Gm-Gg: ASbGncuJXM9eqCnhkhawbT5EU/lhNH8lpSb3sZvlEP9m2ICaVXemDUgThnl7XScy3kL
	T2H3/jpfs/rA5MT3c9bSscFTifcyqYV0Xf2tqLeB/xqIbjcFi/RFvKzxXxpklzL4bLOCVksT5Rj
	QyjyoqNhx3+6Z//1RcQv7eELAT1JDLak3OVWEp9FzomUYAoVNE/46iEH1mC5Yv3o15s2lsIyaTr
	rvPcEUcTjYuqpbeUMugWn8bs0Yo0Qrbzl7V/N3DldZwipb4rdqKNUESfqo1PFeKj1rUun2RRAkl
	H9e7E++Ol/VLkjbCB4o8JA0hllFXDryObimbbT+af8RNhQBWvPge4M9skPpMlEIyR1fbR2UzOKI
	OkyEaOOSUaqXr6FS1wfOGnMxqIw+lILTs93bBnkUusKFaD3JM0oy/nNUct7j/9pdBTbchwZRrI5
	c=
X-Google-Smtp-Source: AGHT+IGorRTsGK6y1BXq5Jha0i7pSNQnEd4P3A4eW7mtzU1czQ1tha1INqCijpQurD6f2CrckDUokQ==
X-Received: by 2002:a05:6a20:244f:b0:2f0:91c0:1886 with SMTP id adf61e73a8af0-334a86444bbmr46784680637.59.1761489470867;
        Sun, 26 Oct 2025 07:37:50 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b7128d4d44esm4652691a12.21.2025.10.26.07.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 07:37:50 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add NineTripod X3568 series
Date: Sun, 26 Oct 2025 22:36:46 +0800
Message-ID: <20251026143645.917588-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251026143645.917588-2-coiaprant@gmail.com>
References: <20251026143645.917588-2-coiaprant@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This documents NineTripod X3568 v4 which is a SBC based on RK3568 SoC.

Link: http://www.9tripod.com/showpro.php?id=117
Link: https://appletsapi.52solution.com/media/X3568V4%E5%BC%80%E5%8F%91%E6%9D%BF%E7%A1%AC%E4%BB%B6%E6%89%8B%E5%86%8C.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8ac..417100209 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -777,6 +777,12 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: NineTripod X3568 series board
+        items:
+          - enum:
+              - ninetripod,x3568-v4
+          - const: rockchip,rk3568
+
       - description: OPEN AI LAB EAIDK-610
         items:
           - const: openailab,eaidk-610
-- 
2.47.3


