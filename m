Return-Path: <devicetree+bounces-82334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02633923E57
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 15:02:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 40205B23C0A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 13:02:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79390177980;
	Tue,  2 Jul 2024 13:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Ri4j9Pvd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281A516CD3B
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 13:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719925333; cv=none; b=oPhrGiI3Rdc8Hq42tAEhcGaU9fo6pR1EmNUXD/wpRve/IaADACnZm6zO7+Ofo+cR/MF9pksVkNXrQHKMTitYZDaJAFSdBGm7l//Xflf0zVmBmtSkhEcDE7nLrn/uy3o4lUDRUIcbkIOfPnW0r3cGSQU2I8uTGYUnt5yiTXImDzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719925333; c=relaxed/simple;
	bh=yCW10eKLB1S1uilKQaaPtfs8HOSLUFpoC8/AtoY5zWE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tz2nnD2kTHTcn5zJUsXvl75DkPgk37R3MG4gnDOVWimMS9/AHO1FTVFVSct8JaNux5ubIfZS8dzVBcb2tdOS09ifL29cgem1rrbFIijnfRBHr7+WoeIEHRcnnugiu6EYB401nodC2fQrqZ/CDYSSkeP3atbtb+/vNgGY1h8sntw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Ri4j9Pvd; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7065a2f4573so2792727b3a.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 06:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1719925330; x=1720530130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DEarth7Zvjah/4aEloYMlgeIzn5JDGZaQzKTKVskKkc=;
        b=Ri4j9PvdAmCG7oaZOFlPL5EpF2ws06bMt0FX82PjIOjTbLsgPXs/yKq4x+hXNnMWtD
         /PW7WvKlKZ524Bp+4OEs0VAXT5I+22p2Q29aB5XvdajrAoPiov14xw8w3PkdqdefIizh
         ilsXw8raDGCJMjZlKGLGhj4YPTT/Jt6d47QeDTF52Zz3EjgtMTAAVxGh/wZanz6EqqIx
         LCH5dNJ7WOFFDpG9f2+FU2Y7Bu0hI7KEYXuMUcn4tvp7VIoBPpsJ2IzPQ4OjD0P21OyI
         IusIaYd5yR5C1NlAvkj8f9Q/bgH0UzMlieMumIAzRg4lEi5IjruzJSWrP2DOFjw8OF8O
         hzDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719925330; x=1720530130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DEarth7Zvjah/4aEloYMlgeIzn5JDGZaQzKTKVskKkc=;
        b=WZqAzRA2TnziYz7S+HZmyCG77kerYQV7N3t+HdOWjUAPTH70iCeYjFojvsqCtWCz0K
         x2TeATgpqRYSQr+r0KTPKfr9N3Qp3jsMclYXiDl/y1GWv46SFfnPeBWKWdmQ42EAyQlL
         ORtKrJJxhlx0LMYHbgkwEeCKKIPQugBNedgtS4Pe6z5ePhwoQFeHAdHIzyNfD34onsqf
         Tup4yXOrKTm7T5qbLRL8l+pYoQjdHlmIJrWhci3Miobd4CIB56q+HA/uejEhNzf9Mzfz
         K377A0oSG1g35C3vqOpzhONyl4Cf8iQ1AKDvtRFESkVDprDGHgtMK7REHgNRv3coN5vt
         4/EA==
X-Forwarded-Encrypted: i=1; AJvYcCWFz9jrz6twop7O9GS1nFOjmMK6Q3pxXhIi7LWcDxFMVrOK1vCGojUAYjE4VyoKciWoSmRCAWJZTo3uSiR97JsFq6F/bUykxkYT2w==
X-Gm-Message-State: AOJu0YwqiOC1E9r1trUpABGfsNOO4o6W3ovCefAdYjl02XqUzVTdhMBs
	5o2WlWqU8l8+dfW7sA5BTgfmHmo78uEKbKNXKojWx9kwtwwSjfc+WKBfbLpDHJ0=
X-Google-Smtp-Source: AGHT+IG5SAPwAceG5TK6MQ0BWXKUM4tQCTZWen4CjFJAF4c/+bQPO1zJUXNeuDD/lwi/4iugDsvixw==
X-Received: by 2002:a05:6a20:3948:b0:1bd:deac:c052 with SMTP id adf61e73a8af0-1bef60e3be5mr7899722637.1.1719925328953;
        Tue, 02 Jul 2024 06:02:08 -0700 (PDT)
Received: from yc.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-72c6c8ec50csm6233111a12.59.2024.07.02.06.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 06:02:07 -0700 (PDT)
From: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@chromium.org,
	linus.walleij@linaro.org,
	swboyd@chromium.org,
	airlied@gmail.com,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Cc: lvzhaoxiong@huaqin.corp-partner.google.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Subject: [PATCH v1 1/2] dt-bindings: display: panel: Add compatible for melfas lmfbx101117480
Date: Tue,  2 Jul 2024 21:01:37 +0800
Message-Id: <20240702130138.2543711-2-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240702130138.2543711-1-yangcong5@huaqin.corp-partner.google.com>
References: <20240702130138.2543711-1-yangcong5@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Melfas lmfbx101117480 is a 10.1" WXGA TFT LCD panel with jadard-jd9365da
controller. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 3d5bede98cf1..b8783eba3ddc 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -18,6 +18,7 @@ properties:
       - enum:
           - chongzhou,cz101b4001
           - kingdisplay,kd101ne3-40ti
+          - melfas,lmfbx101117480
           - radxa,display-10hd-ad001
           - radxa,display-8hd-ad002
       - const: jadard,jd9365da-h3
-- 
2.25.1


