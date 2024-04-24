Return-Path: <devicetree+bounces-62095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C93FB8AFE78
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 04:31:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 687111F241F7
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 02:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 884DA13340B;
	Wed, 24 Apr 2024 02:30:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="D8hVnE9m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32F885C59
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 02:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713925850; cv=none; b=M+XAeOVs6VFcNcpX4p1LHFblFDsZuFJCwlneNH5mADcY1XRK9FeWK3NcwmLX7bszpEsT3luyQDrvftMdJkATpRuo9MCooAqgYhlVFUNI/OppJeklRpyL0BG3sOMv2lGUP1G343jeM5to42TBG6an2a/JzQ8o46gzRInIgQafp6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713925850; c=relaxed/simple;
	bh=YSoGauoKKhmpq9WlsiTbDF5rSQktFxnBL4URRL/KTdA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bwu2APN7XmBLpTgnNpLDcRBDkyFCQ+/efEfkyAdkLTSNCUY3q4kdSplIbI4yv202aP/g0Kq3n3ZU3DfiXcnIr2pTrCGuX/1H6mPlx0cap1dBuBQPpD/vkZx8D2MN32UsAxCVUNln7fVYNg204CBt24PLBVlUwIeHutaUratU55c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=D8hVnE9m; arc=none smtp.client-ip=209.85.210.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ot1-f45.google.com with SMTP id 46e09a7af769-6eb7a0b3fe7so3672252a34.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 19:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1713925845; x=1714530645; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MXmJm2NMpNKGR8PSeY0Ah/qGmxvBFTcFz2XA2cO9qmI=;
        b=D8hVnE9mikzzIfP/dsL9tolILZptcXS8GsNCjwnDZU3IUUPsmnsGvlNfssg2yckN0i
         fAU+B8f59EtA7c9HO9e4Fu2ggr2ZTg38o09gy07u+wfPaQakwMJ7VHqmVFJ+bI+YmvYb
         lPRkIe+/3dLOYLGNLX2l8ffUBzN3Y1OqeyyWQU350rXFT1LrC0MnLvfB7wnLci0b4iIs
         pkQnnfbaWAcqzSfsJETJnzZ0sS3eaQV4DmjOyyfM7pLMfbPnmyJHhX0WKJsdkiuVBOaO
         ATHms2Fv8I/d83F/UJbIgeqXZqC0Jul652YiPrK9GqWiCrZ8p+BZRC5vfiUsgM1N/xB+
         uTtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713925845; x=1714530645;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MXmJm2NMpNKGR8PSeY0Ah/qGmxvBFTcFz2XA2cO9qmI=;
        b=fo+8v+tVhbkP5PYX2wZZmvqhzaCyWd9V9ofg7LewcfUxSo2c11n/zJ/hqkssW+QDbK
         mypuKxOBi9Llpc+E9/rCBuy8BWMxGAn53TUw0oIS35+vmAhKw+Vp1CZQsBP1NMnnIenn
         VdkrXyIVjSHdWJmWw4VToyrdJQqo6LhcO6eNg8+0ANqu3FgHffAZLkXZSrOiNHbC+zCv
         rTO+wZO4PovexTsow4PDE22z227NY+FO9cInTO597GPXgJyh/dRcQR8S7AXZOrMrX97G
         RYA8WhBKIyCLMNgbpoAnJeMj6rh6y8sjyvcQ+gpW5g1jIJ5dNEZ+plFbp2enK/TRrbZF
         EEBg==
X-Forwarded-Encrypted: i=1; AJvYcCUyurhrWjlTaboq42wUm6UDKXuXCXuxFUP3oTh6MFSVU1vrcgwwxiGNEYHT4Piy1tT4IMAPVOE5CWpjd08XrKKNA59Sdjp5sVVDuA==
X-Gm-Message-State: AOJu0YztpRUXpWcTUWYCoSqpQnWt7qUBuIrVVOlKUNoG59aJIxY0jtKf
	dxLmNLlXeM2c8M5i74D88vON9et+sZPx7g5J8OR628zjg9rUpUu8/PYjVDBLP0c=
X-Google-Smtp-Source: AGHT+IEW6VXq5gavNys3PRgDLFnQS4DFaEAkzMskWMoOdL1EwONALpRuNCnWCo0K36xClb94MH+pUA==
X-Received: by 2002:a05:6830:1499:b0:6eb:6046:ff17 with SMTP id s25-20020a056830149900b006eb6046ff17mr1582208otq.36.1713925844933;
        Tue, 23 Apr 2024 19:30:44 -0700 (PDT)
Received: from localhost.localdomain ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id m2-20020a638c02000000b005e857e39b10sm10179385pgd.56.2024.04.23.19.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 19:30:44 -0700 (PDT)
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
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v3 4/7] dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
Date: Wed, 24 Apr 2024 10:30:07 +0800
Message-Id: <20240424023010.2099949-5-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240424023010.2099949-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240424023010.2099949-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The BOE nv110wum-l60 is a 11.0" WUXGA TFT LCD panel with himax-hx83102
controller. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
Chage since V3:

- Update commit message.

V2: https://lore.kernel.org/all/20240422090310.3311429-5-yangcong5@huaqin.corp-partner.google.com

---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index 2e0cd6998ba8..86c349bbbb7b 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -15,6 +15,8 @@ allOf:
 properties:
   compatible:
     enum:
+        # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
+      - boe,nv110wum-l60
         # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
       - starry,himax83102-j02
 
-- 
2.25.1


