Return-Path: <devicetree+bounces-119012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4689BC934
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 10:32:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94D8E2808F7
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 09:32:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F7FC1D0E13;
	Tue,  5 Nov 2024 09:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="iOkrEqeW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B4F1D040B
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 09:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730799159; cv=none; b=APnV9VQKgfbKlpJxEmx3XoHfGxtF41cYyieeUS+NLUsRzrbsC23fLgyf/dizoj1s8++DMo2DfZXG7rx8pOMRuIz4eeb/2kUhk8RoEH44s0oFTpHfSYTkWEVO062Cdtw35s+CAk/b0mzba51GH6wNVDmZeXo9PfRozLvriVZZ/SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730799159; c=relaxed/simple;
	bh=dHHENdAfWTL+hOQ/FOqsDHimnTtrHZj1mFbutWtnio4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DKoUmcZ5n+rEmBdFVpjdOozPqsDPz057RlZEIxXsD5KGd3jUZOlPSpNz6rSSdAHa8mQbziMJ7nYc8qAz8sMzezZFPXFsp+I89rmsVqr9QlJRRdH0BUnEOu1Day6UEsjVu1r6LjYT7SO1NW9HUkn4eeIqurjRwWI+kUuB+N1gfnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=iOkrEqeW; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2110a622d76so39589745ad.3
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 01:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730799157; x=1731403957; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nnqa2pPYuuC5Cap6gt5UkBzeNS3a7p0T+6rmPXsBpW4=;
        b=iOkrEqeWvyhMZD4m28n5qyLKCKe2CqNkAAaKC82mILpVSomOIJcYFI67wee+ifF/E9
         mk723zjSG0/xP/DmI5Gl/Lq6mq+awdpznn7Q6B9t//bIQ3PwDWQP1vpiaw/MTJ5S23rd
         chCoWe+CCY0OyAhNFWXUtzcfFhYm7EJ4ZeU28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730799157; x=1731403957;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nnqa2pPYuuC5Cap6gt5UkBzeNS3a7p0T+6rmPXsBpW4=;
        b=i5p7RV54OPOASItEldi2CACMM6KbDKL9xCtiEo9+ch+MUyp/CD1L7Ae7IXI04zOUef
         dHwijaMphtJb0y/Rboayoea0ysoXrpYEQX1jtlgfSeTSjWhvt0IV4UhiIeyWHQW3+R0z
         nUcAtuiN2z0skuG6n/qjRczFBgcvXN+Nn7lBF1F+40i4HhqE+G778XQZhj1E28xik00z
         vDYGbW0cpzd5EGvLjMU+WOdZUDhXoSn00M2dsjq+tWZMi2TqvoLYLJnYrCrc58+0cMfm
         C1iYb230iDEQz+3RAAG77G0lgZpNslPpGO+OE0rA1Z2ku08rmQ4T7wOGLXfFE9I1d0Kz
         5xeg==
X-Forwarded-Encrypted: i=1; AJvYcCV8vyJpvKA8Q2QxziEUt92EWEEunsmrXkzocTKFN0LWwtlewbj634p9d8z+kk1Un3HpTJNtowm4bWFV@vger.kernel.org
X-Gm-Message-State: AOJu0YxpddU0x5lU23gax3eGapLho79/hqh8CcedT9WGfyXc/YAmahT/
	PjQqV3XgONXRTMy1bPuhFHDw85EF3ZWlKN0nZxod7zTou/rqDxx0FodpDasiUQ==
X-Google-Smtp-Source: AGHT+IGOGQ1HZ0I0tBq/EN9OnU8jHABvUHtmvm4AuXTRezpGH+/Gkd1vzZSmZS+YuGC8dwHeP6ckbA==
X-Received: by 2002:a17:902:d50a:b0:20b:57f0:b38b with SMTP id d9443c01a7336-210c68d748amr489451335ad.19.1730799157354;
        Tue, 05 Nov 2024 01:32:37 -0800 (PST)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:20ee:3712:ce0b:1ed7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211056ed8fbsm74149565ad.6.2024.11.05.01.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 01:32:37 -0800 (PST)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: arm: mediatek: Add MT8188 Lenovo Chromebook Duet (11", 9)
Date: Tue,  5 Nov 2024 17:30:12 +0800
Message-ID: <20241105093222.4055774-2-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.277.g8800431eea-goog
In-Reply-To: <20241105093222.4055774-1-fshao@chromium.org>
References: <20241105093222.4055774-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add entries for the MT8188-based Chromebook "Ciri", also known as
Lenovo Chromebook Duet (11", 9).

This device features a detachable design with touchscreen, detachable
keyboard and USI 2.0 Stylus support, and has 8 SKUs to accommodate the
combinations of second-source components.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/mediatek.yaml | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 1d4bb50fcd8d..4b68f0baf010 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -307,6 +307,19 @@ properties:
           - enum:
               - mediatek,mt8186-evb
           - const: mediatek,mt8186
+      - description: Google Ciri (Lenovo Chromebook Duet (11", 9))
+        items:
+          - enum:
+              - google,ciri-sku0
+              - google,ciri-sku1
+              - google,ciri-sku2
+              - google,ciri-sku3
+              - google,ciri-sku4
+              - google,ciri-sku5
+              - google,ciri-sku6
+              - google,ciri-sku7
+          - const: google,ciri
+          - const: mediatek,mt8188
       - items:
           - enum:
               - mediatek,mt8188-evb
-- 
2.47.0.277.g8800431eea-goog


