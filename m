Return-Path: <devicetree+bounces-28422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D11DF81E498
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 03:38:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79FCE1C21B0B
	for <lists+devicetree@lfdr.de>; Tue, 26 Dec 2023 02:38:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5ED715BA;
	Tue, 26 Dec 2023 02:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="VLNui+6n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612107F6
	for <devicetree@vger.kernel.org>; Tue, 26 Dec 2023 02:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3bb766a7699so3378503b6e.0
        for <devicetree@vger.kernel.org>; Mon, 25 Dec 2023 18:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1703558273; x=1704163073; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4Ux3WNF8rboeDgyQ70WkkgI9lGJuAsq0KqVfHnjsHSk=;
        b=VLNui+6noJ6fYc57aAekWolBv+YnvAbX0iMwcTFyu4zX0bYTm9L5/1GLOTeG0U/fyc
         uVxWymc2tBZRJgb6repaCOqh+Q5xV69dRgIR8aZrJ/dpIv5j+tJm5plmqHLmAcX/Ih8g
         jENLK1d/SIQihzxyviYWZqgazMm7d2PCUjIFI94DCvwFDjnmIl8ImlsDXDTOjIl8x4aX
         iLDgtPdPh9SwZz43TI2nXoJafcZC0ags3H5Et/FVjXgkI7toAVCdP+TigAP6fuk1qoyl
         XSpcFyEvaKFkfeS/Op6/UaP1R1eQGv3rM64+K8sIDA1cv0iSHgGXaknAyew9qQFeoNkP
         Fjug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703558273; x=1704163073;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Ux3WNF8rboeDgyQ70WkkgI9lGJuAsq0KqVfHnjsHSk=;
        b=sRYvpwX4fCArg7j6fndrJPX9gi20z7tK2+gYBeti+EXB/jAEr7aHMNHRTnBtFnqS6V
         0nuGLsfk/cTolMjZTTmjlQET/uZwuPo5UlDxKvpTRJAwfCA2JEt8OQgqpLj8XZhDsytW
         v8dwFbzoMK3VAwUR5yld1jleyXu8+IQUzVqqvYzoSfuvSeZnx8fAyCybc9D21Q0EzmH/
         BBP8II8ksfZFcab3c+DwNAwcrc+hvJ8msZDLUbi9iDpPIiGRvD2duPpF9gy9NwdKM34U
         MbMFVq9dmezSo+TC+ArvZomoptNzH+LFmhpUkJu+K6N2RHsRJYyrYHkZQxCrp9BB+7Ch
         bcXg==
X-Gm-Message-State: AOJu0YzblS1iGVM2ddu5KL2ryTVeBFI2TSJa/8bdiyqLWItPVbgIJyv6
	ohIC6hivqsfqrLdDxFU6YikZvc2EzJz/aw==
X-Google-Smtp-Source: AGHT+IFv+Pjk/sd+z4ccnoGxDv6jaeKr0Y3mkmO+WVI4p/oMvBhMqZ/7PGpkacBDK0X+JJq4pelYnw==
X-Received: by 2002:a05:6808:384c:b0:3bb:a533:7fb8 with SMTP id ej12-20020a056808384c00b003bba5337fb8mr4876344oib.60.1703558273387;
        Mon, 25 Dec 2023 18:37:53 -0800 (PST)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id b11-20020a17090a8c8b00b0028c2de909e4sm5083190pjo.50.2023.12.25.18.37.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 18:37:53 -0800 (PST)
From: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
To: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: dmitry.torokhov@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.com,
	dianders@chromium.org,
	xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [v2 1/2] dt-bindings: HID: i2c-hid: elan: Introduce bindings for Ilitek ili2901
Date: Tue, 26 Dec 2023 10:37:36 +0800
Message-Id: <20231226023737.25618-2-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231226023737.25618-1-xiazhengqiao@huaqin.corp-partner.google.com>
References: <20231226023737.25618-1-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Because ilitek, ili2901 needs to use reset to pull down the time for 10ms,
so we need to control the reset, use this drive control.

Signed-off-by: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
---
 Documentation/devicetree/bindings/input/elan,ekth6915.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
index 3e2d216c6432..dc4ac41f2441 100644
--- a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
+++ b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
@@ -18,8 +18,9 @@ allOf:
 
 properties:
   compatible:
-    items:
-      - const: elan,ekth6915
+    enum:
+      - elan,ekth6915
+      - ilitek,ili2901
 
   reg:
     const: 0x10
-- 
2.17.1


