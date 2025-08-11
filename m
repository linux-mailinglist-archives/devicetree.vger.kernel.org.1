Return-Path: <devicetree+bounces-203471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A03B1B21865
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 00:31:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A0B16802F7
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 22:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 957B42C21CD;
	Mon, 11 Aug 2025 22:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CJ02Psy7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98481D63C6
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 22:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754951459; cv=none; b=uBWvVv/epZxzmdDS9OluXVDxp4U1A11BCFB4GMrl7+rcv4C8Xkd46Bn0xC5MxPQDJ/R2es2Bkd5C/GSEvKqW9SYCjf3m5lZp9a6gDTapP91mA4AdP/mIysMBSSsyhtjjnYP1A0rbIRzovontAnOiEqreZrU3siPSV626D0eltJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754951459; c=relaxed/simple;
	bh=tpem3ugXEXY+sza7Z065QDPEzGqVly+Nz2CDIYGjz8w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BGt5RXFcADkNIuXMEBBAHtzAE1vte6QLUtk3VQGjo4RTlCcd9gGmEoHeOWUUbH4Gwja/ckPzilrs4YWhLUqW3ltw6Vwoepw9nH+VLmqlANtHszO40icA3HHEeAeb+DE5scCH244hu4I+zGArw4o10R0Ae0AA11nBqr/W6dNIrdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CJ02Psy7; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-459ddf83023so29713925e9.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 15:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754951456; x=1755556256; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ZIFIadWiEXjzSuKWo1v9+wZy0Xasz/GeS9q0g0hnKc=;
        b=CJ02Psy7Jod4NwL1h9x7R9ck1PDAdi09hb75rniHQFZauHJ3TC5sY0Z6F5iP+Kfvnd
         zpK4b83GXHRaF9pnHRChwMd36YiK1+Ns2vL9o5dL+wIoR8W3qvzo5xV0c9GRSeCu0+j+
         RzU3mnT/14V6I7NMTE3mcZG08Z1JuF4ouhx3h8Rmq7Y6cHhvyJ+xKBHqA/G2kP/Ons3l
         f8ZwOTHVuuD1WGtrTQLoUEGlikqWLt5fLrgXQYeoCD1eQHpUFNVKV0urfGimxAXEZMa+
         zdYopxPNe//7/ZEOJCH3/ejJebWFwNXzQTIqrfPsAS2pV+Wespt+tSl4p8VQv1G0gqni
         AVwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754951456; x=1755556256;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ZIFIadWiEXjzSuKWo1v9+wZy0Xasz/GeS9q0g0hnKc=;
        b=Gb+wbNA8X707QwFfrE+gdvFNVn5B/fzrsQ8QSj03HGlM35p4MMnknk4yTabQ6IJuyL
         1QUQhKFokqC4Vr+k9KctJb7urCIGjfnZcJ/prId7liw16MTRuhRFwt0uNqXRAAh+zSpd
         pLzWotTKIEauBYWNerkQ85ld0IOLru3NP/lxgkUOjTtA6fOmcDou+KfCWMSsSbcISmHp
         JccCRWh+eU69qQR01s3GTuvKFAK4/w01HY7GL9SDAc8Cur2Afbax2gbXNo3kJqSZndka
         ldrrpOLyVtl2gR0qHihOWrskNhXtL+Mc3aEtirfpPXyspH+x/Yr2QZh3oyv4VCLp2OB/
         zWMg==
X-Forwarded-Encrypted: i=1; AJvYcCUVhIEXZBD3qRtKYwdzOZoCKirkZbdLuSj2dnSdLy/+a8CohRSifiSSu5PimiOA88tWqTJVNiUDYZc0@vger.kernel.org
X-Gm-Message-State: AOJu0YwZImTFrC7x6YCENNiZBJ5DTbTeGJZJVthbbr/HTepn/XsrmKR+
	OlNAL2enX0w5k4zLb8HeXG1fD350Uusc52lUma0V67qyFMXoM82ma4uEpgIosQe7mTg=
X-Gm-Gg: ASbGnctMauGusNZIFvsvrcSGKSS3ZFcb0Shgtie4NYlVi6rNGWDjIyE3J+ZLJF0zNdh
	5IBGLbcJBbHhw3SoQ7c8FWP+sMiBuJyLTwoUyQASW3tBUUzPfTCFtAiY1Y77HDCmbtelSWf0FkL
	eJ+v1JvpGyT15hQm9SGF8Vuvw/KS9lc87Zj8DO7OO/RAPrH8Ccam/veEX4i51Gg/MWE1ooxKbah
	uXduHFYAIK6VbKaATuDMFsnWu1GoZm/HHTZdKiEyPz+RzRUStuPGHaEtDn6gQN6vBD4Efo4tZJa
	97yHGkNPIYm96iwd8Gf0XqiGHwv4LEAncmKI6nQaDi+xpFIQcl7rC/gUIBB1ng0Puvce4lJHwRv
	JMNOstCv2FBIsb6PnuoptPHwuTLIXpvJBzZuFOvJn2ghSy5U2
X-Google-Smtp-Source: AGHT+IEcfijsud9AJbAlisLtBCp6+CvVN9xcBIcukAdH0F565A40twZxHlhK+3nczktPx49heHuU+A==
X-Received: by 2002:a05:600c:c493:b0:453:66f:b96e with SMTP id 5b1f17b1804b1-459faf4758bmr98113305e9.11.1754951456086;
        Mon, 11 Aug 2025 15:30:56 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5853104sm271557715e9.8.2025.08.11.15.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 15:30:55 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Frank.Li@nxp.com
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ghennadi.Procopciuc@nxp.com,
	s32@nxp.com
Subject: [PATCH v2 1/2] dt: bindings: fsl,vf610-ftm-pwm: Add compatible for s32g2 and s32g3
Date: Tue, 12 Aug 2025 00:30:39 +0200
Message-ID: <20250811223044.3087090-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250811223044.3087090-1-daniel.lezcano@linaro.org>
References: <20250811223044.3087090-1-daniel.lezcano@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The S32G2 and S32G3 have a FlexTimer (FTM) available which is the same
as the one found on the Vybrid Family and the i.MX8.

Add the compatibles in the bindings

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 .../devicetree/bindings/pwm/fsl,vf610-ftm-pwm.yaml    | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pwm/fsl,vf610-ftm-pwm.yaml b/Documentation/devicetree/bindings/pwm/fsl,vf610-ftm-pwm.yaml
index 7f9f72d95e7a..c7a10180208e 100644
--- a/Documentation/devicetree/bindings/pwm/fsl,vf610-ftm-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/fsl,vf610-ftm-pwm.yaml
@@ -26,9 +26,14 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - fsl,vf610-ftm-pwm
-      - fsl,imx8qm-ftm-pwm
+    oneOf:
+      - enum:
+          - fsl,vf610-ftm-pwm
+          - fsl,imx8qm-ftm-pwm
+          - nxp,s32g2-ftm-pwm
+      - items:
+          - const: nxp,s32g3-ftm-pwm
+          - const: nxp,s32g2-ftm-pwm
 
   reg:
     maxItems: 1
-- 
2.43.0


