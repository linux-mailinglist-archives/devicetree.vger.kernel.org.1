Return-Path: <devicetree+bounces-16759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB3727EF8A3
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:25:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 282371C20972
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 20:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0622545C08;
	Fri, 17 Nov 2023 20:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RMmh6b8z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4339D10D9
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:44 -0800 (PST)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-1f5c2e95f24so221562fac.3
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 12:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252743; x=1700857543; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Tc3YJAqfIqDTHuog1Hz5PnyAu42zB2xLiKNLYokXpM=;
        b=RMmh6b8zCiGimQ3Fts5IDiaeUzUdK7Hx9hu7hE+wkd8pRDpdW6JUnq97yrbQD/R0pz
         6JP8ONaRWo36SrPzc0R1y1KHt2cILuYH00I4bPBSmNjDGNHY3OIXdHORU6MGdlTJZvnk
         d8wi8oQQT1eXzZpA2TocYcXsqLV32CrxJ5Dj/GR/h+wVazZBoeRhAy3QsW38StdACq3w
         kWrEhi3fSmn2OKDsJT604TPKqT8DpyXM7e2AIuAnLYSUAVWvGtyMVLrY1xK03N+48VjC
         OlVEs6rAS9LU8eyhIrI2FcZUElddATYM9fnN7l3M8edQ77KljS2iZ/xpYXw4VX1H3Alq
         0wlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252743; x=1700857543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Tc3YJAqfIqDTHuog1Hz5PnyAu42zB2xLiKNLYokXpM=;
        b=qDD5FJvNI6jK7sNiN/zDB1+tAJwWmgmURRMfeoxweQtm7sAjJ6C0YLSswRATDgsSfs
         YeUJVsTrfVCP4vGNIifFNq07Q4GQLy7nDeNSDJ3IfSRys2x6X0hHKlyF8pELNWPiEfh+
         xJHIIh7EzPLCVddFl8M1aptz3upMRoMHqpDAJKO8Vd30DJu02ods4kTsSnlJtG773Hpc
         PPSFjUIcZ4hgqAdwbtdGBRa1sLOzBoG3+F9CXFfr0ht4xWaYDej4IZaX2FKrK2tcluDW
         VScskQ+apWXVFvtV5qM/3K7zxtC2P1veqlbugY8a2Xz79U1hW5jUNt1JKZGq6O2X8u7G
         SkTA==
X-Gm-Message-State: AOJu0YxADAa/N+Gh3AeNn+hbz6NPxX+zDYZPdLy0C+UCYVYqX2aZqVZY
	GGJqVacFKXD0a0xFUEe8/qc=
X-Google-Smtp-Source: AGHT+IEHoOP4KG6sep1RoF8BKJ7xem7Us4jx8tSEguQQKOH9EyMYtcn02oN65SfolT+ioZ9UrwWksw==
X-Received: by 2002:a05:6870:14d6:b0:1e9:ba96:272e with SMTP id l22-20020a05687014d600b001e9ba96272emr316461oab.10.1700252743562;
        Fri, 17 Nov 2023 12:25:43 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:43 -0800 (PST)
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
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V4 4/6] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Fri, 17 Nov 2023 14:25:34 -0600
Message-Id: <20231117202536.1387815-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC. Group the Powkiddy RK3566 based
devices together as they are both extremely similar.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..5b015c4ed775 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -674,9 +674,11 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
-      - description: Powkiddy RGB30
+      - description: Powkiddy RK3566 Handheld Gaming Console
         items:
-          - const: powkiddy,rgb30
+          - enum:
+              - powkiddy,rgb30
+              - powkiddy,rk2023
           - const: rockchip,rk3566
 
       - description: Radxa Compute Module 3(CM3)
-- 
2.34.1


