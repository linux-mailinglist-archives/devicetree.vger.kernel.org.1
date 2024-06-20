Return-Path: <devicetree+bounces-77879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A1663910372
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 13:53:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2813BB228C7
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 11:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7422A1AB35F;
	Thu, 20 Jun 2024 11:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="hySU/xsc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E745A1AC233
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 11:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718884384; cv=none; b=DRwhs/QkelAQjBHOBf2WpYOZyO1JrgF1idJxZUNbRPmSBg/b2taNWRqmYfTYXYGKT9Ellx0uuzlFV5z3El7EwQBVRLJNkuTECGsfqs+jIi1z83VgaAf1jERqAO9cs3+TFjP/qDs4Sex9nn958POsCi8Z/OouAdCBgd0V8l+HRJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718884384; c=relaxed/simple;
	bh=cn33yzbuHsD4XHvHkWif+lhgLxTCLFn5SfcYDICYlcE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=Xuy3BbT1NhNJPBeev9T0HnsBV20HuCgi/R8tVeZcy4rEVebGgUPPqM+jJntkmqnjeM6t6GTo+rtCsWQE+VT5rhkBHuWdFVnh37GEdIfE/xYmUAQFbpNKWJ/8y+EnckLZAWSC+kyQezXeTyPx+83hE86zik9eo0R2pJlL7N2WNVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=hySU/xsc; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7042a8ad9f5so1211031b3a.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 04:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1718884382; x=1719489182; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TZOfcyLKgj+yv+ED942rapRmAvPkDAxODQtfckKPepA=;
        b=hySU/xsclDHcauoHn/mGk66dWx0JrhrJxOBBLG9Egk0u8qTM+k5ks+90XF4hRwmZWF
         vww+5jMnF9nuuF+mSua3Bzkr3eFeZFdaFiWq9u+Ivb9VzCv0cdQs78PgAC1A5LAOBxJT
         NyLijmpArBN1S7NXTER4gz5l4DsMpebx44T/5ydoJOqJQqLRIJDHDkwRB/uwaRLJIhjQ
         D3fWDmIc/k76uRIEIeCyo1Z2O/aGkhQV+/AgKlS7FWTKtbasEMROmcx7ozEW7F/J+fob
         HBaCgRkfc0s8MJDluDJSEYHhM8ZXWCu9Znpe1CGqPtUVHHMgm82bxznz4OTpSJnVIcU5
         a31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718884382; x=1719489182;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TZOfcyLKgj+yv+ED942rapRmAvPkDAxODQtfckKPepA=;
        b=tsB2KOaBevguRDqhKyokth8Fq0v9BqVIE+Z14e3LSJfjft94HCjrmF5clZ4x9Z1Wyh
         8/BDQjtlAeN2wCSU+bzSKeG6NW5eTiS+8kl43LceNQE00CClyNPHiZoAt3NjDnVsDWPQ
         6S72V05tmtvbpwx7M7O/NmUAUZJZ5E6Acg0TJaYZA7Oluyhg0cqFeRFQYXjeHgC9G0JK
         o7TbLH+OQEY4MTsIdgGEgRTwLgmxbbpyBi15GXsYmPnW50EnU6XRKZ0/FzVYWxoSuPRB
         BdQFYwTBTHsc+vFh0EdsDEhTeKaeqaWXdpDZ2Rq/r9qhNoN9tX2+OALNMEGUKgX4qMtr
         KYRA==
X-Forwarded-Encrypted: i=1; AJvYcCUGesNJ9k+f0VIHhVCKWh/MOsyBAQEWGFQnsS4RLn7BE66RNnsvh9wxBJTJOPss8mteShWRD/Nok0rEEnke44/kw5mQsNbA+ukDxQ==
X-Gm-Message-State: AOJu0YzvszjYHUlS1E+dt14oVsjBeSmE2La2KA5hqQuTdsbjfT98v5NR
	Uv7AXjDuxaJPIdcxojite1cNoWdVAxP4xKLcpMLFr5toxllixAmJc5EuBKCDJow=
X-Google-Smtp-Source: AGHT+IGMNnTgKPsfl8aIi5r8uzi6bXKkR5QprrMn7nZuUrBC67TYRolWeSqdoOUgVCP9/FJ/JCF9Jg==
X-Received: by 2002:a17:90a:69a4:b0:2c7:45a:d237 with SMTP id 98e67ed59e1d1-2c7b3b0eab9mr7321636a91.12.1718884382279;
        Thu, 20 Jun 2024 04:53:02 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c7e64a1da9sm1486316a91.53.2024.06.20.04.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 04:53:01 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v4 1/2] dt-bindings: display: panel-simple-dsi: add Starry-er88577 DSI panel bindings
Date: Thu, 20 Jun 2024 19:52:44 +0800
Message-Id: <20240620115245.31540-2-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240620115245.31540-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240620115245.31540-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This add the bindings for the 1280x800 TFT LCD Starry-er88577 DSI panel
to panel-simple-dsi.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---
Changes between V4 and V3:
-  1. Move positions to keep the list sorted.

v3: https://lore.kernel.org/all/20240614145609.25432-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
-  1. Separate the Starry bindings from kingdisplay, and add it to panel-simple-dsi.yaml

v2: https://lore.kernel.org/all/20240601084528.22502-4-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
-  1. Add compatible for Starry er88577 in Kingdisplay kd101ne3 dt-bindings.

---
 .../devicetree/bindings/display/panel/panel-simple-dsi.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
index db5acd2807ed..f67059d44bde 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
@@ -58,6 +58,8 @@ properties:
       - samsung,s6e3fc2x01
         # Samsung sofef00 1080x2280 AMOLED panel
       - samsung,sofef00
+        # The Starry-er88577 is a 10.1" WXGA TFT-LCD panel
+      - starry,er88577
         # Shangai Top Display Optoelectronics 7" TL070WSH30 1024x600 TFT LCD panel
       - tdo,tl070wsh30
 
-- 
2.17.1


