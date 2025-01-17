Return-Path: <devicetree+bounces-139238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BA5A14BF6
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 10:17:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91EEF18874D0
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 09:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3A091FA25C;
	Fri, 17 Jan 2025 09:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="jTsjtqqG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56911FBC8C
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 09:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737105432; cv=none; b=X7H5Da9D4FWhyCHF1hlQA8ZIlehidsmiessz+c1vyUkXOyvU/vu6qDnMdqr6wtdMR/LGmyH8EYErkJ36kQHIv3DKQfDKQetA72wnj/wk1zOPOrUHBlGDJly0XzpwfoH44uXm8HYOdpNOp85RminLmxZ/eMYHVre9I2CK8KKr8yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737105432; c=relaxed/simple;
	bh=F5iFnHVtJhNgZrcESzDnsvYN5SKn/CbqPxb3ykU2OIE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bNEDWZ2vEkYrjBcmIpml8vK1WMoF+PGzg9FpgD2g7cifwptr3WOpvgwEuiUe9DTFgaEmdElzQCKubIJ71gOpFo0LXBDylT6yBs+MXDrIEchuE7tjsukKlWPUY+wyUkR6A/7ygFM4Zlj/Z6kadIwhTKY73LF1omhI5tDoTTQyfCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=jTsjtqqG; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2164b662090so34176705ad.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 01:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737105430; x=1737710230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kv75voyZV+5wj1rCTi/H5IxduQD+JzMUTiBVDefdHgo=;
        b=jTsjtqqGSU05MQNqsgxdEAEh4/NVH+lFrAxHwwpPHbX8CbgcFid/ll7FuFYStXxBv2
         Q32QqU4Yd/OisnNNInBbDJTl1QiFwEQTb8/7ntj8Ufxhnw/N5HQ6DpBBT4AuVHbW4AJv
         c8uKiazArvY8VPIOSqrUSMpMr8quc2R7jVCLVy3RJO3E32A3pPMURy8iK5lTMXqFvSNR
         97nRVyvx1IWxmwt5mCWA361du4wIGgF4DzG9f39agTUcOQ9BXNwF2bOSIfHlg/OfHz9/
         KtPgYFTX03UAHXt0NRajk7ar2DqXKpD7S1kS6Ic/gpvADz2Kh3sECWw8jNAwORhABg0J
         SgkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737105430; x=1737710230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kv75voyZV+5wj1rCTi/H5IxduQD+JzMUTiBVDefdHgo=;
        b=f3tsy/64QMqJ2bTgrMQGPxmo1C++GnBxhUzbFc1/KU2P392+mbOLe3c8STP0o67plP
         ffm7IwJ6kVp+MTJwarfgXBWVyLlOsOyWefa/Wuj/Z3wl+e6HtgzxUbzzJ0NiFtx8dSmG
         P49R7KFFD/iISXn/NJyQ1xbJ0TcmXhugSJP9C4HdodyBhx6QG4+iSN45cHMk0TVnPX2m
         c+WiDhH1Q+iq9isKLvGcou/9mMZswQP0SfJbguykSYxl/5llfTBh8TZAFpF2soyNf2YU
         UlKiVDuTBYI9X4XE+WvVQJoKbfqVNYtpNTZg0tiYAV9FhEpzY7d/8LrRWTAYOwoNW2o9
         cYMg==
X-Forwarded-Encrypted: i=1; AJvYcCV+GN/MPfewB1IxA82QnuZmrtLeBR/s7zPwwMeKabIIuNeFR1q45smgDShpLt46puK7o9dOHel2zW2o@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt67ri+c9CQO462yJM/6sd0ZPtzWfs3fHgRvo6yhivd9U5jitT
	FcwlnVk65KkKH5DaPA46CMgK6rgUDQR8nwfZQSVSO3LqMpgewXUTMoHrxQMDv6E=
X-Gm-Gg: ASbGncsZsZzkyxIcE9sxEjUbAJMa/WAahp7yAkMh4V5pzSIgo/Tg6QObYUkhyuFWejg
	f7Y3TPUsWQVn8jQV0an4lcQ8Kxl96GE51n4ndcUukQ9eCFV+AoKahSnYocG/cIWlF8nAztQLXOv
	7jykmw4X9aip3YGFJ0FKPs+smUrVv1ZuQEy3B39PJKDB5W1IDFR9EUHjvAwCPQn8XVyALEcCNR+
	KD9ehDg+FpZODuKokvSDNkn9nfmDQk3aXLCQ03Pbhsc+D6VIm3VtQznOf0hGZpuhy3yWBxPD35X
	ZPNWpvjr1r2MRz7QGzH4f7zSYtgv
X-Google-Smtp-Source: AGHT+IFDzcnY1S9j6j6dsi2fgvb1cdv/fF7vzqTpNv3XE15NG5j4dFJsyXJu68v2zO0UZM58U2Am4Q==
X-Received: by 2002:a05:6a00:1743:b0:725:f1b1:cbc5 with SMTP id d2e1a72fcca58-72daf931e97mr3532352b3a.3.1737105430234;
        Fri, 17 Jan 2025 01:17:10 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dab815bccsm1421548b3a.56.2025.01.17.01.17.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2025 01:17:09 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v3 2/4] dt-bindings: display: panel: Add compatible for STARRY 2082109QFH040022-50E
Date: Fri, 17 Jan 2025 17:14:36 +0800
Message-Id: <20250117091438.1486732-3-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
References: <20250117091438.1486732-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The STARRY 2082109QFH040022-50E is a 10.95" WUXGA TFT LCD panel,
which fits in nicely with the existing panel-boe-tv101wum-nl6
driver. Hence, we add a new compatible with panel specific config.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index c771f517952d..75f7598ceac8 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -36,6 +36,8 @@ properties:
       - starry,ili9882t
         # KINGDISPLAY KD110N11-51IE 10.95" WUXGA TFT LCD panel
       - kingdisplay,kd110n11-51ie
+        # STARRY 2082109QFH040022-50E 10.95" WUXGA TFT LCD panel
+      - starry,2082109qfh040022-50e
 
   reg:
     maxItems: 1
-- 
2.34.1


