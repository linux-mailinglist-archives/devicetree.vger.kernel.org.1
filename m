Return-Path: <devicetree+bounces-80255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A06B9183E1
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:22:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41C711F2348C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 14:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FAF8186289;
	Wed, 26 Jun 2024 14:22:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Zj9hJnTJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4165E1802DB
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 14:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719411756; cv=none; b=cZJvMuP/VMOjwVa0vZ4ejXdgAxevLolHP8Qqx2znoVvFKgAld3/ybXx8yGhONCUgfFEYJlVUhyi6+SfHTijpFPjAExfVBbrbNjL/2lYlyl/T6X+bvi1C6VgmVkvWXpVfDqy2nC+D1SWpsBzn0/znF1Bxblpw5xqFadoTdb7lJGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719411756; c=relaxed/simple;
	bh=5HrqjCRmHr4XZRjBZJ7uKfrQ2XERtmB9cF8mR7toIbI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E+4D82JnTIJ0DqXpoEWNad01SemAToIa/CggBlMvlNKoSOT2Qoq4ytSY/mRhOtUOnhdL7BLmqrlM9T1KFoqH+koL9MsVbzn3lBQ0XaguLJu46J5qOiWSGrRA+6ULrL3NpkpezbpgUoRn5XUgs9pl5Dxm3JEFPypf6u6PY3SrMtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Zj9hJnTJ; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52cdf579dd2so4316454e87.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719411751; x=1720016551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q5oTyiTDE2zoIXFxITRpatG4bTgLxE9dmxO/uASRAFU=;
        b=Zj9hJnTJPhykEjd3U/CPP54ZOkIGOgqipr7/lXc9ipK7xC/eMY1ZwK80m+m0sd2UEv
         yVOKB9OEbj4qPydlfQn29BE4D2U5bU6guACassa0Y3kOGmXJ2EMg6oalGwQUHjpUn2Sa
         KCGSiU2qV8rvKhQ+PVDZEe85sq57j6enSSdSp5SVS7sBC3JoFq/zd8TJs5Fc8tZOAM3N
         3gwMXGmqZ5egCVX83C99GgTf22JE6Af4U5mPA735bgiPmWdeeMZSPoCFxOZME1XuZhTt
         2jfXE9HjBxqxujs8MmiEleXeKnund3MWpSwyG8RKS1bAieT5dVYM8qOS7TIudz2pl+LU
         bDlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719411751; x=1720016551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q5oTyiTDE2zoIXFxITRpatG4bTgLxE9dmxO/uASRAFU=;
        b=q4Ruhwug2gjWPEu0xwxy4FC8PgP3jjeHUBdsZkZpTn/OQen4DGiKVOVRXy/ivDCCe4
         XW/VN//v4DIIRJgKAjpR/CaxFovzzS+nUZHlBBSrRy/bZ+vauke9qU9AK7wuu94Oz2Qo
         vMDrj5UkD2QMoLXT6U0wF2BRuenH8gXzoyj00ZDmJbGZfn1wq2aBcLhOi9CMjGiiMvO1
         XxtqX6bhFVHZIhRL3u4pL4sbtuvU6opxNCjkMvkqj/GUNR49U1r1b9Bb6gu82AJJSehd
         wnRopiMHZg9P4653iMsXXhLfRL0YCBh+ythVb0WtkPhByJRjK6vdFT8X++c03FaNGCs2
         glIw==
X-Forwarded-Encrypted: i=1; AJvYcCX5RP5OHN7d9Izh4QmUNRZPPzu9L9yER3ORIXAjoK63Eoq3MSLeYf1qYQOU5KHpvypltMWSBlK3NEVW/VMSvYwmhuYLyemJhL/iUg==
X-Gm-Message-State: AOJu0YzhnsAYPOXOhk86IPlSLmTl4+sm0XdqgFMw4f4W5gUiMiL1TFDk
	06sVHTzWpwLKZN1I3I+2LYbRDdVToI2ar2NXIYCCmy1E4oH7zTjpWyKeedGGSEY=
X-Google-Smtp-Source: AGHT+IGYquuMgMSS+n+tk71AQ/4ysAbKByUybNfZEzAp4mLOcPd1ahbXpUz6gx3baLFJyiijvhFKpg==
X-Received: by 2002:a05:6512:402a:b0:52c:e184:3dd6 with SMTP id 2adb3069b0e04-52ce1843fe7mr9156435e87.0.1719411751338;
        Wed, 26 Jun 2024 07:22:31 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:7be7:aef1:af9e:fff6])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-424c823c28asm27141105e9.5.2024.06.26.07.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 07:22:31 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: panel-simple-dsi: add lincoln LCD197 panel bindings
Date: Wed, 26 Jun 2024 16:22:07 +0200
Message-ID: <20240626142212.1341556-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240626142212.1341556-1-jbrunet@baylibre.com>
References: <20240626142212.1341556-1-jbrunet@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

This adds the bindings for the 1080x1920 Lincoln LCD197 DSI panel to
panel-simple-dsi.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index db5acd2807ed..9b92a05791cc 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -46,6 +46,8 @@ properties:
       - lg,ld070wx3-sl01
         # LG Corporation 5" HD TFT LCD panel
       - lg,lh500wx1-sd03
+        # Lincoln LCD197 5" 1080x1920 LCD panel
+      - lincolntech,lcd197
         # One Stop Displays OSD101T2587-53TS 10.1" 1920x1200 panel
       - osddisplays,osd101t2587-53ts
         # Panasonic 10" WUXGA TFT LCD panel
-- 
2.43.0


