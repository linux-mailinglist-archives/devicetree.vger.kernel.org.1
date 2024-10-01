Return-Path: <devicetree+bounces-106776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6A398BB27
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 13:33:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7B7D1F22C2F
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 11:33:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6721C3317;
	Tue,  1 Oct 2024 11:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="b2CuAZv9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605E51C0DD1
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 11:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727782289; cv=none; b=KYzbTP4bS498xSgZyV6JhUdMX9vw7WB8AQC6bHjvQFzL3zC3hWzGStWJyHswL2BKDrXSVdM/hGD4Fwt8pbAY+2QzDEdXj2cYOkGiglAMagkNYgrC4elfnsUHifkKpKB0bPXPZCUUpfk/g86L5tgzuT76pSYXP3XpJAbtNHgX4lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727782289; c=relaxed/simple;
	bh=g+YODrDjEv3uWyUI51gEvyktxOrJFkglUZ44PXcbu44=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k4gBD4WgUEftV+wut7D/XNHq6+nu3V3DtdJkOv9LuI3JY80gqDDW/8vY7NlKWnIgjR1noVb4tlWdFAlXWvTE4nlfjZImj+el0KnFbi7eQRqfu/axkVZf2v8i2WUX6qV05dH0uxxWep/6VR7VYfEKC3UGPCrKCJQ2G+f3LLwlsZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=b2CuAZv9; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-71dae4fc4c9so1300475b3a.0
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 04:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727782287; x=1728387087; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RLdzbrr7qqklLHRlLDBt3HAIeNP30xh3waq/7+yRzz8=;
        b=b2CuAZv9c5PrM+zQ6WZKeYKoPuUU624OUTw9qiq5sslsZahxjjDf0wbNL5Ri3kn5j+
         a9qh4/oFxLQQR50CF7g6PxTtor8RpznWHT4nT/I2IuFTba6a/qjxzy486Ue0ZeYHTyiO
         3c9rg7usNanVlovHLGe54ksJ2hjW/tJr+xipI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727782287; x=1728387087;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RLdzbrr7qqklLHRlLDBt3HAIeNP30xh3waq/7+yRzz8=;
        b=aBYVzzTr+h/1kikU843s82l+2aWyTXSimCQa2jVDn+3/fkGF5J4WUj/fmL+Ejnr17j
         PXx0v/XH/O4EGsEuyZ/rrEJwcG80yoDGCNFOaOAuGj6pzcAFx0Jr8VIENQ8ayrraqzSE
         dag4RfuEEYetkoglEj9yjHOJkReOBzxNE6fibp0+E68NEXMgVnjJxVQSuCD0Lzhz1Xk2
         obM9qxsTxUF7E3E69XDYVFqJuSKkCxBQFEtxKFme/nlOk3jfiO2eujNGMsPOkee/qisC
         Rp2euIoJDGpXwBTFSIVCh857H9+TQsXkaZEpsvDDRlq/4WtZ7y68NSPWzXeeMvZGnST8
         1HOw==
X-Forwarded-Encrypted: i=1; AJvYcCVVqM0vpIvdecAUD/OBum8ilLJqf+rYOHuCIJasG3ac4fE91n6sTdTwxFXM2Qs/szhYeB2VGt1sZ0gK@vger.kernel.org
X-Gm-Message-State: AOJu0YyNjD0xH11RH3w+1LwfXB1qd9ajqDlAm/Pz2yx2EB6tPMOkJ+x7
	zdO5gIScl+HUPtVQwLTcw5REBTc7GDoppYbLmqHs1aKsOgUTIGDs5l0kXgKYzQ==
X-Google-Smtp-Source: AGHT+IEgct/3Kv8qNzy6ataUfgMbDap5NRUyRDA2O/6Uj+INj/mxGJhKqWWS0ioNmqqYyO5Ym6qkyQ==
X-Received: by 2002:a05:6a21:e8b:b0:1d2:e94d:6e6d with SMTP id adf61e73a8af0-1d4fa806eb0mr21813265637.45.1727782286787;
        Tue, 01 Oct 2024 04:31:26 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:e044:f156:126b:d5c6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b264b63d9sm7810646b3a.52.2024.10.01.04.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 04:31:26 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Bin Liu <bin.liu@mediatek.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Xia Jiang <xia.jiang@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 3/8] dt-bindings: media: mediatek,jpeg: Relax IOMMU max item count
Date: Tue,  1 Oct 2024 19:27:21 +0800
Message-ID: <20241001113052.3124869-4-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241001113052.3124869-1-fshao@chromium.org>
References: <20241001113052.3124869-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On MediaTek platforms with Multimedia MMU (M4U), a multimedia hardware
can be assigned with a local arbiter (LARB) which has a maximum of 32
ports for MediaTek's IOMMU infrastructure. That means there can be at
most 32 items in the iommus property in theory.

Instead of relaxing the max item count every time a newly introduced
device tree hits the limit, bump the number to 32 as an one-time effort.

On the other hand, all existing and foreseeable JPEG decoder nodes at
this point have at least 2 IOMMUs, so set minItems to 2 accordingly.

Signed-off-by: Fei Shao <fshao@chromium.org>
---
It's not in the upstream tree yet, but the upcoming MT8188 DT will have
6 IOMMUs in its JPEG decoder. This patch is to pave the way for that.

Changes in v2:
New patch.

 .../devicetree/bindings/media/mediatek-jpeg-decoder.yaml       | 3 ++-
 .../devicetree/bindings/media/mediatek-jpeg-encoder.yaml       | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml b/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml
index cfabf360f278..a4aacd3eb189 100644
--- a/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-decoder.yaml
@@ -44,7 +44,8 @@ properties:
     maxItems: 1
 
   iommus:
-    maxItems: 2
+    minItems: 2
+    maxItems: 32
     description: |
       Points to the respective IOMMU block with master port as argument, see
       Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
index 83c020a673d6..5b15f8977f67 100644
--- a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
@@ -39,7 +39,7 @@ properties:
 
   iommus:
     minItems: 2
-    maxItems: 4
+    maxItems: 32
     description: |
       Points to the respective IOMMU block with master port as argument, see
       Documentation/devicetree/bindings/iommu/mediatek,iommu.yaml for details.
-- 
2.46.1.824.gd892dcdcdd-goog


