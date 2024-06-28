Return-Path: <devicetree+bounces-81312-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 524A791BEED
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 14:45:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 751A21C226B4
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 12:45:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66D8116EB4F;
	Fri, 28 Jun 2024 12:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="twqjjH84"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 965E716089A
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 12:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719578715; cv=none; b=NeT8SFVdAkSdJCirj8HpGbfHLyY2v5CJuiN9rbJbtF6Lmhl3kz2IWj3xZ7hGrw+P3YWAj9K2b+dNWorwVhpZHign2AE+nMANIzPJvCsPO93OCfVDgozrEUIOOKsKNrdp62hzSUgnDrgnd1aHQTcsSKFmVPF18lMav4nV2bxjFq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719578715; c=relaxed/simple;
	bh=LUhQ8DOjFI0nAVmPoRbYAZ6OVRmmrigAYi6Li9gLvYg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=TeRWV5jSgZhz2vDQkfIyb/Rr61FWQDQ0GwpRuZbnwkBtlb03XDMbUUwF8UD/g0WutVab6USNf7xquEcIvMHW1lDEXtjTMC6bUxKx6OG57lc8VrrnZe2U9iNtw2cERjtHgTFZEiKTrn72gY7Qfmhhwphq+rtE32zTRz7SqnwSOC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=twqjjH84; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7178727da84so349169a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 05:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1719578709; x=1720183509; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rg3tdU7ppY8HgCadeya2IfmEx35gEyixCgdQukzslp8=;
        b=twqjjH84MR7/uErEEBpp8BvlE3/2BlAfgOd29awkoX+vXAMo8uzAtrtfOOM5qwzFzV
         TkCxYbUPIUmD4+zIqfnsH19yBDXAY4PzcgMkbpxQ0JI0i23us0vRaHIvvkbjB1j1ZpFg
         ikLHPlhLkC8aaOmZrtmiV9JtpMSfxF0JNXSZQLlVtYmMxLVetKInjxrGzWFg9qtD9V6g
         9UM+FqrgasWbafWtLsPYWYxz4wqHYZtTx6pPcfQpRga1vLWsVEmSqPXgup9sJPoG8Gt7
         1iqYUfoi5BB+Rmur1fs7d1INTao04Gjy7nQvu1FWci/VDAx9NpZ+7l+/7/u5w+9o5G9k
         z+BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719578709; x=1720183509;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rg3tdU7ppY8HgCadeya2IfmEx35gEyixCgdQukzslp8=;
        b=fYj4U8lrtYnkMjXlK70XNwdFtsfd0wy0R8nrWG57She3Tly6cI9jal7RxD2vu2Oy8F
         N9jkj5lj6la9vV9/rvoLWcgVxSCS4NZ/wcl6AUno6/9lL0OgMUX3ABug5Cnlsy2S2WMd
         9czdrcf3UvROolX/Nxg+rSeSN9m8tbH3kBuPJ2MK8J7XHMsGGYi5uphFzsx4hEjDBrj1
         TjqCen6eUi7C+nF8cNJTpip9mIaHBeqOwtSKWRmkWMjy50dt0JaSsIbsTS3iqS0DAU8I
         79/SBIbmXYlPI/TfGgiydoFrNS35DoCHRI9A2QoB90VZCco1HGhJsoTmy9x2PFIScw6g
         Vntg==
X-Forwarded-Encrypted: i=1; AJvYcCUycsrUmFEwmaYdTRBSBpMzSi15RNxQMYQLbfPMaI7hTiTDO1McrlAgmAwVWRuijB5RF2MKeqUcOWDZd9d5sNxae5zyUn3cWPOQ5A==
X-Gm-Message-State: AOJu0Yz5vbDlXkhy3zAHT3pkkRK62+3mTI411+2uxqC2mxNw+RukAAOm
	Z/1rc+Pol4cYBAXPsDJpFV8RbCetJ9VlyKY2dqI0/H53/oE9EANP1wy2vhGDcF8=
X-Google-Smtp-Source: AGHT+IGi1fGSVYxtAxmFf/MTdTm122/UI6yNXUDQyXrOEFT3f8SKiRbbUQL8tC6sqxHVlH4xLvD96Q==
X-Received: by 2002:a05:6a20:72a0:b0:1be:eae8:9975 with SMTP id adf61e73a8af0-1beeae89b72mr627357637.15.1719578709482;
        Fri, 28 Jun 2024 05:45:09 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac15695b4sm14346255ad.225.2024.06.28.05.45.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 05:45:09 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com,
	jagan@edgeble.ai,
	neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v6 2/5] dt-bindings: display: panel: Add compatible for kingdisplay-kd101ne3
Date: Fri, 28 Jun 2024 20:44:41 +0800
Message-Id: <20240628124444.28152-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240628124444.28152-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240628124444.28152-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The kingdisplay-kd101ne3 is a 10.1" WXGA TFT-LCD panel with
jadard-jd9365da controller. Hence, we add a new compatible
with panel specific config.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes between V6 and V5:
- 1. No changes.
V5:https://lore.kernel.org/all/20240624141926.5250-3-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V5 and V4:
- 1. No changes.
V4:https://lore.kernel.org/all/20240620080509.18504-3-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V4 and V3:
- 1. Move positions to keep the list sorted.

V3:https://lore.kernel.org/all/20240614145510.22965-3-lvzhaoxiong@huaqin.corp-partner.google.com/

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


