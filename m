Return-Path: <devicetree+bounces-14878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D024E7E73D6
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 22:50:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 61064B20E75
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 21:50:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E7C537157;
	Thu,  9 Nov 2023 21:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DEs7aOE7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9524438DEC
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 21:50:16 +0000 (UTC)
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20BBE4206
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 13:50:16 -0800 (PST)
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-586753b0ab0so738085eaf.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 13:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699566615; x=1700171415; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FMh7dJy6c7Z6dmqAsf3sJ7b9dHtCKsqZ04NpaCQ7mOU=;
        b=DEs7aOE7bfOcrRp4m1PFGp3RkXOs71S4PlalbWwN29VRAqiP8jCozoCLmc9qQDNuRJ
         um2usmZh5QQLlytLxAn+MTIafMDeZ7d2vRHRlm5uaxfOMza9Twttp7ERNRz/KThvBS3s
         69CvY+rTF/UUnpOKwF0moLUJbOxl/DPmiABwPUT24WG1eChGHeSHSdk6+1DmpvzF+Whm
         HfAprF4Hu5hqMcxRV+MT/PpYNxZkgfIJXbIN1cBx5aIXzxplKi4nov9fDSn/qC++d+KZ
         +V9omF9OXYQe5ICmN56NCKC1Urc0yspN3w13zEcAZorvIYsG9irhQlN8hLeUSIVhVI+0
         8HrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699566615; x=1700171415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FMh7dJy6c7Z6dmqAsf3sJ7b9dHtCKsqZ04NpaCQ7mOU=;
        b=Nxc+mnizSzuHmKEtr7Xi/UcchZJJwqFOh7vEmU9besQncjSK5cXpjZGkF8V5lZEZPd
         thn+TNwtALsaP2Ay7fgRpEANwlWIxa92UzJrDf5KkKmvWBN+koiJ9C87oYY/oLQhEgIh
         /ItoUe1TQRetnWtAqaB2uJJMLZKsGhZFMpMBvQHoyDE8BXZbwDO7k34SRkJI7/9OvYWT
         R6YPhBu+TLOEmWjq+XbhpLu4kEHGvwcWmvFktiW7USs7vESiF7zVAVbs5uZIR6pkEkD0
         t5JMrDIrySXpa9y//yush2OfRVF2DFORZG2wwghI5BL5Z85fOAEdDSTpFOwpokzOuUBV
         mSNg==
X-Gm-Message-State: AOJu0Yx2J+YtigwhwOS75W7V771Gff0+mx/MNNYvFq1HxQUmNqlg8WZO
	vP2XydQg+HrSBiQELDw/F/8=
X-Google-Smtp-Source: AGHT+IHVkaf5YA3dz3qNIlTDI7draK5AFkU+1KX4tYYgrlpOTTqQ4WZJrARdU/LxrRrJ6a3/Gg2NuA==
X-Received: by 2002:a05:6870:1099:b0:1ef:62fc:d51c with SMTP id 25-20020a056870109900b001ef62fcd51cmr5227511oaq.51.1699566615423;
        Thu, 09 Nov 2023 13:50:15 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id tp22-20020a0568718b9600b001d4d8efa7f9sm864003oab.4.2023.11.09.13.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:50:15 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/4] dt-bindings: display: panel: Update NewVision NV3051D compatibles
Date: Thu,  9 Nov 2023 15:50:04 -0600
Message-Id: <20231109215007.66826-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231109215007.66826-1-macroalpha82@gmail.com>
References: <20231109215007.66826-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Update the NewVision NV3051D compatible strings by adding a new panel,
the powkiddy,rk2023-panel, and removing another entry, the
anbernic,rg353v-panel. The rg353v-panel is exactly identical to the
rg353p-panel and is not currently in use by any existing device tree.
The rk2023-panel is similar to the rg353p-panel but has slightly
different timings.

I originally wrote the driver checking for the newvision,nv3051d
compatible string which worked fine when there was only 1 panel type.
When I added support for the 351v-panel I *should* have changed how the
compatible string was handled, but instead I simply added a check in the
probe function to look for the secondary string of
"anbernic,rg351v-panel". Now that I am adding the 3rd panel type of
"powkiddy,rk2023-panel" I am correcting the driver to do it the right
way by checking for the specific compatibles.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/newvision,nv3051d.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
index cce775a87f87..7a634fbc465e 100644
--- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -21,7 +21,7 @@ properties:
       - enum:
           - anbernic,rg351v-panel
           - anbernic,rg353p-panel
-          - anbernic,rg353v-panel
+          - powkiddy,rk2023-panel
       - const: newvision,nv3051d
 
   reg: true
-- 
2.34.1


