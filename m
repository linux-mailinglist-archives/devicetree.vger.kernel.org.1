Return-Path: <devicetree+bounces-101892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB4D974B13
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 09:17:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B593286C4A
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 07:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5954256742;
	Wed, 11 Sep 2024 07:17:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q4zKcbKj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66C337171
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726039051; cv=none; b=t13r5n3xEVo/fMFFdK9gD7bCAUixY8rliaYTZ0DcIqIUco9ZCxfuqZ6O6WtjszsohbXla6cGBta7sTgHJlsRwce9KSJvABh67l3BLAT9LtvDLPVCEhheUcuKcAlUFHZuMmNpa/vjHHqZtZJJ+dACNBz8KR8mw8C5pYMKec3aUpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726039051; c=relaxed/simple;
	bh=t+5ChcavLPftKJqgzzORqDAtGFaZCuwwRqo9sE0Gm0k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LHkgv9cjav+beL+17amzfIeOTeXRLcVZZitSeLwxqAd2BYkljyY1OOa5Xk1BQP3p6vO/fh28hAggvh5RXKdXy2L5mV261HuX5dktT4RTJ1C40JBhQHsFEQp2t9aRgINie7+DOs80kICg/aECYNYgBq4+ULbIE3TYv7OX3Ie8fD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q4zKcbKj; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20696938f86so53643745ad.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 00:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726039049; x=1726643849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8Pj+pRQyOcObx0dXkC3JLTG6/NxMtLXVxQD3egxzOds=;
        b=Q4zKcbKjmL62fDCjHJpWHOlyo4OsX1Jt5W79VtAdqmf7caOVnHmHFD9DQmD2C+VX3V
         Ir2lOnvmrFIr+JX9w4EP+Y3cHI3GVtRTSwbuioYtJGfHFqwFjV6sp4NOpaaRHlQI5Te3
         wB0kef8F3aiggmc1fvCLiQITtpogepeZASC1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726039049; x=1726643849;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Pj+pRQyOcObx0dXkC3JLTG6/NxMtLXVxQD3egxzOds=;
        b=DZTStjx7zawuVpMSoVefNem29mD1NOfvqVHRqV/7eZ6jXvyaOqaA+I+duojDC9EW/n
         +1BbeZmhERDFU9Uj5qo7VNxxLJUC8WtXMz4WpK0BMaLTEH3YvgMau0K5n2iomDNtO3lw
         aHFJX2ORTO+/js1F6dnaIg27QZjclLSzxmmPb+04/O/QEerRk+cZBM9cm6g/kzjLiM3h
         ByOYJUJHOXaXyt9biT8BKU5ldf5oRZJERsNsLeKrR3OEL9ATEsL9PzHmXnFQwV+rz8vy
         LCnt+zpM1NWSC3H5Fi9laTRcgVg0SkqkegQGHDPxvh3kKqtrHPaiNmTZhJou0UhGBe9W
         HS8w==
X-Forwarded-Encrypted: i=1; AJvYcCUip3Z7NodRc0ZxWCL6f68xnMCU2GsUItHTuGL2AsOg+cUOyaHOCkHxHFGI9zMBTEUXuZ0x/LkbJTs1@vger.kernel.org
X-Gm-Message-State: AOJu0Yws5iLrrgggt8XajRVCQNyYureXJdhGyPy0a8zfbZyXQMg7sZgH
	lTIVz2YN3qEISiJnY4fcZohl3uA6aUkWznUV2vBKtOX2cKKAMeSmZvR3PCe6Yw==
X-Google-Smtp-Source: AGHT+IEdvg+LiDx22bRPbLdVmmCxAltMM/PYLPq8j5rpbVqSjRz/STq7KCphVB+RzOsy9z/eITJ07w==
X-Received: by 2002:a17:903:2287:b0:206:b960:2e97 with SMTP id d9443c01a7336-2074c6aeacfmr52222525ad.45.1726039048871;
        Wed, 11 Sep 2024 00:17:28 -0700 (PDT)
Received: from localhost (117.196.142.34.bc.googleusercontent.com. [34.142.196.117])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-20710ee1f0esm58113905ad.136.2024.09.11.00.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2024 00:17:28 -0700 (PDT)
From: Rohit Agarwal <rohiagar@chromium.org>
To: chunkuang.hu@kernel.org,
	krzk+dt@kernel.org,
	ck.hu@mediatek.com
Cc: linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rohit Agarwal <rohiagar@chromium.org>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH] dt-bindings: display: mediatek: dpi: Add power domain for MT8195 DP_INTF
Date: Wed, 11 Sep 2024 07:17:21 +0000
Message-ID: <20240911071722.558960-1-rohiagar@chromium.org>
X-Mailer: git-send-email 2.46.0.662.g92d0881bb0-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add power domain binding for MT8195 DP_INTF that resolves the following
error and many more similar ones:

arch/arm64/boot/dts/mediatek/mt8195-cherry-dojo-r1.dtb: dp-intf@1c113000:
power-domains: False schema does not allow [[55, 18]]

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202409102119.AYvaTjUi-lkp@intel.com/
Signed-off-by: Rohit Agarwal <rohiagar@chromium.org>
---
 .../devicetree/bindings/display/mediatek/mediatek,dpi.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
index 3a82aec9021c..07acc8a76bfc 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -89,6 +89,7 @@ allOf:
                 - mediatek,mt6795-dpi
                 - mediatek,mt8173-dpi
                 - mediatek,mt8186-dpi
+                - mediatek,mt8195-dp-intf
     then:
       properties:
         power-domains: false
-- 
2.46.0.662.g92d0881bb0-goog


