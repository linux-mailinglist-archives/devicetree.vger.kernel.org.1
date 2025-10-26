Return-Path: <devicetree+bounces-231134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 056DAC0ABD0
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 16:05:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F6503B3665
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 15:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8417221F13;
	Sun, 26 Oct 2025 15:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YQu4EhvJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D02D4A00
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 15:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761491079; cv=none; b=is9XQkVnzAavo8Iz4XyC41SUordLbhMAuTui2Sp9TzzTYsICJhNgqJ6suxV7hs9XV32Fyzz/EFsSVFbUL8OULyZhKiFsZyF04OT5gehjn7vu4DcNou6sA8aSD2W3DSQCdj83sBMxh7Nw/AhiRGZwHlYd5I6yo+Yj0RunaKizgMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761491079; c=relaxed/simple;
	bh=6EBhaAV6a7FA2r3SP0wp+EL6O6ZmLiovT9x9nt8WHL8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=vGPlUCeNb2ZA7JoUDq+I5zWd7bERW+9xrOmneIQoxH+v/3DQpFNB/gF7t+0RFRTLrbKhGv5XLumQ7Bsm/T3jq+X7rPxhfmlbBuLpMr6k2ric6wrHVz/TKkBqeVZYFTNv41oFojz5w2DPERwaotnBQahy3VFkgsb9hURVgOJYfLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YQu4EhvJ; arc=none smtp.client-ip=209.85.215.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f195.google.com with SMTP id 41be03b00d2f7-b593def09e3so2257869a12.2
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 08:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761491077; x=1762095877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h+ee3KqA2yzD2P8W3Se92HTLPVHTZnMBaNq34xZJiVY=;
        b=YQu4EhvJAHO06+/3lwqLhNNSb2ErLD0nXt4myKIwTTTbtCB5CphKtx4+XOr7rD4sbt
         2BkafclgeZW3aaYXeAzCXM1mRl9QQT2l32yaZWXxuEdgfv11B/vcI8vBL/L0DYrRllq7
         vIhyb9Jq40rmdWXR18zof2brnRLgy1paNjqiEoz33KUEkN7McGtzql/eohfvqt+T1anR
         VdXOx4QeBcKR7ceck/lDb6qLurIrdLeDmVNWBMWv0DxcXxQI+jml+qlbKEJvvj7ZaOQs
         Ae/OwMU3cWSge4h7hB+shOorB/+Cd4G5vCtXsQEJJ921VKPjV9F8AEVmzyBn2a2dlnpe
         xgcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761491077; x=1762095877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h+ee3KqA2yzD2P8W3Se92HTLPVHTZnMBaNq34xZJiVY=;
        b=dLYBAXGMKS8ZTFRkDJ21pjzS/ZJSy7tVT1xCTpO46u4mE5rTOxB49BwxCvJEeQS/Kb
         mBsI9WWeE0/aINLCllYhEiHpH0tpz1nVkw4bBp1Xx8rE+EdJN47lg0w7UF3lI3vAlgth
         VmICsdpCSRyMBR+pepKfuCoQVUm28ks6PvPBzShuaOY8uu/Ptq3OHd4y2gvUJAKwMPGf
         KXKnOgMREvimpUfopEdr0kmDw5PwrTSJqSeF10AaS6fPRIDMqi8I36AX34cfUsijHdoJ
         iwxxEQsLCzznVEGSRIM5J6AGGmPaB/7jICuWOXbKjUiyQ29YLAcwsMBNfW5OktswwxFI
         ZY4w==
X-Gm-Message-State: AOJu0YxG6lC1mVVLb4C496wzsP8y8DXq2tMlxXpiQ0YzT9UMNHwVTLi6
	xkiXkw6WD+H/w58gtBbR/ia6SUwIE0o0s2CJE1aegEt1mNG7fhnx1jyr
X-Gm-Gg: ASbGncsMSsZPO88YDo6yY6KPgapNvSi4pEebvG6TUdL7kQkf32UfFDBwQvdnvdqXqMN
	kBw2/XMfuR5jyyk4/OA5G3xQMu2Ln7PZyD2ICsUYRX+4MbI9lK53yOV/V1/xxzwixVew2s+4uH9
	32ikyNCHopy/m4KKSq/DsYt6mOua+nU/bfB676mFMdQB3qYaRzGOZj9sQMIsTp0v6jaMAy4+ZN8
	Wu3krcWeOGubW7yoi1YIKBydfTdbToaW/0ybBgsw/MIzR1Swpe8bcqkw5qMuNBrpvRtL5BGhwJ1
	yOrbWt9HiwEtBI2cVbuVhfJw5feM3/IBLtiZJKmfTORQrP0A9DYawBlMS/r9WTDR1iWz4YS4ZLF
	XXKqRHoIKBhm5U/TlRUDpvubcshGNX3iq+hUEuXQS2xsArrldzbGoDGotrP+gjxaj2g7a6egIL4
	WhEWVKg2ZCMQ==
X-Google-Smtp-Source: AGHT+IFxsSx87V6j4xGCO/gIK9SEmLM0XVc2BXFyfyHWu6d+W66LEceiivJPxXPgqc3+OLhbzD/l6g==
X-Received: by 2002:a17:902:f542:b0:24c:b2a4:7089 with SMTP id d9443c01a7336-290ca121a5amr484987455ad.31.1761491077286;
        Sun, 26 Oct 2025 08:04:37 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d09958sm52320375ad.24.2025.10.26.08.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 08:04:36 -0700 (PDT)
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
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add NineTripod X3568 series
Date: Sun, 26 Oct 2025 23:03:57 +0800
Message-ID: <20251026150358.1078453-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251026150358.1078453-1-coiaprant@gmail.com>
References: <20251026150358.1078453-1-coiaprant@gmail.com>
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


