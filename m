Return-Path: <devicetree+bounces-203953-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C63B23986
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 22:02:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8504B169486
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 20:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B73E32D0627;
	Tue, 12 Aug 2025 20:01:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yv0Tzctc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1DF2D0609
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 20:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755028885; cv=none; b=vBWvcTWFndb0iPQIYcX3Woiz/Aoj7+ydjBgg28y8AVSWkv2TZrM6nyuMqs5D2LvY7EsS6qEndQo+jrd5IBGlehvvwax0lfLL8VIGiaqOx+EDl7vMa81S/URwG6BpeytsSNnudR6b7Z5Hc1zfGnTSCvUKPuUednjtuuekEc6BPJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755028885; c=relaxed/simple;
	bh=tpem3ugXEXY+sza7Z065QDPEzGqVly+Nz2CDIYGjz8w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S0AMnFKI11M8j5A+jKS0S5mvj6LXdLUquob1SjvarL3yT/3vJ55kpAQZqLUxj48sAW/znZIwncT0Z/nwOXMfJWfKz1DtkmVSOB/3zdllzupmIJMh4bLWj2TdvAUW69o8DfTt33VYEkSpmvMApJw5gzazicR2wLTVUJnucx40W1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yv0Tzctc; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3b7825e2775so5259753f8f.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 13:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755028882; x=1755633682; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ZIFIadWiEXjzSuKWo1v9+wZy0Xasz/GeS9q0g0hnKc=;
        b=Yv0TzctcM/hTIm5SgXxsYKiP49iK3e9oy84XRdFlDKGxfoD4EJLxntIg43WFhcE1HX
         nuz312eFvRpGDhwmZ+mZEFYxs7UY4qf2xM5emIkINzLvzi3yPJIqBsrvzMV6OJ8ykZvz
         dGy5z2FDDxZiR8nHT/m9zGVKOv5mASa91XB/W82FiCEQiQ1UABuMH+q5SaePqwnuOtI/
         +U1ZxhbAG6UuEXTQgb+TelIB8hRtLrHkJxKTVlvPQvjL0Zrbdw1vfAQVLANPeSCFy9mF
         Gtm8VwsOmgPAr6IQd8Ff6bv6MGnKyYpHysuv4JmKkqClk0ZolZLdII5G4XADZ07lB2+y
         RHbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755028882; x=1755633682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ZIFIadWiEXjzSuKWo1v9+wZy0Xasz/GeS9q0g0hnKc=;
        b=bRpKw16gmZXI4vflKM+tsmc3gxMqPPnTBw3Oaf2bmeK4eKa09CItrKASEFnkBjA4HY
         VaKDBKoUPtl8lCrol26jOnZvlKwrw8Clw8yznux+OZp/V5HVsN2lKNyZ3XnlaSgG/FH7
         qcbbLTHdkTeWzIPAvYWgnWPyb9sIaUFbWR92ZMDMGrjbKL8WhfehqQRqxh1ZpUQAmb1/
         ugg+2fC0DdIThP3gsDOYyE6g9XDGXuwOlozm4KG/npmAR8T5XyEtUhGiiU7jA+6i/OV4
         vcmZ8J75zLGi+Hlb3NO6fc9/RMczax5hoYivuGXJnH75v8R9jlIVFvHsJz4X/FyFlqTg
         cTKw==
X-Forwarded-Encrypted: i=1; AJvYcCU+MSiaMol9XmFaLeUHVVvaJdNt0I3OvkhcW7nvwezhOU8nWob2j416y6tDCh3mSn+fe1N0B4Fpjub3@vger.kernel.org
X-Gm-Message-State: AOJu0YxtdDM10FSPzk2NKmMTfJwMKw3nWJB+gpTbP+sQ4RV8J7SG/PQU
	VXY9N90BdnDw4gjXfDwdRM8+Q5+PYes5fnsJKB8deh2kMQ7vp230aFa3aIIuyI38n4I=
X-Gm-Gg: ASbGncubk8M0vGBp3LtJ886klPt5p6rwD9DFcO6b633VoK7TugRYAGbWJH+Q0lPSYh/
	kEAnvLXCr7kHKVzEVL4CI+YAypEUC2aqUDj9L7XdgGiglt+jzok32QLfkeAYlabsVOPVZlVsUIS
	W3BkLYqa+upup2OFkmSFhs1Lq8sJeKaBLjk84o+bRjZXLbYBQ9C3XZUYPqch5STEF5weDKJECVZ
	jw2V5/wwqWJywGP/daA9PFfFQtOBCFR9r6/hPNXTnDmHXLdIEaE37Gcn0JgMY+qMBAAig88Vqaw
	Oil9trIwd1o6N+FvjLF/pxlcEyjkLCsl0R3Lh1tyhwciHSxKBG4J+uPt+93LMEVRJ05Q91g7lT4
	XZh7le5xM/MZ9M5my0+jSRiz+IxaS5F8UboDh28e+34KiVc2U
X-Google-Smtp-Source: AGHT+IHYvFBKyRBNQT4SWy4ddmhtgjeZuvH8xiyy6GkD7MVBNItPLtFOXFw2Iy1w8kyMUzjogW7vMQ==
X-Received: by 2002:a05:6000:4285:b0:3a5:298a:3207 with SMTP id ffacd0b85a97d-3b917ec5064mr177688f8f.48.1755028881970;
        Tue, 12 Aug 2025 13:01:21 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c3abed3sm45143947f8f.10.2025.08.12.13.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 13:01:21 -0700 (PDT)
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
Subject: [PATCH v3 1/2] dt-bindings: pwm: fsl,vf610-ftm-pwm: Add compatible for s32g2 and s32g3
Date: Tue, 12 Aug 2025 22:00:35 +0200
Message-ID: <20250812200036.3432917-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250812200036.3432917-1-daniel.lezcano@linaro.org>
References: <20250812200036.3432917-1-daniel.lezcano@linaro.org>
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


