Return-Path: <devicetree+bounces-77760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 793F590FE45
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:06:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17619B223E5
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 08:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A485416F857;
	Thu, 20 Jun 2024 08:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="S3qPcCle"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F9515F402
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 08:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718870739; cv=none; b=cBQwi4aWM3pgVWDilvmAPnI8pqxDeRbERJjA4QV4hbdfOWuswNlw7E8Uuc+CkRKo96IB5S37F/duJo/xQieU7CVD3n/4P77DTIvFMhkYx1dkNMx5nXUr5v5B/opqNGVIkQ5Bko+/xl/4KfyxH9yxjnS9TMMV20s6LwtiA4f178A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718870739; c=relaxed/simple;
	bh=UFGisn03v9yhYedeo/3KyA9pLmLDEAPEB+tRgkSWm+4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=lQBhKxZyH816N7gEyFdimn86gkVC69eJlnyIjUblRcXhkUxPbSgkAlEsByqWl9wNXwe+46NKAEsjJ2WQWgPHbJowIQv/viNspzlTAUc4mz8z24miuPkwsEXZcfi2U7r6nQWVa2a02Cpi2uSvFhSgBbIDnAQ+TySODyQxe/eQdxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=S3qPcCle; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7041e39a5beso484843b3a.3
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 01:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1718870736; x=1719475536; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/Y8D7obmprqKPMpE+xyGcQQXo6scFeZnMh+CrPUj1ro=;
        b=S3qPcCleYLAfk377aD6UUw5mBflqxiNePc7Gl7RfBAR23nlqfBeafemARzbrYnpjYb
         L7AKVu10hd+VIYtUDrb42D2At9zMlEc4/wmIS5XOJixccp/cklKnl7MCn1TzQoXWMRFj
         xzKnuoRxoyDoKkMThNEqPsOJsmyFb0w4Pga3cFGZVwr6k7qtrcS86Hv5KXSMfaXDLiFa
         JhmLmUzgKcBBVF7OactTJgbUgt3+Xoa79Mj08/m/Zhp+9nB5aYKFCl5Q4yFqJMAV0Q30
         deLDjFoKpUIeoaRNDi9LBDp8cceMwxRRGZlBW+HwS9H5rlIPLaRAfmGiIvOmXkfzHc42
         hZ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718870736; x=1719475536;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Y8D7obmprqKPMpE+xyGcQQXo6scFeZnMh+CrPUj1ro=;
        b=sCVB1DIdXtjqtWCkCI0WQvN25cOizpu/T6HHV+HIfV/qoJ7zZevUM6+LKhz17FH9OO
         NHPqCtZ3Z/7o14ZaokCULL5ATYcFrF9zaTdzoLdL8R0vs7rsposSfflDl2U3GmQ7cMpG
         S0qF0Waw31rKqbZMi3XjW6XYKOy5bS+pzjmdrv4DL0NbyRsIlxGabvnewtN0Pm99EUkN
         ML6W7VjVbxxbdB9KKMJG8lmC/Hnjgy294vgvTAO4Ug3LLQpHwV0K4fvWrZ1+kaZWWFf4
         BGk00V2OQ+WjEoXo4UaMxnK9YiuRBB73bzJYwN3Jp8pguhCP+lecy5UackEkZpDEXZYe
         Z/nA==
X-Forwarded-Encrypted: i=1; AJvYcCUPI3PrtkDT05jvE6H9SF4aq1w6K/Qk4cQsczXyt0tJjS8tBS4tptKGLnQAs4EMOKzJTGl438ko6Og6RL732B88WAFf4KhC/ledmQ==
X-Gm-Message-State: AOJu0YzJuYFsSm3xKVsT5Yzc5sRH8VkNyiPtEiyF0eODM42GQ3X6UFry
	b2CZokHnjuWoSxEpYY1iTcU0ikj60iBC6ak0iJOBCQQzRc7F7CjDm+u9hoKwJZdglNSMBx5xQD1
	x
X-Google-Smtp-Source: AGHT+IEWX7tMPhLCy+EIc3J3GNxEI9rtrbsuhv+fhFcIU85LqU78MlejcJmdCThiVyNmkHK565rXEg==
X-Received: by 2002:aa7:9e8f:0:b0:706:3405:fef7 with SMTP id d2e1a72fcca58-7063406032fmr4114904b3a.24.1718870736448;
        Thu, 20 Jun 2024 01:05:36 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705cc96c8c5sm11805889b3a.58.2024.06.20.01.05.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 01:05:36 -0700 (PDT)
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
Subject: [PATCH v4 2/4] dt-bindings: display: panel: Add compatible for kingdisplay-kd101ne3
Date: Thu, 20 Jun 2024 16:05:07 +0800
Message-Id: <20240620080509.18504-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240620080509.18504-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240620080509.18504-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The kingdisplay-kd101ne3 is a 10.1" WXGA TFT-LCD panel with
jadard-jd9365da controller. Hence, we add a new compatible
with panel specific config.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
---

Changes between V4 and V3:
- 1. Move positions to keep the list sorted.

V2:https://lore.kernel.org/all/20240614145510.22965-3-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
- 1. Abandon the V2 patch and add kingdisplay kd101ne3-40ti binding to 
-    jadard,jd9365da-h3.yaml again.

V2:https://lore.kernel.org/all/20240601084528.22502-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
-  Drop some properties that have already been defined in panel-common.
-  The header file 'dt-bindings/gpio/gpio.h' is not used, delete it

V1: https://lore.kernel.org/all/20240418081548.12160-2-lvzhaoxiong@huaqin.corp-partner.google.com/

---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 41eb7fbf7715..2b977292dc48 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - chongzhou,cz101b4001
+          - kingdisplay,kd101ne3-40ti
           - radxa,display-10hd-ad001
           - radxa,display-8hd-ad002
       - const: jadard,jd9365da-h3
-- 
2.17.1


