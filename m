Return-Path: <devicetree+bounces-102062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BC0975598
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 16:35:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE0FC1C231DF
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 14:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C525D1A3BDA;
	Wed, 11 Sep 2024 14:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AuHcxdaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DDF1A3AB8
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 14:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726065316; cv=none; b=ECFokd+1YDpgv24P0oPmAKURdlirHiJNVeE4dLUib0AcbDgM/uHTFuYYB/RkVU9+SWkfXzRn4B8ySsVN1qMrGGQcJlp04/QrWiZtU3LkyMvCE/dg2K3ZcSQbCd/IgRSc5FadM0pEBEAl06U2CDcBIJHvuNnMYKmg+zrdBkBhvCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726065316; c=relaxed/simple;
	bh=J9PzHNjcSXRe0BOH9Zo8tAkuChRIs4CD84FEYrD8wQQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fNX0Ss5WUkVUogYBs5hcMJRkCT8Js/w6Jtm6yMNc6BRbPXOaaNG1jryAQ9OM6Sl4b5/MCIgiGBV0fMriLhVB6K7OL9Y2DInXPeXCD/h4XxMuP1w5zD0hxjUMgy65MRs7wuf1w3NSZk5eTO2PE4M5kZwDNSdR5WQlC0GupZeXw3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AuHcxdaL; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3e0379a8d96so2286330b6e.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726065314; x=1726670114; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wnPQW7Y4BtUSgD7VL5z1FONolY3V9ZDMRIrGcpJjXnE=;
        b=AuHcxdaLO2WPQ+HJSj5/8SVFYpJGRIub1WbNUE1x3TtOft9R/omaRb0S6/sfGfkN5y
         21TYSEUUCJyIm6gNty0Jd3G5SISaqqd5ThrpNsuDk/LafiicDHSGdZcfXPS7XSVbbD3J
         WuQQbKaB0zF0Rr0tHa6zCHAOIOiKiWf79KYXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726065314; x=1726670114;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wnPQW7Y4BtUSgD7VL5z1FONolY3V9ZDMRIrGcpJjXnE=;
        b=hO1fSC3xSHiHjbtPpupZcsiKYJPfLiMI7pyzlrSa/0V82oAllqShfa82e/73i2wM/n
         TLHyy7tRW9I6UWx6VYh7ivpGrd9p26AYxopRZ5Us/Kup1gEP++g9idkz1VNo/vXPJMeZ
         O4A/Gc3gNVqx2PvoAZUv3yKQSkCS3PnlAY7xSdXJ9AW07WoRlErBgnWfLph3ND2eA9rR
         ciklmthz++4JJzJKrgMCQsKcnY3L68ve76kimoXoVNv7MFtkR+Mv65GOvghXpw4YAbge
         pODDVEol7E3G1xQF/b00Oyj00LarDboTY/mDSTt5IiihV+siV8c9k7DMJ1zTJvpd4CDf
         EH1A==
X-Forwarded-Encrypted: i=1; AJvYcCU+dq5jJE0dDUNFgjKvMhSOBJ+FzlKkU1f8MHYnc6tkCtTp9/IK3Ib9ysqhFvUWAjX7j4rtc5HLwVm8@vger.kernel.org
X-Gm-Message-State: AOJu0YwnV4IRzgVR63ka4UEn13rSdAUFHpET8h/T0BMtBeZcUbD1yO/D
	amEWMX4SKo+48NVsYF7xlvnJmUs1iO/ybRpbzIkl3roiHMWYAP4ljenz8zrRXw==
X-Google-Smtp-Source: AGHT+IHHUCdHBp5uv6ADa0vxA18vvNpQp5qn4oDl6lTmb8iv0NjjXhkphjoMY82rsiFzMfvLj5l/lg==
X-Received: by 2002:a05:6808:3206:b0:3e0:6a7f:4752 with SMTP id 5614622812f47-3e06a7f4a48mr875938b6e.41.1726065314162;
        Wed, 11 Sep 2024 07:35:14 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbb5901sm46620a12.24.2024.09.11.07.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 07:35:13 -0700 (PDT)
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
Subject: [PATCH v3 2/8] dt-bindings: mailbox: mtk,adsp-mbox: Add compatible for MT8188
Date: Wed, 11 Sep 2024 22:33:55 +0800
Message-ID: <20240911143429.850071-3-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911143429.850071-1-fshao@chromium.org>
References: <20240911143429.850071-1-fshao@chromium.org>
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
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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


