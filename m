Return-Path: <devicetree+bounces-101992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A052975032
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:53:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F0B1B1F27D73
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:53:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9CB818FDA7;
	Wed, 11 Sep 2024 10:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JeELEM0z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B1918E752
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:52:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726051930; cv=none; b=r5jSu3cfAP6Skv7ssGx393kjdI+44gtgy9dQwt5DMzMbi+ne3oQ9+v2jOtn9cLZWhUZWwaW25tD/bt2kODpFjBe8D7tLdCATFspMd8L76m3c+Gfmk8gRYIfQAwwJjJLBBapjnDaHtcDiYLculdmBlToLeU79CvdZXsKTEkaNf0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726051930; c=relaxed/simple;
	bh=NpJXXj6GgzmJD9LH2XXjzk9upBAVJAEmtnSNBAz94kc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pbTvb/R9Z5hxYYmaIVYh19CjFTiKYqziiNldiak8dndC171jOEHQm6fRNsBQBEBhWpcirIQRYTOb1ANje/8YhKczSQnbacXMWOXQlJv2jUyPPvG+eyjKYdjzMicskKlnPA7IdKnN9aBeOwZmlyuatC5FF+LdZEtq4IG5kRLWHPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JeELEM0z; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-718d6ad6050so4179423b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726051929; x=1726656729; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MOnoYB01CVn34qVTO0Wi7WMlpts2N+jH706yGUshpao=;
        b=JeELEM0zpnOVOUNhhYhZueXUOXgc/NHyjkd18so5t6K6g2sDH51NH9LeVbpw+hwUEq
         odG12osXO4gIJZVbsqloz6sjbJqUeQLj7fTjOfcmdcEwhPRPyc/3NC981sjQ/oBc+KcF
         OY3Yv41Xlz3PHmHnphqyEazDVJQKCjrR3TF6g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726051929; x=1726656729;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MOnoYB01CVn34qVTO0Wi7WMlpts2N+jH706yGUshpao=;
        b=IDsm7Mr7hnuxoQMCVND/L3Ew8QQk+9YvcdXjvtFSz94SjUbZrGzst/4Zi0aKU9sEiU
         Eg0gfaFkonAIKpAu2S4LoQVhLQ1Z1NSSgBFcjX9oFXv03NpSW2YXgps3ajFhI0/Q9trX
         MX7LcKK0Ycn6BomNOeCiAqqger2CZr1FCWHTjwkqynuEYI9K2TsKFFNVe3dZXUW1sYtk
         kvhXjiQC3yIoiNb/j/icB6w3n4Xuy93L1qQR6N5FVSeEgwhkfcvWmdp2wtmCtxMkmrGc
         MAuuScj+/PBMiFrNp01A1vdLJtWE0qAeTVAx8TsLCGeotP8wbRCOH86/lWaZNapEwUfK
         IqwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMO7InQ9OJqTM6tS4xsVclamkpQfLscUJRSwi7eLU/vEx1c6dXwVpBMX2tSK6rwtGb2keuWiBDZbZq@vger.kernel.org
X-Gm-Message-State: AOJu0YwLjv/rszbrVoLsF4DHKDsVT7uYB4zA0pUAAh2k/B3SAIocrKSe
	LPEighjLx6+bFPpaIvBsZ2A0ay/ubquQNA8bDKmP2GqhQ0ifL/gx6EFK+MYIWg==
X-Google-Smtp-Source: AGHT+IEg8W15drzsQZ3XAibIoe6Uk9uFQemRLNOwGm8NTstfjakhVV4QW2T4x1pKLwY5Nwdep+zD6g==
X-Received: by 2002:a05:6a21:168c:b0:1cf:2901:2506 with SMTP id adf61e73a8af0-1cf5e0f65cemr6315893637.14.1726051928367;
        Wed, 11 Sep 2024 03:52:08 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d8242b3d13sm7147352a12.52.2024.09.11.03.52.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:52:07 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 2/8] dt-bindings: mailbox: mtk,adsp-mbox: Add compatible for MT8188
Date: Wed, 11 Sep 2024 18:51:07 +0800
Message-ID: <20240911105131.4094027-3-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911105131.4094027-1-fshao@chromium.org>
References: <20240911105131.4094027-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible string for ADSP mailbox on MT8188 SoC, which is
compatible with the one used on MT8186.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 .../devicetree/bindings/mailbox/mtk,adsp-mbox.yaml   | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/mtk,adsp-mbox.yaml b/Documentation/devicetree/bindings/mailbox/mtk,adsp-mbox.yaml
index 72c1d9e82c89..8a1369df4ecb 100644
--- a/Documentation/devicetree/bindings/mailbox/mtk,adsp-mbox.yaml
+++ b/Documentation/devicetree/bindings/mailbox/mtk,adsp-mbox.yaml
@@ -17,9 +17,15 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - mediatek,mt8195-adsp-mbox
-      - mediatek,mt8186-adsp-mbox
+    oneOf:
+      - enum:
+          - mediatek,mt8186-adsp-mbox
+          - mediatek,mt8195-adsp-mbox
+      - items:
+          - enum:
+              - mediatek,mt8188-adsp-mbox
+          - const: mediatek,mt8186-adsp-mbox
+
 
   "#mbox-cells":
     const: 0
-- 
2.46.0.598.g6f2099f65c-goog


