Return-Path: <devicetree+bounces-76164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AEC909D9F
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 15:19:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B4581F21C3C
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 13:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67DFF188CC8;
	Sun, 16 Jun 2024 13:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EhwX+8Ri"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A387F187554
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 13:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718543979; cv=none; b=LczPqAtmRE4fOcWt2+NfGWRr0Yb6AvJg1grljYkrEg7B7QH/E+mjHSBUTdXBdh97gyOc3ValQtclU5Pt/0EyfiWBaeV/Jw8MkStcZXa78yqh3bIO9tAFA/p14iKjsnWlDWl1sFBQ6Cu6U7PnVtXb2zBDDeEc2F4OTZ3zEKmEm6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718543979; c=relaxed/simple;
	bh=HzjHV2p0YoAb7dKSJR0H5taVVRVE4HdGIeGsfEBVEbk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ivk2B2Ggqpo7k8jjNY23lOmZZ4kMUShDLIMwcSNMgeLUu44MfJbAEi5aFMedlqRDpGiQMS+vTP+MrnFp9Wm0yZyHeC8WBxeK/LxvW457er+3Uy0ChYPisCLqGeG5jFFrweNZIclWHeQCDpGBC3s8ZSzame8KsiwQvzOCMx9bWpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EhwX+8Ri; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-57c778b5742so4225659a12.2
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 06:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718543976; x=1719148776; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yrRDhDMAfJony6yFg7+6ijdc+Hn8JcmRpBDuBtH438I=;
        b=EhwX+8RiXyE1lE3Vo9BdCVEayGDa3+ReJtRZDe7wSBE9XQuaYcSnL3Lx1+OUUjddlc
         hsOma6BLqPcTV4l5slpkxDCeFkQ7OR5EKmBbQJ8rPvfUHOXhH+FWPtYwjBVPXCn6On59
         SBB5RbPDND5Issnls/xDbB73+kb/S/0tKhBBEETNH5HsMSF3eFgt4WlrywA0N7vpqWwL
         vmOCgc60e9cC7D+YPrdBNrQpIUCDa+PWo5lu/BBb1agZWFiGigS+x2hNsL8dFjMmiZh7
         BxQh6xEovVc8zck8LPPO85Yjn/EQ8eHfgNzxVDINtpDRmAHwLgdULOVS2+IN5xIAK+03
         boIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718543976; x=1719148776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yrRDhDMAfJony6yFg7+6ijdc+Hn8JcmRpBDuBtH438I=;
        b=v/UE5Aia4ISAReamVc/m/BbBRv3T64ywreguDWX0Mk7yJuW0av5M/pqay3X52U99z3
         vh44/wIAHTGa2w/lZDSGjqEq24kQ5oBf7+mXp/MHwtW9w5borVppPsGEMWaIPBthFp1D
         d9gYaWM+UJEQGBmVcQEPdBaTO+afrnmNfr8iexEXGOz4qeL1HBMTRBsRV4U69jh9vlso
         mIUQDgbdmkkjWX131fOQRtdNQdeKSkXcUH6T+ULazcJLCzMZehkeuCSki0nWIW6sfGt0
         akk/3ESeMFJrVXXTcW+G4F7heks+me/clwIAYg7mNTCOpPreFSU/I0wEtqsV6GGhAfq1
         APdw==
X-Forwarded-Encrypted: i=1; AJvYcCUOVfeXKcZlADltaHJsZuEyGJoST3EuaUXOTosYNlRApope1ezJHFgmb96w4ML9vKHEancCYV/oeyaFtvP/O/tsgWppycHp4P3/HA==
X-Gm-Message-State: AOJu0YytzROkzm+REEvxs5LggMy+I7h00hyGiJQ33ggcY9S+6ak341K/
	B4475q7JmlnJp2AcUVKj8CTMjyMab/EFYEZ6pbgsCsPTY0GIuNnk8unaWGKg/aA=
X-Google-Smtp-Source: AGHT+IH6siaBueY4AzxcLG1IzpcSvDQtv6bY686G2ckJTzEN7fRLUYneWleBFRJFNc1kFuSmXaa5PQ==
X-Received: by 2002:a50:a458:0:b0:57a:322c:b1a5 with SMTP id 4fb4d7f45d1cf-57cbd6a6d1dmr4211407a12.38.1718543975971;
        Sun, 16 Jun 2024 06:19:35 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb7438815sm5099603a12.80.2024.06.16.06.19.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 06:19:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 16 Jun 2024 15:19:21 +0200
Subject: [PATCH v2 1/7] dt-bindings: mfd: syscon: Drop hwlocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240616-dt-bindings-mfd-syscon-split-v2-1-571b5850174a@linaro.org>
References: <20240616-dt-bindings-mfd-syscon-split-v2-0-571b5850174a@linaro.org>
In-Reply-To: <20240616-dt-bindings-mfd-syscon-split-v2-0-571b5850174a@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>, 
 Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=845;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=HzjHV2p0YoAb7dKSJR0H5taVVRVE4HdGIeGsfEBVEbk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbuZewBIVJ+WYe0Pb4ZPgltt46JpHmLOfMG+rh
 /euRglLKYuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZm7mXgAKCRDBN2bmhouD
 10YID/90jDtFwqLhPSLoCu2FLrb17eOdFhg1qKQeK6n8+HomH24FmQ5hjYNokuyZn2hbhAccGs+
 DI6K/ZLJPRF/NT8yfVHpATLovaUl2xaOIETYQeZUC0K0W8Va8xAIEN9doOPknm8T5BmMFfuh14n
 +PnKxM1pLHGcPdXIPwqu2r3hP4L1TtIyNCXk6LlHt4ivupx8MNkqauHbR3rKgI71N5GNi3zTi1C
 Ey4/YDbOSdxJiT3ji9rdWwrCwr2yNX7OGc7+qAHiw8AVmYWSMb4MkmLWXxdj0QY+dD0zlTosGEk
 y0ppGPgpijhYbEDSVoeyOK22hVninX6I4YMh5/l5ZI/upWUd4Vm1AVGsQ9LjpJ5P+9YVvIiuCOT
 2YpKC1x1/+610FmXcd4uLlCb+nIoI9EVlZeFdJ/cZdW8o1Hl3dahPEaMb6xBJz4gbwZlstUzint
 r+yGFugsBF/EgSfvP3j9wA1mo7fCntyrzK4PR4E4qIVHYvSfncbJ8DfyCSMOpD/dK1FewbIxlfH
 P4iMP6mPd40+MZ7/cNhTt1DiSM2BW/LxzuVhOrdevx5fEX9g2wkAdBQ5npewV+EtWyIdldKF20l
 DxDC5uVWSQtThZgde4SOnEb63eM9/MD0ormcq119jIwdAJhCeZ8GFoGjd6hNVMSeKC9miJ1Pw3D
 KivaVy6Ed29hnKw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Apparently there is no in-tree DTS syscon node having hwlocks, so drop
the property to simplify the binding.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 79830dd51ac3..af442767aa96 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -142,11 +142,6 @@ properties:
   resets:
     maxItems: 1
 
-  hwlocks:
-    maxItems: 1
-    description:
-      Reference to a phandle of a hardware spinlock provider node.
-
 required:
   - compatible
   - reg

-- 
2.43.0


