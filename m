Return-Path: <devicetree+bounces-67236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E318C71F4
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 09:21:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 195CD1C212B4
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2024 07:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E6FB76023;
	Thu, 16 May 2024 07:21:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="VP+Gx1jD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684216BFBC
	for <devicetree@vger.kernel.org>; Thu, 16 May 2024 07:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715844079; cv=none; b=hUam+2WCE3BJJLQTvi9SU7WVrfpxCELJd9jCp8Fvozakl8W9OJMWEEPuaCzdn/vjYeEA3Z1m1PJpN/fSiDYyZ8/Hfve4bEeDwX7v9lqeRBJ/bbwTvWcX7F+a6uCYYwK5sw09uLuE4oCw3bo5V4cJP+qtuPSsYGCYHUGJJ7DaWYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715844079; c=relaxed/simple;
	bh=5rcnQxqMVkPLHsv/f8n1W790cXJZPYBjW4WbtgJPoZk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TKstU/JlpEMWsTd31OPdGKWMg8CqXNN/esRCk7dgFkPWj7OdlSx7Z8PNdZ6MIvHumcOOXGtvX/+MovpQG8rHg3RUxcGnjMhy2wbdyeHo/NqS8Pwlko5y2v2J2bFQxLnXr/nJdPJ++YEFIenzzYPCFVg9Byi97esmpBDtC0WQREQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=VP+Gx1jD; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6f6765226d0so1455151b3a.3
        for <devicetree@vger.kernel.org>; Thu, 16 May 2024 00:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1715844077; x=1716448877; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5g5tP1D+SIYc5SRjdnjEEwEC1xRLYHryw0XEezpzds8=;
        b=VP+Gx1jD0k2PyZQvxb93Id+Ife348/BUTXxOcoWpHKMOSVPY32C2hitLohViZpci//
         QBtBskhDTqGzNDwX+8kqbVjpDuJh565MGvniEgtvUnxlxSVvoFrkKrXC0Xbn+PMrgsyl
         YwDoICHWhW7mgaColxMRyaYTyunaYtW8H96Mv/1C3PZ8Zy3nE9aEEKVzwFOgyw/96yMi
         pRtjBkTZnJsbO0kkV/zH9H+n0xTgpTuXhIuwlVQbjwJkGhnmldkiClndidUGDSAMGx3X
         JG+cKxwMEGMLWtx8f/Tr5w+57L6OGoZ9rr7NeNGox8fsbmaZ0ruo5LhwuuFFqah614lT
         TSDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715844077; x=1716448877;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5g5tP1D+SIYc5SRjdnjEEwEC1xRLYHryw0XEezpzds8=;
        b=N+W/E7aFsBay1xz5UgljXmWn/X+C5BSr+gjKyVlr3Fn4Dk+LYUxIWuqg+3g7RYGMJC
         SAEi+FAEWVLlbwWzV14vLSy1M2n/29VOHsCtoMCk+SZ5VgS8ZbOjMwT+RWpX893aldtI
         1rPqjHWRxJ0EkVfKRyy/CMJqjTuZC78cSadrkdPdAtcDA4GfmIJiWujBjLmvi0mP1U/f
         cw8CkFcW6NmKVOVUynUQcG9w7P6+lGKmODVWpzb+jBj/9cere6CaWzor99AggaEBCnLT
         z2x//DMZZfFJqN+9CwnvFuy6I37DIwwfOsk7OAUjhsLsP5Hyo9O5LgAkTmF0TT9ZgCD/
         9iNg==
X-Forwarded-Encrypted: i=1; AJvYcCUsloXLhBftv+Ll51Nd8Z/+c3xJ2RlYYSld3WBzFF585m0rU+sYMmSySNCCqSbsKqHlU6A03EkfqNQk0KS8oYuTapiR/ul15n/jfg==
X-Gm-Message-State: AOJu0YwhaZOaZIfOK47VoGI7VEvS6RZs1ha4K1fnXQ1Ysmrd5DCXWmMf
	+Kd2o6o0nW5A3G7PQGXWl4Rxho1ypJ04An47YfZg0cqdXFmqdZdGY1t5Zwhdydc=
X-Google-Smtp-Source: AGHT+IHO0Ddngi87fvP6nYg6LzuIKcusAeKF4y/vtQNG4co+mekbmo3BMqBJm/kGqfjv37tCDkT3vw==
X-Received: by 2002:a05:6a00:17a0:b0:6ed:d5f5:869 with SMTP id d2e1a72fcca58-6f4e02a7744mr23110373b3a.3.1715844076663;
        Thu, 16 May 2024 00:21:16 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f4d2a663a3sm12318724b3a.41.2024.05.16.00.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 00:21:16 -0700 (PDT)
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
Cc: dmitry.baryshkov@linaro.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	xuxinxiong@huaqin.corp-partner.google.com,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v8 3/6] dt-bindings: display: panel: Add compatible for BOE nv110wum-l60
Date: Thu, 16 May 2024 15:20:36 +0800
Message-Id: <20240516072039.1287065-4-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240516072039.1287065-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240516072039.1287065-1-yangcong5@huaqin.corp-partner.google.com>
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
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Chage since V8:

- No change.

V7: https://lore.kernel.org/all/20240515014643.2715010-5-yangcong5@huaqin.corp-partner.google.com

Chage since V7:

- No change.

V6: https://lore.kernel.org/all/20240511021326.288728-5-yangcong5@huaqin.corp-partner.google.com

Chage since V6:

- No change.

V5: https://lore.kernel.org/all/20240509015207.3271370-5-yangcong5@huaqin.corp-partner.google.com

Chage since V5:

- No change.

V4: https://lore.kernel.org/all/20240507135234.1356855-5-yangcong5@huaqin.corp-partner.google.com

Chage since V4:

- No change.

V3: https://lore.kernel.org/all/20240424023010.2099949-5-yangcong5@huaqin.corp-partner.google.com

Chage since V3:

- Update commit message.

V2: https://lore.kernel.org/all/20240422090310.3311429-5-yangcong5@huaqin.corp-partner.google.com

---
 .../devicetree/bindings/display/panel/himax,hx83102.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
index fc584b5088ff..baf8b053e375 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx83102.yaml
@@ -16,6 +16,8 @@ properties:
   compatible:
     items:
       - enum:
+          # Boe nv110wum-l60 11.0" WUXGA TFT LCD panel
+          - boe,nv110wum-l60
           # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
           - starry,himax83102-j02
       - const: himax,hx83102
-- 
2.25.1


