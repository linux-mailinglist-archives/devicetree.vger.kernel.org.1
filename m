Return-Path: <devicetree+bounces-203009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0D7B1FBC4
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 20:53:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF0DB189659C
	for <lists+devicetree@lfdr.de>; Sun, 10 Aug 2025 18:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 875FF1FA15E;
	Sun, 10 Aug 2025 18:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Kc1B0KO3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EA41F3BA2
	for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 18:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754851974; cv=none; b=kAxDf2JXMsW4+e+jPeB47PH4p3/w5JHGQ7o7PDBYCyiE7Y7RXF3zC87EkccYY1WAyw9+PjNBD0rAhwhim3AruM6rRhySFU3XxhZYVEVmD0wpHWHxGzMvLh7ICVE9+vVFwBV/4jeVzGylhFw/IlCgFPkV9Tbf07fuuZUxAa3+G2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754851974; c=relaxed/simple;
	bh=tpem3ugXEXY+sza7Z065QDPEzGqVly+Nz2CDIYGjz8w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZYqwXroQrkSWZj6pBE6m/mrNr1k9J+moj2nzyPMFRUF0r5+lqDj8+aR+pu7LkumIoFkCa5JxECnG3t4JywkqnBmb0ivq5Sbu0By+bqizMG4IHVC/BjoTUWL3tqUxgeLjbBi07HpGsXUS+VBx5ccvwKAH7Jpv0jJh7oPtcy/wtGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Kc1B0KO3; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-451d41e1ad1so24951925e9.1
        for <devicetree@vger.kernel.org>; Sun, 10 Aug 2025 11:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754851971; x=1755456771; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1ZIFIadWiEXjzSuKWo1v9+wZy0Xasz/GeS9q0g0hnKc=;
        b=Kc1B0KO3AIEMZr4RRS+X7Ql1Ru3LFBiWy6r6TCgsypIMi8DZUXFL2PKzhR1vNnbcim
         gufTGox9CgXY3VvQC+4ttQr/b6Jmp/8Xa47Ct4kI3lQHcd3wqCT/0rm2Ck98tIDYKm2L
         TQpz4p0T5dp4bIi44UFL6ta5Hbi38lit1PNjE30wBb/zXY8l491VrtivtcQge/glr9mt
         iCDBC5pGVB/zGteJsaZnzgxUIflG3Rgb7x9WZuT7DcwPP6fsp3jrOMwlSPlqfyUyOq/W
         PZ0xplf4e32ibBYMY3F0G2KjQrLLfeKSb6TIaachekGAk8o201YMo2Qg7C09LMWhG7DO
         trMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754851971; x=1755456771;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ZIFIadWiEXjzSuKWo1v9+wZy0Xasz/GeS9q0g0hnKc=;
        b=BuFT30DR16W62mtRd2oBVV6IAb3z+9RFft0JyfcuGlJdpcDzt1rJKwlVFf8714LxRl
         HwUfZrtYbZ1Negi+Bdo3O518x3f6oldXQT+IiqgHZkwD6k0nwUrSnoiGL7CnecZbfRmx
         Ce0XCMpAC35G5CnjvgdkpVDoXQ4/g7sgrlh2MnwUe+DfP/WXEt9iuBjDKFbxh3kMhvnV
         MM8gBk8Rronc6DHPj/IU75IP9k3/7jzta7iHsLdAaWXqdPtj/sjCkDWjIaGpOjs88Utk
         LS+lp5By3YTSiKRZo+bSn5rAU/yZtZVTOZRTtJVRTb9AR5DIB/u4ksj1fifOBAAtH0Sj
         k+Hw==
X-Forwarded-Encrypted: i=1; AJvYcCWR3+13vu2f70UnTPT3ddLUxIFedrj9/zKSl9ziWwQO6sCz8CFl7lr9afMBZ7bVIzHtz1ejevAO7m4c@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn5OZ0CTPoL8kkzbVWRq9ZLtb0oPVo0jSyGORhQNtIs6+e0VOb
	OXun6EWY+spDe/B3AUE8F9RyPIcVEh9rHMkB2/jy39SLfW9uESSDl7DdlsxbbOV7xqw=
X-Gm-Gg: ASbGncsvRuG8PH4pC5O3KA6rSLPoXkFoZSQghi9DjIahcy/5n35RB2WD4kUUvDd/dOU
	xQhTNTtgMslgWeaiB1Odh5rqC9fnzmKyOTOMzpiK9gU+LyyJq6pUCY0yapO7LSjDIniztcQDn8d
	6DPfPN2BDvk77YfyGqyzX00/0Zb7HkzliratLGhNEL59eNn7MCNqQiSqMvIL63aeud4Kuhub8+Q
	HxQUtc6l4ixokhv24S5WJwTYvCtzbaMpJxkeRY0VLGNgr4unEcfVfGzjFTBjstzZs6Wg6fpmVZN
	pc/+nhFsrAbmZIfUDA+j7hGwyHchBLXum19Yr0g6MKX5NxlrTdB0TD07CUupq8oklshGrbL3iQe
	5P+zHOmh/2IHs35WZgLGvM19jK7ohx9Ov8jcQEhMi30wDirgH
X-Google-Smtp-Source: AGHT+IHPiH3KOLHizWDnjfL+XzIReIg2rRjQJ1/ssMocHQ1ajNiUB1BrXhh5VbtJAuaEQ8OJc/8s+A==
X-Received: by 2002:a05:600c:4fc5:b0:458:bd31:2c35 with SMTP id 5b1f17b1804b1-459f4fafcccmr81128145e9.25.1754851971156;
        Sun, 10 Aug 2025 11:52:51 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459c58ed07fsm319461145e9.22.2025.08.10.11.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 11:52:50 -0700 (PDT)
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
Subject: [PATCH v1 1/2] dt: bindings: fsl,vf610-ftm-pwm: Add compatible for s32g2 and s32g3
Date: Sun, 10 Aug 2025 20:52:17 +0200
Message-ID: <20250810185221.2767567-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250810185221.2767567-1-daniel.lezcano@linaro.org>
References: <20250810185221.2767567-1-daniel.lezcano@linaro.org>
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


