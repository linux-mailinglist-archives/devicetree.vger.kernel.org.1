Return-Path: <devicetree+bounces-83018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A201926E93
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 06:50:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E123328548E
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 04:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AF0349629;
	Thu,  4 Jul 2024 04:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Mro+f5Tw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BF52209D
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720068635; cv=none; b=Sc5sdEUWdLQsVoBKVAfGy01mNVaRrMX9UQLg28KGlkNcn5f5a5JQhRxAVVfjKdTBKcAoTc+CbDRhM4tyo0G2CvGOtOpNqlp2WVyF1lBnPoWOa2BYzqDcE83qP9rXEmUMMRAjnTYD5PJtnzFy1ZbSsfq+IlUDRMpcJerfqBNmosM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720068635; c=relaxed/simple;
	bh=fhnljkER/rKLYYjAYG0JmZE2KxKUuMBrGF5Jyu106aA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SLVi1Waf5u+5a3lcN6hnpO9bmFa7iKbu168o/318OSgEscwj1GRTeZblsFnI6Cgjs6KxTT4kvJKc6jIdgV1CHtRL94pBdlP8jSM5WNqMySKjp/Y99Nw6J59qI4jtUG1J4wpwV2hh4ML1P/fR1bFf3IQmL8+ad/spnxDIkXpbK74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Mro+f5Tw; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-64f4fb6ce65so2033917b3.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 21:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1720068633; x=1720673433; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KsBn5YIFgQujACGaG7/CDDGw57w//+UBPY3qWDxgZNw=;
        b=Mro+f5TwZC7uZUc5wAV0V7gjLMQdccZlKPowVkC5NxftLjQijeSQ2OH2vgYg7aF7x9
         OXIH2qs+3kkZlh2bEwDZKAojfjxrSso0aCtCS3fjBa2K26xEwQnci7/AD3pzjrM5DXa4
         OrS3eELRJGEGHR7g+R3NDrTUsHQiCYdtngTAlNtCx5WPlQWWaLFCuukDe617op51F0kS
         R5mkttewdSQDccFzxjhMCIQLcEZhfAQ/FxXRTWLGynjMSEzGveJP8+xZz+53n1VccHZR
         pqhnkhWIaZUwX+z3iHkV/JBgXD/qNrYsleADxvFFWvq/59kfp9dYTWb5mMspd0jjcZXG
         F7tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720068633; x=1720673433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KsBn5YIFgQujACGaG7/CDDGw57w//+UBPY3qWDxgZNw=;
        b=q/LKKDNcs5eNxZO5T7OeRmaQ51qZGXVyqVnFf3cktZvM/8e+MNTyGCXZkZ1cQ/SKpG
         qIU2alrk5HDjqiGc5keQAxVtaOrARtpM1KtNealzdpaLPhBp0Zis/TJpNXBZDEwOHEuN
         jof8sAIn0dE21bUaUlNatyS8FCf4Qo79ZtaFj/hUlXUJwsm+4tyxp/FJv2C1LGYJ/70x
         RrfvUPV/JRh2xwm8iZCpsPhjQHv3HJlLel7ZNlmgSDR99WoR9kp09BcaYEnIo+3mBoXo
         i2kXmZ9z85GAv4gvxEihxcz0d3UoAti3aO/iAosa2wfW5urpZvk/mGXWpz7roQUHD7yi
         A4kA==
X-Forwarded-Encrypted: i=1; AJvYcCU/3DdQ1ND1Ha1sE41MaP/ueKzrNffb68YGpeNgeSxdKnlSm9ss7n/e+FBG3eoMwouguftRTXLfVb57YleqVNsYtaiorVcN2jhsmA==
X-Gm-Message-State: AOJu0YzDiRCEEd9TQwj+Zvlx2le+hiuNR0U8rYDtIUMF+XySW/kuwfgE
	44GKWCJHhRvrS7u1j6yjHhzZzm4zaIbZIiNy4pKido/qEYf6YzELhare2rqcnjU=
X-Google-Smtp-Source: AGHT+IGwWXLEPd6j1SIUqzU+gfofpiqClC0+U9lppd9lNrJyoW9Y+Q7h2ChaL82zLrx8UHmV9t1tHg==
X-Received: by 2002:a05:690c:45c5:b0:61e:a26:c1b2 with SMTP id 00721157ae682-652d767d0a7mr7287207b3.17.1720068633205;
        Wed, 03 Jul 2024 21:50:33 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70804a8ec1asm11291826b3a.188.2024.07.03.21.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 21:50:32 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	swboyd@chromium.org,
	airlied@gmail.com,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Cc: lvzhaoxiong@huaqin.corp-partner.google.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: display: panel: Add compatible for melfas lmfbx101117480
Date: Thu,  4 Jul 2024 12:50:15 +0800
Message-Id: <20240704045017.2781991-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240704045017.2781991-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240704045017.2781991-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Melfas lmfbx101117480 is a 10.1" WXGA TFT LCD panel with jadard-jd9365da
controller. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 3d5bede98cf1..b8783eba3ddc 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -18,6 +18,7 @@ properties:
       - enum:
           - chongzhou,cz101b4001
           - kingdisplay,kd101ne3-40ti
+          - melfas,lmfbx101117480
           - radxa,display-10hd-ad001
           - radxa,display-8hd-ad002
       - const: jadard,jd9365da-h3
-- 
2.25.1


