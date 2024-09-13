Return-Path: <devicetree+bounces-102557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BE14E97773F
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 05:15:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1AC0FB23B84
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 03:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121041D4612;
	Fri, 13 Sep 2024 03:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="xXCY0xlg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DBA1D31BB
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 03:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726197324; cv=none; b=Nd29DFTIX6MgM90L2VNctV+EUpwJpOfMSnaHETUkwdxDeH3gDSWrTVpGw7jws2vNECwQB5tbY4UMTXThyKCgS2eFBP8ShusN7PDYKtO7dyqwkN+Qa50sC/7CDwWQV4MHYWWqfMvWczCbG32OjbPJqsXQUaxC4P7xonPwguQ63t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726197324; c=relaxed/simple;
	bh=BkjmMiEMl45J300GYJj80NKNWiGSISsVAkkvPlbb0is=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cMP4mICS0ffv1lQgALNmuAV3KugIUV6x9YNP5NJox2FIF4FeP78x4dQHavmgY9uiJwnFic6yCzKQk5wfp3YmXOMldYZ5tC4L8I7A+jEvyeJjKE8e33DaTyV7Ke+rF00PJuBG6E6yG/Y/+k/ZAQ6lnJB9b+XmfMTCwmrT+IhVTj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=xXCY0xlg; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2059112f0a7so3660365ad.3
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 20:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1726197321; x=1726802121; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R/tJ6K2p2TuSkkGXCsuIhipqtb2yllodeabGTYDSu2M=;
        b=xXCY0xlgNGz1P40Ow2YAzyHSFMxAz+dFlSwrweGwBnwqptNkVMiIw9dhdUmUOL8vIE
         3jnF7ihOrnTl4OYowzhpLiy6+TXafQ+EihV2tDmXxt/ufraQjfujc9vtZJZBlsucIBO1
         wlJ4z+QuvqRUF0uXwPDw99uAROLvOhkDzeGVFJuWWUpp3sISLjRFilbj4i0PqUClpPqr
         FcDICVlc3li5ls7DtXsr/IXu2HMaG0KMPmhbVJjFQ5UHIaw0cZISthLDP1ofo6sQvOy0
         0ENGdCNgMH/eokMDyj0RsiaK08LdJcjrbdqIy8pKxJ4yDG153SPeGFi32G0N5lSUslpu
         E0LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726197321; x=1726802121;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R/tJ6K2p2TuSkkGXCsuIhipqtb2yllodeabGTYDSu2M=;
        b=YwNzUaAFe2J1pwZ1qmTmi2r6s1YQv8xTHySjNQzTP6EiCoq8ty+Je4f3kz0f3J1jCR
         u+FkLQUaHMcuw6EBNTjmmG9tI8mVgXof9xqXPYPZvtngyLyO4jz4UTmchzlLwLQsOwH8
         Yqd360cEUj28sDqgcjR7YdXi4+zsdZHO+zUr33jBM8FdVbsWB7vk9frhp88VI9w2DnVk
         V1q1Xt4q/zRtZwplOyZL4l/870PPOonE4bHeLoyXQ57LHlHugp8xkIJOfrvul1xjG7O2
         m0Yy0yZStV2HxO6snYX7poZ53Fjudciqde8ZRowAHQHJztGXUw2bxYNK/j0lukK/4Ift
         f7Qg==
X-Forwarded-Encrypted: i=1; AJvYcCUsVbZS8AiZjpkkIk96EdfTCdl0NVtE4zMEJn5MguN8m93RvgNKZyzc/Yu87wrFiWaT12JYnB9FCwx7@vger.kernel.org
X-Gm-Message-State: AOJu0YzLViYO5BYLJXFaGpL+jopBH8JtXFT235mJqHe3+vMahe7tpxTx
	9NmyheYwTkB6fUhXunSZFu0NgW9g0GZlJuooYpfI/USs31NGn/4Q8ZwWAWUvpJ8=
X-Google-Smtp-Source: AGHT+IFLcFR9k1KDMp3YZ8kv5zDdnsd4R5MF4jpiNdAwCjYyvN8FoBA8JFiQndfJ/O13ddyQ9AEPVg==
X-Received: by 2002:a17:902:f643:b0:206:a935:2f8 with SMTP id d9443c01a7336-2078262cc4amr22980855ad.2.1726197321379;
        Thu, 12 Sep 2024 20:15:21 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076af45432sm20382305ad.91.2024.09.12.20.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 20:15:21 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 1/2] dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
Date: Fri, 13 Sep 2024 11:15:04 +0800
Message-Id: <20240913031505.372868-2-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240913031505.372868-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20240913031505.372868-1-cengjianeng@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Ponyta is a custom label Chromebook based on MT8186. It is a
self-developed project of Huaqin and has no fixed OEM.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
---
Changes in v5:
- PATCH 1/2: Remove sku2147483647.
- Link to v4:https://lore.kernel.org/all/20240906085739.1322676-2-cengjianeng@huaqin.corp-partner.google.com/

Changes in v4:
- PATCH 1/2: Add more info for Ponyta custom label in commit.
- Link to v3:https://lore.kernel.org/all/20240904081501.2060933-1-cengjianeng@huaqin.corp-partner.google.com/

Changes in v3:
- PATCH 1/2: Modify lable to label.
- Link to v2:https://lore.kernel.org/all/20240903061603.3007289-1-cengjianeng@huaqin.corp-partner.google.com/

Chage since V2:
- No change.

---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..43a824bee1b6 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -257,6 +257,16 @@ properties:
           - const: google,steelix-sku393218
           - const: google,steelix
           - const: mediatek,mt8186
+      - description: Google Ponyta (Custom label)
+        items:
+          - const: google,ponyta-sku0
+          - const: google,ponyta
+          - const: mediatek,mt8186
+      - description: Google Ponyta (Custom label)
+        items:
+          - const: google,ponyta-sku1
+          - const: google,ponyta
+          - const: mediatek,mt8186
       - description: Google Rusty (Lenovo 100e Chromebook Gen 4)
         items:
           - const: google,steelix-sku196609
-- 
2.34.1


